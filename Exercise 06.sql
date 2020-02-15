-- For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.

SELECT DISTINCT Product.maker, Laptop.speed
FROM Product, Laptop 
WHERE Product.model = Laptop.model 
 AND Laptop.hd >= 10
