SELECT name, rating
From pizzeria
WHERE rating >= 3.5 and rating <= 5
ORDER BY rating;

SELECT name, rating
From pizzeria
WHERE rating between 3.5 and 5
ORDER BY rating;