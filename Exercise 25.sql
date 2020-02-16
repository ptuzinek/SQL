SELECT DISTINCT maker
FROM Product p
JOIN PC pc
ON p.model = pc.model
LEFT JOIN Printer pr
ON p.model = pr.model
WHERE pc.ram = (SELECT MIN(pc.ram) FROM PC)
AND pc.speed = (SELECT MAX(pc.speed) FROM PC WHERE pc.ram = (SELECT MIN(pc.ram) FROM PC)
AND maker IN (SELECT maker FROM Product WHERE type = 'Printer'))
