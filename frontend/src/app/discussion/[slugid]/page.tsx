import Comments from "../components/comments";
import NewCommentForm from "../components/new-comment-form";
import { notFound } from "next/navigation";
import Discussion from "../components/discussion";
import DiscussionBreadcrumb from "../components/breadcrumb";
import {
  getDiscussionBySlugId,
  getRepliesByDiscussionId,
} from "@/services/discussion";
import { cookies } from "next/headers";
import { getUser } from "@/actions/auth-server";

export default async function DiscussionPage({
  params,
}: {
  params: Promise<{ slugid: string }>;
}) {
  const { slugid } = await params;
  const cookieStore = await cookies();
  const hasSession = cookieStore.has("session");

  const currentUser = hasSession ? await getUser() : null;

  const discussion = await getDiscussionBySlugId(slugid);
  if (!discussion) {
    return notFound();
  }

  const replies = await getRepliesByDiscussionId(discussion.id);

  return (
    <main className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <DiscussionBreadcrumb discussion={discussion} />
      <Discussion discussion={discussion} />
      <Comments replies={replies} currentUser={currentUser} />
      {currentUser && <NewCommentForm discussionId={discussion.id} />}
    </main>
  );
}
