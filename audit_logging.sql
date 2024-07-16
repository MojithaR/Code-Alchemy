-- Filename: audit_logging.sql

-- Enable audit logging (MySQL example)
-- In the MySQL configuration file (my.cnf):
-- [mysqld]
-- plugin-load = audit_log.so
-- audit-log=FORCE_PLUS_PERMANENT

-- Create a database
CREATE DATABASE AuditLogDB;

-- Use the new database
USE AuditLogDB;

-- Example table
CREATE TABLE SampleTable (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data VARCHAR(100)
);

-- Insert data
INSERT INTO SampleTable (data) VALUES ('Sample Data 1');
INSERT INTO SampleTable (data) VALUES ('Sample Data 2');

-- Select data
SELECT * FROM SampleTable;
