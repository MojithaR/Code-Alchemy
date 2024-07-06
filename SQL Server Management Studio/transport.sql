-- Create the transport database
CREATE DATABASE transport;
USE transport;

-- Create Drivers table to store driver information
CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the driver
    LastName VARCHAR(50) NOT NULL, -- Last name of the driver
    LicenseNumber VARCHAR(50) NOT NULL UNIQUE, -- Unique license number for each driver
    Phone VARCHAR(20), -- Phone number of the driver
    Address VARCHAR(255) -- Address of the driver
);

-- Create Vehicles table to store vehicle information
CREATE TABLE Vehicles (
    VehicleID INT PRIMARY KEY AUTO_INCREMENT,
    Make VARCHAR(50) NOT NULL, -- Make of the vehicle
    Model VARCHAR(50) NOT NULL, -- Model of the vehicle
    Year YEAR NOT NULL, -- Year of the vehicle
    LicensePlate VARCHAR(20) NOT NULL UNIQUE, -- Unique license plate number
    DriverID INT NOT NULL, -- Foreign key to Drivers table
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID) -- Establish relationship with Drivers table
);

-- Create Routes table to store route information
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY AUTO_INCREMENT,
    StartLocation VARCHAR(100) NOT NULL, -- Starting location of the route
    EndLocation VARCHAR(100) NOT NULL, -- Ending location of the route
    Distance DECIMAL(10, 2) NOT NULL -- Distance of the route in kilometers
);

-- Create Trips table to store trip information
CREATE TABLE Trips (
    TripID INT PRIMARY KEY AUTO_INCREMENT,
    VehicleID INT NOT NULL, -- Foreign key to Vehicles table
    RouteID INT NOT NULL, -- Foreign key to Routes table
    TripDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time of the trip
    Duration DECIMAL(5, 2) NOT NULL, -- Duration of the trip in hours
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID), -- Establish relationship with Vehicles table
    FOREIGN KEY (RouteID) REFERENCES Routes(RouteID) -- Establish relationship with Routes table
);

-- Create Maintenance table to store maintenance information
CREATE TABLE Maintenance (
    MaintenanceID INT PRIMARY KEY AUTO_INCREMENT,
    VehicleID INT NOT NULL, -- Foreign key to Vehicles table
    MaintenanceDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date and time of the maintenance
    Description TEXT, -- Description of the maintenance
    Cost DECIMAL(10, 2) NOT NULL, -- Cost of the maintenance
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID) -- Establish relationship with Vehicles table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'trans_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON transport.* TO 'trans_user'@'localhost';
FLUSH PRIVILEGES;
