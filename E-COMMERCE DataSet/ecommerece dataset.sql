-- Drop and recreate the database
DROP DATABASE IF EXISTS ecommerce;
CREATE DATABASE ecommerce;
USE ecommerce;

-- Create departments table
CREATE TABLE departments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

-- Create products table
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Insert departments
INSERT INTO departments (name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home & Kitchen'),
('Beauty & Health');

-- Insert sample products
INSERT INTO products (name, description, price, department_id) VALUES
-- Electronics
('Smartphone', 'Latest Android smartphone with OLED display.', 29999.00, 1),
('Wireless Headphones', 'Noise-cancelling over-ear headphones.', 4999.00, 1),

-- Clothing
('T-Shirt', '100% cotton printed t-shirt for summer.', 799.00, 2),
('Jeans', 'Slim-fit blue denim jeans.', 1499.00, 2),

-- Books
('The Alchemist', 'Best-selling novel by Paulo Coelho.', 399.00, 3),
('Data Structures in Java', 'Educational book on Java DSA.', 599.00, 3),

-- Home & Kitchen
('Mixer Grinder', '3-jar stainless steel mixer for kitchen use.', 2499.00, 4),
('LED Bulb Pack', 'Energy-efficient LED light bulb pack of 5.', 499.00, 4),

-- Beauty & Health
('Face Moisturizer', 'Hydrating face cream for dry skin.', 349.00, 5),
('Protein Powder', 'Whey protein supplement for muscle gain.', 2199.00, 5);


