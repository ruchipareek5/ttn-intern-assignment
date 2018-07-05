/* Assignment 3*/
/* UNION*/
select username, app_id from ttn_user union select username, app_id from application_status;
select username, role_id from ttn_user union select role, role_id from user_role;
/*SOME */
select username, email, contactNo from ttn_user where username= SOME(select username from batch where batchID=2);
select role_id,role from user_role where role_id= SOME(select role_id from ttn_user where username= 'Aakash');
/* exists */
select username FROM ttn_user WHERE EXISTS (SELECT batch_id FROM batch WHERE username = batch.username AND batch_id>5);
select username FROM ttn_user WHERE EXISTS (SELECT role_id FROM user_role WHERE role_id = user_role.role_id AND role_id=1);
/* ALL*/
select UserName from ttnUser where Appid= All (select Batch_id from batch where start_date>'2016-01-01');
select comments from applicationstatus where appid= all(select id from applicationstatus where isActive='active');
/* in */
select UserName from ttnUser where Username in(select Username from batch); 

select UserName from ttnUser where role_id=1 and Username in(select Username from batch where batch_id=1);

/*not in*/
select * from ttnUser where UserName not in ('karishma','sakshi');
select * from ttnUser where Date_of_application not in('2017-12-09','2018-08-01');