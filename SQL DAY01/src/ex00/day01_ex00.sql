select id as object_id, pizza_name as object_name
From menu
UNION ALL
SELECT id as object_id, name as object_name
from person
ORDER BY object_id ASC, object_name ASC