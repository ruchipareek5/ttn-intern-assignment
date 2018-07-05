create database student_attendence;
use student_attendence;
create table student_detail( s_id int primary key not null, s_name varchar(50), s_gender enum('male','female'), percentage int);

insert into student_detail values (1, 'Aakash', 'male', 90);
insert into student_detail values (2, 'shivangi', 'female', 85);
insert into student_detail values (3, 'sakshi', 'female', 87);
insert into student_detail values (4, 'sukirti', 'female', 88);
insert into student_detail values (5, 'karishma', 'female', 55);
insert into student_detail values (6, 'rajat', 'male', 82);
insert into student_detail values (7, 'kamal', 'male', 34);
insert into student_detail values (8, 'kullu', 'male', 45);

create table attendance_detail( s_id int, foreign key(s_id) references student_detail(s_id), firstSem int, secondSem int, thirdSem int, fourthSem int, fifthSem int);

insert into attendance_detail values (1, 76, 78, 66, 81, 88);
insert into attendance_detail values (2, 64, 93,73,85,27);

insert into attendance_detail values (3, 87,47,85,57,68);

insert into attendance_detail values (4, 76,87,78,86,86);
insert into attendance_detail values (5, 57,67,58,70,68);

insert into attendance_detail values (6, 45,34,34,42,23);

insert into attendance_detail values (7, 23,45,43,23,45);
insert into attendance_detail values (8, 34,54,55,38,23);
SELECT student_detail.s_id, student_detail.s_name ,student_detail.s_gender, student_detail.percentage , attendance_detail.fourthSem, attendance_detail.fifthSem
FROM student_detail
INNER JOIN attendance_detail ON student_detail.s_id= attendance_detail.s_id where attendance_detail.fourthSem<70 and attendance_detail.fifthSem<70 ;