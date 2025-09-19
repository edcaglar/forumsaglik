"use client";

import { CategoryOption } from "@/types/category";

type Props = {
  value: string | number;
  onChange: (v: string) => void;
  categories: CategoryOption[];
  error?: boolean;
};

export function CategorySelect({ value, onChange, categories, error }: Props) {
  return (
    <select
      className={`border rounded-md h-9 px-3 w-full ${
        error ? "border-red-500" : ""
      }`}
      value={value ?? ""}
      onChange={(e) => onChange(e.target.value)}
    >
      <option value="">Seçiniz</option>
      {categories.map((c) => (
        <option key={c.id} value={c.id}>
          {c.title}
        </option>
      ))}
    </select>
  );
}
