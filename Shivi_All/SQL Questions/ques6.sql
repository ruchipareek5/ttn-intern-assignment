create schema DTU;
use DTU;
create table if not exists StudentDetail(id int primary key not null, name varchar (30),Batch_Year int(4) ,Eligibilty enum('Yes','No'),Participated enum('Yes','No'), Result varchar (20));

insert into StudentDetail values(1, 'Abc', 2013, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(2, 'Bhs', 2013, 'Yes', 'Yes', 'Not Placed');
insert into StudentDetail values(3, 'Zbd', 2013, 'No', 'No', 'Not Placed');
insert into StudentDetail values(4, 'Deh', 2014, 'No', 'No', 'Not Placed');
insert into StudentDetail values(5, 'Fdh', 2014, 'yes', 'yes', 'Not Placed');
insert into StudentDetail values(6, 'Kdc', 2014, 'No', 'No', 'Not Placed');
insert into StudentDetail values(7, 'Ldw', 2015, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(8, 'Qqq', 2015, 'No', 'No', 'Not Placed');
insert into StudentDetail values(9, 'Had', 2015, 'Yes', 'No', 'Not Placed');
insert into StudentDetail values(10, 'Yws', 2015, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(11, 'Wqa', 2015, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(12, 'Paq', 2015, 'Yes', 'Yes', 'Not Placed');
insert into StudentDetail values(13, 'Tqw', 2016, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(14, 'Vww', 2016, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(15, 'Cde',2017, 'No', 'No', 'Not Placed');
insert into StudentDetail values(16, 'Uwd', 2017, 'Yes', 'Yes', 'Placed');
insert into StudentDetail values(356, 'I', 2018, 'No', 'No', 'Not Placed');
insert into StudentDetail values(125, 'X', 2018, 'Yes', 'Yes', 'Placed');

select * from StudentDetail;

select * from StudentDetail where(Batch_Year between 2018-5 and 2018) and Eligibilty='yes' and Participated='yes' and Result='Not Placed' order by Batch_Year;

select * from StudentDetail where(Batch_Year between 2018-5 and 2018) and Eligibilty='yes' and Participated='No' order by Batch_Year;

select * from StudentDetail  where(Batch_Year between 2018-5 and 2018) and Eligibilty='No' order by Batch_Year;
