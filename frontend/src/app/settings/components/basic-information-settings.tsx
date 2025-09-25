"use client";

import { useEffect, useMemo, useState } from "react";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import { Button } from "@/components/ui/button";
import { AlertTriangle, Save, Loader2 } from "lucide-react";
import { toast } from "sonner";
import type { UpdateUserCoreInput, UserCore } from "@/types/user";
import {
  getCurrentUserCoreClient,
  updateCurrentUserCoreClient,
} from "@/services/user.client";
import { AvatarUploader } from "./avatar-uploader";

type FormValues = Required<
  Pick<UserCore, "username" | "name" | "surname" | "email">
> &
  Partial<Pick<UserCore, "bio" | "location" | "website" | "avatarUrl">>;

const EMPTY: FormValues = {
  username: "",
  email: "",
  name: "",
  surname: "",
  bio: "",
  location: "",
  website: "",
  avatarUrl: "",
};

function mapCoreToForm(core: UserCore): FormValues {
  return {
    username: core.username ?? "",
    email: core.email ?? "",
    name: core.name ?? "",
    surname: core.surname ?? "",
    bio: core.bio ?? "",
    location: core.location ?? "",
    website: core.website ?? "",
    avatarUrl: core.avatarUrl ?? "",
  };
}

export default function BasicInformationSettings({
  bioMax = 255,
}: {
  bioMax?: number;
}) {
  const [values, setValues] = useState<FormValues>(EMPTY);
  const [initial, setInitial] = useState<FormValues>(EMPTY);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [err, setErr] = useState<string | null>(null);

  const hasChanges = useMemo(
    () => JSON.stringify(values) !== JSON.stringify(initial),
    [values, initial]
  );
  const bioLen = values.bio?.length ?? 0;

  // İlk yükleme
  useEffect(() => {
    let cancelled = false;
    (async () => {
      setLoading(true);
      setErr(null);
      try {
        const core = await getCurrentUserCoreClient();
        if (!cancelled) {
          const fv = mapCoreToForm(core);
          setValues(fv);
          setInitial(fv);
        }
      } catch (e: any) {
        if (!cancelled) setErr(e.message || "Kullanıcı bilgileri yüklenemedi.");
      } finally {
        if (!cancelled) setLoading(false);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, []);

  const onChange = (key: keyof FormValues, value: string) => {
    setValues((v) => ({ ...v, [key]: value }));
  };

  const handleSave = async () => {
    setSaving(true);
    setErr(null);
    try {
      // Sadece güncellenebilir alanları gönder
      const payload: UpdateUserCoreInput = {
        username: values.username,
        name: values.name,
        surname: values.surname,
        bio: values.bio,
        location: values.location,
        website: values.website,
      };
      const updated = await updateCurrentUserCoreClient(payload);
      const fv = mapCoreToForm(updated);
      setValues(fv);
      setInitial(fv);
      toast.success("Değişiklikler kaydedildi.");
    } catch (e: any) {
      const msg = e.message || "Kaydetme işlemi başarısız.";
      setErr(msg);
      toast.error(msg);
    } finally {
      setSaving(false);
    }
  };

  const handleDiscard = () => setValues(initial);

  return (
    <Card>
      <CardHeader>
        <CardTitle>Kişisel Bilgiler</CardTitle>
      </CardHeader>
      <CardContent className="space-y-4">
        {err && <p className="text-sm text-red-600">{err}</p>}
        {/* Avatar */}
        <AvatarUploader
          initialUrl={initial.avatarUrl}
          username={values.username}
        />

        {/* Bio */}
        <div>
          <Label htmlFor="bio">Bio</Label>
          <Textarea
            className="mt-1"
            id="bio"
            value={values.bio ?? ""}
            onChange={(e) => onChange("bio", e.target.value)}
            rows={3}
            placeholder="Kendiniz hakkında kısa bir bilgi yazın"
            maxLength={bioMax}
            disabled={loading || saving}
          />
          <p className="text-xs text-gray-500 mt-1">
            {bioLen}/{bioMax} karakter
          </p>
        </div>

        {/* Name & Surname */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <div>
            <Label htmlFor="name">İsim</Label>
            <Input
              className="mt-1"
              id="name"
              value={values.name}
              onChange={(e) => onChange("name", e.target.value)}
              disabled={loading || saving}
            />
          </div>
          <div>
            <Label htmlFor="surname">Soyisim</Label>
            <Input
              className="mt-1"
              id="surname"
              value={values.surname}
              onChange={(e) => onChange("surname", e.target.value)}
              disabled={loading || saving}
            />
          </div>
        </div>

        {/* Username */}
        <div>
          <Label htmlFor="username">Kullanıcı Adı</Label>
          <Input
            className="mt-1"
            id="username"
            value={values.username}
            onChange={(e) => onChange("username", e.target.value)}
            disabled={loading || saving}
          />
          <p className="text-xs text-gray-500 mt-1">
            Kullanıcı adınız profil URL&apos;nizde gösterilir ve değiştirilemez.
          </p>
        </div>

        {/* Email */}
        <div>
          <Label htmlFor="email">E-posta</Label>
          <Input
            disabled
            className="mt-1"
            id="email"
            type="email"
            value={initial.email}
          />
        </div>

        {/* Location & Website */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <div>
            <Label htmlFor="location">Konum</Label>
            <Input
              className="mt-1"
              id="location"
              value={values.location ?? ""}
              onChange={(e) => onChange("location", e.target.value)}
              placeholder="Şehir, Ülke"
              disabled={loading || saving}
            />
          </div>
          <div>
            <Label htmlFor="website">Website</Label>
            <Input
              className="mt-1"
              id="website"
              value={values.website ?? ""}
              onChange={(e) => onChange("website", e.target.value)}
              placeholder="https://web-siteniz.com"
              disabled={loading || saving}
            />
          </div>
        </div>

        {/* Save banner */}
        {hasChanges && (
          <Card className="border-blue-200 bg-blue-50">
            <CardContent className="p-4">
              <div className="flex items-center justify-between">
                <div className="flex items-center space-x-2">
                  <AlertTriangle className="h-5 w-5 text-blue-600" />
                  <span className="text-blue-900 font-medium">
                    Kaydedilmemiş değişiklikler var
                  </span>
                </div>
                <div className="flex space-x-2">
                  <Button
                    variant="outline"
                    onClick={handleDiscard}
                    className="bg-transparent"
                    disabled={saving}
                  >
                    Discard
                  </Button>
                  <Button onClick={handleSave} disabled={saving}>
                    {saving ? (
                      <>
                        <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                        Kaydediliyor...
                      </>
                    ) : (
                      <>
                        <Save className="h-4 w-4 mr-2" />
                        Değişiklikleri Kaydet
                      </>
                    )}
                  </Button>
                </div>
              </div>
            </CardContent>
          </Card>
        )}
      </CardContent>
    </Card>
  );
}
