import React from 'react';
import { useCategories } from '../hooks/useCategories';

interface MobileNavProps {
  activeCategory: string;
  onCategoryClick: (categoryId: string) => void;
}

const MobileNav: React.FC<MobileNavProps> = ({ activeCategory, onCategoryClick }) => {
  const { categories } = useCategories();

  return (
    <div className="sticky top-16 z-40 bg-white/95 backdrop-blur-sm border-b-2 border-black md:hidden shadow-lg">
      <div className="flex overflow-x-auto scrollbar-hide px-4 py-4">
        {categories.map((category) => (
          <button
            key={category.id}
            onClick={() => onCategoryClick(category.id)}
            className={`flex-shrink-0 flex items-center px-6 py-3 rounded-xl mr-3 transition-all duration-300 font-medium ${
              activeCategory === category.id
                ? 'bg-black text-white shadow-lg transform scale-105'
                : 'bg-white text-black border-2 border-gray-300 hover:border-black hover:shadow-md'
            }`}
          >
            <span className="text-sm font-semibold whitespace-nowrap">{category.name}</span>
          </button>
        ))}
      </div>
    </div>
  );
};

export default MobileNav;