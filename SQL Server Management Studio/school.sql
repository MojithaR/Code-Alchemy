-- Create the school database
CREATE DATABASE school;
USE school;

-- Create Students table to store student information
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the student
    LastName VARCHAR(50) NOT NULL, -- Last name of the student
    BirthDate DATE NOT NULL, -- Birthdate of the student
    Gender CHAR(1), -- Gender of the student (M/F)
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each student
    Phone VARCHAR(20), -- Phone number of the student
    Address VARCHAR(255) -- Address of the student
);

-- Create Teachers table to store teacher information
CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the teacher
    LastName VARCHAR(50) NOT NULL, -- Last name of the teacher
    Subject VARCHAR(100) NOT NULL, -- Subject taught by the teacher
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each teacher
    Phone VARCHAR(20) -- Phone number of the teacher
);

-- Create Classes table to store class information
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY AUTO_INCREMENT,
    ClassName VARCHAR(100) NOT NULL, -- Name of the class
    TeacherID INT NOT NULL, -- Foreign key to Teachers table
    Schedule VARCHAR(100) NOT NULL, -- Schedule of the class
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID) -- Establish relationship with Teachers table
);

-- Create Enrollments table to store enrollment information
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT NOT NULL, -- Foreign key to Students table
    ClassID INT NOT NULL, -- Foreign key to Classes table
    EnrollmentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for enrollment
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), -- Establish relationship with Students table
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID) -- Establish relationship with Classes table
);

-- Create Grades table to store grade information
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    EnrollmentID INT NOT NULL, -- Foreign key to Enrollments table
    Grade VARCHAR(2) NOT NULL, -- Grade received
    GradeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for grading
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID) -- Establish relationship with Enrollments table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'school_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON school.* TO 'school_user'@'localhost';
FLUSH PRIVILEGES;
