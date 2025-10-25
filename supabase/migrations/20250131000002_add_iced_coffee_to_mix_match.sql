/*
  # Add Iced Coffee Options to Mix and Match
  
  This migration adds iced coffee add-ons to the existing "Mix and Match" promo item:
  - Salted Caramel (16oz): ₱49
  - Dark Mocha (16oz): ₱49
  - French Vanilla (16oz): ₱49
  - Spanish Latte (16oz): ₱49
  - Hazelnut (16oz): ₱49
  - Coffee Caramel (16oz): ₱59
  - Espresso Latte (16oz): ₱59
*/

-- Add iced coffee add-ons to the "Mix and Match" promo item
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Salted Caramel (16oz)', 49.00, 'Iced Coffee'),
    ('Dark Mocha (16oz)', 49.00, 'Iced Coffee'),
    ('French Vanilla (16oz)', 49.00, 'Iced Coffee'),
    ('Spanish Latte (16oz)', 49.00, 'Iced Coffee'),
    ('Hazelnut (16oz)', 49.00, 'Iced Coffee'),
    ('Coffee Caramel (16oz)', 59.00, 'Iced Coffee'),
    ('Espresso Latte (16oz)', 59.00, 'Iced Coffee')
) AS addon(name, price, category)
WHERE mi.name = 'Mix and Match' AND mi.category = 'promo'
ON CONFLICT DO NOTHING;
