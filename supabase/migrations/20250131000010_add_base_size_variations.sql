/*
  # Add Base Size Variations for All Drink Categories
  
  This migration adds base size variations (16oz for most drinks, 12oz for iced coffee)
  so customers can choose between two sizes:
  
  2-Size Drinks (16oz and 22oz):
  - Milktea: 16oz (base) + 22oz (+₱10)
  - Cheesecake: 16oz (base) + 22oz (+₱10)
  - Latte: 16oz (base) + 22oz (+₱10)
  - Fruit Teas: 16oz (base) + 22oz (+₱10)
  
  Iced Coffee (12oz and 16oz):
  - Iced Coffee: 12oz (base) + 16oz (+₱10)
*/

-- Add base size variations for Milktea items (16oz base)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '16oz',
  0.00  -- Base size, no additional cost
FROM menu_items mi
WHERE mi.category = 'milktea'
ON CONFLICT DO NOTHING;

-- Add base size variations for Cheesecake items (16oz base)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '16oz',
  0.00  -- Base size, no additional cost
FROM menu_items mi
WHERE mi.category = 'cheesecake'
ON CONFLICT DO NOTHING;

-- Add base size variations for Latte items (16oz base)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '16oz',
  0.00  -- Base size, no additional cost
FROM menu_items mi
WHERE mi.category = 'latte'
ON CONFLICT DO NOTHING;

-- Add base size variations for Fruit Teas items (16oz base)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '16oz',
  0.00  -- Base size, no additional cost
FROM menu_items mi
WHERE mi.category = 'fruit-tea'
ON CONFLICT DO NOTHING;

-- Add base size variations for Iced Coffee items (12oz base)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '12oz',
  0.00  -- Base size, no additional cost
FROM menu_items mi
WHERE mi.category = 'iced-coffee'
ON CONFLICT DO NOTHING;
