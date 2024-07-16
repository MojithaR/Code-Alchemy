-- Filename: data_encryption.sql

-- Enable SSL/TLS for data transmission (MySQL example)
-- In the MySQL configuration file (my.cnf):
-- [mysqld]
-- require_secure_transport = ON

-- Create a database
CREATE DATABASE EncryptionDB;

-- Use the new database
USE EncryptionDB;

-- Create a table with encrypted columns
CREATE TABLE SecureTable (
    id INT PRIMARY KEY AUTO_INCREMENT,
    sensitive_data VARBINARY(255) -- Store encrypted data
);

-- Insert data into the encrypted column (Example assumes encryption is handled by the application)
INSERT INTO SecureTable (sensitive_data) VALUES (AES_ENCRYPT('Sensitive Information', 'encryption_key'));

-- Select and decrypt data (Example assumes decryption is handled by the application)
SELECT id, AES_DECRYPT(sensitive_data, 'encryption_key') AS decrypted_data FROM SecureTable;
