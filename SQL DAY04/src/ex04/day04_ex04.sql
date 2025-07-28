CREATE OR REPLACE VIEW v_symmetric_union AS 
WITH pv_02 AS
    (Select person_id
    From person_visits
    WHERE person_visits.visit_date = '2022-01-02'),
pv_06 AS
    (Select person_id
    From person_visits
    WHERE person_visits.visit_date = '2022-01-06')
Select person_id
From pv_02
Where pv_02.person_id NOT IN (Select person_id From pv_06)
Union
Select person_id
From pv_06
Where pv_06.person_id NOT IN (Select person_id From pv_02)
ORDER by 1;

Select *
From v_symmetric_union;
