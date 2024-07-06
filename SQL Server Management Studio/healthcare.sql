-- Create the healthcare database
CREATE DATABASE healthcare;
USE healthcare;

-- Create Patients table to store patient information
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the patient
    LastName VARCHAR(50) NOT NULL, -- Last name of the patient
    BirthDate DATE NOT NULL, -- Birthdate of the patient
    Gender CHAR(1), -- Gender of the patient (M/F)
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each patient
    Phone VARCHAR(20), -- Phone number of the patient
    Address VARCHAR(255) -- Address of the patient
);

-- Create Doctors table to store doctor information
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the doctor
    LastName VARCHAR(50) NOT NULL, -- Last name of the doctor
    Specialty VARCHAR(100) NOT NULL, -- Specialty of the doctor
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each doctor
    Phone VARCHAR(20) -- Phone number of the doctor
);

-- Create Appointments table to store appointment information
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL, -- Foreign key to Patients table
    DoctorID INT NOT NULL, -- Foreign key to Doctors table
    AppointmentDate TIMESTAMP NOT NULL, -- Date and time of the appointment
    Reason TEXT, -- Reason for the appointment
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID), -- Establish relationship with Patients table
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID) -- Establish relationship with Doctors table
);

-- Create Prescriptions table to store prescription information
CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY AUTO_INCREMENT,
    AppointmentID INT NOT NULL, -- Foreign key to Appointments table
    Medication VARCHAR(100) NOT NULL, -- Medication name
    Dosage VARCHAR(50) NOT NULL, -- Dosage information
    Duration VARCHAR(50) NOT NULL, -- Duration for the medication
    Instructions TEXT, -- Additional instructions
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID) -- Establish relationship with Appointments table
);

-- Create MedicalRecords table to store medical records
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT NOT NULL, -- Foreign key to Patients table
    DoctorID INT NOT NULL, -- Foreign key to Doctors table
    VisitDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Date of the visit
    Notes TEXT, -- Medical notes
    Diagnosis TEXT, -- Diagnosis information
    Treatment TEXT, -- Treatment information
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID), -- Establish relationship with Patients table
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID) -- Establish relationship with Doctors table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'health_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON healthcare.* TO 'health_user'@'localhost';
FLUSH PRIVILEGES;
