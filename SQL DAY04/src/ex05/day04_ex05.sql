CREATE OR REPLACE VIEW v_price_with_discount AS
SELECT p.name as name, m.pizza_name as pizza_name, m.price as price, (m.price * 0.9)::integer as discount_price
FROM person as p
JOIN person_order as po ON po.person_id = p.id
JOIN menu as m ON m.id = po.menu_id
ORDER BY 1,2;

SELECT *
FROM v_price_with_discount;

-- Please create a Database View v_price_with_discount 
--that returns the orders of a person with person name, pizza name, real price 
-- and calculated column discount_price (with applied 10% discount and satisfying formula price - price*0.1). 
-- Please sort the result by person names and pizza names and convert the discount_price column to integer type. See a sample result below.