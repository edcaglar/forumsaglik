import "@/app/globals.css";
import Header from "@/components/header";
import Footer from "@/components/footer";
import { Inter } from "next/font/google";
import type { Metadata } from "next";
import { Toaster } from "@/components/ui/sonner";

const inter = Inter({ subsets: ["latin"] });
export const metadata: Metadata = {
  title: "ForumSağlık - Sağlık Konularında Tartışma Platformu",
  description:
    "ForumSağlık, saç ekimi, sakatlık iyileşmesi ve sağlık optimizasyonu konularında deneyimlerin, tavsiyelerin ve desteğin paylaşıldığı bir topluluk platformudur. Sağlık yolculuğunuz burada başlıyor.",
};

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={inter.className}>
        <div className="min-h-screen bg-gradient-to-br from-gray-50 to-gray-100">
          <Header />
          {children}
          <Footer />
          <Toaster />
        </div>
      </body>
    </html>
  );
}
