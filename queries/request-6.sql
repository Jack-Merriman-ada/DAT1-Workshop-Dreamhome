.open ../dreamhome.sqlite
.mode column

-- ### Request 6.1:
-- For our board meeting, we need a list of all cities where we either have a branch office or a property for rent, without duplicates.

/*
SELECT COALESCE(b.city, p.city) AS city
FROM branch b
FULL OUTER JOIN
propertyforrent p
ON b.city=p.city
GROUP BY COALESCE (b.city, p.city);
*/

-- ### Request 6.2:
-- We're updating our database. Please create a new table named 'propertyreviews' to store customer feedback.
-- CREATE TABLE propertyreviews(
--     reviewNo INTEGER PRIMARY KEY,
--     feedback TEXT,
--     customerId CHAR,
--     FOREIGN KEY (customerid) REFERENCES client(clientid)
-- )

-- ### Request 6.3:
-- We've collected initial reviews for some properties. Please add these to our new 'property_reviews' table.

-- Use the following data for insertion:

-- 1. Property: PR1423, Client: CL7623, Review Date: 2023-05-15, Rating: 4, Comment: "Spacious and well-maintained property. Great location."
-- 2. Property: PR9478, Client: CL5612, Review Date: 2023-05-16, Rating: 5, Comment: "Excellent modern amenities. Highly recommended!"
-- 3. Property: PR4567, Client: CL7489, Review Date: 2023-05-17, Rating: 3, Comment: "Decent property, but needs some minor repairs."
-- 4. Property: PR3689, Client: CL6234, Review Date: 2023-05-18, Rating: 4, Comment: "Good value for money. Nice neighborhood."
-- 5. Property: PR2145, Client: CL7712, Review Date: 2023-05-19, Rating: 2, Comment: "Disappointing. Several issues with plumbing and heating."

-- ### Request 6.4:
-- To maintain data relevance, remove all property viewings that occurred before June 1, 2013.


