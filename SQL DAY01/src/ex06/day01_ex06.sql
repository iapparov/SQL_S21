SELECT 
    action_date, 
    (SELECT name From person WHERE person.id = common.person_id) as person_name
FROM (SELECT  visit_date AS action_date, person_id
From person_visits
INTERSECT
SELECT order_date as action_date, person_id
FROM person_order
ORDER BY action_date ASC, person_id DESC) as common
ORDER BY action_date ASC, person_name DESC