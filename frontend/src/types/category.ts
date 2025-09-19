export type Category = {
  id: number;
  title: string;
  slug: string;
  publicId: string;
  url?: string;
  description?: string;
  icon?: string;
  color?: number;
};

export type CategoryStats = {
  categoryId: number;
  discussionCount: number;
  memberCount: number;
  lastActivity: string; // ISO date string
  isPopular: boolean;
};

export type Subcategory = {
  id: number;
  categoryId: number;
  title: string;
  slug: string;
  publicId: string;
  url: string;
  description?: string;
  icon?: string;
};

export type SubcategoryWithCategoryData = Subcategory & {
  category: {
    id: number;
    title: string;
    slug: string;
    publicId: string;
    url?: string;
  };
};

export type SubcategoryStats = {
  subcategoryId: number;
  discussionCount: number;
  memberCount: number;
  lastActivity: string; // ISO date string
  isPopular: boolean;
};

// Default Types
export const defaultCategoryStats: CategoryStats = {
  categoryId: 0,
  discussionCount: 0,
  memberCount: 0,
  lastActivity: new Date().toISOString(),
  isPopular: false,
};

export const defaultSubcategoryStats: SubcategoryStats = {
  subcategoryId: 0,
  discussionCount: 0,
  memberCount: 0,
  lastActivity: new Date().toISOString(),
  isPopular: false,
};

export type SubcategoryOption = {
  id: number;
  title: string;
  categoryId: number;
};
export type CategoryOption = {
  id: number;
  title: string;
  icon?: string;
  subcategories: SubcategoryOption[];
};
