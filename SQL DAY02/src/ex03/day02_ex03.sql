WITH date_series AS (
    SELECT day::date as missing_date
FROM generate_series(timestamp '2022-01-01', '2022-01-10', '1 day') as day
)
SELECT ds.missing_date
FROM date_series as ds
LEFT JOIN (
    SELECT visit_date
    From person_visits
    WHERE person_id ='1' or person_id = '2'
) as pv ON ds.missing_date = pv.visit_date
WHERE pv.visit_date is NULL
ORDER BY 1;