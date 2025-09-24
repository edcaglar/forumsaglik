"use client";

import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import Link from "next/link";
import SignupButton from "../signup-button";
import { TextField } from "./register/TextField";
import { PasswordField } from "./register/PasswordField";
import { TermsCheckbox } from "./register/TermsCheckbox";
import { SocialLogin } from "./register/SocialLogin";
import { FormErrorAlert } from "./register/FormErrorAlert";
import { useRegisterForm } from "./register/use-register-form";

export function RegisterForm() {
  const {
    errors,
    showPassword,
    showConfirmPassword,
    agreeToTerms,
    setAgreeToTerms,
    setShowPassword,
    setShowConfirmPassword,
    onSubmit,
  } = useRegisterForm();

  return (
    <div className="flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
      <div className="max-w-md w-full">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-gray-900 mb-2">ForumSağlık&apos;a katıl.</h1>
          <p className="text-gray-600">Hesabınızı oluşturun ve topluluğumuza katılın.</p>
        </div>

        <Card className="shadow-xl">
          <CardHeader>
            <CardTitle>Hesap Oluştur</CardTitle>
            <CardDescription>Başlamak için bilgilerinizi doldurun</CardDescription>
          </CardHeader>
          <CardContent>
            <FormErrorAlert error={errors.general} />

            <form onSubmit={onSubmit} className="space-y-4">
              <TextField id="name" name="name" label="İsim" placeholder="İsim" error={errors.name} />

              <TextField id="surname" name="surname" label="Soyisim" placeholder="Soyisim" error={errors.surname} />

              <TextField
                id="username"
                name="username"
                label="Kullanıcı Adı"
                placeholder="Bir kullanıcı adı seçin"
                error={errors.username}
              />

              <TextField
                id="email"
                name="email"
                type="email"
                label="Email"
                placeholder="mahmutorhan@gmail.com"
                error={errors.email}
              />

              <PasswordField
                id="password"
                name="password"
                label="Şifre"
                placeholder="Güçlü bir şifre oluşturun"
                show={showPassword}
                onToggle={() => setShowPassword(!showPassword)}
                error={errors.password}
              />

              <PasswordField
                id="confirmPassword"
                name="confirmPassword"
                label="Şifreyi Onayla"
                placeholder="Şifrenizi tekrar girin"
                show={showConfirmPassword}
                onToggle={() => setShowConfirmPassword(!showConfirmPassword)}
                error={errors.confirmPassword}
              />

              <TermsCheckbox checked={agreeToTerms} onChange={setAgreeToTerms} />

              <SignupButton />
            </form>

            <SocialLogin />

            <div className="mt-6 text-center">
              <p className="text-sm text-gray-600">
                Zaten bir hesabınız var mı?{" "}
                <Link href="/login" className="text-blue-600 hover:underline font-medium">
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

