create database ttn_12;

use ttn_12;

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `training_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `ttn_12`.`batches` (`name`, `start_date`, `end_date`, `training_name`) VALUES ('B2', '2015-06-10', '2015-06-5', 'Solar Trainer');
