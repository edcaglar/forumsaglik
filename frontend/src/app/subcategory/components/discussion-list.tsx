import Link from "next/link";
import { Card, CardContent } from "@/components/ui/card";
import { Avatar, AvatarImage, AvatarFallback } from "@/components/ui/avatar";
import { Badge } from "@/components/ui/badge";
import { MessageSquare, Eye, Clock } from "lucide-react";
import { DiscussionListItem } from "@/types/discussion";
import { formatDateTR, formatTimeAgo } from "@/lib/time";
import { discussionPath } from "@/lib/paths";

interface DiscussionListProps {
  discussions: DiscussionListItem[];
}

export default function DiscussionList({ discussions }: DiscussionListProps) {
  return (
    <div className="space-y-4">
      {discussions.map((discussion) => (
        <Link key={discussion.id} href={discussionPath(discussion)}>
          <Card className="hover:shadow-md transition-shadow cursor-pointer">
            <CardContent className="px-6">
              <div className="grid grid-cols-12 gap-4">
                <div className="col-span-1 flex items-center">
                  <Avatar className="h-8 w-8">
                    <AvatarImage
                      src={discussion.author.avatarUrl || "/placeholder.svg"}
                      alt={discussion.author.username}
                    />
                    <AvatarFallback>
                      {discussion.author.username.slice(0, 2).toUpperCase()}
                    </AvatarFallback>
                  </Avatar>
                </div>

                <div className="col-span-8 min-w-0">
                  <div className="flex items-center space-x-2 mb-1">
                    {discussion.isPinned && (
                      <Badge variant="secondary" className="text-xs">
                        Sabitlenmiş
                      </Badge>
                    )}
                    {discussion.isLocked && (
                      <Badge variant="outline" className="text-xs">
                        Kilitli
                      </Badge>
                    )}
                  </div>

                  <h3 className="text-lg font-medium text-gray-900 mb-1 truncate">
                    {discussion.title}
                  </h3>

                  <div className="flex items-center text-sm text-gray-500 space-x-2 truncate">
                    <span>by {discussion.author.username}</span>
                    <div className="flex items-center">
                      <Clock className="h-4 w-4 mr-1" />
                      {formatDateTR(discussion.createdAt)}
                    </div>
                  </div>
                </div>

                <div className="col-span-3 flex items-center justify-end space-x-6 text-sm text-gray-500">
                  <div className="flex items-center">
                    <MessageSquare className="h-4 w-4 mr-1" />
                    {discussion.replyCount}
                  </div>
                  <div className="flex items-center">
                    <Eye className="h-4 w-4 mr-1" />
                    {discussion.viewCount}
                  </div>
                  <div className="text-right">
                    <div className="text-xs">Son yanıt</div>
                    <div>{formatTimeAgo(discussion.lastReplyAt)}</div>
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        </Link>
      ))}
    </div>
  );
}
