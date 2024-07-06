-- Create the library database
CREATE DATABASE library;
USE library;

-- Create Authors table to store author information
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL, -- Name of the author
    Birthdate DATE, -- Birthdate of the author
    Nationality VARCHAR(50) -- Nationality of the author
);

-- Create Publishers table to store publisher information
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL, -- Name of the publisher
    Address VARCHAR(255), -- Address of the publisher
    Website VARCHAR(100) -- Website of the publisher
);

-- Create Books table to store book information
CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL, -- Title of the book
    AuthorID INT NOT NULL, -- Foreign key to Authors table
    PublisherID INT, -- Foreign key to Publishers table
    PublicationYear YEAR, -- Year of publication
    Genre VARCHAR(50), -- Genre of the book
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID), -- Establish relationship with Authors table
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID) -- Establish relationship with Publishers table
);

-- Create Members table to store member information
CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL, -- Name of the member
    Email VARCHAR(100) NOT NULL UNIQUE, -- Unique email for each member
    JoinDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp for member joining
);

-- Create Loans table to store loan information
CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT NOT NULL, -- Foreign key to Books table
    MemberID INT NOT NULL, -- Foreign key to Members table
    LoanDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp for loan creation
    DueDate TIMESTAMP NOT NULL, -- Due date for returning the book
    ReturnDate TIMESTAMP, -- Timestamp for returning the book
    FOREIGN KEY (BookID) REFERENCES Books(BookID), -- Establish relationship with Books table
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID) -- Establish relationship with Members table
);

-- Security: Create a user with limited privileges for application use
CREATE USER 'lib_user'@'localhost' IDENTIFIED BY 'secure_password';
GRANT SELECT, INSERT, UPDATE, DELETE ON library.* TO 'lib_user'@'localhost';
FLUSH PRIVILEGES;
