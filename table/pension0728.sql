-- MariaDB dump 10.19  Distrib 10.5.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pension
-- ------------------------------------------------------
-- Server version	10.5.11-MariaDB

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `userid` char(10) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (10,'1','1','1asdfadsfadsfadsfadsf','a',23,'2022-07-19'),(11,'1',NULL,'1','1',14,'2022-07-19'),(15,'2','2','444444','guest',10,'2022-07-19'),(16,'4','3','4','guest',6,'2022-07-19'),(18,'1','1','112121212','guest',3,'2022-07-19');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gongji`
--

DROP TABLE IF EXISTS `gongji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gongji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `gubun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gongji`
--

LOCK TABLES `gongji` WRITE;
/*!40000 ALTER TABLE `gongji` DISABLE KEYS */;
INSERT INTO `gongji` VALUES (3,'항상공지사항항상공지사항','항상공지사항','2022-07-20',1),(4,'33','33','2022-07-20',1),(5,'1','11','2022-07-20',0),(6,'1','1','2022-07-20',0),(7,'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ','1','2022-07-20',0);
/*!40000 ALTER TABLE `gongji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(10) DEFAULT NULL,
  `name` char(10) DEFAULT NULL,
  `pwd` char(10) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'test',NULL,NULL,NULL,0,NULL,NULL),(2,'aaa','aaa','1','aaa',0,'2022-07-18','111'),(3,'a','a','1','a',0,'2022-07-18','a'),(4,'1','홍길동','1','11',0,'2022-07-18','1'),(5,'admin','관리자','1','1',0,'2022-07-20','1');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserve`
--

DROP TABLE IF EXISTS `reserve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reserve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inday` date DEFAULT NULL,
  `outday` date DEFAULT NULL,
  `userid` char(10) DEFAULT NULL,
  `bang_id` int(11) DEFAULT NULL,
  `inwon` int(11) DEFAULT NULL,
  `charcoal` int(11) DEFAULT NULL,
  `bbq` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `writeday` date DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserve`
--

LOCK TABLES `reserve` WRITE;
/*!40000 ALTER TABLE `reserve` DISABLE KEYS */;
INSERT INTO `reserve` VALUES (1,'2022-07-27','2022-07-30','1',1,3,2,3,330000,'2022-07-27',0),(5,'2022-07-19','2022-07-21','1',2,2,2,2,260000,'2022-07-27',1),(6,'2022-07-05','2022-07-07','1',2,2,2,2,260000,'2022-07-27',2),(7,'2022-07-30','2022-07-31','1',5,4,0,0,140000,'2022-07-28',3),(8,'2022-08-04','2022-08-05','1',3,4,0,0,100000,'2022-07-28',1),(9,'2022-07-28','2022-08-02','1',4,8,5,5,1030000,'2022-07-28',0),(20,'2022-07-30','2022-07-31','1',1,2,0,0,40000,'2022-07-28',1),(21,'2022-07-30','2022-07-31','1',3,4,0,0,100000,'2022-07-28',1),(22,'2022-07-28','2022-07-29','1',2,2,0,0,60000,'2022-07-28',0);
/*!40000 ALTER TABLE `reserve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `bang` char(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,2,4,40000,'자작나무','4인',0),(2,2,4,60000,'계수나무','22',0),(3,4,8,100000,'올빼미','22',0),(4,4,8,120000,'오소리','22',0),(5,4,6,140000,'은행나무','44',0),(6,4,10,150000,'사과나무','55',0);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) DEFAULT NULL,
  `userid` char(10) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `fname` char(100) DEFAULT NULL,
  `readnum` int(11) DEFAULT 0,
  `writeday` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (23,'11','1','11','13.jpg,12.jpg,',1,'2022-07-26'),(42,'1','1','1','',1,'2022-07-26');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 16:42:57
