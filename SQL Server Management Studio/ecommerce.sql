-- Create the ecommerce database
CREATE DATABASE ecommerce;
USE ecommerce;

-- Create Users table to store user information
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE, -- Unique username for each user
    PasswordHash CHAR(64) NOT NULL, -- Store hashed password for security
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each user
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for account creation
);

-- Create Products table to store product information
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL, -- Name of the product
    Description TEXT, -- Description of the product
    Price DECIMAL(10, 2) NOT NULL, -- Price of the product
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for product addition
);

-- Create Orders table to store order information
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT NOT NULL, -- Foreign key to Users table
    Total DECIMAL(10, 2) NOT NULL, -- Total amount of the order
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for order creation
    FOREIGN KEY (UserID) REFERENCES Users(UserID) -- Establish relationship with Users table
);

-- Create OrderDetails table to store detailed order information
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT NOT NULL, -- Foreign key to Orders table
    ProductID INT NOT NULL, -- Foreign key to Products table
    Quantity INT NOT NULL, -- Quantity of the product
    Price DECIMAL(10, 2) NOT NULL, -- Price of the product at the time of order
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID), -- Establish relationship with Orders table
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID) -- Establish relationship with Products table
);

-- Create Reviews table to store product reviews
CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    ProductID INT NOT NULL, -- Foreign key to Products table
    UserID INT NOT NULL, -- Foreign key to Users table
    Rating INT NOT NULL CHECK (Rating >= 1 AND Rating <= 5), -- Rating between 1 and 5
    Comment TEXT, -- Review comment
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for review creation
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID), -- Establish relationship with Products table
    FOREIGN KEY (UserID) REFERENCES Users(UserID) -- Establish relationship with Users table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'ecom_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON ecommerce.* TO 'ecom_user'@'localhost';
FLUSH PRIVILEGES;
