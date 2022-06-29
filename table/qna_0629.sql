-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: qna
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
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qna` (
  `grp` int(11) NOT NULL DEFAULT 0,
  `dep` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content` text DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `writeday` date DEFAULT NULL,
  `readnum` int(11) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `pwd` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,1,18,'1번',' 1번','1번글','2022-06-20',0,0,'qq'),(1,2,21,'11ㅂ','11','11','2022-06-20',0,0,''),(2,1,22,'ㅎㅇ',' ㅎㅇ','2번글','2022-06-20',0,0,'dg'),(2,2,23,'22ㅂ','22','22','2022-06-20',0,0,''),(1,2,24,'a','aa','11aaa','2022-06-20',0,1,''),(1,2,25,'b','b','22bb','2022-06-20',0,1,''),(1,3,26,'22','22','11-2','2022-06-20',0,0,''),(1,3,27,'1122','1212','1122','2022-06-20',0,1,''),(1,3,28,'123','123','123','2022-06-20',0,1,''),(1,4,29,'33','33','333','2022-06-20',0,0,''),(1,5,31,'4','444','44','2022-06-20',0,0,''),(2,6,32,'22','222','22-2','2022-06-20',0,0,''),(2,7,33,'22-3','22','22-3','2022-06-20',0,0,''),(2,2,34,'dd','dd','dd','2022-06-20',0,1,''),(2,2,35,'dd1','dd1','dd1','2022-06-20',0,1,''),(2,6,36,'ddd2','d2','ddd2','2022-06-20',0,1,''),(2,7,37,'ddd','dddd','ddddddd','2022-06-20',0,1,''),(1,8,38,'ㅎㅎ','ㅎㅎ','ㅎㅎ','2022-06-20',0,0,''),(1,8,39,'ㅎㅎ','ㅎㅎ','ㅎㅎ','2022-06-20',0,1,''),(2,9,40,'ㅋㅋ','ㅋㅋ','ㅋㅋㅋ','2022-06-20',0,0,''),(2,9,41,'ㅎㅎ','ㅎㅎ','ㅎㅎ','2022-06-20',0,1,''),(1,10,42,'','','','2022-06-20',0,0,''),(3,1,43,'3번글',' 3번','3번','2022-06-20',0,0,'qqq'),(3,11,44,'3번답','3번답','3번답','2022-06-20',0,0,''),(3,11,45,'3번댓','3번댓','3번댓','2022-06-20',0,1,''),(1,10,46,'z','z','z','2022-06-21',0,1,'');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-29 12:03:37
