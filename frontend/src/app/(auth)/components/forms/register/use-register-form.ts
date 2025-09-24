"use client";

import { useRouter } from "next/navigation";
import { useState, useTransition } from "react";
import { toast } from "sonner";
import { signupClient } from "@/lib/auth-client";
import type { RegisterFormErrors } from "./types";

export function useRegisterForm() {
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
        toast.error("Devam etmek için Şartlar ve Gizlilik'i kabul etmelisin.");
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

  return {
    // state
    errors,
    isPending,
    showPassword,
    showConfirmPassword,
    agreeToTerms,
    // actions
    setAgreeToTerms,
    setShowPassword,
    setShowConfirmPassword,
    onSubmit,
  } as const;
}
