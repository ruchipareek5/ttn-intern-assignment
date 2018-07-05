create database if not exists ttn_affliation_body;
create user 'ttn_db_user1'@'localhost' identified by 'ttndbuser';
create user 'ttn_app_ass_user'@'localhost' identified by 'ttnappuser1';
create user 'ttn_app_tra_user'@'localhost' identified by 'ttnappuser2';

use ttn_affliation_body;
grant select,update,insert,create,grant option on ttn_affliation_body.* to 'ttn_db_user1'@'localhost';

use ttn_affliation_body;
grant select,update,insert, delete on ttn_affliation_body.* to 'ttn_app_tra_user'@'localhost';
use ttn_affliation_body;
grant select,update,insert, delete on PartnerRegistraion to 'ttn_app_ass_user'@'localhost';

CREATE TABLE IF NOT EXISTS PartnerRegistraion (
    UserId INT(50) PRIMARY KEY NOT NULL auto_increment,
    Appl_id INT(10) UNIQUE KEY NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Email_id VARCHAR(50),
    Password VARCHAR(12) NOT NULL
);

desc PartnerRegistraion;

insert into PartnerRegistraion values ('1', '100','preet vihar','shivi@123','123456');
insert into PartnerRegistraion values ('2','101','laxmi nagar','sakshi@123','123456');


select * from PartnerRegistraion;


CREATE TABLE IF NOT EXISTS PartnerRegistraion (
    UserName VARCHAR(50) PRIMARY KEY NOT NULL,
    Appl_id INT(10) UNIQUE KEY NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Email_id VARCHAR(50),
    Password VARCHAR(12) NOT NULL,
    Date_of_application DATE NOT NULL,
    application_status ENUM('Change required', 'Rejected', 'Approved', 'Pending', 'submit'),
    roles_assigned ENUM('Training Partner', 'Assessment partner')
);

CREATE TABLE IF NOT EXISTS Batch_info (
    Batch_id INT(50) PRIMARY KEY NOT NULL,
    strength INT(50),
    Trainer_Username VARCHAR(50),
    FOREIGN KEY (Trainer_Username)
        REFERENCES PartnerRegistraion (UserName),
    Assesser_Username VARCHAR(50),
    FOREIGN KEY (Assesser_Username)
        REFERENCES PartnerRegistraion (UserName),
    start_date DATE,
    end_date DATE
);

CREATE TABLE IF NOT EXISTS appl_comment (
    id INT(10) PRIMARY KEY NOT NULL,
    Username VARCHAR(50),
    FOREIGN KEY (Username)
        REFERENCES PartnerRegistraion (UserName),
    isActive ENUM('active', 'passive'),
    commnt VARCHAR(50) NOT NULL
);

insert into PartnerRegistraion values ('shivangi','1','preet vihar','shivi@123','123456','2018-06-06','Pending','Training Partner');
insert into PartnerRegistraion values ('sakshi','2','laxmi nagar','sakshi@123','123456','2018-01-01','Pending','Training Partner');

SELECT 
    *
FROM
    PartnerRegistraion;
CREATE TABLE User LIKE PartnerRegistraion;

use ttn_affliation_body;
insert into User select * from PartnerRegistraion;
SELECT 
    *
FROM
    User;
CREATE TABLE replica LIKE User;
insert into replica select * from User where Date_of_application > '2018-01-01' && Date_of_application <'2018-12-31' ;

insert into Batch_info values (1,30,'sakshi','shivam','2018-03-09','2018-06-09');
/* for batches ended in past
and for batches which will end in future*/

SELECT 
    *
FROM
    Batch_info;
SELECT 
    *
FROM
    Batch_info
WHERE
    DATE(end_date) < CURDATE()
        AND Trainer_Username = '';
SELECT 
    *
FROM
    Batch_info
WHERE
    DATE(end_date) > CURDATE()
        AND Trainer_Username = '';
/* for batches assessed by an assessment agency
and for batches which assessment body will assess in future*/

SELECT 
    *
FROM
    Batch_info
WHERE
    Assesser_Username = '';
SELECT 
    *
FROM
    Batch_info
WHERE
    Assesser_Username = ''
        AND DATE(end_date) > CURDATE();
/* for applications with submit status 
and for active application comment*/


SELECT 
    commnt
FROM
    appl_comment
WHERE
    Appl_id = '' AND isActive = 'active';
SELECT 
    *
FROM
    PartnerRegistraion
WHERE
    Application_status = 'submit';
use ttn_affliation_body;
UPDATE PartnerRegistraion 
SET 
    application_status = 'Approved'
WHERE
    UserName = 'shivangi';

SELECT 
    *
FROM
    PartnerRegistraion
WHERE
    roles_assigned = 'Training Partner'
        AND Date_of_application IN ('2018-06-01' , '2018-06-31');
SELECT 
    *
FROM
    PartnerRegistraion;

