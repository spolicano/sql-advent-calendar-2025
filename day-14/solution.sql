SELECT 
  member_id, 
  member_name, 
  start_date, 
  (start_date + INTERVAL '14 days')::DATE AS focus_end_date
FROM focus_challenges;
