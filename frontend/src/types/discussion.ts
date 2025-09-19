export type DiscussionListItem = {
  id: number;
  title: string;
  slug: string;
  publicId: string;
  url: string;
  isPinned: boolean;
  isLocked: boolean;
  createdAt: string;
  replyCount: number;
  viewCount: number;
  lastReplyAt: string;
  author: {
    id: number;
    username: string;
    avatarUrl?: string | null;
  };
  updatedAt: string;
};

export type DiscussionDetail = DiscussionListItem & {
  content: string;
  category: {
    slug: string;
    publicId: string;
    url: string;
    title: string;
  };
  subcategory: {
    slug: string;
    publicId: string;
    url: string;
    title: string;
  };
};
