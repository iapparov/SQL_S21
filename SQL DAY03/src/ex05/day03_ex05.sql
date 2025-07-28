WITH info_visits as 
(SELECT DISTINCT p.name as pizzeria_name, p.id as pizzeria_id
From pizzeria as p
JOIN menu as m ON m.pizzeria_id = p.id
JOIN person_visits as pv ON pv.pizzeria_id = p.id
JOIN person as pe ON pe.id = pv.person_id
WHERE pe.name = 'Andrey'),

info_orders as 
(SELECT DISTINCT p.name as pizzeria_name, p.id as pizzeria_id
From pizzeria as p
JOIN menu as m ON m.pizzeria_id = p.id
JOIN person_order as po ON po.menu_id = m.id
JOIN person as pe ON pe.id = po.person_id
WHERE pe.name = 'Andrey')

SELECT i_v.pizzeria_name
From info_visits as i_v
Left JOIN info_orders as i_o ON i_o.pizzeria_id = i_v.pizzeria_id
Where i_o.pizzeria_name is NULL



--Write an SQL statement that returns a list of pizzerias that Andrey visited but did not order from. Please order by the name of the pizzeria. The sample data is shown below.