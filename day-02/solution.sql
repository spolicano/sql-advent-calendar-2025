SELECT tp.toy_id, tp.toy_name
FROM toy_production tp 
LEFT JOIN toy_delivery td 
ON tp.toy_id = td.toy_id
WHERE td.delivery_date is not null;
