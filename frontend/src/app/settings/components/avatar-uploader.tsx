"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { ImageUp, Trash2 } from "lucide-react";

type Props = {
  initialUrl?: string | null;
  username: string;
  maxSizeMB?: number;
};

export function AvatarUploader({ initialUrl, username, maxSizeMB = 2 }: Props) {
  const inputRef = useRef<HTMLInputElement | null>(null);
  const [file, setFile] = useState<File | null>(null);
  const [error, setError] = useState<string | null>(null);

  const previewUrl = useMemo(() => {
    if (file) return URL.createObjectURL(file);
    return initialUrl || "";
  }, [file, initialUrl]);

  useEffect(() => {
    return () => {
      // memory leak önleme
      if (previewUrl && previewUrl.startsWith("blob:"))
        URL.revokeObjectURL(previewUrl);
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  function chooseFile() {
    setError(null);
    inputRef.current?.click();
  }

  function validateAndSet(f: File | null) {
    if (!f) return;

    // Tip kontrolü
    if (!f.type.startsWith("image/")) {
      setError("Yalnızca görüntü dosyaları yükleyebilirsin.");
      return;
    }
    // Boyut kontrolü
    const maxBytes = maxSizeMB * 1024 * 1024;
    if (f.size > maxBytes) {
      setError(`Dosya çok büyük. Maksimum ${maxSizeMB}MB.`);
      return;
    }

    setError(null);
    setFile(f);
    // set logic
  }

  function onInputChange(e: React.ChangeEvent<HTMLInputElement>) {
    const f = e.target.files?.[0] || null;
    validateAndSet(f);
  }

  function onDrop(e: React.DragEvent<HTMLDivElement>) {
    e.preventDefault();
    const f = e.dataTransfer.files?.[0] || null;
    validateAndSet(f);
  }

  function onDragOver(e: React.DragEvent<HTMLDivElement>) {
    e.preventDefault();
  }

  function clearSelection() {
    setFile(null);
    setError(null);
    if (inputRef.current) inputRef.current.value = "";
    //remove logic
  }

  const fallback = username?.slice(0, 2).toUpperCase() || "US";

  return (
    <div className="space-y-2">
      <Label htmlFor="avatar">Avatar</Label>

      <div className="flex items-start gap-4">
        {/* Preview */}
        <div className="relative group" onDrop={onDrop} onDragOver={onDragOver}>
          <Avatar className="h-20 w-20 ring-1 ring-muted-foreground/20 shadow-sm">
            <AvatarImage src={previewUrl} alt={previewUrl || fallback} />
            <AvatarFallback className="text-sm">{fallback}</AvatarFallback>
          </Avatar>

          {/* Hover overlay */}
          <button
            type="button"
            onClick={chooseFile}
            className="absolute inset-0 hidden place-items-center rounded-full bg-black/40 text-white text-xs font-medium group-hover:grid"
            aria-label="Yeni avatar seç"
          >
            Değiştir
          </button>
        </div>

        {/* Controls */}
        <div className="space-y-2">
          <div className="flex gap-2">
            <Button
              type="button"
              variant="secondary"
              size="sm"
              onClick={chooseFile}
            >
              <ImageUp className="mr-2 h-4 w-4" />
              Görsel Yükle
            </Button>

            {(previewUrl || initialUrl) && (
              <Button
                type="button"
                variant="ghost"
                size="sm"
                onClick={clearSelection}
              >
                <Trash2 className="mr-2 h-4 w-4" />
                Kaldır
              </Button>
            )}
          </div>

          <p className="text-xs text-muted-foreground">
            PNG, JPG, WEBP. Maks. {maxSizeMB}MB. Sürükleyip bırakabilirsin.
          </p>

          {error && <p className="text-xs text-destructive">{error}</p>}
        </div>
      </div>

      {/* Hidden input */}
      <input
        ref={inputRef}
        id="avatar"
        type="file"
        accept="image/*"
        className="hidden"
        onChange={onInputChange}
      />
    </div>
  );
}
