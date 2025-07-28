SELECT person_order.order_date, (name || ' (age:' || age || ')') as person_information
From person
JOIN person_order ON person.id = person_order.person_id
ORDER BY 1,2