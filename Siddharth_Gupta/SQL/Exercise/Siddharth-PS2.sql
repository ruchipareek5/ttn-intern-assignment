/* Problem Statement 2*/

create table if not exists fines(Liscence_no Varchar(5) primary key, Name varchar(20), Age int(2),Location varchar(30),Fine_amount int(4),Fine_details varchar(50));
insert into fines values('EFW77','Rohit',20,'Karol Bagh',200,'No Parking');
insert into fines values('SFW23','Gaurav',25,'Rajiv Chowk',100,'Helmet');
insert into fines values('GFW87','Mehak',30,'Karol Bagh',50,'Triplee');
insert into fines values('DFW45','Siddharth',18,'Dhaula Kuan',2000,'Pressure Horns');
insert into fines values('HSW22','Parth',35,'Patel Nagar',1500,'Black Films');

select * from fines where age between 18 and 25 AND Fine_amount>100;