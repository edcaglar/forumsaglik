// types/auth.ts
export type Role = "USER" | "MODERATOR" | "ADMIN";

export interface VerifySessionDTO {
  id: string;
  role: Role;
  username: string;
  name: string | null;
  // backend döndürüyorsa opsiyoneller:
}

export type SessionUser = Pick<
  VerifySessionDTO,
  "id" | "role" | "username" | "name"
>;
