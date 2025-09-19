export type UserCore = {
  id: number;
  username: string;
  email: string;
  name: string;
  surname: string;
  avatarUrl?: string;
  bio?: string;
  location?: string;
  website?: string;
  createdAt: string; // ISO date string
};

export type UserStats = {
  discussionCount: number;
  replyCount: number;
};

/** PATCH için gönderilecek alanlar */
export type UpdateUserCoreInput = Partial<
  Pick<
    UserCore,
    | "username"
    | "name"
    | "surname"
    | "bio"
    | "location"
    | "website"
    | "avatarUrl"
  >
>;
