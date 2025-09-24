"use client";

import Link from "next/link";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { handleGoogleLogin } from "@/lib/oatuh";
import { TextField } from "./register/TextField";
import { PasswordField } from "./register/PasswordField";
import { FormErrorAlert } from "./register/FormErrorAlert";
import { useLoginForm } from "./login/use-login-form";
import { Label } from "@/components/ui/label";

export function LoginForm({ verified, verify }: { verified?: boolean; verify?: string }) {
  const { showPassword, setShowPassword, rememberMe, setRememberMe, errors, isPending, onSubmit } = useLoginForm();

  return (
    <>
      {verified && (
        <div className="text-sm text-green-700 border border-green-300 rounded p-2">E-posta doğrulandı, şimdi giriş yapabilirsin.</div>
      )}
      {verify && (
        <div
          className={
            verify === "success"
              ? "mb-4 rounded border border-green-300 bg-green-50 p-2 text-sm text-green-800"
              : verify === "already"
              ? "mb-4 rounded border border-blue-300 bg-blue-50 p-2 text-sm text-blue-800"
              : "mb-4 rounded border border-red-300 bg-red-50 p-2 text-sm text-red-800"
          }
        >
          {verify === "success" && "E-posta doğrulandı. Giriş yapabilirsin."}
          {verify === "already" && "E-posta zaten doğrulanmış."}
          {verify === "invalid" && "Bağlantı geçersiz ya da süresi dolmuş."}
        </div>
      )}

      <Card className="shadow-xl">
        <CardHeader>
          <CardTitle>Giriş Yap</CardTitle>
          <CardDescription>Hesabınıza erişmek için bilgilerinizi girin</CardDescription>
        </CardHeader>

        <CardContent>
          <FormErrorAlert error={errors.general} />

          <form onSubmit={onSubmit} className="space-y-4">
            <TextField id="email" name="email" type="email" label="Email" placeholder="you@email.com" error={errors.email} />

            <PasswordField
              id="password"
              name="password"
              label="Şifre"
              placeholder="Şifrenizi girin"
              show={showPassword}
              onToggle={() => setShowPassword(!showPassword)}
              error={errors.password}
            />

            <div className="flex items-center justify-between">
              <div className="flex items-center space-x-2">
                <input id="remember" name="rememberMe" type="checkbox" checked={rememberMe} onChange={(e) => setRememberMe(e.target.checked)} />
                <Label htmlFor="remember" className="text-sm">
                  Beni Hatırla
                </Label>
              </div>

              <Link href="/forgot-password" className="text-sm text-blue-600 hover:underline font-medium">
                Şifremi Unuttum
              </Link>
            </div>

            <Button type="submit" className="w-full bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700" disabled={isPending}>
              {isPending ? "Giriş Yapılıyor..." : "Giriş Yap"}
            </Button>
          </form>

          <div className="mt-6">
            <div className="relative">
              <div className="absolute inset-0 flex items-center">
                <div className="w-full border-t border-gray-300" />
              </div>
              <div className="relative flex justify-center text-sm">
                <span className="px-2 bg-white text-gray-500">veya devam et</span>
              </div>
            </div>

            <div className="mt-4">
              <Button type="button" variant="outline" className="w-full bg-transparent" onClick={handleGoogleLogin}>
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18">
                  <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" />
                  <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" />
                  <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" />
                  <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" />
                  <path fill="none" d="M1 1h22v22H1z" />
                </svg>
                Google
              </Button>
            </div>
          </div>

          <div className="mt-6 text-center">
            <p className="text-sm text-gray-600">
              Hesabınız yok mu?{" "}
              <Link href="/register" className="text-blue-600 hover:underline font-medium">
                Kayıt Ol
              </Link>
            </p>
          </div>
        </CardContent>
      </Card>
    </>
  );
}

