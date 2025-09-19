import Link from "next/link";
import { ArrowLeft } from "lucide-react";

export default function CreateDiscussionHeader() {
  return (
    <div className="flex items-center justify-between mb-8">
      <div className="flex items-center space-x-4">
        <Link
          href="/"
          className="flex items-center text-gray-600 hover:text-gray-900 transition-colors"
        >
          <ArrowLeft className="h-4 w-4 mr-2" />
          Foruma Geri Dön
        </Link>
        <div className="h-6 w-px bg-gray-300" />
        <h1 className="text-2xl font-bold text-gray-900">Yeni Konu Oluştur</h1>
      </div>
    </div>
  );
}
