"use client";

import { Button } from "@/components/ui/button";
import { ThumbsUp } from "lucide-react";
import { useState } from "react";
import { ReplyDetail } from "@/types/reply";
import { fetchClient } from "@/lib/fetch-client";
import { motion } from "framer-motion";

interface CommentActionsProps {
  reply: ReplyDetail;
}

export function CommentActions({ reply }: CommentActionsProps) {
  const [likeValue, setLikeValue] = useState<number>(reply.isLiked ? 1 : 0);
  const [likeCount, setLikeCount] = useState<number>(reply.likeCount);
  const [loading, setLoading] = useState(false);

  const handleLikeButtonClick = async (id: number) => {
    if (loading) return;

    const prevValue = likeValue;
    const nextValue = prevValue === 1 ? 0 : 1;

    // Optimistik güncelleme (anında his verelim)
    setLikeValue(nextValue);
    setLikeCount((c) => c + (nextValue === 1 ? 1 : -1));
    setLoading(true);

    try {
      const res = await fetchClient(`/replies/${id}/vote`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: { value: nextValue }, // stringify'i fetchClient yapacak
      });

      if (!res.ok) throw new Error("Like request failed");

      if (res.data) {
        // Backend alan adlarıyla birebir uyuştuğundan emin ol
        setLikeCount(res.data.likeCount ?? likeCount);
        setLikeValue(res.data.value ?? nextValue);
      }
    } catch (err) {
      // Geri al
      setLikeValue(prevValue);
      setLikeCount((c) => c + (nextValue === 1 ? -1 : 1));
      console.error("Like error:", err);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="space-y-4">
      <div className="flex items-center gap-2">
        {/* Like Button with motion + pulse */}
        <motion.div
          whileTap={{ scale: 0.9 }}
          whileHover={{ scale: 1.05 }}
          className="relative"
        >
          <Button
            variant={likeValue === 1 ? "secondary" : "ghost"}
            size="sm"
            onClick={() => handleLikeButtonClick(reply.id)}
            aria-pressed={likeValue === 1}
            disabled={loading}
            className={`flex items-center gap-1 rounded-full transition-colors
              ${
                likeValue === 1
                  ? "bg-blue-100 text-blue-600 hover:bg-blue-100"
                  : "hover:bg-gray-100"
              }`}
          >
            {/* Pulse efekti (like aktifken) */}
            {likeValue === 1 && (
              <span className="absolute -z-10 inset-0 m-auto h-6 w-6 rounded-full bg-blue-400/30 animate-ping" />
            )}
            <ThumbsUp
              className={`h-4 w-4 transition-all
                ${
                  likeValue === 1
                    ? "fill-current text-blue-600"
                    : "text-gray-600 group-hover:text-blue-600"
                }`}
            />
            <span className="text-xs font-medium">{likeCount}</span>
          </Button>
        </motion.div>
      </div>
    </div>
  );
}
