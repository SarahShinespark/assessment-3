-- SQL containing the schema design for your database (tables and relationships)
-- SARAH'S NOTE: 
-- createdb ecommerce must be ran first

DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE Customers (
    id int   GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(50)   NOT NULL,
    address_line1 varchar(50)   NOT NULL,
    address_line2 varchar(50)   NULL,
    city varchar(50)   NOT NULL,
    state varchar(50)   NOT NULL,
    zip varchar(5)   NOT NULL
);

CREATE TABLE Products (
    id int   GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(200)   NOT NULL,
    category_id int   NOT NULL,
    price money   NOT NULL
);

CREATE TABLE Categories (
    id int   GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name varchar(100)   NOT NULL
);

CREATE TABLE Orders (
    id int   GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    order_date date   NOT NULL,
    product_id int    NOT NULL,
    customer_id int   NOT NULL
);

ALTER TABLE Products ADD CONSTRAINT fk_Products_category_id FOREIGN KEY(category_id)
REFERENCES Categories (id);

ALTER TABLE Orders ADD CONSTRAINT fk_Orders_products_id FOREIGN KEY(product_id)
REFERENCES Products (id);

ALTER TABLE Orders ADD CONSTRAINT fk_Orders_customer_id FOREIGN KEY(customer_id)
REFERENCES Customers (id);

