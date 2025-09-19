import { getUser } from "@/actions/auth-server";
import { cookies } from "next/headers";
import HeaderClient from "./header-client";

export default async function Header() {
  const cookieStore = await cookies();
  const hasSession = cookieStore.has("session");
  const currentUser = hasSession ? await getUser() : null;

  return <HeaderClient currentUser={currentUser} />;
}
