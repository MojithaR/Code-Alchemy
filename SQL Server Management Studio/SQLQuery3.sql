 CREATE TABLE Member(
	Member_id varchar(25),
	Member_Name char(35),
	Member_Password varchar(50),
	Home_Address varchar(60),
	CONSTRAINT Member_PK PRIMARY KEY(Member_id)
);

insert into Member(Member_id,Member_Name,Member_Password,Home_Address)
VALUES
('ISA20231A','Ravishan','SD@sl%12lkG','98,Graceland,Horana'),
('ISA20231B','Dinusha','SD@h6@*%$ljG','325/C,Hanwella,padukka'),
('ISA20231C','Heshan','Sg4#&@%bfnP','65,Elsmoreland,Ingiriya'),
('ISA20231D','Shanudi','SD@sl%12lkG','91,Watareka,Padukka'),
('ISA20231E','Rasindu','S$*@!14KW2lkG','28,old town,Ratnapura'),
('ISA20231F','Vishal','@sl%1LD62@k#lA','9587/s,luckyland,kamburupitiya'),
('ISA20231H','Wishwa','12lkG@M%s$Ld','89,Kaduwela,Malabe'),
('ISA20231I','Shanika','SD@K6@+2$fHSO','689/A,Kandy road,Malabe');


CREATE TABLE Category(
	Category_id varchar(4),
	Category_Description varchar(35),
	CONSTRAINT Category_PK PRIMARY KEY(Category_id)
);

insert into Category(Category_id,Category_Description)
VALUES
('C658','Electric'),
('C659','Electronic'),
('C660','Guns'),
('C661','Bicycle-spare-part'),
('C662','vehicle-spare-part'),
('C663','Motors'),
('C664','Machines'),
('C665','Computers');

CREATE TABLE Member_Phone (
    Member_id varchar(25),
    Phone varchar(15), -- Use VARCHAR to store phone numbers
    CONSTRAINT Member_Phone_PK PRIMARY KEY (Member_id),
    CONSTRAINT Member_Phone_FK FOREIGN KEY (Member_id) REFERENCES Member (Member_id)
);

-- Use a single INSERT INTO statement with multiple rows for each Member_id
INSERT INTO Member_Phone (Member_id, Phone) VALUES
('ISA20231A', '+94 011 2329963'),
('ISA20231A', '+94 071 2559903'),
('ISA20231A', '+94 078 2980699'),
('ISA20231B', '+94 011 1234567'),
('ISA20231B', '+94 011 9876543'),
('ISA20231C', '+94 011 4567890'),
('ISA20231C', '+94 011 2345678'),
('ISA20231C', '+94 011 8901234'),
('ISA20231D', '+94 011 3456789'),
('ISA20231E', '+94 011 6543210'),
('ISA20231F', '+94 011 4321098'),
('ISA20231F', '+94 011 7890123'),
('ISA20231F', '+94 011 8765432'),
('ISA20231F', '+94 011 3210987'),
('ISA20231F', '+94 011 5432109'),
('ISA20231F', '+94 011 2109876'),
('ISA20231H', '+94 011 6789012'),
('ISA20231I', '+94 011 7894561');
