CREATE TABLE Member(
	Member_id varchar(4),
	Member_Name varchar(25),
	Member_Password varchar(8),
	Home_Address varchar(35),
	CONSTRAINT Member_PK PRIMARY KEY(Member_id),
	CONSTRAINT Member_pk_id_check CHECK (Member_id IS NOT NULL),
	CONSTRAINT Member_id_check CHECK (Member_id LIKE 'M[0-9][0-9][0-9]')
);

INSERT INTO Member VALUES ('M001','Jennifer','5678903','John street');
INSERT INTO Member VALUES ('M002','Will smith','5632120','Philadelphia road,california');
INSERT INTO Member VALUES ('M003','John Deer','4525358','Old moor street');
INSERT INTO Member VALUES ('M004','Jane Smith','8765432','Maple Avenue');
INSERT INTO Member VALUES ('M005','Robert Johnson','7890123','Oak Lane');
INSERT INTO Member VALUES ('M006','Emily White','1234567','Pine Street');

CREATE TABLE Category(
	Category_id varchar(4),
	Category_Description varchar(35),
	CONSTRAINT Category_PK PRIMARY KEY(Category_id),
	CONSTRAINT Category_pk_check CHECK (Category_id IS NOT NULL),
	CONSTRAINT Category_id_check CHECK (Category_id LIKE 'C[0-9][0-9][0-9]')
);

INSERT INTO Category VALUES ('C001','Furniture');
INSERT INTO Category VALUES ('C002','Electronics');
INSERT INTO Category VALUES ('C003','Appliances');
INSERT INTO Category VALUES ('C004','Clothing');
INSERT INTO Category VALUES ('C005','Home Decor');
INSERT INTO Category VALUES ('C006','Outdoor Gear');

CREATE TABLE Bank(
	Bank_Number varchar(4),
	Bank_Name varchar(25),
	CONSTRAINT Bank_PK PRIMARY KEY(Bank_Number),
	CONSTRAINT Bank_pk_check CHECK (Bank_Number IS NOT NULL),
	CONSTRAINT Bank_id_check CHECK (Bank_Number LIKE 'B[0-9][0-9][0-9]')
);

INSERT INTO Bank VALUES ('B001','Sampath Bank');
INSERT INTO Bank VALUES ('B002','NSB');
INSERT INTO Bank VALUES ('B003','HNB');
INSERT INTO Bank VALUES ('B004','BOC');
INSERT INTO Bank VALUES ('B005','Amana Bank');
INSERT INTO Bank VALUES ('B006','DFCC');

CREATE TABLE Bank_Branches(
	Bank_Number varchar(4),
	Branch_Name varchar(25),
	CONSTRAINT Bank_Branch_PK PRIMARY KEY (Bank_Number,Branch_Name),
	CONSTRAINT Bank_Branch_FK FOREIGN KEY (Bank_Number) REFERENCES Bank(Bank_Number),
	CONSTRAINT Bank_Branch_pk_check CHECK (Bank_Number IS NOT NULL),
	CONSTRAINT Bank_id_check_in_bank_branches CHECK (Bank_Number LIKE 'B[0-9][0-9][0-9]')
);

INSERT INTO Bank_Branches VALUES ('B001','Kelaniya branch');
INSERT INTO Bank_Branches VALUES ('B002','Malabe branch');
INSERT INTO Bank_Branches VALUES ('B003','Anuradapura branch');
INSERT INTO Bank_Branches VALUES ('B004','Colombo branch');
INSERT INTO Bank_Branches VALUES ('B005','Batticalo branch');
INSERT INTO Bank_Branches VALUES ('B006','Maharagama branch');

CREATE TABLE Member_Phone1 (
    Member_id varchar(4),
    Phone varchar(10),  -- Changed data type to varchar(10) to store phone numbers
    CONSTRAINT Member_phone_PK1 PRIMARY KEY (Member_id, Phone),
    CONSTRAINT Member_phone_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id), -- Make sure the 'Member' table exists
    CONSTRAINT Member_Phone_id CHECK (Member_id IS NOT NULL),
    --CONSTRAINT Member_phone_size CHECK (LENGTH(Phone) = 10)  -- Use LENGTH to check the length of the phone number
);

INSERT INTO Member_Phone1 VALUES ('M001', '011290759');
INSERT INTO Member_Phone1 VALUES ('M002', '078190488');
INSERT INTO Member_Phone1 VALUES ('M003', '070376735');
INSERT INTO Member_Phone1 VALUES ('M004', '071947218');
INSERT INTO Member_Phone1 VALUES ('M005', '071703198');
INSERT INTO Member_Phone1 VALUES ('M006', '070224031');

