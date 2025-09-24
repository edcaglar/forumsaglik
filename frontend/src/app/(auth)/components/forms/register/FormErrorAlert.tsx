"use client";

import { Alert, AlertDescription } from "@/components/ui/alert";
import { AlertCircle } from "lucide-react";
import type { FieldError } from "./types";

export function FormErrorAlert({ error }: { error?: FieldError }) {
  if (!error) return null;
  const message = Array.isArray(error) ? error[0] : error;
  if (!message) return null;

  return (
    <Alert variant="destructive" className="mb-4">
      <AlertCircle className="h-4 w-4" />
      <AlertDescription>{message as any}</AlertDescription>
    </Alert>
  );
}

