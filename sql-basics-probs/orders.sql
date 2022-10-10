CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(100),
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'Xbox', 500, 1),
(2, 'PS5', 550, 2),
(3, 'PC', 2000, 3),
(4, 'Nintendo', 250, 4),
(5, 'Switch', 350, 5);

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

--Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 5;