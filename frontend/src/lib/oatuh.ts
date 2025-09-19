export function handleGoogleLogin() {
  const url = new URL(`${process.env.NEXT_PUBLIC_API_URL}/auth/google/login`);
  window.location.href = url.toString();
}
