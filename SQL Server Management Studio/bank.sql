-- Create the bank database
CREATE DATABASE bank;
USE bank;

-- Create Customers table to store customer information
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the customer
    LastName VARCHAR(50) NOT NULL, -- Last name of the customer
    BirthDate DATE NOT NULL, -- Birthdate of the customer
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each customer
    Phone VARCHAR(20), -- Phone number of the customer
    Address VARCHAR(255), -- Address of the customer
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for account creation
);

-- Create Accounts table to store account information
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL, -- Foreign key to Customers table
    AccountType VARCHAR(50) NOT NULL, -- Type of the account (e.g., Checking, Savings)
    Balance DECIMAL(15, 2) NOT NULL, -- Account balance
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for account creation
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) -- Establish relationship with Customers table
);

-- Create Transactions table to store transaction information
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    AccountID INT NOT NULL, -- Foreign key to Accounts table
    TransactionType VARCHAR(50) NOT NULL, -- Type of transaction (e.g., Deposit, Withdrawal)
    Amount DECIMAL(15, 2) NOT NULL, -- Transaction amount
    TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for transaction
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) -- Establish relationship with Accounts table
);

-- Create Loans table to store loan information
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL, -- Foreign key to Customers table
    LoanType VARCHAR(50) NOT NULL, -- Type of loan (e.g., Personal, Mortgage)
    Amount DECIMAL(15, 2) NOT NULL, -- Loan amount
    InterestRate DECIMAL(5, 2) NOT NULL, -- Interest rate for the loan
    LoanDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for loan creation
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) -- Establish relationship with Customers table
);

-- Create Payments table to store payment information
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    LoanID INT NOT NULL, -- Foreign key to Loans table
    Amount DECIMAL(15, 2) NOT NULL, -- Payment amount
    PaymentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for payment
    FOREIGN KEY (LoanID) REFERENCES Loans(LoanID) -- Establish relationship with Loans table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'bank_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON bank.* TO 'bank_user'@'localhost';
FLUSH PRIVILEGES;
