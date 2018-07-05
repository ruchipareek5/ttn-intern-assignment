use ttn;

create table student_attandance(
	id integer auto_increment primary key,
    class_id Integer,
    name varchar(20),
    attendance_sem1 Integer,
    attendance_sem2 Integer
);

create table attendance_regulations(
	id Integer primary key,
    class_id Integer,
    total_attendance_sem1  Integer,
    total_attendance_sem2 Integer
)

select student_attandance.name, student_attandance.class_id, student_attandance. attendance_sem1,attendance_regulations.total_attendance_sem1, student_attandance. attendance_sem2, attendance_regulations.total_attendance_sem2 from student_attandance JOIN attendance_regulations ON attendance_regulations.class_id = student_attandance.class_id 
where (student_attandance. attendance_sem1 + student_attandance. attendance_sem2) < (attendance_regulations.total_attendance_sem1 + attendance_regulations.total_attendance_sem2)/2;
