/* Display all the user and the batches*/
select username,turnover,Training_id,Batch_Name,Start_date,End_date from user a left join batch b on a.id=b.Training_id
 union 
 select username,turnover,Training_id,Batch_Name,Start_date,End_date from user a right join batch b on a.id=b.Training_id;
 
/* Display all batches started before may 2018 and will end after july 2018*/
select batch_name,start_date,end_date from batch where start_date < '2018-05-01'
 UNION
  select batch_name,start_date,end_date from batch where end_date > '2018-07-31';
  
/* Display Batch ID's to whom trainees have been assigned*/   
select id from batch where exists (select * from user where batch.Training_id=user.id);
   
/* Display users whose application is submited but comment is enabled*/
select * from application where exists(select * from application_comment where application.application_status=1 AND application_comment.is_active=1 AND application.id = application_comment.app_id);
 
/* Display applications not submitted i.e. except submitted application*/
Select * from application where application_status not in(1);

/* Display Batch ID whose trainees have not been assigned */
select id from batch where not exists (select * from user where batch.Training_id=user.id);

/* Display all trainers to which batches have been assigned*/ 
select username,id from user where id=SOME(select Training_id from batch);

/* Display comments of applications */
select comment from application_comment where app_id=SOME(select id from application);

/* Display user with minimum turnover */
select username,turnover from user where turnover <= ALL(select turnover from user);

/* Display user with maximum turnover */
select username,turnover from user where turnover >= ALL(select turnover from user);
 
 
 
 
 
 
 
 
 