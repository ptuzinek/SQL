-- Get the models and prices for all commercially available products (of any type) produced by maker B.

SELECT DISTINCT Product.model, PC.price
FROM Product, PC 
WHERE maker = 'B' 
AND 
(Product.model = PC.model)
UNION
SELECT DISTINCT Product.model, Laptop.price
FROM Product, Laptop 
WHERE maker = 'B' 
AND 
(Product.model = Laptop.model)
UNION
SELECT DISTINCT Product.model, Printer.price
FROM Product, Printer 
WHERE maker = 'B' 
AND 
(Product.model = Printer.model)
