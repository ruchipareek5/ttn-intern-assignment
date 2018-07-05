use ttn;

create table passenger(
	pid Integer primary key auto_increment,
    name varchar(20) not null,
    phone_number bigint not null,
    email_id varchar(40),
    number_of_rides Integer not null,
    home_address varchar(40) ,
    workplace_address varchar(40) not null,
    other_place_address varchar(40)
);

SELECT * FROM ttn.passenger;