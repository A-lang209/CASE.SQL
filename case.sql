--up to lvl 15: 1
--between 15 and 25: 2
--above 25: 3
SELECT name, level, level >= 20 As level_at_least_20,
CASE
  WHEN level < 15 THEN 1
  WHEN level < 25 THEN 2
  ELSE 3
END AS level_bucket
FROM fanatsy.characters
WHERE is_alive = true
