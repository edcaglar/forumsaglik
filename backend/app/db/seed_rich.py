import asyncio
import os
import random
from datetime import datetime, timedelta, timezone
from typing import Iterable, Optional

from sqlalchemy import select, func, update
from sqlalchemy.ext.asyncio import AsyncSession

from app.core.db import local_session
from app.core.utils import slugify_tr

from app.models.user import User, UserRole
from app.models.category import Category
from app.models.subcategory import Subcategory
from app.models.discussion import Discussion
from app.models.reply import Reply
from app.models.reply_like import ReplyLike

from app.jobs.stats import (
    recompute_all_category_stats,
    recompute_all_subcategory_stats,
    reconcile_discussion_counters,
)


# ---------- Sabit içerikler (Sağlık forumu temalı) ----------

# KATEGORILER
CATEGORIES: list[tuple[str, str]] = [
    ("Saç Ekimi", "Saç ekimi öncesi/sonrası deneyimler ve klinik önerileri"),
    ("Diz / Menisküs", "Diz ve menisküs yaralanmaları, ameliyat ve rehabilitasyon"),
    ("Omuz Sakatlığı", "Rotator cuff vb. omuz sakatlıkları, tedavi ve rehabilitasyon"),
    ("Bel Fıtığı", "Bel fıtığı tanı, tedavi yöntemleri ve egzersiz önerileri"),
    ("Boyun Fıtığı", "Boyun fıtığı, ağrı yönetimi ve günlük yaşam ipuçları"),
    ("Kalça / IT Band", "Kalça ağrıları, IT band sendromu ve koşu sakatlıkları"),
    ("Ayak Bileği / Aşil", "Aşil tendiniti, bilek burkulmaları ve rehabilitasyon"),
    ("Ön Çapraz Bağ (ACL)", "ACL yaralanmaları, cerrahi ve fizik tedavi süreçleri"),
    ("Uykuda Solunum / Apne", "Uyku apnesi, CPAP tecrübeleri ve yaşam tarzı değişiklikleri"),
    ("Beslenme / Supplement", "Beslenme planları, vitamin-mineral ve supplement önerileri"),
    ("Fizyoterapi Genel", "Ev egzersiz programları, seans deneyimleri ve protokoller"),
    ("Genel Sağlık Soruları", "Genel tanı/tedavi dışı sorular, ikinci görüş ve tavsiyeler"),
]

# ALT KATEGORILER
SUBCATS: dict[str, list[str]] = {
    "Saç Ekimi": [
        "Operasyon Süreci", "İyileşme Deneyimleri", "Doktor/Klinik Tavsiyesi",
        "Donör Bölge Bakımı", "Şok Dökülme Süreci",
    ],
    "Diz / Menisküs": [
        "Rehabilitasyon", "Ameliyat Sonrası İyileşme", "Fizyoterapi Önerileri",
        "Koşuya Dönüş Planı", "Kıkırdak Hasarı Yönetimi",
    ],
    "Omuz Sakatlığı": [
        "Rotator Cuff", "Rehab Programları", "Ağrı Yönetimi",
        "Omuz Sıkışması (Impingement)", "Omuz Stabilizasyon Egzersizleri",
    ],
    "Bel Fıtığı": [
        "McKenzie Egzersizleri", "Ağrı Alevlenmesi Yönetimi", "Günlük Yaşamda Ergonomi",
        "Ameliyat Kararı", "Nöral Mobilizasyon",
    ],
    "Boyun Fıtığı": [
        "Postür Düzeltme", "Servikal Yastık Önerileri", "Baş Ağrısı İlişkisi",
        "Ofis Çalışanları için İpuçları", "Manuel Terapi Deneyimleri",
    ],
    "Kalça / IT Band": [
        "Koşu Biyomekaniği", "Foam Roller Rutinleri", "Kalça Stabilizasyonu",
        "Glute Aktivasyonu", "Yokuş Antrenmanları",
    ],
    "Ayak Bileği / Aşil": [
        "Eksantrik Aşil Programı", "Bilek Güçlendirme", "Bilek Bandajları",
        "Koşuya Dönüş", "Ayakkabı/Tabanlık Önerileri",
    ],
    "Ön Çapraz Bağ (ACL)": [
        "Cerrahi Deneyimler", "Quadriceps Güçlendirme", "Koordinasyon/Propriyosepsiyon",
        "Saha Testleri", "Psikolojik Hazırlık",
    ],
    "Uykuda Solunum / Apne": [
        "CPAP Cihaz Seçimi", "Maskeler ve Konfor", "Uyku Hijyeni",
        "Ağırlık Yönetimi", "KBB Değerlendirmesi",
    ],
    "Beslenme / Supplement": [
        "Protein Tozları", "Omega-3 ve Anti-enflamasyon", "Vitamin D & Magnezyum",
        "Elektrolit Desteği", "Kafein ve Performans",
    ],
    "Fizyoterapi Genel": [
        "Ev Programları", "Isınma-Soğuma Protokolleri", "Ağrı Takip Günlükleri",
        "Klinik Seans Deneyimleri", "Tele-Fizyoterapi",
    ],
    "Genel Sağlık Soruları": [
        "İkinci Görüş", "Tetkik/Film Yorumları", "Doktor Seçimi",
        "Sigorta ve Randevu", "Yan Etki Bildirimleri",
    ],
}

