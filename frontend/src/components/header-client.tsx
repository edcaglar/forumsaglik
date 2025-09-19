"use client";
import React, { useState } from "react";
import Link from "next/link";
import {
  Menu,
  X,
  User,
  Settings,
  LogOut,
  UserPlus,
  LogIn,
  Heart,
  Search,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { useRouter } from "next/navigation";
import { logoutClient } from "@/lib/auth-client";
import { SessionUser } from "@/types/auth";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";

type HeaderClientProps = { currentUser: SessionUser | null };

export default function HeaderClient({ currentUser }: HeaderClientProps) {
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const router = useRouter();

  const handleLogout = async () => {
    const result = await logoutClient();
    if (result.success) {
      router.push(result.redirect || "/login");
      router.refresh();
    }
  };

  const handleSearchButtonClick = () => {
    router.push("/search");
  };

  return (
    <header className="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-40 backdrop-blur-sm bg-white/95">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex justify-between items-center h-16">
          {/* Logo */}
          <div className="flex items-center">
            <Link href="/" className="flex items-center space-x-2">
              <div className="w-8 h-8 bg-gradient-to-br from-blue-500 to-green-500 rounded-lg flex items-center justify-center">
                <Heart className="h-5 w-5 text-white" />
              </div>
              <span className="text-xl font-bold text-gray-900">
                Forum Sağlık
              </span>
            </Link>
          </div>
          {/* Desktop Navigation */}
          <nav className="hidden md:flex items-center space-x-4">
            <div className="">
              <Button
                onClick={handleSearchButtonClick}
                variant="outline"
                className="px-4 py-2 bg-gray-50 border-gray-200 hover:bg-white hover:border-emerald-500 hover:text-emerald-600 rounded-full transition-all duration-200"
                aria-label="Arama sayfasına git"
              >
                <Search className="h-4 w-4 mr-2" />
                Ara
              </Button>
            </div>
            {currentUser ? (
              <>
                {/* User Menu */}
                <DropdownMenu>
                  <DropdownMenuTrigger asChild>
                    <Button
                      variant="ghost"
                      className="relative h-8 w-8 rounded-full"
                    >
                      <Avatar className="h-8 w-8">
                        <AvatarImage
                          src="/placeholder.svg"
                          alt={currentUser?.username || "User Avatar"}
                        />
                        <AvatarFallback>JD</AvatarFallback>
                      </Avatar>
                    </Button>
                  </DropdownMenuTrigger>
                  <DropdownMenuContent className="w-56" align="end" forceMount>
                    <div className="flex items-center justify-start gap-2 p-2">
                      <div className="flex flex-col space-y-1 leading-none">
                        <p className="font-medium">{currentUser?.name}</p>
                        <p className="w-[200px] truncate text-sm text-muted-foreground">
                          @{currentUser?.username}
                        </p>
                      </div>
                    </div>
                    <DropdownMenuSeparator />
                    <DropdownMenuItem asChild>
                      <Link href={`/profile/${currentUser?.username}`}>
                        <User className="mr-2 h-4 w-4" />
                        <span>Profil</span>
                      </Link>
                    </DropdownMenuItem>
                    <DropdownMenuItem asChild>
                      <Link href="/settings">
                        <Settings className="mr-2 h-4 w-4" />
                        <span>Ayarlar</span>
                      </Link>
                    </DropdownMenuItem>
                    <DropdownMenuSeparator />
                    <DropdownMenuItem onClick={handleLogout}>
                      <LogOut className="mr-2 h-4 w-4" />
                      Çıkış Yap
                    </DropdownMenuItem>
                  </DropdownMenuContent>
                </DropdownMenu>
              </>
            ) : (
              <>
                <Link href="/login" aria-label="Giriş sayfasına git">
                  <Button variant="outline" className="px-5">
                    <LogIn className="mr-2 h-4 w-4" />
                    Giriş Yap
                  </Button>
                </Link>

                <Link href="/register" aria-label="Kayıt ol sayfasına git">
                  <Button className="px-5 bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700 text-white shadow-md">
                    <UserPlus className="mr-2 h-4 w-4" />
                    Kayıt Ol
                  </Button>
                </Link>
              </>
            )}
          </nav>

          {/* Mobile menu button */}
          <div className="md:hidden">
            <Button
              variant="ghost"
              size="sm"
              onClick={() => setIsMobileMenuOpen(!isMobileMenuOpen)}
            >
              {isMobileMenuOpen ? (
                <X className="h-5 w-5" />
              ) : (
                <Menu className="h-5 w-5" />
              )}
            </Button>
          </div>
        </div>
      </div>

      {/* Mobile Navigation */}
      {isMobileMenuOpen && (
        <div>
          <div className="md:hidden border-t border-gray-200 bg-white">
            <div className="px-4 py-4 space-y-2">
              <Button
                onClick={handleSearchButtonClick}
                variant="outline"
                className="px-4 py-2 bg-gray-50 border-gray-200 hover:bg-white hover:border-emerald-500 hover:text-emerald-600 rounded-full transition-all duration-200"
                aria-label="Arama sayfasına git"
              >
                <Search className="h-4 w-4 mr-2" />
                Ara
              </Button>
              <Link href="/login" className="block">
                <Button variant="ghost" className="w-full justify-start">
                  <User className="h-4 w-4 mr-2" />
                  Giriş Yap
                </Button>
              </Link>
              <Link href="/register" className="block">
                <Button className="w-full bg-gradient-to-r from-blue-600 to-purple-600">
                  Kayıt Ol
                </Button>
              </Link>
            </div>
          </div>
        </div>
      )}
    </header>
  );
}
