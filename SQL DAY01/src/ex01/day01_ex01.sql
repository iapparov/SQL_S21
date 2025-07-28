SELECT name as object_name
from (select name from person ORDER BY name)
UNION ALL
select pizza_name as object_name
From (SELECT pizza_name from menu ORDER BY pizza_name)