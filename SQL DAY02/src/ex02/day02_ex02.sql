SELECT COALESCE(person.name, '-') as peron_name, CASE
WHEN pv1.visit_date is NULL 
then 'null'
else pv1.visit_date::text
END as visit_date, 
COALESCE(pizzeria.name, '-') as pizzeria_name
from person
FULL JOIN 
(SELECT *
FROM person_visits as pv
WHERE pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
) pv1 ON pv1.person_id = person.id
FULL JOIN pizzeria ON pv1.pizzeria_id = pizzeria.id
ORDER BY 1,2,3