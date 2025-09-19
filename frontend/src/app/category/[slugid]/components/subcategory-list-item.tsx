import Link from "next/link";
import {
  Card,
  CardContent,
  CardDescription,
  CardTitle,
} from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { MessageSquare, TrendingUp, ArrowRight, Clock } from "lucide-react";
import { Subcategory, SubcategoryStats } from "@/types/category";
import { formatTimeAgo } from "@/lib/time";
import { subcategoryPath } from "@/lib/paths";

interface SubcategoryListItemProps {
  subcategory: Subcategory;
  stats: SubcategoryStats;
}

export default function SubcategoryListItem({
  subcategory,
  stats,
}: SubcategoryListItemProps) {
  return (
    <Link href={subcategoryPath(subcategory)}>
      <Card className="hover:shadow-xl transition-all duration-300 hover:-translate-y-1 cursor-pointer group border-l-4 border-l-transparent hover:border-l-purple-500">
        <CardContent className="px-6">
          <div className="flex items-center justify-between">
            <div className="flex items-center space-x-4 flex-1">
              <div className="w-12 h-12 bg-gradient-to-br from-blue-100 to-purple-100 rounded-lg flex items-center justify-center">
                <MessageSquare className="h-6 w-6 text-blue-600" />
              </div>
              <div className="flex-1">
                <div className="flex items-center space-x-3 mb-2">
                  <CardTitle className="text-xl group-hover:text-blue-600 transition-colors">
                    {subcategory.title}
                  </CardTitle>
                  {stats.isPopular && (
                    <Badge className="bg-orange-100 text-orange-800 flex items-center">
                      <TrendingUp className="h-3 w-3 mr-1" />
                      Popüler
                    </Badge>
                  )}
                </div>
                <CardDescription className="text-base leading-relaxed">
                  {subcategory.description}
                </CardDescription>
              </div>
            </div>

            <div className="flex items-center space-x-6 text-sm text-gray-500">
              <div className="hidden sm:block text-center">
                <div className="font-semibold text-lg text-gray-900">
                  {stats.discussionCount}
                </div>
                <div className="text-xs">Konu</div>
              </div>
              <div className="text-center">
                <div className="flex items-center justify-center mb-1">
                  <Clock className="h-3 w-3 mr-1" />
                </div>
                <div className="font-semibold text-sm text-gray-900">
                  {formatTimeAgo(stats.lastActivity) || "-"}
                </div>
                <div className="text-xs">Son Konu</div>
              </div>
              <ArrowRight className="h-5 w-5 text-gray-400 group-hover:text-blue-600 group-hover:translate-x-1 transition-all" />
            </div>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
}
