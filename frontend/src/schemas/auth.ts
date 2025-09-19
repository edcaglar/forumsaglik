import { z } from "zod";

export const SignupFormSchema = z.object({
  name: z
    .string()
    .min(2, { message: "Name must be at least 2 characters long." })
    .trim(),
  surname: z
    .string()
    .min(2, { message: "Surname must be at least 2 characters long." })
    .trim(),
  email: z.email({ message: "Please enter a valid email." }).trim(),
  username: z
    .string()
    .min(3, { message: "Username must be at least 3 characters long." })
    .max(20, { message: "Username cannot exceed 20 characters." }),
  password: z
    .string()
    // .min(8, { message: 'Be at least 8 characters long' })
    // .regex(/[a-zA-Z]/, { message: 'Contain at least one letter.' })
    // .regex(/[0-9]/, { message: 'Contain at least one number.' })
    // .regex(/[^a-zA-Z0-9]/, {
    //   message: 'Contain at least one special character.',
    // })
    .trim(),
  confirmPassword: z.string().trim(),
});

export const LoginFormSchema = z.object({
  email: z.email({ message: "Please enter a valid email." }).trim(),
  password: z
    .string()
    // .min(8, { message: 'Password must be at least 8 characters long.' })
    .trim(),
});
