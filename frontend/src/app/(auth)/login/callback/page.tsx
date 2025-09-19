"use client";
import { Card, CardContent } from "@/components/ui/card";
import { Loader2 } from "lucide-react";
import { useEffect, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";

export default function SigningInPage() {
  const router = useRouter();
  const sp = useSearchParams();
  const next = sp.get("next") || "/"; // /login/callback?next=/profile gibi
  const [seconds, setSeconds] = useState(3); // geri sayım süresi (sn)

  // 1) Geri sayım
  useEffect(() => {
    const id = setInterval(() => {
      setSeconds((s) => (s > 0 ? s - 1 : 0));
    }, 1000);
    return () => clearInterval(id);
  }, []);

  // 2) Süre bittiğinde yönlendir
  useEffect(() => {
    if (seconds === 0) {
      router.replace(next);
      router.refresh();
    }
  }, [seconds, next, router]);

  return (
    <div className="min-h-screen bg-gradient-to-br from-gray-50 to-gray-100 flex items-center justify-center p-4">
      <div className="max-w-md w-full">
        <Card className="shadow-xl">
          <CardContent className="p-8">
            <div className="text-center">
              {/* Loading Animation */}
              <div className="mb-6">
                <div className="relative">
                  <Loader2 className="h-16 w-16 animate-spin text-blue-600 mx-auto" />
                  <div className="absolute inset-0 flex items-center justify-center">
                    <div className="h-8 w-8 bg-white rounded-full flex items-center justify-center">
                      {/* Google "G" şekli */}
                      <svg
                        className="h-4 w-4 text-blue-600"
                        viewBox="0 0 24 24"
                      >
                        <path
                          fill="currentColor"
                          d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
                        />
                        <path
                          fill="currentColor"
                          d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
                        />
                        <path
                          fill="currentColor"
                          d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
                        />
                        <path
                          fill="currentColor"
                          d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
                        />
                      </svg>
                    </div>
                  </div>
                </div>
              </div>

              {/* Main Content */}
              <h1 className="text-2xl font-bold text-gray-900 mb-2">
                Giriş Yapılıyor...
              </h1>
              <p className="text-gray-600 mb-2">
                Google hesabınız ile giriş yapılıyor, lütfen bekleyin.
              </p>
              <p className="text-sm text-gray-500 mb-6">
                {seconds} saniye içinde yönlendirileceksiniz...
              </p>

              {/* Loading Dots */}
              <div className="flex items-center justify-center space-x-2 text-sm text-gray-500 mb-8">
                <div className="flex space-x-1">
                  <div
                    className="w-2 h-2 bg-blue-600 rounded-full animate-bounce"
                    style={{ animationDelay: "0ms" }}
                  />
                  <div
                    className="w-2 h-2 bg-blue-600 rounded-full animate-bounce"
                    style={{ animationDelay: "150ms" }}
                  />
                  <div
                    className="w-2 h-2 bg-blue-600 rounded-full animate-bounce"
                    style={{ animationDelay: "300ms" }}
                  />
                </div>
                <span>İşleniyor</span>
              </div>

              {/* Security Message */}
              <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
                <p className="text-blue-800 text-sm">
                  🔒 Güvenli bağlantı kuruldu. Hesap bilgileriniz
                  doğrulanıyor...
                </p>
              </div>
            </div>

            {/* Footer */}
            <div className="mt-8 pt-6 border-t border-gray-200">
              <div className="text-center">
                <p className="text-xs text-gray-500">
                  Güvenli giriş için{" "}
                  <span className="font-medium text-gray-900">ForumSağlık</span>{" "}
                  tarafından korunuyorsunuz
                </p>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Additional Info */}
        <div className="mt-6 text-center">
          <p className="text-sm text-gray-600">
            Bu işlem birkaç saniye sürebilir
          </p>
        </div>
      </div>
    </div>
  );
}
