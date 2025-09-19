import { Card, CardContent } from "@/components/ui/card";
import { TabsContent } from "@/components/ui/tabs";
import { MessageSquare, Loader2 } from "lucide-react";
import { Button } from "@/components/ui/button";
import Link from "next/link";
import { Eye, Clock } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { useEffect, useMemo, useRef, useState } from "react";
import { formatTimeAgo } from "@/lib/time";
import { UserDiscussionItem, UserDiscussionPage } from "@/types/profile";
import { fetchClient } from "@/lib/fetch-client";
import { Alert, AlertDescription } from "@/components/ui/alert";

export default function DiscussionsTab({
  userId,
  pageSize = 10,
  value,
}: {
  userId: number;
  pageSize?: number;
  value: string;
}) {
  const [items, setItems] = useState<UserDiscussionItem[]>([]);
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
      const qs = new URLSearchParams({ limit: String(10) }).toString();
      const res = await fetchClient(`/users/${userId}/discussions?${qs}`, {
        method: "GET",
      });
      if (cancelled) return;
      if (!res.ok) {
        setErr(res.error?.message || "Konular yüklenemedi");
        setLoading(false);
        return;
      }
      const data = res.data as UserDiscussionPage;
      setItems(data.items ?? []);
      setNextCursor(data.meta?.nextCursor ?? null);
      setLoading(false);
      didInitRef.current = true;
    }
    loadFirst();
    return () => {
      cancelled = true;
    };
  }, [userId]);

  // Fetch with cursor
  async function loadMore() {
    if (loading || !nextCursor) return;
    setLoading(true);
    setErr(null);
    const qs = new URLSearchParams({
      limit: String(pageSize),
      cursor: nextCursor,
    }).toString();
    const res = await fetchClient(`/users/${userId}/discussions?${qs}`, {
      method: "GET",
    });
    if (!res.ok) {
      setErr(res.error?.message || "Konular yüklenemedi");
      setLoading(false);
      return;
    }

    const data = res.data as UserDiscussionPage;
    setItems((prev) => [...prev, ...(data.items ?? [])]);
    setNextCursor(data.meta?.nextCursor ?? null);
    setLoading(false);
  }

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
  }, [nextCursor, loading]);

  const empty = useMemo(
    () => items.length === 0 && !nextCursor && !loading,
    [items, nextCursor, loading]
  );

  return (
    <TabsContent
      forceMount
      hidden={value !== "discussions"}
      value="discussions"
      className="space-y-4"
    >
      {empty && (
        <div className="text-sm text-gray-500">Henüz bir aktivite yok.</div>
      )}
      {items.map((item) => (
        <Card key={item.id} className="hover:shadow-md transition-shadow">
          <CardContent className="px-6 py-2">
            {err && (
              <Alert variant="destructive" className="mb-4">
                <AlertDescription>{err}</AlertDescription>
              </Alert>
            )}

            {loading && items.length === 0 && (
              <div className="text-sm text-gray-500">Yükleniyor…</div>
            )}

            <div className="flex items-start justify-between">
              <div className="flex-1 min-w-0">
                <Link href={`/discussion/${item.id}`} className="block">
                  <h3
                    className="text-lg font-semibold text-gray-900 mb-2 
                              hover:text-blue-600 transition-colors 
                              whitespace-normal break-words truncate line-clamp-2"
                  >
                    {item.title}
                  </h3>
                </Link>
                <p className="text-gray-600 mb-3 whitespace-normal break-words truncate line-clamp-2">
                  {item.excerpt}
                </p>
                <div className="flex items-center space-x-4 text-sm text-gray-500">
                  <Badge variant="outline">{item.category}</Badge>
                  <span className="flex items-center">
                    <MessageSquare className="h-4 w-4 mr-1" />
                    {item.replyCount} replies
                  </span>
                  <span className="flex items-center">
                    <Eye className="h-4 w-4 mr-1" />
                    {item.viewCount} views
                  </span>
                  <span className="flex items-center">
                    <Clock className="h-4 w-4 mr-1" />
                    {formatTimeAgo(item.createdAt)}
                  </span>
                </div>
              </div>
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
