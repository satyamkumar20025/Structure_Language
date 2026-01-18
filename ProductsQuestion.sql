1. Display products whose stock is less than the reorder level.


2. Find products priced above 20,000 and not belonging to Electronics category.


3. Fetch products that are not verified.


4. Retrieve products that belong to Furniture category or cost less than 6,000.





CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price INT,
    stock INT,
    reorder_level INT,
    is_verified BOOLEAN
);

INSERT INTO products VALUES
(201, 'Laptop', 'Electronics', 60000, 5, 10, TRUE),
(202, 'Chair', 'Furniture', 5000, 20, 15, TRUE),
(203, 'Mobile', 'Electronics', 25000, 2, 5, FALSE),
(204, 'Table', 'Furniture', 12000, 3, 8, TRUE);

select * from products;
select * from products where stock < reorder_level;
select * from products where category='electronics' and price >20000;
select * from products where  is_verified =0;
select * from products where category='furniture' and price <6000;

