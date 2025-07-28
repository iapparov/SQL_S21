SELECT pz.name, COUNT(*) as count_of_orders, 
    ROUND(AVG(m.price), 2) as average_price, MAX(m.price) as max_price, 
    MIN(m.price) as min_price
From menu m
JOIN person_order po ON po.menu_id = m.id
JOIN pizzeria pz ON pz.id = m.pizzeria_id
GROUP BY pz.name
ORDER BY 1;