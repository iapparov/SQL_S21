INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (
        (SELECT Max(id)+1 FROM person_visits),
        (SELECT id From person WHERE name = 'Dmitriy'),
        (SELECT m.pizzeria_id 
        From menu as m 
        Join pizzeria as p ON p.id = m.pizzeria_id
        WHERE m.price<800 AND p.name != 'Papa Johns'
        LIMIT 1),
        '2022-01-09'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

SELECT * FROM mv_dmitriy_visits_and_eats;
