-- Create database
CREATE DATABASE SQL_Practice;
USE SQL_Practice;

-- Table for Employee-related questions
CREATE TABLE Employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE
);

-- Table for Sales-related questions
CREATE TABLE Sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sale_date DATE,
    amount DECIMAL(10,2),
    category VARCHAR(50)
);

-- Table for Products
CREATE TABLE Products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    price DECIMAL(10,2)
);

-- Table for Orders
CREATE TABLE Orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATETIME,
    product_id INT,
    quantity INT
);

-- Table for Customers
CREATE TABLE Customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    signup_date DATE
);

-- Table for User_Logins (for consecutive login tracking)
CREATE TABLE User_Logins (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    login_date DATE
);

-- Table for sequential numbering problem
CREATE TABLE Number_Sequence (
    id INT PRIMARY KEY AUTO_INCREMENT,
    num INT
);

-- Table for storing comma-separated values
CREATE TABLE CSV_Data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data VARCHAR(255)
);

-- Table for region-based sales ranking
CREATE TABLE Regional_Sales (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    region VARCHAR(50),
    sales DECIMAL(10,2)
);

-- Table for tracking working hours orders
CREATE TABLE Business_Hours_Orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_time TIME,
    customer_id INT
);

-- Insert data into Employee table
INSERT INTO Employee (name, salary, department_id, hire_date) VALUES
('John Doe', 60000, 1, '2020-01-15'),
('Jane Smith', 75000, 2, '2019-07-23'),
('Michael Brown', 50000, 1, '2021-03-11'),
('Emily Johnson', 68000, 3, '2018-09-30'),
('Chris Wilson', 72000, 2, '2020-05-18'),
('Sarah Davis', 55000, 3, '2017-06-22'),
('David White', 81000, 1, '2016-12-05'),
('Laura Green', 62000, 2, '2021-01-10'),
('James Taylor', 67000, 3, '2015-08-09'),
('Anna Martinez', 90000, 1, '2013-11-01'),
('Robert Lee', 58000, 2, '2019-10-12'),
('Sophia Harris', 53000, 3, '2022-02-08'),
('Daniel Clark', 75000, 1, '2014-04-14'),
('Olivia Lewis', 70000, 2, '2018-07-06'),
('William Hall', 69000, 3, '2015-05-25'),
('Natalie Young', 62000, 1, '2021-09-13'),
('Henry King', 74000, 2, '2017-03-02'),
('Emma Scott', 68000, 3, '2016-08-21'),
('Lucas Adams', 79000, 1, '2012-12-17'),
('Isabella Thomas', 57000, 2, '2020-11-26');

-- Insert data into Sales table
INSERT INTO Sales (sale_date, amount, category) VALUES
('2024-03-01', 1000.50, 'Electronics'),
('2024-03-02', 750.00, 'Clothing'),
('2024-03-03', 200.75, 'Home Decor'),
('2024-03-04', 1500.00, 'Electronics'),
('2024-03-05', 850.30, 'Grocery'),
('2024-03-06', 920.60, 'Clothing'),
('2024-03-07', 1100.20, 'Furniture'),
('2024-03-08', 500.00, 'Grocery'),
('2024-03-09', 1300.00, 'Electronics'),
('2024-03-10', 400.80, 'Clothing'),
('2024-03-11', 1800.00, 'Electronics'),
('2024-03-12', 720.90, 'Grocery'),
('2024-03-13', 950.60, 'Clothing'),
('2024-03-14', 600.50, 'Home Decor'),
('2024-03-15', 1250.75, 'Furniture'),
('2024-03-16', 530.60, 'Clothing'),
('2024-03-17', 780.90, 'Electronics'),
('2024-03-18', 1320.40, 'Grocery'),
('2024-03-19', 890.70, 'Clothing'),
('2024-03-20', 1450.90, 'Electronics');

-- Insert data into Products table
INSERT INTO Products (name, price) VALUES
('Laptop', 1200.99),
('Smartphone', 899.99),
('Tablet', 499.49),
('Headphones', 199.99),
('Smartwatch', 299.99),
('Keyboard', 79.99),
('Mouse', 49.99),
('Monitor', 350.49),
('Desk Chair', 220.75),
('Gaming Console', 499.99),
('Speaker', 129.99),
('Camera', 699.99),
('Microwave', 159.99),
('Refrigerator', 899.99),
('Washing Machine', 749.49),
('Air Conditioner', 1199.99),
('Fan', 89.99),
('Coffee Maker', 99.99),
('Blender', 79.49),
('Vacuum Cleaner', 199.49);

