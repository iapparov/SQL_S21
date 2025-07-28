SELECT DISTINCT p.name
FROM person p
JOIN person_order ON person_order.person_id = p.id
ORDER BY 1;