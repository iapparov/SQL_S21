INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT 
    (SELECT COALESCE(MAX(id), 0) + gen_id From person_order),
    id,
    (SELECT id from menu WHERE pizza_name = 'greek pizza'),
    '2022-02-25'
From person
JOIN generate_series (1, (SELECT count(*) FROM person)) as gen_id ON gen_id = person.id