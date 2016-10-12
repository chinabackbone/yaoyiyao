-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.6.17


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema `user`
--

CREATE DATABASE IF NOT EXISTS `user`;
USE `user`;

--
-- Temporary table structure for view `duobiao_view`
--
DROP TABLE IF EXISTS `duobiao_view`;
DROP VIEW IF EXISTS `duobiao_view`;
CREATE TABLE `duobiao_view` (
  `susername` varchar(45),
  `status` varchar(1),
  `time` varchar(40),
  `type` varchar(1)
);

--
-- Definition of table `banben_info`
--

DROP TABLE IF EXISTS `banben_info`;
CREATE TABLE `banben_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banben` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banben_info`
--

/*!40000 ALTER TABLE `banben_info` DISABLE KEYS */;
INSERT INTO `banben_info` (`id`,`banben`) VALUES 
 (1,'2.0');
/*!40000 ALTER TABLE `banben_info` ENABLE KEYS */;


--
-- Definition of table `banji_info`
--

DROP TABLE IF EXISTS `banji_info`;
CREATE TABLE `banji_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tusername` varchar(45) DEFAULT 'tttttt',
  `banji` varchar(60) DEFAULT NULL,
  `susername` varchar(45) DEFAULT NULL,
  `type` varchar(1) DEFAULT 's',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banji_info`
--

/*!40000 ALTER TABLE `banji_info` DISABLE KEYS */;
INSERT INTO `banji_info` (`id`,`tusername`,`banji`,`susername`,`type`) VALUES 
 (78,'郝强','14级移动互联',NULL,'t'),
 (79,'王艳娟','Web前端',NULL,'t'),
 (80,'徐书海','Java',NULL,'t'),
 (81,'徐书海','面向对象',NULL,'t'),
 (82,'郝强','15级移动互联',NULL,'t'),
 (83,'王艳娟','15级',NULL,'t'),
 (110,'王艳娟','15级','张洪彬','s'),
 (112,'王艳娟','15级','高帅','s'),
 (113,'王艳娟','15级','刘明霞','s'),
 (114,'王艳娟','15级','滕贺金','s'),
 (115,'王艳娟','15级','董士伟','s'),
 (116,'王艳娟','15级','杨成志','s'),
 (117,'王艳娟','15级','王爽','s'),
 (119,'王艳娟','15级','丁浩','s'),
 (120,'王艳娟','15级','王姣姣','s'),
 (121,'王艳娟','15级','刘齐齐','s'),
 (122,'王艳娟','15级','邢珂珂','s'),
 (123,'王艳娟','15级','李运豪','s'),
 (124,'王艳娟','15级','刘树洋','s'),
 (125,'王艳娟','15级','张海源','s'),
 (126,'王艳娟','15级','冯现停','s'),
 (127,'王艳娟','15级','潘睿','s'),
 (128,'王艳娟','15级','刘继伟','s'),
 (129,'王艳娟','15级','赵美娟','s'),
 (132,'王艳娟','Web前端','马波凯','s');
/*!40000 ALTER TABLE `banji_info` ENABLE KEYS */;


--
-- Definition of table `biji_info`
--

