create schema ttn_affiliation_body;
use ttn_affiliation_body;

create table if not exists role (
	roleID int primary key auto_increment,
    roleName varchar(50)
);

create table if not exists batch (
	batchID int primary key auto_increment,
    batchStartDate date not null,
    batchEndDate date not null
);

create table if not exists application (
	applicationID int primary key auto_increment,
    applicationDate date not null,
    applicationStatus varchar(50) not null
);

create table if not exists user (
	userID int primary key auto_increment,
    userName varchar(50) not null,
    roleID int,
    applicationID int,
    batchID int,
    foreign key (applicationID) references application(applicationID),
    foreign key (roleID) references role(roleID),
    foreign key (batchID) references batch(batchID)
);

grant grant option, create, select, update, insert on ttn_affiliation_body to 'ttn_db_user'@'localhost' identified by 'dbuser';
grant select, update, insert, delete on user to 'ttn_app_user'@'localhost' identified by 'appuser';