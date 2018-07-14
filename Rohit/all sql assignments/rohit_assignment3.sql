Select batch_id from trainer
union all
select batch_id from assesment
order by batch_id;

Select app_id from application where app_status=1
union all
select app_id from application_comment where is_active=1;

Select trainer.batch_id from trainer
where trainer.batch_id IN(Select assesment.batch_id from assesment);

Select app_id from application where app_status=1 and app_id IN
(select app_id from application_comment where is_active=1);

Select batch_id from trainer
where batch_id not in(Select batch_id from assesment);

Select app_id from application where app_status=0 and app_id NOT IN
(select app_id from application_comment where is_active=1);

Select name from user
where user_id=ALL(Select app_id from application where app_status=0);

Select app_status from application
where app_id=All(Select user_id from user where turn_over=10000);

Select name from user where 
EXISTS (Select * from application);

Select name from user where
Exists(Select * from application where app_id=19);
