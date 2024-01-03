/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 8.0.35 : Database - it13
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`it13` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `it13`;

/*Table structure for table `tbl_attendancelist` */

DROP TABLE IF EXISTS `tbl_attendancelist`;

CREATE TABLE `tbl_attendancelist` (
  `id` int DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timein` varchar(10) DEFAULT NULL,
  `timeout` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_attendancelist` */

/*Table structure for table `tbl_employeelist` */

DROP TABLE IF EXISTS `tbl_employeelist`;

CREATE TABLE `tbl_employeelist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(46) DEFAULT NULL,
  `middlename` varchar(46) DEFAULT NULL,
  `surname` varchar(46) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `img` varbinary(1000) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_employeelist` */

insert  into `tbl_employeelist`(`id`,`firstname`,`middlename`,`surname`,`username`,`password`,`age`,`birthday`,`gender`,`contact`,`address`,`img`) values 
(1,'Ethel Dawn','Timbal','Penaso','Dawn','ethel',21,'2002-08-22','Female','09223344556','New Bataan, Ddo',NULL),
(2,'Neiljan Elizer','Salvoro','Blanc','Neiljan','elizer',20,'2000-01-24','Male','09123425213','Japan',NULL),
(3,'Neiznll Rein','Salvoro','Kingsfort','Rein','elizer',20,'1999-07-25','Male','09124677777','Japan',NULL),
(4,'Walter','Sif','White','Walter','Black',28,'1997-07-25','NonBinary','09124677777','Japan',NULL),
(5,'James','Wert','Smith','James','yolo',22,'2001-09-01','Pansexual','09124677777','Japan',NULL),
(6,'James','Wert','Smith','James','yolo',22,'2001-09-01','Pansexual','09124677777','Japan',NULL);

/*Table structure for table `timein` */

DROP TABLE IF EXISTS `timein`;

CREATE TABLE `timein` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employeee_surname` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timein` varchar(45) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `timein` */

/*Table structure for table `timeout` */

DROP TABLE IF EXISTS `timeout`;

CREATE TABLE `timeout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_surname` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timeout` varchar(45) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `timeout` */

/* Procedure structure for procedure `procCreateUsers` */

/*!50003 DROP PROCEDURE IF EXISTS  `procCreateUsers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `procCreateUsers`(
    p_firstname VARCHAR(46),
    p_middlename VARCHAR(46),
    p_surname VARCHAR(46),
    p_username VARCHAR(10),
    p_password VARCHAR(10),
    p_age int,
    p_birthday date,
    p_gender VARCHAR(10),
    p_contact VARCHAR(15),
    p_address VARCHAR(100),
    p_img varbinary(100)


    )
BEGIN
    INSERT INTO tbl_employeelist(firstname,middlename,surname,username,PASSWORD,age,birthday,gender,contact,address,img)
        VALUES( p_firstname,p_middlename,p_surname,p_username,p_password,p_age, p_birthday,p_gender,p_contact,p_address,p_img);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `procDeleteEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `procDeleteEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `procDeleteEmployee`(
    p_username INT )
BEGIN
    DELETE FROM tbl_employeelist 
        WHERE username = p_username;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `procdeleteusernamefromusername` */

/*!50003 DROP PROCEDURE IF EXISTS  `procdeleteusernamefromusername` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `procdeleteusernamefromusername`(
    p_username INT )
BEGIN
    DELETE FROM tbl_employeelist 
        WHERE username = p_username;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
