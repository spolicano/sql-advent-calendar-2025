SELECT initcap(item_name) as item_name, initcap(color) as color
FROM winter_clothing
WHERE item_name ILIKE '%sweater%';