/*
  # Create Promo Category and Mix and Match Item
  
  This migration creates:
  1. A "promo" category
  2. A "Mix and Match" promo item with "Buy Milktea Get Burger" for ₱78.00
*/

-- First, add the promo category
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('promo', 'Promo', '🎯', 99, true)
ON CONFLICT (id) DO NOTHING;

-- Add the Mix and Match promo item
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Mix and Match', 'Buy Milktea Get Burger', 78.00, 'promo', true, true, null)
ON CONFLICT DO NOTHING;
