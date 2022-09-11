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
-- Table structure for table `onoff`
--

DROP TABLE IF EXISTS `onoff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `onoff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `onoff` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `onoff`
--

LOCK TABLES `onoff` WRITE;
/*!40000 ALTER TABLE `onoff` DISABLE KEYS */;
INSERT INTO `onoff` VALUES (1,1,'on'),(2,2,'on'),(3,3,'on'),(6,4,'on'),(7,5,'on'),(8,6,'on'),(9,7,'on'),(10,8,'on'),(11,9,'on'),(12,10,'on'),(13,11,'off'),(14,12,'on'),(15,13,'off'),(16,14,'off'),(17,15,'off'),(18,16,'on'),(19,17,'off'),(20,18,'on'),(21,19,'on'),(22,20,'on'),(23,21,'on'),(24,22,'on'),(25,23,'on'),(26,24,'on'),(27,1,'off'),(28,2,'off'),(29,3,'off'),(30,4,'off'),(31,5,'off'),(32,6,'off'),(33,7,'off'),(34,8,'off'),(35,9,'off'),(36,10,'off'),(37,21,'off'),(38,22,'off'),(39,23,'off'),(40,24,'off'),(41,25,'on'),(42,25,'off'),(43,26,'on'),(44,26,'off'),(45,27,'on'),(46,27,'off'),(47,28,'on'),(48,28,'off'),(49,29,'on'),(50,29,'off'),(51,30,'on'),(52,30,'off'),(53,31,'on'),(54,31,'off'),(55,32,'on'),(56,32,'off'),(57,33,'on'),(58,33,'off'),(59,34,'on'),(60,34,'off'),(61,35,'on'),(62,35,'off'),(63,36,'on'),(64,36,'off'),(65,37,'on'),(66,37,'off'),(67,38,'on'),(68,38,'off'),(69,39,'on'),(70,39,'off'),(71,40,'on'),(72,40,'off'),(73,41,'on'),(74,41,'off'),(75,42,'on'),(76,42,'off'),(77,43,'on'),(78,43,'off');
/*!40000 ALTER TABLE `onoff` ENABLE KEYS */;
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
