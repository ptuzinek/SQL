-- Find out the average speed of the PCs produced by maker A.

SELECT AVG(speed)
FROM PC pc
JOIN Product p
ON pc.model = p.model
WHERE p.maker = 'A'
