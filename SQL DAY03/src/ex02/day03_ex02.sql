SELECT m.pizza_name, price, p.name as pizzeria_name
FROM menu as m
JOIN pizzeria as p ON p.id = m.pizzeria_id
WHERE m.id NOT IN (
    SELECT DISTINCT po.menu_id
    FROM person_order as po
)
ORDER BY 1, 2

-- display the names of pizzas from the pizzeria that no one has ordered, including the corresponding prices. The result should be sorted by pizza name and price. The sample output data is shown below.