DROP TABLE IF EXISTS `biji_info`;
CREATE TABLE `biji_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `biji_info`
--

/*!40000 ALTER TABLE `biji_info` DISABLE KEYS */;
INSERT INTO `biji_info` (`id`,`username`,`title`,`content`) VALUES 
 (57,'马波凯','摇一摇','1、把所有的按钮都添加上按下去的样式\n2、笔记list在单击时弹出DAlert，而不是进修改界面\n3、教师创建完qun表的数据后后还要创建budong表的数据，学生一摇，根据选择的教师班级在不懂的表里++，\n教师端要隔2分钟根据自己的用户名和选择的班级取不懂得数目，也就是++的数，\n还要取(班级就是自己选择的班级)\n在线人数:select  cont(susername) from qun where tusername=tusername and banji=banji and status=Y order by susername\n下边一样\n离线人数:select  cont(susername) from qun where tusername=tusername and banji=banji and status=N order by susername\n\n\n然后返回数据，客户端收到后判断:\nbudong人数/总人数*100%\nif这个数大于40%，dalert提示，一点确定讲budong表里的++重置为0，\n\n4、在学生端判断摇的时间，最好取网络时间，如果小于10分钟，dalert您已成功反馈，10分钟内不可再次上传，'),
 (83,'马波凯','点击用户名，在下边显示框','框里有   退出当前账号，修改资料，修改密码，用邮箱接受验证码，'),
 (85,'马波凯','单击用户名','修改资料，修改密码'),
 (86,'asd','ddffc','Ccvvv'),
 (87,'asd','ddffccfffcc','Ccvvv');
/*!40000 ALTER TABLE `biji_info` ENABLE KEYS */;


--
-- Definition of table `budong_info`
--

DROP TABLE IF EXISTS `budong_info`;
CREATE TABLE `budong_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tusername` varchar(45) NOT NULL,
  `banji` varchar(45) NOT NULL,
  `cishu` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `budong_info`
--

/*!40000 ALTER TABLE `budong_info` DISABLE KEYS */;
INSERT INTO `budong_info` (`id`,`tusername`,`banji`,`cishu`) VALUES 
 (20,'郝强','14级移动互联',0),
 (21,'王艳娟','Web前端',0),
 (22,'徐书海','Java',0),
 (23,'徐书海','面向对象',0),
 (24,'郝强','15级移动互联',0),
 (25,'王艳娟','15级',0);
/*!40000 ALTER TABLE `budong_info` ENABLE KEYS */;


--
-- Definition of table `qiangda_info`
--

DROP TABLE IF EXISTS `qiangda_info`;
CREATE TABLE `qiangda_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qiangda_info`
--

/*!40000 ALTER TABLE `qiangda_info` DISABLE KEYS */;
INSERT INTO `qiangda_info` (`id`,`username`,`time`) VALUES 
 (1,'刘明霞','2016-06-22 15:05:24'),
 (2,'张洪彬','2016-06-22 15:05:25'),
 (3,'张海源','2016-06-22 15:05:25'),
 (4,'高帅','2016-06-22 15:05:25'),
 (5,'王爽','2016-06-22 15:05:26'),
 (6,'丁浩','2016-06-22 15:05:26'),
 (7,'王姣姣','2016-06-22 15:05:26'),
 (8,'潘睿','2016-06-22 15:05:27'),
 (9,'刘继伟','2016-06-22 15:05:27'),
 (10,'李运豪','2016-06-22 15:05:27'),
 (11,'刘树洋','2016-06-22 15:05:27'),
 (12,'赵美娟','2016-06-22 15:05:28'),
 (13,'冯现停','2016-06-22 15:05:29'),
 (14,'董士伟','2016-06-22 15:05:30'),
 (15,'刘齐齐','2016-06-22 15:05:30'),
 (16,'邢珂珂','2016-06-22 15:40:59');
/*!40000 ALTER TABLE `qiangda_info` ENABLE KEYS */;


--
-- Definition of table `tongzhi_info`
--

DROP TABLE IF EXISTS `tongzhi_info`;
CREATE TABLE `tongzhi_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tongzhi_info`
--

/*!40000 ALTER TABLE `tongzhi_info` DISABLE KEYS */;
INSERT INTO `tongzhi_info` (`id`,`username`,`title`,`content`) VALUES 
 (1,'王艳娟','明天不上课，，，','不上，，，');
/*!40000 ALTER TABLE `tongzhi_info` ENABLE KEYS */;


--
-- Definition of table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(2) DEFAULT 's',
  `status` varchar(1) DEFAULT 'N',
  `time` varchar(40) DEFAULT NULL,
  `wenti_1` varchar(45) DEFAULT NULL,
  `wenti_2` varchar(45) DEFAULT NULL,
  `wenti_3` varchar(45) DEFAULT NULL,
  `daan_1` varchar(60) DEFAULT NULL,
  `daan_2` varchar(60) DEFAULT NULL,
  `daan_3` varchar(60) DEFAULT NULL,
  `jushou` varchar(2) DEFAULT 'N',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` (`id`,`username`,`password`,`type`,`status`,`time`,`wenti_1`,`wenti_2`,`wenti_3`,`daan_1`,`daan_2`,`daan_3`,`jushou`) VALUES 
 (39,'郝强','-3110-365773-7089-85-6686-3287-1415-12062','t','Y','2016-06-20 20:57:28','','','','','','','N'),
 (40,'王艳娟','-3110-365773-7089-85-6686-3287-1415-12062','t','Y','2016-06-20 15:45:35','','','','','','','N'),
 (41,'徐书海','-3110-365773-7089-85-6686-3287-1415-12062','t','N','2016-06-14 19:45:29','我最喜欢的数字？','我最喜欢的水果？','我最喜欢的颜色？','1','苹果','黑','N'),
 (65,'张洪彬','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:41:49','我的学号？','我的生日？','我最喜欢的水果？','201510042101','27','苹果','Y'),
 (67,'高帅','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 15:35:53','我的学号？','我的生日？','我最喜欢的数字？','201510042103','1997.12.27','6','Y'),
 (68,'刘明霞','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 21:27:45','我最喜欢的水果？','我最喜欢的颜色？','我最喜欢的数字？','草莓','粉红色','6','N'),
 (69,'滕贺金','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 16:57:04','我的学号？','我的生日？','我最喜欢的水果？','201510042105','1020','菠萝蜜','Y'),
 (70,'董士伟','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:50','我的生日？','我父亲的生日？','我父亲的姓名？','1','2','3','Y'),
 (71,'杨成志','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 22:30:42','我的学号？','我的生日？','我最喜欢的水果？','201510042107','1997.02.03','6','N'),
 (72,'王爽','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:46','我的学号？','我的生日？','我初中班主任的姓名？','201510042108','19950707','刘庆涛','Y'),
 (74,'丁浩','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 15:36:32','我的学号？','我的生日？','我最喜欢的水果？','10','971122','苹果','Y'),
 (75,'王姣姣','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 15:59:25','我的学号？','我的生日？','我最喜欢的水果？','201510042118','1214','苹果','Y'),
 (76,'刘齐齐','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 16:36:34','我的生日？','我的学号？','我最喜欢的颜色？','5.17','19','蓝色','Y'),
 (77,'邢珂珂','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 15:36:05','我的学号？','我最喜欢的颜色？','我的生日？','201510042122','白色','19961005','N'),
 (78,'李运豪','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 16:37:02','我的学号？','我最喜欢的水果？','我的生日？','201510042123','西瓜','927','Y'),
 (79,'刘树洋','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:39','我的学号？','我的生日？','我最喜欢的水果？','2015','19960602','西瓜','Y'),
 (80,'张海源','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:35','我的学号？','我最喜欢的数字？','我最喜欢的水果？','25','6','苹果','Y'),
 (81,'冯现停','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:37','我的生日？','我父亲的生日？','我母亲的生日？','0128','0128','0128','N'),
 (82,'潘睿','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 15:42:08','我最喜欢的颜色？','我最喜欢的水果？','我最喜欢的数字？','红色','香蕉','1','N'),
 (83,'刘继伟','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:46','我父亲的姓名？','我小学班主任的姓名？','我初中班主任的姓名？','刘','刘','刘','N'),
 (84,'赵美娟','-3110-365773-7089-85-6686-3287-1415-12062','s','Y','2016-06-22 14:12:42','我的学号？','我的生日？','我最喜欢的数字？','201510042132','19961030','6','N'),
 (88,'马波凯','-3110-365773-7089-85-6686-3287-1415-12062','s','N','2016-06-20 16:55:44',NULL,NULL,NULL,NULL,NULL,NULL,'Y'),
 (89,'6655','37-7-25-10850596956-123-11243127987711','s','Y','2016-06-19 09:20:32','我的学号？','我的生日？','我最喜欢的颜色？','123456789','19991111','呵呵哒','N'),
 (90,'asd','-88-11-15103-127973100-26-55-104-34-24391712','s','N','2016-06-21 09:40:40','我小学班主任的姓名？','我的生日？','我的学号？','11','11','11','N'),
 (91,'qw','qw','s','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N'),
 (92,'aaa','aaa','s','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;


--
-- Definition of view `duobiao_view`
--

DROP TABLE IF EXISTS `duobiao_view`;
DROP VIEW IF EXISTS `duobiao_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`mabokai`@`%` SQL SECURITY DEFINER VIEW `duobiao_view` AS select `banji_info`.`susername` AS `susername`,`user_info`.`status` AS `status`,`user_info`.`time` AS `time`,`banji_info`.`type` AS `type` from (`banji_info` join `user_info`) where ((`banji_info`.`susername` = `user_info`.`username`) and (`banji_info`.`banji` = '15级') and (`banji_info`.`type` = 's') and (`banji_info`.`tusername` = '王艳娟'));



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
