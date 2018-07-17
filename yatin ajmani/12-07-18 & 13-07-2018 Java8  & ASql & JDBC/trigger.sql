
CREATE TABLE `ttn_12`.`personaldetails` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`iduser`));

CREATE TABLE `ttn_12`.`audit` (
  `idaudit` INT NOT NULL AUTO_INCREMENT,
  `oldemail` VARCHAR(45) NULL,
  `newemail` VARCHAR(45) NULL,
  `iduser` INT ,
  PRIMARY KEY (`idaudit`),
  foreign key(iduser) references personaldetails(iduser));

drop trigger chng;

delimiter //
CREATE TRIGGER chng 
    AFTER UPDATE ON personaldetails
    FOR EACH ROW 
BEGIN
    INSERT INTO audit 
    set oldemail=old.email,
    newemail=new.email,
    iduser=old.iduser;
END//
delimiter ;
