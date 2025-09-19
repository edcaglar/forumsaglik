import NewDiscussionForm from "./components/forms/new-discussion-form";
import SideBar from "./components/sidebar";
import CreateDiscussionHeader from "./components/header";
import { getAllCategoriesWithSubs } from "@/services/category";

export default async function NewDiscussionPage({
  searchParams,
}: {
  searchParams: Promise<{ categoryId?: string; subcategoryId?: string }>;
}) {
  const params = await searchParams;
  const categories = await getAllCategoriesWithSubs(); // DB call with subcategories included

  return (
    <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <CreateDiscussionHeader />
      <div className="grid grid-cols-1 lg:grid-cols-4 gap-6">
        <div className="lg:col-span-3">
          <NewDiscussionForm
            categories={categories}
            initial={{
              categoryId: params?.categoryId ?? "",
              subcategoryId: params?.subcategoryId ?? "",
            }}
          />
        </div>
        <div className="lg:col-span-1">
          <SideBar />
        </div>
      </div>
    </main>
  );
}
