import { fetchServer } from "@/lib/fetch-server";
import { ActivityPage } from "@/types/profile";

export async function getUserActivityServer(
  userId: number,
  limit = 20,
  cursor?: string
): Promise<ActivityPage> {
  const qs = new URLSearchParams({ limit: String(limit) });
  if (cursor) qs.set("cursor", cursor);

  const res = await fetchServer(`/users/${userId}/activity?${qs.toString()}`, {
    method: "GET",
    cache: "no-store", // auth'lu ve kullanıcıya özel: cache yok
  });

  if (!res.ok || !res.data) {
    return { items: [], meta: { nextCursor: null } };
  }
  return res.data as ActivityPage;
}
