export type ReplyDetail = {
  id: number;
  content: string;
  discussionId: number;
  likeCount: number;
  isLiked: boolean;
  author: {
    id: number;
    username: string;
    avatarUrl?: string;
  };
  createdAt: string; // ISO date string
  updatedAt: string; // ISO date string
};
