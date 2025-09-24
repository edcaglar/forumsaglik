# seed.py
import asyncio
from datetime import datetime, timedelta, timezone
from typing import Iterable, Optional

from sqlalchemy import select, func, update
from sqlalchemy.ext.asyncio import AsyncSession

# 🔧 Bu import yollarını projene göre ayarla:
from app.core.db import local_session  # yoksa: from app.core.db import async_get_db
from app.models.user import User, UserRole
from app.models.category import Category
from app.models.subcategory import Subcategory
from app.models.discussion import Discussion
from app.models.reply import Reply
from app.models.reply_like import ReplyLike
from app.models.category_stats import CategoryStats
from app.models.subcategory_stats import SubcategoryStats

# ---------- Sabit içerikler (sağlık forumu temalı) ----------
# --- KATEGORİLER (en az 10) ---
CATEGORIES = [
    ("Saç Ekimi",              "Saç ekimi öncesi/sonrası deneyimler ve klinik önerileri"),
    ("Diz / Menisküs",         "Diz ve menisküs yaralanmaları, ameliyat ve rehabilitasyon"),
    ("Omuz Sakatlığı",         "Rotator cuff vb. omuz sakatlıkları, tedavi ve rehab süreçleri"),
    ("Bel Fıtığı",             "Bel fıtığı tanı, tedavi yöntemleri ve egzersiz önerileri"),
    ("Boyun Fıtığı",           "Boyun fıtığı, ağrı yönetimi ve günlük yaşam ipuçları"),
    ("Kalça / IT Band",        "Kalça ağrıları, IT band sendromu ve koşu sakatlıkları"),
    ("Ayak Bileği / Aşil",     "Aşil tendiniti, bilek burkulmaları ve rehabilitasyon"),
    ("Ön Çapraz Bağ (ACL)",    "ACL yaralanmaları, cerrahi ve fizik tedavi süreçleri"),
    ("Uykuda Solunum / Apne",  "Uyku apnesi, CPAP tecrübeleri ve yaşam tarzı değişiklikleri"),
    ("Beslenme / Supplement",  "Beslenme planları, vitamin-mineral ve supplement önerileri"),
    ("Fizyoterapi Genel",      "Egzersiz reçeteleri, ev programları ve klinik fizyoterapi"),
    ("Genel Sağlık Soruları",  "Genel tanı/tedavi dışı sorular, ikinci görüş ve tavsiyeler"),
]

# --- SUBCATEGORY (toplam 30+)
SUBCATS = {
    "Saç Ekimi": [
        "Operasyon Süreci", "İyileşme Deneyimleri", "Doktor/Klinik Tavsiyesi",
        "Donör Bölge Bakımı", "Şok Dökülme Süreci"
    ],
    "Diz / Menisküs": [
        "Rehabilitasyon", "Ameliyat Sonrası İyileşme", "Fizyoterapi Önerileri",
        "Koşuya Dönüş Planı", "Kıkırdak Hasarı Yönetimi"
    ],
    "Omuz Sakatlığı": [
        "Rotator Cuff", "Rehab Programları", "Ağrı Yönetimi",
        "Omuz Sıkışması (Impingement)", "Omuz Stabilizasyon Egzersizleri"
    ],
    "Bel Fıtığı": [
        "McKenzie Egzersizleri", "Ağrı Alevlenmesi Yönetimi", "Günlük Yaşamda Ergonomi",
        "Ameliyat Kararı", "Nöral Mobilizasyon"
    ],
    "Boyun Fıtığı": [
        "Postür Düzeltme", "Servikal Yastık Önerileri", "Baş Ağrısı İlişkisi",
        "Ofis Çalışanları İçin İpuçları", "Manuel Terapi Deneyimleri"
    ],
    "Kalça / IT Band": [
        "Koşu Biyomekaniği", "Foam Roller Rutinleri", "Kalça Stabilizasyonu",
        "Glute Aktivasyon", "Yokuş Antrenmanları"
    ],
    "Ayak Bileği / Aşil": [
        "Eksantrik Aşil Programı", "Bilek Güçlendirme", "Bilek Bandajları",
        "Koşuya Dönüş", "Ayakkabı/Tabanlık Önerileri"
    ],
    "Ön Çapraz Bağ (ACL)": [
        "Cerrahi Deneyimler", "Quadriceps Güçlendirme", "Koordinasyon/Propriyosepsiyon",
        "Saha Testleri", "Psikolojik Hazırlık"
    ],
    "Uykuda Solunum / Apne": [
        "CPAP Cihaz Seçimi", "Maskeler ve Konfor", "Uyku Hijyeni",
        "Ağırlık Yönetimi", "Kulak-Burun-Boğaz Değerlendirmesi"
    ],
    "Beslenme / Supplement": [
        "Protein Tozları", "Omega-3 ve Anti-enflamasyon", "Vitamin D & Magnezyum",
        "Elektrolit Desteği", "Kafein ve Performans"
    ],
    "Fizyoterapi Genel": [
        "Ev Programları", "Isınma-Soğuma Protokolleri", "Ağrı Takibi Günlükleri",
        "Klinik Seans Deneyimleri", "Tele-Fizyoterapi"
    ],
    "Genel Sağlık Soruları": [
        "İkinci Görüş", "Tetkik/Film Yorumları", "Doktor Seçimi",
        "Sigorta ve Randevu", "Yan Etki Bildirimleri"
    ],
}