CREATE TABLE Member_Email1(
	Member_id varchar(4),
	Email varchar(28),
	CONSTRAINT Member_Email_PK PRIMARY KEY (Member_id,Email),
	CONSTRAINT Member_Email_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id),
	--CONSTRAINT Memeber_email_chekc CHECK (Email LIKE '%@')
);

INSERT INTO Member_Email1 VALUES ('M001','geethdias9@gmail.com');
INSERT INTO Member_Email1 VALUES ('M002','hareendradias@gmail.com');
INSERT INTO Member_Email1 VALUES ('M003','ranasinghe23@gmail.com');
INSERT INTO Member_Email1 VALUES ('M004','kavinduheshan@gmail.com');
INSERT INTO Member_Email1 VALUES ('M005','udageeth20@outlook.com');
INSERT INTO Member_Email1 VALUES ('M006','sajithpremadasa@gmail.com');

CREATE TABLE Seller(
	Member_id varchar(4),
	Routine_Number varchar(5),
	CONSTRAINT Seller_PK PRIMARY KEY(Member_id),
	CONSTRAINT Seller_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id),
	CONSTRAINT Seller_memer_id_check CHECK (Member_id LIKE 'M[0-9][0-9][0-9]')
);

INSERT INTO Seller VALUES ('M001',2);
INSERT INTO Seller VALUES ('M002',4);
INSERT INTO Seller VALUES ('M003',6);

CREATE TABLE Buyer(
	Member_id varchar(4),
	Shipping_Address varchar(35),
	CONSTRAINT Buyer_PK PRIMARY KEY(Member_id),
	CONSTRAINT Buyer_FK FOREIGN KEY (Member_id) REFERENCES Member(Member_id),
	CONSTRAINT Buyer_member_id CHECK (Member_id LIKE 'M[0-9][0-9][0-9]')
);

SELECT * FROM Buyer;
INSERT INTO Buyer VALUES ('M004','Maple Avenue');
INSERT INTO Buyer VALUES ('M005','oak Lane');
INSERT INTO Buyer VALUES ('M006','Pine street');

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
	CONSTRAINT Item_FK1 FOREIGN KEY (Seller_id) REFERENCES Seller(Member_id),
	CONSTRAINT Item_FK2 FOREIGN KEY (Category_id) REFERENCES Category(Category_id),
	CONSTRAINT Item_pk_check CHECK (Item_id LIKE 'I[0-9][0-9][0-9]')
);

SELECT * FROM Item;
SELECT * FROM Category;
INSERT INTO Item VALUES ('I001','M001','C001','Bed sofa','IRIS bed sofa with soft mate','2023/10/20','2023/10/21',45000.00,20000);
INSERT INTO Item VALUES ('I002','M001','C003','Sandwithc maker','A portable sandwith maker','2023/10/22','2023/10/23',2000.00,500);
INSERT INTO Item VALUES ('I003','M002','C002','Samsung TV','Smart TV with dual processor','2023-10-10','2023-10-12',25000.00,10000);
INSERT INTO Item VALUES ('I004','M002','C006','Celius bed','Portable single bed','2023-10-14','2023-10-17',15000.00,5000);
INSERT INTO Item VALUES ('I005','M003','C004','Blouse','curved hem long line blouse','2023-10-20','2023-10-21',1000.00,200);
INSERT INTO Item VALUES ('I006','M001','C001','Wall art','Wooden laser cut wall art','2023-10-29','2023-10-30',45000.00,20000);


CREATE TABLE Bid(
	Bid_id varchar(4),
	Bid_time varchar(8),
	Bid_price real,
	Item_id varchar(4),
	CONSTRAINT Bid_PK PRIMARY KEY(Bid_id),
	CONSTRAINT Bid_FK FOREIGN KEY (Item_id) REFERENCES Item(Item_id),
	CONSTRAINT Bid_pk_check CHECK (Bid_id LIKE 'BB[0-9][0-9]')
);
--bid time sample value 22:34 PM--

INSERT INTO Bid VALUES ('BB01','22:34 PM',2000.00,'I001');
INSERT INTO Bid VALUES ('BB02','11:00 AM',50.00,'I002');
INSERT INTO Bid VALUES ('BB03','14:00 PM',2000.00,'I003');
INSERT INTO Bid VALUES ('BB04','13:00 PM',1000.00,'I004');
INSERT INTO Bid VALUES ('BB05','17:00 PM',50.00,'I005');
INSERT INTO Bid VALUES ('BB06','18:00 PM',8000.00,'I006');

