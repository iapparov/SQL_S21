SELECT m.pizza_name, m.price, p.name as pizzeria_name, pv.visit_date
FROM person_visits as pv
JOIN person as pe ON pe.id = pv.person_id
JOIN pizzeria as p ON pv.pizzeria_id = p.id
JOIN menu as m ON p.id = m.pizzeria_id
WHERE pe.name = 'Kate' AND price BETWEEN '800' AND '1000'
ORDER BY pizza_name ASC, price ASC, pizzeria_name ASC


-- pizza names, pizza prices, pizzeria names, and visit dates 
-- for Kate and for prices ranging from 800 to 1000 rubles. 
-- Please sort by pizza, price, and pizzeria name. See a sample of the data below.