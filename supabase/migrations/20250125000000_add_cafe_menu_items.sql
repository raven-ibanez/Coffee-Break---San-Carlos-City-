/*
  # Add Cafe Menu Items
  
  This migration adds comprehensive menu items for a cafe/restaurant including:
  - Fruit Yogurt (22oz)
  - Cheesecake (16oz / 22oz)
  - Iced Coffee (12oz / 16oz)
  - Milktea (16oz / 22oz)
  - Latte (16oz / 22oz)
  - Fruit Teas (16oz / 22oz)
  - Frappe (22oz)
  - Premium Iced Coffee (16oz / 22oz)
  - Thai Sticky Milk (16oz)
  - Hot Coffee (12oz)
  - Foods and Add-Ons
*/

-- First, add the new categories for the cafe menu
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('fruit-yogurt', 'Fruit Yogurt', '🥤', 1, true),
  ('cheesecake', 'Cheesecake', '🍰', 2, true),
  ('milktea', 'Milktea', '🧋', 3, true),
  ('latte', 'Latte', '☕', 4, true),
  ('fruit-tea', 'Fruit Tea', '🍵', 5, true),
  ('frappe', 'Frappe', '🥤', 6, true),
  ('premium-iced-coffee', 'Premium Iced Coffee', '☕', 7, true),
  ('thai-sticky-milk', 'Thai Sticky Milk', '🥛', 8, true)
ON CONFLICT (id) DO NOTHING;

