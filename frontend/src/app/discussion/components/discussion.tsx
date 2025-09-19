import { Card, CardHeader, CardContent } from "@/components/ui/card";
import { Avatar, AvatarImage, AvatarFallback } from "@/components/ui/avatar";
import { Eye } from "lucide-react";
import { DiscussionDetail } from "@/types/discussion";
import { formatDateTR } from "@/lib/time";

export interface DiscussionProps {
  discussion: DiscussionDetail;
}

export default function Discussion({ discussion }: DiscussionProps) {
  return (
    <Card className="mb-6">
      <CardHeader>
        <div className="flex items-start space-x-4">
          <Avatar className="h-12 w-12">
            <AvatarImage
              src={discussion.author.avatarUrl || "/placeholder.svg"}
              alt={discussion.author.username}
            />
            <AvatarFallback>
              {discussion.author.username.slice(0, 2).toUpperCase()}
            </AvatarFallback>
          </Avatar>
          <div className="flex-1 min-w-0">
            <h1 className="text-2xl font-bold text-gray-900 mb-2">
              {discussion.title}
            </h1>
            <div className="flex items-center space-x-4 text-sm text-gray-500">
              <span>by {discussion.author.username}</span>
              <span>{formatDateTR(discussion.createdAt)}</span>
              <div className="flex items-center">
                <Eye className="h-4 w-4 mr-1" />
                {discussion.viewCount} görüntülenme
              </div>
            </div>
          </div>
        </div>
      </CardHeader>
      <CardContent>
        <div className="prose max-w-none mb-4">
          <p className="text-gray-700 leading-relaxed whitespace-normal break-words">
            {discussion.content}
          </p>
        </div>
      </CardContent>
    </Card>
  );
}