CREATE TABLE Buyer_make_bid (
	Bid_id varchar(4),
	Buyer_id varchar(4),
	CONSTRAINT Buyer_make_bid_PK PRIMARY KEY(Bid_id,Buyer_id),
	CONSTRAINT FK1 FOREIGN KEY (Buyer_id) REFERENCES Buyer(Member_id),
	CONSTRAINT FK2 FOREIGN KEY (Bid_id) REFERENCES Bid(Bid_id)
);

INSERT INTO Buyer_make_bid VALUES ('BB01','M004');
INSERT INTO Buyer_make_bid VALUES ('BB02','M004');
INSERT INTO Buyer_make_bid VALUES ('BB03','M005');
INSERT INTO Buyer_make_bid VALUES ('BB04','M005');
INSERT INTO Buyer_make_bid VALUES ('BB05','M006');
INSERT INTO Buyer_make_bid VALUES ('BB06','M006');

CREATE TABLE Account(
	Account_id varchar(4),
	Member_id varchar(4),
	Account_Name varchar(28),
	Account_balance real,
	Bank_Number varchar(4),
	CONSTRAINT Account_PK PRIMARY KEY(Account_id),
	CONSTRAINT Account_FK FOREIGN KEY (Bank_Number) REFERENCES Bank(Bank_Number),
	CONSTRAINT Account_FK2 FOREIGN KEY (Member_id) REFERENCES Member(Member_id),
	CONSTRAINT Account_pk_check CHECK (Account_id LIKE 'A[0-9][0-9][0-9]')
);

INSERT INTO Account VALUES ('A001','M001','Savings account',2500.00,'B001');
INSERT INTO Account VALUES ('A002','M002','Buisness account',10000.00,'B001');
INSERT INTO Account VALUES ('A003','M003','Foreign currency account',20000.00,'B002');
INSERT INTO Account VALUES ('A004','M004','Current account',25000.00,'B003');
INSERT INTO Account VALUES ('A005','M005','Checking account',10000.00,'B004');
INSERT INTO Account VALUES ('A006','M006','Money market account',45000.00,'B006');
INSERT INTO Account VALUES ('A007','M001','Savings account',8000.00,'B005');

CREATE TABLE Transactionn(
	Transaction_id varchar(4),
	Transaction_date date DEFAULT GETDATE(),
	CONSTRAINT Account_Transaction_PK PRIMARY KEY(Transaction_id),
);

INSERT INTO Transactionn VALUES ('T001' ,'2023-10-21');
INSERT INTO Transactionn VALUES ('T002' ,'2023-10-23');
INSERT INTO Transactionn VALUES ('T003' ,'2023-10-30');
INSERT INTO Transactionn VALUES ('T004' ,'2023-11-04' );
INSERT INTO Transactionn VALUES ('T005' ,'2023-11-05');

CREATE TABLE Winnig_bid (
    Wining_id varchar(4),
	Bid_id varchar(4),
	Buyer_id varchar(4),
	Transaction_id varchar(4),
	Winning_bid_price real,
	CONSTRAINT Winning_bid PRIMARY KEY (Wining_id,Bid_id,Buyer_id),
	CONSTRAINT Bid_id_reference FOREIGN KEY (Bid_id) REFERENCES Bid(Bid_id),
	CONSTRAINT Buyer_id_reference FOREIGN KEY (Buyer_id) REFERENCES Buyer(Member_id),
	CONSTRAINT Transaction_reference FOREIGN KEY (Transaction_id) REFERENCES Transactionn(Transaction_id)
);

INSERT INTO Winnig_bid VALUES ('W001','BB01','M004','T001',65000.00);
INSERT INTO Winnig_bid VALUES ('W002','BB02','M005','T002',2500.00);
INSERT INTO Winnig_bid VALUES ('W003','BB03','M004','T003',35000.00);


