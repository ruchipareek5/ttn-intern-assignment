create schema ttnAffiliationBody;
use ttnAffiliationBody;
create table if not exists UserRegister ( userID int primary key not null auto_increment, username varchar(50), password varchar(12) not null, email varchar(50), contactNo bigint(10), DOB date, Date_Applied date, role ENUM('Trainer','Asssessor') not null, statusId ENUM('Pending','Accepted','Rejected','Edit') not null);
create table if not exists Batch_Detail(BatchId int primary key not null, userID int, foreign key(userID) references UserRegister(userID), strength int, startDate date, end_date date); 
create table AssessmentDetail(BatchId int, foreign key(BatchId) references Batch_Detail(BatchId), userID int, foreign key(userID) references UserRegister(userID),  Trainer_userID int, Assessor_userID int);
alter table UserRegister add ( AppID int Unique not null);
create table ApplicationStatus( AppID int, foreign key(AppID) references UserRegister(AppID), comments varchar(100), isActive ENUM('active', 'not_active')); 
select * from Batch_Detail where date(end_date)< curdate() AND Trainer_userID = '';
select * from Batch_Detail where date(end_date) > curdate() AND Assessor_userID = '';
select * from AssessmentDetail where Assessor_userID= 9 ;
select * from AssessmentDetail where Assessor_userID= 9  AND date(end_date)>curdate() ;
select * from UserRegister where statusId='Accepted';
select * from ApplicationStatus where isActive ='Active';


