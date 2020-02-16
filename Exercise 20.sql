-- Find the makers producing at least three distinct models of PCs.
-- Result set: maker, number of PC models.

SELECT p.maker, COUNT(p.model) AS [number of PC models]
FROM Product p
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(*) > 2
