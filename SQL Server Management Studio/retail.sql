-- Create the retail database
CREATE DATABASE retail;
USE retail;

-- Create Customers table to store customer information
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the customer
    LastName VARCHAR(50) NOT NULL, -- Last name of the customer
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each customer
    Phone VARCHAR(20), -- Phone number of the customer
    Address VARCHAR(255), -- Address of the customer
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for customer creation
);

-- Create Products table to store product information
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL, -- Name of the product
    Description TEXT, -- Description of the product
    Price DECIMAL(10, 2) NOT NULL, -- Price of the product
    Stock INT NOT NULL, -- Stock quantity of the product
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for product addition
);

-- Create Orders table to store order information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL, -- Foreign key to Customers table
    Total DECIMAL(10, 2) NOT NULL, -- Total amount of the order
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for order creation
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) -- Establish relationship with Customers table
);

-- Create OrderDetails table to store detailed order information
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL, -- Foreign key to Orders table
    ProductID INT NOT NULL, -- Foreign key to Products table
    Quantity INT NOT NULL, -- Quantity of the product
    Price DECIMAL(10, 
