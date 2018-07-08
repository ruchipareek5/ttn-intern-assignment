select *  from batch where (trainerId=1 and startDate<curdate());
select *  from batch where (trainerId=1 and startDate>curdate());
select *  from batch where (startDate>curdate());
select * from affilation where ustatus = true;
select comments from application_comments where(id=1&&status='active');