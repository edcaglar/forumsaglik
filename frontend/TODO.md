## FRONTEND

# FEATURE:

1. slugid yerine sadece slug ile okuma yap slug-3fd id eki gibi. base36(id)olabilir.

2. forgot-password sayfası

3. CSRF koruması ekle. post put delete istekleri için

4. Anlık validasyon ve etkileşimi yüksek olmayan formları server actiona çevir

5. Logo hazırla.

6. Avatar yükleme kısmını düzelt.

7. Yeni açılan konulara resim ekleme özelliği getir.

8. Konu acarken doktor ve hastane oylama inputlarini getir. Olan doktorlari ve hastaneleri secebilsin. Eger doktor yoksa eklesin. Doktor sekmesi ekle, diz -> doktor secimi -> doktorlari listele.

9. ESLinterdan no explicit any ruleini kaldir ve projedeki any tiplerini duzenle.

# BUG:

1. Her requestte cookıe header yollamana gerek yok. UserDep gerekmeyen endpointlere yollama. Fetchserveri degistir
2. discussionlari siralarken son reply at e gore sirala ya da updated at
