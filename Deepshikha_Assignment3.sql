
Union:-
1. Getting all the user names from user corresponding to their applicationID from application 

select userName from user union select applicationID from application;

2. Getting all the users whose application is either approved or under review.

select applicationID from application where applicationStatus='Approved' union select applicationID from application where applicationStatus='Under Review';


Intersection:- There is no intersect clause in the my sql but to simulte this type of query we can use IN or EXISTS clause.
1. select applicationID from application where applicationID in (select applicationID from applicationComment);


Except:- My sql does not support except clause but we can achieve this by using left join or not in clause.
1. select applicationID from application where applicationID not in(select applicationID from applicationComment);


Some:-
1.getting all usernames where turn over is greater
select userName,turnOver from user where turnOver>some(select turnOver from user where roleID=3);

2.
select batchID from batch where batchStartDate>some(select batchStartDate from batch where trainingPartner=1);


All:-
1.The ALL operator returns TRUE if all of the subquery values meet the condition.
select userName,turnOver from user where turnOver>all(select turnOver from user where roleID=3);

2. getting all batches batchID when all dates are greater than date of training partner=1 
select batchID from batch where batchStartDate>all(select batchStartDate from batch where trainingPartner=1);


Exists:-
1. 
select userName from user where exists(select applicationStatus from application where applicationID=user.applicationID and applicationDate >2017-01-21);