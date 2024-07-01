CREATE TABLE Member(
	Member_id varchar(4),
	Member_Name varchar(25),
	Member_Password varchar(8),
	Home_Address varchar(35),
	CONSTRAINT Member_PK PRIMARY KEY(Member_id)
);

CREATE TABLE Category(
	Category_id varchar(4),
	Category_Description varchar(35),
	CONSTRAINT Category_PK PRIMARY KEY(Category_id)
);

CREATE TABLE Member_Phone(
	Member_id varchar(4),
	Phone int,									
	CONSTRAINT Member_phone_PK1 PRIMARY KEY (Member_id, Phone),
	CONSTRAINT Member_phone_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id)
);

CREATE TABLE Member_Phone(
    Member_id varchar(25),
	Phone int,
	CONSTRAINT Member_Phone_PK PRIMARY KEY (Member_id),
	CONSTRAINT Member_Phone_FK FOREIGN KEY(Member_id) REFERENCES Member(Member_id)

	);

CREATE TABLE Member_Email(
	Member_id varchar(4),
	Email varchar(28),
	CONSTRAINT Member_Email_PK PRIMARY KEY (Member_id, Email),
	CONSTRAINT Member_Email_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id)
);

CREATE TABLE Seller (
	Seller_id varchar(4),
	Seller_Name varchar(25),
	Seller_Password varchar(8),
	Seller_Address varchar(35),
	Routine_Number varchar(5),
	CONSTRAINT Seller_PK PRIMARY KEY(Seller_id),
	CONSTRAINT Seller_FK FOREIGN KEY (Seller_id) REFERENCES Member(Member_id)
);

CREATE TABLE Buyer (
	Buyer_id varchar(4),
	Buyer_Name varchar(25),
	Buyer_Password varchar(8),
	Buyer_Address varchar(35),
	Shipping_Address varchar(35),
	CONSTRAINT Buyer_PK PRIMARY KEY(Buyer_id),
	CONSTRAINT Buyer_FK FOREIGN KEY (Buyer_id) REFERENCES Member(Member_id)
);

CREATE TABLE Account(
	Account_id varchar(12),
	Member_id varchar(4),
	Account_Name varchar(15),
	Account_Balance int,
	CONSTRAINT Account_PK PRIMARY KEY(Account_id),
	CONSTRAINT Account_FK FOREIGN KEY(Member_id) REFERENCES Member(Member_id)
);

CREATE TABLE Bank(
	Account_id varchar(12),
	Bank_Number varchar(4),
	Bank_Name varchar(25),
	Branch_Name varchar(25),
	CONSTRAINT Bank_PK PRIMARY KEY(Account_id),
	CONSTRAINT Bank_FK FOREIGN KEY (Account_id) REFERENCES Account(Account_id)
);

CREATE TABLE Item(
	Item_id varchar(4),
	Seller_id varchar(4),
	Category_id varchar(4),
	Item_description varchar(40),
	Bid_start_date date,
	Bid_end_date date,
	Starting_bid_price int,
	Bidding_increment int,
	Title varchar(25),
	CONSTRAINT Item_PK PRIMARY KEY(Item_id),
	CONSTRAINT Item_FK FOREIGN KEY (Seller_id) REFERENCES Seller(Seller_id)
);

CREATE TABLE Buyer_bid_item(
	Item_id varchar(4),
	Buyer_id varchar(4),
	Bid_Price int,
	CONSTRAINT Buyer_bid_item_PK PRIMARY KEY(Item_id,Buyer_id),
	CONSTRAINT Buyer_bid_item_FK FOREIGN KEY (Buyer_id) REFERENCES Buyer(Buyer_id)
);

CREATE TABLE Account_Transaction(
	Transaction_id varchar(4),
	Item_id varchar(4),
	Buyer_id varchar(4),
	Credit_account varchar(12),
	Debit_account varchar(12),
	Transaction_date date DEFAULT CURRENT_TIMESTAMP,
	Winning_bid_price int,
	Account_id varchar(12),
	CONSTRAINT Account_Transaction_PK PRIMARY KEY (Transaction_id),
	CONSTRAINT Account_FK1 FOREIGN KEY (Item_id, Buyer_id) REFERENCES Buyer_bid_item(Item_id, Buyer_id),
	CONSTRAINT Account_FK2 FOREIGN KEY (Account_id) REFERENCES Account(Account_id)
);


-- Insert values into the Member table
INSERT INTO Member (Member_id, Member_Name, Member_Password, Home_Address)
VALUES
    ('M001', 'John Doe', 'password1', '123 Main St'),
    ('M002', 'Jane Smith', 'password2', '456 Elm St');

	select *
	from Member
-- Insert values into the Category table
INSERT INTO Category (Category_id, Category_Description)
VALUES
    ('C001', 'Electronics'),
    ('C002', 'Clothing');

-- Insert values into the Member_Phone table
INSERT INTO Member_Phone (Member_id, Phone)
VALUES
    ('M001', 1234567890),
    ('M002', 9876543210);

-- Insert values into the Member_Email table
INSERT INTO Member_Email (Member_id, Email)
VALUES
    ('M001', 'john@example.com'),
    ('M002', 'jane@example.com');

-- Insert values into the Seller table
INSERT INTO Seller (Seller_id, Seller_Name, Seller_Password, Seller_Address, Routine_Number)
VALUES
    ('S001', 'Seller 1', 'sellerpass1', '789 Oak St', '12345'),
    ('S002', 'Seller 2', 'sellerpass2', '567 Pine St', '67890');

-- Insert values into the Buyer table
INSERT INTO Buyer (Buyer_id, Buyer_Name, Buyer_Password, Buyer_Address, Shipping_Address)
VALUES
    ('B001', 'Buyer 1', 'buyerpass1', '101 Maple St', '101 Maple St'),
    ('B002', 'Buyer 2', 'buyerpass2', '202 Birch St', '203 Birch St');

-- Insert values into the Account table
INSERT INTO Account (Account_id, Member_id, Account_Name, Account_Balance)
VALUES
    ('A001123456', 'M001', 'John's Account', 1000),
    ('A002987654', 'M002', 'Jane's Account', 800);

-- Insert values into the Bank table
INSERT INTO Bank (Account_id, Bank_Number, Bank_Name, Branch_Name)
VALUES
    ('A001123456', 'B001', 'Bank 1', 'Branch 1'),
    ('A002987654', 'B002', 'Bank 2', 'Branch 2');

-- Insert values into the Item table
INSERT INTO Item (Item_id, Seller_id, Category_id, Item_description, Bid_start_date, Bid_end_date, Starting_bid_price, Bidding_increment, Title)
VALUES
    ('I001', 'S001', 'C001', 'Smartphone', '2023-01-01', '2023-01-10', 500, 50, 'iPhone 13'),
    ('I002', 'S002', 'C002', 'Dress', '2023-02-01', '2023-02-10', 100, 10, 'Summer Dress');

-- Insert values into the Buyer_bid_item table
INSERT INTO Buyer_bid_item (Item_id, Buyer_id, Bid_Price)
VALUES
    ('I001', 'B001', 550),
    ('I002', 'B002', 120);

-- Insert values into the Account_Transaction table
INSERT INTO Account_Transaction (Transaction_id, Item_id, Buyer_id, Credit_account, Debit_account, Winning_bid_price, Account_id)
VALUES
    ('T001', 'I001', 'B001', 'A001123456', 'A002987654', 550, 'A001123456'),
    ('T002', 'I002', 'B002', 'A002987654', 'A001123456', 120, 'A002987654');

	select *
	from Account_Transaction