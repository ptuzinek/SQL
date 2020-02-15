-- Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.

SELECT DISTINCT p.maker
FROM Product p
JOIN PC pc
ON p.model = pc.model
WHERE speed >= 450
