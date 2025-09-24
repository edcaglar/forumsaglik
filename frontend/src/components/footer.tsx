import Link from "next/link";
import { Heart, Mail, MapPin } from "lucide-react";

export default function Footer() {
  return (
    <footer className="bg-gradient-to-br from-slate-50 to-blue-50 border-t border-slate-200">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        {/* Main Footer Content */}
        <div className="py-6 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
          {/* Brand Section */}
          <div className="lg:col-span-1">
            <div className="flex items-center space-x-2 mb-4">
              <div className="w-8 h-8 bg-gradient-to-br from-blue-500 to-green-500 rounded-lg flex items-center justify-center">
                <Heart className="h-5 w-5 text-white" />
              </div>
              <span className="text-xl font-bold text-slate-800">
                Forum Sağlık
              </span>
            </div>
            <p className="text-slate-600 text-sm leading-relaxed mb-4">
              Sağlık konularında güvenilir bilgi paylaşımı ve topluluk desteği
              sunan Türkiye&apos;nin önde gelen sağlık forumu.
            </p>
          </div>

          {/* Quick Links */}
          <div>
            <h3 className="text-sm font-semibold text-slate-800 uppercase tracking-wider mb-4">
              Hızlı Bağlantılar
            </h3>
            <ul className="space-y-3">
              <li>
                <Link
                  href="/"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-blue-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Ana Sayfa
                </Link>
              </li>
              <li>
                <Link
                  href="/categories"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-blue-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Kategoriler
                </Link>
              </li>
              <li>
                <Link
                  href="/search"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-blue-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Arama
                </Link>
              </li>
            </ul>
          </div>

          {/* Legal & Info */}
          <div>
            <h3 className="text-sm font-semibold text-slate-800 uppercase tracking-wider mb-4">
              BİLGİ & YASAL
            </h3>
            <ul className="space-y-3">
              <li>
                <Link
                  href="/hakkimizda"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-green-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Hakkımızda
                </Link>
              </li>
              <li>
                <Link
                  href="/forum-kurallari"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-green-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Forum Kuralları
                </Link>
              </li>
              <li>
                <Link
                  href="/gizlilik-politikasi"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-green-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Gizlilik Politikası
                </Link>
              </li>
              <li>
                <Link
                  href="/hizmet-sartlari"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-green-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  Hizmet Şartları
                </Link>
              </li>
              <li>
                <Link
                  href="/iletisim"
                  className="text-slate-600 hover:text-blue-600 text-sm transition-colors duration-200 flex items-center group"
                >
                  <span className="w-1 h-1 bg-green-500 rounded-full mr-2 opacity-0 group-hover:opacity-100 transition-opacity duration-200"></span>
                  İletişim
                </Link>
              </li>
            </ul>
          </div>

          {/* Contact Info */}
          <div>
            <h3 className="text-sm font-semibold text-slate-800 uppercase tracking-wider mb-4">
              İLETİŞİM BİLGİLERİ
            </h3>
            <div className="space-y-3">
              <div className="flex items-start space-x-3">
                <div className="w-8 h-8 bg-white rounded-lg shadow-sm flex items-center justify-center flex-shrink-0 mt-0.5">
                  <Mail className="h-4 w-4 text-blue-600" />
                </div>
                <div>
                  <p className="text-xs text-slate-500 uppercase tracking-wide">
                    E-posta
                  </p>
                  <a
                    href="mailto:info@forumsaglik.com"
                    className="text-sm text-slate-700 hover:text-blue-600 transition-colors duration-200"
                  >
                    info@forumsaglik.com
                  </a>
                </div>
              </div>

              {/* <div className="flex items-start space-x-3">
                <div className="w-8 h-8 bg-white rounded-lg shadow-sm flex items-center justify-center flex-shrink-0 mt-0.5">
                  <Phone className="h-4 w-4 text-green-600" />
                </div>
                <div>
                  <p className="text-xs text-slate-500 uppercase tracking-wide">
                    Telefon
                  </p>
                  <a
                    href="tel:+902120000000"
                    className="text-sm text-slate-700 hover:text-green-600 transition-colors duration-200"
                  >
                    +90 (212) 000 00 00
                  </a>
                </div>
              </div> */}

              <div className="flex items-start space-x-3">
                <div className="w-8 h-8 bg-white rounded-lg shadow-sm flex items-center justify-center flex-shrink-0 mt-0.5">
                  <MapPin className="h-4 w-4 text-red-600" />
                </div>
                <div>
                  <p className="text-xs text-slate-500 uppercase tracking-wide">
                    Adres
                  </p>
                  <p className="text-sm text-slate-700 leading-relaxed">
                    Talatpaşa Mahallesi
                    <br />
                    Kağıthane
                    <br />
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>

        {/* Bottom Bar */}
        <div className="py-6 border-t border-slate-200">
          <div className="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
            <div className="flex items-center space-x-4 text-sm text-slate-600">
              <span>© 2025 Forum Sağlık. Tüm hakları saklıdır.</span>
              <span className="hidden md:inline">•</span>
              <span className="hidden md:inline">
                Türkiye&apos;nin güvenilir sağlık topluluğu
              </span>
            </div>

            <div className="flex items-center space-x-6 text-xs text-slate-500">
              <div className="flex items-center space-x-1">
                <div className="w-2 h-2 bg-green-500 rounded-full animate-pulse"></div>
                <span>Sistem Aktif</span>
              </div>
              <span>v2.1.0</span>
              <span>Son güncelleme: Ocak 2025</span>
            </div>
          </div>
        </div>
      </div>
    </footer>
  );
}