-- Insert data into Orders table
INSERT INTO Orders (customer_id, order_date, product_id, quantity) VALUES
(1, '2024-03-01 10:30:00', 1, 1),
(2, '2024-03-02 14:15:00', 5, 2),
(3, '2024-03-03 09:45:00', 8, 1),
(4, '2024-03-04 16:00:00', 3, 1),
(5, '2024-03-05 11:20:00', 7, 3),
(6, '2024-03-06 13:35:00', 10, 2),
(7, '2024-03-07 18:10:00', 15, 1),
(8, '2024-03-08 12:00:00', 12, 1),
(9, '2024-03-09 17:45:00', 20, 2),
(10, '2024-03-10 08:30:00', 2, 1),
(11, '2024-03-11 15:15:00', 9, 2),
(12, '2024-03-12 11:50:00', 6, 3),
(13, '2024-03-13 14:25:00', 13, 1),
(14, '2024-03-14 19:10:00', 4, 1),
(15, '2024-03-15 07:40:00', 18, 2),
(16, '2024-03-16 20:05:00', 11, 1),
(17, '2024-03-17 16:30:00', 14, 2),
(18, '2024-03-18 09:00:00', 19, 1),
(19, '2024-03-19 10:50:00', 17, 3),
(20, '2024-03-20 12:20:00', 16, 1);

-- Insert data into Customers table
INSERT INTO Customers (name, signup_date) VALUES
('John Doe', '2023-01-15'), ('Jane Smith', '2023-02-10'), ('Alice Johnson', '2023-03-05'),
('Bob Brown', '2023-04-20'), ('Charlie Green', '2023-05-18'), ('David Black', '2023-06-12'),
('Emma White', '2023-07-25'), ('Frank Harris', '2023-08-03'), ('Grace Adams', '2023-09-07'),
('Henry Wilson', '2023-10-19'), ('Ivy Martinez', '2023-11-22'), ('Jack Clark', '2023-12-01'),
('Kathy Lewis', '2024-01-09'), ('Liam Walker', '2024-02-14'), ('Mia Hall', '2024-03-21'),
('Noah Allen', '2024-04-30'), ('Olivia Scott', '2024-05-11'), ('Paul Young', '2024-06-15'),
('Quinn King', '2024-07-08'), ('Rachel Wright', '2024-08-23');

-- Insert data into User_Logins table
INSERT INTO User_Logins (user_id, login_date) VALUES
(1, '2024-03-01'), (2, '2024-03-01'), (3, '2024-03-02'), (4, '2024-03-02'), (5, '2024-03-03'),
(6, '2024-03-04'), (7, '2024-03-05'), (8, '2024-03-06'), (9, '2024-03-07'), (10, '2024-03-08'),
(11, '2024-03-09'), (12, '2024-03-10'), (13, '2024-03-11'), (14, '2024-03-12'), (15, '2024-03-13'),
(16, '2024-03-14'), (17, '2024-03-15'), (18, '2024-03-16'), (19, '2024-03-17'), (20, '2024-03-18');

-- Insert data into Number_Sequence table
INSERT INTO Number_Sequence (num) VALUES
(1), (2), (3), (4), (5), (6), (7), (9), (10), (11),
(12), (13), (15), (16), (18), (19), (20), (21), (22), (24);

-- Insert data into CSV_Data table
INSERT INTO CSV_Data (data) VALUES
('apple,banana,grape'), ('car,bike,bus'), ('dog,cat,rabbit'), ('pen,pencil,eraser'),
('red,blue,green'), ('laptop,tablet,phone'), ('milk,cheese,butter'), ('tea,coffee,juice'),
('shirt,pant,jacket'), ('table,chair,sofa'), ('book,magazine,notebook'), ('rose,lily,tulip'),
('carrot,potato,onion'), ('gold,silver,bronze'), ('mountain,river,sea'), ('sand,stone,rock'),
('tennis,cricket,football'), ('sun,moon,star'), ('keyboard,mouse,monitor'), ('hat,scarf,gloves');

-- Insert data into Regional_Sales table
INSERT INTO Regional_Sales (product_id, region, sales) VALUES
(1, 'North', 1000.50), (2, 'South', 1500.75), (3, 'East', 1200.30), (4, 'West', 1100.45),
(5, 'North', 1300.60), (6, 'South', 1400.80), (7, 'East', 1250.90), (8, 'West', 1050.20),
(9, 'North', 1700.10), (10, 'South', 1800.25), (11, 'East', 1600.35), (12, 'West', 1750.50),
(13, 'North', 1900.70), (14, 'South', 2000.85), (15, 'East', 2200.95), (16, 'West', 2100.40),
(17, 'North', 2300.15), (18, 'South', 2500.60), (19, 'East', 2700.75), (20, 'West', 2600.90);

-- Insert data into Business_Hours_Orders table
INSERT INTO Business_Hours_Orders (order_time, customer_id) VALUES
('09:15:00', 1), ('10:30:00', 2), ('11:45:00', 3), ('12:00:00', 4), ('13:20:00', 5),
('14:10:00', 6), ('15:25:00', 7), ('16:50:00', 8), ('17:05:00', 9), ('18:15:00', 10),
('09:40:00', 11), ('10:55:00', 12), ('11:30:00', 13), ('12:45:00', 14), ('13:55:00', 15),
('14:35:00', 16), ('15:50:00', 17), ('16:20:00', 18), ('17:45:00', 19), ('18:30:00', 20);