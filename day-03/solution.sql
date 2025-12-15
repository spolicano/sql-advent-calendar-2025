SELECT * 
FROM (
  SELECT *, ROW_NUMBER() OVER (
  PARTITION BY target_name
    ORDER BY evilness_score DESC, created_at DESC
  ) AS rn
  FROM grinch_prank_ideas
) ranked
WHERE rn = 1;