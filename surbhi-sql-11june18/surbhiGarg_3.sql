use ttn_affiliation_body;
/*union*/
/*1.select trainer id whose application is submitted and select trainer id who is allotted a batch*/
select id from applicationusers where status='submit' and roleId=2 
union
select distinct trainerId from trainerbatchmapper;
/*2. select batch id whose end date <curdate and assessor is assigned*/
select batchId from batches where endDate<curdate() 
union
select distinct batchId from trainerbatchmapper;

/*Intersect-not a keyword in mysql.Can be simulated using in*/
/*1 select batch id whose end date <curdate and assessor is assigned*/
select batchId from batches where endDate<curdate() 
and batchId  in
(select distinct batchId from trainerbatchmapper);
/*2 select userid where status is active and are having an active comment*/
select id from applicationusers where status='active' and id in(select applicationId from applicationcomment where isActive=true);
/*Except is not a keyword in mysql.*/
/* select trainers who are not mapped to any batch*/
select id from applicationusers where roleId=2 and id not in(
select distinct trainerId from trainerbatchmapper);
/*select batches which are not mapped to any trainer*/ 
select batchId from batches where batchId not in(
select distinct batchId from trainerbatchmapper);
/*some*/
/*1 users having turnover >40000*/
select id from applicationusers where id=some(select id from applicationusers where turnOver>40000);
/*2 users having status=active and having associated batches*/
select id,count(batchId) from applicationusers us join trainerbatchmapper map on us.id=map.trainerId where roleId=2 and us.id=some(select us.id from applicationusers where status='active') group by us.id;

/*all*/
select id from applicationusers where id=all(select id from applicationusers where turnOver>40000);
select id,count(batchId) from applicationusers us join trainerbatchmapper map on us.id=map.trainerId where roleId=2 and us.id=all(select us.id from applicationusers where status='active') group by us.id;

/*exists*/
select distinct applicationId from applicationcomment where exists(select * from applicationusers where id=applicationcomment.applicationId);

select distinct applicationId from applicationcomment where not exists(select * from applicationusers where id=applicationcomment.applicationId);