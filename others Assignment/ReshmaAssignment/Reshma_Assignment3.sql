/* UNION */
/* select the batches having a particular assessment partner OR a particular training parter*/
select batchId from batches where associatedTrainingPartnerId=10
union 
select batchId from assesesbatches where assessmentPartnerId=5;
/*select userIDs who are either in state delhi or have permanent address delhi */
select uId from user where uaddrs='delhi'
union
select uId from profile where state='delhi';

/* INERSECTION --- no intersection in mysql..use in */
/* select the batches having a particular assessment partner AND a particular training parter*/
select batchId from batches where associatedTrainingPartnerId=10 and 
batchId in(select batchId from assesesbatches where assessmentPartnerId=5);
/*select userIDs who are having BOTH state delhi and permanent address delhi */
select uId from user where uaddrs='delhi' and 
uid in(select uId from profile where state='delhi');

/* EXCEPT no except in mysql..use not in*/
/*select the batchIds that are not assigned any assesment partner */
select batchId from batches where batchId not in (select batchId from assesesbatches);
/*select the training partners who have not assinged any batch*/
select uId from user where uroleId=1 and uId not in(select associatedTrainingPartnerId from batches);

/*SOME alias of ANY*/
/*select userID having turnover more than 1000000 */
select uId from user where uId = some(select uId from profile where turnOver>1000000);
/*select the batchIds that are assigned any assesment partner */
select batchId from batches where batchId = some(select batchId from assesesbatches);

/* ALL */
/*select the batchIds that that have the end dates after the date of joining of trainig partner or assesment partner */
select batchId from batches where batchEndDate > all(select dateOfApply from user);
/*select the batchIds that that have the start dates after the date of joining of trainig partner or assesment partner */
select batchId from batches where batchStartDate > all(select dateOfApply from user);

/* EXISTS */
/* returns all the userIDs that are training some batch */
select uId from user where exists (select associatedTrainingPartnerId from batches);
/*returns all the batch Ids that have been alloted some assessment partner */
select batchId from batches where exists (select batchId from assesesbatches);
