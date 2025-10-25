/*
  # Add Correct Size Variations for All Drink Categories
  
  This migration adds proper size variations to all drink items:
  
  2-Size Drinks (16oz and 22oz):
  - Milktea: 16oz (base) + 22oz (+₱10)
  - Cheesecake: 16oz (base) + 22oz (+₱10)
  - Latte: 16oz (base) + 22oz (+₱10)
  - Fruit Teas: 16oz (base) + 22oz (+₱10)
  
  Iced Coffee (12oz and 16oz):
  - Iced Coffee: 12oz (base) + 16oz (+₱10)
*/

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
