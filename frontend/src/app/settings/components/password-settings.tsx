"use client";

import { useEffect, useMemo, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { Lock, Eye, EyeOff, Check, X, Loader2 } from "lucide-react";
import { fetchClient } from "@/lib/fetch-client";

type SecurityStatus = {
  hasPassword: boolean;
  providers: string[]; // ["google"] vb.
};

export default function PasswordSettings() {
  const [sec, setSec] = useState<SecurityStatus | null>(null);
  const [loadingSec, setLoadingSec] = useState(true);
  const [secErr, setSecErr] = useState<string | null>(null);

  // ortak
  const [pending, setPending] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [ok, setOk] = useState<string | null>(null);
  const [signOutOthers, setSignOutOthers] = useState(true);

  // change flow
  const [currentPwd, setCurrentPwd] = useState("");
  const [newPwd, setNewPwd] = useState("");
  const [confirmPwd, setConfirmPwd] = useState("");
  const [show, setShow] = useState<{
    cur: boolean;
    nw: boolean;
    conf: boolean;
  }>({
    cur: false,
    nw: false,
    conf: false,
  });

  // güç kuralları
  const rules = useMemo(() => {
    return {
      length: newPwd.length >= 8,
      upper: /[A-Z]/.test(newPwd),
      lower: /[a-z]/.test(newPwd),
      number: /\d/.test(newPwd),
      symbol: /[^A-Za-z0-9]/.test(newPwd),
      different:
        newPwd.length > 0 && (sec?.hasPassword ? newPwd !== currentPwd : true),
    };
  }, [newPwd, currentPwd, sec?.hasPassword]);

  const score = Object.values(rules).filter(Boolean).length;
  const strength = score <= 2 ? "Zayıf" : score <= 4 ? "Orta" : "Güçlü";

  useEffect(() => {
    let cancelled = false;
    (async () => {
      setLoadingSec(true);
      setSecErr(null);
      const res = await fetchClient("/users/me/security", { method: "GET" });
      if (!res.ok) {
        if (!cancelled) {
          setSecErr(res.error?.message || "Güvenlik bilgileri alınamadı.");
          setSec({ hasPassword: true, providers: [] }); // fallback
          setLoadingSec(false);
        }
        return;
      }
      if (!cancelled) {
        setSec(res.data as SecurityStatus);
        setLoadingSec(false);
      }
    })();
    return () => {
      cancelled = true;
    };
  }, []);

  function validateCommon(): string | null {
    if (!newPwd || !confirmPwd) return "Lütfen tüm alanları doldurun.";
    if (newPwd !== confirmPwd) return "Yeni şifre ve tekrarı eşleşmiyor.";
    if (score < 4)
      return "Şifre yeterince güçlü değil (en az 8 karakter, büyük/küçük, rakam ve sembol önerilir).";
    return null;
  }

  // hasPassword=true → değiştir
  async function submitChange(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setError(null);
    setOk(null);

    if (!currentPwd) {
      setError("Mevcut şifre gerekli.");
      return;
    }
    const v = validateCommon();
    if (v) {
      setError(v);
      return;
    }

    setPending(true);
    const res = await fetchClient("/users/me/password", {
      method: "PUT",
      body: {
        currentPassword: currentPwd,
        newPassword: newPwd,
        signOutOtherSessions: signOutOthers,
      },
    });
    setPending(false);

    if (!res.ok) {
      setError(
        res.error?.message ||
          "Şifre güncellenemedi. Mevcut şifrenizi kontrol edin."
      );
      return;
    }
    setOk("Şifreniz başarıyla güncellendi.");
    setCurrentPwd("");
    setNewPwd("");
    setConfirmPwd("");
  }

  // hasPassword=false (Google-only) → OTP YOK: direkt set
  async function submitSet(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setError(null);
    setOk(null);

    const v = validateCommon();
    if (v) {
      setError(v);
      return;
    }

    setPending(true);
    const res = await fetchClient("/users/me/password", {
      method: "PUT",
      body: {
        newPassword: newPwd,
        signOutOtherSessions: signOutOthers,
      },
    });
    setPending(false);

    if (!res.ok) {
      // Sunucu güvenlik için reauth isterse (opsiyonel)
      if (res.status === 403 && res.error?.code === "REAUTH_REQUIRED") {
        setError("Devam etmek için Google ile tekrar doğrulama gerekli.");
        // İstersen otomatik tetikle:
        // startGoogleOAuth({ path: "/auth/google/reauth" });
        return;
      }
      setError(res.error?.message || "Şifre oluşturulamadı.");
      return;
    }
    setOk(
      "Şifreniz oluşturuldu. Artık e-posta + şifre ile de giriş yapabilirsiniz."
    );
    setNewPwd("");
    setConfirmPwd("");
    setSec((s) => (s ? { ...s, hasPassword: true } : s));
  }

  return (
    <Card>
      <CardHeader>
        <CardTitle>
          <div className="flex items-center gap-2">
            <Lock className="h-5 w-5" />
            Şifre Ayarları
          </div>
        </CardTitle>
      </CardHeader>

      <CardContent className="space-y-4">
        {secErr && (
          <Alert variant="destructive">
            <AlertDescription>{secErr}</AlertDescription>
          </Alert>
        )}
        {error && (
          <Alert variant="destructive">
            <AlertDescription>{error}</AlertDescription>
          </Alert>
        )}
        {ok && (
          <Alert>
            <AlertDescription>{ok}</AlertDescription>
          </Alert>
        )}

        {loadingSec ? (
          <div className="text-sm text-gray-500">Yükleniyor…</div>
        ) : sec?.hasPassword ? (
          /* ==== ŞİFRE DEĞİŞTİR ==== */
          <form onSubmit={submitChange} className="space-y-6">
            {/* current */}
            <div>
              <Label htmlFor="current">Mevcut Şifre</Label>
              <div className="relative mt-1">
                <Input
                  id="current"
                  type={show.cur ? "text" : "password"}
                  value={currentPwd}
                  onChange={(e) => setCurrentPwd(e.target.value)}
                  autoComplete="current-password"
                />
                <Button
                  type="button"
                  variant="ghost"
                  size="sm"
                  className="absolute right-1 top-1 h-8 px-2"
                  onClick={() => setShow((s) => ({ ...s, cur: !s.cur }))}
                >
                  {show.cur ? (
                    <EyeOff className="h-4 w-4" />
                  ) : (
                    <Eye className="h-4 w-4" />
                  )}
                </Button>
              </div>
            </div>

            {/* new + confirm + meter */}
            <PasswordNewBlock
              show={show}
              setShow={setShow}
              newPwd={newPwd}
              setNewPwd={setNewPwd}
              confirmPwd={confirmPwd}
              setConfirmPwd={setConfirmPwd}
              score={score}
              strength={strength}
              rules={rules}
            />

            <SignOutOthers
              checked={signOutOthers}
              onChange={setSignOutOthers}
            />

            <Button type="submit" disabled={pending} className="w-full">
              {pending ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />{" "}
                  Güncelleniyor...
                </>
              ) : (
                "Şifreyi Güncelle"
              )}
            </Button>
          </form>
        ) : (
          /* ==== ŞİFRE OLUŞTUR (Google-only, OTP YOK) ==== */
          <form onSubmit={submitSet} className="space-y-6">
            <Alert className="border-blue-200">
              <AlertDescription className="text-blue-800">
                Google ile giriş yapıyorsunuz. İsterseniz bir şifre oluşturarak
                e-posta + şifre ile de giriş yapabilirsiniz.
              </AlertDescription>
            </Alert>

            <PasswordNewBlock
              show={show}
              setShow={setShow}
              newPwd={newPwd}
              setNewPwd={setNewPwd}
              confirmPwd={confirmPwd}
              setConfirmPwd={setConfirmPwd}
              score={score}
              strength={strength}
              rules={rules}
            />

            <SignOutOthers
              checked={signOutOthers}
              onChange={setSignOutOthers}
            />

            <div className="flex gap-2">
              <Button type="submit" disabled={pending} className="w-full">
                {pending ? (
                  <>
                    <Loader2 className="mr-2 h-4 w-4 animate-spin" />{" "}
                    Oluşturuluyor…
                  </>
                ) : (
                  "Şifre Oluştur"
                )}
              </Button>

              {/* İsteğe bağlı: reauth butonu (BE 403 dönerse göster) */}
              {/* <Button type="button" variant="outline" onClick={() => startGoogleOAuth({ path: "/auth/google/reauth" })}>
                Google ile Yeniden Doğrula
              </Button> */}
            </div>
          </form>
        )}
      </CardContent>
    </Card>
  );
}

