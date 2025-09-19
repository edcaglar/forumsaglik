"use client";
import { Card, CardHeader, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Textarea } from "@/components/ui/textarea";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { useActionState, useEffect, useRef } from "react";
import { addComment } from "@/actions/comments";
import { useRouter } from "next/navigation";

interface NewCommentFormProps {
  discussionId: number;
  onCancel?: () => void;
}

export default function NewCommentForm({
  discussionId,
  onCancel,
}: NewCommentFormProps) {
  const [state, action, isPending] = useActionState(addComment, {
    success: false,
    message: "",
  });

  const router = useRouter();
  const formRef = useRef<HTMLFormElement>(null);
  useEffect(() => {
    if (state?.success) {
      formRef.current?.reset(); // alanları temizle
      router.refresh(); // invalidation’dan sonra veriyi kesin tazele
    }
  }, [state?.success, router]);

  return (
    <Card>
      <CardHeader>
        <h3 className="text-lg font-semibold">Yorum Ekle</h3>
      </CardHeader>

      <CardContent>
        <form action={action} className="space-y-4">
          <input type="hidden" name="discussionId" value={discussionId} />

          {state?.message && (
            <Alert variant={state.success ? "default" : "destructive"}>
              <AlertDescription>{state.message}</AlertDescription>
            </Alert>
          )}

          <Textarea
            name="content"
            placeholder="Düşüncelerinizi buraya yazın..."
            rows={4}
            className="resize-none"
            disabled={isPending}
          />

          <div className="flex justify-end space-x-2">
            {onCancel && (
              <Button type="button" variant="outline" onClick={onCancel}>
                İptal
              </Button>
            )}
            <Button type="submit" disabled={isPending}>
              {isPending ? "Yükleniyor..." : "Yorumu Gönder"}
            </Button>
          </div>
        </form>
      </CardContent>
    </Card>
  );
}
