SELECT 
  MIN(behavior_score) AS lowest_score, 
  MAX(behavior_score) AS highest_score
FROM behavior_scores;
