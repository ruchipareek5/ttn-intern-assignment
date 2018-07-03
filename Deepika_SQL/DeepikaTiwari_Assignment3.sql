/* Assignment 3 */

/* union, intersect, except, some, all, exists */

/* UNION - Select all users affiliated to batches in training or assessment capacity */
select trainingPartnerID from batch
union all
select assessmentPartnerID from batch;

/* UNION - Select applications that are approved or submitted */
select applicationID from application where applicationStatus = 'approved' 
union
select applicationID from application where applicationStatus = 'submit';

/* INTERSECTION - Get application IDs for applications that have comments */
select applicationID from application where applicationID in (select applicationID from application_comments);

/* INTERSECTION - Get IDs of users who are training batches */
select userID from user where userID in (select trainingPartnerID from batch);

/* EXCEPT - Get all IDs of af applications except the ones that are rejected */
select applicationID from application where applicationID not in (select applicationID from application where applicationStatus = 'rejected');

/* EXCEPT - Get all application IDs for applications that are not inactive */
select applicationID from application where applicationID not in (select applicationID from application_comments where isActive = 0);

/* SOME - Get turnovers of trainers or assessors that have turnovers equal to maximum assessor turnover */
select userName, turnover, roleID from user where turnover = some (select max(turnover) from user where roleID = 2);

/* SOME - Get batch IDs that have started between June 1 to current date */
select batchID, batchStartDate from batch where batchStartDate = some (select batchStartDate from batch where batchStartDate between '2018-06-01' and curdate());

/* ALL - Get turnovers of users with turnover less than or equal to all assessors */
select userName, turnover, roleID from user where turnover <= all (select turnover from user where roleID = 2);

/* ALL - Get turnovers that are less than all assessor turnovers  */
select userName, turnover, roleID from user where turnover < all (select turnover from user where roleID = 2);

/* EXISTS - Get application IDs of applications which have comments that include the word invalid */
select applicationID from application_comments where exists (select distinct applicationID from application_comments where comments like '%invalid%');

/* EXISTS - Get user details for users that have roles as per role table */
select userName, userID, roleID from user where exists (select distinct roleID from role);
