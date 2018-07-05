create database ttn_user;
use ttn_user;
CREATE TABLE `ttn_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
);