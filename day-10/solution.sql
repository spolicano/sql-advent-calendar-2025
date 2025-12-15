SELECT 
  oven_id, ROUND(AVG(baking_time_minutes), 1)
FROM cookie_batches
GROUP BY oven_id;