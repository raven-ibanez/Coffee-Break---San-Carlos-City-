/*
  # Add Milktea Mix & Match Add-Ons (16oz)
  
  This migration adds mix and match add-ons to all milktea menu items:
  - Classic: ₱29
  - Okinawa: ₱49
  - Hokkaido: ₱49
  - Wintermelon: ₱49
  - Chocolate: ₱49
  - Matcha: ₱49
  - Red Velvet: ₱49
  - Bubble Gum: ₱49
  - Cookies & Cream: ₱49
  
  These add-ons will be applied to the milktea category only.
*/

-- Add mix & match add-ons to all Milktea items
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
WHERE mi.category = 'milktea'
ON CONFLICT DO NOTHING;
