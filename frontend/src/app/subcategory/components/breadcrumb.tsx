import Link from "next/link";
import { Button } from "@/components/ui/button";
import { Plus } from "lucide-react";
import { SubcategoryWithCategoryData } from "@/types/category";
import { categoryPath } from "@/lib/paths";

interface BreadCrumbProps {
  subcategory: SubcategoryWithCategoryData;
}

export default function BreadCrumb({ subcategory }: BreadCrumbProps) {
  return (
    <div>
      {/* Breadcrumb */}
      <div className="flex items-center mb-6 text-sm">
        <Link href="/" className="text-blue-600 hover:text-blue-800">
          Anasayfa
        </Link>
        <span className="mx-2 text-gray-400">/</span>
        <Link
          href={categoryPath(subcategory.category)}
          className="text-blue-600 hover:text-blue-800"
        >
          {subcategory.category.title}
        </Link>
        <span className="mx-2 text-gray-400">/</span>
        <span className="text-gray-600">{subcategory.title}</span>
      </div>

      {/* Subcategory Header */}
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-gray-900 mb-2">
          {subcategory.title}
        </h1>
        {subcategory.description && (
          <p className="text-gray-600">{subcategory.description}</p>
        )}
      </div>

      {/* Discussions Header */}
      <div className="flex justify-between items-center mb-6">
        <h2 className="text-xl font-semibold">Discussions</h2>
        <Link
          href={{
            pathname: "/new-discussion",
            query: {
              categoryId: subcategory.category.id,
              subcategoryId: subcategory.id,
            },
          }}
        >
          <Button>
            <Plus className="h-4 w-4 mr-2" />
            Yeni Konu
          </Button>
        </Link>
      </div>
    </div>
  );
}
