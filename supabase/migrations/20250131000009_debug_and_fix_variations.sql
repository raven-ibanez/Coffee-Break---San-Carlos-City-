/*
  # Debug and Fix Size Variations
  
  This migration will:
  1. Check what variations currently exist
  2. Remove any existing size variations
  3. Add proper size variations for all drink categories
*/

-- First, let's see what variations currently exist (for debugging)
-- This will show in the Supabase logs
SELECT 
  mi.name as menu_item_name,
  mi.category,
  v.name as variation_name,
  v.price as variation_price
FROM menu_items mi
LEFT JOIN variations v ON mi.id = v.menu_item_id
WHERE mi.category IN ('milktea', 'cheesecake', 'latte', 'fruit-tea', 'iced-coffee')
ORDER BY mi.category, mi.name, v.name;

-- Remove any existing size variations to start fresh
DELETE FROM variations 
WHERE name IN ('16oz', '22oz') 
AND menu_item_id IN (
  SELECT id FROM menu_items 
  WHERE category IN ('milktea', 'cheesecake', 'latte', 'fruit-tea', 'iced-coffee')
);

-- Add size variations for Milktea items (16oz base + 22oz variation)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  10.00  -- +₱10 for larger size
FROM menu_items mi
WHERE mi.category = 'milktea'
ON CONFLICT DO NOTHING;

-- Add size variations for Cheesecake items (16oz base + 22oz variation)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  10.00  -- +₱10 for larger size
FROM menu_items mi
WHERE mi.category = 'cheesecake'
ON CONFLICT DO NOTHING;

-- Add size variations for Latte items (16oz base + 22oz variation)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  10.00  -- +₱10 for larger size
FROM menu_items mi
WHERE mi.category = 'latte'
ON CONFLICT DO NOTHING;

-- Add size variations for Fruit Teas items (16oz base + 22oz variation)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  10.00  -- +₱10 for larger size
FROM menu_items mi
WHERE mi.category = 'fruit-tea'
ON CONFLICT DO NOTHING;

-- Add size variations for Iced Coffee items (12oz base + 16oz variation)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '16oz',
  10.00  -- +₱10 for larger size
FROM menu_items mi
WHERE mi.category = 'iced-coffee'
ON CONFLICT DO NOTHING;

-- Verify the variations were added correctly
SELECT 
  mi.name as menu_item_name,
  mi.category,
  v.name as variation_name,
  v.price as variation_price,
  mi.base_price + v.price as total_price
FROM menu_items mi
JOIN variations v ON mi.id = v.menu_item_id
WHERE mi.category IN ('milktea', 'cheesecake', 'latte', 'fruit-tea', 'iced-coffee')
ORDER BY mi.category, mi.name, v.name;
