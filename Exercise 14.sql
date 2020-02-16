-- For the ships in the Ships table that have at least 10 guns, get the class, name, and country.

SELECT s.class, s.name, c.country
FROM Ships s
JOIN Classes c 
ON s.class = c.class
WHERE c.numGuns >= 10


