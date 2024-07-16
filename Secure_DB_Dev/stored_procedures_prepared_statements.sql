-- Filename: stored_procedures_prepared_statements.sql

-- Create a database
CREATE DATABASE SecureQueriesDB;

-- Use the new database
USE SecureQueriesDB;

-- Create a table
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    PasswordHash VARBINARY(64) NOT NULL
);

-- Create a stored procedure to insert data securely
DELIMITER //
CREATE PROCEDURE CreateUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255)
)
BEGIN
    INSERT INTO Users (Username, PasswordHash)
    VALUES (p_username, SHA2(p_password, 256)); -- Use SHA-256 for hashing passwords
END //
DELIMITER ;

-- Call the stored procedure to insert data
CALL CreateUser('user1', 'SecurePassword123!');
CALL CreateUser('user2', 'AnotherSecurePass!');

-- Select to verify the data
SELECT UserID, Username FROM Users;
