.open ../dreamhome.sqlite
.mode

-- Request 1.1:
-- We need a list of all our property postcodes for a mailing campaign.
-- SELECT DISTINCT postcode
-- from propertyforrent


-- Request 1.2:
-- Provide a list of all properties and their viewing history, including those that haven't been viewed, to plan maintenance visits.
-- SELECT p.propertyno,
-- v.view_id,
-- v.viewdate
-- FROM 
-- propertyforrent p
-- LEFT JOIN
-- viewing v
-- ON
-- p.propertyno = v.propertyno

-- 1.3
-- We're considering expanding to areas with postcode starting 'BS1'. Can you confirm if we have any properties in these areas?

SELECT COUNT(*) as propertiesInBS1
FROM propertyforrent
WHERE postcode LIKE 'BS1%'