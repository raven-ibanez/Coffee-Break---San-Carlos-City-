/*
  # Remove Milktea Mix & Match Add-Ons
  
  This migration removes all mix & match add-ons from milktea menu items.
  This will clean up any mix & match add-ons that may have been added previously.
*/

-- Remove all mix & match add-ons from milktea items
DELETE FROM add_ons 
WHERE category = 'Mix & Match' 
AND menu_item_id IN (
  SELECT id FROM menu_items WHERE category = 'milktea'
);