use ttn_affiliation_body;
/*
select min(Assesser_Username) from batch_info where (select count(Assesser_Username) from batch_info);*/
/*use ttn_affiliation_body;

select Assesser_Username from Batch_info where Assesser_Username=(select min(Assesser_Username) from Batch_info where (select count(Batch_id) from Batch_info group by Assesser_Username));
/*
select Assesser_Username, count(Assesser_Username) from Batch_info group by Assesser_Username having count(Assesser_Username)=(select min(a) from(select Assesser_Username, count(Assesser_Username) a from Batch_info group by Assesser_Username));
*/


Alter table PartnerRegistraion add column turnover int (20);
SELECT 
    *
FROM
    PartnerRegistraion;
UPDATE PartnerRegistraion 
SET 
    turnover = 20000
WHERE
    username = 'shivangi';
UPDATE PartnerRegistraion 
SET 
    turnover = 50000
WHERE
    username = 'sakshi';
UPDATE PartnerRegistraion 
SET 
    turnover = 40000
WHERE
    username = 'shivam';
UPDATE PartnerRegistraion 
SET 
    turnover = 10000
WHERE
    username = 'A';
UPDATE PartnerRegistraion 
SET 
    turnover = 30000
WHERE
    username = 'B';


/*Select the average turnover of all training partner*/
SELECT 
    AVG(turnover)
FROM
    PartnerRegistraion
WHERE
    roles_assigned = 'Training Partner';

/*Select total no of training partner and assessment partner affiliated*/


SELECT 
    COUNT(username), roles_assigned
FROM
    PartnerRegistraion
WHERE
    application_status = 'Approved'
GROUP BY roles_assigned;

CREATE TABLE Client LIKE PartnerRegistraion;
Insert into Client(UserName) select UserName from PartnerRegistraion;
SELECT 
    *
FROM
    Client;

SELECT 
    *
FROM
    Batch_info;
SELECT 
    Batch_id
FROM
    Batch_info
WHERE
    Assesser_Username IS NULL;


SELECT 
    a1.Appl_id, a2.id, commnt
FROM
    PartnerRegistraion AS a1,
    appl_comment AS a2
WHERE
    Appl_id = id;


SELECT 
    Appl_id, id, commnt, Email_id
FROM
    PartnerRegistraion
        LEFT JOIN
    appl_comment ON (Appl_id = id);
SELECT 
    *
FROM
    PartnerRegistraion;

SELECT 
    UserName
FROM
    PartnerRegistraion
        RIGHT JOIN
    Batch_info ON Batch_info.AssesserUserName != PartnerRegistraion.UserName
GROUP BY UserName;
/*union*/

SELECT 
    UserName, roles_assigned
FROM
    PartnerRegistraion 
UNION SELECT 
    Trainer_Username, Assesser_Username
FROM
    batch_info;

SELECT 
    UserName, roles_assigned, Batch_id
FROM
    PartnerRegistraion
        LEFT JOIN
    Batch_info ON PartnerRegistraion.UserName = Batch_info.Trainer_Username 
UNION SELECT 
    Trainer_Username, Assesser_Username, Batch_id
FROM
    Batch_info
        RIGHT JOIN
    PartnerRegistraion ON PartnerRegistraion.UserName = Batch_info.Trainer_Username;

/*intersect*/

SELECT 
    UserName
FROM
    PartnerRegistraion
WHERE
    Username IN (SELECT 
            Username
        FROM
            appl_comment);

SELECT 
    UserName
FROM
    PartnerRegistraion
WHERE
    application_status = 'Approved'
        AND Username IN (SELECT 
            Username
        FROM
            appl_comment
        WHERE
            isActive = 'active');

/* Exists query */

SELECT 
    UserName
FROM
    PartnerRegistraion
WHERE
    EXISTS( SELECT 
            batch_id
        FROM
            batch_info
        WHERE
            Trainer_Username = PartnerRegistraion.UserName);

SELECT 
    Appl_id
FROM
    PartnerRegistraion
WHERE
    EXISTS( SELECT 
            Username
        FROM
            appl_comment
        WHERE
            application_status = 'active');

/* some*/
SELECT 
    UserName, Email_id
FROM
    PartnerRegistraion
WHERE
    UserName = SOME (SELECT 
            Assesser_Username
        FROM
            batch_info);

SELECT 
    Appl_id, Date_of_application
FROM
    PartnerRegistraion
WHERE
    Date_of_application = SOME (SELECT 
            start_date
        FROM
            batch_info
        WHERE
            Date_of_application < start_date);
;

/*Except/not in*/
SELECT 
    *
FROM
    PartnerRegistraion
WHERE
    UserName NOT IN ('Sakshi' , 'shivangi');
SELECT 
    *
FROM
    PartnerRegistraion
WHERE
    Date_of_application NOT IN ('2018-06-09' , '2018-05-04');

/*All*/
SELECT 
    UserName
FROM
    PartnerRegistraion
WHERE
    Appl_id = ALL (SELECT 
            Batch_id
        FROM
            batch_info
        WHERE
            start_date > '2016-01-01');
SELECT 
    commnt
FROM
    appl_comment
WHERE
    id = ALL (SELECT 
            id
        FROM
            appl_comment
        WHERE
            isActive = 'active');






create database if not exists Exercise;
/*1*/

