CREATE unique index idx_person_discounts_unique ON person_discounts(person_id, pizzeria_id);

SET ENABLE_SEQSCAN = OFF;

Explain Analyze
Select *
From person_discounts pd
Where pd.pizzeria_id = '4' AND pd.person_id = '6';