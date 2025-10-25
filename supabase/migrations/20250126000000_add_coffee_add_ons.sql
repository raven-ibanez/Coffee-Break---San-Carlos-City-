/*
  # Add Coffee Add-Ons
  
  This migration adds common add-ons to all coffee-related menu items:
  - Espresso Shots: ₱10
  - Caramel Syrup: ₱12
  - Choco Syrup: ₱12
  - Cheesecake: ₱15
  - Pearl: ₱10
  - Nata: ₱10
  - Fruit Jelly: ₱10
  - Oreo: ₱10
  
  These add-ons will be applied to all coffee categories:
  - hot-coffee
  - iced-coffee
  - latte
  - premium-iced-coffee
  - frappe
*/

-- Add add-ons to all Hot Coffee items
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Espresso Shots', 10.00, 'Coffee Add-ons'),
    ('Caramel Syrup', 12.00, 'Coffee Add-ons'),
    ('Choco Syrup', 12.00, 'Coffee Add-ons'),
    ('Cheesecake', 15.00, 'Coffee Add-ons'),
    ('Pearl', 10.00, 'Coffee Add-ons'),
    ('Nata', 10.00, 'Coffee Add-ons'),
    ('Fruit Jelly', 10.00, 'Coffee Add-ons'),
    ('Oreo', 10.00, 'Coffee Add-ons')
) AS addon(name, price, category)
WHERE mi.category = 'hot-coffee'
ON CONFLICT DO NOTHING;

-- Add add-ons to all Iced Coffee items
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Espresso Shots', 10.00, 'Coffee Add-ons'),
    ('Caramel Syrup', 12.00, 'Coffee Add-ons'),
    ('Choco Syrup', 12.00, 'Coffee Add-ons'),
    ('Cheesecake', 15.00, 'Coffee Add-ons'),
    ('Pearl', 10.00, 'Coffee Add-ons'),
    ('Nata', 10.00, 'Coffee Add-ons'),
    ('Fruit Jelly', 10.00, 'Coffee Add-ons'),
    ('Oreo', 10.00, 'Coffee Add-ons')
) AS addon(name, price, category)
WHERE mi.category = 'iced-coffee'
ON CONFLICT DO NOTHING;

-- Add add-ons to all Latte items
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Espresso Shots', 10.00, 'Coffee Add-ons'),
    ('Caramel Syrup', 12.00, 'Coffee Add-ons'),
    ('Choco Syrup', 12.00, 'Coffee Add-ons'),
    ('Cheesecake', 15.00, 'Coffee Add-ons'),
    ('Pearl', 10.00, 'Coffee Add-ons'),
    ('Nata', 10.00, 'Coffee Add-ons'),
    ('Fruit Jelly', 10.00, 'Coffee Add-ons'),
    ('Oreo', 10.00, 'Coffee Add-ons')
) AS addon(name, price, category)
WHERE mi.category = 'latte'
ON CONFLICT DO NOTHING;

-- Add add-ons to all Premium Iced Coffee items
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Espresso Shots', 10.00, 'Coffee Add-ons'),
    ('Caramel Syrup', 12.00, 'Coffee Add-ons'),
    ('Choco Syrup', 12.00, 'Coffee Add-ons'),
    ('Cheesecake', 15.00, 'Coffee Add-ons'),
    ('Pearl', 10.00, 'Coffee Add-ons'),
    ('Nata', 10.00, 'Coffee Add-ons'),
    ('Fruit Jelly', 10.00, 'Coffee Add-ons'),
    ('Oreo', 10.00, 'Coffee Add-ons')
) AS addon(name, price, category)
WHERE mi.category = 'premium-iced-coffee'
ON CONFLICT DO NOTHING;

-- Add add-ons to all Frappe items
INSERT INTO add_ons (menu_item_id, name, price, category) 
SELECT 
  mi.id,
  addon.name,
  addon.price,
  addon.category
FROM menu_items mi
CROSS JOIN (
  VALUES 
    ('Espresso Shots', 10.00, 'Coffee Add-ons'),
    ('Caramel Syrup', 12.00, 'Coffee Add-ons'),
    ('Choco Syrup', 12.00, 'Coffee Add-ons'),
    ('Cheesecake', 15.00, 'Coffee Add-ons'),
    ('Pearl', 10.00, 'Coffee Add-ons'),
    ('Nata', 10.00, 'Coffee Add-ons'),
    ('Fruit Jelly', 10.00, 'Coffee Add-ons'),
    ('Oreo', 10.00, 'Coffee Add-ons')
) AS addon(name, price, category)
WHERE mi.category = 'frappe'
ON CONFLICT DO NOTHING;
