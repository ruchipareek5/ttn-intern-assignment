use ttn_affiliation_body;

/*Union*/
/********/

/*Union can be used to combine the result set of two 
or more select statements.
These select statements can either be applied on the same 
table or they can also be applied on two different tables.
The conditions which the select statements should comply with are :-

1 - Both the tables must have same number of columns.
2 - The columns must have the same data type.
3 - The columns of each select statement must be in same order.

*/

select username,start_date, end_date from user left join 
batch on user.id = batch.trainer_id
union
select username,start_date,end_date from user right join
batch on user.id = batch.assesser_id;

/*
Batches that were started in 2019 union the batches started in 2019. 
*/

select * from batch where start_date between '2015-1-1' and '2015-12-31'
union 
select * from batch where start_date between '2019-1-1' and '2019-12-31';

/***************************************************************************/

/*Intersect*/
/***********/

/*
Intersection means storing the common tuples which are part of both the queries.
Mysql does not supports intersect operator. We have to implement it with the 
help of exists and not exists operator or with the help of in clause.
*/

/*
Select those batches which started in 2015 and ended in 2019.
*/
select * from batch where start_date between '2015-1-1' and '2015-12-31' and id in (
select id from batch where end_date between '2019-1-1' and '2019-12-31');

select id from application where application_status = "submit" and id in (
select application_id from application_comment where is_active = 1);


/**************************************************************************/

/*Exists*/
/*********/

/*
Select those applications which have there application_status as submit 
and there application comment is active. 
*/
select id from application where application_status = "submit " and exists (
select application_id from application_comment where is_active = 1
);

/*
Select those batches which started in 2016 and ended in 2018.
*/
select * from batch where start_date between '2016-1-1' and '2016-12-31' and exists(
select * from batch where end_date between '2020-1-1' and '2020-12-31'
);

/*********************************************************************************/

/*Except*/

/*It can be used for the purpose of selecting those values from a set of values
by removing those values which the intersect with the other other. 

For example A except B means values in set A minus the values in A intersection B

Except is not supported by MySQL. It can be emulated with the help of "NOT EXISTS" or "NOT IN".
*/

/*Select those batches which were started after 2015 but ended before 2019.*/

select * from batch where start_date > '2015-1-1' AND id NOT IN(
select id from batch where end_date >'2020-1-1'
);

SELECT id FROM application WHERE application_status = 'approved' AND id NOT IN (
SELECT DISTINCT application_id FROM application_comment WHERE is_active = 1);

/*******************************************************************************/

/*Some*/

/*
Some or any is used with the comparison operators to check that the subquery satisfies the
conditions for atleast one of the values of the column mentioned in the comparison condition.
*/

/*To check if the start date is less than some of the start dates.*/

select * from batch where start_date <= any (select start_date from batch );

/*To check if the date of application is greater than any of the other dates of application.*/
select * from application where date_of_application > any (select date_of_application from application);

/*********************************************************************************/

/*All*/

/* All is used in the situation where we have to check that the comparison condition is 
satisfied for all the values of the column used in the comparison condition.

For example if A>B then we will get those values of A for which the comparison condition
is satisfied for all the values of the column B.
*/

/*To get those batches for which the end_date is greater the all the start_date*/
select * from batch where end_date > all (select end_date from batch);

use ttn_affiliation_body;

select count(distinct trainer_id) from batch;