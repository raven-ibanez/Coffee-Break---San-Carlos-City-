/*
  # Add Milktea Mix & Match Add-Ons to Promo Item
  
  This migration adds mix and match milktea add-ons to the existing "Mix and Match" promo item:
  - Classic (16oz): ₱29
  - Okinawa (16oz): ₱49
  - Hokkaido (16oz): ₱49
  - Wintermelon (16oz): ₱49
  - Chocolate (16oz): ₱49
  - Matcha (16oz): ₱49
  - Red Velvet (16oz): ₱49
  - Bubble Gum (16oz): ₱49
  - Cookies & Cream (16oz): ₱49
*/

-- Add mix & match milktea add-ons to the "Mix and Match" promo item
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Classic (16oz)', 29.00, 'Mix & Match'),
    ('Okinawa (16oz)', 49.00, 'Mix & Match'),
    ('Hokkaido (16oz)', 49.00, 'Mix & Match'),
    ('Wintermelon (16oz)', 49.00, 'Mix & Match'),
    ('Chocolate (16oz)', 49.00, 'Mix & Match'),
    ('Matcha (16oz)', 49.00, 'Mix & Match'),
    ('Red Velvet (16oz)', 49.00, 'Mix & Match'),
    ('Bubble Gum (16oz)', 49.00, 'Mix & Match'),
    ('Cookies & Cream (16oz)', 49.00, 'Mix & Match')
) AS addon(name, price, category)
WHERE mi.name = 'Mix and Match' AND mi.category = 'promo'
ON CONFLICT DO NOTHING;
