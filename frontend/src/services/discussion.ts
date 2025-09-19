import { fetchServer } from "@/lib/fetch-server";
import { DiscussionDetail } from "@/types/discussion";
import { ReplyDetail } from "@/types/reply";

export async function getDiscussionBySlugId(
  slugid: string
): Promise<DiscussionDetail | null> {
  try {
    const res = await fetchServer(`/discussions/by-slugid/${slugid}`, {
      method: "GET",
      cache: "force-cache",
    });

    if (!res.ok || !res.data) {
      return null;
    }

    return res.data as DiscussionDetail;
  } catch (error) {
    console.error("Failed to fetch discussion:", error);
    return null;
  }
}

export async function getRepliesByDiscussionId(
  id: number
): Promise<ReplyDetail[]> {
  try {
    const res = await fetchServer(`/discussions/${id}/replies`, {
      method: "GET",
      cache: "no-store",
    });

    if (!res.ok || !res.data) {
      return [];
    }

    return res.data as ReplyDetail[];
  } catch (error) {
    console.error("Failed to fetch discussion:", error);
    return [];
  }
}
