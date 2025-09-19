import { NextResponse, type NextRequest } from 'next/server'

const protectedRoutes = ['/profile', '/dashboard']
const authRoutes = ['/login', '/register']

export function middleware(request: NextRequest) {  
  // Sadece cookie'yi kontrol et (optimistic)
  const sessionCookie = request.cookies.get('session')
  const isAuthenticated = !!sessionCookie
  
  const path = request.nextUrl.pathname

  // Protected route kontrolü
  if (!isAuthenticated && protectedRoutes.includes(path)) {
    console.log('🔒 Protected route erişimi engellendi')
    return NextResponse.redirect(new URL('/login', request.url))
  }

  // Auth route kontrolü
  if (isAuthenticated && authRoutes.includes(path)) {
    console.log('👤 Authenticated user auth route erişimi engellendi')
    return NextResponse.redirect(new URL('/', request.url))
  }

  return NextResponse.next()
}

export const config = {
  matcher: [
    '/profile',
    '/dashboard',
    '/login',
    '/register',
    '/((?!api|_next/static|_next/image|favicon.ico).*)'
  ]
}