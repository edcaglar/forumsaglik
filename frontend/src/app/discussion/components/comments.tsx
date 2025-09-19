import { Card, CardContent } from "@/components/ui/card";
import { Avatar, AvatarImage, AvatarFallback } from "@/components/ui/avatar";
import { MessageSquare } from "lucide-react";
import { CommentActions } from "./comment-actions";
import { ReplyDetail } from "@/types/reply";
import { SessionUser } from "@/types/auth";
import { formatDateTR } from "@/lib/time";

// Server Component olduğu için 'use client' direktifini kaldırıyoruz
export default async function Comments({
  replies,
  currentUser,
}: {
  replies: ReplyDetail[];
  currentUser?: SessionUser | null;
}) {
  return (
    <div className="space-y-4 mb-8">
      <h2 className="text-xl font-semibold flex items-center">
        <MessageSquare className="h-5 w-5 mr-2" />
        {replies.length} Comments
      </h2>
      {replies.map((reply) => (
        <Card key={reply.id}>
          <CardContent className="p-6">
            <div className="flex items-start space-x-4">
              <Avatar className="h-8 w-8">
                <AvatarImage
                  src={reply.author.avatarUrl || "/placeholder.svg"}
                  alt={reply.author.username}
                />
                <AvatarFallback>
                  {reply.author.username.slice(0, 2).toUpperCase()}
                </AvatarFallback>
              </Avatar>
              <div className="flex-1 min-w-0">
                <div className="flex items-center space-x-2 mb-2">
                  <span className="font-medium text-gray-900">
                    {reply.author.username}
                  </span>
                  <span className="text-sm text-gray-500">
                    {formatDateTR(reply.createdAt)}
                  </span>
                </div>
                <p className="text-gray-700 mb-3 truncate whitespace-normal break-words">
                  {reply.content}
                </p>
                {currentUser && <CommentActions reply={reply} />}
              </div>
            </div>
          </CardContent>
        </Card>
      ))}
    </div>
  );
}
