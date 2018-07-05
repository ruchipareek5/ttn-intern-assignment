create database if not exists Environment;
use Environment;

create table EcoFreindly (Type_Id int (10) primary key not null, TypeOfEmission varchar (100), ThresholdVal int (10));

create table StateDetails(State_Name varchar (30) not null,Type_Id int (10), foreign key(Type_Id) references EcoFreindly(Type_Id),TypeOfEmission varchar (100),ValueFound int);


Insert into EcoFreindly values(1, 'Carbon_Emission', 50);
Insert into EcoFreindly values(2, 'Plastic Consumption', 45);
Insert into EcoFreindly values(3, 'Nitrogen_Emission', 40);
Insert into EcoFreindly values(4, 'non-decomposible waste', 30);
Insert into EcoFreindly values(5, 'non-combustible gases', 28);
Insert into EcoFreindly values(6, 'methane', 10);

Insert into StateDetails values('Delhi','1','Carbon_Emission', 60);
Insert into StateDetails values('delhi','2','Plastic Consumption', 60);
Insert into StateDetails values('delhi','3','Nitrogen_Emission', 80);
Insert into StateDetails values('delhi','4','non-decomposible waste', 35);
Insert into StateDetails values('delhi','5','non-combustible gases', 105);
Insert into StateDetails values('delhi','6','methane', 24);

Insert into StateDetails values('pune','1','Carbon_Emission', 40);
Insert into StateDetails values('pune','2','Plastic Consumption', 30);
Insert into StateDetails values('pune','3','Nitrogen_Emission', 39);
Insert into StateDetails values('pune','4','non-decomposible waste', 25);
Insert into StateDetails values('pune','5','non-combustible gases', 18);
Insert into StateDetails values('pune','6','methane', 4);

Insert into StateDetails values('rajasthan','1','Carbon_Emission', 60);
Insert into StateDetails values('rajasthan','2','Plastic Consumption', 50);
Insert into StateDetails values('rajasthan','3','Nitrogen_Emission', 42);
Insert into StateDetails values('rajasthan','4','non-decomposible waste', 31);
Insert into StateDetails values('rajasthan','5','non-combustible gases', 35);
Insert into StateDetails values('rajasthan','6','methane', 11);

Insert into StateDetails values('assam','1','Carbon_Emission', 40);
Insert into StateDetails values('assam','2','Plastic Consumption', 42);
Insert into StateDetails values('assam','3','Nitrogen_Emission', 30);
Insert into StateDetails values('assam','4','non-decomposible waste', 21);
Insert into StateDetails values('assam','5','non-combustible gases', 21);
Insert into StateDetails values('assam','6','methane', 4);
select DISTINCT(State_Name) as ECO from StateDetails inner join Ecofreindly on StateDetails.Type_Id=Ecofreindly.Type_Id where StateDetails.ValueFound<Ecofreindly.ThresholdVal;

select distinct(State_Name) as IncreaseInPollution from StateDetails inner join Ecofreindly on StateDetails.Type_Id=Ecofreindly.Type_Id where StateDetails.ValueFound>Ecofreindly.ThresholdVal;

