import Link from "next/link";
import { ArrowLeft } from "lucide-react";
import { HelpCircle } from "lucide-react";
import * as icons from "lucide-react";
import { LucideIcon } from "lucide-react";
import { Category } from "@/types/category";

interface CategoryHeroProps {
  category: Category;
}

export default function CategoryHero({ category }: CategoryHeroProps) {
  const IconComponent =
    (icons[category.icon as keyof typeof icons] as LucideIcon) || HelpCircle;

  return (
    <section className={`bg-gradient-to-r ${category.color}`}>
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
        <div className="flex items-center mb-4">
          <Link
            href="/"
            className="flex items-center hover:text-gray-500 transition-colors"
          >
            <ArrowLeft className="h-4 w-4 mr-2" />
            Kategorilere Geri Dön
          </Link>
        </div>

        <div className="flex items-center space-x-4 mb-4">
          <IconComponent size={32} className="text-gray-600" />
          <div>
            <h1 className="text-4xl font-bold mb-2">{category.title}</h1>
            <p className="text-xl">{category.description}</p>
          </div>
        </div>
      </div>
    </section>
  );
}
