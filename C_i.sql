   create database Creative_incentive;
   use Creative_incentive;

    create table Piligrims
    (Visa_number varchar(20)primary key,
    FullName_fr varchar(15),
    Realease_date Date,
    Sexe1 varchar(6)check(Sexe1 in ('male','female')),
    name_almahrim varchar(10),
    Age int,
    Health_status varchar(10) check(Health_status in('healty','disabled')),
    Programme_price float,
	Programme_type varchar(10)check(Programme_type in('Economic','Tourist','Incentive')),
    number_group int foreign key references group1(number_group),
	Type_houssing int check(Type_houssing in(2,3,4)),
    Discount int,
	Type_Piligrims varchar(10)check(Type_Piligrims in('Elhaj','Omra'))); 
	
	--drop table Piligrims
	select Programme_price from Programme
	--select * from piligrims;
	  
	   insert into Piligrims values('1020345','Mouni_Youssef','12/05/2021','male','almahrim1',19,'healty',20000.12,'Economic',1,3,2,'Elhaj');
	   insert into Piligrims values('1020346','Mouni_Youssef','12/05/2021','male','almahrim1',19,'healty',20000.12,'Economic',1,3,2,'Elhaj');
       
	
  
    create table Hotel
   (Number_hotel int primary key,
    Name_Hotel varchar(10),
    rooms_number int check(rooms_number in(2,3,4)),
    Region_houssing varchar(10)check(Region_houssing in('Mecca','elmadina')),
	star_number int
    );
	--drop table Hotel
	--select * from Hotel

	 insert into Hotel values(1,'Hotel1',4,'elmadina',5);
	 insert into Hotel values(2,'Hotel2',2,'Mecca',4);
	 insert into Hotel values(3,'Hotel3',3,'elmadina',3);

	 delete Hotel where Number_hotel=4;
	 select * from Hotel;
	

     create table Programme 
    (Number_Programme int primary key,
     Programme_price float check(Programme_price>=20000.12 and Programme_price<=30000.25) unique,
	 Programme_type varchar(10)check(Programme_type in('Economic','Tourist','Incentive')),
	 Duration_Programme int check (Duration_Programme in(7,15,30)),
	 Type_houssing int check(Type_houssing in(2,3,4)),
	 Number_meals int check (Number_meals in(3,4,1)),
	 Type_meals varchar(10)check(Type_meals in('Average','Advanced')));

	 drop table Programme

	 insert into Programme values(1,20000.12,'Economic',30,2,3,'Average');
	 insert into Programme values(2,20000.30,'Tourist',15,3,4,'Advanced');
	 insert into Programme values(3,21000.40,'Incentive',30,4,1,'Average');

	 select Programme_price from Programme where Programme_type='Economic';
     --select * from Programme;
     
	 create table group1
    (number_group int primary key,
     Name_group varchar(10),
     Flight_date date,
     pl_count int,
     Total_Price float check((Total_Price>=30000.25 and Total_Price<=350000.01)),
     Number_Programme int foreign key references Programme(Number_Programme));

	 select * from group1 where Name_group like'%%'
	 drop table group1

	 insert into group1 values(1,'group1','11/04/2020',40,31000.01,1);
	 insert into group1 values(2,'group2','11/05/2021',15,32000.24,2);
	 insert into group1 values(3,'group3','07/01/2021',15,33000.24,3);
	 insert into group1 values(8,'frtlane2','25/10/2001',10,31000.24,1);
	 insert into group1 values(6,'faris1','25/10/2001',10,31000.24,1);
	 insert into group1 values(7,'artf','25/10/2001',10,31000.24,1);



	  --select * from group1;
      --drop table group1
     
	 delete group1 where number_group=4;
	 
     create table Employer_account
	(Cin varchar(10)primary key,
	 firstname varchar(10),
	 LastName varchar(10),
	 Age int,
	 Sexe1 varchar(6)check(Sexe1 in ('male','female')),
	 tele_number varchar(12),
	 Type_employer varchar(8)check(Type_employer in('customer','director')),
	 UserName varchar(10),
	 Password1 varchar(10));

	 drop table Employer_account

	
     insert into Employer_account values('EE944069','Firstname1','Lastname1',19,'male','0651410450','director','panini','panini123');	 
     insert into Employer_account values('EE944070','Firstname2','Lastname2',19,'male','0651410451','customer','yovsses','yovsses1');	 
	 insert into Employer_account values('EE944071','Firstname3','Lastname3',19,'female','0651410452','director','sinkowa','SinoSf102*');	 
	  
	  delete Employer_account  where Cin='EE944071';
	   
	  select * from Employer_account;

	  select count(*)as emp_coun from Employer_account where UserName='panini' and Password1='panini123' and (Type_employer='director')group by Type_employer;

	  delete Employer_account where UserName='sinkowa' and Password1='SinoSf102*'