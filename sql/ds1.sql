/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.26 : Database - ds1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ds1` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ds1`;

/*Table structure for table `t_config` */

DROP TABLE IF EXISTS `t_config`;

CREATE TABLE `t_config` (
  `id` bigint(11) unsigned NOT NULL,
  `config_key` varchar(20) DEFAULT NULL,
  `config_value` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `t_order_0` */

DROP TABLE IF EXISTS `t_order_0`;

CREATE TABLE `t_order_0` (
  `order_id` bigint(11) unsigned NOT NULL,
  `user_id` bigint(11) unsigned DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `t_order_1` */

DROP TABLE IF EXISTS `t_order_1`;

CREATE TABLE `t_order_1` (
  `order_id` bigint(11) unsigned NOT NULL,
  `user_id` bigint(11) unsigned DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `t_order_item_0` */

DROP TABLE IF EXISTS `t_order_item_0`;

CREATE TABLE `t_order_item_0` (
  `order_item_id` bigint(11) unsigned NOT NULL,
  `order_id` bigint(11) unsigned NOT NULL,
  `user_id` bigint(11) unsigned NOT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `t_order_item_1` */

DROP TABLE IF EXISTS `t_order_item_1`;

CREATE TABLE `t_order_item_1` (
  `order_item_id` bigint(11) unsigned NOT NULL,
  `order_id` bigint(11) unsigned NOT NULL,
  `user_id` bigint(11) unsigned NOT NULL,
  `status` int(2) DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
