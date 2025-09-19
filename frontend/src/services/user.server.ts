import { fetchServer } from "@/lib/fetch-server";
import { UserCore, UserStats } from "@/types/user";

export async function getUserCore(username: string): Promise<UserCore | null> {
  if (!username) return null;
  const url = `/users/${encodeURIComponent(username)}/core`;

  try {
    const res = await fetchServer(url, {
      method: "GET",
      cache: "no-store",
    });

    if (!res.ok || !res.data) return null;
    return res.data as UserCore;
  } catch (error) {
    console.error("Failed to fetch user core:", error);
    return null;
  }
}

export async function getUserStats(
  username: string
): Promise<UserStats | null> {
  if (!username) return null;
  const url = `/users/${encodeURIComponent(username)}/stats`;

  try {
    const res = await fetchServer(url, {
      method: "GET",
      cache: "no-store",
    });

    if (!res.ok || !res.data) return null;
    return res.data as UserStats;
  } catch (error) {
    console.error("Failed to fetch user stats:", error);
    return null;
  }
}
