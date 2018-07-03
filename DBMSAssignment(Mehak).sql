 create database if not exists ttn_affiliation_body;
 
 grant grant option, create, select, update, insert on ttn_affiliation_body.* to 'ttn_db_user'@'25.2.23.1' identified by 'pass';
 
 grant select, insert, update, delete on ttn_affiliation_body.* to 'ttn_app_user'@'127.1.1.1' identified by 'pass';
 
 use ttn_affiliation_body; 
 
  create table if not exists roles(
	roles varchar(200) primary key not null
);

 create table if not exists batch(
	batch_name varchar(05) primary key not null,
    no_of_students int(100)
 ); 
 
 create table if not exists user(
	applicationid int(20) primary key not null,
    username varchar(15) not null,
    password varchar(12) not null,
    date date not null,
    status tinyint,
    roles varchar(200) not null,
    batch_name varchar(05) not null,
    foreign key (roles) references roles(roles),
    foreign key (batch_name) references batch(batch_name)
 );
  
insert into roles values ( "trainer" );
insert into roles values ( "assesser" );

insert into batch values ( "00a", 65 );
insert into batch values ( "00b", 48 );

insert into user values ( 4, "adlakhamehak98", "123", "2018/05/01", 1, "trainer", "00a", 1234 );
insert into user values ( 5, "sanju71", "user@1", '2018/12/11', 0, "trainer", "00b", 61543 );
insert into user values ( 7, "74adlkhvin", "123456", '2018/12/12', 1, "assesser", "00a", 615256 );

use ttn_affiliation_body;
alter table user add pan int(10);
select * from batch_copy;
  
create table batch_copy like batch;
drop  database ttn_affiliation_body;