# KULLANICILAR
USERS: list[tuple[str, str, str, str, UserRole, bool, Optional[str], Optional[str], Optional[str]]] = [
    ("ali@example.com",     "ali",     "Ali",     "Yılmaz",   UserRole.USER, True,  "İstanbul", "https://example.com/ali",     "Spor sakatlıklarıyla ilgileniyor."),
    ("ayse@example.com",    "ayse",    "Ayşe",    "Demir",    UserRole.USER, True,  "İzmir",    "https://example.com/ayse",    "Beslenme ve supplement meraklısı."),
    ("mehmet@example.com",  "mehmet",  "Mehmet",  "Kara",     UserRole.MODERATOR, True,  "Ankara",   None,                         "Fizyoterapist."),
    ("deniz@example.com",   "deniz",   "Deniz",   "Aydın",    UserRole.USER, False, "Bursa",    None,                         "Koşu ve triatlon ilgi alanı."),
    ("zeynep@example.com",  "zeynep",  "Zeynep",  "Şahin",    UserRole.USER, True,  "Antalya",  None,                         "Uyku sağlığı üzerine okumalar yapıyor."),
    ("burak@example.com",   "burak",   "Burak",   "Koç",      UserRole.USER, False, "Adana",    None,                         "Salon sporları ve güç antrenmanı."),
    ("elif@example.com",    "elif",    "Elif",    "Aksoy",    UserRole.USER, True,  "Trabzon",  None,                         "Fizyoterapi öğrencisi."),
    ("can@example.com",     "can",     "Can",     "Öztürk",   UserRole.USER, True,  "Eskişehir",None,                         "Yoga ve esneme çalışmaları."),
    ("melis@example.com",   "melis",   "Melis",   "Uçar",     UserRole.USER, False, "Muğla",    None,                         "Pilates eğitmeni."),
    ("omer@example.com",    "omer",    "Ömer",    "Yalçın",   UserRole.USER, True,  "Konya",    None,                         "Maraton koşucusu."),
    ("gizem@example.com",   "gizem",   "Gizem",   "Arslan",   UserRole.USER, True,  "Samsun",   None,                         "Klinik rehabilitasyon tecrübeli."),
    ("kerem@example.com",   "kerem",   "Kerem",   "Genç",     UserRole.USER, False, "Kayseri",  None,                         "Basketbol sakatlıkları meraklısı."),
    ("ece@example.com",     "ece",     "Ece",     "Yüce",     UserRole.USER, True,  "Mersin",   None,                         "Beslenme ve diyetetik."),
    ("hakan@example.com",   "hakan",   "Hakan",   "Bulut",    UserRole.USER, True,  "Erzurum",  None,                         "Outdoor sporlar ve hiking."),
    ("sevgi@example.com",   "sevgi",   "Sevgi",   "Kurt",     UserRole.USER, False, "Sivas",    None,                         "Ofis ergonomisi üzerine çalışıyor."),
    ("tugce@example.com",   "tugce",   "Tuğçe",   "Acar",     UserRole.USER, True,  "Aydın",    None,                         "Nefes ve gevşeme teknikleri."),
    ("yusuf@example.com",   "yusuf",   "Yusuf",   "Koçak",    UserRole.USER, False, "Kocaeli",  None,                         "Futbolcu, diz sakatlıkları yaşamış."),
    ("irem@example.com",    "irem",    "İrem",    "Doğan",    UserRole.USER, True,  "Van",      None,                         "Uyku bozukluklarıyla yakından ilgileniyor."),
    ("seda@example.com",    "seda",    "Seda",    "Öz",       UserRole.MODERATOR, True,  "İstanbul", None,                    "Fizyoterapist ve moderatör."),
    ("admin@example.com",   "admin",   "Admin",   "User",     UserRole.ADMIN, True,  "İstanbul", None,                         "Site yöneticisi."),
]

