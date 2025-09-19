import { fetchServer } from "@/lib/fetch-server";
import {
  SubcategoryStats,
  SubcategoryWithCategoryData,
} from "@/types/category";
import { DiscussionListItem } from "@/types/discussion";

export async function getSubcategoryInfoBySlugId(
  slug: string
): Promise<SubcategoryWithCategoryData | null> {
  try {
    const res = await fetchServer(`/subcategories/by-slugid/${slug}`, {
      method: "GET",
      cache: "force-cache", // Category data can be cached
    });

    if (!res.ok || !res.data) {
      return null;
    }

    return res.data as SubcategoryWithCategoryData;
  } catch (error) {
    console.error("Failed to fetch category:", error);
    return null;
  }
}

export async function getDiscussionsBySubcategoryId(
  id: number
): Promise<DiscussionListItem[]> {
  if (!id) return [];
  try {
    const params = new URLSearchParams();
    params.append("subcategory_id", String(id));
    const res = await fetchServer(`/discussions?${params.toString()}`, {
      method: "GET",
      cache: "no-store",
    });

    if (!res.ok || !res.data) {
      return [];
    }

    return res.data as DiscussionListItem[];
  } catch (error) {
    console.error("Failed to fetch category:", error);
    return [];
  }
}

// Stats
export async function getSubcategoryStatsByIds(
  ids: number[]
): Promise<SubcategoryStats[]> {
  if (!ids.length) return [];
  const params = new URLSearchParams();
  ids.forEach((id) => params.append("ids", String(id)));

  const res = await fetchServer(`/subcategories/stats/?${params.toString()}`, {
    method: "GET",
    cache: "no-store", // stats her istekte taze
  });

  if (!res.ok || !res.data) return [];
  return res.data as SubcategoryStats[];
}
