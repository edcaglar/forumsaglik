import { Card, CardContent } from "@/components/ui/card";
import { discussionPath } from "@/lib/paths";
import { formatDateTR } from "@/lib/time";
import { DiscussionSearchResult } from "@/types/search";
import Link from "next/link";

export default function DiscussionCard({
  discussion,
}: {
  discussion: DiscussionSearchResult;
}) {
  return (
    <Card className="rounded-2xl border-slate-200/70 dark:border-slate-800/70">
      <CardContent className="p-4 md:p-5">
        <Link
          href={discussionPath(discussion)}
          className="text-base md:text-lg font-semibold hover:underline"
        >
          {discussion.title}
        </Link>
        <div className="mt-1 text-xs md:text-sm text-muted-foreground">
          {discussion.author.username} • {formatDateTR(discussion.createdAt)} •{" "}
        </div>
      </CardContent>
    </Card>
  );
}
