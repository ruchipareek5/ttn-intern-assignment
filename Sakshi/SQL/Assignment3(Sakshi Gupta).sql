/*union*/
select UserName, roles_assigned from PartnerRegistraion union select Trainer_Username,Assesser_Username from batch_info;

select UserName, roles_assigned, Batch_id from PartnerRegistraion left join Batch_info on PartnerRegistraion.UserName = Batch_info.Trainer_Username
union
select Trainer_Username, Assesser_Username, Batch_id from Batch_info right join PartnerRegistraion  on PartnerRegistraion.UserName = Batch_info.Trainer_Username;

/*intersect*/

select UserName from PartnerRegistraion where Username in(select Username from appl_comment); 

select UserName from PartnerRegistraion where application_status='Approved' and Username in(select Username from appl_comment where isActive='active');

/* Exists query */

select UserName from PartnerRegistraion where exists 
(select batch_id from batch_info where Trainer_Username=PartnerRegistraion.UserName);

select Appl_id from PartnerRegistraion where exists 
(select Username from appl_comment where application_status='active');

/* some*/
select UserName ,Email_id from PartnerRegistraion where UserName=some(select Assesser_Username from batch_info);

select Appl_id ,Date_of_application from PartnerRegistraion where Date_of_application=some(select start_date from batch_info where Date_of_application < start_date);
;

/*Except/not in*/
select * from PartnerRegistraion where UserName not in ('Sakshi','shivangi');
select * from PartnerRegistraion where Date_of_application not in('2018-06-09','2018-05-04');

/*All*/
select UserName from PartnerRegistraion where Appl_id= All (select Batch_id from batch_info where start_date>'2016-01-01');
select commnt from appl_comment where id= all(select id from appl_comment where isActive='active');
