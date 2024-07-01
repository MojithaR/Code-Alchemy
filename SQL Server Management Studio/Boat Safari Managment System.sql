CREATE TABLE YARD ( 
   YARD_ID   char(5) NOT NULL,      
   YARD_NAME varchar(20) NOT NULL, 
   SIZE      char(5),      
   LOCATION  varchar(500), 
   constraint YARD_PK PRIMARY KEY(YARD_ID)

);


DRIVER DETA LIFE GAURD CUSTOMER 1 2  DRIVE RNAME / IDS / CONTACT NUMBER 

SELECT C.CustomerID , C.First_Name , C.Last_Name , D.DRIVER_ID, D.First_Name, L.Lifeguard_id, L.First_Name
FROM Customer C , DRIVER D , Lifeguard L
WHERE C.


insert into YARD values ('YD001' , 'Aquatic' , '300 m' , 'Madu River Galle District' );  
insert into YARD values ('YD002'  , 'Blue Ocean' , '500 m' , 'Kalpitiya, Puttalam District' ); 
insert into YARD values ('YD003'  , 'Sun Valley' , '450 m' , 'Mirissa, Matara District' ); 
insert into YARD values ('YD004' , 'Sea Birds' , '500 m' , 'Hikkaduwa , Galle District' ); 
insert into YARD values ('YD005'  , 'Queens' , '350 m' , 'West coast Beach, Colombo District' );


