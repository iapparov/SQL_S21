WITH pizzerias1 AS 
(
    SELECT m.pizza_name, m.price, p.name as pizzeria_name1
    From menu as m
    JOIN pizzeria as p ON p.id = m.pizzeria_id
), 
pizzerias2 AS 
(
    SELECT m.pizza_name, m.price, p.name as pizzeria_name2
    From menu as m
    JOIN pizzeria as p ON p.id = m.pizzeria_id
)
SELECT p1.pizza_name, p1.pizzeria_name1, p2.pizzeria_name2, p1.price
From pizzerias1 as p1
JOIN pizzerias2 as p2 ON p1.price = p2.price AND p1.pizza_name = p2.pizza_name AND p1.pizzeria_name1 < p2.pizzeria_name2
ORDER BY p1.pizza_name


--Find the same pizza names that have the same price, but from different pizzerias. Make sure that the result is ordered by pizza name. The data sample is shown below. Please make sure that your column names match the column names below.