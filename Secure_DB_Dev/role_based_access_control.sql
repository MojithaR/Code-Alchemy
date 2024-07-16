-- Filename: role_based_access_control.sql

-- Create a database
CREATE DATABASE RBAC_DB;

-- Use the new database
USE RBAC_DB;

-- Create roles
CREATE ROLE ReadonlyRole;
CREATE ROLE WriteRole;

-- Grant privileges to roles
GRANT SELECT ON RBAC_DB.* TO ReadonlyRole;
GRANT INSERT, UPDATE, DELETE ON RBAC_DB.* TO WriteRole;

-- Create users
CREATE USER 'readonly_user'@'localhost' IDENTIFIED BY 'ReadonlyPass123!';
CREATE USER 'write_user'@'localhost' IDENTIFIED BY 'WritePass123!';

-- Grant roles to users
GRANT ReadonlyRole TO 'readonly_user'@'localhost';
GRANT WriteRole TO 'write_user'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;
