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

CREATE TABLE Bank(
	Bank_Number varchar(4),
	Bank_Name varchar(25),
	CONSTRAINT Bank_PK PRIMARY KEY(Bank_Number)
);

CREATE TABLE Bank_Branches(
	Bank_Number varchar(4),
	Branch_Name varchar(25),
	CONSTRAINT Bank_Branch_PK PRIMARY KEY (Bank_Number,Branch_Name),
	CONSTRAINT Bank_Branch_FK FOREIGN KEY (Bank_Number) REFERENCES Bank(Bank_Number)
);

CREATE TABLE Member_Phone(
	Member_id varchar(4),
	Phone int,
	CONSTRAINT Member_phone_PK1 PRIMARY KEY (Member_id,Phone),
	CONSTRAINT Member_phone_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id)
);

CREATE TABLE Member_Email(
	Member_id varchar(4),
	Email varchar(28),
	CONSTRAINT Member_Email_PK PRIMARY KEY (Member_id,Email),
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


CREATE TABLE Item(
	Item_id varchar(4),
	Seller_id varchar(4),
	Category_id varchar(4),
	Item_title varchar(25),
	Item_description varchar(40),
	Bid_start_date date,
	Bid_end_date date,
	Starting_bid_price real,
	Bidding_increment int,
	CONSTRAINT Item_PK PRIMARY KEY(Item_id),
	CONSTRAINT Item_FK1 FOREIGN KEY (Seller_id) REFERENCES Seller(Seller_id),
	CONSTRAINT Item_FK2 FOREIGN KEY (Category_id) REFERENCES Category(Category_id)
);



CREATE TABLE Bid(
	Bid_id varchar(4),
	Bid_time varchar(8),
	Bid_price real,
	Item_id varchar(4),
	CONSTRAINT Bid_PK PRIMARY KEY(Bid_id),
	CONSTRAINT Bid_FK FOREIGN KEY (Item_id) REFERENCES Item(Item_id)
);
--bid time sample value 22:34 PM--

CREATE TABLE Buyer_make_bid (
	Bid_id varchar(4),
	Buyer_id varchar(4),
	CONSTRAINT Buyer_make_bid_PK PRIMARY KEY(Bid_id,Buyer_id),
	CONSTRAINT Buyer_make_bid_FK1 FOREIGN KEY(Bid_id) REFERENCES Buyer(Buyer_id)
);

CREATE TABLE Account(
	Account_id varchar(4),
	Member_id varchar(4),
	Account_Name varchar(28),
	Account_balance real,
	Bank_Number varchar(4),
	CONSTRAINT Account_PK PRIMARY KEY(Account_id),
	CONSTRAINT Account_FK FOREIGN KEY (Bank_Number) REFERENCES Bank(Bank_Number),
	CONSTRAINT Account_FK2 FOREIGN KEY (Member_id) REFERENCES Member (Member_id)
);


CREATE TABLE Transaction1(
	Transaction_id varchar(4),
	Transaction_Time varchar(20),
	CONSTRAINT Transaction1_PK PRIMARY KEY (Transaction_id) 
	);

CREATE TABLE Account_Transaction(
	Transaction_id varchar(4),
	Transaction_date date DEFAULT GETDATE(),
	Bid_id varchar(4),
	Buyer_id varchar(4),
	Item_seller_id varchar(4),
	Winning_bid_price real,
	CONSTRAINT Account_Transaction_PK PRIMARY KEY(Transaction_id,Buyer_id,Bid_id),
	CONSTRAINT Account_Transaction_FK1 FOREIGN KEY (Buyer_id) REFERENCES Buyer(Buyer_id),
	CONSTRAINT Account_Transaction_FK2 FOREIGN KEY (Bid_id) REFERENCES Bid(Bid_id),
	CONSTRAINT Account_Transaction_FK3 FOREIGN KEY (Item_seller_id) REFERENCES Seller(Seller_id)
);

CREATE TABLE Transaction_update_account (
	Transaction_id varchar(4),
	Account_id varchar(4),
	Debit_account varchar(4),
	Credit_account varchar(4),
	Winning_bid_price real,
	CONSTRAINT Transaction_update_account_PK PRIMARY KEY (Transaction_id,Account_id),
	CONSTRAINT Transaction_update_account_FK1 FOREIGN KEY (Transaction_id) REFERENCES Transaction1(Transaction_id),
	CONSTRAINT Transaction_update_account_FK2 FOREIGN KEY (Account_id) REFERENCES Account(Account_id)
);

--inser values

-- Insert values into Member_Phone
INSERT INTO Member_Phone (Member_id, Phone)
VALUES
('M001', 1234567890),
('M002', 9876543210);

-- Insert values into Member_Email
INSERT INTO Member_Email (Member_id, Email)
VALUES
('M001', 'john.doe@example.com'),
('M002', 'alice.smith@example.com');

-- Insert values into Seller
INSERT INTO Seller (Seller_id, Seller_Name, Seller_Password, Seller_Address, Routine_Number)
VALUES
('S001', 'Seller1', 'sellerpass1', '789 Oak St', 'R1234'),
('S002', 'Seller2', 'sellerpass2', '101 Maple Ave', 'R5678');

-- Insert values into Buyer
INSERT INTO Buyer (Buyer_id, Buyer_Name, Buyer_Password, Buyer_Address, Shipping_Address)
VALUES
('B001', 'Buyer1', 'buyerpass1', '456 Pine Rd', '456 Pine Rd'),
('B002', 'Buyer2', 'buyerpass2', '789 Cedar Dr', '789 Cedar Dr');

-- Insert values into Item
INSERT INTO Item (Item_id, Seller_id, Category_id, Item_title, Item_description, Bid_start_date, Bid_end_date, Starting_bid_price, Bidding_increment)
VALUES
('I001', 'S001', 'C001', 'Laptop', 'Brand new laptop', '2023-10-15', '2023-10-20', 1000.00, 50),
('I002', 'S002', 'C002', 'T-shirt', 'Red cotton t-shirt', '2023-10-15', '2023-10-18', 20.00, 5);

-- Insert values into Bid
INSERT INTO Bid (Bid_id, Bid_time, Bid_price, Item_id)
VALUES
('BID001', '22:34 PM', 1100.00, 'I001'),
('BID002', '22:45 PM', 25.00, 'I002');

-- Insert values into Buyer_make_bid
INSERT INTO Buyer_make_bid (Bid_id, Buyer_id)
VALUES
('BID001', 'B001'),
('BID002', 'B002');

-- Insert values into Account
INSERT INTO Account (Account_id, Member_id, Account_Name, Account_balance, Bank_Number)
VALUES
('AC001', 'M001', 'John Doe Account', 5000.00, 'B001'),
('AC002', 'M002', 'Alice Smith Account', 7000.00, 'B002');

-- Insert values into Transaction1 (You may need to generate unique transaction IDs)
INSERT INTO Transaction1 (Transaction_id, Transaction_Time)
VALUES
('T001', '2023-10-10 10:30 AM'),
('T002', '2023-10-11 11:45 AM');

-- Insert values into Account_Transaction (You may need to generate unique transaction IDs)
INSERT INTO Account_Transaction (Transaction_id, Transaction_date, Bid_id, Buyer_id, Item_seller_id, Winning_bid_price)
VALUES
('T001', '2023-10-10', 'BID001', 'B001', 'S001', 1100.00),
('T002', '2023-10-11', 'BID002', 'B002', 'S002', 25.00);

-- Insert values into Transaction_update_account (You may need to generate unique transaction IDs)
INSERT INTO Transaction_update_account (Transaction_id, Account_id, Debit_account, Credit_account, Winning_bid_price)
VALUES
('T001', 'AC001', 'AC001', 'AC002', 1100.00),
('T002', 'AC002', 'AC002', 'AC001', 25.00);



