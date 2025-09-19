import { fetchClient } from "@/lib/fetch-client";
import {
  DiscussionSearchResult,
  ReplySearchResult,
  SearchResult,
} from "@/types/search";

export async function get_search_results(
  query: string,
  type: string,
  cursor: string | null
): Promise<SearchResult<DiscussionSearchResult | ReplySearchResult>> {
  const qs = new URLSearchParams();
  qs.set("q", query);
  qs.set("type", type);
  if (cursor) qs.set("cursor", cursor);

  try {
    const res = await fetchClient("/search?" + qs.toString(), {
      method: "GET",
      credentials: "include",
    });

    if (!res.ok || !res.data) {
      return { items: [], meta: { nextCursor: null } };
    }
    return res.data as SearchResult<DiscussionSearchResult | ReplySearchResult>;
  } catch (error) {
    console.error("Search fetch error:", error);
    return { items: [], meta: { nextCursor: null } };
  }
}
