create schema if not exists ttn_jdbc;
use ttn_jdbc;
create table if not exists users (username varchar(100),age int,gender varchar(50));
insert into users(username,age,gender) values('aakash@gmail.com',15,'male');
call insert_into_users('heelo@gmail.com',18,'male');

select * from users;

create table if not exists batch(b_id int primary key auto_increment,
	batch_id varchar(100),
    batch_name varchar(100),
    batch_type varchar(100),
    training_partner_id varchar(100),
    centre_id int,
    trainer_id int,
    total_candidates_in_batch int,
    batch_mode varchar(100),
    batch_start_date date,
    batch_end_date date,
    job_role varchar(100),
    job_role_code varchar(100),
    maximum_marks_theory float,
    maximum_marks_practical float,
    b_level int,
    result_approved varchar(50),
    result_approved_on_date date,
    total_pass int,
    total_fail int,
    total_not_appeared int,
    total_certified int,
    batch_assignment_date date,
    assessment_date date,
    agency_id int,
    assessor_id int);
    alter table users add u_id int primary key  auto_increment;
create table if not exists audit_user(old_email varchar(100),new_email varchar(100));
select * from users;
update users set username='s@gmail.com' where u_id=3;
update users set username='a1@gmail.com' where u_id=3;
select * from audit_user;
