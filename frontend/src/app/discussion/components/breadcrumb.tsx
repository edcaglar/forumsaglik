import { categoryPath, subcategoryPath } from "@/lib/paths";
import { DiscussionDetail } from "@/types/discussion";
import Link from "next/link";

export default function DiscussionBreadcrumb({
  discussion,
}: {
  discussion: DiscussionDetail;
}) {
  return (
    <div className="flex items-center mb-6 text-sm ">
      <Link href="/" className="text-blue-600 hover:text-blue-800">
        Anasayfa
      </Link>
      <span className="mx-2 text-gray-400">/</span>
      <Link
        href={categoryPath(discussion.category)}
        className="text-blue-600 hover:text-blue-800 max-w-[10ch] sm:max-w-[15ch] md:max-w-[30ch] truncate"
      >
        {discussion.category.title}
      </Link>
      <span className="mx-2 text-gray-400">/</span>
      <Link
        href={subcategoryPath(discussion.subcategory)}
        className="text-blue-600 hover:text-blue-800 max-w-[10ch] sm:max-w-[20ch] md:max-w-[40ch] truncate"
      >
        {discussion.subcategory.title}
      </Link>
      <span className="mx-2 text-gray-400">/</span>
      <span className="text-gray-600 block max-w-[10ch] sm:max-w-[15ch] md:max-w-[30ch] truncate">
        {discussion.title}
      </span>
    </div>
  );
}
