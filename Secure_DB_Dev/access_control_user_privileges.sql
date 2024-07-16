-- Filename: access_control_user_privileges.sql

-- Create a database
CREATE DATABASE AccessControlDB;

-- Use the new database
USE AccessControlDB;

-- Create a table
CREATE TABLE Data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    info VARCHAR(100)
);

-- Create users with specific privileges
CREATE USER 'limited_user'@'localhost' IDENTIFIED BY 'LimitedPass123!';
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123!';

-- Grant specific privileges to users
GRANT SELECT, INSERT ON AccessControlDB.* TO 'limited_user'@'localhost';
GRANT ALL PRIVILEGES ON AccessControlDB.* TO 'admin_user'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

-- Regularly review and revoke unnecessary privileges
-- REVOKE INSERT ON AccessControlDB.* FROM 'limited_user'@'localhost';
-- FLUSH PRIVILEGES;
