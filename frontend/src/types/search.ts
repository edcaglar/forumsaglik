// Backend Pydantic şemalarıyla birebir uyumlu tipler

export type ResultType = "discussions" | "replies";

export interface AuthorOut {
  id: number;
  username: string;
}

export interface DiscussionRefOut {
  id: number;
  title: string;
  slug: string;
  publicId: string;
}

export interface DiscussionSearchResult {
  id: number;
  title: string;
  author: AuthorOut;
  createdAt: string; // ISO datetime (backend: datetime)
  replyCount: number; // backend'deki isimle aynı
  slug: string;
  publicId: string;
}

export interface ReplySearchResult {
  id: number;
  content: string;
  author: AuthorOut;
  discussion: DiscussionRefOut;
  createdAt?: string | null; // backend: Optional[datetime]
}

export interface SearchResult<T> {
  items: T[];
  meta: { nextCursor: string | null };
}
