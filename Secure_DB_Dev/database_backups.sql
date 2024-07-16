-- Filename: database_backups.sql

-- Create a database
CREATE DATABASE BackupDB;

-- Use the new database
USE BackupDB;

-- Create a table
CREATE TABLE BackupTable (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data VARCHAR(100)
);

-- Insert data
INSERT INTO BackupTable (data) VALUES ('Backup Data 1');
INSERT INTO BackupTable (data) VALUES ('Backup Data 2');

-- Command to backup the database (to be run in a shell or command line)
-- mysqldump -u [username] -p[password] BackupDB > BackupDB_backup.sql

-- Restore the database (to be run in a shell or command line)
-- mysql -u [username] -p[password] BackupDB < BackupDB_backup.sql
