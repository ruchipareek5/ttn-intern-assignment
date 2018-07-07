create schema TTN2;

use TTN2;

create table if not exists project(
	projectID int primary key,
    startDate date,
    endDate date
    );
    
create table if not exists emp(
	empID int primary key,
    hasVisa bool,
    projectID int,
    foreign key (projectID) references project(projectID)
    );
    
select *from project;
select *from emp;

alter table emp add column projectEndDate date;

select empID,projectID from emp where (hasVIsa=1 and projectEndDate<curdate());
