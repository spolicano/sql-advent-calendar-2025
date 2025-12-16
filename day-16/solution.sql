SELECT 
  task_id,
  task_name,
  task_type,
  priority
FROM daily_tasks
WHERE task_type = 'Work From Home'
OR priority = 'Low';
