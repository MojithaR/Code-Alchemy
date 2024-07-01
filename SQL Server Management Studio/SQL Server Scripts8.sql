CREATE TABLE Member(
	Member_id varchar(4),
	Member_Name varchar(25),
	Member_Password varchar(8),
	Home_Address varchar(35),
	CONSTRAINT Member_PK PRIMARY KEY(Member_id)
);
SELECT * FROM Member;

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
	Bid_start_date varchar(11),
	Bid_end_date varchar(11),
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
	CONSTRAINT FK1 FOREIGN KEY (Buyer_id) REFERENCES Buyer(Buyer_id),
	CONSTRAINT FK2 FOREIGN KEY (Bid_id) REFERENCES Bid(Bid_id)
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


SELECT * FROM Member;
SELECT * FROM Item;
SELECT * FROM Transaction_update_account;

INSERT INTO Member VALUES ('M001','Jennifer','5678903','John street');
INSERT INTO Member VALUES ('M002','Will smith','5632120','Philadelphia road,california');
INSERT INTO Member VALUES ('M003','John Deer','4525358','Old moor street');
INSERT INTO Member VALUES ('M004','Jane Smith','8765432','Maple Avenue');
INSERT INTO Member VALUES ('M005','Robert Johnson','7890123','Oak Lane');
INSERT INTO Member VALUES ('M006','Emily White','1234567','Pine Street');


SELECT * FROM Category;
INSERT INTO Category VALUES ('C001','Furniture');
INSERT INTO Category VALUES ('C002','Electronics');
INSERT INTO Category VALUES ('C003','Appliances');
INSERT INTO Category VALUES ('C004','Clothing');
INSERT INTO Category VALUES ('C005','Home Decor');
INSERT INTO Category VALUES ('C006','Outdoor Gear');

SELECT * FROM Bank;
INSERT INTO Bank VALUES ('B001','Sampath Bank');
INSERT INTO Bank VALUES ('B002','NSB');
INSERT INTO Bank VALUES ('B003','HNB');
INSERT INTO Bank VALUES ('B004','BOC');
INSERT INTO Bank VALUES ('B005','Amana Bank');
INSERT INTO Bank VALUES ('B006','DFCC');

SELECT * FROM Bank_Branches;
INSERT INTO Bank_Branches VALUES ('B001','Kelaniya branch');
INSERT INTO Bank_Branches VALUES ('B002','Malabe branch');
INSERT INTO Bank_Branches VALUES ('B003','Anuradapura branch');
INSERT INTO Bank_Branches VALUES ('B004','Colombo branch');
INSERT INTO Bank_Branches VALUES ('B005','Batticalo branch');
INSERT INTO Bank_Branches VALUES ('B006','Maharagama branch');

SELECT *FROM Member_Phone;
INSERT INTO Member_Phone VALUES ('M001',0112907595);
INSERT INTO Member_Phone VALUES ('M002',0781904889);
INSERT INTO Member_Phone VALUES ('M003',0703767354);
INSERT INTO Member_Phone VALUES ('M004',0719472189);
INSERT INTO Member_Phone VALUES ('M005',0717031982);
INSERT INTO Member_Phone VALUES ('M006',0702240312);

SELECT * FROM Member_Email;
INSERT INTO Member_Email VALUES ('M001','geethdias9@gmail.com');
INSERT INTO Member_Email VALUES ('M002','hareendradias@gmail.com');
INSERT INTO Member_Email VALUES ('M003','ranasinghe23@gmail.com');
INSERT INTO Member_Email VALUES ('M004','kavinduheshan@gmail.com');
INSERT INTO Member_Email VALUES ('M005','udageeth20@outlook.com');
INSERT INTO Member_Email VALUES ('M006','sajithpremadasa@gmail.com');

SELECT * FROM Seller;
INSERT INTO Seller VALUES ('M001','Jennifer','5678903','John street',2);
INSERT INTO Seller VALUES ('M002','Will smith','5632120','Philadelphia road,california',4);
INSERT INTO Seller VALUES ('M003','John Deer','4525358','Old moor street',6);

SELECT * FROM Buyer;
INSERT INTO Buyer VALUES ('M004','Jane Smith','8765432','Maple Avenue','Maple Avenue');
INSERT INTO Buyer VALUES ('M005','Robert Johnson','7890123','Oak Lane','oak Lane');
INSERT INTO Buyer VALUES ('M006','Emily White','1234567','Pine Street','Pine street');

ALTER TABLE Item
ALTER COLUMN Item_title varchar(50);

SELECT * FROM Item;
SELECT * FROM Category;
INSERT INTO Item VALUES ('I001','M001','C001','Bed sofa','IRIS bed sofa with soft mate','2023/10/20','2023/10/21',45000.00,20000);
INSERT INTO Item VALUES ('I002','M001','C003','Sandwithc maker','A portable sandwith maker','2023/10/22','2023/10/23',2000.00,500);
INSERT INTO Item VALUES ('I003','M002','C002','Samsung TV','Smart TV with dual processor','2023-10-10','2023-10-12',25000.00,10000);
INSERT INTO Item VALUES ('I004','M002','C006','Celius bed','Portable single bed','2023-10-14','2023-10-17',15000.00,5000);
INSERT INTO Item VALUES ('I005','M003','C004','Blouse','curved hem long line blouse','2023-10-20','2023-10-21',1000.00,200);
INSERT INTO Item VALUES ('I006','M001','C001','Wall art','Wooden laser cut wall art','2023-10-29','2023-10-30',45000.00,20000);

SELECT * FROM Bid;
INSERT INTO Bid VALUES ('BB01','22:34 PM',2000.00,'I001');
INSERT INTO Bid VALUES ('BB02','11:00 AM',50.00,'I002');
INSERT INTO Bid VALUES ('BB03','14:00 PM',2000.00,'I003');
INSERT INTO Bid VALUES ('BB04','13:00 PM',1000.00,'I004');
INSERT INTO Bid VALUES ('BB05','17:00 PM',50.00,'I005');
INSERT INTO Bid VALUES ('BB06','18:00 PM',8000.00,'I006');

SELECT * FROM Buyer_make_bid;
INSERT INTO Buyer_make_bid VALUES ('BB01','M004');
INSERT INTO Buyer_make_bid VALUES ('BB02','M004');
INSERT INTO Buyer_make_bid VALUES ('BB03','M005');
INSERT INTO Buyer_make_bid VALUES ('BB04','M005');
INSERT INTO Buyer_make_bid VALUES ('BB05','M006');
INSERT INTO Buyer_make_bid VALUES ('BB06','M006');