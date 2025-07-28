CREATE OR REPLACE VIEW v_generated_dates AS
SELECT to_date(gen_s::text, 'YYYY-MM-DD') as generated_date
FROM generate_series('2022-01-01'::date, '2022-01-30'::date, interval '1 day') as gen_s;

SELECT *
From v_generated_dates;