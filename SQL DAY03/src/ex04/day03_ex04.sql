SELECT pizzeria.name
FROM pizzeria
JOIN menu ON menu.pizzeria_id = pizzeria.id
JOIN person_order ON person_order.menu_id = menu.id
JOIN person ON person_order.person_id = person.id
GROUP BY pizzeria.name
HAVING 
    COUNT(DISTINCT CASE WHEN person.gender = 'male' THEN person.id ELSE NULL END) = 0
    OR
    COUNT(DISTINCT CASE WHEN person.gender = 'female' THEN person.id ELSE NULL END) = 0
ORDER BY pizzeria.name;