# DİSCUSSION BAŞLIKLARI (kategori başına farklı konu bankaları)
DISCUSSION_TOPICS: dict[str, list[str]] = {
    "Saç Ekimi": [
        "FUE mi FUT mu? Kararsızım",
        "Şok dökülme ne kadar sürer?",
        "Operasyon sonrası kabuklanma süreci",
        "Donör bölge kaşıntısı normal mi?",
        "PRP yaptırmalı mıyım?",
        "Saç ekiminde klinik seçimi",
    ],
    "Diz / Menisküs": [
        "Menisküs yırtığı sonrası koşuya dönüş",
        "Diz kilitlenmesi ve egzersiz",
        "Merdiven inerken ağrı artıyor",
        "Fizyoterapiye ne zaman başlanmalı?",
        "MRI sonuçları nasıl yorumlanır?",
        "Ameliyatsız tedavi mümkün mü?",
    ],
    "Omuz Sakatlığı": [
        "Rotator cuff yırtığı ve güçlendirme",
        "Omuz sıkışması için ev egzersizleri",
        "Uyurken omuz ağrısı artıyor",
        "Band egzersizleri etkili mi?",
        "Kalkış hareketlerinde takılma",
        "Manuel terapi önerileri",
    ],
    "Bel Fıtığı": [
        "Bel fıtığında McKenzie işe yarar mı?",
        "Uzun oturmada ağrı artışı",
        "Spor salonunda nelere dikkat etmeli?",
        "Ameliyat sonrası süreç",
        "Nöral mobilizasyon tecrübeleri",
        "Ağrı alevlenmesi nasıl yönetilir?",
    ],
    "Boyun Fıtığı": [
        "Servikal yastık tavsiyesi",
        "Kollara yayılan uyuşma",
        "Ofis ergonomisi önerileri",
        "Baş ağrısı ile ilişkisi",
        "Boyun güçlendirme rutini",
        "Pozisyonlama ve uyku",
    ],
    "Kalça / IT Band": [
        "IT band ağrısı ve foam roller",
        "Koşuda kalça stabilizasyonu",
        "Yokuş antrenmanları sonrası ağrı",
        "Glute aktivasyonu nasıl?",
        "Biyomekanik değerlendirme gerekir mi?",
        "Isınma-soğuma önerileri",
    ],
    "Ayak Bileği / Aşil": [
        "Aşil tendiniti için eksantrik program",
        "Bilek güçlendirme egzersizleri",
        "Koşuya dönüşte tempo mu süre mi?",
        "Ayakkabı/Tabanlık tavsiyesi",
        "Bandaj ve kinesio tape tecrübeleri",
        "Buz/ısı uygulaması sıklığı",
    ],
    "Ön Çapraz Bağ (ACL)": [
        "Cerrahi sonrası quad aktivasyonu",
        "Propriyosepsiyon egzersizleri",
        "Saha testleri ne zaman?",
        "Psikolojik olarak hazır hissetmiyorum",
        "Dikişler alındıktan sonra ağrı",
        "Koşuya dönüş planı",
    ],
    "Uykuda Solunum / Apne": [
        "CPAP maske seçimi",
        "Uyku hijyeni önerileri",
        "Kilo yönetimi etkisi",
        "Burun tıkanıklığı ve CPAP",
        "Maske sızıntısı nasıl azaltılır?",
        "İlk hafta deneyimleri",
    ],
    "Beslenme / Supplement": [
        "Protein tozu markası önerisi",
        "Omega-3 ile ağrı azaldı mı?",
        "Vitamin D seviyesi düşük çıktı",
        "Kafein performansa etkisi",
        "Elektrolit içecekleri gerekli mi?",
        "Magnesium türleri ve dozlar",
    ],
    "Fizyoterapi Genel": [
        "Ev programı pdf paylaşımı",
        "Tele-fizyoterapi tecrübesi",
        "Ağrı günlüğü işe yarıyor mu?",
        "Isınma-soğuma rutinleri",
        "Masaj aleti kullanan var mı?",
        "Egzersizde yüklenme yönetimi",
    ],
    "Genel Sağlık Soruları": [
        "İkinci görüş almak mantıklı mı?",
        "Tetkik sonuçlarını nasıl okumalı?",
        "Sigorta muayene kapsamı",
        "Doktor/klinik seçimi",
        "Yan etkiler ve bildirim",
        "Randevu bulmakta zorlanıyorum",
    ],
}


