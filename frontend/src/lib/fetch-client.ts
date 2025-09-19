// src/lib/fetch-client.ts
"use client";

import { ApiResponse, FetchOptions } from "./http-types";
const API_URL = process.env.NEXT_PUBLIC_API_URL || "https://localhost:8000";

export async function fetchClient(
  endpoint: string,
  options: FetchOptions = {}
): Promise<ApiResponse> {
  try {
    let headers: HeadersInit = {
      "Content-Type": "application/json",
      ...(options.headers || {}),
    };

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

    const res = await fetch(`${API_URL}${endpoint}`, {
      method: options.method ?? "GET",
      headers,
      body,
      credentials: options.credentials ?? "include", // cookie'ler tarayıcıdan gider
      cache: options.cache ?? "no-store",
    });

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
            code: (data.detail as any)?.code,
            message:
              (data.detail as any)?.message ||
              res.statusText ||
              "API request failed",
            errors: (data.detail as any)?.errors,
          },
        };
  } catch (e) {
    console.error("fetchClient error:", e);
    return {
      ok: false,
      status: 0,
      error: { message: "Sunucuya bağlanılamıyor." },
    };
  }
}