-- Create a trigger that ensures the bid price is always positive
CREATE TRIGGER EnsurePositiveBidPrice
ON Bid
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Bid_price <= 0)
    BEGIN
        RAISEERROR('Bid price must be positive', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO Bid (Bid_id, Bid_time, Bid_price, Item_id)
        SELECT Bid_id, Bid_time, Bid_price, Item_id
        FROM inserted;
    END
END;

--Triggers
-- 01 Create a trigger that ensures the bid price is always positive
CREATE TRIGGER EnsurePositiveBidPrice
ON Bid
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @BidPrice real;
    SELECT @BidPrice = Bid_price FROM inserted;

    IF @BidPrice <= 0
    BEGIN
        -- Replace this with a valid error message and state
        THROW 50001, 'Bid price must be positive', 1;
    END
    ELSE
    BEGIN
        -- Insert the valid data into the Bid table
        INSERT INTO Bid (Bid_id, Bid_time, Bid_price, Item_id)
        SELECT Bid_id, Bid_time, Bid_price, Item_id
        FROM inserted;
    END
END;           --- Done this will execute---


-- 02 Create a trigger to update the bid price on the Item table when a bid is updated
CREATE TRIGGER UpdateBidPriceOnItemUpdate
ON Bid
AFTER UPDATE
AS
BEGIN
    UPDATE i
    SET i.Starting_bid_price = i.Starting_bid_price + (i.Starting_bid_price * 0.15)  -- Increase the bid price by 15%
    FROM Item i
    INNER JOIN inserted AS b ON i.Item_id = b.Item_id;
END;
                 --- Done this will execute---



---Views----
---01 view provides information about members associated bank accounts in "Sampath Bank."

CREATE VIEW MemberInfo AS
SELECT M.Member_id, M.Member_Name, M.Home_Address
FROM Member M
WHERE EXISTS (
    SELECT 1
    FROM Account A
    WHERE A.Member_id = M.Member_id
    AND A.Bank_Number = 'B001'  -- 'Sampath Bank'
);
                    --- Done this will execute---

---02 lists the names and emails of members who have bid for laptops
CREATE VIEW LaptopBidders AS
SELECT M.Member_Name, ME.Email, B.Bid_price
FROM Member M
JOIN Member_Email1 ME ON M.Member_id = ME.Member_id
JOIN Buyer_make_bid BB ON M.Member_id = BB.Buyer_id
JOIN Bid B ON BB.Bid_id = B.Bid_id
JOIN Item I ON B.Item_id = I.Item_id
JOIN Category C ON I.Category_id = C.Category_id
WHERE C.Category_Description = 'Laptops';

                 --- Done this will execute---


------ INDEXES ---------

--01 Optimize bid table. 
CREATE INDEX IX_Bid_Item_id ON Bid (Item_id);
--- Done this will execute---

---02 Optimize member email search

------PROCEDURES -----

----01 Retrieve members with Accounts in Sampath bank----
CREATE PROCEDURE GetMembersWithSampathBankAccounts
AS
BEGIN
    SELECT M.Member_Name, M.Home_Address
    FROM Member M
    WHERE EXISTS (
        SELECT 1
        FROM Account A
        WHERE A.Member_id = M.Member_id
        AND A.Bank_Number = 'B001'  -- 'Sampath Bank'
    );
END;
         --- Done this will execute---

--02 Retrieve Laptop Bidders
CREATE PROCEDURE GetLaptopBidders
AS
BEGIN
    SELECT M.Member_Name, ME.Email, B.Bid_price
    FROM Member M
    JOIN Member_Email1 ME ON M.Member_id = ME.Member_id
    JOIN Buyer_make_bid BB ON M.Member_id = BB.Buyer_id
    JOIN Bid B ON BB.Bid_id = B.Bid_id
    JOIN Item I ON B.Item_id = I.Item_id
    JOIN Category C ON I.Category_id = C.Category_id
    WHERE C.Category_Description = 'Laptops'
    ORDER BY B.Bid_price ASC;
END;
        --- Done this will execute---


----03 Sellers with High Bid Sum
CREATE PROCEDURE GetSellersWithHighBidSum
AS
BEGIN
    SELECT M.Member_Name
    FROM Member M
    JOIN Seller S ON M.Member_id = S.Member_id
    JOIN Item I ON S.Member_id = I.Seller_id
    GROUP BY M.Member_Name
    HAVING SUM(I.Starting_bid_price) > 30000.00;
END;

---04 Increase bids for Saman.

CREATE PROCEDURE IncreaseBidsForSaman
AS
BEGIN
    DECLARE @SamanMemberID varchar(4);
    SET @SamanMemberID = (SELECT Member_id FROM Member WHERE Member_Name = 'Saman');

    UPDATE Bid
    SET Bid_price = Bid_price * 1.15
    WHERE EXISTS (
        SELECT 1
        FROM Buyer_make_bid BB
        WHERE BB.Buyer_id = @SamanMemberID
        AND BB.Bid_id = Bid.Bid_id
    );
END;

