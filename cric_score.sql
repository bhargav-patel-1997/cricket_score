/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.33 : Database - cric_score
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cric_score` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cric_score`;

/*Table structure for table `match_details` */

DROP TABLE IF EXISTS `match_details`;

CREATE TABLE `match_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `team_a` varchar(255) DEFAULT NULL,
  `team_b` varchar(255) DEFAULT NULL,
  `batsman_1` varchar(255) DEFAULT NULL,
  `batsman_2` varchar(255) DEFAULT NULL,
  `bowler` varchar(255) DEFAULT NULL,
  `commentry` varchar(255) DEFAULT NULL,
  `runs` int DEFAULT NULL,
  `overs` int DEFAULT NULL,
  `wickets` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `match_details` */

insert  into `match_details`(`id`,`team_a`,`team_b`,`batsman_1`,`batsman_2`,`bowler`,`commentry`,`runs`,`overs`,`wickets`) values (1,'kkr','csk','sunil','rinku','yash','asdfghjkxcvbnm,qwertyuio',120,12,1),(2,'kkr','csk','sunil','rinku','yash','dasdsa',12,1,1),(3,'kkr','csk','sunil','rinku','yash','sadsfd',123,12,1),(4,'kkr','csk','sunil','rinku','yash','qqq',65,5,1),(5,'wqdq','fwefew','ewfwed','efwef','wefwe','wefwedewd\r\n',23,2,0),(6,'kkr','csk','sunil','rinku','yash','sasdfghjklwertyuizxcvbnmasdfghj',120,11,1),(7,'wqdq','fwefew','ewfwed','ww','rr','wdasfuydskjds',500,10,1),(8,'kkr','csk','sunil','rinku','yashffdsfdsdsfsdv','ddsvdsvds',123,1,1),(9,'asd','asd','asd','asd','asd','asd',123,1,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
