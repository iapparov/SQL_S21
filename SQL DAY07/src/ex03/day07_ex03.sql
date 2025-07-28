WITH visits AS
(SELECT pz.name, COUNT (pz.id) as total_count
FROM person_visits as pv
JOIN pizzeria pz ON pz.id = pv.pizzeria_id
GROUP BY pz.name),
orders AS 
(SELECT pz.name, COUNT (pz.id) as total_count
FROM person_order as po
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
GROUP BY pz.name)
SELECT all_data.name, SUM(total_count)
FROM (SELECT *
FROM orders
UNION ALL
SELECT *
FROM visits) as all_data
GROUP BY all_data.name
ORDER BY 2 DESC