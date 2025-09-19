import CategoryHero from "@/app/category/[slugid]/components/hero";
import { notFound, redirect } from "next/navigation";
import SubcategoryHeader from "@/app/category/[slugid]/components/subcategory-header";
import SubcategoryListItem from "./components/subcategory-list-item";
import {
  getCategoryBySlugId,
  getSubcategoriesByCategoryId,
} from "@/services/category";
import { defaultSubcategoryStats } from "@/types/category";
import { getSubcategoryStatsByIds } from "@/services/subcategory";
import { categoryPath } from "@/lib/paths";

export default async function CategoryPage({
  params,
}: {
  params: Promise<{ slugid: string }>;
}) {
  const { slugid } = await params;

  const category = await getCategoryBySlugId(slugid);
  if (!category) {
    notFound();
  }

  const expected = categoryPath(category); // /category/{slug_base}--{public_id}
  if (`/category/${slugid}` !== expected) {
    redirect(expected); // 308 canonical
  }

  const subcategories = await getSubcategoriesByCategoryId(category.id);
  const ids = subcategories.map((c) => c.id);
  const stats = await getSubcategoryStatsByIds(ids);

  // stats'i hızlı erişim için map'e çevir
  const statsMap = new Map(stats.map((s) => [s.subcategoryId, s]));

  return (
    <div>
      <CategoryHero category={category} />
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
        <SubcategoryHeader />

        {/* Subcategories List */}
        <div className="space-y-4">
          {subcategories.map((subcategory) => {
            const stats =
              statsMap.get(subcategory.id) || defaultSubcategoryStats;
            return (
              <SubcategoryListItem
                key={subcategory.id}
                subcategory={subcategory}
                stats={stats}
              />
            );
          })}
        </div>
      </main>
    </div>
  );
}
