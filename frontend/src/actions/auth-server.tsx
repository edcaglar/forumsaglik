"use server";

import { unstable_noStore as noStore } from "next/cache";
import { fetchServer } from "@/lib/fetch-server";
import { type SessionUser, type VerifySessionDTO } from "@/types/auth";

/** verify-session SSR: cookie’yi server’da forward ediyoruz */
export async function getUser(): Promise<SessionUser | null> {
  noStore(); // user-spesifik veride cache kapat
  const res = await fetchServer("/auth/verify-session", { method: "GET" });

  if (!res.ok || !res.data) return null;

  const user = res.data as VerifySessionDTO;
  return {
    id: user.id,
    role: user.role,
    username: user.username,
    name: user.name,
  };
}
