WITH
male_visits AS (
    SELECT pz.name AS pizzeria_name, COUNT(*) AS visit_count
    FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    JOIN pizzeria pz ON pv.pizzeria_id = pz.id
    WHERE p.gender = 'male'
    GROUP BY pz.name
),
female_visits AS (
    SELECT pz.name AS pizzeria_name, COUNT(*) AS visit_count
    FROM person_visits pv
    JOIN person p ON pv.person_id = p.id
    JOIN pizzeria pz ON pv.pizzeria_id = pz.id
    WHERE p.gender = 'female'
    GROUP BY pz.name
),
more_males AS (
    SELECT mv.pizzeria_name
    FROM male_visits mv
    LEFT JOIN female_visits fv ON mv.pizzeria_name = fv.pizzeria_name
    WHERE mv.visit_count > COALESCE(fv.visit_count, 0)
),
more_females AS (
    SELECT fv.pizzeria_name
    FROM female_visits fv
    LEFT JOIN male_visits mv ON fv.pizzeria_name = mv.pizzeria_name
    WHERE fv.visit_count > COALESCE(mv.visit_count, 0)
)
SELECT pizzeria_name
FROM more_males
UNION ALL
SELECT pizzeria_name
FROM more_females
ORDER BY pizzeria_name;

-- Please find pizzerias that have been visited more often by women or by men.
-- Save duplicates for any SQL operators with sets (UNION ALL, EXCEPT ALL, INTERSECT ALL constructions). 
-- Please sort a result by the name of the pizzeria. 