import React from 'react';
import { ShoppingCart } from 'lucide-react';
import { useSiteSettings } from '../hooks/useSiteSettings';

interface HeaderProps {
  cartItemsCount: number;
  onCartClick: () => void;
  onMenuClick: () => void;
}

const Header: React.FC<HeaderProps> = ({ cartItemsCount, onCartClick, onMenuClick }) => {
  const { siteSettings, loading } = useSiteSettings();

  return (
    <header className="sticky top-0 z-50 bg-coffee-white border-b-2 border-coffee-black shadow-lg backdrop-blur-sm">
      <div className="max-w-7xl mx-auto px-6">
        <div className="flex items-center justify-between h-20">
          <button 
            onClick={onMenuClick}
            className="flex items-center space-x-4 text-coffee-black hover:text-coffee-gray-600 transition-colors duration-200"
          >
            <div className="flex items-center space-x-4">
              {/* Logo Image */}
              {loading ? (
                <div className="w-16 h-16 bg-coffee-gray-200 rounded-full animate-pulse" />
              ) : (
                <img 
                  src={siteSettings?.site_logo || "/logo.jpg"} 
                  alt={siteSettings?.site_name || "Coffee Premium"}
                  className="w-16 h-16 rounded-full object-cover shadow-lg ring-2 ring-coffee-black"
                  onError={(e) => {
                    e.currentTarget.src = "/logo.jpg";
                  }}
                />
              )}
              
              {/* Text */}
              <div className="flex flex-col items-start">
                <div className="text-2xl font-bold text-coffee-black leading-none">
                  {loading ? (
                    <div className="w-24 h-6 bg-coffee-gray-200 rounded animate-pulse" />
                  ) : (
                    siteSettings?.site_name || "Coffee Premium"
                  )}
                </div>
                <div className="text-lg text-coffee-gray-600 font-medium">
                  Premium Coffee
                </div>
              </div>
            </div>
          </button>

          <div className="flex items-center space-x-4">
            <button 
              onClick={onCartClick}
              className="relative p-3 bg-coffee-black text-coffee-white rounded-xl hover:bg-coffee-gray-800 transition-all duration-200 shadow-lg hover:shadow-xl transform hover:scale-105"
            >
              <ShoppingCart className="h-6 w-6" />
              {cartItemsCount > 0 && (
                <span className="absolute -top-2 -right-2 bg-coffee-gray-600 text-coffee-white text-xs font-bold h-6 w-6 flex items-center justify-center rounded-full shadow-lg animate-pulse">
                  {cartItemsCount}
                </span>
              )}
            </button>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;