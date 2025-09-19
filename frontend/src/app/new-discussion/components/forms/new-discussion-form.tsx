"use client";

import { useEffect, useState, useMemo } from "react";
import { useRouter } from "next/navigation";
import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";

import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Loader2, Save } from "lucide-react";

import { CharacterCount } from "@/components/shared/character-count";
import { CategorySelect } from "./fields/category-select";
import { SubcategorySelect } from "./fields/subcategory-select";

import { CategoryOption } from "@/types/category";
import {
  discussionSchema,
  type DiscussionFormValues,
  type DiscussionPayload,
} from "@/schemas/discussion";
import { fetchClient } from "@/lib/fetch-client";

type Props = {
  categories: CategoryOption[];
  initial?: { categoryId?: string; subcategoryId?: string };
};

export default function NewDiscussionForm({ categories, initial }: Props) {
  const router = useRouter();
  const [generalError, setGeneralError] = useState<string | null>(null);

  const form = useForm<DiscussionFormValues>({
    resolver: zodResolver(discussionSchema),
    defaultValues: {
      title: "",
      content: "",
      categoryId: initial?.categoryId || "", // string (select)
      subcategoryId: initial?.subcategoryId || "", // string (select)
    },
    mode: "onBlur",
  });

  const watched = form.watch();
  const selectedCategory = useMemo(
    () => categories.find((c) => String(c.id) === String(watched.categoryId)),
    [categories, watched.categoryId]
  );

  const subcategories = useMemo(
    () => selectedCategory?.subcategories || [],
    [selectedCategory]
  );

  // Kategori değişince: mevcut subcategory yeni kategoride yoksa sıfırla
  useEffect(() => {
    const currentSub = String(form.getValues("subcategoryId") ?? "");
    const stillValid = subcategories.some((s) => String(s.id) === currentSub);
    if (!stillValid) {
      form.setValue("subcategoryId", "");
    }
  }, [watched.categoryId, subcategories, form]);

  async function onSubmit(data: DiscussionFormValues) {
    setGeneralError(null);

    // Zod coerce ile ID'ler number'a dönüşür
    const payload: DiscussionPayload = discussionSchema.parse(data);

    // Backend snake_case bekliyorsa:
    // const body = keysToSnake(payload);
    const body = payload;

    const res = await fetchClient("/discussions", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body,
    });

    if (res.ok) {
      const to = res.data?.redirect || `/discussion/${res.data?.id ?? ""}`;
      form.reset();
      router.replace(to);
      router.refresh();
      return;
    }

    setGeneralError(res.error?.message || "Bir hata oluştu");
  }

  const isSubmitting = form.formState.isSubmitting;

  return (
    <Card>
      <CardHeader>
        <CardTitle>Konu İçeriği</CardTitle>
        <CardDescription>
          Deneyiminizi paylaşın, soru sorun veya bir tartışma başlatın
        </CardDescription>
      </CardHeader>
      <CardContent>
        {generalError && (
          <Alert variant="destructive" className="mb-6">
            <AlertDescription>{generalError}</AlertDescription>
          </Alert>
        )}

        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-6">
            {/* Title */}
            <FormField
              control={form.control}
              name="title"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Konu Başlığı *</FormLabel>
                  <FormControl>
                    <Input
                      {...field}
                      placeholder="Açıklayıcı bir başlık girin..."
                      maxLength={200}
                      aria-describedby="title-count"
                    />
                  </FormControl>
                  <div id="title-count">
                    <CharacterCount
                      current={field.value?.length ?? 0}
                      max={200}
                    />
                  </div>
                  <FormMessage />
                </FormItem>
              )}
            />

            {/* Category & Subcategory */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <FormField
                control={form.control}
                name="categoryId"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Kategori *</FormLabel>
                    <FormControl>
                      <CategorySelect
                        value={String(field.value ?? "")}
                        onChange={(val) => field.onChange(val)} // string
                        categories={categories}
                        error={!!form.formState.errors.categoryId}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              <FormField
                control={form.control}
                name="subcategoryId"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Alt Kategori *</FormLabel>
                    <FormControl>
                      <SubcategorySelect
                        value={String(field.value ?? "")}
                        onChange={(val) => field.onChange(val)} // string
                        subcategories={subcategories}
                        disabled={!watched.categoryId}
                        error={!!form.formState.errors.subcategoryId}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
            </div>

            {/* Content */}
            <FormField
              control={form.control}
              name="content"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>İçerik *</FormLabel>
                  <FormControl>
                    <Textarea
                      {...field}
                      placeholder="Düşüncelerinizi, deneyimlerinizi veya sorularınızı detaylı olarak paylaşın..."
                      className="min-h-[200px] resize-y"
                      maxLength={5000}
                      aria-describedby="content-count"
                    />
                  </FormControl>
                  <div id="content-count">
                    <CharacterCount
                      current={field.value?.length ?? 0}
                      max={5000}
                    />
                  </div>
                  <FormMessage />
                </FormItem>
              )}
            />

            {/* Actions */}
            <div className="flex flex-col sm:flex-row justify-end gap-3 pt-6 border-t">
              <Button
                type="button"
                variant="outline"
                onClick={() => window.history.back()}
                disabled={isSubmitting}
              >
                İptal
              </Button>
              <Button
                type="submit"
                disabled={isSubmitting}
                className="bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700 transition-all duration-200"
              >
                {isSubmitting ? (
                  <>
                    <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                    Gönderiliyor...
                  </>
                ) : (
                  <>
                    <Save className="mr-2 h-4 w-4" />
                    Konu Oluştur
                  </>
                )}
              </Button>
            </div>
          </form>
        </Form>
      </CardContent>
    </Card>
  );
}
