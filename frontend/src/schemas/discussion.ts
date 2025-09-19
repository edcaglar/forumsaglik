// src/schemas/discussion.ts
import { z } from "zod";

export const discussionSchema = z.object({
  title: z.string().min(3, "En az 3 karakter"),
  content: z.string().min(1, "İçerik zorunlu"),
  // Select'ten string gelir → coerce.number ile sayıya çeviriyoruz
  categoryId: z.coerce
    .number({ message: "Kategori seçiniz" })
    .int()
    .min(1, "Kategori seçiniz"),
  subcategoryId: z.coerce
    .number({ message: "Alt kategori seçiniz" })
    .int()
    .min(1, "Alt kategori seçiniz"),
});

// Form state tipi (girdi) → string ID'ler
export type DiscussionFormValues = z.input<typeof discussionSchema>;
// API'ye göndereceğin payload (çıktı) → number ID'ler
export type DiscussionPayload = z.output<typeof discussionSchema>;
