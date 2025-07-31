CREATE DATABASE ecommerce;
USE ecommerce;
drop database ecommerce;

CREATE TABLE DEPARTMENTS(
ID int auto_increment primary KEY,
NAME VARCHAR(100)
); 
CREATE TABLE Products(
id INT auto_increment PRIMARY KEY,
name VARCHAR(100),
description TEXT,
price decimal(10,2),
department_id INT,
foreign key (department_id) references departments(id)
);

