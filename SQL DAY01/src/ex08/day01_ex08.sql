SELECT person_order.order_date, (name || ' (age:' || age || ')') as person_information
From (SELECT name, age, id as person_id
    from person)
NATURAL JOIN person_order 
ORDER BY 1,2