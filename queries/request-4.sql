.open ../dreamhome.sqlite
.mode column

-- ### Request 4.1:
-- We need a comprehensive list of all rental properties, including owner details, for our annual financial report.
/*
SELECT * from
propertyforrent p
LEFT JOIN
privateowner o 
ON p.ownerno = o.ownerno
*/

-- ### Request 4.2:
-- Create a report of high-value properties (those with rent higher than average) for potential investors.
-- SELECT *
-- FROM propertyforrent
-- WHERE rent > (SELECT AVG(rent) AS avgrent
--                 FROM propertyforrent)
-- ORDER BY rent

-- ### Request 4.3:
-- Due to increased demand, we need to increase the rent for all Manchester properties by 10%.

-- UPDATE propertyforrent
-- SET rent=rent*1.10
-- WHERE city='Manchester'