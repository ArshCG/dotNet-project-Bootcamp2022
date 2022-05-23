create database Cricket;

use Cricket
go

create table country(id int primary key identity(1,1),country_name varchar(30),continent_name varchar(30),country_code varchar(30));
select * from country;

Insert into country values('India','Asia','+91');
Insert into country values('Australia','Australia','+61');
Insert into country values('England','Europe','+44');
Insert into country values('South Africa','Africa','+27');
Insert into country values('New Zealand','Australia','+64');



create table player(id int primary key identity(1,1),player_name varchar(30),player_age int,player_countryid int Foreign Key References country(id));

Insert into player values('KL Rahul',29,1);
Insert into player values('Rohit Sharma',34,1)
Insert into player values('Virat Kohli',33,1)
Insert into player values('Rishab Pant',25,1)
Insert into player values('SK Yadav',31,1)
Insert into player values('Hardik Pandya',26,1)
Insert into player values('Ravindra Jadeja',33,1)
Insert into player values('Bhuvneshwar Kumar',30,1)
Insert into player values('Mohd. Shami',30,1)
Insert into player values('Jasprit Bumrah',29,1)
Insert into player values('Yuzvendra Chahal',31,1)

Insert into player values('Jason Roy',29,3);
Insert into player values('Jhonny Bairstow',28,3)
Insert into player values('Joe Root',30,3)
Insert into player values('Ben Stokes',25,3)
Insert into player values('David Malan',31,3)
Insert into player values('Eoin Morgan',32,3)
Insert into player values('Moeen Ali',33,3)
Insert into player values('Adil Rasheed',30,3)
Insert into player values('Chris Wokes',31,3)
Insert into player values('Stuart Broad',30,3)
Insert into player values('Jimmy Anderson',32,3)

Insert into player values('David Warner',30,2);
Insert into player values('Aaron Finch',32,2)
Insert into player values('Marnus Labuschagne',33,2)
Insert into player values('Steve Smith',31,2)
Insert into player values('Mathew Wade',35,2)
Insert into player values('Cameron Green',24,2)
Insert into player values('Ashton Agar',28,2)
Insert into player values('Pat Cummins',28,2)
Insert into player values('Mitchel Starc',30,2)
Insert into player values('Josh Hazelwood',29,2)
Insert into player values('Nathan Lyon',33,2)


Insert into player values('Quinton De Kock',30,4);
Insert into player values('Faf Du Plessis',38,4)
Insert into player values('Aiden Markram',33,4)
Insert into player values('Wayne Parnel',31,4)
Insert into player values('David Miller',33,4)
Insert into player values('Dwaine Pretorius',32,4)
Insert into player values('Rassie Van Der Dussan',28,4)
Insert into player values('Kagiso Rabada',29,4)
Insert into player values('Imran Tahir',40,4)
Insert into player values('Lungi Ngidi',29,4)
Insert into player values('Tabrez Shamsi',33,4)



Insert into player values('Kane Williamson',30,5);
Insert into player values('Martin Guptil',32,5)
Insert into player values('Tom Latham',33,5)
Insert into player values('Henry Nicholls',31,5)
Insert into player values('Ros Taylor',35,5)
Insert into player values('James Neesham',29,5)
Insert into player values('Mitchell Santner',28,5)
Insert into player values('Tim Southee',29,5)
Insert into player values('Trent Boult',30,5)
Insert into player values('Ish Sodhi',29,5)
Insert into player values('Lockie Ferguson',33,5)





create table stadium(stadium_id int primary key identity(1,1),stadium_name varchar(30),stadium_matches int,stadium_country int foreign key references country(id));
insert into stadium values('Wankhede Stadium',3,1);
insert into stadium values('MCG Stadium',4,2);
insert into stadium values('Lords Stadium',4,3);
insert into stadium values('Wanderers Stadium',3,4);
insert into stadium values('Seddon Park Stadium',3,5);

create table matches(match_id int primary key identity(1,1),stadium_id int foreign key references stadium(stadium_id),team1 int foreign key references country(id),team2 int foreign key references country(id),result varchar(30),date_time datetime,Was_Match_Played varchar(30));
insert into matches values(1,1,4,null,'2022-05-23 11:00:00','yes');
insert into matches values(2,2,3,null,'2022-05-24 11:00:00','yes');
insert into matches values(4,4,5,null,'2022-05-25 11:00:00','yes');
insert into matches values(3,3,1,null,'2022-05-26 11:00:00','yes');
insert into matches values(5,5,3,null,'2022-05-27 11:00:00','yes');
insert into matches values(1,1,2,null,'2022-05-28 11:00:00','yes');
insert into matches values(2,2,5,null,'2022-05-29 11:00:00','yes');
insert into matches values(3,3,4,null,'2022-05-30 11:00:00','yes');
insert into matches values(4,4,2,null,'2022-06-01 11:00:00','yes');
insert into matches values(5,5,1,null,'2022-06-02 11:00:00','yes');












