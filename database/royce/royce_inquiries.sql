-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: royce
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `inquiries`
--

DROP TABLE IF EXISTS `inquiries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquiries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiries`
--

LOCK TABLES `inquiries` WRITE;
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
INSERT INTO `inquiries` VALUES (1,'name','eqw@sda.com','Hello? it\'s me!','2022-09-07 05:24:34'),(2,'name','eqw@sda.com','Hello? it\'s me!dd','2022-09-07 05:24:39'),(3,'dsads','sdaW@dsa.com','dsadasda','2022-09-07 05:40:40'),(4,'dsads','sdaW@dsa.com','dsadasda','2022-09-07 05:40:44'),(5,'dsads','sdaW@dsa.com','dsadasda','2022-09-07 05:40:48'),(6,'dsads','sdaW@dsa.com','dsadasda','2022-09-07 05:40:49'),(7,'dsads','sdaW@dsa.com','dsadasda','2022-09-07 05:40:49'),(8,'qweweq','qwe@eqweqw.com','dsadsadas','2022-09-07 05:41:51'),(9,'qweweq','qwe@eqweqw.com','dsadsadas','2022-09-07 05:41:52'),(10,'qweweq','qwe@eqweqw.com','dsadsadas','2022-09-07 05:41:53'),(11,'qweweq','qwe@eqweqw.com','dsadsadas','2022-09-07 05:41:53'),(12,'qweweq','qwe@eqweqw.com','dsadsadas','2022-09-07 05:41:54'),(13,'qweweq','qwe@eqweqw.com','dsadsadas','2022-09-07 05:41:55'),(14,'assdasd','sada@asd.com','sadasdasd','2022-09-07 05:45:30'),(15,'assdasd','sada@asd.com','sadasdasd','2022-09-07 05:45:30'),(16,'assdasd','sada@asd.com','sadasdasd','2022-09-07 05:45:30'),(17,'assdasd','sada@asd.com','sadasdasd','2022-09-07 05:45:33'),(18,'assdasd','sada@asd.com','sadasdasd','2022-09-07 05:48:58'),(19,'name','name@name.com','test test','2022-09-07 05:52:38'),(20,'name','name@name.com','test test','2022-09-07 05:57:30'),(21,'name','345678@afop.com','dsasdas','2022-09-07 06:18:07'),(22,'name','345678@afop.com','dsa','2022-09-07 06:28:52'),(23,'name','dsad@dsad.com','sdadsad','2022-09-07 06:31:26'),(24,'name','sada@sda.com','dd','2022-09-07 06:31:55'),(25,'name','sada@sda.com','dd','2022-09-07 06:43:17'),(26,'dsada','sdads@sda.com','sadadsa','2022-09-07 06:48:36'),(27,'dsada','sdads@sda.com','sadadsa','2022-09-07 06:48:36'),(28,'dsada','sdads@sda.com','sadadsa','2022-09-07 06:48:39'),(29,'dsada','sdads@sda.com','sadadsa','2022-09-07 06:48:39'),(30,'dsadad','sdadds@sda.com','sadadsa','2022-09-07 06:48:53'),(31,'dsadad','sdadds@sda.com','sadadsa','2022-09-07 06:48:54'),(32,'name','345678@afop.com','dsadas','2022-09-07 06:49:55'),(33,'name','34567a8@afop.com','dsadas','2022-09-07 06:50:06'),(34,'sadsadd','sad@sda.com','sadsadasdsad','2022-09-07 06:50:58'),(35,'dsadsa','dsad@dsad.com','dassdasdas','2022-09-07 06:51:11'),(36,'feature','sada@sda.com','dsadsad','2022-09-07 06:51:40'),(37,'dsadsads','ad@dsa.com','dasfas','2022-09-07 06:52:09'),(38,'dsadasd','sadsad@dsa.com','asdqwdafg','2022-09-07 07:15:25'),(39,'dsad','sad@dsa.com','sadsadsa','2022-09-07 07:20:09'),(40,'dd','dd@dd.com','dddd','2022-09-07 07:40:40'),(41,'sdad','dsad@dsad.com','sdadsad','2022-09-07 07:41:46'),(42,'dsadasd','sadsa@dsad.com','sadasdasd','2022-09-07 08:35:21'),(43,'name','sada@sda.com','test test','2022-09-08 03:54:38'),(44,'kjy','12345@naver.com','i love you','2022-09-08 05:18:20'),(45,'kjy','12345@naver.com','i love you','2022-09-08 05:18:22'),(46,'kjy','jinyoung@gmail.com','i love u','2022-09-08 05:50:34');
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-10 14:28:15
