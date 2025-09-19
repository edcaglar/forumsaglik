import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Mail, Phone, MapPin, Clock, Send } from "lucide-react";

export default function ContactPage() {
  return (
    <div className="container mx-auto px-4 py-8">
      {/* Header */}
      <div className="text-center mb-12">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">İletişim</h1>
        <p className="text-xl text-gray-600 max-w-2xl mx-auto">
          Sorularınız, önerileriniz veya destek talepleriniz için bizimle
          iletişime geçin. Size yardımcı olmaktan mutluluk duyarız.
        </p>
      </div>

      <div className="grid lg:grid-cols-2 gap-12 max-w-6xl mx-auto">
        {/* Contact Form */}
        <div className="lg:order-1">
          <Card className="shadow-lg h-fit">
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <Send className="h-5 w-5 text-blue-600" />
                Bize Mesaj Gönderin
              </CardTitle>
              <p className="text-sm text-gray-600">
                Formu doldurarak bizimle iletişime geçebilirsiniz. En kısa
                sürede size geri dönüş yapacağız.
              </p>
            </CardHeader>
            <CardContent>
              <form className="space-y-4">
                <div className="grid md:grid-cols-2 gap-4">
                  <div>
                    <label
                      htmlFor="firstName"
                      className="block text-sm font-medium text-gray-700 mb-1"
                    >
                      Ad
                    </label>
                    <Input
                      id="firstName"
                      name="firstName"
                      placeholder="Adınız"
                      required
                    />
                  </div>
                  <div>
                    <label
                      htmlFor="lastName"
                      className="block text-sm font-medium text-gray-700 mb-1"
                    >
                      Soyad
                    </label>
                    <Input
                      id="lastName"
                      name="lastName"
                      placeholder="Soyadınız"
                      required
                    />
                  </div>
                </div>

                <div>
                  <label
                    htmlFor="email"
                    className="block text-sm font-medium text-gray-700 mb-1"
                  >
                    E-posta Adresi
                  </label>
                  <Input
                    id="email"
                    name="email"
                    type="email"
                    placeholder="ornek@email.com"
                    required
                  />
                </div>

                <div>
                  <label
                    htmlFor="subject"
                    className="block text-sm font-medium text-gray-700 mb-1"
                  >
                    Konu
                  </label>
                  <Input
                    id="subject"
                    name="subject"
                    placeholder="Mesajınızın konusu"
                    required
                  />
                </div>

                <div>
                  <label
                    htmlFor="message"
                    className="block text-sm font-medium text-gray-700 mb-1"
                  >
                    Mesajınız
                  </label>
                  <Textarea
                    id="message"
                    name="message"
                    rows={4}
                    placeholder="Mesajınızı buraya yazın..."
                    required
                    className="resize-none"
                  />
                </div>

                <Button
                  type="submit"
                  className="w-full bg-blue-600 hover:bg-blue-700"
                >
                  <Send className="h-4 w-4 mr-2" />
                  Mesaj Gönder
                </Button>
              </form>
            </CardContent>
          </Card>
        </div>

        {/* Contact Information */}
        <div className="space-y-6 lg:order-2">
          <Card className="shadow-lg">
            <CardHeader>
              <CardTitle>İletişim Bilgileri</CardTitle>
              <p className="text-sm text-gray-600">
                Aşağıdaki kanallardan bizimle doğrudan iletişime geçebilirsiniz.
              </p>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="flex items-start gap-3">
                <div className="bg-blue-100 p-2 rounded-lg">
                  <Mail className="h-4 w-4 text-blue-600" />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900 text-sm">
                    E-posta
                  </h3>
                  <p className="text-gray-600 text-sm">info@forumsaglik.com</p>
                  <p className="text-gray-600 text-sm">
                    destek@forumsaglik.com
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="bg-green-100 p-2 rounded-lg">
                  <Phone className="h-4 w-4 text-green-600" />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900 text-sm">
                    Telefon
                  </h3>
                  <p className="text-gray-600 text-sm">+90 (212) 000 0000</p>
                  <p className="text-xs text-gray-500">
                    Pazartesi - Cuma, 09:00 - 18:00
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="bg-purple-100 p-2 rounded-lg">
                  <MapPin className="h-4 w-4 text-purple-600" />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900 text-sm">Adres</h3>
                  <p className="text-gray-600 text-sm">
                    Talatpaşa Mahallesi
                    <br />
                    Kağıthane
                    <br />
                    Türkiye
                  </p>
                </div>
              </div>

              <div className="flex items-start gap-3">
                <div className="bg-orange-100 p-2 rounded-lg">
                  <Clock className="h-4 w-4 text-orange-600" />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900 text-sm">
                    Çalışma Saatleri
                  </h3>
                  <p className="text-gray-600 text-sm">
                    Pazartesi - Cuma: 09:00 - 18:00
                  </p>
                  <p className="text-gray-600 text-sm">
                    Cumartesi: 10:00 - 16:00
                  </p>
                  <p className="text-gray-600 text-sm">Pazar: Kapalı</p>
                </div>
              </div>
            </CardContent>
          </Card>

          <Card className="shadow-lg">
            <CardHeader>
              <CardTitle className="text-lg">Sık Sorulan Sorular</CardTitle>
            </CardHeader>
            <CardContent>
              <div className="space-y-4">
                <div className="border-l-4 border-blue-500 pl-4">
                  <h4 className="font-semibold text-gray-900 text-sm mb-1">
                    Ne kadar sürede yanıt alırım?
                  </h4>
                  <p className="text-gray-600 text-sm">
                    Genellikle 24 saat içinde size geri dönüş yapıyoruz. Acil
                    durumlar için telefon numaramızı arayabilirsiniz.
                  </p>
                </div>
                <div className="border-l-4 border-green-500 pl-4">
                  <h4 className="font-semibold text-gray-900 text-sm mb-1">
                    Teknik destek alabilir miyim?
                  </h4>
                  <p className="text-gray-600 text-sm">
                    Elbette! Teknik sorunlarınız için destek@forumsaglik.com
                    adresine yazabilirsiniz.
                  </p>
                </div>
                <div className="border-l-4 border-purple-500 pl-4">
                  <h4 className="font-semibold text-gray-900 text-sm mb-1">
                    Hesap sorunları için kimle iletişime geçmeliyim?
                  </h4>
                  <p className="text-gray-600 text-sm">
                    Hesap ile ilgili tüm sorunlarınız için info@forumsaglik.com
                    adresini kullanabilirsiniz.
                  </p>
                </div>
              </div>
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  );
}
