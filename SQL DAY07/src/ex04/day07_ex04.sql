WITH visits AS 
    (SELECT p.name, COUNT(*) as count_of_visits
    FROM person_visits as pv
    JOIN person p ON p.id = pv.person_id 
    GROUP BY p.name
    )
SELECT v.name, v.count_of_visits
FROM visits as v
WHERE v.count_of_visits > 3