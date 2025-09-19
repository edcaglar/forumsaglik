"use server";
import { fetchServer } from "@/lib/fetch-server";
import { revalidatePath } from "next/cache";

export async function addComment(state: any, formData: FormData) {
  const content = String(formData.get("content") || "").trim();
  const discussionId = formData.get("discussionId");

  if (!content?.toString()) {
    return {
      errors: { content: ["Comment cannot be empty"] },
    };
  }

  try {
    const response = await fetchServer("/replies", {
      method: "POST",
      body: JSON.stringify({
        content: content,
        discussionId: discussionId,
      }),
    });

    if (response.ok) {
      revalidatePath(`/discussions/${discussionId}`);
      return {
        success: true,
        message: "Comment added successfully",
      };
    }

    return {
      success: false,
      message: response.error?.message || "Failed to add comment",
    };
  } catch (error) {
    console.log("Error adding comment:", error);
    return {
      success: false,
      message: "Network error occurred",
    };
  }
}
