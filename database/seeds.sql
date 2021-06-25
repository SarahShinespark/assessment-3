-- SQL containing the seed data to populate your database tables
  
INSERT INTO customers (first_name, last_name, email, address_line1, address_line2, city, state, zip)
  VALUES ('Sarah', 'Dellheim', 'sarahdellheim@hotmail.com', '195 Easy St', 'Apt 204', 'Outer Space', 'NM', '19744');
INSERT INTO customers (first_name, last_name, email, address_line1, city, state, zip)
  VALUES ('Bob', 'the Potato', 'potato_tomato@gmail.com', '196 High St', 'Reno', 'WV', '95524');
INSERT INTO customers (first_name, last_name, email, address_line1, address_line2, city, state, zip)
  VALUES ('Baxter', 'Stockman', 'baxtock@yahoo.com', '444 Evil Lair Dr', 'Apt 4', 'Manhattan', 'NY', '09241');
INSERT INTO customers (first_name, last_name, email, address_line1, city, state, zip)
  VALUES ('Bugs', 'Bunny', 'whatsupdoc@gmail.com', '371 Big Hole Circle', 'Albequerque', 'NM', '19743');

INSERT INTO categories (name) VALUES ('Kitchen');
INSERT INTO categories (name) VALUES ('Electronics');
INSERT INTO categories (name) VALUES ('Kids');

INSERT INTO products (name, category_id, price) VALUES ('Frying Pan', 1, 20);
INSERT INTO products (name, category_id, price) VALUES ('Mini Fridge', 1, 30);
INSERT INTO products (name, category_id, price) VALUES ('Dishwasher', 1, 200);
INSERT INTO products (name, category_id, price) VALUES ('Music Player', 2, 20);
INSERT INTO products (name, category_id, price) VALUES ('Nintendo Switch', 2, 300);
INSERT INTO products (name, category_id, price) VALUES ('Laptop', 2, 400);
INSERT INTO products (name, category_id, price) VALUES ('Baby Shark', 3, 4);
INSERT INTO products (name, category_id, price) VALUES ('Care Bear', 3, 5);
INSERT INTO products (name, category_id, price) VALUES ('Journal', 3, 2.5);

INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2020-05-17', 5, 1);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2021-01-18', 4, 1);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2021-05-08', 8, 1);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2011-03-27', 2, 2);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2013-02-21', 3, 2);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('1992-05-12', 6, 3);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('1992-07-15', 9, 3);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2020-03-01', 1, 4);
INSERT INTO orders (order_date, product_id, customer_id) VALUES ('2004-12-13', 7, 4);

