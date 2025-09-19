"use client";

import { fetchClient } from "@/lib/fetch-client";
import { LoginFormSchema, SignupFormSchema } from "@/schemas/auth";

export interface LoginState {
  success?: boolean;
  redirect?: string;
  message?: string;
  errors?: {
    email?: string[];
    password?: string[];
    general?: string[];
  };
}

export interface RegisterState {
  success?: boolean;
  redirect?: string;
  message?: string;
  errors?: {
    email?: string[];
    password?: string[];
    confirmPassword?: string[];
    username?: string[];
    name?: string[];
    surname?: string[];
    terms?: boolean;
    general?: string[];
  };
}

export async function loginClient(form: HTMLFormElement): Promise<LoginState> {
  // Client-side doğrulama (opsiyonel ama güzel)
  const fd = new FormData(form);
  const parsed = LoginFormSchema.safeParse({
    email: fd.get("email"),
    password: fd.get("password"),
  });

  if (!parsed.success) {
    return { errors: parsed.error.flatten().fieldErrors };
  }

  // FastAPI Form(...) ile uyumlu: FormData veya URLSearchParams kullanılabilir
  const res = await fetchClient("/auth/login", {
    method: "POST",
    body: parsed.data,
  });

  if (res.ok) {
    return {
      success: true,
      redirect: "/",
      message: "Giriş başarılı. Yönlendiriliyorsunuz...",
    };
  }

  if (res.status === 401) {
    return { success: false, message: "E-posta veya şifre hatalı" };
  }
  if (res.status === 403 && res.error?.code === "EMAIL_NOT_VERIFIED") {
    return {
      success: false,
      message: res.error?.message || "E-posta doğrulanmamış",
    };
  }

  return {
    success: false,
    message: res.error?.message || "Giriş yapılırken bir hata oluştu",
  };
}

export async function logoutClient(): Promise<{
  success: boolean;
  redirect?: string;
  message?: string;
}> {
  const res = await fetchClient("/auth/logout", { method: "POST" });
  if (res.ok) {
    return {
      success: true,
      redirect: "/login",
      message: "Başarıyla çıkış yapıldı",
    };
  }
  return { success: false, message: "Çıkış yapılırken bir hata oluştu" };
}

export async function signupClient(
  form: HTMLFormElement
): Promise<RegisterState> {
  const fd = new FormData(form);
  const parsed = SignupFormSchema.safeParse({
    name: fd.get("name"),
    surname: fd.get("surname"),
    username: fd.get("username"),
    email: fd.get("email"),
    password: fd.get("password"),
    confirmPassword: fd.get("confirmPassword"),
  });

  if (!parsed.success) {
    return { errors: parsed.error.flatten().fieldErrors };
  }

  const res = await fetchClient("/auth/register", {
    method: "POST",
    body: parsed.data,
  });

  // Conflict: email veya username zaten kayıtlı
  if (res.status === 409) {
    return {
      success: false,
      errors: res.error?.errors || {},
    };
  }

  if (res.ok) {
    return {
      success: true,
      redirect: "/login",
      message: "Kayıt başarılı. Lütfen e-mailinizi doğrulayın.",
    };
  }

  return {
    success: false,
    errors: { general: [res.error?.message || "Kayıt işlemi başarısız oldu"] },
  };
}
