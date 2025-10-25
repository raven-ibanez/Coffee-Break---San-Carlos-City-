import React from 'react';

const Hero: React.FC = () => {
  return (
    <section className="relative bg-coffee-white py-24 px-6 overflow-hidden">
      {/* Background Pattern */}
      <div className="absolute inset-0 opacity-5">
        <div className="absolute top-10 left-10 w-32 h-32 bg-coffee-black rounded-full"></div>
        <div className="absolute top-32 right-20 w-24 h-24 bg-coffee-gray-600 rounded-full"></div>
        <div className="absolute bottom-20 left-1/4 w-16 h-16 bg-coffee-black rounded-full"></div>
        <div className="absolute bottom-32 right-1/3 w-20 h-20 bg-coffee-gray-600 rounded-full"></div>
      </div>
      
      <div className="max-w-6xl mx-auto relative z-10">
        <div className="text-center">
          <div className="mb-8">
            <div className="inline-block bg-coffee-black rounded-full p-4 mb-6 shadow-2xl">
              <span className="text-6xl text-coffee-white">☕</span>
            </div>
            <h1 className="text-5xl md:text-7xl font-bold text-coffee-black leading-tight mb-4">
              Welcome to
              <span className="block text-coffee-gray-600 mt-2">Coffee Break</span>
            </h1>
            <p className="text-xl text-coffee-gray-600 mb-12 max-w-3xl mx-auto font-light leading-relaxed">
              Experience the perfect blend of premium coffee, artisanal beverages, and warm hospitality. 
              Every cup tells a story of quality and passion.
            </p>
          </div>
          
          <div className="flex flex-col sm:flex-row gap-4 justify-center items-center">
            <button className="btn-coffee text-lg px-8 py-4">
              Explore Our Menu
            </button>
            <button className="btn-coffee-outline text-lg px-8 py-4">
              Learn More
            </button>
          </div>
          
          {/* Feature highlights */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-8 mt-16">
            <div className="card-coffee p-6 text-center">
              <div className="text-3xl mb-3">🌱</div>
              <h3 className="text-lg font-bold text-coffee-black mb-2">Fresh Beans</h3>
              <p className="text-coffee-gray-600 text-sm">Premium quality coffee beans sourced from the finest regions</p>
            </div>
            <div className="card-coffee p-6 text-center">
              <div className="text-3xl mb-3">👨‍🍳</div>
              <h3 className="text-lg font-bold text-coffee-black mb-2">Expert Baristas</h3>
              <p className="text-coffee-gray-600 text-sm">Skilled craftspeople who perfect every cup with passion</p>
            </div>
            <div className="card-coffee p-6 text-center">
              <div className="text-3xl mb-3">❤️</div>
              <h3 className="text-lg font-bold text-coffee-black mb-2">Warm Service</h3>
              <p className="text-coffee-gray-600 text-sm">Friendly atmosphere where every customer feels at home</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Hero;