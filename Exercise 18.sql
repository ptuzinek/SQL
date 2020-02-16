-- Find the makers of the cheapest color printers.
-- Result set: maker, price.

SELECT DISTINCT p.maker, pr.price
FROM Printer pr
JOIN Product p
ON p.model = pr.model
WHERE price = (SELECT MIN(pr.price)
FROM Printer pr
WHERE color = 'y')
AND color = 'y'
