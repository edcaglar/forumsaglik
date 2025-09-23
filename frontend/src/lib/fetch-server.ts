// src/lib/fetch-server.ts
import "server-only";
import { cookies } from "next/headers";
import { ApiResponse, FetchOptions } from "./http-types";

const API_URL = process.env.INTERNAL_API_URL;

export async function fetchServer(
  endpoint: string,
  options: FetchOptions = {}
): Promise<ApiResponse> {
  try {
    const cookieStore = await cookies();
    const cookieHeader = cookieStore.toString();

    let headers: HeadersInit = {
      "Content-Type": "application/json",
      ...(cookieHeader ? { cookie: cookieHeader } : {}),
      ...(options.headers || {}),
    };

    // FormData gönderiyorsan Content-Type'ı kaldır
    let body = options.body;
    if (typeof FormData !== "undefined" && body instanceof FormData) {
      const { ["Content-Type"]: _omit, ...rest } = headers as any;
      headers = rest;
    } else if (
      body !== undefined &&
      typeof body !== "string" &&
      (headers as any)["Content-Type"]?.includes("application/json")
    ) {
      body = JSON.stringify(body);
    }

    const shouldCache =
      !!options.next && (options.next.revalidate || options.next.tags?.length);
    const reqInit: RequestInit & {
      next?: { revalidate?: number; tags?: string[] };
    } = {
      method: options.method ?? "GET",
      headers,
      body,
      cache: options.cache ?? (shouldCache ? "force-cache" : "no-store"),
      next: options.next, // { revalidate, tags }
    };

    const res = await fetch(`${API_URL}${endpoint}`, reqInit);

    const isJson = res.headers
      .get("content-type")
      ?.includes("application/json");
    const data = isJson ? await res.json().catch(() => ({})) : undefined;
    return res.ok
      ? { ok: true, status: res.status, data }
      : {
          ok: false,
          status: res.status,
          error: {
            code: (data as any)?.detail?.code,
            message:
              (data as any)?.detail?.message ||
              res.statusText ||
              "API request failed",
            errors: (data as any)?.detail?.errors,
          },
        };
  } catch (e) {
    console.error("fetchServer error:", e);
    return {
      ok: false,
      status: 0,
      error: { message: "Sunucuya bağlanılamıyor." },
    };
  }
}
