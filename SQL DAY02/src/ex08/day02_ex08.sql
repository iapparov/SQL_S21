SELECT DISTINCT pe.name
FROM person as pe
JOIN person_order as po ON po.person_id = pe.id
JOIN menu as m ON m.id = po.menu_id
WHERE pe.gender = 'male' AND (pe.address = 'Moscow' or pe.address = 'Samara') 
    AND (m.pizza_name = 'mushroom pizza' OR m.pizza_name ='pepperoni pizza')
ORDER BY 1 DESC