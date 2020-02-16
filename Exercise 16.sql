-- Get pairs of PC models with identical speeds and the same RAM capacity. 
-- Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i). 
-- Result set: model with the bigger number, model with the smaller number, speed, and RAM.

-- Solution 1:
SELECT DISTINCT a1.model AS model_1, a2.model AS model_2, a1.speed, a1.ram
FROM PC AS a1, PC AS a2
WHERE a1.model > a2.model 
AND a1.speed = a2.speed
AND a1.ram = a2.ram

-- Solution 2:
SELECT DISTINCT p1.model, p2.model, p1.speed, p1.ram
FROM PC as p1 INNER JOIN PC as p2
ON p1.model<>p2.model
WHERE 
p1.speed = p2.speed AND p1.ram = p2.ram
AND p1.model > p2.model
