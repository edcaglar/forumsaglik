"use client";

import Link from "next/link";
import { Label } from "@/components/ui/label";

type Props = {
  checked: boolean;
  onChange: (checked: boolean) => void;
};

export function TermsCheckbox({ checked, onChange }: Props) {
  return (
    <div className="space-y-2">
      <div className="flex items-center space-x-2">
        <input
          id="agreeToTerms"
          name="agreeToTerms"
          type="checkbox"
          checked={checked}
          onChange={(e) => onChange(e.target.checked)}
        />
        <Label htmlFor="agreeToTerms" className="text-sm leading-relaxed">
          Kabul ediyorum:{" "}
          <Link href="/hizmet-sartlari" className="text-blue-600 hover:underline font-medium">
            Hizmet Şartları
          </Link>{" "}
          ve{" "}
          <Link href="/gizlilik-politikasi" className="text-blue-600 hover:underline font-medium">
            Gizlilik Politikası
          </Link>
        </Label>
      </div>
    </div>
  );
}
