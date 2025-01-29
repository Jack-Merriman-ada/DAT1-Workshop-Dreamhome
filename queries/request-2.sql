.open ../dreamhome.sqlite
.mode column

-- 2.1
-- Find all properties managed by client 'PO4756'. We need this for a client satisfaction survey.
/*
SELECT *
FROM propertyforrent
WHERE ownerno = 'PO4756
*/



-- ### Request 2.2:
-- We're auditing recent client registrations. Please provide all registrations at branch 'B052' that occurred after September 28, 2013.
/*
SELECT *
FROM registration
WHERE branchno='B052' AND datejoined > '2013-09-28'
*/

-- ### Request 2.3:
-- Provide details of the most recent property viewing for our customer feedback initiative.

/*
SELECT *
FROM viewing
WHERE viewdate = (  SELECT MIN(viewdate)
                    FROM viewing
                    );
*/