CREATE TABLE IF NOT EXISTS Shop_Details (
    Shop_Id INT(10) PRIMARY KEY NOT NULL,
    Brand VARCHAR(30),
    Owner_Name VARCHAR(30),
    Opening_Date DATE,
    Contact_No BIGINT(10)
);
create table if not exists Sales(Shop_Id int (10), foreign key(Shop_Id) references Shop_Details(Shop_Id), Annual_Sale_Amount int not null (50));

/*2*/

CREATE TABLE IF NOT EXISTS Offenders_Database (
    O_Id INT PRIMARY KEY NOT NULL,
    Name VARCHAR(30),
    Age INT(10),
    Education VARCHAR(30),
    Occupation VARCHAR(20),
    Marital_Status VARCHAR(10),
    Violation VARCHAR(20)
);

Alter table Offenders_Database add column Fine int (10);

Insert into Offenders_Database values(1, 'A', 22, 'Metric', 'Unemployed', 'Unmarried', 'Theft', '5000');
Insert into Offenders_Database values(2, 'B', 25, 'Graduate', 'SalesMan', 'Married', 'Jumped Red Light', '500');
Insert into Offenders_Database values(3, 'C', 28, 'Graduate', 'Factory Worker', 'Married', 'Theft', '5000');
Insert into Offenders_Database values(4, 'D', 18, 'Metric', 'Unemployed', 'Unmarried', 'Overspeed', '1000');
Insert into Offenders_Database values(5, 'E', 45, 'Graduate', 'Manager', 'Married', 'Licence expired', '2000');

SELECT 
    *
FROM
    Offenders_Database;

UPDATE Offenders_Database 
SET 
    Fine = '200'
WHERE
    O_Id = 1;
UPDATE Offenders_Database 
SET 
    Fine = '200'
WHERE
    O_Id = 3;
UPDATE Offenders_Database 
SET 
    Fine = '150'
WHERE
    O_Id = 4;
UPDATE Offenders_Database 
SET 
    Fine = '500'
WHERE
    O_Id = 5;

SELECT 
    *
FROM
    Offenders_Database;
SELECT 
    *
FROM
    Offenders_Database
WHERE
    (age BETWEEN '18' AND '25')
        AND (Fine > 100);


/*4*/
CREATE TABLE Eco_Values (
    Type_Id INT(10) PRIMARY KEY NOT NULL,
    Type VARCHAR(50),
    Threshold_Value INT(20)
);

CREATE TABLE State (
    State_Name VARCHAR(30) NOT NULL,
    Type_Id INT(10),
    FOREIGN KEY (Type_Id)
        REFERENCES Eco_Values (Type_Id),
    Type VARCHAR(30),
    Value INT(50)
);

Insert into Eco_Values values(1, 'Carbon_Emission', 60);
Insert into Eco_Values values(2, 'Plastic Consumption', 70);
Insert into Eco_Values values(3, 'Non cobustible waste', 35);
Insert into Eco_Values values(4, 'Use of gasoline', 40);

Insert into State values('Gujrat','1','Carbon_Emission', 50);
Insert into State values('Gujrat','2','Plastic Consumption', 60);
Insert into State values('Gujrat','3','Non combustile waste', 30);
Insert into State values('Gujrat','4','Use of gasoline', 35);

Insert into State values('Bihar','1','Carbon_Emission', 70);
Insert into State values('Bihar','2','Plastic Consumption', 80);
Insert into State values('Bihar','3','Non combustile waste', 50);
Insert into State values('Bihar','4','Use of gasoline', 65);

Insert into State values('Kerela','1','Carbon_Emission', 40);
Insert into State values('Kerela','2','Plastic Consumption', 50);
Insert into State values('Kerela','3','Non combustile waste', 20);
Insert into State values('Kerela','4','Use of gasoline', 35);


Insert into State values('Maharashtra','1','Carbon_Emission', 65);
Insert into State values('Maharashtra','2','Plastic Consumption', 73);
Insert into State values('Maharashtra','3','Non combustile waste', 45);
Insert into State values('Maharashtra','4','Use of gasoline', 60);

SELECT DISTINCT
    (State_Name) AS EcoFriendlyState
FROM
    State
        INNER JOIN
    Eco_Values ON State.Type_Id = Eco_Values.Type_Id
WHERE
    State.Value < Eco_Values.Threshold_Value;

SELECT DISTINCT
    (State_Name) AS ActionRequiredState
FROM
    State
        INNER JOIN
    Eco_Values ON State.Type_Id = Eco_Values.Type_Id
WHERE
    State.Value > Eco_Values.Threshold_Value;


/*5*/

CREATE TABLE User (
    Id INT PRIMARY KEY NOT NULL,
    Email_id VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(50),
    Username VARCHAR(50),
    Contact_no INT(10)
);
insert into User values(1,'A@123','12345', 'A', 9876543210);
insert into User values(2,'B@123','12345', 'B', 7895458632);
insert into User values(3,'C@123','12345', 'C', 5987462330);
insert into User values(4,'D@123','12345', 'D', 9841537966);


