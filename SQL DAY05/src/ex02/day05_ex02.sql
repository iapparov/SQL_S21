CREATE INDEX idx_person_name on person(name);

SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE 
SELECT p.name, po.order_date
From person_order po
Join person p ON p.id = po.person_id
WHERE UPPER(p.name) = 'ANDREY';