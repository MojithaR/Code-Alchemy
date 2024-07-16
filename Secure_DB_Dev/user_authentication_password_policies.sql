-- Filename: user_authentication_password_policies.sql

-- Create the database
CREATE DATABASE SecureDB;

-- Use the new database
USE SecureDB;

-- Create a table to store user information with hashed passwords
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT, -- Auto-incrementing primary key
    Username VARCHAR(50) NOT NULL UNIQUE,  -- Unique username
    PasswordHash VARBINARY(64) NOT NULL,   -- Hashed password
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp of user creation
);

-- Create a function to hash passwords using SHA2 algorithm
DELIMITER //
CREATE FUNCTION HashPassword(password VARCHAR(255))
RETURNS VARBINARY(64)
BEGIN
    RETURN SHA2(password, 256); -- Hash the password using SHA-256
END //
DELIMITER ;

-- Insert users with hashed passwords
INSERT INTO Users (Username, PasswordHash) VALUES
('user1', HashPassword('StrongPassword123!')),
('user2', HashPassword('AnotherStrongPass!'));

-- Enforce strong password policy by defining a stored procedure for creating users
DELIMITER //
CREATE PROCEDURE CreateUser(
    IN p_username VARCHAR(50),
    IN p_password VARCHAR(255)
)
BEGIN
    DECLARE msg VARCHAR(255); -- Declare a variable to hold error messages

    -- Check password length
    IF LENGTH(p_password) < 8 THEN
        SET msg = 'Password must be at least 8 characters long.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; -- Raise an error
    END IF;

    -- Check for at least one uppercase letter
    IF p_password NOT REGEXP '[A-Z]' THEN
        SET msg = 'Password must contain at least one uppercase letter.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; -- Raise an error
    END IF;

    -- Check for at least one lowercase letter
    IF p_password NOT REGEXP '[a-z]' THEN
        SET msg = 'Password must contain at least one lowercase letter.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; -- Raise an error
    END IF;

    -- Check for at least one digit
    IF p_password NOT REGEXP '[0-9]' THEN
        SET msg = 'Password must contain at least one digit.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; -- Raise an error
    END IF;

    -- Check for at least one special character
    IF p_password NOT REGEXP '[!@#$%^&*(),.?":{}|<>]' THEN
        SET msg = 'Password must contain at least one special character.';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg; -- Raise an error
    END IF;

    -- Insert the user with a hashed password
    INSERT INTO Users (Username, PasswordHash)
    VALUES (p_username, HashPassword(p_password));
END //
DELIMITER ;

-- Create a user with a strong password using the stored procedure
CALL CreateUser('secureUser', 'SecurePass123!@#');

-- Select to verify the data
SELECT UserID, Username, CreatedAt FROM Users;