REPLY_SENTENCES: list[str] = [
    "Ben de benzer süreç yaşadım, sabır önemli.",
    "Fizyoterapistim günde 3 kez buz önerdi.",
    "Eksantrik egzersizler bende işe yaradı.",
    "CPAP maskesinde burun yastığı daha rahattı.",
    "Quadriceps güçlenince stabilite arttı.",
    "Uyku hijyenine dikkat etmek fayda sağladı.",
    "Koşuya dönüşte süre tutmak daha iyi sonuç verdi.",
    "Omega-3 ve D vitamini bana iyi geldi.",
    "Ofiste ergonomik sandalye ile ağrım azaldı.",
    "Glute aktivasyonunu ihmal etmeyin.",
    "Foam roller sonrası esneme çok iyi geliyor.",
    "Masaj tabancası tetik noktalarda işe yarıyor.",
    "Kademeli yüklenme, korkuyu yenmeme yardımcı oldu.",
    "Band egzersizlerine düzenli devam edin.",
    "Kinesio tape kısa süreli rahatlama sağladı.",
]


# --------- Yardımcılar ---------
def chunked(iterable: Iterable, size: int):
    it = iter(iterable)
    while True:
        block = []
        try:
            for _ in range(size):
                block.append(next(it))
        except StopIteration:
            if block:
                yield block
            break
        yield block


def _random_dt_within_days(days: int) -> datetime:
    now = datetime.now(timezone.utc)
    delta = timedelta(days=random.randint(0, days), hours=random.randint(0, 23), minutes=random.randint(0, 59))
    return now - delta


# --------- Parametreler (ENV ile yönetilebilir) ---------
def _get_int(name: str, default: int) -> int:
    v = os.getenv(name)
    try:
        return int(v) if v is not None else default
    except Exception:
        return default

SEED_RANDOM_SEED = _get_int("SEED_RANDOM_SEED", 2025)
TARGET_USER_COUNT = _get_int("SEED_USERS", 30)
DISCUSSIONS_PER_SUBCAT = _get_int("SEED_DISCUSSIONS_PER_SUBCAT", 20)
REPLY_MIN = _get_int("SEED_REPLY_MIN", 8)
REPLY_MAX = _get_int("SEED_REPLY_MAX", 22)
LIKE_MAX = _get_int("SEED_LIKE_MAX", 12)

FIRST_NAMES = [
    "Ali","Ayşe","Mehmet","Deniz","Zeynep","Burak","Elif","Can","Melis","Ömer",
    "Gizem","Kerem","Ece","Hakan","Sevgi","Tuğçe","Yusuf","İrem","Seda","Mert",
    "Berk","Derya","Emre","Kaan","Gökçe","Nil","Pelin","Yasemin","Barış","Sinem",
    "Onur","Aslı","Eren","Cem","Cansu","Ezgi","Furkan","Gül","İpek","Serkan",
]
LAST_NAMES = [
    "Yılmaz","Demir","Kara","Aydın","Şahin","Koç","Aksoy","Öztürk","Uçar","Yalçın",
    "Arslan","Genç","Yüce","Bulut","Kurt","Acar","Koçak","Doğan","Öz","Kılıç",
    "Taş","Çetin","Polat","Avcı","Yıldız","Kaplan","Bozkurt","Can","Yıldırım","Ekinci",
]

