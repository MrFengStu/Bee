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
INSERT INTO `hotsearch` VALUES (8,'��ѧ',5),(9,'Ӣ��',7),(10,'Сѧ',1),(11,'����',1),(12,'����',1),(13,'�����',1),(14,'��ѧ',1);
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
INSERT INTO `parcer` VALUES (5,5,'130222XXXXXXXX5555','���'),(6,6,'130222XXXXXXXX1111','������'),(7,7,'130222XXXXXXXX5555','�����'),(8,8,'130222XXXXXXXX6464','������'),(9,9,'130222XXXXXXXX3876','������');
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
INSERT INTO `puser` VALUES (5,'���Լҳ�1','123456','736426031@qq.com',NULL,NULL),(6,'���Լҳ�2','123456','1349612036@qq.com',NULL,NULL),(7,'���Լҳ�3','123456','1361533546@qq.com',NULL,NULL),(8,'���Լҳ�4','123456','948935853@qq.com',NULL,NULL),(9,'���Լҳ�5','123456','2786170100@qq.com',NULL,NULL);
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
INSERT INTO `recinfo` VALUES (22,5,'СѧӢ��','���','13986663737',NULL,'ʯ��ׯ���϶���',NULL,'Ӣ��','50Ԫ-100Ԫ','�ܽ�',NULL,'Ӣ�������',NULL,NULL,NULL,'2016-12-13 16:38:58','ʯ��ׯ','ԣ����',NULL,NULL),(23,5,'������ѧ','���','13986663737',NULL,'��ͨ��',NULL,'��ѧ','30Ԫ-50Ԫ','�ܽ�',NULL,'��ѧ�ɼ���Ҫ���',NULL,NULL,NULL,'2016-12-13 16:43:21','ʯ��ׯ','ԣ����',NULL,NULL),(24,5,'��������','���','13986663737',NULL,'��ͨ��',NULL,'����','50Ԫ-100Ԫ','�ܽ�',NULL,'����ɼ�̫��',NULL,NULL,NULL,'2016-12-13 16:44:05','ʯ��ׯ','ԣ����',NULL,NULL),(25,6,'����Ӣ��','������','13986663737',NULL,'����С��',NULL,'Ӣ��','50Ԫ-100Ԫ','�ܽ�',NULL,'Ӣ��������Ӣ��û��Ȥ',NULL,NULL,NULL,'2016-12-13 16:50:21','ʯ��ׯ','������',NULL,NULL),(26,6,'��������','������','13986663737',NULL,'����С��',NULL,'����','50Ԫ-100Ԫ','�ܽ�',NULL,'����������Ȥ',NULL,NULL,NULL,'2016-12-13 16:54:59','ʯ��ׯ','�»���',NULL,NULL),(27,6,'������ѧ','������','13986663737',NULL,'����С��',NULL,'��ѧ','30Ԫ-50Ԫ','�ܽ�',NULL,'�����ѧ�ɼ�',NULL,NULL,NULL,'2016-12-13 16:57:51','ʯ��ׯ','�»���',NULL,NULL),(28,6,'������ѧ','������','13986663737',NULL,'����С��',NULL,'��ѧ','50Ԫ-100Ԫ','�ܽ�',NULL,'�����ѧ�ɼ�',NULL,NULL,NULL,'2016-12-13 17:00:48','ʯ��ׯ','�»���',NULL,NULL),(29,6,'Сѧ��ѧ','������','13986663737',NULL,'�϶���',NULL,'��ѧ','100Ԫ����','�½�',NULL,'Сѧ��ѧ��ѧ��',NULL,NULL,NULL,'2016-12-13 17:02:06','ʯ��ׯ','ԣ����',NULL,NULL),(30,7,'����','�����','13832237768',NULL,'�Ҹ�С��',NULL,'����','100Ԫ����','�½�',NULL,'ϲ������',NULL,NULL,NULL,'2016-12-13 17:08:48','ʯ��ׯ','������',NULL,NULL),(31,7,'Ӣ��','�����','13832237768',NULL,'�Ҹ�С��',NULL,'Ӣ�����','50Ԫ-100Ԫ','�ܽ�',NULL,'ϲ��Ӣ��',NULL,NULL,NULL,'2016-12-13 17:10:21','ʯ��ׯ','������',NULL,NULL),(32,7,'������ѧ','�����','13832237768',NULL,'�Ҹ�С��',NULL,'��ѧ','30Ԫ-50Ԫ','�ܽ�',NULL,'����ѧ������Ȥ',NULL,NULL,NULL,'2016-12-13 17:11:02','ʯ��ׯ','������',NULL,NULL),(33,8,'������ѧ','������','13986663737',NULL,'��ͨ��',NULL,'��ѧ','50Ԫ-100Ԫ','�½�',NULL,'��ѧ�ɼ���',NULL,NULL,NULL,'2016-12-13 17:25:23','ʯ��ׯ','ԣ����',NULL,NULL),(34,8,'����Ӣ��','������','13986663737',NULL,'��ͨ��',NULL,'Ӣ��','50Ԫ-100Ԫ','�½�',NULL,'Ӣ���',NULL,NULL,NULL,'2016-12-13 17:26:41','ʯ��ׯ','ԣ����',NULL,NULL),(35,8,'����','������','13986663737',NULL,'��ͨ��',NULL,'����','50Ԫ-100Ԫ','�½�',NULL,'����������Ȥ',NULL,NULL,NULL,'2016-12-13 17:28:06','ʯ��ׯ','ԣ����',NULL,NULL),(36,9,'��������','������','15232135600',NULL,'�϶���',NULL,'����','30Ԫ-50Ԫ','�½�',NULL,'����������Ȥ',NULL,NULL,NULL,'2016-12-13 17:38:27','ʯ��ׯ','ԣ����',NULL,NULL),(37,9,'Ӣ��','������','15232135600',NULL,'�϶���',NULL,'����','100Ԫ����','�½�',NULL,'��������',NULL,NULL,NULL,'2016-12-13 17:38:58','ʯ��ׯ','ԣ����',NULL,NULL),(38,9,'��ѧ','������','15232135600',NULL,'�϶���',NULL,'��ѧ','50Ԫ-100Ԫ','�½�',NULL,'�������Ӳμ���ѧ����',NULL,NULL,NULL,'2016-12-13 17:40:11','ʯ��ׯ','ԣ����',NULL,NULL),(39,9,'Сѧ��ѧ','������','15232135600',NULL,'�϶���',NULL,'��ѧ','50Ԫ-100Ԫ','�ܽ�',NULL,'����ѧ������Ȥ',NULL,NULL,NULL,'2016-12-13 17:44:50','ʯ��ׯ','ԣ����',NULL,NULL);
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
INSERT INTO `resume` VALUES (1,1,'����','��ѧ�����ý�','Сѧ���꼶','ԣ����','��ѧ','�ҽ�',NULL,'��һ������Խ�','�Ȱ��˶���˼�뽡��','������ѧ�ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա1','2016-12-13 15:18:07'),(8,8,'����','����רҵ','��һ','ԣ����','��������','�ҽ�',NULL,'��һ������Խ�','�Ȱ�����','һ������ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա2','2016-12-13 15:26:54'),(9,9,'����','����רҵ����Ʒ�ý�','Сѧ��','ԣ����','����','С���ڿ�',NULL,'��һ�ڿ��������','�Ȱ�����','һ��������ѧ��',NULL,'100Ԫ����','���Խ�Ա3','2016-12-13 15:31:50'),(10,10,'����','��ͨ�����','ҵ��','������','�����','Զ�̽���',NULL,'��һ������Խ�','��ͨ�����','���������ڿμ����֪ʶ',NULL,'100Ԫ����','���Խ�Ա4','2016-12-13 15:39:16'),(11,11,'����','Ӣ��������ȫ��','Сѧ������','������','����Ӣ��','�ҽ�',NULL,'��һ������Խ�','Ӣ��ý�','�Ĵ�Ӣ��ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա5','2016-12-13 15:44:43'),(12,12,'��У������','��ѧרҵ','��һ','������','���л�ѧ','�ҽ�',NULL,'��һ������Խ�','���彡����˼���Ͻ�','һ�λ�ѧ�ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա6','2016-12-13 15:51:23'),(13,13,'��У����','Ӣ��רҵ','��һ','������','Ӣ��','�ҽ�',NULL,'��һ������Խ�','Ӣ��רҵ','һ��Ӣ��ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա7','2016-12-13 16:00:27'),(14,14,'��У����','Ӣ���������ý�','Сѧ������','������','Ӣ��','�ҽ�',NULL,NULL,'�ó�Ӣ�����','���Ӣ��ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա8','2016-12-13 16:07:08'),(15,15,'��У����','�����רҵ','ҵ��','������','�����','Զ�̽���',NULL,NULL,'��ͨ�����','���������ڿμ����֪ʶ',NULL,'50Ԫ-100Ԫ','���Խ�Ա9','2016-12-13 16:24:58'),(16,16,'��У����','Ӣ��ɼ�ͻ��','Сѧ������','�»���','Ӣ��','�ҽ�',NULL,NULL,'�ó�Ӣ��','����Ӣ��ҽ�',NULL,'50Ԫ-100Ԫ','���Խ�Ա10','2016-12-13 16:31:20'),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `tdeinfo` VALUES (1,1,'���Խ�Ա1','Ů','�ӱ�ʦ����ѧ�㻪ѧԺ','��ѧ','��ѧ���꼶','15231139888','501812332@qq.com',NULL,0),(8,8,'���Խ�Ա2','��','�ӱ�ʦ����ѧ','����','��ѧ���꼶','15231139888','1039738015@qq.com',NULL,0),(9,9,'���Խ�Ա3','Ů','�ӱ�ʦ����ѧ','����','��ѧһ�꼶','15231139888','897839325@qq.com',NULL,0),(10,10,'���Խ�Ա4','Ů','�ӱ��Ƽ���ѧ','�����','��ѧ���꼶','15231139888','453582946@qq.com',NULL,0),(11,11,'���Խ�Ա5','��','�ӱ�ʦ����ѧ','����','��ѧ���꼶','15231139888','1365203367@qq.com',NULL,0),(12,12,'���Խ�Ա6','��','�ӱ�����ѧԺ','��ѧ','��ѧ���꼶','15231139333','466092000@qq.com',NULL,0),(13,13,'���Խ�Ա7','Ů','�ӱ�ʦ����ѧ�㻪ѧԺ','Ӣ��','��ѧһ�꼶','15231139444','1934370292@qq.com',NULL,0),(14,14,'���Խ�Ա8','Ů','�ӱ�ʦ����ѧ','��ѧ','��ѧ���꼶','15231139333','2337460030@qq.com',NULL,0),(15,15,'���Խ�Ա9','��','�ӱ�����ѧԺ','�����','��ѧ���꼶','15231139333','2602491694@qq.com',NULL,0),(16,16,'���Խ�Ա10','Ů','�ӱ�ʦ����ѧ','����','��ѧ���꼶','15231135555','528029664@qq.com',NULL,0),(17,17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `teacer` VALUES (1,1,'130622XXXXXXXX4428','2014011210','��С��'),(8,8,'130622XXXXXXXX4420','2014011130','�߽���'),(9,9,'130622XXXXXXXX4430','2014011133','�缧'),(10,10,'130622XXXXXXXX1220','2014011122','���Ѿ�'),(11,11,'130622XXXXXXXX1233','2014011144','������'),(12,12,'130622XXXXXXXX9999','2014011222','���ʽ�'),(13,13,'130622XXXXXXXX2345','2014016234','������'),(14,14,'130622XXXXXXXX8820','2014015000','������'),(15,15,'130622XXXXXXXX8877','2014014455','�ܲ�'),(16,16,'130622XXXXXXXX2299','2014015566','����'),(17,17,NULL,NULL,NULL);
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
INSERT INTO `tuser` VALUES (1,'���Խ�Ա1','123456','501812332@qq.com',NULL),(8,'���Խ�Ա2','123456','1039738015@qq.com',NULL),(9,'���Խ�Ա3','123456','897839325@qq.com',NULL),(10,'���Խ�Ա4','123456','453582946@qq.com',NULL),(11,'���Խ�Ա5','123456','1365203367@qq.com',NULL),(12,'���Խ�Ա6','123456','466092000@qq.com',NULL),(13,'���Խ�Ա7','123456','1934370292@qq.com',NULL),(14,'���Խ�Ա8','123456','2337460030@qq.com',NULL),(15,'���Խ�Ա9','123456','2602491694@qq.com','Null'),(16,'���Խ�Ա10','123456','528029664@qq.com',NULL),(17,'���Խ�Ա11','123456','1269105640@qq.com',NULL);
/*!40000 ALTER TABLE `tuser` ENABLE KEYS */;
