"use client";

import { useSearchParams } from "next/navigation";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Mail, CheckCircle, ArrowLeft, AlertTriangle } from "lucide-react";

export default function VerifyEmailPage() {
  const searchParams = useSearchParams();
  const email = searchParams.get("email") || "";

  return (
    <div className="flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-md w-full">
        <div className="text-center mb-8">
          <div className="mx-auto w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-4">
            <Mail className="h-8 w-8 text-blue-600" />
          </div>
          <h1 className="text-3xl font-bold text-gray-900 mb-2">
            E-postanızı Kontrol Edin
          </h1>
          <p className="text-gray-600">
            Size bir doğrulama bağlantısı gönderdik
          </p>
        </div>

        <Card className="shadow-xl">
          <CardHeader className="text-center">
            <CardTitle className="flex items-center justify-center gap-2">
              <CheckCircle className="h-5 w-5 text-green-600" />
              E-posta Başarıyla Gönderildi
            </CardTitle>
            <CardDescription>
              E-posta adresinize bir doğrulama bağlantısı gönderildi
            </CardDescription>
          </CardHeader>

          <CardContent className="space-y-6">
            {/* Email confirmation message */}
            <div className="text-center space-y-4">
              <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
                <p className="text-sm text-blue-800 font-medium mb-2">
                  📧 Doğrulama e-postası gönderildi:
                </p>
                <p className="text-blue-900 font-semibold break-all">
                  {email || "your registered email address"}
                </p>
              </div>

              <div className="text-left space-y-3">
                <p className="text-gray-700 font-medium">
                  Lütfen hesabınızı doğrulamak için gelen kutunuzu kontrol edin.
                </p>

                <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-3">
                  <div className="flex items-start gap-2">
                    <AlertTriangle className="h-4 w-4 text-yellow-600 mt-0.5 flex-shrink-0" />
                    <div className="text-sm text-yellow-800">
                      <p className="font-medium mb-1">
                        E-postayı bulamıyor musunuz??
                      </p>
                      <ul className="space-y-1 text-xs">
                        <li>• Spam veya Gereksiz klasörünü kontrol edin.</li>
                        <li>
                          • Doğru e-posta adresini girdiğinizden emin olun
                        </li>
                        <li>• E-postanın gelmesi birkaç dakika sürebilir</li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            {/* Action buttons */}
            <div className="space-y-3">
              <div className="flex gap-3">
                <Button
                  asChild
                  variant="outline"
                  className="flex-1 bg-transparent"
                >
                  <Link href="/login">
                    <ArrowLeft className="mr-2 h-4 w-4" />
                    Giriş Ekranına Dön
                  </Link>
                </Button>

                <Button
                  asChild
                  className="flex-1 bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700"
                >
                  <Link href="/">Ana Sayfaya Git</Link>
                </Button>
              </div>
            </div>

            {/* Additional help */}
            <div className="border-t pt-4">
              <div className="text-center text-sm text-gray-600">
                <p className="mb-2">Hâlâ sorun mu yaşıyorsunuz?</p>
                <Link
                  href="/contact"
                  className="text-blue-600 hover:underline font-medium"
                >
                  Destek ekibimizle iletişime geçin
                </Link>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Additional information */}
        <div className="mt-6 text-center">
          <div className="bg-white rounded-lg shadow-sm border p-4">
            <h3 className="font-semibold text-gray-900 mb-2">
              Sırada ne olacak?
            </h3>
            <div className="text-sm text-gray-600 space-y-2">
              <div className="flex items-center gap-2">
                <div className="w-2 h-2 bg-blue-600 rounded-full"></div>
                <span>E-postanızdaki doğrulama bağlantısına tıklayın</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-2 h-2 bg-blue-600 rounded-full"></div>
                <span>Hesabınız otomatik olarak etkinleştirilecek</span>
              </div>
              <div className="flex items-center gap-2">
                <div className="w-2 h-2 bg-blue-600 rounded-full"></div>
                <span>
                  Ardından giriş yapıp Forum Sağlık&apos;ı kullanmaya
                  başlayabilirsiniz
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
