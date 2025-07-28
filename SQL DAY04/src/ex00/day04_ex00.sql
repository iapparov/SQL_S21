CREATE or Replace view v_persons_male AS
Select * 
From person
Where gender = 'male';

CREATE or Replace view v_persons_female AS
Select * 
From person
Where gender = 'female';