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

alter table trainer change id tid INT(20);

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
    tid INT(20),
    foreign key (tid) REFERENCES trainer (tid)
);


CREATE TABLE IF NOT EXISTS exam (		
    examid INT(20) PRIMARY KEY NOT NULL,
    qpid INT(20),
    date_of_conductance DATE,
    maxmarks INT(3),
    isresultpending BOOLEAN,
    bid INT(20),
    FOREIGN KEY (bid)
        REFERENCES batch (bid)
);
alter table exam add constraint foreign key(qpid) references qualification_pack(qpid);

CREATE TABLE sector (
    secid INT(20) PRIMARY KEY AUTO_INCREMENT,
    secname VARCHAR(50)
);

CREATE TABLE qualification_pack (
    qpid INT(20) PRIMARY KEY AUTO_INCREMENT,
    domain_name VARCHAR(50),
    sec_id int(20) references sector(sec_id)
);
alter table qualification_pack change sec_id secid int(20);
alter table qualification_pack add constraint foreign key (secid)references sector(secid);

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

show tables;