-- Insert Fruit Yogurt items (22oz)
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Green Apple Yogurt', 'Refreshing green apple yogurt drink', 79, 'fruit-yogurt', false, 'https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Four Season Yogurt', 'Mixed seasonal fruit yogurt drink', 79, 'fruit-yogurt', false, 'https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Blueberry Yogurt', 'Sweet blueberry yogurt drink', 79, 'fruit-yogurt', false, 'https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Strawberry Yogurt', 'Fresh strawberry yogurt drink', 79, 'fruit-yogurt', false, 'https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Lychee Yogurt', 'Exotic lychee yogurt drink', 79, 'fruit-yogurt', false, 'https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Blue Lemonade Yogurt', 'Tangy blue lemonade yogurt drink', 79, 'fruit-yogurt', false, 'https://images.pexels.com/photos/1435735/pexels-photo-1435735.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Cheesecake items with variations
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Classic Cheesecake', 'Traditional New York style cheesecake', 39, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Okinawa Cheesecake', 'Japanese style cheesecake with brown sugar', 59, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Hokkaido Cheesecake', 'Creamy Hokkaido milk cheesecake', 59, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Wintermelon Cheesecake', 'Refreshing wintermelon flavored cheesecake', 59, 'cheesecake', false, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Chocolate Cheesecake', 'Rich chocolate cheesecake', 59, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Matcha Cheesecake', 'Japanese green tea cheesecake', 59, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Red Velvet Cheesecake', 'Classic red velvet cheesecake', 59, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Bubble Gum Cheesecake', 'Fun bubble gum flavored cheesecake', 59, 'cheesecake', false, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Cookies & Cream Cheesecake', 'Oreo cookies and cream cheesecake', 59, 'cheesecake', true, 'https://images.pexels.com/photos/45202/brownie-dessert-cake-sweet-45202.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Iced Coffee items with variations
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Salted Caramel Iced Coffee', 'Rich iced coffee with salted caramel flavor', 49, 'iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Dark Mocha Iced Coffee', 'Intense dark chocolate mocha iced coffee', 49, 'iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'French Vanilla Iced Coffee', 'Smooth vanilla flavored iced coffee', 49, 'iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Spanish Latte Iced Coffee', 'Traditional Spanish style iced latte', 49, 'iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Hazelnut Iced Coffee', 'Nutty hazelnut flavored iced coffee', 49, 'iced-coffee', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Coffee Caramel Iced Coffee', 'Sweet caramel flavored iced coffee', 59, 'iced-coffee', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Espresso Latte Iced Coffee', 'Strong espresso iced latte', 59, 'iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Milktea items with variations
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Classic Milktea', 'Traditional Taiwanese milk tea', 29, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Okinawa Milktea', 'Brown sugar Okinawa milk tea', 49, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Hokkaido Milktea', 'Creamy Hokkaido milk tea', 49, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Wintermelon Milktea', 'Refreshing wintermelon milk tea', 49, 'milktea', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Chocolate Milktea', 'Rich chocolate milk tea', 49, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Matcha Milktea', 'Japanese green tea milk tea', 49, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Red Velvet Milktea', 'Red velvet flavored milk tea', 49, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Bubble Gum Milktea', 'Fun bubble gum flavored milk tea', 49, 'milktea', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Cookies & Cream Milktea', 'Oreo cookies and cream milk tea', 49, 'milktea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Latte items with variations
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Blueberry Latte', 'Fruity blueberry flavored latte', 59, 'latte', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Strawberry Latte', 'Sweet strawberry flavored latte', 59, 'latte', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Mango Latte', 'Tropical mango flavored latte', 59, 'latte', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Melon Latte', 'Refreshing melon flavored latte', 59, 'latte', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Avocado Latte', 'Creamy avocado flavored latte', 59, 'latte', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Mixed Berries Latte', 'Mixed berry flavored latte', 59, 'latte', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Ube Latte', 'Purple yam flavored latte', 59, 'latte', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Buko Pandan Latte', 'Coconut pandan flavored latte', 59, 'latte', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Fruit Teas with variations
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Apple Green Tea', 'Fresh apple green tea', 59, 'fruit-tea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Passion Fruit Tea', 'Tropical passion fruit tea', 59, 'fruit-tea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Four Season Fruit Tea', 'Mixed seasonal fruit tea', 59, 'fruit-tea', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Strawberry Fruit Tea', 'Sweet strawberry fruit tea', 59, 'fruit-tea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Lychee Fruit Tea', 'Exotic lychee fruit tea', 59, 'fruit-tea', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Frappe items (22oz)
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Taro Frappe', 'Purple taro flavored frappe', 89, 'frappe', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Bubble Gum Frappe', 'Fun bubble gum frappe', 89, 'frappe', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Melon Frappe', 'Refreshing melon frappe', 89, 'frappe', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Ube Frappe', 'Purple yam frappe', 89, 'frappe', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Avocado Frappe', 'Creamy avocado frappe', 89, 'frappe', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Premium Iced Coffee items
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Caramel Macchiato Iced Coffee', 'Premium caramel macchiato iced coffee', 69, 'premium-iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Roasted Coffee Jelly Iced Coffee', 'Coffee jelly iced coffee', 69, 'premium-iced-coffee', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Cappuccino Cheesecake Iced Coffee', 'Cheesecake flavored iced coffee', 69, 'premium-iced-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Thai Sticky Milk items (16oz)
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Strawberry Thai Sticky Milk', 'Thai style strawberry sticky milk', 69, 'thai-sticky-milk', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Ube Thai Sticky Milk', 'Purple yam Thai sticky milk', 69, 'thai-sticky-milk', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Melon Thai Sticky Milk', 'Refreshing melon Thai sticky milk', 69, 'thai-sticky-milk', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Mango Thai Sticky Milk', 'Tropical mango Thai sticky milk', 69, 'thai-sticky-milk', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Choco Fudge Thai Sticky Milk', 'Chocolate fudge Thai sticky milk', 69, 'thai-sticky-milk', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Avocado Thai Sticky Milk', 'Creamy avocado Thai sticky milk', 69, 'thai-sticky-milk', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Hot Coffee items (12oz)
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Coffee Latte Hot', 'Traditional hot coffee latte', 59, 'hot-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'French Vanilla Hot Coffee', 'Vanilla flavored hot coffee', 59, 'hot-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Cappuccino Hot', 'Traditional Italian cappuccino', 59, 'hot-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Caramel Macchiato Hot', 'Hot caramel macchiato', 59, 'hot-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Hazelnut Hot Coffee', 'Nutty hazelnut hot coffee', 59, 'hot-coffee', false, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Matcha Hot Coffee', 'Green tea hot coffee', 59, 'hot-coffee', true, 'https://images.pexels.com/photos/302899/pexels-photo-302899.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Insert Food items
INSERT INTO menu_items (id, name, description, base_price, category, popular, image_url) VALUES
  (gen_random_uuid(), 'Fries', 'Crispy golden french fries', 69, 'food', true, 'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Nachos', 'Loaded nachos with cheese and toppings', 59, 'food', true, 'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Regular Burger', 'Classic beef burger', 39, 'food', true, 'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Classic Cheese Burger', 'Beef burger with cheese', 49, 'food', true, 'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg?auto=compress&cs=tinysrgb&w=800'),
  (gen_random_uuid(), 'Burger Overload', 'Loaded burger with all toppings', 89, 'food', true, 'https://images.pexels.com/photos/115740/pexels-photo-115740.jpeg?auto=compress&cs=tinysrgb&w=800');

