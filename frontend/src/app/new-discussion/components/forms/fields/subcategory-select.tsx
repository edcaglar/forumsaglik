"use client";

import { SubcategoryOption } from "@/types/category";

type Props = {
  value: string | number;
  onChange: (v: string) => void;
  subcategories: SubcategoryOption[];
  disabled?: boolean;
  error?: boolean;
};

export function SubcategorySelect({
  value,
  onChange,
  subcategories,
  disabled,
  error,
}: Props) {
  return (
    <select
      className={`border rounded-md h-9 px-3 w-full ${
        error ? "border-red-500" : ""
      }`}
      value={value ?? ""}
      onChange={(e) => onChange(e.target.value)}
      disabled={disabled}
    >
      <option value="">Seçiniz</option>
      {subcategories.map((s) => (
        <option key={s.id} value={s.id}>
          {s.title}
        </option>
      ))}
    </select>
  );
}
