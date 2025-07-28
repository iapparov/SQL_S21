SELECT p.name, COUNT(*) as count_of_visits
FROM person_visits as pv
JOIN person p ON p.id = pv.person_id
GROUP BY p.name
ORDER BY 2 DESC, 1;