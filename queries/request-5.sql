.open ../dreamhome.sqlite
.mode column


-- ### Request 5.1:
-- We need to know how many properties are currently managed by staff member 'SSU15' for workload assessment.

/*
SELECT COUNT(propertyno)
FROM propertyforrent prop
LEFT JOIN
staff s 
ON prop.staffno = s.staffno
WHERE s.staffno = 'SSU15';
*/

-- ### Request 5.2:
-- We need a report showing the number of properties in each city, but only for cities with more than 2 properties, to focus our resources.
/*SELECT city, COUNT(*) AS propCount
FROM propertyforrent
GROUP BY city
HAVING count(*) > 2*/
-- ## THE REASON THIS WORKS IS BECAUSE THE GROUP BY CLAUSE IS RESOLVED FIRST WHICH MEANS THAT THE COUNT(*) CLAUSE IS THEN APPLIED TO EACH GROUP

-- ### Request 5.3:
-- Identify all staff members who manage properties with above-average rent for our annual performance reviews.

/*
SELECT fname, lname
FROM staff s
LEFT JOIN
propertyforrent prop
ON s.staffno=prop.staffno
WHERE prop.rent > (SELECT AVG(rent)
                    FROM propertyforrent)
*/


