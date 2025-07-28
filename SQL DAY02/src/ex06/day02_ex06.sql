SELECT m.pizza_name as pizza_name, p.name as pizzeria_name
FROM person_order as po
JOIN menu as m ON po.menu_id = m.id
JOIN pizzeria as p ON m.pizzeria_id = p.id
JOIN person as pe ON pe.id = po.person_id
WHERE pe.name IN ('Anna', 'Denis')
ORDER BY 1,2

