# Host: 127.0.0.1  (Version: 5.5.32)
# Date: 2016-12-14 09:24:56
# Generator: MySQL-Front 5.3  (Build 4.214)

/*!40101 SET NAMES gb2312 */;

#
# Structure for table "comment"
#

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `CId` int(11) NOT NULL AUTO_INCREMENT,
  `TUId` int(11) DEFAULT NULL,
  `PUId` int(11) DEFAULT NULL,
  `CTime` date DEFAULT NULL,
  `ComCon` varchar(255) DEFAULT NULL,
  `SatDeg` int(11) DEFAULT NULL,
  PRIMARY KEY (`CId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "comment"
#

/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

#
# Structure for table "delivery"
#

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery` (
  `DeId` int(11) NOT NULL AUTO_INCREMENT,
  `TUId` int(11) DEFAULT NULL,
  `PUId` int(11) DEFAULT NULL,
  `ReId` int(11) DEFAULT NULL,
  `State` char(1) DEFAULT NULL,
  `DeTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `RlId` int(11) DEFAULT NULL,
  PRIMARY KEY (`DeId`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

#
# Data for table "delivery"
#

/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (10,1,6,1,'a','2016-12-14 08:43:24',27),(11,1,7,1,'a','2016-12-14 08:43:45',32),(12,1,8,1,'a','2016-12-14 08:43:54',33),(13,1,9,1,'a','2016-12-14 08:44:21',39),(14,8,5,8,'a','2016-12-14 08:45:23',24),(15,8,6,8,'a','2016-12-14 08:45:30',26),(16,9,8,9,'a','2016-12-14 08:46:21',35),(17,9,7,9,'a','2016-12-14 08:46:25',30),(18,10,8,10,'a','2016-12-14 08:47:57',33),(19,10,9,10,'a','2016-12-14 08:48:07',39),(20,10,6,10,'a','2016-12-14 08:48:45',29),(21,11,8,11,'a','2016-12-14 08:49:41',34),(22,11,9,11,'a','2016-12-14 08:49:45',37),(23,11,6,11,'a','2016-12-14 08:49:48',25),(24,11,5,11,'a','2016-12-14 08:49:52',22),(25,12,9,12,'a','2016-12-14 08:51:05',39),(26,12,5,12,'a','2016-12-14 08:51:08',22),(27,12,5,12,'a','2016-12-14 08:51:11',23),(28,12,6,12,'a','2016-12-14 08:51:15',25),(29,13,8,13,'a','2016-12-14 08:53:11',34),(30,13,9,13,'a','2016-12-14 08:53:14',37),(31,13,6,13,'a','2016-12-14 08:53:26',25);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;

#
# Structure for table "hotsearch"
#

DROP TABLE IF EXISTS `hotsearch`;
CREATE TABLE `hotsearch` (
  `HId` int(11) NOT NULL AUTO_INCREMENT,
  `Including` varchar(30) DEFAULT NULL,
  `Countn` int(11) DEFAULT NULL,
  PRIMARY KEY (`HId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "hotsearch"
#

/*!40000 ALTER TABLE `hotsearch` DISABLE KEYS */;
INSERT INTO `hotsearch` VALUES (8,'数学',5),(9,'英语',7),(10,'小学',1),(11,'物理',1),(12,'美术',1),(13,'计算机',1),(14,'化学',1);
/*!40000 ALTER TABLE `hotsearch` ENABLE KEYS */;

#
# Structure for table "invitation"
#

DROP TABLE IF EXISTS `invitation`;
CREATE TABLE `invitation` (
  `InId` int(11) NOT NULL AUTO_INCREMENT,
  `TUId` int(11) DEFAULT NULL,
  `PUId` int(11) DEFAULT NULL,
  `InTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `State` char(1) DEFAULT NULL,
  `RlId` int(11) DEFAULT NULL,
  PRIMARY KEY (`InId`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

#
# Data for table "invitation"
#

/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
INSERT INTO `invitation` VALUES (13,9,5,'2016-12-14 08:59:26','\0',22),(14,8,6,'2016-12-14 09:09:04','\0',26),(15,1,6,'2016-12-14 09:09:22','\0',27),(16,1,6,'2016-12-14 09:09:23','\0',29),(17,13,6,'2016-12-14 09:09:40','\0',25),(18,9,7,'2016-12-14 09:11:04','\0',30),(19,1,7,'2016-12-14 09:11:18','\0',32),(20,11,7,'2016-12-14 09:11:30','\0',31),(21,14,7,'2016-12-14 09:11:46','\0',31),(22,13,7,'2016-12-14 09:11:56','\0',31),(23,16,7,'2016-12-14 09:12:08','\0',31),(24,9,8,'2016-12-14 09:13:17','\0',35),(25,1,8,'2016-12-14 09:13:28','\0',33),(26,11,8,'2016-12-14 09:13:37','\0',34),(27,16,8,'2016-12-14 09:13:45','\0',34),(28,14,8,'2016-12-14 09:13:54','\0',34),(29,12,8,'2016-12-14 09:14:12','\0',33),(30,8,9,'2016-12-14 09:14:55','\0',36),(31,1,9,'2016-12-14 09:15:05','\0',38),(32,11,9,'2016-12-14 09:15:12','\0',37),(33,14,9,'2016-12-14 09:15:22','\0',37),(34,16,9,'2016-12-14 09:15:28','\0',37);
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;

#
# Structure for table "parcer"
#

DROP TABLE IF EXISTS `parcer`;
CREATE TABLE `parcer` (
  `PcId` int(11) NOT NULL AUTO_INCREMENT,
  `PUId` int(11) DEFAULT NULL,
  `Idnum` varchar(255) DEFAULT NULL,
  `PRName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PcId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "parcer"
#

/*!40000 ALTER TABLE `parcer` DISABLE KEYS */;
INSERT INTO `parcer` VALUES (5,5,'130222XXXXXXXX5555','李大锤'),(6,6,'130222XXXXXXXX1111','王晓红'),(7,7,'130222XXXXXXXX5555','刘大大'),(8,8,'130222XXXXXXXX6464','李晓江'),(9,9,'130222XXXXXXXX3876','姜春雷');
/*!40000 ALTER TABLE `parcer` ENABLE KEYS */;

#
# Structure for table "puser"
#

DROP TABLE IF EXISTS `puser`;
CREATE TABLE `puser` (
  `PUId` int(11) NOT NULL AUTO_INCREMENT,
  `PUName` varchar(30) DEFAULT NULL,
  `PUPwd` varchar(15) DEFAULT NULL,
  `PMailbox` varchar(50) DEFAULT NULL,
  `PMobile` varchar(255) DEFAULT NULL,
  `Pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PUId`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

#
# Data for table "puser"
#

/*!40000 ALTER TABLE `puser` DISABLE KEYS */;
INSERT INTO `puser` VALUES (5,'测试家长1','123456','736426031@qq.com',NULL,NULL),(6,'测试家长2','123456','1349612036@qq.com',NULL,NULL),(7,'测试家长3','123456','1361533546@qq.com',NULL,NULL),(8,'测试家长4','123456','948935853@qq.com',NULL,NULL),(9,'测试家长5','123456','2786170100@qq.com',NULL,NULL);
/*!40000 ALTER TABLE `puser` ENABLE KEYS */;

#
# Structure for table "recinfo"
#

DROP TABLE IF EXISTS `recinfo`;
CREATE TABLE `recinfo` (
  `RlId` int(11) NOT NULL AUTO_INCREMENT,
  `PUId` int(11) DEFAULT NULL,
  `JobTitle` varchar(255) DEFAULT NULL,
  `Contacts` varchar(30) DEFAULT NULL,
  `ContactInfo` varchar(30) DEFAULT NULL,
  `WorkArea` varchar(30) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Grade` varchar(30) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Salary` varchar(255) DEFAULT NULL,
  `Settle` varchar(255) DEFAULT NULL,
  `WTime` varchar(50) DEFAULT NULL,
  `StuInfo` varchar(255) DEFAULT NULL,
  `JobDemand` varchar(255) DEFAULT NULL,
  `Subsidy` varchar(30) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `ReTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Shi` varchar(30) DEFAULT NULL,
  `Qu` varchar(30) DEFAULT NULL,
  `View` int(11) DEFAULT NULL,
  `School` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`RlId`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

#
# Data for table "recinfo"
#

/*!40000 ALTER TABLE `recinfo` DISABLE KEYS */;
INSERT INTO `recinfo` VALUES (22,5,'小学英语','李大锤','13986663737',NULL,'石家庄市南二环',NULL,'英语','50元-100元','周结',NULL,'英语基础差',NULL,NULL,NULL,'2016-12-13 16:38:58','石家庄','裕华区',NULL,NULL),(23,5,'初中数学','李大锤','13986663737',NULL,'建通街',NULL,'数学','30元-50元','周结',NULL,'数学成绩需要提高',NULL,NULL,NULL,'2016-12-13 16:43:21','石家庄','裕华区',NULL,NULL),(24,5,'高中物理','李大锤','13986663737',NULL,'建通街',NULL,'物理','50元-100元','周结',NULL,'物理成绩太低',NULL,NULL,NULL,'2016-12-13 16:44:05','石家庄','裕华区',NULL,NULL),(25,6,'初中英语','王晓红','13986663737',NULL,'阳光小区',NULL,'英语','50元-100元','周结',NULL,'英语基础差，对英语没兴趣',NULL,NULL,NULL,'2016-12-13 16:50:21','石家庄','桥西区',NULL,NULL),(26,6,'高中物理','王晓红','13986663737',NULL,'阳光小区',NULL,'物理','50元-100元','周结',NULL,'对物理不感兴趣',NULL,NULL,NULL,'2016-12-13 16:54:59','石家庄','新华区',NULL,NULL),(27,6,'初中数学','王晓红','13986663737',NULL,'阳光小区',NULL,'数学','30元-50元','周结',NULL,'提高数学成绩',NULL,NULL,NULL,'2016-12-13 16:57:51','石家庄','新华区',NULL,NULL),(28,6,'初中数学','王晓红','13986663737',NULL,'阳光小区',NULL,'数学','50元-100元','周结',NULL,'提高数学成绩',NULL,NULL,NULL,'2016-12-13 17:00:48','石家庄','新华区',NULL,NULL),(29,6,'小学数学','王晓红','13986663737',NULL,'南二环',NULL,'数学','100元以上','月结',NULL,'小学数学教学班',NULL,NULL,NULL,'2016-12-13 17:02:06','石家庄','裕华区',NULL,NULL),(30,7,'美术','刘大大','13832237768',NULL,'幸福小区',NULL,'美术','100元以上','月结',NULL,'喜欢画画',NULL,NULL,NULL,'2016-12-13 17:08:48','石家庄','长安区',NULL,NULL),(31,7,'英语','刘大大','13832237768',NULL,'幸福小区',NULL,'英语口语','50元-100元','周结',NULL,'喜欢英语',NULL,NULL,NULL,'2016-12-13 17:10:21','石家庄','长安区',NULL,NULL),(32,7,'初中数学','刘大大','13832237768',NULL,'幸福小区',NULL,'数学','30元-50元','周结',NULL,'对数学不感兴趣',NULL,NULL,NULL,'2016-12-13 17:11:02','石家庄','长安区',NULL,NULL),(33,8,'初中数学','李晓江','13986663737',NULL,'建通街',NULL,'数学','50元-100元','月结',NULL,'数学成绩差',NULL,NULL,NULL,'2016-12-13 17:25:23','石家庄','裕华区',NULL,NULL),(34,8,'初中英语','李晓江','13986663737',NULL,'建通街',NULL,'英语','50元-100元','月结',NULL,'英语差',NULL,NULL,NULL,'2016-12-13 17:26:41','石家庄','裕华区',NULL,NULL),(35,8,'美术','李晓江','13986663737',NULL,'建通街',NULL,'美术','50元-100元','月结',NULL,'培养美术兴趣',NULL,NULL,NULL,'2016-12-13 17:28:06','石家庄','裕华区',NULL,NULL),(36,9,'高中物理','姜春雷','15232135600',NULL,'南二环',NULL,'物理','30元-50元','月结',NULL,'对物理不感兴趣',NULL,NULL,NULL,'2016-12-13 17:38:27','石家庄','裕华区',NULL,NULL),(37,9,'英语','姜春雷','15232135600',NULL,'南二环',NULL,'口语','100元以上','月结',NULL,'培养口语',NULL,NULL,NULL,'2016-12-13 17:38:58','石家庄','裕华区',NULL,NULL),(38,9,'数学','姜春雷','15232135600',NULL,'南二环',NULL,'数学','50元-100元','月结',NULL,'培养孩子参加数学竞赛',NULL,NULL,NULL,'2016-12-13 17:40:11','石家庄','裕华区',NULL,NULL),(39,9,'小学数学','姜春雷','15232135600',NULL,'南二环',NULL,'数学','50元-100元','周结',NULL,'对数学不感兴趣',NULL,NULL,NULL,'2016-12-13 17:44:50','石家庄','裕华区',NULL,NULL);
/*!40000 ALTER TABLE `recinfo` ENABLE KEYS */;

#
# Structure for table "resume"
#

DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `ReId` int(11) NOT NULL AUTO_INCREMENT,
  `TUId` int(11) DEFAULT NULL,
  `Ted` varchar(255) DEFAULT NULL,
  `Expertise` varchar(255) DEFAULT NULL,
  `SGrade` varchar(30) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `TeaSubject` varchar(30) DEFAULT NULL,
  `TeaMode` varchar(30) DEFAULT NULL,
  `Settle` varchar(255) DEFAULT NULL,
  `Discount` varchar(30) DEFAULT NULL,
  `Brief` varchar(255) DEFAULT NULL,
  `Pte` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Salary` varchar(255) DEFAULT NULL,
  `TUName` varchar(255) DEFAULT NULL,
  `ReTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ReId`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "resume"
#

/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` VALUES (1,1,'本科','数学竞赛得奖','小学五年级','裕华区','数学','家教',NULL,'第一次免费试讲','热爱运动，思想健康','两次数学家教',NULL,'50元-100元','测试教员1','2016-12-13 15:18:07'),(8,8,'本科','物理专业','高一','裕华区','高中物理','家教',NULL,'第一次免费试讲','热爱生活','一次物理家教',NULL,'50元-100元','测试教员2','2016-12-13 15:26:54'),(9,9,'本科','美术专业，作品得奖','小学生','裕华区','美术','小班授课',NULL,'第一节课免费试听','热爱艺术','一次美术教学班',NULL,'100元以上','测试教员3','2016-12-13 15:31:50'),(10,10,'本科','精通计算机','业余','长安区','计算机','远程教育',NULL,'第一次免费试讲','精通计算机','三次网上授课计算机知识',NULL,'100元以上','测试教员4','2016-12-13 15:39:16'),(11,11,'本科','英语四六级全过','小学，初中','长安区','初中英语','家教',NULL,'第一次免费试讲','英语得奖','四次英语家教',NULL,'50元-100元','测试教员5','2016-12-13 15:44:43'),(12,12,'在校本科生','化学专业','高一','桥西区','高中化学','家教',NULL,'第一次免费试讲','身体健康，思想上进','一次化学家教',NULL,'50元-100元','测试教员6','2016-12-13 15:51:23'),(13,13,'在校本科','英语专业','初一','桥西区','英语','家教',NULL,'第一次免费试讲','英语专业','一次英语家教',NULL,'50元-100元','测试教员7','2016-12-13 16:00:27'),(14,14,'在校本科','英语口语大赛得奖','小学，初中','长安区','英语','家教',NULL,NULL,'擅长英语口语','五次英语家教',NULL,'50元-100元','测试教员8','2016-12-13 16:07:08'),(15,15,'在校本科','计算机专业','业余','桥西区','计算机','远程教育',NULL,NULL,'精通计算机','三次网上授课计算机知识',NULL,'50元-100元','测试教员9','2016-12-13 16:24:58'),(16,16,'在校本科','英语成绩突出','小学，初中','新华区','英语','家教',NULL,NULL,'擅长英语','两次英语家教',NULL,'50元-100元','测试教员10','2016-12-13 16:31:20'),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;

#
# Structure for table "success"
#

DROP TABLE IF EXISTS `success`;
CREATE TABLE `success` (
  `TrId` int(11) NOT NULL AUTO_INCREMENT,
  `PUId` int(11) DEFAULT NULL,
  `TUId` int(11) DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TrId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "success"
#

/*!40000 ALTER TABLE `success` DISABLE KEYS */;
/*!40000 ALTER TABLE `success` ENABLE KEYS */;

#
# Structure for table "tdeinfo"
#

DROP TABLE IF EXISTS `tdeinfo`;
CREATE TABLE `tdeinfo` (
  `TdId` int(11) NOT NULL AUTO_INCREMENT,
  `TUId` int(11) DEFAULT NULL,
  `TName` varchar(30) DEFAULT NULL,
  `TSex` char(1) DEFAULT NULL,
  `TCollege` varchar(30) DEFAULT NULL,
  `TMajor` varchar(30) DEFAULT NULL,
  `TGrade` varchar(30) DEFAULT NULL,
  `TContactInfo` varchar(30) DEFAULT NULL,
  `TMailbox` varchar(50) DEFAULT NULL,
  `TAddress` varchar(255) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  PRIMARY KEY (`TdId`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "tdeinfo"
#

/*!40000 ALTER TABLE `tdeinfo` DISABLE KEYS */;
INSERT INTO `tdeinfo` VALUES (1,1,'测试教员1','女','河北师范大学汇华学院','数学','大学三年级','15231139888','501812332@qq.com',NULL,0),(8,8,'测试教员2','男','河北师范大学','物理','大学二年级','15231139888','1039738015@qq.com',NULL,0),(9,9,'测试教员3','女','河北师范大学','美术','大学一年级','15231139888','897839325@qq.com',NULL,0),(10,10,'测试教员4','女','河北科技大学','计算机','大学四年级','15231139888','453582946@qq.com',NULL,0),(11,11,'测试教员5','男','河北师范大学','法律','大学二年级','15231139888','1365203367@qq.com',NULL,0),(12,12,'测试教员6','男','河北经济学院','化学','大学三年级','15231139333','466092000@qq.com',NULL,0),(13,13,'测试教员7','女','河北师范大学汇华学院','英语','大学一年级','15231139444','1934370292@qq.com',NULL,0),(14,14,'测试教员8','女','河北师范大学','文学','大学三年级','15231139333','2337460030@qq.com',NULL,0),(15,15,'测试教员9','男','河北经济学院','计算机','大学四年级','15231139333','2602491694@qq.com',NULL,0),(16,16,'测试教员10','女','河北师范大学','法律','大学二年级','15231135555','528029664@qq.com',NULL,0),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdeinfo` ENABLE KEYS */;

#
# Structure for table "teacer"
#

DROP TABLE IF EXISTS `teacer`;
CREATE TABLE `teacer` (
  `TcId` int(11) NOT NULL AUTO_INCREMENT,
  `TUId` int(11) DEFAULT NULL,
  `Idnum` varchar(255) DEFAULT NULL,
  `SIdnum` varchar(30) DEFAULT NULL,
  `TUName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TcId`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "teacer"
#

/*!40000 ALTER TABLE `teacer` DISABLE KEYS */;
INSERT INTO `teacer` VALUES (1,1,'130622XXXXXXXX4428','2014011210','宋小乔'),(8,8,'130622XXXXXXXX4420','2014011130','高渐离'),(9,9,'130622XXXXXXXX4430','2014011133','甄姬'),(10,10,'130622XXXXXXXX1220','2014011122','王昭君'),(11,11,'130622XXXXXXXX1233','2014011144','郭泡泡'),(12,12,'130622XXXXXXXX9999','2014011222','狄仁杰'),(13,13,'130622XXXXXXXX2345','2014016234','王荆轲'),(14,14,'130622XXXXXXXX8820','2014015000','刘燕燕'),(15,15,'130622XXXXXXXX8877','2014014455','曹操'),(16,16,'130622XXXXXXXX2299','2014015566','王琳'),(17,17,NULL,NULL,NULL);
/*!40000 ALTER TABLE `teacer` ENABLE KEYS */;

#
# Structure for table "tuser"
#

DROP TABLE IF EXISTS `tuser`;
CREATE TABLE `tuser` (
  `TUId` int(11) NOT NULL AUTO_INCREMENT,
  `TUName` varchar(30) DEFAULT NULL,
  `TUPwd` varchar(15) DEFAULT NULL,
  `TMailbox` varchar(50) DEFAULT NULL,
  `Pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TUId`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

#
# Data for table "tuser"
#

/*!40000 ALTER TABLE `tuser` DISABLE KEYS */;
INSERT INTO `tuser` VALUES (1,'测试教员1','123456','501812332@qq.com',NULL),(8,'测试教员2','123456','1039738015@qq.com',NULL),(9,'测试教员3','123456','897839325@qq.com',NULL),(10,'测试教员4','123456','453582946@qq.com',NULL),(11,'测试教员5','123456','1365203367@qq.com',NULL),(12,'测试教员6','123456','466092000@qq.com',NULL),(13,'测试教员7','123456','1934370292@qq.com',NULL),(14,'测试教员8','123456','2337460030@qq.com',NULL),(15,'测试教员9','123456','2602491694@qq.com','Null'),(16,'测试教员10','123456','528029664@qq.com',NULL),(17,'测试教员11','123456','1269105640@qq.com',NULL);
/*!40000 ALTER TABLE `tuser` ENABLE KEYS */;
