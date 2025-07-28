SELECT
    (SELECT name
    From person
    WHERE person.id = person_order.person_id ) as Name,
    case when (select name from person where person.id = person_order.person_id) = 'Denis'
    then TRUE
    else FALSE
    end as check_name
From person_order
WHERE (menu_id = '13' OR menu_id = '14' or menu_id = '18') AND order_date = '2022-01-07'