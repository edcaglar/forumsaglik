import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Badge } from "@/components/ui/badge";
import {
  Shield,
  AlertTriangle,
  Users,
  MessageSquare,
  Heart,
  Ban,
} from "lucide-react";

export default function ForumRulesPage() {
  const rules = [
    {
      category: "Genel Kurallar",
      icon: Shield,
      color: "blue",
      items: [
        "Saygılı ve nazik bir dil kullanın. Kaba, hakaret içeren veya aşağılayıcı ifadeler kesinlikle yasaktır.",
        "Kişisel saldırılarda bulunmayın. Fikirlerinizi eleştirin, kişileri değil.",
        "Spam, reklam veya alakasız içerik paylaşmayın.",
        "Çoklu hesap açmak yasaktır. Her kullanıcı yalnızca bir hesaba sahip olabilir.",
        "Telif hakkı ihlali yapan içerikler paylaşmayın.",
      ],
    },
    {
      category: "Sağlık İçerikleri",
      icon: Heart,
      color: "red",
      items: [
        "Tıbbi tavsiye vermeyin. Yalnızca kişisel deneyimlerinizi paylaşın.",
        "Tanı koymaya çalışmayın. Bu yalnızca uzman doktorların yetkisindedir.",
        "İlaç önerisi yapmayın. İlaç kullanımı konusunda mutlaka doktora danışılması gerektiğini belirtin.",
        "Yanlış veya yanıltıcı sağlık bilgisi paylaşmayın.",
        "Acil durumlar için forumu kullanmayın, derhal tıbbi yardım alın.",
      ],
    },
    {
      category: "Topluluk Etkileşimi",
      icon: Users,
      color: "green",
      items: [
        "Başkalarının görüşlerine saygı gösterin, farklı düşüncelere açık olun.",
        "Yapıcı eleştiri yapın, yıkıcı olmayın.",
        "Yardım isteyen kişilere destek olun ve rehberlik edin.",
        "Topluluk kurallarını ihlal eden davranışları moderatörlere bildirin.",
        "Pozitif ve destekleyici bir ortam yaratmaya katkıda bulunun.",
      ],
    },
    {
      category: "İçerik Paylaşımı",
      icon: MessageSquare,
      color: "purple",
      items: [
        "Konuyla ilgili ve değerli içerikler paylaşın.",
        "Başlıkları açık ve anlaşılır yazın.",
        "Uzun metinleri paragraflar halinde düzenleyin.",
        "Kaynak belirtmeyi unutmayın, özellikle bilimsel bilgiler için.",
        "Kişisel bilgilerinizi (telefon, adres vb.) paylaşmayın.",
      ],
    },
  ];

  const violations = [
    {
      level: "Uyarı",
      color: "yellow",
      description: "İlk ihlal durumunda kullanıcıya uyarı verilir.",
      actions: ["E-posta ile uyarı", "Profilde uyarı notu"],
    },
    {
      level: "Geçici Askıya Alma",
      color: "orange",
      description: "Tekrarlanan ihlallerde hesap geçici olarak askıya alınır.",
      actions: ["1-7 gün hesap askıya alma", "İçerik silme"],
    },
    {
      level: "Kalıcı Yasaklama",
      color: "red",
      description:
        "Ciddi ihlaller veya tekrarlanan davranışlarda kalıcı yasaklama.",
      actions: ["Hesap kalıcı kapatma", "IP adresi yasaklama"],
    },
  ];

  return (
    <div className="container mx-auto px-4 py-8">
      {/* Header */}
      <div className="text-center mb-12">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">
          Forum Kuralları
        </h1>
        <p className="text-xl text-gray-600 max-w-3xl mx-auto">
          Forum Sağlık topluluğumuzun güvenli, saygılı ve yararlı bir ortam
          olması için tüm üyelerimizin uyması gereken kurallar aşağıda
          belirtilmiştir.
        </p>
      </div>

      {/* Important Notice */}
      <Alert className="mb-8 border-orange-200 bg-orange-50">
        <AlertTriangle className="h-4 w-4 text-orange-600" />
        <AlertDescription className="text-orange-800">
          <strong>Önemli:</strong> Bu kurallar tüm forum üyeleri için
          geçerlidir. Kuralları ihlal eden davranışlar hesap askıya alma veya
          yasaklama ile sonuçlanabilir.
        </AlertDescription>
      </Alert>

      {/* Rules Sections */}
      <div className="space-y-8 mb-12">
        {rules.map((section, index) => (
          <Card key={index} className="shadow-lg">
            <CardHeader>
              <CardTitle className="flex items-center gap-3">
                <section.icon className={`h-6 w-6 text-${section.color}-600`} />
                {section.category}
                <Badge
                  variant="outline"
                  className={`text-${section.color}-600 border-${section.color}-200`}
                >
                  {section.items.length} Kural
                </Badge>
              </CardTitle>
            </CardHeader>
            <CardContent>
              <ul className="space-y-3">
                {section.items.map((rule, ruleIndex) => (
                  <li key={ruleIndex} className="flex items-start gap-3">
                    <span
                      className={`inline-flex w-6 h-6 rounded-full bg-${section.color}-100 text-${section.color}-600 text-sm font-semibold flex items-center justify-center flex-shrink-0 mt-0.5`}
                    >
                      {ruleIndex + 1}
                    </span>
                    <span className="text-gray-700 leading-relaxed">
                      {rule}
                    </span>
                  </li>
                ))}
              </ul>
            </CardContent>
          </Card>
        ))}
      </div>

      {/* Violation Consequences */}
      <Card className="shadow-lg mb-8">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Ban className="h-6 w-6 text-red-600" />
            İhlal Durumunda Uygulanacak Yaptırımlar
          </CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid md:grid-cols-3 gap-6">
            {violations.map((violation, index) => (
              <div
                key={index}
                className={`border-2 border-${violation.color}-200 rounded-lg p-4 bg-${violation.color}-50`}
              >
                <h3
                  className={`text-lg font-semibold text-${violation.color}-800 mb-2`}
                >
                  {violation.level}
                </h3>
                <p className={`text-${violation.color}-700 text-sm mb-3`}>
                  {violation.description}
                </p>
                <ul className="space-y-1">
                  {violation.actions.map((action, actionIndex) => (
                    <li
                      key={actionIndex}
                      className={`text-${violation.color}-600 text-sm flex items-center gap-2`}
                    >
                      <span className="w-1.5 h-1.5 bg-current rounded-full"></span>
                      {action}
                    </li>
                  ))}
                </ul>
              </div>
            ))}
          </div>
        </CardContent>
      </Card>

      {/* Reporting */}
      <Card className="shadow-lg">
        <CardHeader>
          <CardTitle>Kural İhlali Bildirimi</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid md:grid-cols-2 gap-6">
            <div>
              <h3 className="font-semibold text-gray-900 mb-3">
                Nasıl Bildirim Yapılır?
              </h3>
              <ul className="space-y-2 text-gray-600">
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-blue-600 rounded-full mt-2 flex-shrink-0"></span>
                  Her gönderi ve yorumda bulunan &apos;Bildir&apos; butonunu
                  kullanın
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-blue-600 rounded-full mt-2 flex-shrink-0"></span>
                  Moderatörlere özel mesaj gönderin
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-blue-600 rounded-full mt-2 flex-shrink-0"></span>
                  İletişim sayfasından ulaşın
                </li>
              </ul>
            </div>
            <div>
              <h3 className="font-semibold text-gray-900 mb-3">
                Bildirim Sonrası Süreç
              </h3>
              <ul className="space-y-2 text-gray-600">
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  24 saat içinde inceleme yapılır
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Gerekli yaptırımlar uygulanır
                </li>
                <li className="flex items-start gap-2">
                  <span className="w-1.5 h-1.5 bg-green-600 rounded-full mt-2 flex-shrink-0"></span>
                  Bildirim yapan kişiye geri dönüş sağlanır
                </li>
              </ul>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
