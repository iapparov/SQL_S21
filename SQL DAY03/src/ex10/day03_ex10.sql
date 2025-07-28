INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT 
    COALESCE(MAX(id), 0) + 1, 
    (SELECT id From person WHERE name = 'Denis'),
    (SELECT id From menu WHERE pizza_name = 'sicilian pizza'),
    '2022-02-24'
From person_order;

INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT 
    COALESCE(MAX(id), 0) + 2, 
    (SELECT id From person WHERE name = 'Irina'),
    (SELECT id From menu WHERE pizza_name = 'sicilian pizza'),
    '2022-02-24'
From person_order