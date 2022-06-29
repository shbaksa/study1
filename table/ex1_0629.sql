-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ex1
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baseball`
--

DROP TABLE IF EXISTS `baseball`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseball` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `position` char(100) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseball`
--

LOCK TABLES `baseball` WRITE;
/*!40000 ALTER TABLE `baseball` DISABLE KEYS */;
INSERT INTO `baseball` VALUES (1,'류지혁','3루수',8),(2,'김선빈','2루수',3),(3,'나성범','우익수',47),(4,'최형우','좌익수',36),(5,'양현종','투수',54);
/*!40000 ALTER TABLE `baseball` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board1`
--

DROP TABLE IF EXISTS `board1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board1` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pw` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `readnum` int(11) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board1`
--

LOCK TABLES `board1` WRITE;
/*!40000 ALTER TABLE `board1` DISABLE KEYS */;
INSERT INTO `board1` VALUES (1,'sadasd','123','123','sad',1,'2022-06-10'),(2,'익명123','ㅇㅇㅇㅇㅇㅇㅇㅇ','123','띄워씨기ㅣㄴ이니임\r\nㄴㅇㄴㅁㅇ\r\nㅁㄴㅇㄴㅁㅇ\r\nㄴ\r\nㅁㅇ\r\n\r\nㄴㅁㅇ\r\nㄴㅁㅇ\r\nㄴㅁㅇㄴ',31,'2022-06-10'),(3,'익명2','항ㅎㅇㅎ','1234','   gkgkgkgkggㅎㅎㅎㅎㅎㅎㅎㅎsadsad\r\nsad\r\nsa\r\nds\r\nad\r\nsad\r\nsad',7,'2022-06-10'),(4,'익명2222','ㅇㄴㄹ','1234','                   ㅋㅌㅊㅋ',9,'2022-06-10'),(5,'123123','sad','123','sad',1,'2022-06-10'),(6,'kay22','건의','1234','안건1./',4,'2022-06-13');
/*!40000 ALTER TABLE `board1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board2`
--

DROP TABLE IF EXISTS `board2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `name` char(30) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `secret` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `gv` int(11) DEFAULT 0,
  `pw` varchar(50) DEFAULT NULL,
  `gvdown` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board2`
--

LOCK TABLES `board2` WRITE;
/*!40000 ALTER TABLE `board2` DISABLE KEYS */;
INSERT INTO `board2` VALUES (1,'비밀글','213123333',184,'Secret01','2022-06-13',0,6,50,'123',4),(2,'축구','2022년 6월 14일입니다.<br><br>띄어 쓰기',6,'sport01','2022-06-14',0,2,3,'123',0),(3,'야구','ㅁㄴㅇㄴㅁㅇㄴㄴㄴㅁㅇ',26,'sport01','2022-06-14',1,3,9,'123',0),(4,'족구','12321212332232323212312313\r\n\r\n1231\r\n',1,'sport01','2022-06-14',0,3,3,'123',0),(5,'탁구','ㅇㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅇㄴㅇㄴㅁㅇㅁㄴ',11,'sport01','2022-06-14',1,4,2,'123',0),(6,'배드민턴','sdasdas1233',30,'sport01','2022-06-14',1,1,28,'123',6),(7,'테니스','12312312312321323',9,'sport01','2022-06-14',1,1,0,'123',0),(8,'당구','ㄴㅁㅇㄴㅁㅇㄴㅁ오ㅓㅓㄴㅁ와\r\nㄴㅓ노어ㄴㄴㅏㅇㄴㅁㅇㄴㄴ\r\n\r\nㄴㅁㅇㅁㄴㅇㅁㄴㄴ언모\r\n어니ㅏ어ㅣㅏ\r\nㅇㄴㅁㅇㄴㅁㅇㄴㅇㅁ',13,'sport01','2022-06-14',1,1,1,'123',0),(9,'볼링','123123',11,'sport01','2022-06-14',1,2,3,'123',0),(10,'풋살','ㅇㄴㅁㅇㄴ',21,'sport01','2022-06-14',1,2,49,'123',7),(11,'배구','ㄴㅁㅇㄴㅁㅇㄴㅁ아ㅓㅇ나ㅓㅏ\r\n',28,'sport01','2022-06-14',1,2,38,'123',14),(12,'농구','인기글위로 고정해주세요',2,'sport01','2022-06-14',0,1,1,'123',0),(13,'미식축구','화요일입니다',1,'sport01','2022-06-14',0,1,2,'123',0),(14,'E스포츠','ㅇㅇㅇㅇㅇㅇㅋㅋㅋㅋㅋㅋㅋㅋ\r\nㅇ\r\nㅇㅇㅇㄴㅁㅇㄴㅁㅇ\r\nㅁ\r\nㅇㄴ\r\nㅁㄴ\r\nㅇ\r\nㅁㄴㅇ\r\n\r\nㅁㄴㅇ\r\n\r\nㅁㄴㅇ\r\n\r\nㅁㅇ\r\nㅁ\r\nㅇ\r\nㅁㄴ\r\nㅇ\r\nㅁㄴㅇ\r\n\r\nㅁㄴㅇ\r\nㅇ\r\nㄴㅁ\r\nㅇ\r\nㅁㄴㅇ\r\n\r\nㅁㄴㅇㅁㄴㅇㅇㅇㅇ',10,'game01','2022-06-14',1,2,4,'123',0),(15,'LoL','dd',2,'game01','2022-06-16',0,1,4,'dd',0),(16,'ㅎㅎ','안녕',0,'sport-2','2022-06-21',1,1,0,'1234',0),(17,'dsad','asd',0,'asdas','2022-06-21',1,1,0,'dsad',0),(18,'a','adfdaf',0,'fdafdsf','2022-06-21',1,1,0,'dafdafd',0),(19,'dsad','asdsafdaf',0,'ddas','2022-06-21',1,1,0,'adfd',0),(20,'hfgh','fghgfh',0,'fgdfdg','2022-06-21',1,1,0,'gfhgfh',0),(21,'nvbn','vbnvbn',0,'agnvbnnvbvbnvb','2022-06-21',1,1,0,'vbnvbn',0),(22,'gnmgnh','ghn',0,'mjmhjm','2022-06-21',1,1,0,'ghnghn',0),(23,'ghngh','nhgngnhgnhgn',0,'nghn','2022-06-21',1,1,0,'ghn',0),(24,'nnhh','hh',0,'nn','2022-06-21',1,1,0,'nnnnnnn',0),(25,'hgg','gggh',1,'ghn','2022-06-21',1,1,7,'gh',0),(26,'nhgn','hgngh',0,'hngh','2022-06-21',1,1,0,'nhg',0),(27,'hnh','nhn',0,'nghn','2022-06-21',1,1,0,'h',0),(28,'hn','hnhn',0,'hn','2022-06-21',1,1,0,'hn',0),(29,'nn','hnhn',0,'ng','2022-06-21',1,1,0,'hn',0),(30,'hn','hnh',0,'gnh','2022-06-21',1,1,0,'nhn',0),(31,'nh','nhn',0,'nh','2022-06-21',1,1,0,'hnhn',0),(32,'3123','213123',0,'12312','2022-06-21',1,1,0,'123213',0),(33,'23432','4234',0,'2434','2022-06-21',1,1,0,'3435',0),(34,'3123','12312',0,'12312','2022-06-21',1,1,0,'3123123',0),(35,'1','3123',0,'21312','2022-06-21',1,1,0,'13123',0),(36,'4324','4324',0,'342','2022-06-21',1,1,0,'23242',0),(37,'4234','234234',0,'32423','2022-06-21',1,1,0,'123123',0),(38,'131','3213213',0,'1231232','2022-06-21',1,1,0,'123',0),(39,'12321','3213',0,'123','2022-06-21',1,1,0,'21313',0),(40,'123','12321',0,'123','2022-06-21',0,1,0,'3123',0),(41,'1231','123',0,'213','2022-06-21',1,1,0,'1231',0),(42,'32','2212',0,'12321','2022-06-21',1,1,0,'132',0),(43,'ㅁㄴㅇ','ㅁㄴㅇ',0,'ㅎㅎ','2022-06-21',1,1,0,'sss',0),(44,'배드민턴','sda',2,'sport','2022-06-21',1,2,0,'dsdd',0),(45,'213','123123',0,'game','2022-06-21',1,2,0,'123213',0),(46,'1232112','1231',0,'game-2','2022-06-21',1,2,0,'1233',0),(47,'test00','content00',0,'admin01','2022-06-21',0,2,0,'123',0),(48,'test00','content00',0,'admin01','2022-06-21',0,2,0,'123',0),(49,'test01','content01',0,'admin01','2022-06-21',0,2,0,'123',0),(50,'test02','content02',0,'admin01','2022-06-21',0,2,0,'123',0),(51,'test03','content03',0,'admin01','2022-06-21',0,2,0,'123',0),(52,'test04','content04',0,'admin01','2022-06-21',0,2,0,'123',0),(53,'test05','content05',0,'admin01','2022-06-21',0,2,0,'123',0),(54,'test06','content06',0,'admin01','2022-06-21',0,2,0,'123',0),(55,'test07','content07',0,'admin01','2022-06-21',0,2,0,'123',0),(56,'test08','content08',0,'admin01','2022-06-21',0,2,0,'123',0),(57,'test09','content09',0,'admin01','2022-06-21',0,2,0,'123',0),(58,'test010','content010',0,'admin01','2022-06-21',0,2,0,'123',0),(59,'test011','content011',0,'admin01','2022-06-21',0,2,0,'123',0),(60,'test012','content012',0,'admin01','2022-06-21',0,2,0,'123',0),(61,'test013','content013',0,'admin01','2022-06-21',0,2,0,'123',0),(62,'test014','content014',0,'admin01','2022-06-21',0,2,0,'123',0),(63,'test015','content015',0,'admin01','2022-06-21',0,2,0,'123',0),(64,'test016','content016',0,'admin01','2022-06-21',0,2,0,'123',0),(65,'test017','content017',0,'admin01','2022-06-21',0,2,0,'123',0),(66,'test018','content018',0,'admin01','2022-06-21',0,2,0,'123',0),(67,'test019','content019',0,'admin01','2022-06-21',0,2,0,'123',0),(68,'test020','content020',0,'admin01','2022-06-21',0,2,0,'123',0),(69,'test021','content021',0,'admin01','2022-06-21',0,2,0,'123',0),(70,'test022','content022',0,'admin01','2022-06-21',0,2,0,'123',0),(71,'test023','content023',0,'admin01','2022-06-21',0,2,0,'123',0),(72,'test024','content024',0,'admin01','2022-06-21',0,2,0,'123',0),(73,'test025','content025',0,'admin01','2022-06-21',0,2,0,'123',0),(74,'test026','content026',0,'admin01','2022-06-21',0,2,0,'123',0),(75,'test027','content027',0,'admin01','2022-06-21',0,2,0,'123',0),(76,'test028','content028',0,'admin01','2022-06-21',0,2,0,'123',0),(77,'test029','content029',0,'admin01','2022-06-21',0,2,0,'123',0),(78,'test030','content030',0,'admin01','2022-06-21',0,2,0,'123',0),(79,'test031','content031',0,'admin01','2022-06-21',0,2,0,'123',0),(80,'test032','content032',0,'admin01','2022-06-21',0,2,0,'123',0),(81,'test033','content033',0,'admin01','2022-06-21',0,2,0,'123',0),(82,'test034','content034',0,'admin01','2022-06-21',0,2,0,'123',0),(83,'test035','content035',0,'admin01','2022-06-21',0,2,0,'123',0),(84,'test036','content036',0,'admin01','2022-06-21',0,2,0,'123',0),(85,'test037','content037',0,'admin01','2022-06-21',0,2,0,'123',0),(86,'test038','content038',0,'admin01','2022-06-21',0,2,0,'123',0),(87,'test039','content039',0,'admin01','2022-06-21',0,2,0,'123',0),(88,'test040','content040',0,'admin01','2022-06-21',0,2,0,'123',0),(89,'test041','content041',0,'admin01','2022-06-21',0,2,0,'123',0),(90,'test042','content042',0,'admin01','2022-06-21',0,2,0,'123',0),(91,'test043','content043',0,'admin01','2022-06-21',0,2,0,'123',0),(92,'test044','content044',0,'admin01','2022-06-21',0,2,0,'123',0),(93,'test045','content045',0,'admin01','2022-06-21',0,2,0,'123',0),(94,'test046','content046',0,'admin01','2022-06-21',0,2,0,'123',0),(95,'test047','content047',0,'admin01','2022-06-21',0,2,0,'123',0),(96,'test048','content048',0,'admin01','2022-06-21',0,2,0,'123',0),(97,'test049','content049',0,'admin01','2022-06-21',0,2,0,'123',0),(98,'test050','content050',0,'admin01','2022-06-21',0,2,0,'123',0),(99,'test051','content051',0,'admin051','2022-06-21',1,2,0,'123',0),(100,'test052','content052',0,'admin052','2022-06-21',1,2,0,'123',0),(101,'test053','content053',0,'admin053','2022-06-21',1,2,0,'123',0),(102,'test054','content054',0,'admin054','2022-06-21',1,2,0,'123',0),(103,'test055','content055',0,'admin055','2022-06-21',1,2,0,'123',0),(104,'test056','content056',0,'admin056','2022-06-21',1,2,0,'123',0),(105,'test057','content057',0,'admin057','2022-06-21',1,2,0,'123',0),(106,'test058','content058',0,'admin058','2022-06-21',1,2,0,'123',0),(107,'test059','content059',0,'admin059','2022-06-21',1,2,0,'123',0),(108,'test060','content060',0,'admin060','2022-06-21',1,2,0,'123',0),(109,'test061','content061',0,'admin061','2022-06-21',1,2,0,'123',0),(110,'test062','content062',0,'admin062','2022-06-21',1,2,0,'123',0),(111,'test063','content063',0,'admin063','2022-06-21',1,2,0,'123',0),(112,'test064','content064',0,'admin064','2022-06-21',1,2,0,'123',0),(113,'test065','content065',0,'admin065','2022-06-21',1,2,0,'123',0),(114,'test066','content066',0,'admin066','2022-06-21',1,2,0,'123',0),(115,'test067','content067',0,'admin067','2022-06-21',1,2,0,'123',0),(116,'test068','content068',0,'admin068','2022-06-21',1,2,0,'123',0),(117,'test069','content069',0,'admin069','2022-06-21',1,2,0,'123',0),(118,'test070','content070',0,'admin070','2022-06-21',1,2,0,'123',0),(119,'test071','content071',0,'admin071','2022-06-21',1,2,0,'123',0),(120,'test072','content072',0,'admin072','2022-06-21',1,2,0,'123',0),(121,'test073','content073',0,'admin073','2022-06-21',1,2,0,'123',0),(122,'test074','content074',0,'admin074','2022-06-21',1,2,0,'123',0),(123,'test075','content075',0,'admin075','2022-06-21',1,2,0,'123',0),(124,'test076','content076',0,'admin076','2022-06-21',1,2,0,'123',0),(125,'test077','content077',0,'admin077','2022-06-21',1,2,0,'123',0),(126,'test078','content078',0,'admin078','2022-06-21',1,2,0,'123',0),(127,'test079','content079',0,'admin079','2022-06-21',1,2,0,'123',0),(128,'test080','content080',0,'admin080','2022-06-21',1,2,0,'123',0),(129,'test081','content081',0,'admin081','2022-06-21',1,2,0,'123',0),(130,'test082','content082',0,'admin082','2022-06-21',1,2,0,'123',0),(131,'test083','content083',0,'admin083','2022-06-21',1,2,0,'123',0),(132,'test084','content084',0,'admin084','2022-06-21',1,2,0,'123',0),(133,'test085','content085',0,'admin085','2022-06-21',1,2,0,'123',0),(134,'test086','content086',0,'admin086','2022-06-21',1,2,0,'123',0),(135,'test087','content087',0,'admin087','2022-06-21',1,2,0,'123',0),(136,'test088','content088',0,'admin088','2022-06-21',1,2,0,'123',0),(137,'test089','content089',0,'admin089','2022-06-21',1,2,0,'123',0),(138,'test090','content090',0,'admin090','2022-06-21',1,2,0,'123',0),(139,'test091','content091',0,'admin091','2022-06-21',1,2,0,'123',0),(140,'test092','content092',0,'admin092','2022-06-21',1,2,0,'123',0),(141,'test093','content093',0,'admin093','2022-06-21',1,2,0,'123',0),(142,'test094','content094',0,'admin094','2022-06-21',1,2,0,'123',0),(143,'test095','content095',0,'admin095','2022-06-21',1,2,0,'123',0),(144,'test096','content096',0,'admin096','2022-06-21',1,2,0,'123',0),(145,'test097','content097',0,'admin097','2022-06-21',1,2,0,'123',0),(146,'test098','content098',0,'admin098','2022-06-21',1,2,0,'123',0),(147,'test099','content099',0,'admin099','2022-06-21',1,2,0,'123',0),(148,'test0100','content0100',0,'admin0100','2022-06-21',1,2,0,'123',0),(149,'test0101','content0101',0,'admin0101','2022-06-21',1,2,0,'123',0),(150,'test0102','content0102',0,'admin0102','2022-06-21',1,2,0,'123',0),(151,'test0103','content0103',0,'admin0103','2022-06-21',1,2,0,'123',0),(152,'test0104','content0104',0,'admin0104','2022-06-21',1,2,0,'123',0),(153,'test0105','content0105',0,'admin0105','2022-06-21',1,2,0,'123',0),(154,'test0106','content0106',0,'admin0106','2022-06-21',1,2,0,'123',0),(155,'test0107','content0107',0,'admin0107','2022-06-21',1,2,0,'123',0),(156,'test0108','content0108',0,'admin0108','2022-06-21',1,2,0,'123',0),(157,'test0109','content0109',0,'admin0109','2022-06-21',1,2,0,'123',0),(158,'test0110','content0110',0,'admin0110','2022-06-21',1,2,0,'123',0),(159,'test0111','content0111',0,'admin0111','2022-06-21',1,2,0,'123',0),(160,'test0112','content0112',0,'admin0112','2022-06-21',1,2,0,'123',0),(161,'test0113','content0113',0,'admin0113','2022-06-21',1,2,0,'123',0),(162,'test0114','content0114',0,'admin0114','2022-06-21',1,2,0,'123',0),(163,'test0115','content0115',0,'admin0115','2022-06-21',1,2,0,'123',0),(164,'test0116','content0116',0,'admin0116','2022-06-21',1,2,0,'123',0),(165,'test0117','content0117',0,'admin0117','2022-06-21',1,2,0,'123',0),(166,'test0118','content0118',0,'admin0118','2022-06-21',1,2,0,'123',0),(167,'test0119','content0119',0,'admin0119','2022-06-21',1,2,0,'123',0),(168,'test0120','content0120',0,'admin0120','2022-06-21',1,2,0,'123',0),(169,'test0121','content0121',0,'admin0121','2022-06-21',1,2,0,'123',0),(170,'test0122','content0122',0,'admin0122','2022-06-21',1,2,0,'123',0),(171,'test0123','content0123',0,'admin0123','2022-06-21',1,2,0,'123',0),(172,'test0124','content0124',0,'admin0124','2022-06-21',1,2,0,'123',0),(173,'test0125','content0125',0,'admin0125','2022-06-21',1,2,0,'123',0),(174,'test0126','content0126',0,'admin0126','2022-06-21',1,2,0,'123',0),(175,'test0127','content0127',0,'admin0127','2022-06-21',1,2,0,'123',0),(176,'test0128','content0128',0,'admin0128','2022-06-21',1,2,0,'123',0),(177,'test0129','content0129',0,'admin0129','2022-06-21',1,2,0,'123',0),(178,'test0130','content0130',0,'admin0130','2022-06-21',1,2,0,'123',0),(179,'test0131','content0131',0,'admin0131','2022-06-21',1,2,0,'123',0),(180,'test0132','content0132',0,'admin0132','2022-06-21',1,2,0,'123',0),(181,'test0133','content0133',0,'admin0133','2022-06-21',1,2,0,'123',0),(182,'test0134','content0134',0,'admin0134','2022-06-21',1,2,0,'123',0),(183,'test0135','content0135',0,'admin0135','2022-06-21',1,2,0,'123',0),(184,'test0136','content0136',0,'admin0136','2022-06-21',1,2,0,'123',0),(185,'test0137','content0137',0,'admin0137','2022-06-21',1,2,0,'123',0),(186,'test0138','content0138',0,'admin0138','2022-06-21',1,2,0,'123',0),(187,'test0139','content0139',0,'admin0139','2022-06-21',1,2,0,'123',0),(188,'test0140','content0140',0,'admin0140','2022-06-21',1,2,0,'123',0),(189,'test0141','content0141',0,'admin0141','2022-06-21',1,2,0,'123',0),(190,'test0142','content0142',0,'admin0142','2022-06-21',1,2,0,'123',0),(191,'test0143','content0143',0,'admin0143','2022-06-21',1,2,0,'123',0),(192,'test0144','content0144',0,'admin0144','2022-06-21',1,2,0,'123',0),(193,'test0145','content0145',0,'admin0145','2022-06-21',1,2,0,'123',0),(194,'test0146','content0146',0,'admin0146','2022-06-21',1,2,0,'123',0),(195,'test0147','content0147',0,'admin0147','2022-06-21',1,2,0,'123',0),(196,'test0148','content0148',0,'admin0148','2022-06-21',1,2,0,'123',0),(197,'test0149','content0149',0,'admin0149','2022-06-21',1,2,0,'123',0),(198,'test0150','content0150',0,'admin0150','2022-06-21',1,2,0,'123',0),(199,'test0151','content0151',0,'admin0151','2022-06-21',1,2,0,'123',0),(200,'test0152','content0152',0,'admin0152','2022-06-21',1,2,0,'123',0),(201,'test0153','content0153',0,'admin0153','2022-06-21',1,2,0,'123',0),(202,'test0154','content0154',0,'admin0154','2022-06-21',1,2,0,'123',0),(203,'test0155','content0155',0,'admin0155','2022-06-21',1,2,0,'123',0),(204,'test0156','content0156',0,'admin0156','2022-06-21',1,2,0,'123',0),(205,'test0157','content0157',0,'admin0157','2022-06-21',1,2,0,'123',0),(206,'test0158','content0158',0,'admin0158','2022-06-21',1,2,0,'123',0),(207,'test0159','content0159',0,'admin0159','2022-06-21',1,2,0,'123',0),(208,'test0160','content0160',1,'admin0160','2022-06-21',1,2,0,'123',0),(209,'test0161','content0161',0,'admin0161','2022-06-21',1,2,0,'123',0),(210,'test0162','content0162',0,'admin0162','2022-06-21',1,2,0,'123',0),(211,'test0163','content0163',0,'admin0163','2022-06-21',1,2,0,'123',0),(212,'test0164','content0164',0,'admin0164','2022-06-21',1,2,0,'123',0),(213,'test0165','content0165',0,'admin0165','2022-06-21',1,2,0,'123',0),(214,'test0166','content0166',0,'admin0166','2022-06-21',1,2,0,'123',0),(215,'test0167','content0167',0,'admin0167','2022-06-21',1,2,0,'123',0),(216,'test0168','content0168',0,'admin0168','2022-06-21',1,2,0,'123',0),(217,'test0169','content0169',0,'admin0169','2022-06-21',1,2,0,'123',0),(218,'test0170','content0170',0,'admin0170','2022-06-21',1,2,0,'123',0),(219,'test0171','content0171',0,'admin0171','2022-06-21',1,2,0,'123',0),(220,'test0172','content0172',0,'admin0172','2022-06-21',1,2,0,'123',0),(221,'test0173','content0173',0,'admin0173','2022-06-21',1,2,0,'123',0),(222,'test0174','content0174',0,'admin0174','2022-06-21',1,2,0,'123',0),(223,'test0175','content0175',0,'admin0175','2022-06-21',1,2,0,'123',0),(224,'test0176','content0176',0,'admin0176','2022-06-21',1,2,0,'123',0),(225,'test0177','content0177',0,'admin0177','2022-06-21',1,2,0,'123',0),(226,'test0178','content0178',0,'admin0178','2022-06-21',1,2,0,'123',0),(227,'test0179','content0179',0,'admin0179','2022-06-21',1,2,0,'123',0),(228,'test0180','content0180',0,'admin0180','2022-06-21',1,2,0,'123',0),(229,'test0181','content0181',0,'admin0181','2022-06-21',1,2,0,'123',0),(230,'test0182','content0182',0,'admin0182','2022-06-21',1,2,0,'123',0),(231,'test0183','content0183',0,'admin0183','2022-06-21',1,2,0,'123',0),(232,'test0184','content0184',0,'admin0184','2022-06-21',1,2,0,'123',0),(233,'test0185','content0185',0,'admin0185','2022-06-21',1,2,0,'123',0),(234,'test0186','content0186',0,'admin0186','2022-06-21',1,2,0,'123',0),(235,'test0187','content0187',0,'admin0187','2022-06-21',1,2,0,'123',0),(236,'test0188','content0188',0,'admin0188','2022-06-21',1,2,0,'123',0),(237,'test0189','content0189',0,'admin0189','2022-06-21',1,2,0,'123',0),(238,'test0190','content0190',0,'admin0190','2022-06-21',1,2,0,'123',0),(239,'test0191','content0191',1,'admin0191','2022-06-21',1,2,0,'123',0),(240,'test0192','content0192',0,'admin0192','2022-06-21',1,2,0,'123',0),(241,'test0193','content0193',0,'admin0193','2022-06-21',1,2,0,'123',0),(242,'test0194','content0194',1,'admin0194','2022-06-21',1,2,0,'123',0),(243,'test0195','content0195',6,'admin0195','2022-06-21',1,2,1,'123',0),(244,'test0196','content0196',3,'admin0196','2022-06-21',1,2,0,'123',0),(245,'test0197','content0197',0,'admin0197','2022-06-21',1,2,0,'123',0),(246,'test0198','content0198',0,'admin0198','2022-06-21',1,2,0,'123',0),(247,'test0199','content0199',1,'admin0199','2022-06-21',1,2,0,'123',0),(248,'test0200','content0200',4,'admin0200','2022-06-21',1,2,0,'123',0);
/*!40000 ALTER TABLE `board2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'콩쥐팥쥐','전래동화',20000,'1800-05-12'),(2,'흥부놀부','작가미상',15000,'1919-11-05');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `bid` char(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cday` date DEFAULT NULL,
  `ccontent` char(200) DEFAULT NULL,
  `cname` char(50) DEFAULT NULL,
  `cpw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('7',1,'2022-06-15','123','123','1234'),('7',2,'2022-06-15','bbb','bbb','123'),('7',3,'2022-06-15','aaa','aaa','123'),('7',4,'2022-06-15','sadsad','sda','123'),('7',5,'2022-06-15','23123','sdasd','123'),('7',6,'2022-06-15','sda','1233','231'),('7',7,'2022-06-15','123123123','123','213'),('7',8,'2022-06-15','12312','23123','3123'),('7',9,'2022-06-15','sadsad','123123','123'),('12',10,'2022-06-15','asdasdd','sadsadd','123'),('12',12,'2022-06-15','12312','123','123'),('11',15,'2022-06-15','222','123','123'),('11',16,'2022-06-15','222','123','123'),('4',22,'2022-06-15','222','222','222'),('3',28,'2022-06-15','123','123','123'),('1',34,'2022-06-15','dd','dd','dd'),('1',35,'2022-06-15','312','12312','a'),('1',36,'2022-06-15','123','123','22'),('15',37,'2022-06-15','dddd','ddd','123'),('15',38,'2022-06-15','11123','1133123','11'),('15',39,'2022-06-15','3123213','12312','3123'),('9',40,'2022-06-16','ㅁㄴㅇ','ㅁㄴㅇ','dd'),('16',41,'2022-06-16','dd','dd','dd'),('7',42,'2022-06-16','ㄴㅇㄴㅇ','ㄴㄴㅇ','12'),('9',44,'2022-06-16','ㄴㄴㄴ','ㄴㄴㄴ','ss'),('9',45,'2022-06-16','ㅎㅎ','ㅎㅎ','123'),('9',46,'2022-06-16','ㅇㅇ','ㅇㅇ','dddd'),('9',47,'2022-06-16','ㅁㄴ','ㅁㄴ','123'),('10',48,'2022-06-16','ㅎㅗ','ㅗ','gg'),('4',49,'2022-06-16','ㅋㅋㅋㅋ','ㅋㅋ','zzz'),('8',50,'2022-06-16','ㅎㅎ222ㅋㅋㅋㅋㅋ','ㅎㅎㅎ','123'),('15',51,'2022-06-16','ㅎㅎㅎㅎㅎㅎ','ㅎㅎㅎ','123'),('13',52,'2022-06-16','ㅎㅎ','ㅎㅎ','123'),('13',53,'2022-06-16','ㅋㅋ','ㅋㅋ','123'),('8',54,'2022-06-16','ㅎㅎㅎㅎ','ㅎㅎㅎㅎ','gg'),('4',55,'2022-06-17','gg','gg','gg'),('6',57,'2022-06-21','테니스 좋죠','gg','123'),('243',58,'2022-06-21','gg','gg','123'),('243',59,'2022-06-21','zz','zz','zz'),('248',60,'2022-06-21','dd','sa','22'),('244',61,'2022-06-21','dsad','asdsa','123'),('248',62,'2022-06-21','123','123','123');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gesipan`
--

DROP TABLE IF EXISTS `gesipan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gesipan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '0',
  `readnum` int(11) NOT NULL DEFAULT 0,
  `writeday` date NOT NULL DEFAULT '0000-00-00',
  `pw` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gesipan`
--

LOCK TABLES `gesipan` WRITE;
/*!40000 ALTER TABLE `gesipan` DISABLE KEYS */;
INSERT INTO `gesipan` VALUES (5,'123123','12312','3213123','123132',1,'2022-06-17','213123'),(6,'123123123','123','1231231','123',1,'2022-06-17','23123'),(7,'123','123','비번 123','123',2,'2022-06-17','123'),(8,'dd','ddd','dd','dd',1,'2022-06-17','dd'),(9,'123','123','비번123비번123비번123비번123비번123비번123\r\n비번123\r\n비번123비번123\r\n비번123\r\n비번123\r\n\r\n\r\n\r\n\r\n비번123\r\n비번123\r\n\r\n\r\n비번123\r\n비번123\r\n비번123\r\n비번123\r\n','123',2,'2022-06-17','123'),(10,'123123','123123','ㅁㄴㅇㅁㄴㅇㄴㅁㅇㄴㅁㅇ\r\nㄴㅁㅇ\r\n\r\nㄴㅁㅇ\r\nㄴㅇ\r\nㅁㄴㅇ\r\nㅁㄴ\r\nㅇㄴ\r\nㅁㅇ\r\nㅁㄴㅇ\r\n\r\nㄴㅁㅇ','123',1,'2022-06-17','123');
/*!40000 ALTER TABLE `gesipan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_1`
--

DROP TABLE IF EXISTS `member_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(10) DEFAULT NULL,
  `name` char(10) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  `postad` char(50) NOT NULL,
  `address` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_1`
--

LOCK TABLES `member_1` WRITE;
/*!40000 ALTER TABLE `member_1` DISABLE KEYS */;
INSERT INTO `member_1` VALUES (1,'kay4204','동그리','1234','010-4440-4204','10364','경기 고양시 일산동구 호수로 688B동 1006호'),(31,'user01','동그리옹','1234','010-4440-4024','10301','경기 고양시 일산동구 애니골길 15-30420호');
/*!40000 ALTER TABLE `member_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(10) DEFAULT NULL,
  `title` char(10) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `content` text DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (11,'dfgdfg','gdf','2022-06-24',1,'gdg','c2.png');
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-29 12:03:25
