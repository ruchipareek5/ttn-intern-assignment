use ttn;

create table offender(
	oid Integer primary key,
    name varchar(10),
    age Integer,
    fine double
);

INSERT INTO `ttn`.`offender` (`oid`, `name`, `age`, `fine`) VALUES ('1', 'zack', '18', '125');
INSERT INTO `ttn`.`offender` (`oid`, `name`, `age`, `fine`) VALUES ('2', 'mack', '20', '200');
INSERT INTO `ttn`.`offender` (`oid`, `name`, `age`, `fine`) VALUES ('3', 'frank', '30', '300');

select name , age , fine from offender where age BETWEEN 18 and 25 and fine>100;