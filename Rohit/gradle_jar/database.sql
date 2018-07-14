use assignment1;
Create table if not exists ttn_user
	(user_id int(10) PRIMARY KEY not null,
	name varchar(50) NOT NULL,
	city varchar(50));
Select * from ttn_user;