# --- KULLANICILAR (10 adet)
USERS = [
    ("ali@example.com",     "ali",     "Ali",     "Yılmaz",   UserRole.USER),
    ("ayse@example.com",    "ayse",    "Ayşe",    "Demir",    UserRole.USER),
    ("mehmet@example.com",  "mehmet",  "Mehmet",  "Kara",     UserRole.MODERATOR),
    ("deniz@example.com",   "deniz",   "Deniz",   "Aksoy",    UserRole.ADMIN),
    ("elif@example.com",    "elif",    "Elif",    "Çetin",    UserRole.USER),
    ("burak@example.com",   "burak",   "Burak",   "Öztürk",   UserRole.USER),
    ("selin@example.com",   "selin",   "Selin",   "Koç",      UserRole.USER),
    ("yusuf@example.com",   "yusuf",   "Yusuf",   "Aydın",    UserRole.USER),
    ("zeynep@example.com",  "zeynep",  "Zeynep",  "Arslan",   UserRole.USER),
    ("cem@example.com",     "cem",     "Cem",     "Şahin",    UserRole.USER),
]

# --- TARTIŞMA BAŞLIKLARI (20+)
DISCUSSION_TITLES = [
    "3. Hafta Gözlemlerim",
    "Hangi doktora gitmeli? (İstanbul çevresi)",
    "Ameliyat sonrası ödem normal mi?",
    "Supplement olarak neler kullandınız?",
    "Fizyoterapi programı örnekleri?",
    "İlk 48 saatte dikkat edilmesi gerekenler",
    "Spora dönüş için güvenli eşikler",
    "Ağrı kesici kullanımı ve doz soruları",
    "Yara izi bakımında nelere dikkat ettiniz?",
    "Klinik seçiminde hangi kriterlere baktınız?",
    "Evde buz uygulaması rutini",
    "Ödem ve morluk yönetimi",
    "Dikiş sonrası kaşıntı normal mi?",
    "Kinezyo bant etkili mi?",
    "Farklı klinik fiyat/performans değerlendirmesi",
    "İş/günlük hayata dönüş süresi",
    "Uyku pozisyonu önerileri",
    "Egzersizlerde doğru formu nasıl korumalıyım?",
    "Eklem kilitlenmesi yaşayan var mı?",
    "Fizyoterapist tavsiyesi (Anadolu yakası)",
    "MR sonucu yorumlar mısınız?",
    "Protez sonrası rehabilitasyon soruları",
]

