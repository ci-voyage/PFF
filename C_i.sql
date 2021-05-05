   create database Creative_incentive;
   use Creative_incentive;

    create table Piligrims
   (Visa_number int primary key,
    Name_fr varchar(10),
    Name_Ar varchar(10),
    Realease_date Date,
    Sexe1 varchar(6)check(Sexe1 in ('male','female')),
    name_almahrim varchar(10),
    Age int,
    Health_status varchar(10) check(Health_status in('healty Person','disabled Person')),
    Programme_price float check(Programme_price>20000.12 and Programme_price<30000.25),
	Programme_type varchar(10)check(Programme_type in('Economic Program' ,'Tourist program','Incentive program')),
    number_group int foreign key references group1(number_group),
    Type_houssing varchar(15)check(Type_houssing in('two','three','Four')),
    Discount int,
	Type_Piligrims varchar(10)check(Type_Piligrims in('Elhaj','Omra'))); 
	
	drop table Piligrims

	select * from piligrims;

	insert into Piligrims values(1,'Mouni','الموني','10/05/2020','male','almahrim1',19,'');
  
    create table Hotel
   (Number_hotel int primary key,
    Name_Hotel varchar(10),
	Type_houssing varchar(15)check(Type_houssing in('two','three','Four')),
	Region_houssing varchar(15)check(Region_houssing in('Mecca Houssing','elmadina houssing')),
	star_number int
    );
	select * from Hotel
	
	drop table Hotel

     create table Programme
    (Number_Programme int primary key,
     Programme_price float check(Programme_price>20000.12 and Programme_price<30000.25),
	 Programme_type varchar(10)check(Programme_type in('Economic Program' ,'Tourist program','Incentive program')),
	 Duration_Programme int check (Duration_Programme in(7,15,30)),
	 Type_houssing varchar(15)check(Type_houssing in('two','three','Four')),
	 Number_meals int check (Number_meals in(3,4,1)),
	 Type_meals varchar(8)check(Type_meals in('Average','Advanced')));
	 
	 drop table Programme;

	 select * from Programme;
     
	 create table group1
    (number_group int primary key,
     Name_group varchar(10),
     Flight_date date,
     pl_count int,
     Total_Price float,
     Number_Programme int foreign key references Programme(Number_Programme));

	  drop table group1
	 
   
     create table Employer_account
	(Cin varchar(10)primary key,
	 firstname varchar(10),
	 LastName varchar(10),
	 Age int,
	 Sexe1 varchar(6)check(Sexe1 in ('male','female')),
	 tele_number int,
	 Type_employer varchar(8)check(Type_employer in('customer','director')),
	 UserName varchar(10),
	 Password1 varchar(10));

	 drop table Employer_account

	
     insert into Employer_account values('EE944069','Firstname1','Lastname1',19,'male',0651410450,'director','panini','panini123');	 
     insert into Employer_account values('EE944070','Firstname2','Lastname2',19,'male',0651410451,'customer','yovsses','yovsses1');	 
	 insert into Employer_account values('EE944071','Firstname3','Lastname3',19,'female',0651410452,'director','sinko','panini123');	 

	  select * from Employer_account;

