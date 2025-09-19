import { LoginForm } from "@/app/(auth)/components/forms/login-form";

export default async function LoginPage({
  searchParams,
}: {
  searchParams: Promise<{ verified?: string; verify?: string }>;
}) {
  const params = await searchParams;
  const verified = params?.verified === "1";
  const verify = params?.verify; // success | already | invalid | null
  return (
    <div>
      <div className="flex items-center justify-center py-12 px-4 sm:px-6 lg:px-8">
        <div className="max-w-md w-full">
          <div className="text-center mb-8">
            <h1 className="text-3xl font-bold text-gray-900 mb-2">
              Tekrar Hoş Geldiniz
            </h1>
            <p className="text-gray-600">
              Sağlık yolculuğunuza devam etmek için giriş yapın
            </p>
          </div>
          <LoginForm verified={verified} verify={verify} />
        </div>
      </div>
    </div>
  );
}
