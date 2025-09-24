export type RegisterFormErrors = {
  name?: string[];
  surname?: string[];
  username?: string[];
  email?: string[];
  password?: string[];
  confirmPassword?: string[];
  general?: string[];
};

export type FieldError = string | string[] | undefined;

