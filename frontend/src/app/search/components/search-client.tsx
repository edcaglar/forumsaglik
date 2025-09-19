"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import { useRouter } from "next/navigation";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Search, Loader2, ChevronRight } from "lucide-react";
import ReplyCard from "./reply-card";
import DiscussionCard from "./discussion-card";
import {
  DiscussionSearchResult,
  ReplySearchResult,
  ResultType,
} from "@/types/search";
import { get_search_results } from "@/services/search";

interface Props {
  initialQuery: string;
  initialType: ResultType; // "discussions" | "replies"
}

export default function SearchClient({ initialQuery, initialType }: Props) {
  const router = useRouter();

  // UI state (kullanıcı girdisi)
  const [inputText, setInputText] = useState(initialQuery);
  const [selectedType, setSelectedType] = useState<ResultType>(initialType);

  // Çalıştırılmış arama durumu (yalnızca butona basınca güncellenir)
  const [submittedQuery, setSubmittedQuery] = useState(initialQuery);
  const [submittedType, setSubmittedType] = useState<ResultType>(initialType);

  // Sonuç durumu
  const [items, setItems] = useState<
    (DiscussionSearchResult | ReplySearchResult)[]
  >([]);
  const [cursor, setCursor] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [initialLoaded, setInitialLoaded] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const didInitRef = useRef(false);

  const canSearch = useMemo(
    () => inputText.trim().length > 0 && !loading,
    [inputText, loading]
  );

  async function fetchResults(reset = false) {
    try {
      setLoading(true);
      setError(null);

      const res = await get_search_results(
        submittedQuery,
        submittedType,
        reset ? null : cursor
      );

      if (!res || !res.items) {
        setError("Sonuç bulunamadı");
        return [];
      }

      setItems((prev) => (reset ? res.items : [...prev, ...res.items]));
      setCursor(res.meta?.nextCursor ?? null);
    } catch (e: unknown) {
      const msg =
        (e as { message?: string })?.message ?? "Beklenmeyen bir hata oluştu";
      setError(msg);
    } finally {
      setLoading(false);
    }
  }

  // İlk yüklemede initialQuery varsa bir kez arama yap
  useEffect(() => {
    if (didInitRef.current) return;
    didInitRef.current = true;

    if (initialQuery.trim()) {
      setSubmittedQuery(initialQuery.trim());
      setSubmittedType(initialType);
      setItems([]);
      setCursor(null);
      fetchResults(true).then(() => setInitialLoaded(true));
    } else {
      setInitialLoaded(true);
    }
    // sadece initial değerlerde çalışsın
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  // Ara butonu (veya Enter) ile tetiklenir
  async function onSearch() {
    if (!canSearch) return;

    const q = inputText.trim();
    const t = selectedType;

    setSubmittedQuery(q);
    setSubmittedType(t);
    setItems([]);
    setCursor(null);

    // URL sync sadece arama tetiklenince
    router.replace(`/search?q=${encodeURIComponent(q)}&type=${t}`);

    await fetchResults(true);
  }

  function onKeyDown(e: React.KeyboardEvent<HTMLInputElement>) {
    if (e.key === "Enter") {
      e.preventDefault();
      onSearch();
    }
  }

  return (
    <div>
      <section className="border-b bg-white/70 dark:bg-slate-900/60 backdrop-blur">
        <div className="container mx-auto max-w-5xl px-4 py-8">
          <h1 className="text-2xl md:text-3xl font-semibold tracking-tight">
            Arama
          </h1>
          <p className="mt-1 text-sm md:text-base text-muted-foreground">
            Konular veya cevaplar içinde anahtar kelimeyle arayın.
          </p>

          {/* Arama çubuğu */}
          <div className="mt-6 flex flex-col gap-3 md:flex-row md:items-center">
            <div className="flex-1">
              <Input
                value={inputText}
                onChange={(e) => setInputText(e.target.value)}
                onKeyDown={onKeyDown}
                placeholder="Örn: saç ekimi tecrübeleri"
                aria-label="Arama"
                className="h-11 md:h-12 rounded-xl"
              />
            </div>

            {/* Segmented (Konular / Cevaplar) */}
            <Tabs
              value={selectedType}
              onValueChange={(v) => setSelectedType(v as ResultType)}
              className="md:ml-2"
            >
              <TabsList className="grid grid-cols-2 rounded-xl">
                <TabsTrigger value="discussions">Konular</TabsTrigger>
                <TabsTrigger value="replies">Cevaplar</TabsTrigger>
              </TabsList>
            </Tabs>

            <Button
              onClick={onSearch}
              disabled={!canSearch}
              className="h-11 md:h-12 md:ml-2 rounded-xl"
            >
              {loading ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Aranıyor...
                </>
              ) : (
                <>
                  <Search className="mr-2 h-4 w-4" />
                  Ara
                </>
              )}
            </Button>
          </div>
        </div>
      </section>

      {/* Sonuçlar */}
      <section>
        <div className="container mx-auto max-w-5xl px-4 py-6 md:py-8">
          {/* Hata / Boş durumlar */}
          {error && (
            <div className="mb-4 text-sm text-red-600 dark:text-red-400">
              {error}
            </div>
          )}

          {!error &&
            initialLoaded &&
            !loading &&
            items.length === 0 &&
            submittedQuery && (
              <p className="text-sm text-muted-foreground">
                “{submittedQuery}” için sonuç bulunamadı.
              </p>
            )}

          {!submittedQuery && initialLoaded && (
            <p className="text-sm text-muted-foreground">
              Aramaya başlamak için bir anahtar kelime yazın ve <b>Ara</b>{" "}
              butonuna tıklayın.
            </p>
          )}

          <div className="grid gap-3 sm:gap-4">
            {items.map((it) =>
              submittedType === "discussions" ? (
                <DiscussionCard
                  key={it.id}
                  discussion={it as DiscussionSearchResult}
                />
              ) : (
                <ReplyCard key={it.id} reply={it as ReplySearchResult} />
              )
            )}
          </div>

          {/* Load more */}
          {cursor && (
            <div className="flex justify-center mt-6">
              <Button
                variant="outline"
                onClick={() => fetchResults(false)}
                disabled={loading}
                className="rounded-xl"
              >
                {loading ? (
                  <>
                    <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                    Yükleniyor…
                  </>
                ) : (
                  <>
                    Daha fazla yükle
                    <ChevronRight className="ml-1 h-4 w-4" />
                  </>
                )}
              </Button>
            </div>
          )}
        </div>
      </section>
    </div>
  );
}