CREATE TABLE DRIVER ( 
       DRIVER_ID char(6) NOT NULL, 
       NIC char(12) NOT NULL,    
       DOB date,          
       First_Name varchar(15) NOT NULL, 
       Last_Name  varchar(15) NOT NULL,
	   Lifeguard_id varchar(5) NOT NULL,
	   Boat_No char(6),
       constraint DRIVER_ID PRIMARY KEY(DRIVER_ID),
	   constraint DRIVER_check check(NIC LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
);

insert into DRIVER values ('DID001' , '199612342' , '1995-11-17' , 'Gamlath' , 'Hettige','LG001 ', 'E0001' ); 
insert into DRIVER values ('DID002', '199968769' , '1996-08-09' , 'Pannala' , 'Gnanananda', 'LG002 ' , 'E0002 '  ); 
insert into DRIVER values ('DID003' , '199898348' , '1998-02-15' , 'Praneeth' , 'Banda', 'LG003 ' , 'D0001 '   ); 
insert into DRIVER values ('DID004' , '199794876' , '1994-03-05' , 'Mahinda' , 'Weerakoon', 'LG004 ' , 'D0002 '   ); 
insert into DRIVER values ('DID005', '199594671' , '2000-06-09' , 'Jayakody' , 'Wickremasinghe', 'LG005 ' , 'D0003 '  );


CREATE TABLE Lifeguard(
	Lifeguard_id varchar(5) NOT NULL,
	NIC varchar(12) NOT NULL,
	ILS_RegNo char(12) NOT NULL,
	DOB date,
	First_Name varchar(15) NOT NULL,
	Last_Name varchar(15) NOT NULL,
	Driver_ID char(6) NOT NULL,
	Boat_No char(5),
	
	CONSTRAINT Primary_key PRIMARY KEY (Lifeguard_id),
	CONSTRAINT Lifeguard_check CHECK(NIC LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT Foreign_key_1_Lifeguard FOREIGN KEY (DRIVER_ID) REFERENCES DRIVER (DRIVER_ID)
)

INSERT INTO Lifeguard VALUES('LG001','199023446578','ISL2023LG321','1990-02-21','Nimali','Jayalath','DID001','E0001');
INSERT INTO Lifeguard VALUES('LG002','199387639703','ISL2023LG443','1993-06-01','Sumith','Athukorala','DID002','E0002');
INSERT INTO Lifeguard VALUES('LG003','199567359834','ISL2023LG032','1995-11-25','Santhush','Akalanka','DID003','D0001')
INSERT INTO Lifeguard VALUES('LG004','198896833957','ISL2023LG432','1988-09-13','Buddika','Jayaweera','DID004','D0002');
INSERT INTO Lifeguard VALUES('LG005','200094433145','ISL2023LG913','2000-08-26','Eshanga','Bashitha','DID005','D0003');


ALTER TABLE DRIVER
ADD CONSTRAINT Lifeguard_fk
FOREIGN KEY (Lifeguard_id) REFERENCES Lifeguard(Lifeguard_id)

CREATE TABLE Lifegurd_Numbers(
 Lifeguard_id varchar(5),
 PhoneNo varchar(12)

 CONSTRAINT Lifegurd_Numbers_check CHECK(PhoneNo LIKE'+[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]') 
 CONSTRAINT Lifeguard_id_in_Lifeguard_numbers FOREIGN KEY (Lifeguard_id) REFERENCES Lifeguard (Lifeguard_id)
);

INSERT INTO Lifegurd_Numbers VALUES('LG001','+94772356487');
--INSERT INTO Lifegurd_Numbers VALUES('LG001','+94715690889');
INSERT INTO Lifegurd_Numbers VALUES('LG002','+94752098483');
--INSERT INTO Lifegurd_Numbers VALUES('LG002','+94764593052');
INSERT INTO Lifegurd_Numbers VALUES('LG003','+94724958394');
INSERT INTO Lifegurd_Numbers VALUES('LG004','+94789432450');
--INSERT INTO Lifegurd_Numbers VALUES('LG004','+94714957763');
INSERT INTO Lifegurd_Numbers VALUES('LG005','+94779499302');
--INSERT INTO Lifegurd_Numbers VALUES('LG005','+94719090322');
--INSERT INTO Lifegurd_Numbers VALUES('LG005','+94755648653');


CREATE TABLE Driver_Number (
	Driver_ID char(6) NOT NULL,
	Driver_phone_number varchar(15) NOT NULL,
	constraint DRIVER_Number_pk PRIMARY KEY(DRIVER_ID),
	CONSTRAINT Driver_ID_in_Driver_Number FOREIGN KEY(Driver_ID) REFERENCES Driver(Driver_ID),
);


INSERT INTO Driver_Number VALUES ('DID001','+94715689263');
INSERT INTO Driver_Number VALUES ('DID005','+94775813589');
INSERT INTO Driver_Number VALUES ('DID002','+94761535759');
INSERT INTO Driver_Number VALUES ('DID003','+94714587358');
INSERT INTO Driver_Number VALUES ('DID004','+94717031987');
-- This took as not multivalues -- 


CREATE TABLE YARD_DRIVER (
      YARD_ID   char(5) NOT NULL,
	  DRIVER_ID char(6) NOT NULL,
	  constraint YARD_DRIVER_pk PRIMARY KEY(YARD_ID,DRIVER_ID),
	  CONSTRAINT YARD_ID_in_YARD_DRIVER_fk FOREIGN KEY (YARD_ID) REFERENCES YARD (YARD_ID),
	  CONSTRAINT DRIVER_ID_in_YARD_DRIVER_fk FOREIGN KEY (DRIVER_ID) REFERENCES DRIVER (DRIVER_ID),
);

insert into YARD_DRIVER values ('YD001' , 'DID001' );
insert into YARD_DRIVER values ('YD002' , 'DID002' );
insert into YARD_DRIVER values ('YD003' , 'DID003' );
insert into YARD_DRIVER values ('YD004',  'DID004' );
insert into YARD_DRIVER values ('YD005' , 'DID005' );

CREATE TABLE Boat (
	Boat_No char(5) NOT NULL, 
	noOfSeates int,
	Brand varchar(50),
	YARD_ID char(5) NOT NULL, 
	DRIVER_ID char(6) NOT NULL,
	LifeGuard_Id varchar(5) NOT NULL, 
	CONSTRAINT Boat_pk PRIMARY KEY (Boat_NO),
	CONSTRAINT DRIVER_ID_in_Boat_fk FOREIGN KEY (DRIVER_ID) REFERENCES DRIVER (DRIVER_ID),
    CONSTRAINT LifeGuard_Id_in_Boat_fk FOREIGN KEY (Lifeguard_id) REFERENCES Lifeguard (Lifeguard_id),
	CONSTRAINT YARD_ID_in_Boat_fk FOREIGN KEY (YARD_ID) REFERENCES YARD (YARD_ID)
)  

INSERT INTO Boat (Boat_No , noOfSeates , Brand , Yard_ID , Driver_ID , LifeGuard_ID) 
VALUES ( 'E0001', 8 , 'Boston Whaler' , 'YD001' , 'DID001' , 'LG001') 
INSERT INTO Boat (Boat_NO , noOfSeates , Brand , Yard_ID , Driver_ID , LifeGuard_ID) 
VALUES ('E0002' , 4 , 'Bayliner' , 'YD002' , 'DID002' , 'LG002') 
INSERT INTO Boat (Boat_NO , noOfSeates , Brand , Yard_ID , Driver_ID , LifeGuard_ID) 
VALUES ('D0001' , 8 , 'Bayliner' , 'YD003' , 'DID003' , 'LG003') 
INSERT INTO Boat (Boat_NO , noOfSeates , Brand , Yard_ID , Driver_ID , LifeGuard_ID) 
VALUES ('E0003' , 2 , 'Sea Ray' , 'YD004' , 'DID004' , 'LG004') 
INSERT INTO Boat (Boat_NO , noOfSeates , Brand , Yard_ID , Driver_ID , LifeGuard_ID) 
VALUES ('D0002' , 4 , 'Grady White' , 'YD005' , 'DID005' , 'LG005') 



CREATE TABLE Engine_Powered (
	Boat_No char(5) NOT NULL,
	Fuel_Type varchar (30),
	Engine_No int NOT NULL,
	CONSTRAINT Engine_Powered_ISA_pk PRIMARY KEY (Boat_NO),
	CONSTRAINT Boat_No_in_Engine_Powered_fk FOREIGN KEY (Boat_NO) REFERENCES Boat (Boat_NO)
	-- Engine_Powered is a ISA with Boat Entity --
)

INSERT INTO Engine_Powered (Boat_NO , Fuel_Type , Engine_No) 
VALUES ('D0001' , 'gasoline and ethanol' , 501 ) 
INSERT INTO Engine_Powered (Boat_NO , Fuel_Type , Engine_No) 
VALUES ('D0002' , 'gasoline and ethanol' , 502 ) 

/* INSERT INTO Engine_Powered (Boat_NO , Fuel_Type , Engine_No) 
VALUES ('D0002' , 'diesel' , 503 ) 
INSERT INTO Engine_Powered (Boat_NO , Fuel_Type , Engine_No) 
VALUES ('D0002' , 'diesel' , 504 ) 
INSERT INTO Engine_Powered (Boat_NO , Fuel_Type , Engine_No) 
VALUES ('D0001' , 'gasoline and ethanol' , 505 ) */

--We can't add more values to Engine_Powered due to limitation of foreign id range (1-5)--


CREATE TABLE Electric_Powered(
	Boat_No char(5) NOT NULL, 
	Mortor_NO int NOT NULL,
	Battery_capasity char(15),
	Charging_Time int,
	CONSTRAINT Electric_Powered_ISA_pk PRIMARY KEY (Boat_NO),
	CONSTRAINT Boat_No_in_Electric_Powered_fk FOREIGN KEY (Boat_NO) REFERENCES Boat (Boat_NO)
	-- Electric_Powered is a ISA with Boat Entity --
)


INSERT INTO Electric_Powered (Boat_NO , Mortor_NO , Battery_capasity , Charging_Time) 
VALUES ('E0001' , 6620 , '86h' , 05 ) 
INSERT INTO Electric_Powered (Boat_NO , Mortor_NO , Battery_capasity , Charging_Time) 
VALUES ('E0002' , 8015 , '250h' , 11 ) 
INSERT INTO Electric_Powered (Boat_NO , Mortor_NO , Battery_capasity , Charging_Time) 
VALUES ('E0003' , 0515 , '115h' , 08 ) 

-- Same error occuer like Engine_powered--

CREATE TABLE Equipment (
	Equ_No int NOT NULL,
	Boat_No char(5) NOT NULL,
	Name varchar(30),
	condition char (6),
	Descripton varchar(250)
	CONSTRAINT Equipment_pk PRIMARY KEY (Equ_No),
	CONSTRAINT Boat_No_in_Equipment_fk FOREIGN KEY (Boat_NO) REFERENCES Boat (Boat_NO)
	-- Equipment is Weak Entitiy with Boat Entity --
)

INSERT INTO Equipment(Equ_No , Boat_NO , Name , condition , Descripton) 
VALUES (20001 , 'E0001' , 'Fire extinguishers' , 'Good' , 'A fire extinguisher is a handheld active fire protection device  
usually filled with a dry or wet chemical used to extinguish or control small fires') 
INSERT INTO Equipment(Equ_No , Boat_NO , Name , condition , Descripton) 
VALUES (20002 , 'E0002' , 'Sound signaling devices' , 'Good' , 'sound-making devices that are not fitted on the  
pleasure craft and include whistles, pealess whistles, air horns') 
INSERT INTO Equipment(Equ_No , Boat_NO , Name , condition , Descripton) 
VALUES (20003 , 'D0001' , 'Fire extinguishers' , 'Poor' , 'A fire extinguisher is a handheld active fire protection device  
usually filled with a dry or wet chemical used to extinguish or control small fires') 
INSERT INTO Equipment(Equ_No , Boat_NO , Name , condition , Descripton) 
VALUES (20004 , 'E0003' , 'Visual signaling devices' , 'Good' , 'feature glass fiber reinforced polyester (GRP) or  
marine grade and corrosion proof aluminum enclosures') 
INSERT INTO Equipment(Equ_No , Boat_NO , Name , condition , Descripton) 
VALUES (20005 , 'D0002' , 'Visual signaling devices' , 'Good' , 'sound-making devices that are not fitted on the  
pleasure craft and include whistles, pealess whistles, air horns') 


CREATE TABLE Customer(
	CustomerID varchar(6) NOT NULL,
	First_Name varchar(15) NOT NULL,
	Last_Name varchar(15) NOT NULL,
	DOB date,
	Address varchar (50),
	Nationality varchar(20),
	Age int,
	Boat_No char(5) NOT NULL,
	DRIVER_ID char(6) NOT NULL,
	Lifeguard_Id varchar(5) NOT NULL,

	CONSTRAINT Primary_key_Customer PRIMARY KEY (CustomerID),
	CONSTRAINT DRIVER_ID_in_Customer_fk FOREIGN KEY (DRIVER_ID) REFERENCES DRIVER (DRIVER_ID),
	CONSTRAINT LifeGuard_Id_in_Customer_fk FOREIGN KEY (Lifeguard_id) REFERENCES Lifeguard (Lifeguard_id)

)


INSERT INTO Customer VALUES('C00001','Akila','Sampath','1988-05-19','12/A New Kandy Road, Malabe','Sri lankan','35','E0001','DID001','LG001');
INSERT INTO Customer VALUES('C00002','Janith','Thiwanka','1990-02-12','118, Hokandara North, Hokandara','Sri lankan','33','E0002','DID002','LG002');
INSERT INTO Customer VALUES('C00003','David','Pietersen','1976-03-29','1 Chapel Hill, Bournemouth','British','44','D0001','DID003','LG003');
INSERT INTO Customer VALUES('C00004','William','Smith','1985-05-19','813 Howard Street Oswego','American','35','D0002','DID004','LG004');
INSERT INTO Customer VALUES('C00005','Samantha','Prabhu','1986-02-04','16 West model town,Uttar Pradesh','Indian','36','D0003','DID005','LG005');


CREATE TABLE Customer_PhoneNO(
	CustomerID varchar(6) NOT NULL,
	PhoneNO varchar(12) NOT NULL,
	CONSTRAINT Primary_key_Customer_PhoneNO PRIMARY KEY (CustomerID),
	CONSTRAINT LifeGuard_Id_in_Customer_PhoneNO_fk FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
   
)

INSERT INTO Customer_PhoneNO VALUES('C00001','+94774023267');
INSERT INTO Customer_PhoneNO VALUES('C00002','+94983405324');
INSERT INTO Customer_PhoneNO VALUES('C00003','+44379113246');
INSERT INTO Customer_PhoneNO VALUES('C00004','+13452345605');
INSERT INTO Customer_PhoneNO VALUES('C00005','+91056375299');

-- pompt error when entering multivalues--



CREATE TABLE Customer_email(
	CustomerID varchar(6) NOT NULL,
	email varchar(50),
	CONSTRAINT Primary_key_Customer_Customer_email PRIMARY KEY (CustomerID),
	CONSTRAINT LifeGuard_Id_in_Customer_email_fk FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID),
	CONSTRAINT Customer_email_check CHECK(email LIKE '%_@__%.__%')

	--Changed Email constrain--
	
);

INSERT INTO Customer_email VALUES('C00001','akila88@gmail.com');
INSERT INTO Customer_email VALUES('C00002','thiwanka21@gmail.com');
INSERT INTO Customer_email VALUES('C00003','pietersen76@gmail.com');
INSERT INTO Customer_email VALUES('C00004','william85@gmail.com');
INSERT INTO Customer_email VALUES('C00005','samanthap@gmail.com');


CREATE TABLE Payment(
	PaymentID char(6) NOT NULL,
	PaymentDate date,
	No_of_Person int,
	Payment_status char(10),
	Payment_amount real,
	CustomerID varchar(6) NOT NULL,
	CONSTRAINT Payment_pk PRIMARY KEY(PaymentID),
	CONSTRAINT Customer_ID_in_Payment_fk FOREIGN KEY(CustomerID) REFERENCES Customer (CustomerID)
)

INSERT INTO Payment VALUES('P0001','2023-05-23',5,'Pass',5000.00,'C00001');
INSERT INTO Payment VALUES('P0002','2023-05-14',5,'Fail',5000.00,'C00002');
INSERT INTO Payment VALUES('P0003','2023-05-12',5,'Pass',5000.00,'C00003');
INSERT INTO Payment VALUES('P0004','2023-05-13',5,'Fail',5000.00,'C00004');
INSERT INTO Payment VALUES('P0005','2023-05-18',5,'Fail',5000.00,'C00005');


CREATE TABLE Payment_Method(
	PaymentID char(6) NOT NULL,
	Method varchar(10)  NOT NULL,
	CONSTRAINT Payment_Method_pk PRIMARY KEY(PaymentID),
	CONSTRAINT Customer_ID_in_Payment_Method_fk FOREIGN KEY(PaymentID) REFERENCES Payment(PaymentID)
);

INSERT INTO Payment_Method VALUES ('P0001','cash');
INSERT INTO Payment_Method VALUES ('P0002','card');
INSERT INTO Payment_Method VALUES ('P0003','online');
INSERT INTO Payment_Method VALUES ('P0004','cash');
INSERT INTO Payment_Method VALUES ('P0005','online');


CREATE TABLE Package(
	 PackageID char(5) NOT NULL, 
	 PackageName varchar(50) NOT NULL, 
	 Descripition varchar(100),  
	 Price int,
	 Boat_No char(5), 
	 StartDate date, 
	 EndDate date, 
	 PaymentID char(6) NOT NULL, 
	 DiscountID char (6) NOT NULL, 
	 CONSTRAINT Package_pk PRIMARY KEY (PackageID),
	 CONSTRAINT PaymentID_in_Package_fk FOREIGN KEY(PaymentID) REFERENCES Payment (PaymentID)
)


INSERT INTO Package (PackageID , PackageName , Descripition , Price , Boat_No , StartDate , EndDate ,  
PaymentID , DiscountID ) 
VALUES ('PK001' ,'Family' , 'Fimily package can have 8 members' , 8600 , 'E0001', 
'2023-05-05' , '2023-07-20' , 'P0001' , 'DS001'  ) 
INSERT INTO Package (PackageID , PackageName , Descripition , Price , Boat_No , StartDate , EndDate ,  
PaymentID , DiscountID ) 
VALUES ('PK002' ,'Couple' , 'Couple package can have 2 members' , 4300 , 'E0002', 
'2023-05-05' , '2023-07-20' , 'P0002' , 'DS002'  ) 
INSERT INTO Package (PackageID , PackageName , Descripition , Price , Boat_No , StartDate , EndDate ,  
PaymentID , DiscountID ) 
VALUES ('PK003' ,'indiviudal' , 'Individual package can have 1 members' , 2200 , 'D0001', 
'2023-05-05' , '2023-07-20' , 'P0003' , 'DS003'  ) 
INSERT INTO Package (PackageID , PackageName , Descripition , Price , Boat_No , StartDate , EndDate ,  
PaymentID , DiscountID ) 
VALUES ('PK004' ,'indiviudal' , 'Individual package can have 1 members' , 2200 , 'E0003', 
'2023-05-05' , '2023-07-20' , 'P0004' , 'DS004'  ) 
INSERT INTO Package (PackageID , PackageName , Descripition , Price , Boat_No , StartDate , EndDate ,  
PaymentID , DiscountID ) 
VALUES ('PK005' ,'Family' , 'Family package can have 8 members' , 8600 , 'D0002', 
'2023-05-05' , '2023-07-20' , 'P0005' , 'DS005'  ) 


CREATE TABLE Discount (
	DiscountID char(6) NOT NULL,
	Description_discount varchar(100),
	Discount_percentage int,
	Discount_amount int,
	Discount_start_date date,
	Discount_end_date date,
	PackageID char(5) NOT NULL,
	CONSTRAINT Discount_pk PRIMARY KEY(DiscountID),
	CONSTRAINT Package_ID_in_Discount_fk FOREIGN KEY (PackageID) REFERENCES Package (PackageID)
)

INSERT INTO Discount VALUES ('DS001','Discount for package1',5,500,'2023-05-12','2023-05-12','PK001');
INSERT INTO Discount VALUES ('DS002','Discount for package2',4,700,'2023-05-13','2023-05-13','PK002');
INSERT INTO Discount VALUES ('DS003','Discount for package3',3,800,'2023-05-14','2023-05-14','PK003');
INSERT INTO Discount VALUES ('DS004','Discount for package4',2,900,'2023-05-15','2023-05-15','PK004');
INSERT INTO Discount VALUES ('DS005','Discount for package5',8,300,'2023-05-16','2023-05-16','PK005');

ALTER TABLE Package
ADD CONSTRAINT DiscountID_in_package
FOREIGN KEY (DiscountID) REFERENCES Discount(DiscountID)


CREATE TABLE Customer_Discount(
	CustomerID varchar(6) NOT NULL,
	DiscountID char(6) NOT NULL,
	CONSTRAINT Customer_ID_in_Customer_Discount FOREIGN KEY(CustomerID) REFERENCES Customer (CustomerID),
	CONSTRAINT DiscountID_in_Customer_Discount FOREIGN KEY (DiscountID) REFERENCES Discount(DiscountID)
);

INSERT INTO Customer_Discount VALUES('C00001','DS001');
INSERT INTO Customer_Discount VALUES('C00002','DS002');
INSERT INTO Customer_Discount VALUES('C00003','DS003');
INSERT INTO Customer_Discount VALUES('C00004','DS004');
INSERT INTO Customer_Discount VALUES('C00005','DS005');


