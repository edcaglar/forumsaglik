"use client";
import { useEffect, useState } from "react";
import { Tabs, TabsList, TabsTrigger, TabsContent } from "@/components/ui/tabs";
import ActivityTab from "./tabs/activity-tab";
import DiscussionsTab from "./tabs/discussions-tab";
import RepliesTab from "./tabs/replies-tab";
import { UserStats } from "@/types/user";

export interface ProfileTabsProps {
  userId: number;
  userStats: UserStats;
}

type TabKey = "activity" | "discussions" | "replies";

export default function ProfileTabs({ userId, userStats }: ProfileTabsProps) {
  const [activeTab, setActiveTab] = useState<TabKey>("activity");

  // Hangi tabların en az bir kez mount edildiğini tut
  const [mounted, setMounted] = useState<Record<TabKey, boolean>>({
    activity: true, // ilk tab zaten açık
    discussions: false,
    replies: false,
  });

  useEffect(() => {
    setMounted((m) => (m[activeTab] ? m : { ...m, [activeTab]: true }));
  }, [activeTab]);

  return (
    <Tabs
      value={activeTab}
      onValueChange={(v) => setActiveTab(v as TabKey)}
      className="w-full"
    >
      <TabsList className="grid w-full grid-cols-3">
        <TabsTrigger value="activity">Activity</TabsTrigger>
        <TabsTrigger value="discussions">
          Discussions ({userStats.discussionCount})
        </TabsTrigger>
        <TabsTrigger value="replies">
          Replies ({userStats.replyCount})
        </TabsTrigger>
      </TabsList>

      {/* Sadece ilk kez tıklandığında render et; forceMount ile kalıcı kıl */}
      {mounted.activity && (
        <TabsContent value="activity" forceMount>
          <ActivityTab userId={userId} value={activeTab} />
        </TabsContent>
      )}

      {mounted.discussions && (
        <TabsContent value="discussions" forceMount>
          <DiscussionsTab userId={userId} value={activeTab} />
        </TabsContent>
      )}

      {mounted.replies && (
        <TabsContent value="replies" forceMount>
          <RepliesTab userId={userId} value={activeTab} />
        </TabsContent>
      )}
    </Tabs>
  );
}
