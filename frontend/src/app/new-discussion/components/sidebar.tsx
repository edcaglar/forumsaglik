import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";

export default function SideBar() {
  return (
    <div className="space-y-6">
      {/* Guidelines */}
      <Card>
        <CardHeader>
          <CardTitle className="text-lg">Gönderi Kuralları</CardTitle>
        </CardHeader>
        <CardContent className="space-y-3 text-sm">
          <div className="flex items-start space-x-2">
            <div className="w-2 h-2 bg-blue-500 rounded-full mt-2 flex-shrink-0" />
            <p>Diğer topluluk üyelerine karşı saygılı ve destekleyici olun</p>
          </div>
          <div className="flex items-start space-x-2">
            <div className="w-2 h-2 bg-blue-500 rounded-full mt-2 flex-shrink-0" />
            <p>Konunuzu özetleyen açık ve açıklayıcı başlıklar kullanın</p>
          </div>
          <div className="flex items-start space-x-2">
            <div className="w-2 h-2 bg-blue-500 rounded-full mt-2 flex-shrink-0" />
            <p>
              Durumunuzu başkalarının anlamasına yardımcı olacak detaylı
              bilgiler verin
            </p>
          </div>
          <div className="flex items-start space-x-2">
            <div className="w-2 h-2 bg-blue-500 rounded-full mt-2 flex-shrink-0" />
            <p>En uygun kategori ve alt kategoriyi seçin</p>
          </div>
          <div className="flex items-start space-x-2">
            <div className="w-2 h-2 bg-blue-500 rounded-full mt-2 flex-shrink-0" />
            <p>Keşfedilebilirliği artırmak için ilgili etiketler ekleyin</p>
          </div>
        </CardContent>
      </Card>

      {/* Tips */}
      <Card>
        <CardHeader>
          <CardTitle className="text-lg">İpuçları</CardTitle>
        </CardHeader>
        <CardContent className="space-y-3 text-sm">
          <div>
            <h4 className="font-medium mb-1">Sorular İçin::</h4>
            <p className="text-gray-600">
              Belirtilerinizi, zaman çizelgenizi ve daha önce denediklerinizi
              ekleyin
            </p>
          </div>
          <div>
            <h4 className="font-medium mb-1">Deneyimler İçin:</h4>
            <p className="text-gray-600">
              Yolculuğunuzu, sonuçlarınızı ve edindiğiniz dersleri paylaşınd
            </p>
          </div>
          <div>
            <h4 className="font-medium mb-1">Tavsiyeler İçin:</h4>
            <p className="text-gray-600">
              Bağlam verin ve neden işe yaradığını açıklayın
            </p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
