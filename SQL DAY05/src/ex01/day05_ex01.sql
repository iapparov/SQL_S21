SET ENABLE_SEQSCAN TO OFF;

EXPLAIN ANALYZE
SELECT m.pizza_name as pizza_name, p.name
From menu m
Join pizzeria p ON p.id = m.pizzeria_id;