create table if not exists Travel_Details( Id int, foreign key(Id) references User(Id) , Locations varchar (30), ;
insert into Travel_Details values(1, 'Subhash Nagar');
insert into Travel_Details values(2, 'Rajouri Garden');
insert into Travel_Details values(3, 'Vaishali');
insert into Travel_Details values(4, 'Noida');
insert into Travel_Details values(1, 'Dwarka');
insert into Travel_Details values(2, 'KarolBagh');
insert into Travel_Details values(2, 'Connaught Place');
insert into Travel_Details values(4, 'Mayur Vihar');

SELECT 
    *
FROM
    user_details
WHERE
    (SELECT 
            total_locations
        FROM
            travel_details
        WHERE
            total_locations > 40)
        AND user_details.id = travel_details.id;

SELECT 
    user_details.id,
    user_details.user_email,
    user_details.username,
    travel_details.total_locations
FROM
    user_details
        INNER JOIN
    travel_details ON user_details.id = travel_details.id
WHERE
    travel_details.total_locations > 40;

/*6*/

CREATE TABLE IF NOT EXISTS Students_Records (
    RolNo INT(10) PRIMARY KEY NOT NULL,
    Name VARCHAR(30),
    Batch_Year INT(4),
    Eligibilty VARCHAR(5),
    Partcipated VARCHAR(5),
    Result VARCHAR(20)
);

insert into Students_Records values(110, 'A', 2013, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(115, 'B', 2013, 'Yes', 'Yes', 'Not Placed');
insert into Students_Records values(297, 'Z', 2013, 'No', 'No', 'Not Placed');
insert into Students_Records values(457, 'D', 2013, 'Yes', 'No', 'Not Placed');
insert into Students_Records values(125, 'F', 2014, 'No', 'No', 'Not Placed');
insert into Students_Records values(356, 'K', 2014, 'No', 'No', 'Not Placed');
insert into Students_Records values(456, 'L', 2014, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(741, 'Q', 2014, 'No', 'No', 'Not Placed');
insert into Students_Records values(569, 'H', 2015, 'Yes', 'No', 'Not Placed');
insert into Students_Records values(253, 'Y', 2015, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(452, 'W', 2015, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(754, 'P', 2015, 'Yes', 'Yes', 'Not Placed');
insert into Students_Records values(635, 'T', 2016, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(459, 'G', 2016, 'Yes', 'No', 'Not Placed');
insert into Students_Records values(745, 'R', 2016, 'No', 'No', 'Not Placed');
insert into Students_Records values(325, 'V', 2016, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(666, 'M', 2017, 'Yes', 'No', 'Not Placed');
insert into Students_Records values(148, 'N', 2017, 'No', 'No', 'Not Placed');
insert into Students_Records values(356, 'C', 2017, 'No', 'No', 'Not Placed');
insert into Students_Records values(257, 'U', 2017, 'Yes', 'Yes', 'Placed');
insert into Students_Records values(356, 'I', 2018, 'No', 'No', 'Not Placed');
insert into Students_Records values(125, 'X', 2018, 'Yes', 'Yes', 'Placed');

SELECT 
    *
FROM
    Students_Records;

SELECT 
    *
FROM
    Students_Records
WHERE
    (Batch_Year BETWEEN 2018 - 5 AND 2018)
        AND Eligibilty = 'yes'
        AND Partcipated = 'yes'
        AND Result = 'Not Placed'
ORDER BY Batch_Year;

SELECT 
    *
FROM
    Students_Records
WHERE
    (Batch_Year BETWEEN 2018 - 5 AND 2018)
        AND Eligibilty = 'yes'
        AND Partcipated = 'No'
ORDER BY Batch_Year;

SELECT 
    *
FROM
    Students_Records
WHERE
    (Batch_Year BETWEEN 2018 - 5 AND 2018)
        AND Eligibilty = 'No'
ORDER BY Batch_Year;

/*8*/

CREATE TABLE IF NOT EXISTS DMRC (
    Hours TIME,
    No_of_users INT(30),
    types ENUM('peak hour', 'non-peak hour'),
    No_of_coaches INT(10)
);


insert into DMRC values( '08:00:00',  4000, 'peak hour',6);
insert into DMRC values( '09:00:00',  5400, 'peak hour',8);
insert into DMRC values( '10:00:00',  3000, 'peak hour',8);
insert into DMRC values( '11:00:00',  2000, 'peak hour',6);
insert into DMRC values( '12:00:00',  1500, 'non-peak hour',6);
insert into DMRC values( '13:00:00',  700, 'non-peak hour',6);
insert into DMRC values( '14:00:00',  800, 'non-peak hour',6);
insert into DMRC values( '15:00:00',  200, 'non-peak hour',6);
insert into DMRC values( '16:00:00',  700, 'non-peak hour',8);
insert into DMRC values( '17:00:00',  2000, 'non-peak hour',8);
insert into DMRC values( '18:00:00',  3000, 'peak hour',6);
insert into DMRC values( '19:00:00',  3400, 'peak hour',6);
insert into DMRC values( '20:00:00',  5200, 'peak hour',8);
insert into DMRC values( '21:00:00',  700, 'non-peak hour',8);
insert into DMRC values( '22:00:00',  500, 'non-peak hour',6);

SELECT 
    *
FROM
    DMRC
WHERE
    types = 'peak hour';

/*9*/
CREATE TABLE TTN_passport (
    TTN_Id INT(10) PRIMARY KEY NOT NULL,
    Name VARCHAR(30),
    Stamped_Visa_H1B VARCHAR(5),
    Visa_ExpiryDate DATE
);

insert into TTN_passport values(1, 'A', 'Yes', '2018-08-01');
insert into TTN_passport values(2, 'B', 'No', null);
insert into TTN_passport values(3, 'C', 'Yes', '2018-12-30');
insert into TTN_passport values(4, 'D', 'Yes', '2019-02-15');
insert into TTN_passport values(5, 'E', 'No', null);
insert into TTN_passport values(6, 'F', 'Yes', '2018-10-30');
insert into TTN_passport values(7, 'Z', 'Yes', '2019-01-05');
insert into TTN_passport values(8, 'V', 'Yes', '2018-12-31');
insert into TTN_passport values(9, 'G', 'No', null);

Alter table TTN_passport add column Current_Assignment varchar (50);
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Skill India'
WHERE
    TTN_Id = 1;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Digital India'
WHERE
    TTN_Id = 2;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Skill India'
WHERE
    TTN_Id = 3;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Skill India'
WHERE
    TTN_Id = 4;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Digital India'
WHERE
    TTN_Id = 5;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Swatch Bharat Abhiyan'
WHERE
    TTN_Id = 6;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'Swatch Bharata Abhiyan'
WHERE
    TTN_Id = 7;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'RWA project'
WHERE
    TTN_Id = 8;
UPDATE TTN_passport 
SET 
    Current_Assignment = 'RWA project'
WHERE
    TTN_Id = 9;

SELECT 
    *
FROM
    TTN_passport
WHERE
    Stamped_Visa_H1B = 'Yes'
        AND Visa_ExpiryDate > 2018 - 12 - 31;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
create database scgj;
use scgj;

CREATE TABLE location (
    lid INT(20) PRIMARY KEY AUTO_INCREMENT,
    pincode VARCHAR(30),
    area VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);

CREATE TABLE training_partner (
    tpid INT(20) PRIMARY KEY AUTO_INCREMENT,
    name  VARCHAR(50),
    lid int(20),foreign key(lid) references location(lid),
    website VARCHAR(50),
    date_of_affiliation date
);

CREATE TABLE IF NOT EXISTS assessment_agencies (
    agid INT(20) PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    website VARCHAR(50),
     lid int(20),foreign key(lid) references location(lid),
    Date_of_affiliation DATE
);


CREATE TABLE training_centre (
    tcid INT(20) PRIMARY KEY AUTO_INCREMENT,
    lid INT(20) REFERENCES location (lid),
    status_of_conduct VARCHAR(50),
    max_capacity INT(30),
    tpid int(20) references training_partner(tpid)
);

CREATE TABLE IF NOT EXISTS trainer (			
    id INT(20) primary key not null,
    name VARCHAR(50),
    email VARCHAR(50),
    contact VARCHAR(50),
    salary INT(10),
    qpid INT(20)REFERENCES qualification_pack(qpid),
    lid INT(20),
    FOREIGN KEY (lid)
        REFERENCES location (lid),
    tcid INT(20),
    FOREIGN KEY (tcid)
        REFERENCES training_centre (tcid)
);


CREATE TABLE IF NOT EXISTS assessor (
    assid INT(20) PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    email VARCHAR(50),
    salary INT(10),
    lid INT(20),
    FOREIGN KEY (lid)
        REFERENCES location (lid),
    agid INT(20),
    FOREIGN KEY (agid)
        REFERENCES assessment_agencies (agid)
);

CREATE TABLE batch (		
    bid INT(20) PRIMARY KEY AUTO_INCREMENT,
    tcmId INT(20) REFERENCES training_centre_qpmap (tcmId),
    assid INT(20) REFERENCES assessor (assid),
    strength INT(30),
    start_date DATE,
    end_date DATE,
    date_of_result DATE,
	id INT(20),
    foreign key (id) REFERENCES trainer (id)
);

CREATE TABLE IF NOT EXISTS exam (examid int (10) PRIMARY KEY AUTO_INCREMENT,		
    qpid INT(20),
    date_of_conductance DATE,
    maxmarks INT(3),
    isresultpending BOOLEAN,
    bid INT(20),
    FOREIGN KEY (bid)
        REFERENCES batch (bid)
);

CREATE TABLE sector (
    secid INT(20) PRIMARY KEY AUTO_INCREMENT,
    secname VARCHAR(50)
);

CREATE TABLE qualification_pack (
    qpid INT(20) PRIMARY KEY AUTO_INCREMENT,
    domain_name VARCHAR(50),
    sec_id int(20) references sector(sec_id)
);

CREATE TABLE trainingpartner_qpmap (
	tpqpid int(20) primary key auto_increment,
    tpid INT(20) REFERENCES training_partner (tpid),
    qpid INT(20) REFERENCES qualification_pack (qpid)
);

CREATE TABLE training_centre_qpmap (
    tcmiD INT(20) primary key,
    tpqpid INT,
    tcid INT(20) REFERENCES training_centre(tcid),
    FOREIGN KEY (tpqpid)
        REFERENCES trainingpartner_qpmap (tpqpid)
);

CREATE TABLE candidate (
    cid INT(20) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email_id VARCHAR(50),
    phoneno VARCHAR(30),
    adhaarcard varchar(50),
    date_of_registration DATE,
    dob date,
    qualification varchar(50),
    password varchar(50),
    gender VARCHAR(10),
    lid int(20) references location(lid)
);
CREATE TABLE IF NOT EXISTS question (		
    qid INT(20) PRIMARY KEY NOT NULL,
    questions LONGTEXT
);

 
 
CREATE TABLE IF NOT EXISTS report (		
    rid INT(20) PRIMARY KEY NOT NULL,
    cid INT(20),
    FOREIGN KEY (cid)
        REFERENCES candidate (cid),
    examid INT(20),
    FOREIGN KEY (examid)
        REFERENCES exam (examid),
    cstatus VARCHAR(50),
    marksobtained INT(3)
);
 
 
CREATE TABLE IF NOT EXISTS certifiedcandidate (	
    cid INT(20),
    FOREIGN KEY (cid)
        REFERENCES candidate (cid),
    rid INT(20),
    FOREIGN KEY (rid)
        REFERENCES report (rid),
    certificate_no VARCHAR(50),
    date_of_issue DATE
);
 


CREATE TABLE candidate_batch_details (
    cid INT(20),
    bid INT(20),
    FOREIGN KEY (cid)
        REFERENCES candidate (cid),
    FOREIGN KEY (bid)
        REFERENCES batch (bid)
);

CREATE TABLE candidate_request_qp (
    cid INT(20),
    qpid INT(20),
    tpid INT(20),
    preference_no INT(200),
    FOREIGN KEY (cid)
        REFERENCES candidate (cid),
    FOREIGN KEY (qpid)
        REFERENCES qualification_pack (qpid),
    FOREIGN KEY (tpid)
        REFERENCES training_partner (tpid)
);  


use scgj;

insert into location values (1,110020,'okhla','noida','up');
insert into location values (2,110034,'pitampura','delhi','delhi');
insert into location values (3,110030,'lado sarai','new delhi','delhi');
insert into location values (4,462003,'jawahar chowk','bhopal','madhya pradesh');
insert into location values (5,122018,'tech park','gurgaon','haryana');

insert into location values (6,210301,'sec 63','noida','UP');
insert into location values (7,127306,'charkhi dadri','bhiwani','haryana');
insert into location values (8,752050,'jatni','Bhubaneswar','odisha');
insert into location values (9,390241,'bardoli','surat','gujarat');
insert into location values (10,360001,'Hanuman Madhi Chowk','rajkot','gujarat');

insert into location values (11,201309,'old bus stand','ghaziabad','UP');
insert into location values (12,360001,'rampura','rewari','haryana');

select * from training_partner;
insert into training_partner values (1,'Centum Worskills India limited',6,'www.cdm.infrastructures.com','2017-11-01');
insert into training_partner values (2,'Centurion University of Technology & Management',7,'www.cutm.com','2016-11-01');
insert into training_partner values (3,'Institute of Solar Power Tech',8,'www.isptm.com','2015-11-01');
insert into training_partner values (4,' Anuna Education Network Pvt. Ltd',9,'www.aenpl.com','2014-11-01');
insert into training_partner values (5,'DGN Skills and Management Private Limited',10,'www.dgnsm.com','2013-11-01');

select * from assessment_agencies;
insert into assessment_agencies values (1,'Skill Training Assessment Management Partners','www.stamp.com',1,'2017-12-01');
insert into assessment_agencies values (2,'Virtual Education Trust','www.vet.com',2,'2016-12-01');
insert into assessment_agencies values (3,'Federation of Indian Women Entrepreneurs','www.fiwe.com',3,'2015-12-01');
insert into assessment_agencies values (4,'Balmaan Educational Services Pvt. Ltd.','www.bespl.com',4,'2014-12-01');
insert into assessment_agencies values (5,' Khwaspuria Advisory Pvt. Ltd.','www.kapl.com',5,'2013-12-01');

CREATE TABLE training_centre (
    tcid INT(20) PRIMARY KEY AUTO_INCREMENT,
    lid INT(20) REFERENCES location (lid),
    status_of_conduct VARCHAR(50),
    max_capacity INT(30),
    tpid int(20) references training_partner(tpid)
);

select * from training_centre;
insert into training_centre values (1,1,'conducting training',30,1);
insert into training_centre values (6,6,'conducting training',30,1);
insert into training_centre values (2,2,'not conducting training',30,2);
insert into training_centre values (3,3,'conducting training',30,3);
insert into training_centre values (7,11,'conducting training',30,3);
insert into training_centre values (8,12,'conducting training',30,3);
insert into training_centre values (4,4,'not conducting training',30,4);
insert into training_centre values (5,5,'conducting training',30,5);

select * from assessor;
insert into assessor values(1,'sukirti','sukirti@gmail.com',50000,12,1);
insert into assessor values(2,'deepika sharma','deepika@gmail.com',48000,2,1);
insert into assessor values(3,'surbhi','surbhi@gmail.com',60000,1,1);
insert into assessor values(4,'sakshi','sakshi@gmail.com',55000,3,2);
insert into assessor values(5,'pravek','pravek@gmail.com',580000,4,3);
insert into assessor values(6,'mohan','mohan@gmail.com',80000,5,4);
insert into assessor values(7,'arjun khandelwaal','arjunkhandelwaal@gmail.com',90000,9,4);
insert into assessor values(8,'meenal','meenal@gmail.com',30000,12,5);
insert into assessor values(9,'meenakshi lekhi','meenakshilekhi@gmail.com',40000,11,5);
insert into assessor values(10,'ayushi gupta','ayushi gupta@gmail.com',70000,7,1);

select * from sector;
insert into sector values(1,'solar');
insert into sector values(2,'waste management');
insert into sector values(3,'wind power');
insert into sector values(4,'hydra power');
desc qualification_pack;
select * from qualification_pack;
insert into qualification_pack values (1,'solar PV installer',1);
insert into qualification_pack values (2,'solar designer',1);
insert into qualification_pack values (3,'waste picker',2);
insert into qualification_pack values (4,'rooftop solar grid engineer',1);
insert into qualification_pack values (5,'waste lwater treatment technician',2);
insert into qualification_pack values (7,'wind mill technician',3);
insert into qualification_pack values (6,'hydrolic machine technician',4);

select * from trainingpartner_qpmap;
insert into trainingpartner_qpmap values(1,1,1);
insert into trainingpartner_qpmap values(2,1,2);
insert into trainingpartner_qpmap values(3,1,3);
insert into trainingpartner_qpmap values(4,1,4);
insert into trainingpartner_qpmap values(5,1,5);
insert into trainingpartner_qpmap values(6,1,6);
insert into trainingpartner_qpmap values(7,1,7);

insert into trainingpartner_qpmap values(8,2,1);
insert into trainingpartner_qpmap values(9,2,2);
insert into trainingpartner_qpmap values(10,3,3);
insert into trainingpartner_qpmap values(11,4,4);
insert into trainingpartner_qpmap values(12,5,5);
insert into trainingpartner_qpmap values(13,5,6);
insert into trainingpartner_qpmap values(14,5,7);
desc training_centre_qpmap;
select * from training_centre_qpmap;
insert into training_centre_qpmap values (1,1,1);
insert into training_centre_qpmap values (2,2,2);
insert into training_centre_qpmap values (3,3,3);
insert into training_centre_qpmap values (4,4,4);
insert into training_centre_qpmap values (5,5,4);
insert into training_centre_qpmap values (6,6,1);
insert into training_centre_qpmap values (7,7,1);

insert into training_centre_qpmap values (8,8,2);
insert into training_centre_qpmap values (9,9,3);
insert into training_centre_qpmap values (10,10,4);
insert into training_centre_qpmap values (11,11,5);
insert into training_centre_qpmap values (12,12,6);
insert into training_centre_qpmap values (13,13,7);
insert into training_centre_qpmap values (14,14,8);

insert into training_centre_qpmap values (15,1,2);
insert into training_centre_qpmap values (16,1,3);
insert into training_centre_qpmap values (17,3,4);
insert into training_centre_qpmap values (18,3,5);
insert into training_centre_qpmap values (19,5,4);
insert into training_centre_qpmap values (20,6,1);
select * from candidate;
insert into candidate values (1,'sohan sharma','sohan@tothenew.com','9898989898',123412341234,'2017-01-01','1995-08-08','XII','sohan','male',11); 
insert into candidate values (2,'sonali sharma','sonali@tothenew.com','9798989898',167812341234,'2016-07-01','1995-06-08','XII','sonali','female',12); 
insert into candidate values (3,'arpan singh','arpan@tothenew.com','8698759898',245412341234,'2016-05-01','1995-10-08','XII','arpan','male',8); 
insert into candidate values (4,'sapna','sapna@tothenew.com','8765989898',256712341234,'2015-11-07','1994-08-08','X','sapna','female',4); 
insert into candidate values (5,'nakul singh','nakul@tothenew.com','7798989898',265912341234,'2014-05-01','1995-02-28','XI','nakul','male',6);
insert into candidate values (6,'natraj','natraj@tothenew.com','7998989898',123438451234,'2018-01-01','1995-09-08','X','natraj','male',11); 
insert into candidate values (7,'laxmi','laxmi@tothenew.com','7998989896',288412341234,'2017-06-01','1995-08-08','VIII','laxmi','female',10); 
insert into candidate values (8,'monu singh','monu@tothenew.com','7777989898',277712341234,'2017-07-07','1994-08-10','XII','monu','male',1); 
select * from trainer;
insert into trainer values (1,'gaurav gandhi','gaurav@tothenew.com',9798989898,55000,1,1,1);
insert into trainer values (2,'pravek','pravek@tothenew.com',9795679898,50000,1,2,2);
insert into trainer values (3,'ruchi','ruchi@tothenew.com',9798987778,60000,1,3,3);
insert into trainer values (4,'ram','ram@tothenew.com',9798666898,75000,2,4,1);
insert into trainer values (5,'suraj parihar','surajparihar@tothenew.com',9744489898,45000,3,5,2);
insert into trainer values (6,'rahul singh','rahulsingh@tothenew.com',8888989898,40000,4,6,2);
insert into trainer values (7,'vinay','vinay@tothenew.com',7777989898,40000,5,7,3);
insert into trainer values (8,'manish kumar','manishkumar@tothenew.com',7666989898,45000,6,8,4);
select * from batch;
insert into batch values (1,1,1,30,'2017-01-01','2017-06-01','2017-06-01',1);
insert into batch values (2,2,2,30,'2017-02-01','2017-07-01','2017-07-01',1);
insert into batch values (3,3,3,60,'2017-03-01','2017-09-01','2017-09-01',2);
insert into batch values (4,4,1,30,'2017-06-01','2017-12-01','2017-12-01',3);
insert into batch values (5,5,4,60,'2018-01-06','2018-06-06',null,4);
insert into batch values (6,6,5,30,'2018-03-01','2018-09-09',null,5);
insert into batch values (7,7,6,60,'2018-04-04','2018-10-04','2018-11-01',6);
insert into batch values (8,8,7,70,'2017-01-01','2017-06-02','2017-01-01',7);
insert into batch values (9,2,8,30,'2016-01-01','2016-07-01',null,8);
insert into batch values (10,4,9,30,'2016-08-01','2017-03-01','2017-01-01',2);

select * from exam;
insert into exam values(1,1,'2017-06-01',100,0,1);
insert into exam values(2,1,'2017-07-01',100,0,2);
insert into exam values(3,2,'2017-09-01',100,0,3);
insert into exam values(4,3,'2017-12-01',100,0,4);
insert into exam values(5,5,'2018-06-06',100,1,5);
insert into exam values(6,3,'2018-09-09',100,1,6);
insert into exam values(7,2,'2018-10-04',100,1,7);
insert into exam values(8,5,'2017-06-02',100,0,8);
insert into exam values(9,1,'2016-07-01',100,1,9);
insert into exam values(10,7,'2017-03-01',100,0,10);
select * from report;

insert into report values(1,1,1,'paas',80);
insert into report values(2,2,2,'paas',40);
insert into report values(3,3,3,'paas',60);
insert into report values(4,4,4,'fail',30);
insert into report values(5,5,8,'paas',78);
insert into report values(6,6,10,'paas',89);
select * from certifiedcandidate;
insert into certifiedcandidate values(1,1,'c01','2017-06-01');
insert into certifiedcandidate values(2,2,'c02','2017-07-01');
insert into certifiedcandidate values(3,3,'c03','2017-09-01');
insert into certifiedcandidate values(5,5,'c04','2017-06-02');
insert into certifiedcandidate values(6,6,'c05','2017-03-01');
select * from candidate_batch_details;
insert into candidate_batch_details values (1,1);
insert into candidate_batch_details values (2,1);
insert into candidate_batch_details values (3,1);
insert into candidate_batch_details values (4,1);
insert into candidate_batch_details values (5,2);
insert into candidate_batch_details values (6,2);
insert into candidate_batch_details values (7,3);
insert into candidate_batch_details values (8,4);
insert into candidate_batch_details values (2,5);
insert into candidate_batch_details values (1,6);
insert into candidate_batch_details values (1,7);
insert into candidate_batch_details values (4,8);

select * from candidate_request_qp;
select * from training_centre;
insert into candidate_request_qp values(1,1,1,5);
insert into candidate_request_qp values(2,1,1,5);
insert into candidate_request_qp values(3,2,1,3);
insert into candidate_request_qp values(4,2,2,4);
insert into candidate_request_qp values(5,3,3,2);
insert into candidate_request_qp values(6,4,3,4);
insert into candidate_request_qp values(7,5,4,3);
insert into candidate_request_qp values(8,6,5,3);


/*6*/
select count(bid) as Batches_Trained_in_5_years from batch where end_date<curdate() or year(curdate())-5; 
/*5*/
select count(t.tcid) as Total_training_centre, l.state  from training_centre t left join location l on t.lid=l.lid group by l.state;

/*2*/
select count(candidate.cid), count(batch.assid), count(certifiedcandidate.cid) from candidate join candidate_batch_details on candidate.cid= candidate_batch_details.cid join batch on candidate_batch_details.bid=batch.bid join assessor on assessor.assid=batch.assid join certifiedcandidate on candidate.cid=certifiedcandidate.cid;

select count(cid) as enrolled,(select count(cid)  from candidate where cid in(select cid  from report)) as assessed, (select count(cid) from candidate where cid in(select cid  from certifiedcandidate)) as certified from candidate;
/*4*/
select sum(cid), month(dateofconductance)  
/*3*/
/*select count(batch), gro*/



create database u;