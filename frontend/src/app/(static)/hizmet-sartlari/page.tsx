import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Badge } from "@/components/ui/badge";
import {
  FileText,
  Scale,
  AlertTriangle,
  Shield,
  Ban,
  Calendar,
  MapPin,
  Globe,
  Users,
} from "lucide-react";

export default function TermsOfServicePage() {
  const sections = [
    {
      title: "Hizmet Tanımı ve Kapsamı",
      icon: FileText,
      color: "bg-blue-100 text-blue-600",
      content: [
        "Forum Sağlık, sağlık konularında bilgi paylaşımı ve topluluk etkileşimi sağlayan bir platformdur.",
        "Platform üzerinde sunulan bilgiler eğitim amaçlıdır ve profesyonel tıbbi tavsiye yerine geçmez.",
        "Acil sağlık durumlarında mutlaka nitelikli sağlık personeline başvurulmalıdır.",
        "Hizmetlerimiz 7/24 erişilebilir olmakla birlikte, teknik bakım dönemlerinde kesintiler yaşanabilir.",
        "Platform içeriği sürekli güncellenmekte ve geliştirilmektedir.",
      ],
    },
    {
      title: "Kullanıcı Yükümlülükleri",
      icon: Scale,
      color: "bg-green-100 text-green-600",
      content: [
        "Kayıt sırasında doğru ve güncel bilgiler vermeyi taahhüt edersiniz.",
        "Hesap güvenliğinizden tamamen siz sorumlusunuz ve şifrenizi kimseyle paylaşmamalısınız.",
        "Platform kurallarına uymayı ve diğer kullanıcılara saygılı davranmayı kabul edersiniz.",
        "Telif hakkı ihlali yapan veya yasadışı içerik paylaşmayacağınızı beyan edersiniz.",
        "Platformu ticari amaçlarla kullanmayacağınızı (izin alınmadıkça) kabul edersiniz.",
      ],
    },
    {
      title: "Fikri Mülkiyet Hakları",
      icon: Shield,
      color: "bg-purple-100 text-purple-600",
      content: [
        "Platform tasarımı, logosu ve yazılımı Forum Sağlık'ın fikri mülkiyetidir.",
        "Kullanıcılar tarafından oluşturulan içerikler, yazarlarının fikri mülkiyetinde kalır.",
        "İçerik paylaşımı ile birlikte, platformda kullanım için lisans vermiş olursunuz.",
        "Üçüncü taraf içeriklerin kullanımında telif hakkı kurallarına uyulmalıdır.",
        "Marka ve logo kullanımı için önceden yazılı izin alınmalıdır.",
      ],
    },
    {
      title: "Sorumluluk Sınırlamaları",
      icon: AlertTriangle,
      color: "bg-orange-100 text-orange-600",
      content: [
        "Platform üzerindeki bilgilerin doğruluğu garanti edilmez.",
        "Kullanıcı içeriklerinden Forum Sağlık sorumlu değildir.",
        "Teknik arızalar veya veri kayıplarından doğan zararlardan sorumluluk kabul edilmez.",
        "Üçüncü taraf bağlantılardan erişilen içeriklerden sorumlu değiliz.",
        "Hizmet kesintilerinden kaynaklanan zararlar tazmin edilmez.",
      ],
    },

    {
      title: "Hesap Askıya Alma ve Sonlandırma",
      icon: Ban,
      color: "bg-red-100 text-red-600",
      content: [
        "Kural ihlalleri durumunda hesabınız uyarı almadan askıya alınabilir.",
        "Ciddi ihlallerde hesap kalıcı olarak kapatılabilir.",
        "Hesap kapatma durumunda verileriniz gizlilik politikası çerçevesinde işlenir.",
        "Kendi isteğinizle hesabınızı istediğiniz zaman kapatabilirsiniz.",
        "Hesap kapatma sonrası veri kurtarma mümkün olmayabilir.",
      ],
    },
  ];

  const importantTerms = [
    {
      title: "Yaş Sınırı",
      icon: Users,
      description:
        "Platform kullanımı için minimum 13 yaş gereklidir. 18 yaş altı kullanıcılar için ebeveyn onayı şarttır.",
    },
    {
      title: "Coğrafi Kısıtlamalar",
      icon: MapPin,
      description:
        "Hizmetlerimiz öncelikle Türkiye'de yaşayan kullanıcılar için tasarlanmıştır.",
    },
    {
      title: "Dil",
      icon: Globe,
      description:
        "Platform dili Türkçe'dir. İçerikler Türkçe olarak paylaşılmalıdır.",
    },
    {
      title: "Değişiklik Hakkı",
      icon: Calendar,
      description:
        "Bu şartlar önceden bildirimle değiştirilebilir. Değişiklikler site üzerinden duyurulur.",
    },
  ];

  return (
    <div className="container mx-auto px-4 py-8 max-w-6xl">
      {/* Header */}
      <div className="text-center mb-12">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Hizmet Şartları
        </h1>
        <p className="text-lg text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Forum Sağlık platformunu kullanarak aşağıdaki şart ve koşulları kabul
          etmiş sayılırsınız. Lütfen bu belgeyi dikkatlice okuyun.
        </p>
      </div>

      {/* Effective Date */}
      <Alert className="mb-8 border-blue-200 bg-blue-50">
        <FileText className="h-4 w-4 text-blue-600" />
        <AlertDescription className="text-blue-800">
          <div className="flex flex-wrap items-center gap-4">
            <span>
              <strong>Yürürlük Tarihi:</strong> 15 Aralık 2024
            </span>
            <span>
              <strong>Versiyon:</strong> 2.1
            </span>
            <span>
              <strong>Geçerlilik:</strong> Bu şartlar tüm kullanıcılar için
              bağlayıcıdır.
            </span>
          </div>
        </AlertDescription>
      </Alert>

      {/* Important Terms Summary */}
      <Card className="shadow-lg mb-8">
        <CardHeader>
          <CardTitle className="text-xl">Önemli Koşullar - Özet</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid md:grid-cols-2 gap-6">
            {importantTerms.map((term, index) => (
              <div
                key={index}
                className="flex items-start gap-3 p-4 bg-gray-50 rounded-lg"
              >
                <div className="p-2 bg-blue-100 rounded-lg">
                  <term.icon className="h-5 w-5 text-blue-600" />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900 mb-2">
                    {term.title}
                  </h3>
                  <p className="text-gray-600 text-sm leading-relaxed">
                    {term.description}
                  </p>
                </div>
              </div>
            ))}
          </div>
        </CardContent>
      </Card>

      {/* Terms Sections */}
      <div className="space-y-6 mb-12">
        {sections.map((section, index) => (
          <Card key={index} className="shadow-lg">
            <CardHeader>
              <CardTitle className="flex items-center gap-3">
                <div className={`p-2 rounded-lg ${section.color}`}>
                  <section.icon className="h-5 w-5" />
                </div>
                <span className="text-xl">{section.title}</span>
                <Badge
                  variant="outline"
                  className="text-blue-600 border-blue-200 ml-auto"
                >
                  {section.content.length} Madde
                </Badge>
              </CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-3">
                {section.content.map((item, itemIndex) => (
                  <div
                    key={itemIndex}
                    className="flex gap-4 p-3 bg-gray-50 rounded-lg"
                  >
                    <div className="flex-shrink-0">
                      <span className="inline-flex items-center justify-center w-7 h-7 rounded-full bg-white border-2 border-blue-200 text-blue-600 text-sm font-semibold">
                        {itemIndex + 1}
                      </span>
                    </div>
                    <p className="text-gray-700 leading-relaxed pt-1">{item}</p>
                  </div>
                ))}
              </div>
            </CardContent>
          </Card>
        ))}
      </div>

      {/* Contact for Legal Issues */}
      <Card className="shadow-lg">
        <CardHeader>
          <CardTitle className="text-xl">
            Hukuki Konular İçin İletişim
          </CardTitle>
        </CardHeader>
        <CardContent>
          <div className="bg-gradient-to-r from-blue-50 to-green-50 rounded-lg p-6">
            <p className="text-gray-700 mb-6 leading-relaxed">
              Hizmet şartları ile ilgili sorularınız veya hukuki konularda
              bizimle iletişime geçmek için:
            </p>
            <div className="grid md:grid-cols-2 gap-6">
              <div className="p-4 bg-white rounded-lg shadow-sm">
                <h3 className="font-semibold text-gray-900 mb-2">
                  E-posta İletişim
                </h3>
                <p className="text-blue-600 font-medium">
                  info@forumsağlık.com
                </p>
                <p className="text-gray-600 text-sm mt-1">7/24 destek</p>
              </div>
              <div className="p-4 bg-white rounded-lg shadow-sm">
                <h3 className="font-semibold text-gray-900 mb-2">
                  Posta Adresi
                </h3>
                <div className="text-gray-600 text-sm">
                  <p className="font-medium"></p>
                  <p></p>
                  <p></p>
                </div>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
