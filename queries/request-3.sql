.open ../dreamhome.sqlite
.mode column

-- ### Request 3.1:
-- We're reaching out to property owners whose first name starts with 'C' for a special promotion. Please provide their details.
/*
SELECT *
FROM privateowner
WHERE fname LIKE 'C%'
*/

-- ### Request 3.2:
-- Categorize our properties based on their rent for our new pricing strategy. Use 'Budget' for rent < 500, 'Standard' for rent between 500 and 1000, and 'Premium' for rent > 1000.
/*
SELECT rent,
    CASE
        WHEN rent < 500 THEN 'Budget'
        WHEN rent >= 500 AND rent < 1000 THEN 'Standard'
        ELSE 'Premium'
    END AS 'Category Alias'
FROM propertyforrent;
*/

-- ### Request 3.3:
-- We're creating a unified mailing list. Provide a list of all individuals (clients and private owners) associated with the agency, showing their names and type.
/*
SELECT fname, lname, 'Client' AS type FROM client  
UNION ALL  
SELECT fname, lname, 'Private Owner' AS type FROM privateowner
*/