TOPIC_PHRASES = [
    "Deneyim", "Soru", "Tavsiye", "Program", "Rehabilitasyon", "Egzersiz",
    "Ekipman", "Yan Etki", "İlerleme", "Gerileme", "Korku", "Öneri",
]

def _mk_username(name: str, surname: str, salt: int) -> str:
    base = slugify_tr(f"{name}{surname}").replace("-", "")
    return f"{base}{salt}"


# --------- Seed adımları ---------
async def seed_users(db: AsyncSession, target_count: int) -> list[User]:
    random.seed(SEED_RANDOM_SEED)
    users: list[User] = []

    # Seed predefined users
    for email, username, name, surname, role, verified, location, website, bio in USERS:
        existing = (
            await db.execute(select(User).where(User.username == username))
        ).scalar_one_or_none()
        if existing:
            existing.email = email
            existing.name = name
            existing.surname = surname
            existing.role = role
            existing.email_verified = verified
            existing.location = location
            existing.website = website
            existing.bio = bio
            users.append(existing)
        else:
            u = User(
                email=email,
                email_verified=verified,
                password="pass1234",
                name=name,
                surname=surname,
                username=username,
                role=role,
                location=location,
                website=website,
                bio=bio,
            )
            db.add(u)
            users.append(u)

    await db.commit()
    for u in users:
        await db.refresh(u)

    # Create synthetic users up to target_count
    if target_count > len(users):
        existing_usernames = set(x.username for x in users)
        need = target_count - len(users)
        salt = 1
        created_batch: list[User] = []
        while need > 0:
            name = random.choice(FIRST_NAMES)
            surname = random.choice(LAST_NAMES)
            username = _mk_username(name, surname, salt)
            salt += 1
            if username in existing_usernames:
                continue
            existing_usernames.add(username)
            email = f"{username}@example.com"
            u = User(
                email=email,
                email_verified=random.random() < 0.7,
                password="pass1234",
                name=name,
                surname=surname,
                username=username,
                role=UserRole.USER,
                location=random.choice(["İstanbul","Ankara","İzmir","Bursa","Antalya","Konya", None]),
                website=None,
                bio=random.choice([
                    "Spor sakatlıklarıyla ilgileniyor.",
                    "Fizyoterapi öğrencisi.",
                    "Beslenme ve supplement meraklısı.",
                    "Ofis ergonomisine kafa yoruyor.",
                    None,
                ]),
            )
            db.add(u)
            created_batch.append(u)
            need -= 1
            if len(created_batch) >= 200:
                await db.commit()
                for cu in created_batch:
                    await db.refresh(cu)
                users.extend(created_batch)
                created_batch = []
        if created_batch:
            await db.commit()
            for cu in created_batch:
                await db.refresh(cu)
            users.extend(created_batch)

    return users


async def seed_categories(db: AsyncSession) -> list[Category]:
    cats: list[Category] = []
    for title, desc in CATEGORIES:
        slug = slugify_tr(title)
        existing = (
            await db.execute(select(Category).where(Category.slug == slug))
        ).scalar_one_or_none()
        if existing:
            existing.description = desc
            cats.append(existing)
            continue
        c = Category(title=title, description=desc, color=None, icon=None, slug=slug)
        db.add(c)
        cats.append(c)
    await db.commit()
    for c in cats:
        await db.refresh(c)
    return cats


async def seed_subcategories(db: AsyncSession, cats: list[Category]) -> list[Subcategory]:
    subs: list[Subcategory] = []
    cats_by_title = {c.title: c for c in cats}
    for cat_title, items in SUBCATS.items():
        c = cats_by_title.get(cat_title)
        if not c:
            continue
        for t in items:
            sslug = slugify_tr(t)
            existing = (
                await db.execute(
                    select(Subcategory)
                    .where(Subcategory.category_id == c.id)
                    .where(Subcategory.slug == sslug)
                )
            ).scalar_one_or_none()
            if existing:
                subs.append(existing)
                continue
            sc = Subcategory(category_id=c.id, title=t, slug=sslug)
            db.add(sc)
            subs.append(sc)
    await db.commit()
    for s in subs:
        await db.refresh(s)
    return subs


