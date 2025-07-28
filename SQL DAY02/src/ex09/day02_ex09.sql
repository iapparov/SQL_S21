SELECT DISTINCT pe.name
From person as pe
JOIN person_order as po ON po.person_id = pe.id
JOIN menu as m ON m.id = po.menu_id
WHERE pe.gender = 'female' AND m.pizza_name = 'pepperoni pizza' and pe.name IN (
    SELECT pe1.name
    From person as pe1
    JOIN person_order as po1 ON po1.person_id = pe1.id
    JOIN menu as m1 ON m1.id = po1.menu_id
    WHERE m1.pizza_name = 'cheese pizza'
)
ORDER BY 1