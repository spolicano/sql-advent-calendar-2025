SELECT count(distinct flake_type)
FROM snowfall_log
WHERE fall_time::date = '2025-12-24';