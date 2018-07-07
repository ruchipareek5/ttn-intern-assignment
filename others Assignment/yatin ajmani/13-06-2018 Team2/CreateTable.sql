create database skill_india3;

use skill_india3;

CREATE TABLE `states` (
    `state_id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    PRIMARY KEY (`state_id`)
);

CREATE TABLE `cities` (
    `city_id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    state_id int,
    foreign key (state_id)
        references states (state_id),
    PRIMARY KEY (`city_id`)
);

create table if not exists qualification (
    qualification_id int not null primary key auto_increment,
    qualification_type varchar(100)
);
 
create table if not exists candidates (
    candidate_id int not null primary key auto_increment,
    name varchar(100),
    email varchar(100) unique,
    contact int unique,
    gender enum('male', 'female', 'others'),
    state_id int,
    city_id int,
    qualification_id int,
    category enum('general', 'obc', 'st', 'sc', 'minority'),
    foreign key (state_id)
        references states (state_id),
    foreign key (city_id)
        references cities (city_id),
    foreign key (qualification_id)
        references qualification (qualification_id),
    delete_time timestamp null default null
);

create table if not exists training_partners (
    training_partner_id int primary key auto_increment,
    name varchar(100) not null unique,
    address varchar(100) not null,
    state_id int,
    city_id int,
    foreign key (state_id)
        references states (state_id),
    foreign key (city_id)
        references cities (city_id)
);

create table if not exists sectors (
    sector_id int primary key auto_increment,
    name varchar(50) not null unique
);

create table if not exists qualification_packs (
    qualification_pack_id int primary key auto_increment,
    name varchar(20) not null unique,
    sector_id int,
    foreign key (sector_id)
        references sectors (sector_id)
);

create table if not exists training_partner_qualification_pack_mapper (
    training_partner_qualification_pack_mapper_id int primary key auto_increment,
    training_partner_id int,
    qualification_pack_id int,
    foreign key (qualification_pack_id)
        references qualification_packs (qualification_pack_id),
    foreign key (training_partner_id)
        references training_partners (training_partner_id),
    unique key (training_partner_id , qualification_pack_id)
);

create table if not exists training_centres (
    training_centre_id int primary key auto_increment,
    name varchar(100) not null,
    address varchar(100) not null,
    state_id int,
    city_id int,
    centre_SPOC_name varchar(100),
    centre_SPOC_contact_number int,
    centre_SPOC_Email varchar(100),
    training_partner_id int,
    delete_time timestamp null default null,
    foreign key (training_partner_id)
        references training_partners (training_partner_id),
    foreign key (state_id)
        references states (state_id)
);

create table if not exists training_center_qualification_pack_mapper (
    training_center_qualification_pack_mapper_id int primary key auto_increment,
    qualification_pack_id int,
    training_center_id int,
    foreign key (qualification_pack_id)
        references qualification_packs (qualification_pack_id),
    foreign key (training_center_id)
        references training_centres (training_centre_id),
    unique key (qualification_pack_id , training_center_id)
);

create table if not exists assessement_agencies (
    assessement_agency_id int primary key auto_increment,
    name varchar(100) not null,
    address varchar(100) not null,
    state_id int,
    city_id int,
    foreign key (state_id)
        references states (state_id),
    foreign key (city_id)
        references cities (city_id)
);

create table if not exists assessement_agency_centres (
    assessement_agency_center_id int primary key auto_increment,
    name varchar(100) not null,
    address varchar(100) not null,
    state_id int,
    city_id int,
    assessement_agency_centre_SPOC_name varchar(100),
    assessement_agency_id int,
    assessement_agency_centre_SPOC_contact_number int,
    delete_time timestamp null default null,
    foreign key (state_id)
        references states (state_id),
    foreign key (city_id)
        references cities (city_id),
    foreign key (assessement_agency_id)
        references assessement_agencies (assessement_agency_id)
);

CREATE TABLE `batches` (
    `batch_id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(20) NOT NULL,
    `start_date` date NOT NULL,
    `end_date` date,
    training_center_id int,
    training_partner_qualification_pack_mapper_id int,
    assessement_agency_id int,
    delete_time timestamp null default null,
    foreign key (training_center_id)
        references training_centres (training_centre_id),
    foreign key (assessement_agency_id)
        references assessement_agencies (assessement_agency_id),
    foreign key (training_partner_qualification_pack_mapper_id)
        references training_partner_qualification_pack_mapper (training_partner_qualification_pack_mapper_id),
    PRIMARY KEY (`batch_id`)
);
 
CREATE TABLE marksheets (
    marksheet_id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT,
    marks INT,
    qualification_pack_id INT,
    result enum('pass', 'fail'),
    is_certified bool,
    passing_date date null default null,
    FOREIGN KEY (qualification_pack_id)
        REFERENCES qualification_packs (qualification_pack_id),
    FOREIGN KEY (candidate_id)
        REFERENCES candidates (candidate_id),
    unique key (candidate_id , qualification_pack_id)
);

CREATE TABLE candidate_batch (
    candidate_batch_id int primary key auto_increment,
    batch_id INT,
    candidate_id INT,
    delete_time timestamp null default null,
    FOREIGN KEY (candidate_id)
        REFERENCES candidates (candidate_id),
    FOREIGN KEY (batch_id)
        REFERENCES batches (batch_id),
    unique key (candidate_id , batch_id)
);

alter table batches add assessment_date date null default null;