-- Now add variations for items that have size options
-- Get menu item IDs and add variations for cheesecake (16oz/22oz)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  CASE 
    WHEN mi.name = 'Classic Cheesecake' THEN 10
    WHEN mi.name = 'Okinawa Cheesecake' THEN 10
    WHEN mi.name = 'Hokkaido Cheesecake' THEN 10
    WHEN mi.name = 'Wintermelon Cheesecake' THEN 10
    WHEN mi.name = 'Chocolate Cheesecake' THEN 10
    WHEN mi.name = 'Matcha Cheesecake' THEN 10
    WHEN mi.name = 'Red Velvet Cheesecake' THEN 10
    WHEN mi.name = 'Bubble Gum Cheesecake' THEN 10
    WHEN mi.name = 'Cookies & Cream Cheesecake' THEN 10
  END
FROM menu_items mi
WHERE mi.category = 'cheesecake'
  AND CASE 
    WHEN mi.name = 'Classic Cheesecake' THEN 10
    WHEN mi.name = 'Okinawa Cheesecake' THEN 10
    WHEN mi.name = 'Hokkaido Cheesecake' THEN 10
    WHEN mi.name = 'Wintermelon Cheesecake' THEN 10
    WHEN mi.name = 'Chocolate Cheesecake' THEN 10
    WHEN mi.name = 'Matcha Cheesecake' THEN 10
    WHEN mi.name = 'Red Velvet Cheesecake' THEN 10
    WHEN mi.name = 'Bubble Gum Cheesecake' THEN 10
    WHEN mi.name = 'Cookies & Cream Cheesecake' THEN 10
  END IS NOT NULL;

-- Add variations for iced coffee (12oz/16oz)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '16oz',
  CASE 
    WHEN mi.name = 'Salted Caramel Iced Coffee' THEN 10
    WHEN mi.name = 'Dark Mocha Iced Coffee' THEN 10
    WHEN mi.name = 'French Vanilla Iced Coffee' THEN 10
    WHEN mi.name = 'Spanish Latte Iced Coffee' THEN 10
    WHEN mi.name = 'Hazelnut Iced Coffee' THEN 10
  END
FROM menu_items mi
WHERE mi.category = 'iced-coffee'
  AND CASE 
    WHEN mi.name = 'Salted Caramel Iced Coffee' THEN 10
    WHEN mi.name = 'Dark Mocha Iced Coffee' THEN 10
    WHEN mi.name = 'French Vanilla Iced Coffee' THEN 10
    WHEN mi.name = 'Spanish Latte Iced Coffee' THEN 10
    WHEN mi.name = 'Hazelnut Iced Coffee' THEN 10
  END IS NOT NULL;

-- Add variations for milktea (16oz/22oz)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  CASE 
    WHEN mi.name = 'Classic Milktea' THEN 10
    WHEN mi.name = 'Okinawa Milktea' THEN 10
    WHEN mi.name = 'Hokkaido Milktea' THEN 10
    WHEN mi.name = 'Wintermelon Milktea' THEN 10
    WHEN mi.name = 'Chocolate Milktea' THEN 10
    WHEN mi.name = 'Matcha Milktea' THEN 10
    WHEN mi.name = 'Red Velvet Milktea' THEN 10
    WHEN mi.name = 'Bubble Gum Milktea' THEN 10
    WHEN mi.name = 'Cookies & Cream Milktea' THEN 10
  END
FROM menu_items mi
WHERE mi.category = 'milktea'
  AND CASE 
    WHEN mi.name = 'Classic Milktea' THEN 10
    WHEN mi.name = 'Okinawa Milktea' THEN 10
    WHEN mi.name = 'Hokkaido Milktea' THEN 10
    WHEN mi.name = 'Wintermelon Milktea' THEN 10
    WHEN mi.name = 'Chocolate Milktea' THEN 10
    WHEN mi.name = 'Matcha Milktea' THEN 10
    WHEN mi.name = 'Red Velvet Milktea' THEN 10
    WHEN mi.name = 'Bubble Gum Milktea' THEN 10
    WHEN mi.name = 'Cookies & Cream Milktea' THEN 10
  END IS NOT NULL;

-- Add variations for latte (16oz/22oz)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  CASE 
    WHEN mi.name = 'Blueberry Latte' THEN 10
    WHEN mi.name = 'Strawberry Latte' THEN 10
    WHEN mi.name = 'Mango Latte' THEN 10
    WHEN mi.name = 'Melon Latte' THEN 10
    WHEN mi.name = 'Avocado Latte' THEN 10
    WHEN mi.name = 'Mixed Berries Latte' THEN 10
    WHEN mi.name = 'Ube Latte' THEN 10
    WHEN mi.name = 'Buko Pandan Latte' THEN 10
  END
