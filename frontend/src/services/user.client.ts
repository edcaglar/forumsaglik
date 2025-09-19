"use client";

import { fetchClient } from "@/lib/fetch-client";
import { UpdateUserCoreInput, UserCore } from "@/types/user";

/** Aktif kullanıcının core bilgisini getir (client-side). */
export async function getCurrentUserCoreClient(): Promise<UserCore> {
  const res = await fetchClient("/users/me", {
    method: "GET",
    credentials: "include",
  });
  console.log("res", res);
  if (!res.ok) {
    throw new Error(res.error?.message || "Kullanıcı bilgileri yüklenemedi.");
  }
  return res.data as UserCore; // API doğrudan UserCore döner
}

/** Aktif kullanıcının core bilgisini güncelle (client-side). */
export async function updateCurrentUserCoreClient(
  input: UpdateUserCoreInput
): Promise<UserCore> {
  const res = await fetchClient("/users/me", {
    method: "PATCH",
    body: input,
  });
  if (!res.ok) {
    throw new Error(res.error?.message || "Değişiklikler kaydedilemedi.");
  }
  return res.data as UserCore; // API güncel UserCore döner varsayımı
}
