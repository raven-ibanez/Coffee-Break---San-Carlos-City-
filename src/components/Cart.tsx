import React from 'react';
import { Trash2, Plus, Minus, ArrowLeft } from 'lucide-react';
import { CartItem } from '../types';

interface CartProps {
  cartItems: CartItem[];
  updateQuantity: (id: string, quantity: number) => void;
  removeFromCart: (id: string) => void;
  clearCart: () => void;
  getTotalPrice: () => number;
  onContinueShopping: () => void;
  onCheckout: () => void;
}

const Cart: React.FC<CartProps> = ({
  cartItems,
  updateQuantity,
  removeFromCart,
  clearCart,
  getTotalPrice,
  onContinueShopping,
  onCheckout
}) => {
  if (cartItems.length === 0) {
    return (
      <div className="max-w-4xl mx-auto px-6 py-16">
        <div className="text-center py-20">
          <div className="card-coffee-warm p-12 mb-8">
            <div className="inline-block bg-gradient-to-br from-coffee-mocha to-coffee-espresso rounded-full p-4 mb-6">
              <span className="text-6xl text-coffee-cream">🛒</span>
            </div>
            <h2 className="text-2xl font-bold text-coffee-espresso mb-4">Your Cart is Empty</h2>
            <p className="text-coffee-mocha mb-8 font-light text-lg">Add some delicious items to get started!</p>
            <button
              onClick={onContinueShopping}
              className="btn-coffee text-lg px-8 py-4"
            >
              Browse Menu
            </button>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="max-w-4xl mx-auto px-6 py-12">
      <div className="flex items-center justify-between mb-12">
        <button
          onClick={onContinueShopping}
          className="flex items-center space-x-2 text-coffee-espresso hover:text-coffee-mocha transition-colors duration-200 btn-coffee-outline"
        >
          <ArrowLeft className="h-5 w-5" />
          <span className="font-semibold">Continue Shopping</span>
        </button>
        <h1 className="text-3xl font-bold text-coffee-espresso">Your Cart</h1>
        <button
          onClick={clearCart}
          className="text-coffee-espresso hover:text-coffee-mocha transition-colors duration-200 font-semibold btn-coffee-outline"
        >
          Clear All
        </button>
      </div>

      <div className="card-coffee overflow-hidden mb-8">
        {cartItems.map((item, index) => (
          <div key={item.id} className={`p-6 ${index !== cartItems.length - 1 ? 'border-b border-coffee-latte' : ''}`}>
            <div className="flex items-center justify-between">
              <div className="flex-1">
                <h3 className="text-lg font-bold text-coffee-espresso mb-2">{item.name}</h3>
                {item.selectedVariation && (
                  <p className="text-sm text-coffee-mocha mb-1 font-semibold">Size: {item.selectedVariation.name}</p>
                )}
                {item.selectedAddOns && item.selectedAddOns.length > 0 && (
                  <p className="text-sm text-coffee-mocha mb-1 font-semibold">
                    Add-ons: {item.selectedAddOns.map(addOn => 
                      addOn.quantity && addOn.quantity > 1 
                        ? `${addOn.name} x${addOn.quantity}`
                        : addOn.name
                    ).join(', ')}
                  </p>
                )}
                <p className="text-lg font-bold text-coffee-espresso">₱{item.totalPrice} each</p>
              </div>
              
              <div className="flex items-center space-x-4 ml-4">
                <div className="flex items-center space-x-3 bg-coffee-latte rounded-xl p-1 shadow-lg">
                  <button
                    onClick={() => updateQuantity(item.id, item.quantity - 1)}
                    className="p-2 hover:bg-coffee-mocha hover:text-coffee-cream rounded-lg transition-all duration-200"
                  >
                    <Minus className="h-4 w-4" />
                  </button>
                  <span className="font-bold text-coffee-espresso min-w-[32px] text-center">{item.quantity}</span>
                  <button
                    onClick={() => updateQuantity(item.id, item.quantity + 1)}
                    className="p-2 hover:bg-coffee-mocha hover:text-coffee-cream rounded-lg transition-all duration-200"
                  >
                    <Plus className="h-4 w-4" />
                  </button>
                </div>
                
                <div className="text-right">
                  <p className="text-lg font-bold text-coffee-espresso">₱{item.totalPrice * item.quantity}</p>
                </div>
                
                <button
                  onClick={() => removeFromCart(item.id)}
                  className="p-2 text-coffee-mocha hover:bg-coffee-mocha hover:text-coffee-cream rounded-lg transition-all duration-200"
                >
                  <Trash2 className="h-4 w-4" />
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>

      <div className="card-coffee-warm p-8">
        <div className="flex items-center justify-between text-2xl font-bold text-coffee-espresso mb-8">
          <span>Total:</span>
          <span>₱{parseFloat(getTotalPrice() || 0).toFixed(2)}</span>
        </div>
        
        <button
          onClick={onCheckout}
          className="w-full btn-coffee text-lg py-4"
        >
          Proceed to Checkout
        </button>
      </div>
    </div>
  );
};

export default Cart;