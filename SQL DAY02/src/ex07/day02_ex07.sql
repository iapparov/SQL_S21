SELECT p.name
FROM person as pe
JOIN person_visits as pv ON pv.person_id = pe.id
JOIN pizzeria as p ON p.id = pv.pizzeria_id
JOIN menu as m ON m.pizzeria_id = p.id
WHERE m.price<800 AND pv.visit_date = '2022-01-08' AND pe.name = 'Dmitriy'
