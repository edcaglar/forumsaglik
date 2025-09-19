import Link from "next/link";
import {
  Card,
  CardContent,
  CardDescription,
  CardTitle,
} from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import {
  Users,
  MessageSquare,
  Clock,
  ArrowRight,
  HelpCircle,
  LucideIcon,
} from "lucide-react";
import * as icons from "lucide-react";

import { formatTimeAgo } from "@/lib/time";
import { Category, CategoryStats } from "@/types/category";
import { categoryPath } from "@/lib/paths";

interface CategoryListItemProps {
  category: Category;
  stats: CategoryStats;
}

export default function CategoryListItem({
  category,
  stats,
}: CategoryListItemProps) {
  const IconComponent =
    (icons[category.icon as keyof typeof icons] as LucideIcon) || HelpCircle;

  return (
    <Link href={categoryPath(category)}>
      <Card className="hover:shadow-xl transition-all duration-300 hover:-translate-y-1 cursor-pointer group border-l-4 border-l-transparent hover:border-l-blue-500">
        <CardContent className="px-6">
          <div className="flex items-center space-x-6">
            {/* Category Icon and Info */}
            <div className="flex items-center space-x-4 flex-1">
              <div className="relative">
                <IconComponent size={32} className="text-gray-600" />
                {/* <div className="text-4xl">{category.icon}</div> */}
                {stats.isPopular && (
                  <div className="absolute -top-1 -right-1 w-3 h-3 bg-orange-500 rounded-full animate-pulse" />
                )}
              </div>
              <div className="flex-1">
                <div className="flex items-center space-x-3 mb-2">
                  <CardTitle className="text-2xl group-hover:text-blue-600 transition-colors">
                    {category.title}
                  </CardTitle>
                  {stats.isPopular && (
                    <Badge className="bg-orange-100 text-orange-800">
                      Popüler
                    </Badge>
                  )}
                </div>
                <CardDescription className="text-base leading-relaxed text-gray-600">
                  {category.description}
                </CardDescription>
              </div>
            </div>

            {/* Stats Section */}
            <div className="hidden md:flex items-center space-x-8 text-sm text-gray-500">
              <div className="text-center">
                <div className="flex items-center justify-center mb-1">
                  <Users className="h-4 w-4 mr-1" />
                </div>
                <div className="font-semibold text-lg text-gray-900">
                  {stats.memberCount.toLocaleString()}
                </div>
                <div className="text-xs">Kullanıcı</div>
              </div>
              <div className="text-center">
                <div className="flex items-center justify-center mb-1">
                  <MessageSquare className="h-4 w-4 mr-1" />
                </div>
                <div className="font-semibold text-lg text-gray-900">
                  {stats.discussionCount}
                </div>
                <div className="text-xs">Konu</div>
              </div>
              <div className="text-center">
                <div className="flex items-center justify-center mb-1">
                  <Clock className="h-4 w-4 mr-1" />
                </div>
                <div className="font-semibold text-sm text-gray-900">
                  {formatTimeAgo(stats.lastActivity) || "-"}
                </div>
                <div className="text-xs">Son Mesaj</div>
              </div>
            </div>

            {/* Mobile Stats */}
            <div className="md:hidden flex flex-col items-end space-y-1 text-xs text-gray-500">
              <div className="flex items-center">
                <Users className="h-3 w-3 mr-1" />
                {stats.memberCount.toLocaleString()}
              </div>
              <div className="flex items-center">
                <MessageSquare className="h-3 w-3 mr-1" />
                {stats.discussionCount}
              </div>
              <div className="flex items-center">
                <Clock className="h-3 w-3 mr-1" />
                {stats.lastActivity}
              </div>
            </div>

            {/* Arrow Indicator */}
            <div className="flex items-center">
              <ArrowRight className="h-5 w-5 text-gray-400 group-hover:text-blue-600 group-hover:translate-x-1 transition-all" />
            </div>
          </div>

          {/* Category Color Bar */}
          <div
            className={`h-1 w-full ${category.color} rounded-full mt-4 opacity-20 group-hover:opacity-40 transition-opacity`}
          />
        </CardContent>
      </Card>
    </Link>
  );
}
