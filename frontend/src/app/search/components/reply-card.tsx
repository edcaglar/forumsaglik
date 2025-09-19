import { Card, CardContent } from "@/components/ui/card";
import { discussionPath } from "@/lib/paths";
import { formatDateTR } from "@/lib/time";
import { ReplySearchResult } from "@/types/search";
import Link from "next/link";

export default function ReplyCard({ reply }: { reply: ReplySearchResult }) {
  return (
    <Card className="rounded-2xl border-slate-200/70 dark:border-slate-800/70">
      <CardContent className="p-4 md:p-5">
        <p className="text-sm md:text-base line-clamp-3">{reply.content}</p>
        <div className="mt-2 text-xs md:text-sm text-muted-foreground">
          {reply.author.username} •{" "}
          {reply.createdAt ? formatDateTR(reply.createdAt) : ""} •{" "}
          <Link
            href={discussionPath(reply.discussion)}
            className="underline hover:no-underline"
          >
            {reply.discussion.title}
          </Link>
        </div>
      </CardContent>
    </Card>
  );
}