# --- REPLY MESAJLARI (40+)
REPLIES = [
    "Geçmiş olsun, bende 2. haftada ağrı azaldı.",
    "Aynı kliniğe gittim, memnundum.",
    "Yürüyüşe erken başlamam önerildi.",
    "Soğuk kompres çok iyi geliyor.",
    "Protein ve Omega-3 destek oldu.",
    "Geceleri yastık desteği ağrımı azalttı.",
    "Doktorum günde 3 kez 10 dakika buz önerdi.",
    "Dikişler alındıktan sonra rahatladım.",
    "Krema sürerken masajı nazik yapın.",
    "İlk hafta dinlenmeye önem verin.",
    "Fizyoterapistimin verdiği nefes egzersizleri iyi geldi.",
    "Yürüyüş mesafesini kademeli artırdım.",
    "Ağrı kesiciyi tok karnına alınca mide rahat etti.",
    "Sıkı kıyafetler bölgede baskıyı artırıyor.",
    "Spor dönüşünde ısınmayı uzun tuttum.",
    "Sert zeminde oturmamaya çalıştım.",
    "Kafeini azalttıktan sonra uyku düzeldi.",
    "CPAP maskesinde burun yastığı daha rahat geldi.",
    "Klinik personeli çok ilgiliydi.",
    "Randevu bulmak zor ama beklemeye değdi.",
    "Foam roller sonrası esneme iyi hissettirdi.",
    "Koşuya dönüşte tempo yerine süre takibi yaptım.",
    "Akşam ağrıları sabaha göre daha hafifledi.",
    "Nöral mobilizasyon sinir ağrısını azalttı.",
    "Postür düzeltme ile boyun ağrım azaldı.",
    "Manuel terapi sonrası hareket açıklığım arttı.",
    "Ofis sandalyesine bel desteği ekledim.",
    "Telefon kullanımında başımı daha az öne eğiyorum.",
    "Ayakkabı değişince bilek ağrım azaldı.",
    "Eksantrik aşil egzersizleri faydalı oldu.",
    "Quadriceps güçlenince diz stabilitesi arttı.",
    "Propriyosepsiyon çalışmaları güven verdi.",
    "Korkuyu yenmek için kademeli yüklenme yaptım.",
    "Uykuda yan dönmek daha konforlu geldi.",
    "Elektrolit içecekleri krampları azalttı.",
    "Vitamin D düzeyim düşükmüş, takviye aldım.",
    "Omega-3 ile sabah sertliği azaldı.",
    "Kafeini antrenman öncesi kullanıyorum.",
    "Tele-fizyoterapi seansları pratik oldu.",
    "Ev programını pdf olarak paylaştılar, çok işe yaradı.",
    "Ağrı günlüğü tutmak düzenli takip için iyi oldu.",
    "Isınma süresini 15 dakikaya çıkardım.",
    "Soğuma egzersizleri ertesi günkü ağrıyı azalttı.",
    "Masaj pistolu bende tetik noktalarında işe yaradı.",
    "Saha testlerinden sonra özgüvenim yerine geldi.",
    "Yara izine silikon jel uyguladım, faydasını gördüm.",
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

# --------- Seed adımları ---------
async def seed_users(db: AsyncSession) -> list[User]:
    objs: list[User] = []
    for email, username, name, surname, role in USERS:
        u = User(
            email=email,
            username=username,
            name=name,
            surname=surname,
            password="pass1234",  # 🔐 prod'da bcrypt hash kullan
            role=role,
        )
        db.add(u)
        objs.append(u)
    await db.commit()
    for u in objs:  # id için
        await db.refresh(u)
    return objs

async def seed_categories(db: AsyncSession) -> list[Category]:
    cats: list[Category] = []
    for title, desc in CATEGORIES:
        c = Category(title=title, description=desc, color=None, icon=None,
                     slug=slugify_tr(title))
        db.add(c)
        cats.append(c)
    await db.commit()
    for c in cats:
        await db.refresh(c)
    return cats

from app.core.utils import slugify_tr
async def seed_subcategories(db: AsyncSession, cats: list[Category]) -> list[Subcategory]:
    subs: list[Subcategory] = []
    for c in cats:
        for t in SUBCATS.get(c.title, []):
            sc = Subcategory(category_id=c.id, title=t,
                             slug=slugify_tr(t))
            db.add(sc)
            subs.append(sc)
    await db.commit()
    for s in subs:
        await db.refresh(s)
    return subs

async def seed_discussions(db: AsyncSession, users: list[User], cats: list[Category], subs: list[Subcategory]) -> list[Discussion]:
    subs_by_cat: dict[int, list[Subcategory]] = {}
    for s in subs:
        subs_by_cat.setdefault(s.category_id, []).append(s)

    discs: list[Discussion] = []
    now = datetime.now(timezone.utc)

    for c_idx, c in enumerate(cats):
        for i, t in enumerate(DISCUSSION_TITLES):
            author = users[(c_idx + i) % len(users)]
            sub_id = subs_by_cat[c.id][i % len(subs_by_cat[c.id])].id

            d = Discussion(
                title=f"{t}",
                content=f"{c.title} hakkında deneyim/öneri paylaşımı: {t}",
                is_pinned=(i == 0),
                is_locked=False,
                author_id=author.id,
                category_id=c.id,
                subcategory_id=sub_id,
                slug = slugify_tr(t),
                # created_at/updated_at DB default; istersen backdate:
                created_at=now - timedelta(days=7-i),
                updated_at=now - timedelta(days=7-i),
            )
            db.add(d)
            discs.append(d)

    await db.commit()
    for d in discs:
        await db.refresh(d)
    return discs

async def seed_replies_and_likes(db: AsyncSession, users: list[User], discs: list[Discussion]) -> None:
    now = datetime.now(timezone.utc)
    for idx, d in enumerate(discs):
        # 3..6 reply
        reply_total = 3 + (idx % 4)
        created = []
        for i in range(reply_total):
            author = users[(idx + i) % len(users)]
            r = Reply(
                discussion_id=d.id,
                author_id=author.id,
                content=REPLIES[i % len(REPLIES)],
                is_edited=False,
                created_at=now - timedelta(hours=12 - 2*i),
                updated_at=now - timedelta(hours=12 - 2*i),
            )
            db.add(r)
            created.append(r)

        await db.flush()  # reply id'leri

        # İlk 2-3 reply'a birkaç like
        for j, r in enumerate(created[:min(3, len(created))]):
            liker_count = (j % 3)  # 0..2 kişi beğensin
            for k in range(liker_count):
                liker = users[(idx + j + k) % len(users)]
                # Burada value=1 olarak ekliyoruz (like için)
                db.add(ReplyLike(
                    reply_id=r.id, 
                    user_id=liker.id,
                    value=1  # CheckConstraint ile uyumlu (0 veya 1)
                ))

        # like_count alanını güncelle (toplamı hesapla)
        for batch in chunked(created, 50):
            ids = [x.id for x in batch]
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

# --------- Stats hesaplama ---------
def _is_popular(discussion_count: int, member_count: int, last_activity: Optional[datetime], now: datetime) -> bool:
    three_days_ago = now - timedelta(days=3)
    return (discussion_count >= 5 and member_count >= 3 and (last_activity and last_activity >= three_days_ago))

async def recompute_category_stats(db: AsyncSession, category_id: int) -> None:
    now = datetime.now(timezone.utc)
    # Toplam tartışma
    discussion_count = (await db.execute(
        select(func.count(Discussion.id)).where(Discussion.category_id == category_id)
    )).scalar_one()

    member_count = (await db.execute(
        select(func.count(func.distinct(Discussion.author_id))).where(Discussion.category_id == category_id)
    )).scalar_one()

    last_disc = (await db.execute(
        select(func.max(Discussion.updated_at)).where(Discussion.category_id == category_id)
    )).scalar_one()

    last_rep = (await db.execute(
        select(func.max(Reply.updated_at))
        .join(Discussion, Reply.discussion_id == Discussion.id)
        .where(Discussion.category_id == category_id)
    )).scalar_one()

    last_activity = max([d for d in [last_disc, last_rep] if d is not None], default=None)
    is_popular = _is_popular(discussion_count, member_count, last_activity, now)

    stats = await db.get(CategoryStats, category_id)
    if stats is None:
        db.add(CategoryStats(
            category_id=category_id,
            discussion_count=discussion_count,
            member_count=member_count,
            last_activity=last_activity,
            is_popular=is_popular
        ))
    else:
        stats.discussion_count = discussion_count
        stats.member_count = member_count
        stats.last_activity = last_activity
        stats.is_popular = is_popular

async def recompute_subcategory_stats(db: AsyncSession, subcategory_id: int) -> None:
    now = datetime.now(timezone.utc)
    discussion_count = (await db.execute(
        select(func.count(Discussion.id)).where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    member_count = (await db.execute(
        select(func.count(func.distinct(Discussion.author_id))).where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    last_disc = (await db.execute(
        select(func.max(Discussion.updated_at)).where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    last_rep = (await db.execute(
        select(func.max(Reply.updated_at))
        .join(Discussion, Reply.discussion_id == Discussion.id)
        .where(Discussion.subcategory_id == subcategory_id)
    )).scalar_one()

    last_activity = max([d for d in [last_disc, last_rep] if d is not None], default=None)
    is_popular = _is_popular(discussion_count, member_count, last_activity, now)

    stats = await db.get(SubcategoryStats, subcategory_id)
    if stats is None:
        db.add(SubcategoryStats(
            subcategory_id=subcategory_id,
            discussion_count=discussion_count,
            member_count=member_count,
            last_activity=last_activity,
            is_popular=is_popular
        ))
    else:
        stats.discussion_count = discussion_count
        stats.member_count = member_count
        stats.last_activity = last_activity
        stats.is_popular = is_popular

async def recompute_all_stats(db: AsyncSession) -> None:
    cat_ids = (await db.execute(select(Category.id))).scalars().all()
    sub_ids = (await db.execute(select(Subcategory.id))).scalars().all()
    for cid in cat_ids:
        await recompute_category_stats(db, cid)
    for sid in sub_ids:
        await recompute_subcategory_stats(db, sid)
    await db.commit()

# --------- main ---------
async def main():
    # not: local_session yoksa:
    # from app.core.db import async_get_db
    # async with async_get_db() as db: ...
    async with local_session() as db:
        users = await seed_users(db)
        cats = await seed_categories(db)
        subs = await seed_subcategories(db, cats)
        discs = await seed_discussions(db, users, cats, subs)
        await seed_replies_and_likes(db, users, discs)
        await recompute_all_stats(db)
        print("✅ Seed tamamlandı.")

if __name__ == "__main__":
    asyncio.run(main())
