"use client";

import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { XCircle } from "lucide-react";
import type { FieldError } from "./types";

type Props = {
  id: string;
  name: string;
  label: string;
  placeholder?: string;
  type?: string;
  error?: FieldError;
};

export function TextField({ id, name, label, placeholder, type = "text", error }: Props) {
  const hasError = Boolean(error && (Array.isArray(error) ? error.length : String(error).length));
  const message = Array.isArray(error) ? error[0] : error;

  return (
    <div>
      <Label htmlFor={id} className="block mb-2">
        {label}
      </Label>
      <Input
        id={id}
        name={name}
        type={type}
        placeholder={placeholder}
        className={hasError ? "border-red-500" : ""}
      />
      {hasError ? (
        <p className="text-red-500 text-sm mt-1 flex items-center">
          <XCircle className="h-4 w-4 mr-1" />
          {message as any}
        </p>
      ) : null}
    </div>
  );
}

