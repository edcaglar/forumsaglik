import { Card, CardContent } from "@/components/ui/card";
import { TabsContent } from "@/components/ui/tabs";
import { Loader2, ThumbsUp } from "lucide-react";
import Link from "next/link";
import { Clock } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { formatTimeAgo } from "@/lib/time";
import { UserReplyItem, UserReplyPage } from "@/types/profile";
import { useEffect, useMemo, useRef, useState, useCallback } from "react";
import { fetchClient } from "@/lib/fetch-client";
import { Button } from "@/components/ui/button";
import { Alert, AlertDescription } from "@/components/ui/alert";

export default function RepliesTab({
  userId,
  pageSize = 10,
  value,
}: {
  userId: number;
  pageSize?: number;
  value?: string;
}) {
  const [items, setItems] = useState<UserReplyItem[]>([]);
  const [nextCursor, setNextCursor] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [err, setErr] = useState<string | null>(null);

  // Scroll sentinel
  const sentinelRef = useRef<HTMLDivElement | null>(null);
  const didInitRef = useRef(false);

  // Initial Load
  useEffect(() => {
    let cancelled = false;
    async function loadFirst() {
      setItems([]);
      setNextCursor(null);
      setErr(null);
      setLoading(true);
      didInitRef.current = false;

      // Query
      const qs = new URLSearchParams({ limit: String(pageSize) }).toString();
      const res = await fetchClient(`/users/${userId}/replies?${qs}`, {
        method: "GET",
      });
      if (cancelled) return;
      if (!res.ok) {
        setErr(res.error?.message || "Cevaplar yüklenemedi");
        setLoading(false);
        return;
      }
      const data = res.data as UserReplyPage;
      setItems(data.items ?? []);
      setNextCursor(data.meta?.nextCursor ?? null);
      setLoading(false);
      didInitRef.current = true;
    }
    loadFirst();
    return () => {
      cancelled = true;
    };
  }, [userId, pageSize]);

  // Fetch with cursor
  const loadMore = useCallback(async () => {
    if (loading || !nextCursor) return;
    setLoading(true);
    setErr(null);
    const qs = new URLSearchParams({
      limit: String(pageSize),
      cursor: nextCursor,
    }).toString();
    const res = await fetchClient(`/users/${userId}/replies?${qs}`, {
      method: "GET",
    });
    if (!res.ok) {
      setErr(res.error?.message || "Cevaplar yüklenemedi");
      setLoading(false);
      return;
    }

    const data = res.data as UserReplyPage;
    setItems((prev) => [...prev, ...(data.items ?? [])]);
    setNextCursor(data.meta?.nextCursor ?? null);
    setLoading(false);
  }, [loading, nextCursor, pageSize, userId]);

  // Infinite scroll with IntersectionObserver
  useEffect(() => {
    if (!sentinelRef.current) return;
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting && didInitRef.current) {
            loadMore();
          }
        });
      },
      {
        root: null,
        rootMargin: "0px 0px",
        threshold: 0,
      }
    ); // Start loading a bit before reaching the sentinel
    observer.observe(sentinelRef.current);
    return () => {
      observer.disconnect();
    };
  }, [loadMore]);

  const empty = useMemo(
    () => items.length === 0 && !nextCursor && !loading,
    [items, nextCursor, loading]
  );

  return (
    <TabsContent
      forceMount
      hidden={value !== "replies"}
      value="replies"
      className="space-y-4"
    >
      {err && (
        <Alert variant="destructive" className="mb-4">
          <AlertDescription>{err}</AlertDescription>
        </Alert>
      )}

      {loading && items.length === 0 && (
        <div className="text-sm text-gray-500">Yükleniyor…</div>
      )}
      {empty && (
        <div className="text-sm text-gray-500">Henüz bir aktivite yok.</div>
      )}
      {items.map((reply) => (
        <Card key={reply.id} className="hover:shadow-md transition-shadow">
          <CardContent className="px-6 py-2">
            <div className="mb-3">
              <Link
                href={`/discussion/${reply.discussionId}`}
                className="text-sm text-blue-600 hover:underline whitespace-normal break-words truncate line-clamp-1"
              >
                Reply to: {reply.discussionTitle}
              </Link>
            </div>
            <div className="bg-gray-50 p-4 rounded-lg mb-3">
              <p className="text-gray-700 leading-relaxed whitespace-normal break-words truncate line-clamp-2">
                {reply.content}
              </p>
            </div>
            <div className="flex items-center justify-between text-sm text-gray-500">
              <div className="flex items-center space-x-4">
                <Badge variant="outline">{reply.category}</Badge>
                <span className="flex items-center">
                  <ThumbsUp className="h-4 w-4 mr-1" />
                  {reply.likeCount} likes
                </span>
              </div>
              <span className="flex items-center">
                <Clock className="h-4 w-4 mr-1" />
                {formatTimeAgo(reply.createdAt)}
              </span>
            </div>
          </CardContent>
        </Card>
      ))}
      {/* Sonsuz kaydırma için gözlem noktası + yedek buton */}
      {nextCursor && (
        <div className="flex justify-center mt-4">
          <Button variant="outline" onClick={loadMore} disabled={loading}>
            {loading ? (
              <>
                <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                Yükleniyor…
              </>
            ) : (
              "Daha fazla"
            )}
          </Button>
        </div>
      )}
      <div ref={sentinelRef} className="h-16" />
    </TabsContent>
  );
}
