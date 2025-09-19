// lib/paths.ts
export const categoryPath = (c: { slug: string; publicId: string }) =>
  `/category/${c.slug}--${c.publicId}`;

export const subcategoryPath = (c: { slug: string; publicId: string }) =>
  `/subcategory/${c.slug}--${c.publicId}`;

export const discussionPath = (c: { slug: string; publicId: string }) =>
  `/discussion/${c.slug}--${c.publicId}`;

export function parseSlugId(s: string): { slug: string; publicId: string } {
  const i = s.lastIndexOf("--");
  if (i <= 0) throw new Error("Invalid slug");
  return { slug: s.slice(0, i), publicId: s.slice(i + 1) };
}
