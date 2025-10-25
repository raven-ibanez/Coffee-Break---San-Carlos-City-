/*
  # Remove Proper Size Variations
  
  This migration removes all the size variations that were added to drink items:
  - Removes 22oz variations from Milktea items
  - Removes 22oz variations from Cheesecake items
  - Removes 22oz variations from Latte items
  - Removes 22oz variations from Fruit Teas items
  - Removes 16oz variations from Iced Coffee items
*/

-- Remove size variations from Milktea items
DELETE FROM variations 
WHERE name = '22oz' 
AND menu_item_id IN (
  SELECT id FROM menu_items WHERE category = 'milktea'
);

-- Remove size variations from Cheesecake items
DELETE FROM variations 
WHERE name = '22oz' 
AND menu_item_id IN (
  SELECT id FROM menu_items WHERE category = 'cheesecake'
);

-- Remove size variations from Latte items
DELETE FROM variations 
WHERE name = '22oz' 
AND menu_item_id IN (
  SELECT id FROM menu_items WHERE category = 'latte'
);

-- Remove size variations from Fruit Teas items
DELETE FROM variations 
WHERE name = '22oz' 
AND menu_item_id IN (
  SELECT id FROM menu_items WHERE category = 'fruit-tea'
);

-- Remove size variations from Iced Coffee items
DELETE FROM variations 
WHERE name = '16oz' 
AND menu_item_id IN (
  SELECT id FROM menu_items WHERE category = 'iced-coffee'
);