async def seed_discussions(
    db: AsyncSession, users: list[User], cats: list[Category], subs: list[Subcategory]
) -> list[Discussion]:
    subs_by_cat: dict[int, list[Subcategory]] = {}
    for s in subs:
        subs_by_cat.setdefault(s.category_id, []).append(s)

    discs: list[Discussion] = []

    users_cycle = users[:]
    if not users_cycle:
        return discs

    for c in cats:
        topics = DISCUSSION_TOPICS.get(c.title, [])
        if not topics:
            continue
        for i, title in enumerate(topics):
            author = users_cycle[(c.id + i) % len(users_cycle)]
            s_list = subs_by_cat.get(c.id, [])
            sub = s_list[i % len(s_list)] if s_list else None

            # idempotent: same title+author+category(+subcategory) -> skip
            existing = (
                await db.execute(
                    select(Discussion)
                    .where(Discussion.title == title)
                    .where(Discussion.author_id == author.id)
                    .where(Discussion.category_id == c.id)
                    .where(
                        (Discussion.subcategory_id == (sub.id if sub else None))
                        if sub is not None
                        else Discussion.subcategory_id.is_(None)
                    )
                )
            ).scalar_one_or_none()
            if existing:
                discs.append(existing)
                continue

            content_lines = [
                f"{title} hakkında deneyimlerimi ve sorularımı paylaşmak istiyorum.",
                "Doktorumun önerdiği programı uyguluyorum, ancak alternatiflere de açığım.",
                "Benim gibi benzer süreç yaşayanlar varsa deneyimlerini yazabilir mi?",
            ]
            if c.title in ("Beslenme / Supplement", "Uykuda Solunum / Apne"):
                content_lines.append("Günlük rutinimde küçük değişiklikler olumlu sonuç verdi.")
            if c.title in ("Diz / Menisküs", "Ön Çapraz Bağ (ACL)"):
                content_lines.append("Koşuya dönüş için plan yapanlar tecrübelerini paylaşabilir mi?")

            d = Discussion(
                title=title,
                content="\n\n".join(content_lines),
                is_pinned=(i == 0),
                is_locked=False,
                reply_count=0,
                view_count=random.randint(25, 1200),
                slug=slugify_tr(title),
                author_id=author.id,
                category_id=c.id,
                subcategory_id=sub.id if sub else None,
                created_at=_random_dt_within_days(28),
                updated_at=_random_dt_within_days(14),
            )
            db.add(d)
            discs.append(d)

    await db.commit()
    for d in discs:
        await db.refresh(d)
    return discs


async def seed_extra_discussions(
    db: AsyncSession, users: list[User], cats: list[Category], subs: list[Subcategory], per_subcat: int
) -> list[Discussion]:
    if per_subcat <= 0 or not users:
        return []

    discs: list[Discussion] = []
    subs_by_cat: dict[int, list[Subcategory]] = {}
    for s in subs:
        subs_by_cat.setdefault(s.category_id, []).append(s)

    for c in cats:
        s_list = subs_by_cat.get(c.id, [])
        if not s_list:
            continue
        for sc in s_list:
            for i in range(per_subcat):
                author = random.choice(users)
                phrase = random.choice(TOPIC_PHRASES)
                title = f"{phrase}: {sc.title} #{i+1}"
                # idempotent check: title + author + category + subcategory
                existing = (
                    await db.execute(
                        select(Discussion)
                        .where(Discussion.title == title)
                        .where(Discussion.author_id == author.id)
                        .where(Discussion.category_id == c.id)
                        .where(Discussion.subcategory_id == sc.id)
                    )
                ).scalar_one_or_none()
                if existing:
                    discs.append(existing)
                    continue

                content = "\n\n".join(
                    [
                        f"{sc.title} özelinde {phrase.lower()} başlığında soru/deneyim paylaşımı.",
                        "Planımı ve semptomları not aldım; yorumlarınızı bekliyorum.",
                        "Benzer süreç yaşayanların tavsiyesi yol gösterici olabilir.",
                    ]
                )
                d = Discussion(
                    title=title,
                    content=content,
                    is_pinned=False,
                    is_locked=False,
                    reply_count=0,
                    view_count=random.randint(10, 1500),
                    slug=slugify_tr(title),
                    author_id=author.id,
                    category_id=c.id,
                    subcategory_id=sc.id,
                    created_at=_random_dt_within_days(60),
                    updated_at=_random_dt_within_days(30),
                )
                db.add(d)
                discs.append(d)

    await db.commit()
    for d in discs:
        await db.refresh(d)
    return discs


