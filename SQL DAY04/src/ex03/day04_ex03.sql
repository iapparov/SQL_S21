SELECT vgd.generated_date as missing_date
From v_generated_dates as vgd
WHERE vgd.generated_date NOT IN (
    SELECT pv.visit_date
    From person_visits as pv
)
ORDER BY 1;