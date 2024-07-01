

/*ISDM database details MOJITHA */ 

--YARD TABLE --

CREATE TABLE YARD ( 
   YARD_ID   char(5),      /*Yard id*/
   YARD_NAME varchar(20), 
   SIZE      char(5),      /*yard size in meters*/ 
   LOCATION  varchar(500), 
   constraint YARD_PK PRIMARY KEY(YARD_ID)

); 

--YARD INSERT DATA
insert into YARD values ('YD001' , 'Aquatic' , '300 m' , 'Madu River Galle District' );  

insert into YARD values ('YD002'  , 'Blue Ocean' , '500 m' , 'Kalpitiya, Puttalam District' ); 

insert into YARD values ('YD003'  , 'Sun Valley' , '450 m' , 'Mirissa, Matara District' ); 

insert into YARD values ('YD004' , 'Sea Birds' , '500 m' , 'Hikkaduwa , Galle District' ); 

insert into YARD values ('YD005'  , 'Queens' , '350 m' , 'West coast Beach, Colombo District' );

--DRIVER TABLE
CREATE TABLE DRIVER ( 
       DRIVER_ID char(6), 
       NIC char(12),    /*national identi card number*/ 
       DOB date,         /*date of birth*/ 
       First_Name varchar(15), 
       Last_Name  varchar(15),
	   Lifeguard_id char(5),
	   Boat_No char(6),
       constraint DRIVER_ID PRIMARY KEY(DRIVER_ID),
	   constraint DRIVER_check check(NIC LIKE'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	   --constraint FOREIGN_KEY FOREIGN KEY (Lifeguard_id) REFERENCES Lifeguard(Lifeguard_id),
	   --constraint FOREIGN_KEY FOREIGN KEY (Boat_No) REFERENCES Boat(Boat_No)
); 

--DRIVER INSERT DATA
insert into DRIVER values ('DID001' , '199612342577' , '1995-11-17' , 'Gamlath' , 'Hettige','LG001 ', 'E0001' ); 

insert into DRIVER values ('DID002', '199968764117' , '1996-08-09' , 'Pannala' , 'Gnanananda', 'LG002 ' , 'E0002 '  ); 

insert into DRIVER values ('DID003' , '1998983488864' , '1998-02-15' , 'Praneeth' , 'Banda', 'LG003 ' , 'D0001 '   ); 

insert into DRIVER values ('DID004' , '1997948763759' , '1994-03-05' , 'Mahinda' , 'Weerakoon', 'LG004 ' , 'D0002 '   ); 

insert into DRIVER values ('DID005', '1995946711167' , '2000-06-09' , 'Jayakody' , 'Wickremasinghe', 'LG005 ' , 'D0003 '  ); 

--YARD AND DRIVER COMBINATION TABLE
CREATE TABLE YARD_DRIVER (
      YARD_ID   char(5),
	  DRIVER_ID char(6),
	  constraint YARD_DRIVER PRIMARY KEY(YARD_ID,DRIVER_ID)
);

--YARD DRIVER INSERT DATA
insert into YARD_DRIVER values ('YD001' , 'DID001' );
insert into YARD_DRIVER values ('YD002' , 'DID002' );
insert into YARD_DRIVER values ('YD003' , 'DID003' );
insert into YARD_DRIVER values ('YD004',  'DID004' );
insert into YARD_DRIVER values ('YD005' , 'DID005' );


--DRIVER NUMBER COMBINATION TABLE
CREATE TABLE DRIVER_NUMBER(
       DRIVER_ID char(6),
	   phoneNo  varchar(12)

	   --constraint foriegn_key FOREIGN KEY (DRIVER) REFERENCES DRIVER(DRIVER_ID)
);

--DRIVER NUMBER INSERT DATA
insert into DRIVER_NUMBER values ( 'DID001','+94771904889'  );
insert into DRIVER_NUMBER values ( 'DID001', '+94781304899' );
insert into DRIVER_NUMBER values ( 'DID002', '+94751902289' );
insert into DRIVER_NUMBER values ( 'DID002', '+94711901119' );
insert into DRIVER_NUMBER values ( 'DID002', '+94781907349' );
insert into DRIVER_NUMBER values ( 'DID003', '+94761988889' );
insert into DRIVER_NUMBER values ( 'DID004', '+94711967289' );
insert into DRIVER_NUMBER values ( 'DID004', '+94771913289' );
insert into DRIVER_NUMBER values ( 'DID005', '+94711902873' );
insert into DRIVER_NUMBER values ( 'DID005', '+94711902156' );
insert into DRIVER_NUMBER values ( 'DID005', '+94771977289' );


--TESTING PART
SELECT *
FROM YARD

SELECT *
FROM DRIVER

SELECT *
FROM YARD_DRIVER

SELECT *
FROM DRIVER_NUMBER

DROP TABLE YARD
DROP TABLE DRIVER
DROP TABLE YARD_DRIVER
DROP TABLE DRIVER_NUMBER


  

 


 