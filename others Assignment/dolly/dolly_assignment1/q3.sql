use ttn_exercise1;
create table student(
	s_id Integer primary key auto_increment ,
    s_name varchar(50) not null,
    s_dob date  
);
/*daily attendance record*/
create table monthly_record(
	s_id Integer,
    m_id Integer primary key auto_increment ,
    section varchar(50),
    record varchar(50),
    semester Integer,
    date date ,
    foreign key(s_id) references student(s_id)
);

insert into student values(1,"qqq","1995-11-14");
insert into student values(2,"aaa","1994-10-10");
insert into student values(3,"zzz","1993-9-9");
insert into student values(4,"www","1992-8-6");
insert into student values(5,"sss","1991-7-1");

INSERT INTO monthly_record VALUES ('1', '1', 'bsc(hon)cs', 'present', '2', '2018-06-12');
INSERT INTO monthly_record VALUES ('2', '2', 'bsc(hon)chem', 'absent', '2', '2018-06-12');
INSERT INTO monthly_record VALUES ('3', '3', 'bsc(hon)phy sci', 'present', '2', '2018-06-12');
INSERT INTO monthly_record VALUES ('1', '4', 'bsc(hon)cs', 'present', '2', '2018-06-12');
INSERT INTO monthly_record VALUES ('2', '5', 'bsc(hon)chem', 'absent', '2', '2018-06-12');