async def seed_replies_and_likes(
    db: AsyncSession, users: list[User], discussions: list[Discussion], reply_min: int, reply_max: int, like_max: int
) -> None:
    random.seed(SEED_RANDOM_SEED)
    for d in discussions:
        reply_min_c = max(0, reply_min)
        reply_max_c = max(reply_min_c, reply_max)
        reply_target = random.randint(reply_min_c, reply_max_c)
        created_replies: list[Reply] = []
        for i in range(reply_target):
            author = random.choice(users)
            # optional: avoid author replying to self too often
            if author.id == d.author_id and len(users) > 1:
                author = users[(users.index(author) + 1) % len(users)]

            # reply content 1-3 sentences
            sentence_count = random.randint(1, 3)
            content = " ".join(random.sample(REPLY_SENTENCES, k=sentence_count))

            # idempotent check
            existing = (
                await db.execute(
                    select(Reply)
                    .where(Reply.discussion_id == d.id)
                    .where(Reply.author_id == author.id)
                    .where(Reply.content == content)
                )
            ).scalar_one_or_none()
            if existing:
                created_replies.append(existing)
                continue

            r = Reply(
                discussion_id=d.id,
                author_id=author.id,
                content=content,
                is_edited=False,
                like_count=0,
                created_at=d.created_at + timedelta(hours=i + 1),
                updated_at=d.created_at + timedelta(hours=i + 1),
            )
            db.add(r)
            created_replies.append(r)

        await db.commit()
        for r in created_replies:
            await db.refresh(r)

        # Likes
        for r in created_replies:
            like_users = random.sample(users, k=random.randint(0, min(like_max, len(users))))
            for u in like_users:
                # skip duplicate like
                exists_like = (
                    await db.execute(
                        select(ReplyLike)
                        .where(ReplyLike.reply_id == r.id)
                        .where(ReplyLike.user_id == u.id)
                    )
                ).scalar_one_or_none()
                if exists_like:
                    continue
                db.add(ReplyLike(reply_id=r.id, user_id=u.id, value=1))

        await db.commit()

        # like_count alanını güncelle (toplamı hesapla)
        ids = [x.id for x in created_replies]
        if ids:
            counts = (
                await db.execute(
                    select(ReplyLike.reply_id, func.count(ReplyLike.id))
                    .where(ReplyLike.reply_id.in_(ids))
                    .group_by(ReplyLike.reply_id)
                )
            ).all()
            count_map = {rid: cnt for rid, cnt in counts}
            for rid in ids:
                val = count_map.get(rid, 0)
                await db.execute(
                    update(Reply).where(Reply.id == rid).values(like_count=val)
                )
        await db.commit()


async def run_stats(db: AsyncSession) -> None:
    # Discussion reply_count ve last_reply_at düzelt
    await reconcile_discussion_counters(db)
    # Kategori ve alt-kategori istatistikleri
    await recompute_all_category_stats(db)
    await recompute_all_subcategory_stats(db)


async def main():
    random.seed(SEED_RANDOM_SEED)
    async with local_session() as db:
        users = await seed_users(db, TARGET_USER_COUNT)
        cats = await seed_categories(db)
        subs = await seed_subcategories(db, cats)
        curated = await seed_discussions(db, users, cats, subs)
        extra = await seed_extra_discussions(db, users, cats, subs, DISCUSSIONS_PER_SUBCAT)
        discs = curated + [d for d in extra if d not in curated]
        await seed_replies_and_likes(db, users, discs, REPLY_MIN, REPLY_MAX, LIKE_MAX)
        await run_stats(db)
        print(
            "✅ Seed tamamlandı: kullanıcılar, kategoriler, alt kategoriler, tartışmalar, yanıtlar ve beğeniler eklendi.\n"
            f"Kullanıcı: {len(users)} | Tartışma: {len(discs)} | Ayarlar -> users:{TARGET_USER_COUNT}, per_subcat:{DISCUSSIONS_PER_SUBCAT}, replies:{REPLY_MIN}-{REPLY_MAX}, like_max:{LIKE_MAX}"
        )


if __name__ == "__main__":
    asyncio.run(main())
