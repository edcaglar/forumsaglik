"use client";

import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Eye, EyeOff, XCircle } from "lucide-react";
import type { FieldError } from "./types";

type Props = {
  id: string;
  name: string;
  label: string;
  placeholder?: string;
  show: boolean;
  onToggle: () => void;
  error?: FieldError;
};

export function PasswordField({ id, name, label, placeholder, show, onToggle, error }: Props) {
  const hasError = Boolean(error && (Array.isArray(error) ? error.length : String(error).length));
  const message = Array.isArray(error) ? error[0] : error;

  return (
    <div>
      <Label htmlFor={id} className="block mb-2">
        {label}
      </Label>
      <div className="relative">
        <Input
          id={id}
          name={name}
          type={show ? "text" : "password"}
          placeholder={placeholder}
          className={hasError ? "border-red-500 pr-10" : "pr-10"}
        />
        <Button
          type="button"
          variant="ghost"
          size="sm"
          className="absolute right-0 top-0 h-full px-3"
          onClick={onToggle}
        >
          {show ? <EyeOff className="h-4 w-4" /> : <Eye className="h-4 w-4" />}
        </Button>
      </div>
      {hasError ? (
        <p className="text-red-500 text-sm mt-1 flex items-center">
          <XCircle className="h-4 w-4 mr-1" />
          {message as any}
        </p>
      ) : null}
    </div>
  );
}

