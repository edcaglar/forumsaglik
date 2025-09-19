"use client";

import { useState } from "react";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { AlertTriangle, Trash2, Loader2 } from "lucide-react";
import { fetchClient } from "@/lib/fetch-client";

export default function DeleteAccount() {
  const [open, setOpen] = useState(false);
  const [pending, setPending] = useState(false);
  const [error, setError] = useState<string | null>(null);

  async function handleDelete() {
    setError(null);
    setPending(true);
    try {
      const res = await fetchClient("/users/me", {
        method: "DELETE",
      });

      if (!res.ok) {
        const msg =
          res.error?.message || "Hesap silinemedi. Lütfen tekrar deneyin.";
        setError(msg);
        setPending(false);
        return;
      }

      const redirect = (res.data as any)?.redirect ?? "/";
      window.location.href = redirect;
    } catch {
      setError("Beklenmeyen bir hata oluştu.");
      setPending(false);
    }
  }

  function resetAndClose() {
    setOpen(false);
    setError(null);
    setPending(false);
  }

  return (
    <div className="pt-4 border-t">
      <div className="flex items-start space-x-3 p-4 bg-red-50 rounded-lg">
        <AlertTriangle className="h-5 w-5 text-red-600 mt-0.5" />
        <div className="flex-1">
          <h4 className="font-medium text-red-900">Danger Zone</h4>
          <p className="text-sm text-red-700 mb-3">
            Once you delete your account, there is no going back. Please be
            certain.
          </p>
          <Button
            type="button"
            variant="outline"
            className="text-red-600 hover:text-red-700 border-red-300 bg-transparent"
            onClick={() => setOpen(true)}
          >
            <Trash2 className="h-4 w-4 mr-2" />
            Delete Account
          </Button>
        </div>
      </div>

      <Dialog
        open={open}
        onOpenChange={(v) => (v ? setOpen(true) : resetAndClose())}
      >
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Hesabı silmek istediğine emin misin?</DialogTitle>
            <DialogDescription>
              Bu işlem <strong>geri alınamaz</strong>. Hesabın ve tüm verilerin
              kalıcı olarak silinecek.
            </DialogDescription>
          </DialogHeader>

          {error && (
            <Alert variant="destructive" className="mb-2">
              <AlertDescription>{error}</AlertDescription>
            </Alert>
          )}

          <DialogFooter className="gap-2 sm:gap-0">
            <Button
              type="button"
              variant="outline"
              onClick={resetAndClose}
              disabled={pending}
            >
              Vazgeç
            </Button>
            <Button
              type="button"
              onClick={handleDelete}
              disabled={pending}
              className="bg-red-600 hover:bg-red-700 text-white"
            >
              {pending ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Siliniyor...
                </>
              ) : (
                "Sil"
              )}
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}
