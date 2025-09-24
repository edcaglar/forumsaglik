"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { loginClient } from "@/lib/auth-client";
import type { LoginFormErrors } from "./types";

export function useLoginForm() {
  const router = useRouter();
  const [showPassword, setShowPassword] = useState(false);
  const [rememberMe, setRememberMe] = useState(false);
  const [errors, setErrors] = useState<LoginFormErrors>({});
  const [isPending, startTransition] = useTransition();

  const onSubmit = (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setErrors({});
    startTransition(async () => {
      const result = await loginClient(e.currentTarget);
      if (result.success && result.redirect) {
        router.replace(result.redirect);
        router.refresh();
        return;
      }
      if (result.errors) setErrors(result.errors);
      else setErrors({ general: [result.message ?? "Giriş başarısız"] });
    });
  };

  return {
    // state
    showPassword,
    rememberMe,
    errors,
    isPending,
    // actions
    setShowPassword,
    setRememberMe,
    onSubmit,
  } as const;
}

