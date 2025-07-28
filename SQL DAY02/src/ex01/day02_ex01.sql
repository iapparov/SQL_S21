SELECT day::date as missing_date
FROM generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') as day
LEFT JOIN (
    SELECT visit_date
    From person_visits
    WHERE person_id ='1' or person_id = '2'
) as operation ON day::date = operation.visit_date
WHERE operation.visit_date is NULL
ORDER BY 1;