-- List the models of any type having the highest price of all products present in the database.

WITH CTE(model,hprice) AS

(SELECT model, price AS hprice
FROM PC
WHERE price = (SELECT MAX(price) FROM PC)

UNION

SELECT model, price AS hprice
FROM Laptop
WHERE price = (SELECT MAX(price) FROM Laptop)

UNION

SELECT model, price AS hprice
FROM Printer
WHERE price = (SELECT MAX(price) FROM Printer)

)

SELECT model 
FROM CTE 
WHERE hprice = (SELECT MAX(hprice) FROM CTE)
