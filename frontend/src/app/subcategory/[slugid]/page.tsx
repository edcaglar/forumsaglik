import { notFound } from "next/navigation";
import BreadCrumb from "../components/breadcrumb";
import DiscussionList from "../components/discussion-list";
import {
  getDiscussionsBySubcategoryId,
  getSubcategoryInfoBySlugId,
} from "@/services/subcategory";

export default async function SubCategoryPage({
  params,
}: {
  params: Promise<{ slugid: string }>;
}) {
  const { slugid } = await params;
  const subcategory = await getSubcategoryInfoBySlugId(slugid);

  if (!subcategory) {
    notFound();
  }
  const discussions = await getDiscussionsBySubcategoryId(subcategory.id);

  return (
    <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <div className="min-h-screen bg-gradient-to-br from-gray-50 to-gray-100">
        <BreadCrumb subcategory={subcategory} />
        <DiscussionList discussions={discussions} />
      </div>
    </main>
  );
}
