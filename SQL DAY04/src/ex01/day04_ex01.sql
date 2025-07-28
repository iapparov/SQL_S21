SELECT name 
From v_persons_male
UNION
SELECT name 
From v_persons_female
ORDER BY 1