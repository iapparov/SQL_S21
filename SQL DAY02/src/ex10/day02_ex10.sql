SELECT DISTINCT pe1.name as person_name1, pe2.name as person_name2, pe1.address as common_address
From person as pe1
JOIN person as pe2 ON pe1.address = pe2.address AND pe1.id > pe2.id
ORDER BY 1,2,3