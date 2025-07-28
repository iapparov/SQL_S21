SELECT id as menu_id
FROM menu
WHERE id NOT IN (
    SELECT DISTINCT po.menu_id
    FROM person_order as po
)
ORDER BY 1