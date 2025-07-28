SELECT pizza_name, pizzeria.name as pizzeria_name, price
FROM menu
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE menu.pizza_name IN ('mushroom pizza', 'pepperoni pizza')
ORDER BY 1,2