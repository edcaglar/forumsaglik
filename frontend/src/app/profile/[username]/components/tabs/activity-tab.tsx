"use client";
import { Card, CardHeader, CardContent, CardTitle } from "@/components/ui/card";
import { TabsContent } from "@/components/ui/tabs";
import { MessageSquare, Loader2, MessageCircle } from "lucide-react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useEffect, useMemo, useRef, useState } from "react";
import { ActivityItem, ActivityPage } from "@/types/profile";
import { fetchClient } from "@/lib/fetch-client";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Button } from "@/components/ui/button";
import { formatTimeAgo } from "@/lib/time";

export default function ActivityTab({
  userId,
  pageSize = 10,
  value,
}: {
  userId: number;
  pageSize?: number;
  value: string;
}) {
  const [items, setItems] = useState<ActivityItem[]>([]);
  const [nextCursor, setNextCursor] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const sentinelRef = useRef<HTMLDivElement | null>(null);
  const didInitRef = useRef(false);

  // Inital Load
  useEffect(() => {
    let cancelled = false;
    async function loadFirst() {
      setItems([]);
      setNextCursor(null);
      setErr(null);
      didInitRef.current = false;

      setLoading(true);
      const qs = new URLSearchParams({ limit: String(pageSize) }).toString();
      const res = await fetchClient(`/users/${userId}/activity?${qs}`, {
        method: "GET",
      });
      if (cancelled) return;

      if (!res.ok) {
        setErr(res.error?.message || "Aktivite yüklenemedi");
        setLoading(false);
        return;
      }

      const data = res.data as ActivityPage;
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

  // Cursor ile devamını yükle
  async function loadMore() {
    if (loading || !nextCursor) return;
    setLoading(true);
    setErr(null);

    const qs = new URLSearchParams({
      limit: String(pageSize),
      cursor: nextCursor,
    }).toString();
    const res = await fetchClient(`/users/${userId}/activity?${qs}`, {
      method: "GET",
    });

    if (!res.ok) {
      setErr(res.error?.message || "Devamı yüklenemedi");
      setLoading(false);
      return;
    }

    const data = res.data as ActivityPage;
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
      value="activity"
      hidden={value !== "activity"}
      className="space-y-4"
    >
      <Card>
        <CardHeader>
          <CardTitle>Activity Timeline</CardTitle>
        </CardHeader>
        <CardContent>
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

          <div className="space-y-4">
            {items.map((a) => {
              const when = formatTimeAgo(a.ts);
              const href =
                a.kind === "discussion"
                  ? `/discussion/${a.itemId}`
                  : `/discussion/${a.discussionId ?? ""}#reply-${a.itemId}`;

              return (
                <div
                  key={`${a.kind}-${a.itemId}`}
                  className="flex items-start space-x-3 pb-4 border-b border-gray-200 last:border-b-0"
                >
                  <div
                    className={`w-8 h-8 rounded-full flex items-center justify-center ${
                      a.kind === "discussion" ? "bg-blue-100" : "bg-green-100"
                    }`}
                  >
                    {a.kind === "discussion" ? (
                      <MessageSquare className="h-4 w-4 text-blue-600" />
                    ) : (
                      <MessageCircle className="h-4 w-4 text-green-600" />
                    )}
                  </div>
                  <div className="flex-1 min-w-0">
                    {a.kind === "discussion" ? (
                      <span className="text-sm text-gray-700">
                        Started a new discussion
                      </span>
                    ) : (
                      <span className="text-sm text-gray-700">
                        Replied to a discussion
                      </span>
                    )}
                    <br />
                    <Link
                      href={href}
                      className="text-gray-900 hover:underline 
                      whitespace-normal break-words truncate line-clamp-2"
                      title={a.title || "(başlık yok)"}
                    >
                      {a.title || "(başlık yok)"}
                    </Link>
                    <p className="text-sm text-gray-500 mt-1">{when}</p>
                  </div>
                </div>
              );
            })}
          </div>
        </CardContent>
      </Card>
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
