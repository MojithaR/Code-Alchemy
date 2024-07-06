-- Create the university database
CREATE DATABASE university;
USE university;

-- Create Students table to store student information
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the student
    LastName VARCHAR(50) NOT NULL, -- Last name of the student
    BirthDate DATE NOT NULL, -- Birthdate of the student
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each student
    Phone VARCHAR(20), -- Phone number of the student
    Address VARCHAR(255), -- Address of the student
    EnrollmentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for enrollment
);

-- Create Courses table to store course information
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL, -- Name of the course
    CourseDescription TEXT, -- Description of the course
    Credits INT NOT NULL, -- Number of credits for the course
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for course creation
);

-- Create Instructors table to store instructor information
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL, -- First name of the instructor
    LastName VARCHAR(50) NOT NULL, -- Last name of the instructor
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each instructor
    Phone VARCHAR(20), -- Phone number of the instructor
    HireDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for hire
);

-- Create Enrollments table to store enrollment information
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT NOT NULL, -- Foreign key to Students table
    CourseID INT NOT NULL, -- Foreign key to Courses table
    EnrollmentDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for enrollment
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), -- Establish relationship with Students table
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) -- Establish relationship with Courses table
);

-- Create Assignments table to store assignment information
CREATE TABLE Assignments (
    AssignmentID INT PRIMARY KEY AUTO_INCREMENT,
    CourseID INT NOT NULL, -- Foreign key to Courses table
    Title VARCHAR(100) NOT NULL, -- Title of the assignment
    Description TEXT, -- Description of the assignment
    DueDate TIMESTAMP NOT NULL, -- Due date for the assignment
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) -- Establish relationship with Courses table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'univ_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON university.* TO 'univ_user'@'localhost';
FLUSH PRIVILEGES;