/* ortak alt parçalar */
function PasswordNewBlock(props: {
  show: { nw: boolean; conf: boolean; cur: boolean };
  setShow: React.Dispatch<
    React.SetStateAction<{ nw: boolean; conf: boolean; cur: boolean }>
  >;
  newPwd: string;
  setNewPwd: (v: string) => void;
  confirmPwd: string;
  setConfirmPwd: (v: string) => void;
  score: number;
  strength: string;
  rules: Record<string, boolean>;
}) {
  const {
    show,
    setShow,
    newPwd,
    setNewPwd,
    confirmPwd,
    setConfirmPwd,
    score,
    strength,
    rules,
  } = props;
  return (
    <>
      <div>
        <Label htmlFor="new">Yeni Şifre</Label>
        <div className="relative mt-1">
          <Input
            id="new"
            type={show.nw ? "text" : "password"}
            value={newPwd}
            onChange={(e) => setNewPwd(e.target.value)}
            autoComplete="new-password"
          />
          <Button
            type="button"
            variant="ghost"
            size="sm"
            className="absolute right-1 top-1 h-8 px-2"
            onClick={() => setShow((s) => ({ ...s, nw: !s.nw }))}
          >
            {show.nw ? (
              <EyeOff className="h-4 w-4" />
            ) : (
              <Eye className="h-4 w-4" />
            )}
          </Button>
        </div>

        <div className="mt-3">
          <div className="h-2 w-full rounded bg-gray-200 overflow-hidden">
            <div
              className={`h-2 rounded transition-all ${
                score <= 2
                  ? "bg-red-500"
                  : score <= 4
                  ? "bg-yellow-500"
                  : "bg-green-600"
              }`}
              style={{ width: `${(score / 6) * 100}%` }}
            />
          </div>
          <div className="mt-1 text-xs text-gray-600">
            Şifre Gücü: {strength}
          </div>
          <ul className="mt-2 grid grid-cols-2 gap-2 text-xs">
            <Rule ok={rules.length} text="En az 8 karakter" />
            <Rule ok={rules.different} text="Eski şifreyle aynı değil" />
            <Rule ok={rules.upper} text="Büyük harf içerir" />
            <Rule ok={rules.lower} text="Küçük harf içerir" />
            <Rule ok={rules.number} text="Rakam içerir" />
            <Rule ok={rules.symbol} text="Sembol içerir" />
          </ul>
        </div>
      </div>

      <div>
        <Label htmlFor="confirm">Yeni Şifre (Tekrar)</Label>
        <div className="relative mt-1">
          <Input
            id="confirm"
            type={show.conf ? "text" : "password"}
            value={confirmPwd}
            onChange={(e) => setConfirmPwd(e.target.value)}
            autoComplete="new-password"
          />
          <Button
            type="button"
            variant="ghost"
            size="sm"
            className="absolute right-1 top-1 h-8 px-2"
            onClick={() => setShow((s) => ({ ...s, conf: !s.conf }))}
          >
            {show.conf ? (
              <EyeOff className="h-4 w-4" />
            ) : (
              <Eye className="h-4 w-4" />
            )}
          </Button>
        </div>
      </div>
    </>
  );
}

function Rule({ ok, text }: { ok: boolean; text: string }) {
  return (
    <li
      className={`flex items-center gap-2 ${
        ok ? "text-green-700" : "text-gray-500"
      }`}
    >
      {ok ? <Check className="h-3.5 w-3.5" /> : <X className="h-3.5 w-3.5" />}
      {text}
    </li>
  );
}

function SignOutOthers({
  checked,
  onChange,
}: {
  checked: boolean;
  onChange: (v: boolean) => void;
}) {
  return (
    <div className="flex items-center gap-2">
      <input
        id="signOutOthers"
        type="checkbox"
        className="h-4 w-4"
        checked={checked}
        onChange={(e) => onChange(e.target.checked)}
      />
      <Label htmlFor="signOutOthers" className="text-sm">
        Diğer cihazlardaki oturumları kapat
      </Label>
    </div>
  );
}
