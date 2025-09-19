/**
 * Formats a date string into a human-readable "time ago" format.
 * @param iso - ISO date string to format.
 * @param now - Current date, defaults to now.
 * @returns Formatted time ago string.
 */
export function formatTimeAgo(iso: string, now: Date = new Date()): string {
  const date = new Date(iso);
  if (isNaN(date.getTime())) return "-";

  const diffMs = now.getTime() - date.getTime();
  const future = diffMs < 0;
  const sec = Math.abs(Math.floor(diffMs / 1000));

  const MIN = 60;
  const HOUR = 60 * MIN;
  const DAY = 24 * HOUR;

  const days = Math.floor(sec / DAY);
  const remHours = Math.floor((sec % DAY) / HOUR);
  const hours = Math.floor(sec / HOUR);
  const minutes = Math.floor(sec / MIN);

  let text: string;
  if (days >= 1) {
    text = `${days} gün${remHours ? ` ${remHours} saat` : ""}`;
  } else if (hours >= 1) {
    text = `${hours} saat`;
  } else if (minutes >= 1) {
    text = `${minutes} dakika`;
  } else {
    text = "şimdi";
  }

  return text === "şimdi" ? text : future ? `${text} sonra` : `${text} önce`;
}

export function formatDateTR(iso: string) {
  const d = new Date(iso);
  return new Intl.DateTimeFormat("tr-TR", {
    day: "2-digit",
    month: "long",
    year: "numeric",
    timeZone: "Europe/Istanbul", // net sonuç için mutlaka belirt
  }).format(d);
}
