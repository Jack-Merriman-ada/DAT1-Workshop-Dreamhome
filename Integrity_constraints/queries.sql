.open testdatabase.sqlite
.mode columns

-- Queries

-- CREATE TABLE contacts (
--     contact_id INTEGER PRIMARY KEY,
--     first_name TEXT NOT NULL,
--     last_name TEXT NOT NULL,
--     email TEXT,
--     phone TEXT NOT NULL CHECK(LENGTH(phone)>10)
-- )

-- INSERT INTO contacts (first_name, last_name, email, phone)
-- VALUES  ('Jack', 'Merriman', 'jack.merriman@pwc.com', '07112233445'),
--         ('Seth', 'Leighton', 'seth.leighton@pwc.com', '07554433221');

-- CREATE TABLE products (
--     product_id INTEGER PRIMARY KEY,
--     product_name TEXT NOT NULL,
--     list_price DECIMAL(10,2) NOT NULL CHECK(list_price > discount AND list_price >=0 AND discount >= 0),
--     discount DECIMAL(10,2) NOT NULL
-- )

-- INSERT INTO products (product_name, list_price, discount)
-- VALUES  ('Chocolate Bar', 1.50, 0.25),
--         ('Coke Bottle', 2.00, 0.30);