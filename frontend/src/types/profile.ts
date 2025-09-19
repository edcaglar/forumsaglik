export type ActivityKind = "discussion" | "reply";

export interface ActivityItem {
  kind: ActivityKind;
  itemId: number;
  ts: string; // ISO string (backend datetime)
  title: string; // discussion title veya reply snippet
  discussionId?: number | null;
}

export interface ActivityPage {
  items: ActivityItem[];
  meta: { nextCursor?: string | null };
}

export interface UserDiscussionItem {
  id: number;
  title: string;
  excerpt: string;
  category: string;
  replyCount: number;
  viewCount: number;
  createdAt: string; // date
}

export interface UserDiscussionPage {
  items: UserDiscussionItem[];
  meta: { nextCursor?: string | null };
}

export interface UserReplyItem {
  id: number;
  content: string;
  discussionId: number;
  discussionTitle: string;
  category: string;
  createdAt: string; // date
  likeCount: number;
}

export interface UserReplyPage {
  items: UserReplyItem[];
  meta: { nextCursor?: string | null };
}