FROM menu_items mi
WHERE mi.category = 'latte'
  AND CASE 
    WHEN mi.name = 'Blueberry Latte' THEN 10
    WHEN mi.name = 'Strawberry Latte' THEN 10
    WHEN mi.name = 'Mango Latte' THEN 10
    WHEN mi.name = 'Melon Latte' THEN 10
    WHEN mi.name = 'Avocado Latte' THEN 10
    WHEN mi.name = 'Mixed Berries Latte' THEN 10
    WHEN mi.name = 'Ube Latte' THEN 10
    WHEN mi.name = 'Buko Pandan Latte' THEN 10
  END IS NOT NULL;

-- Add variations for fruit tea (16oz/22oz)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  CASE 
    WHEN mi.name = 'Apple Green Tea' THEN 10
    WHEN mi.name = 'Passion Fruit Tea' THEN 10
    WHEN mi.name = 'Four Season Fruit Tea' THEN 10
    WHEN mi.name = 'Strawberry Fruit Tea' THEN 10
    WHEN mi.name = 'Lychee Fruit Tea' THEN 10
  END
FROM menu_items mi
WHERE mi.category = 'fruit-tea'
  AND CASE 
    WHEN mi.name = 'Apple Green Tea' THEN 10
    WHEN mi.name = 'Passion Fruit Tea' THEN 10
    WHEN mi.name = 'Four Season Fruit Tea' THEN 10
    WHEN mi.name = 'Strawberry Fruit Tea' THEN 10
    WHEN mi.name = 'Lychee Fruit Tea' THEN 10
  END IS NOT NULL;

-- Add variations for premium iced coffee (16oz/22oz)
INSERT INTO variations (menu_item_id, name, price)
SELECT 
  mi.id,
  '22oz',
  CASE 
    WHEN mi.name = 'Caramel Macchiato Iced Coffee' THEN 0
    WHEN mi.name = 'Roasted Coffee Jelly Iced Coffee' THEN 0
    WHEN mi.name = 'Cappuccino Cheesecake Iced Coffee' THEN 0
  END
FROM menu_items mi
WHERE mi.category = 'premium-iced-coffee'
  AND CASE 
    WHEN mi.name = 'Caramel Macchiato Iced Coffee' THEN 0
    WHEN mi.name = 'Roasted Coffee Jelly Iced Coffee' THEN 0
    WHEN mi.name = 'Cappuccino Cheesecake Iced Coffee' THEN 0
  END IS NOT NULL;

-- Add some common add-ons for beverages
INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Extra Ice',
  0,
  'extras'
FROM menu_items mi
WHERE mi.category IN ('iced-coffee', 'milktea', 'latte', 'fruit-tea', 'frappe', 'premium-iced-coffee', 'thai-sticky-milk');

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Less Ice',
  0,
  'extras'
FROM menu_items mi
WHERE mi.category IN ('iced-coffee', 'milktea', 'latte', 'fruit-tea', 'frappe', 'premium-iced-coffee', 'thai-sticky-milk');

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Extra Sugar',
  0,
  'extras'
FROM menu_items mi
WHERE mi.category IN ('iced-coffee', 'milktea', 'latte', 'fruit-tea', 'frappe', 'premium-iced-coffee', 'thai-sticky-milk');

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Less Sugar',
  0,
  'extras'
FROM menu_items mi
WHERE mi.category IN ('iced-coffee', 'milktea', 'latte', 'fruit-tea', 'frappe', 'premium-iced-coffee', 'thai-sticky-milk');

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Pearls',
  10,
  'toppings'
FROM menu_items mi
WHERE mi.category IN ('milktea', 'latte', 'fruit-tea', 'thai-sticky-milk');

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Jelly',
  10,
  'toppings'
FROM menu_items mi
WHERE mi.category IN ('milktea', 'latte', 'fruit-tea', 'thai-sticky-milk');

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Pudding',
  15,
  'toppings'
FROM menu_items mi
WHERE mi.category IN ('milktea', 'latte', 'fruit-tea', 'thai-sticky-milk');

-- Add add-ons for food items
INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Extra Cheese',
  10,
  'toppings'
FROM menu_items mi
WHERE mi.category = 'food';

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Extra Bacon',
  15,
  'toppings'
FROM menu_items mi
WHERE mi.category = 'food';

INSERT INTO add_ons (menu_item_id, name, price, category)
SELECT 
  mi.id,
  'Extra Sauce',
  5,
  'toppings'
FROM menu_items mi
WHERE mi.category = 'food';
