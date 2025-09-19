// src/lib/http-types.ts
export type FetchOptions = {
  method?: string;
  headers?: Record<string, string>;
  body?: any;
  cache?: RequestCache;
  credentials?: RequestCredentials; // sadece client'ta anlamlı
  next?: {
    revalidate?: number; // saniye
    tags?: string[]; // route segment cache tag'leri
  };
};

export type ApiResponse = {
  ok: boolean;
  status: number;
  data?: any; // generic yok
  error?: { message: string; code?: string; errors?: any } | null; // backend'den gelen hata detayları
};
