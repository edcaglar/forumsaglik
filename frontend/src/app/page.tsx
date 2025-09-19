import HeroSection from "@/app/components/hero";
import CategoryListItem from "@/app/components/category-list-item";
import { getCategories, getCategoryStatsByIds } from "@/services/category";
import { defaultCategoryStats } from "@/types/category";

//TODO revalidate 1 gun olabilir

export const revalidate = 300; // 5 minute

export default async function HomePage() {
  const categories = await getCategories({ limit: 30 });
  const ids = categories.map((c) => c.id);
  const stats = await getCategoryStatsByIds(ids);
  // stats'i hızlı erişim için map'e çevir
  const statsMap = new Map(stats.map((s) => [s.categoryId, s]));

  return (
    <>
      <HeroSection />
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        {/* Categories Section */}
        <section id="categories">
          <div className="flex items-center justify-between mb-8">
            <div>
              <h2 className="text-3xl font-bold text-gray-900 mb-2">
                Kategoriler
              </h2>
              <p className="text-gray-600">Bir kategori seçin</p>
            </div>
          </div>
          <div className="space-y-4">
            {categories.map((category) => {
              const stats = statsMap.get(category.id) || defaultCategoryStats;
              return (
                <CategoryListItem
                  key={category.id}
                  category={category}
                  stats={stats}
                />
              );
            })}
          </div>
        </section>
      </main>
    </>
  );
}
