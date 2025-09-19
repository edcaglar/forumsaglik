// app/search/page.tsx
import { ResultType } from "@/types/search";
import SearchClient from "./components/search-client";

export default async function Page({
  searchParams,
}: {
  searchParams: Promise<{ q?: string; type?: ResultType }>;
}) {
  const params = await searchParams;
  const initialQuery = params?.q || "";
  const initialType = params?.type === "replies" ? "replies" : "discussions"; // default to discussions

  return <SearchClient initialQuery={initialQuery} initialType={initialType} />;
}
