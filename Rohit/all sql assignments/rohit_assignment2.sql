use ttn_affiliation_body;
select * from batch where batch_id IN(select batch_id from user where  role_id=1) and end_date<=NOW();
select * from batch where batch_id IN(select batch_id from user where  role_id=1) and end_date>=NOW(); 
select * from batch where batch_id IN(select batch_id from user where  role_id=2);
select * from batch where batch_id IN(select batch_id from user where  role_id=2) and end_date>=NOW(); 
Select * from application where app_status=1;
select comment from application where is_active=1;

