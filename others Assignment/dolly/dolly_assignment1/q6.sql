use ttn_exercise1;
/*student table (s_id,s_name,s_dob)*/
 create table dtu(
	dtu_id Integer primary key auto_increment,
    s_id Integer ,
	eligible boolean not null,
    participate_placement boolean not null,
    placement boolean not null,
	stream varchar(50) not null,
    date year not null,
    foreign key (s_id) references student(s_id)
 );
 
 insert into dtu values(1,1,1,1,0,"cs","2018");
 insert into dtu values(2,1,1,1,1,"cs","2019");
 insert into dtu values(3,1,1,0,0,"cs","2017");
 insert into dtu values(4,1,0,0,0,"cs","2016");
 insert into dtu values(5,2,1,1,1,"math","2015");
 insert into dtu values(6,2,1,1,0,"math","2018");
 insert into dtu values(7,2,1,0,0,"math","2017");
 insert into dtu values(8,3,1,1,0,"bio","2016");
 insert into dtu values(9,3,1,0,0,"bio","2015");
 insert into dtu values(10,4,0,0,0,"cs","2001");
 insert into dtu values(11,3,0,0,0,"bio","2013");
 insert into dtu values(12,4,1,0,0,"cs","2000");
 insert into dtu values(13,5,0,0,0,"cs","2000");
 
 
 /* chairman can specify stream and placement ,placement participation,eligiblle as shown below ;)
	and comparison can be made out of total student to know latest trend
 */
 
 select count(d.s_id) from dtu d join student s on d.s_id=s.s_id and d.date>2014 and stream="cs" and placement=1 ;
 
 