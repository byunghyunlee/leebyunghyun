-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: edu
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL COMMENT '서버에 저장되는 한글명이 아닌 파일명',
  `real_file_name` varchar(255) DEFAULT NULL,
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`),
  CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물첨부파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_attach`
--

LOCK TABLES `tbl_attach` WRITE;
/*!40000 ALTER TABLE `tbl_attach` DISABLE KEYS */;
INSERT INTO `tbl_attach` VALUES ('03079332-703d-46f0-a8ca-d52abe4f8083.bmp','test.bmp',100,'2021-01-13 02:20:07'),('50f4ed3e-668e-4aa1-8490-279521b87c45.png','top_logo.png',99,'2021-01-13 02:10:14'),('d59ec2eb-0e42-4a92-b51d-80d098c1f814.jpg','date.jpg',114,'2021-01-13 18:29:44'),('fc2a9de3-8b1a-46ca-998f-88a4eaa2f8be.jpg','slide_01.jpg',99,'2021-01-13 02:10:14');
/*!40000 ALTER TABLE `tbl_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물일련번호, AI(Auto Increament)일련번호를 자동증가기',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판타입:tbl_board_type테이블의 값을 가져다 사용.\n\n\n',
  `title` varchar(255) DEFAULT NULL COMMENT '게시물제',
  `content` text DEFAULT NULL COMMENT '게시물내',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글조회',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글개',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='게시물관리\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board`
--

LOCK TABLES `tbl_board` WRITE;
/*!40000 ALTER TABLE `tbl_board` DISABLE KEYS */;
INSERT INTO `tbl_board` VALUES (1,'gallery','겔러리로 이동============','1번째 게시물 내용 입니다.','admin',19,0,'2020-12-23 03:20:53','2021-01-26 05:01:04'),(2,'notice','갤러리 수정 수정','게시물 내용 입니다.','admin',5,0,'2020-12-23 05:59:27','2021-01-22 08:17:24'),(3,'notice','3 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(4,'notice','4 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(5,'notice','5 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(6,'notice','6 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(7,'notice','7 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(8,'notice','8 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(9,'notice','9 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(10,'notice','10 번째 게시물 입니다.','게시물 내용 입니다.','admin',40,14,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(11,'notice','11 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(12,'notice','12 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(13,'notice','13 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(14,'notice','14 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(15,'notice','15 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(16,'notice','16 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(17,'notice','17 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(18,'notice','18 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(19,'notice','19 번째 수정 게시물 입니다.','게시물&nbsp;숮정 입니다.ㅇㄶㄹㄴㅇ','admin',3,0,'2020-12-23 05:59:27','2020-12-29 07:10:49'),(20,'notice','20 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(21,'notice','21 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(22,'notice','22 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(23,'notice','23 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(24,'notice','24 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(25,'notice','25 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(26,'notice','26 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(27,'notice','27 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(28,'notice','28 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(29,'notice','29 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(30,'notice','30 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(31,'notice','31 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(32,'notice','32 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(33,'notice','33 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(34,'notice','34 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(35,'notice','35 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(36,'notice','36 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(37,'notice','37 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(38,'notice','38 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(39,'notice','39 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(40,'notice','40 번째 게시물 입니다.','게시물 내용 입니다.','admin',1,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(41,'notice','41 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(42,'notice','42 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(43,'notice','43 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(44,'notice','44 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(45,'notice','45 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(46,'notice','46 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(47,'notice','47 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(48,'notice','48 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(49,'notice','49 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(50,'notice','50 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(51,'notice','51 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(52,'notice','52 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(53,'notice','53 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(54,'notice','54 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(55,'notice','55 번째 게시물 입니다.','게시물 내용 입니다.','admin',6,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(56,'notice','56 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(57,'notice','57 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(58,'notice','58 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(59,'notice','59 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(60,'notice','60 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(61,'notice','61 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(62,'notice','62 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(63,'notice','63 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(64,'notice','64 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(65,'notice','65 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(66,'notice','66 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(67,'notice','67 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(68,'notice','68 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(69,'notice','69 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(70,'notice','70 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(71,'notice','71 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(72,'notice','72 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(73,'notice','73 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(74,'notice','74 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(75,'notice','75 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(76,'notice','76 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(77,'notice','77 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(78,'notice','78 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(79,'notice','79 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(80,'notice','80 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(81,'notice','81 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(82,'notice','82 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(83,'notice','83 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(84,'notice','84 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(85,'notice','85 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(86,'notice','86 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(87,'notice','87 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(88,'notice','88 번째 게시물 입니다.','게시물 내용 입니다.','admin',2,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(89,'notice','89 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(90,'notice','90 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(91,'notice','91 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(92,'notice','92 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(93,'notice','93 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(94,'notice','94 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(95,'notice','95 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(96,'notice','96 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(97,'notice','97 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(98,'notice','98 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:27','2020-12-23 05:59:27'),(99,'notice','99 번째 게시물 입니다.','게시물 내용 입니다.','admin',20,0,'2020-12-23 05:59:28','2021-01-13 02:10:14'),(100,'notice','100 번째 게시물 입니다.','게시물 내용 입니다.','admin',10,0,'2020-12-23 05:59:28','2021-01-13 02:20:07'),(101,'notice','101 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(102,'notice','102 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(103,'notice','103 번째 게시물 입니다.','게시물 내용 입니다.','admin',12,1,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(104,'notice','104 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(105,'notice','105 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(106,'notice','106 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(107,'notice','107 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(108,'notice','108 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(109,'notice','109 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(110,'notice','110 번째 게시물 입니다.','게시물 내용 입니다.','admin',0,0,'2020-12-23 05:59:28','2020-12-23 05:59:28'),(113,'notice','글 수정입니다.','<p><span style=\'font-family: \"궁서\";\'>안녕하세요.</span></p><p><span style=\'font-family: \"궁서\";\'>궁서체로 수정합니다.</span><span>﻿</span><br></p>','작성자',25,0,'2020-12-29 05:59:06','2020-12-29 07:10:14'),(114,'notice','글입력변호출력','테스트','작성자',130,3,'2020-12-30 07:01:16','2021-01-13 18:29:44'),(120,NULL,'갤ㄹ러리게시글임돵~','<p><br></p>','관리관리',0,0,'2021-01-22 08:12:34','2021-01-22 08:12:34'),(121,NULL,'갤러리','<p>갤러리<br></p>','관리자',0,0,'2021-01-25 00:27:15','2021-01-25 00:27:15');
/*!40000 ALTER TABLE `tbl_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_board_type` (
  `board_type` varchar(45) NOT NULL COMMENT '게시판타입:예,  notice, gallery, qna\n\n\n',
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판 이름\n\n\n',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 출력 순서\n\n\n',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판생성:게시판타입생성';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_board_type`
--

LOCK TABLES `tbl_board_type` WRITE;
/*!40000 ALTER TABLE `tbl_board_type` DISABLE KEYS */;
INSERT INTO `tbl_board_type` VALUES ('gallery','갤러리',2),('notice','공지사항',1);
/*!40000 ALTER TABLE `tbl_board_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원로그인암호\n',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원이',
  `email` varchar(255) DEFAULT NULL COMMENT '회원이메',
  `point` int(11) DEFAULT 0 COMMENT '회',
  `enabled` int(1) DEFAULT 1 COMMENT '인증값(Authentication), 활동가능한 회원여부, 0로그인불가능, 1로그인 가능',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값(Authority), 2가지 레벨, ROLE_ADMIN(관리자), ROLE_USER(사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자,1970년부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원관리테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES ('admin','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','최고관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 03:02:48','2021-01-22 05:35:18'),('dummy_1','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_10','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_100','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_101','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_102','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_103','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_104','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_105','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_106','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_107','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_108','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_109','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_11','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_110','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_12','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_13','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_14','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_15','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_16','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_17','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_18','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_19','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_2','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_20','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_21','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_22','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_23','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_24','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_25','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_26','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_27','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_28','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_29','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_3','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_30','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_31','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_32','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_33','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_34','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_35','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_36','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_37','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_38','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_39','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_4','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_40','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_41','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_42','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_43','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_44','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_45','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_46','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_47','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_48','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_49','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_5','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_50','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_51','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_52','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_53','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_54','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_55','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_56','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_57','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_58','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_59','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_6','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_60','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_61','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_62','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_63','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_64','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_65','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_66','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_67','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_68','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_69','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_7','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_70','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_71','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_72','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_73','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_74','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_75','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_76','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_77','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_78','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_79','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_8','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_80','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_81','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_82','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_83','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_84','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_85','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_86','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_87','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_88','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_89','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_9','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_90','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_91','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_92','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_93','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_94','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2021-01-12 07:27:41'),('dummy_95','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_96','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_97','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_98','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52'),('dummy_99','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자','admin@abc.com',0,1,'ROLE_ADMIN','2020-12-23 05:51:52','2020-12-23 05:51:52');
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글의 일련번',
  `bno` int(11) NOT NULL COMMENT '부모게시물의 일련번',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내',
  `replyer` varchar(45) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`),
  CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='댓글관리';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reply`
--

LOCK TABLES `tbl_reply` WRITE;
/*!40000 ALTER TABLE `tbl_reply` DISABLE KEYS */;
INSERT INTO `tbl_reply` VALUES (1,10,'댓글 입력 테스트','관리자','2021-01-05 06:25:36','2021-01-05 06:25:36'),(3,10,'댓글 -------트','관리자','2021-01-06 05:08:07','2021-01-06 05:08:07'),(4,10,'댓글 -------트','관리자','2021-01-06 05:08:28','2021-01-06 05:08:28'),(6,10,'댓글 -------트','관리자','2021-01-06 05:12:41','2021-01-06 05:12:41'),(8,10,'댓글=======트','관리자','2021-01-06 08:03:20','2021-01-06 08:03:20'),(9,10,'댓글=======트','관리자','2021-01-06 08:03:51','2021-01-06 08:03:51'),(10,10,'댓글=======트','관리자','2021-01-06 08:04:33','2021-01-06 08:04:33'),(11,10,'댓글=======트','관리자','2021-01-06 08:05:16','2021-01-06 08:05:16'),(12,10,'댓글=======트','관리자','2021-01-06 08:05:17','2021-01-06 08:05:17'),(13,10,'댓글=======트','관리자','2021-01-06 08:05:48','2021-01-06 08:05:48'),(14,10,'댓글=======트','관리자','2021-01-06 08:05:49','2021-01-06 08:05:49'),(15,10,'댓글=======트','관리자','2021-01-06 08:05:50','2021-01-06 08:05:50'),(16,10,'댓글=======트','관리자','2021-01-06 08:05:50','2021-01-06 08:05:50'),(18,10,'진짜댓글입력','홍길동','2021-01-07 01:38:05','2021-01-07 01:38:05'),(31,103,'댓글 수정 테스트','asdfsadf','2021-01-07 05:08:02','2021-01-07 05:18:35'),(36,114,'a','a','2021-01-13 18:12:33','2021-01-13 18:12:33'),(37,114,'b','b','2021-01-13 18:12:37','2021-01-13 18:12:37'),(38,114,'c','c','2021-01-13 18:12:43','2021-01-13 18:27:56');
/*!40000 ALTER TABLE `tbl_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'edu'
--
/*!50003 DROP PROCEDURE IF EXISTS `dummyBoard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard`(IN p_loop int)
BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,' 번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt +1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummyMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember`(IN p_loop int)
BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 14:54:02
