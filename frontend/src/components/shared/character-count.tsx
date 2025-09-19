"use client";

export function CharacterCount({
  current,
  max,
}: {
  current: number;
  max: number;
}) {
  return (
    <div className="text-xs text-gray-500 mt-1">
      {current}/{max}
    </div>
  );
}
