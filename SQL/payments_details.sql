CREATE DATABASE payments_details;

USE payments_details;

CREATE TABLE payments (
customer_id INT PRIMARY KEY,
customer VARCHAR(20),
mode VARCHAR(20),
city VARCHAR(20)
);

INSERT INTO payments
(customer_id, customer, mode, city)
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Olivia Barrett", "Credit Card", "Miami"),
(103, "Olivia Barrett", "Credit Card", "Seattle"),
(104, "Olivia Barrett", "Netbanking", "Denver"),
(105, "Olivia Barrett", "Credit Card", "New Orleans"),
(106, "Olivia Barrett", "Debit Card", "Minneapolis"),
(107, "Olivia Barrett", "Debit Card", "Phoenix"),
(108, "Olivia Barrett", "Netbanking", "Boston"),
(109, "Olivia Barrett", "Netbanking", "Nashville"),
(110, "Olivia Barrett", "Credit Card", "Boston");

SELECT mode, COUNT(customer)
FROM payments
GROUP BY(mode);
