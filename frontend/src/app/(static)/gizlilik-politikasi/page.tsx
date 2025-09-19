import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Shield, Eye, Lock, Database, Cookie } from "lucide-react";

export default function PrivacyPolicyPage() {
  const sections = [
    {
      title: "Toplanan Bilgiler",
      icon: Database,
      content: [
        {
          subtitle: "Kişisel Bilgiler",
          items: [
            "Ad, soyad ve e-posta adresi (kayıt sırasında)",
            "Profil fotoğrafı (isteğe bağlı)",
            "Doğum tarihi (isteğe bağlı)",
            "Cinsiyet bilgisi (isteğe bağlı)",
            "Şehir/konum bilgisi (isteğe bağlı)",
          ],
        },
        {
          subtitle: "Teknik Bilgiler",
          items: [
            "IP adresi ve cihaz bilgileri",
            "Tarayıcı türü ve versiyonu",
            "İşletim sistemi bilgileri",
            "Site kullanım istatistikleri",
            "Çerez (cookie) verileri",
          ],
        },
        {
          subtitle: "İçerik Bilgileri",
          items: [
            "Forum gönderileri ve yorumlar",
            "Özel mesajlar",
            "Beğeni ve etkileşim verileri",
            "Hesap ayarları ve tercihleri",
          ],
        },
      ],
    },
    {
      title: "Bilgilerin Kullanım Amacı",
      icon: Eye,
      content: [
        {
          subtitle: "Hizmet Sağlama",
          items: [
            "Forum hizmetlerinin sunulması",
            "Kullanıcı hesabının yönetimi",
            "İçerik kişiselleştirme",
            "Teknik destek sağlama",
            "Güvenlik önlemlerinin alınması",
          ],
        },
        {
          subtitle: "İletişim",
          items: [
            "Önemli duyuruların iletilmesi",
            "Güvenlik uyarıları",
            "Hizmet güncellemeleri",
            "Pazarlama e-postaları (onay ile)",
            "Kullanıcı destek talepleri",
          ],
        },
        {
          subtitle: "Analiz ve İyileştirme",
          items: [
            "Site performansının analizi",
            "Kullanıcı deneyiminin iyileştirilmesi",
            "Yeni özellik geliştirme",
            "Hata tespiti ve düzeltme",
            "İstatistiksel analizler",
          ],
        },
      ],
    },
    {
      title: "Bilgi Güvenliği",
      icon: Lock,
      content: [
        {
          subtitle: "Teknik Güvenlik",
          items: [
            "SSL şifreleme ile veri aktarımı",
            "Güvenli sunucu altyapısı",
            "Düzenli güvenlik güncellemeleri",
            "Firewall ve anti-malware koruması",
            "Veri yedekleme sistemleri",
          ],
        },
        {
          subtitle: "Erişim Kontrolü",
          items: [
            "Çok faktörlü kimlik doğrulama",
            "Rol tabanlı erişim yetkileri",
            "Düzenli erişim denetimleri",
            "Veri erişim logları",
          ],
        },
      ],
    },
    {
      title: "Çerez Politikası",
      icon: Cookie,
      content: [
        {
          subtitle: "Çerez Türleri",
          items: [
            "Zorunlu çerezler (site işlevselliği için)",
            "Performans çerezleri (analitik)",
            "İşlevsellik çerezleri (tercihler)",
          ],
        },
        {
          subtitle: "Çerez Yönetimi",
          items: [
            "Tarayıcı ayarlarından çerez kontrolü",
            "Çerez tercih merkezi",
            "Çerez silme seçenekleri",
          ],
        },
      ],
    },
  ];

  return (
    <div className="container mx-auto px-4 py-8">
      {/* Header */}
      <div className="text-center mb-12">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Gizlilik Politikası
        </h1>
        <p className="text-xl text-gray-600 max-w-3xl mx-auto">
          Forum Sağlık olarak kişisel verilerinizin korunması bizim için son
          derece önemlidir. Bu politika, verilerinizin nasıl toplandığını,
          kullanıldığını ve korunduğunu açıklar.
        </p>
      </div>

      {/* Last Updated */}
      <Alert className="mb-8 border-blue-200 bg-blue-50">
        <Shield className="h-4 w-4 text-blue-600" />
        <AlertDescription className="text-blue-800">
          <strong>Son Güncelleme:</strong> 15 Aralık 2024 |
          <strong> KVKK Uyumlu:</strong> Bu politika 6698 sayılı Kişisel
          Verilerin Korunması Kanunu&apos;na uygun olarak hazırlanmıştır.
        </AlertDescription>
      </Alert>

      {/* Policy Sections */}
      <div className="space-y-8 mb-12">
        {sections.map((section, index) => (
          <Card key={index} className="shadow-lg">
            <CardHeader>
              <CardTitle className="flex items-center gap-3">
                <section.icon className="h-6 w-6 text-blue-600" />
                {section.title}
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-6">
                {section.content.map((subsection, subIndex) => (
                  <div key={subIndex}>
                    <h3 className="text-lg font-semibold text-gray-900 mb-3">
                      {subsection.subtitle}
                    </h3>
                    <ul className="space-y-2">
                      {subsection.items.map((item, itemIndex) => (
                        <li key={itemIndex} className="flex items-start gap-3">
                          <span className="inline-block w-2 h-2 rounded-full bg-blue-600 mt-2 flex-shrink-0"></span>
                          <span className="text-gray-700">{item}</span>
                        </li>
                      ))}
                    </ul>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        ))}
      </div>

      {/* User Rights */}
      <Card className="shadow-lg mb-8">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Shield className="h-6 w-6 text-green-600" />
            Kullanıcı Hakları (KVKK Kapsamında)
          </CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid md:grid-cols-2 gap-6">
            <div>
              <h3 className="font-semibold text-gray-900 mb-3">
                Temel Haklarınız
              </h3>
              <ul className="space-y-2 text-gray-600">
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Kişisel verilerinizin işlenip işlenmediğini öğrenme
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  İşlenen verileriniz hakkında bilgi talep etme
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Verilerin işlenme amacını öğrenme
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Yanlış işlenen verilerin düzeltilmesini isteme
                </li>
              </ul>
            </div>
            <div>
              <h3 className="font-semibold text-gray-900 mb-3">
                İleri Düzey Haklar
              </h3>
              <ul className="space-y-2 text-gray-600">
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Verilerin silinmesini veya yok edilmesini isteme
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Verilerin üçüncü kişilere aktarılmasına itiraz etme
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Otomatik sistemlerle analiz edilmesine itiraz etme
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Veri taşınabilirliği hakkı
                </li>
              </ul>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
