-- SQL containing queries to extract the following data from your database tables

-- Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
select first_name, last_name, email from customers where email like '%@gmail.com';

-- Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
select orders.id as "order_id", order_date, customers.address_line1, customers.address_line2, customers.city, customers.state, customers.zip from orders
join customers on orders.customer_id = customers.id
where extract(year from orders.order_date) = '2020';

-- Retrieve all product details for products that are under the "Kitchen" category
select products.id, products.name, price, categories.name as "category_name" from products
join categories on category_id = categories.id
where categories.name = 'Kitchen'; 

-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
select products.name, products.price from orders
join customers on customer_id = customers.id
join products on product_id = products.id
where customers.first_name = 'Bugs' and customers.last_name = 'Bunny';  

