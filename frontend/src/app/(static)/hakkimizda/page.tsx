import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Heart, Users, Shield, Award, Target, Eye } from "lucide-react";

export default function AboutPage() {
  const values = [
    {
      icon: Heart,
      title: "Güvenilirlik",
      description:
        "Tüm bilgilerimiz uzman doktorlar tarafından onaylanır ve güvenilir kaynaklardan alınır.",
    },
    {
      icon: Users,
      title: "Topluluk",
      description:
        "Sağlık yolculuğunda kimsenin yalnız kalmaması için güçlü bir topluluk oluşturuyoruz.",
    },
    {
      icon: Shield,
      title: "Gizlilik",
      description:
        "Kişisel sağlık bilgileriniz en yüksek güvenlik standartlarıyla korunur.",
    },
    {
      icon: Award,
      title: "Kalite",
      description:
        "Yüksek kaliteli içerik ve uzman görüşleri ile size en iyi hizmeti sunuyoruz.",
    },
  ];

  return (
    <div className="container mx-auto px-4 py-8">
      {/* Hero Section */}
      <div className="text-center mb-16">
        <h1 className="text-4xl font-bold text-gray-900 mb-6">Hakkımızda</h1>
        <p className="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Forum Sağlık, sağlık konularında güvenilir bilgi paylaşımı ve topluluk
          desteği sağlayan Türkiye&apos;nin önde gelen sağlık platformudur.
          Uzman doktorlar ve sağlık profesyonelleri eşliğinde, herkesin sağlıklı
          yaşam bilgisine erişebileceği bir ortam yaratıyoruz.
        </p>
      </div>

      {/* Mission & Vision */}
      <div className="grid md:grid-cols-2 gap-8 mb-16">
        <Card className="shadow-lg">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Target className="h-6 w-6 text-blue-600" />
              Misyonumuz
            </CardTitle>
          </CardHeader>
          <CardContent>
            <p className="text-gray-600 leading-relaxed">
              Sağlık konularında doğru, güncel ve güvenilir bilgileri herkesle
              paylaşarak, toplumun sağlık okuryazarlığını artırmak ve sağlıklı
              yaşam alışkanlıklarının yaygınlaşmasına katkıda bulunmak. Uzman
              doktorlar ve sağlık profesyonelleri ile birlikte, herkesin sağlık
              sorularına yanıt bulabileceği güvenli bir platform oluşturmak.
            </p>
          </CardContent>
        </Card>

        <Card className="shadow-lg">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Eye className="h-6 w-6 text-green-600" />
              Vizyonumuz
            </CardTitle>
          </CardHeader>
          <CardContent>
            <p className="text-gray-600 leading-relaxed">
              Türkiye&apos;de ve dünyada sağlık bilgisi paylaşımında öncü
              platform olmak. Teknoloji ve tıp bilimini harmanlayarak,
              kişiselleştirilmiş sağlık rehberliği sunan, toplumun her
              kesiminden insanın güvenle başvurabileceği bir sağlık ekosistemi
              yaratmak. Gelecekte yapay zeka destekli sağlık asistanları ile
              7/24 destek sağlayan bir platform haline gelmek.
            </p>
          </CardContent>
        </Card>
      </div>

      {/* Values */}
      <div className="mb-16">
        <h2 className="text-3xl font-bold text-center text-gray-900 mb-12">
          Değerlerimiz
        </h2>
        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
          {values.map((value, index) => (
            <Card key={index} className="shadow-lg text-center">
              <CardContent className="pt-6">
                <value.icon className="h-12 w-12 text-blue-600 mx-auto mb-4" />
                <h3 className="text-xl font-semibold text-gray-900 mb-3">
                  {value.title}
                </h3>
                <p className="text-gray-600 text-sm leading-relaxed">
                  {value.description}
                </p>
              </CardContent>
            </Card>
          ))}
        </div>
      </div>

      {/* Statistics */}
      <Card className="shadow-lg">
        <CardHeader>
          <CardTitle className="text-center">Rakamlarla Forum Sağlık</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
            <div>
              <div className="text-3xl font-bold text-blue-600 mb-2">1+</div>
              <div className="text-gray-600">Aktif Üye</div>
            </div>
            <div>
              <div className="text-3xl font-bold text-green-600 mb-2">1+</div>
              <div className="text-gray-600">Uzman Doktor</div>
            </div>
            <div>
              <div className="text-3xl font-bold text-purple-600 mb-2">1+</div>
              <div className="text-gray-600">Yanıtlanan Soru</div>
            </div>
            <div>
              <div className="text-3xl font-bold text-orange-600 mb-2">1</div>
              <div className="text-gray-600">Yıllık Deneyim</div>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
