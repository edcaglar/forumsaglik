"use client";
import {
  Card,
  CardHeader,
  CardTitle,
  CardDescription,
  CardContent,
} from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Button } from "../../../../components/ui/button";
import { Alert, AlertDescription } from "@/components/ui/alert";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { AlertCircle, Eye, EyeOff, XCircle } from "lucide-react";
import { toast } from "sonner";
import SignupButton from "../signup-button";
import { signupClient } from "@/lib/auth-client";
import { handleGoogleLogin } from "@/lib/oatuh";

type RegisterFormErrors = {
  name?: string[];
  surname?: string[];
  username?: string[];
  email?: string[];
  password?: string[];
  confirmPassword?: string[];
  // terms?: string[]; // istersen string[] yap
  general?: string[];
};

export function SignupForm() {
  const router = useRouter();
  const [errors, setErrors] = useState<RegisterFormErrors>({});
  const [isPending, startTransition] = useTransition();
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [agreeToTerms, setAgreeToTerms] = useState(false);

  const onSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setErrors({});

    startTransition(async () => {
      if (!agreeToTerms) {
        toast.error("Devam etmek için Şartlar ve Gizlilik’i kabul etmelisin.");
        return;
      }
      const result = await signupClient(e.currentTarget);
      if (result.success && result.redirect) {
        toast.success(result.message || "Kayıt başarılı!");
        router.push(result.redirect);
        return;
      }
      if (result.errors) setErrors(result.errors);
      else
        setErrors({
          general: [result.message ?? "Kayıt olma işlemi başarısız."],
        });
    });
  };

  return (
    <div className="flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-md w-full">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-gray-900 mb-2">
            ForumSağlık&apos;a katıl.
          </h1>
          <p className="text-gray-600">
            Hesabınızı oluşturun ve topluluğumuza katılın.
          </p>
        </div>

        <Card className="shadow-xl">
          <CardHeader>
            <CardTitle>Hesap Oluştur</CardTitle>
            <CardDescription>
              Başlamak için bilgilerinizi doldurun
            </CardDescription>
          </CardHeader>
          <CardContent>
            {errors.general && (
              <Alert variant="destructive" className="mb-4">
                <AlertCircle className="h-4 w-4" />
                <AlertDescription>{errors.general[0]}</AlertDescription>
              </Alert>
            )}
            <form onSubmit={onSubmit} className="space-y-4">
              <div>
                <Label htmlFor="name" className="block mb-2">
                  İsim
                </Label>
                <Input id="name" name="name" type="text" placeholder="İsim" />
                {errors.name && (
                  <p className="text-red-500 text-sm mt-1">{errors.name}</p>
                )}
              </div>
              <div>
                <Label htmlFor="surname" className="block mb-2">
                  Soyisim
                </Label>
                <Input
                  id="surname"
                  name="surname"
                  type="text"
                  placeholder="Soyisim"
                />
                {errors.surname && (
                  <p className="text-red-500 text-sm mt-1">{errors.surname}</p>
                )}
              </div>
              <div>
                <Label htmlFor="username" className="block mb-2">
                  Kullanıcı adı
                </Label>
                <Input
                  id="username"
                  name="username"
                  type="text"
                  placeholder="Bir kullanıcı adı seçin"
                  className={errors?.username ? "border-red-500" : ""}
                />
                {errors?.username && (
                  <p className="text-red-500 text-sm mt-1 flex items-center">
                    <XCircle className="h-4 w-4 mr-1" />
                    {errors?.username}
                  </p>
                )}
              </div>
              <div>
                <Label htmlFor="email" className="block mb-2">
                  Email
                </Label>
                <Input
                  id="email"
                  name="email"
                  type="email"
                  placeholder="asd@email.com"
                  className={errors?.email ? "border-red-500" : ""}
                />
                {errors?.email && (
                  <p className="text-red-500 text-sm mt-1 flex items-center">
                    <XCircle className="h-4 w-4 mr-1" />
                    {errors?.email}
                  </p>
                )}
              </div>

              <div>
                <Label htmlFor="password" className="block mb-2">
                  Şifre
                </Label>
                <div className="relative">
                  <Input
                    id="password"
                    name="password"
                    type={showPassword ? "text" : "password"}
                    placeholder="Güçlü bir şifre oluşturun"
                    className={
                      errors?.password ? "border-red-500 pr-10" : "pr-10"
                    }
                  />
                  <Button
                    type="button"
                    variant="ghost"
                    size="sm"
                    className="absolute right-0 top-0 h-full px-3"
                    onClick={() => setShowPassword(!showPassword)}
                  >
                    {showPassword ? (
                      <EyeOff className="h-4 w-4" />
                    ) : (
                      <Eye className="h-4 w-4" />
                    )}
                  </Button>
                </div>
              </div>

              {errors?.password && (
                <p className="text-red-500 text-sm mt-1 flex items-center">
                  <XCircle className="h-4 w-4 mr-1" />
                  {errors?.password}
                </p>
              )}

              <div>
                <Label htmlFor="confirmPassword" className="block mb-2">
                  Şifreyi Onayla
                </Label>
                <div className="relative">
                  <Input
                    id="confirmPassword"
                    name="confirmPassword"
                    type={showConfirmPassword ? "text" : "password"}
                    placeholder="Şifrenizi tekrar girin"
                    className={
                      errors?.confirmPassword ? "border-red-500 pr-10" : "pr-10"
                    }
                  />
                  <Button
                    type="button"
                    variant="ghost"
                    size="sm"
                    className="absolute right-0 top-0 h-full px-3"
                    onClick={() => setShowConfirmPassword(!showConfirmPassword)}
                  >
                    {showConfirmPassword ? (
                      <EyeOff className="h-4 w-4" />
                    ) : (
                      <Eye className="h-4 w-4" />
                    )}
                  </Button>
                </div>
                {errors?.confirmPassword && (
                  <p className="text-red-500 text-sm mt-1 flex items-center">
                    <XCircle className="h-4 w-4 mr-1" />
                    {errors?.confirmPassword}
                  </p>
                )}
              </div>

              <div className="space-y-2">
                <div className="flex items-center space-x-2">
                  <input
                    id="remember"
                    name="rememberMe"
                    type="checkbox"
                    checked={agreeToTerms}
                    onChange={(e) => setAgreeToTerms(e.target.checked)}
                  />
                  <Label htmlFor="remember" className="text-sm leading-relaxed">
                    Kabul ediyorum:{" "}
                    <Link
                      href="/terms"
                      className="text-blue-600 hover:underline font-medium"
                    >
                      Hizmet Şartları
                    </Link>{" "}
                    ve{" "}
                    <Link
                      href="/privacy"
                      className="text-blue-600 hover:underline font-medium"
                    >
                      Gizlilik Politikası
                    </Link>
                  </Label>
                </div>
                {/* istersen burada errors.terms gösterebilirsin */}
              </div>

              <SignupButton />
            </form>

            {/* Divider */}
            <div className="mt-6">
              <div className="relative">
                <div className="absolute inset-0 flex items-center">
                  <div className="w-full border-t border-gray-300" />
                </div>
                <div className="relative flex justify-center text-sm">
                  <span className="px-2 bg-white text-gray-500">
                    Ya da şununla devam et
                  </span>
                </div>
              </div>

              {/* Google button */}
              <div className="mt-4">
                <Button
                  type="button"
                  variant="outline"
                  className="w-full bg-transparent"
                  onClick={handleGoogleLogin}
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    viewBox="0 0 24 24"
                    width="18"
                    height="18"
                  >
                    <path
                      fill="#4285F4"
                      d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
                    />
                    <path
                      fill="#34A853"
                      d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
                    />
                    <path
                      fill="#FBBC05"
                      d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
                    />
                    <path
                      fill="#EA4335"
                      d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
                    />
                    <path fill="none" d="M1 1h22v22H1z" />
                  </svg>
                  Google
                </Button>
              </div>
            </div>

            <div className="mt-6 text-center">
              <p className="text-sm text-gray-600">
                Zaten bir hesabınız var mı?{" "}
                <Link
                  href="/login"
                  className="text-blue-600 hover:underline font-medium"
                >
                  Buradan giriş yapın
                </Link>
              </p>
            </div>
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
