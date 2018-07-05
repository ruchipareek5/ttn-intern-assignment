 /* problem statement no 4*/

create database if not exists Environment ;

create user 'minister'@'localhost' identified by 'minister';

grant select,grant option on Environment.* to 'minister'@'localhost';


create table if not exists states(state_id int(10)
 primary key not null,
state_name varchar(12),
 carbon_consumption enum('low','medium','high'),
 
plastic_consumption enum('low','medium','high'),
 pollution enum('low','medium','high') );

 insert into states values(1,'haryana','low','medium','medium');
 
 insert into states values(2,'assam','low','low','low');
   
insert into states values(3,'rajasthan','low','medium','medium');
    
insert into states values(4,'gujarat','high','medium','low');
     
insert into states values(5,'tamil nadu','medium','medium','high');
     
 insert into states values(6,'maharashtra','high','high','high');
   

/*sql query*/
   
      
select state_id,state_name as environment_friendly_states from states
      
where carbon_consumption in('low','medium') and 
      
plastic_consumption in('low','medium') and
      
pollution in('low','medium');
      
select state_id,state_name as below_thresholdvalue_states from states
      
where carbon_consumption in('high','medium') and 
      
plastic_consumption in('high','medium') and
      
pollution in('high','medium');