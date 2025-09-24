import { z } from "zod";

export const registerSchema = z
  .object({
    name: z.string().min(2, "İsim en az 2 karakter olmalı."),
    surname: z.string().min(2, "Soyisim en az 2 karakter olmalı."),
    username: z.string().min(3).max(20).regex(/^[a-z0-9._-]+$/i, "Geçersiz kullanıcı adı."),
    email: z.email("Geçerli bir e-posta girin."),
    password: z.string().min(8, "Şifre en az 8 karakter olmalı."),
    confirmPassword: z.string(),
    agreeToTerms: z.literal(true, { message: "Şartları kabul etmelisin." }),
  })
  .refine((d) => d.password === d.confirmPassword, {
    path: ["confirmPassword"],
    message: "Şifreler eşleşmiyor.",
  });

export type RegisterInput = z.infer<typeof registerSchema>;

export const LoginFormSchema = z.object({
  email: z.email({ message: "Geçerli bir e-posta girin." }).trim(),
  password: z.string().min(1, { message: "Şifre gereklidir." }).trim(),
});

// Backwards-compatible export for existing imports
export const SignupFormSchema = registerSchema;

