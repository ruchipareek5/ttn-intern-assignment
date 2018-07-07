Union
1) a case where we want to display users who are trainers and users who are assessors.
select userId,userName from users where roleId=1

union

select userId,userName from users where roleId=2;

2) a case where we want to select applications which are submitted and applications which are under rejected
select applicationId from application where applicationStatus='submitted'

union

select applicationId from application where applicationStatus='rejected';

Intersect: for intersect we can use inner join or 'in' clause
1) a case where we want to check which applications have assigned any comment.
select applicationId from application 
where applicationId in (select applicationId from applicationComment);

2) a case where we need to select all the users who are training partners.
select userId, userName from users 
where userId in(select trainerId from batch);

Except
1) a scenario to display all the applications which do not have any comment.
select applicationId from application 
where applicationId not in(select applicationId from applicationComment);

2) a scenario to display all the applications which are not rejected.
select applicationId from application where applicationStatus not in('rejected');

Some
1) to see if turnover of users where is greater than a particular roleid.
select turnover from users where turnover>some(select turnover from users where roleId=2);

2)to select batches whose startdate matches startdate of a particular trainer.
select batchId from batch where startdate=some(select startdate from batch where trainerId=2);


All
1) to see if turnover of users where is greater than all the turnovers of a particular roleid.
select userName from users where turnover>all(select turnover from users where roleId=2);

2)to select batches whose startdate matches all the startdate of a particular trainer.
select batchId from batch where startdate=all(select startdate from batch where trainerId=2);



Exists
1) to check if comment exists for applicationId
select applicationId, applicationStatus from application 
where exists(select applicationId from applicationComment where application.applicationId=applicationComment.applicationId);


2) to check if trainer has a userId
select userId from users 
where exists(select batchId from batch where users.userId=batch.trainerId);
