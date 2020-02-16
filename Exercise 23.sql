--Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher. 
-- Result set: maker

SELECT DISTINCT p.maker
FROM Product p
JOIN PC pc
ON p.model = pc.model
WHERE (type = 'PC' AND pc.speed > 749)

INTERSECT

SELECT DISTINCT p.maker
FROM Product p
JOIN Laptop l
ON p.model = l.model
WHERE (type = 'Laptop' AND l.speed > 749)
