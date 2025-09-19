// src/services/categories.ts
import { fetchServer } from "@/lib/fetch-server";
import {
  Category,
  CategoryOption,
  CategoryStats,
  Subcategory,
} from "@/types/category";

export async function getCategories(opts?: {
  skip?: number;
  limit?: number;
}): Promise<Category[]> {
  //Url params
  const skip = String(opts?.skip ?? 0);
  const limit = String(opts?.limit ?? 30);
  const qs = new URLSearchParams({ skip, limit }).toString();

  const res = await fetchServer(`/categories?${qs}`, {
    method: "GET",
    cache: "force-cache",
  });
  if (!res.ok || !res.data) return [];
  return res.data as Category[];
}

export async function getCategoryStatsByIds(
  ids: number[]
): Promise<CategoryStats[]> {
  if (!ids.length) return [];
  const params = new URLSearchParams();
  ids.forEach((id) => params.append("ids", String(id)));

  const res = await fetchServer(`/categories/stats/?${params.toString()}`, {
    method: "GET",
    cache: "no-store", // stats her istekte taze
  });

  if (!res.ok || !res.data) return [];
  return res.data as CategoryStats[];
}

export async function getCategoryBySlugId(
  slugid: string
): Promise<Category | null> {
  try {
    const res = await fetchServer(`/categories/by-slugid/${slugid}`, {
      method: "GET",
      cache: "force-cache", // Category data can be cached
    });

    if (!res.ok || !res.data) {
      return null;
    }

    return res.data as Category;
  } catch (error) {
    console.error("Failed to fetch category:", error);
    return null;
  }
}

export async function getSubcategoriesByCategoryId(
  categoryId: number,
  opts?: { skip?: number; limit?: number }
): Promise<Subcategory[]> {
  if (!categoryId) return [];

  const skip = String(opts?.skip ?? 0);
  const limit = String(opts?.limit ?? 30);
  const qs = new URLSearchParams({ skip, limit }).toString();

  try {
    const res = await fetchServer(
      `/categories/${categoryId}/subcategories?${qs}`,
      {
        method: "GET",
        cache: "force-cache", // subcategories değişmiyorsa cache kullanabilirsiniz
      }
    );

    if (!res.ok || !res.data) return [];
    return res.data as Subcategory[];
  } catch (error) {
    console.error("Failed to fetch subcategories:", error);
    return [];
  }
}

export async function getAllCategoriesWithSubs(): Promise<CategoryOption[]> {
  try {
    const res = await fetchServer(`/categories/all-with-subcategories`, {
      method: "GET",
      cache: "force-cache",
      next: { revalidate: 3600 },
    });

    if (!res.ok || !res.data) return [];
    return res.data as CategoryOption[];
  } catch (error) {
    console.error("Failed to fetch subcategories:", error);
    return [];
  }
}
