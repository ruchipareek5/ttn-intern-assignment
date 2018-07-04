use ttn;


create table streams(
	sid Integer primary key auto_increment,
    stream_name varchar(50)        
);

create table dtu_data(
	pid Integer primary key ,
    sid Integer,
    year Integer,
    number_of_students_admitted Integer,
    foreign key(sid) references streams(sid)
);



create table student_data(
	student_id Integer primary key auto_increment,
    name varchar(40),
    pid Integer,
    is_eligible boolean,
    did_participated boolean,
    placed boolean,
    foreign key(pid) references dtu_data(pid)
);

select student_data.name, dtu_data.year, STREAMS.STREAM_NAME from student_data JOIN dtu_data JOIN streams where student_data.is_eligible=true and student_data.did_participated=true and student_data.placed=false;

select student_data.name , dtu_data.year, STREAMS.STREAM_NAME from student_data JOIN dtu_data JOIN streams where  student_data.is_eligible=true and student_data.did_participated=false;

select student_data.name, dtu_data.year, STREAMS.STREAM_NAME from student_data JOIN dtu_data JOIN streams where student_data.is_eligible=false;
