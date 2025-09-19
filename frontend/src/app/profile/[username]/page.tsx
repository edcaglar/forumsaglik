import ProfileSidebar from "./components/profile-sidebar";
import ProfileTabs from "./components/profile-tabs";
import { getUserCore, getUserStats } from "@/services/user.server";
import notFound from "@/app/not-found";
import { cookies } from "next/headers";
import { getUser } from "@/actions/auth-server";
import { redirect } from "next/navigation";

export default async function ProfilePage({
  params,
}: {
  params: Promise<{ username: string }>;
}) {
  const { username } = await params;

  const cookieStore = await cookies();
  const hasSession = cookieStore.has("session");
  const currentUser = hasSession ? await getUser() : null;
  // Check if user is not authenticated
  if (!currentUser) {
    //TODO check if redirect working
    // Redirect to login page with next parameter
    redirect(
      `/login?next=${encodeURIComponent(
        `/profile/${encodeURIComponent(username)}`
      )}`
    );
  }

  const [userCore, userStats] = await Promise.all([
    getUserCore(username),
    getUserStats(username),
  ]);

  if (!userCore || !userStats) {
    return notFound();
  }

  return (
    <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
      <div className="grid grid-cols-1 lg:grid-cols-4 gap-8">
        <ProfileSidebar user={userCore} />
        <div className="lg:col-span-3">
          <ProfileTabs userId={userCore.id} userStats={userStats} />
        </div>
      </div>
    </main>
  );
}
