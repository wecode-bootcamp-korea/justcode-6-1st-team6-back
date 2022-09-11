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
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(70) DEFAULT NULL,
  `latlng` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'ROECY\' Seoul Square','416, Hangang-daero, Jung-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.555611, \"lng\": 126.973511}'),(2,'ROECY\' Gwanghwamun','2nd floor, 50 Jongno 1-gil, Junghak-dong, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.574581, \"lng\": 126.979227}'),(3,'ROECY\' Euljiro','343, Samil-daero, Jung-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.56527, \"lng\": 126.987231}'),(4,'ROECY\' Gangnam Station','373, Gangnam-daero, Seocho-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.496076, \"lng\": 127.027995}'),(5,'ROECY\' Shrine','586 Gangnam-daero, Nonhyeon 1-dong, Gangnam-gu, Seoul, Republic of Korea','02-52-8238','{\"lat\": 37.506587, \"lng\": 127.053627}'),(6,'ROECY\' Hongdae','Yanghwa Mapo-gu, Seoul Metropolitan Government, 147, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.506587, \"lng\": 127.053627}'),(7,'ROECY\' Yeouido Station','Seoul Metropolitan Government Medical Center 83, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.506587, \"lng\": 127.053627}'),(8,'ROECY\' Samsung Station','507 Teheran-ro, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.507679, \"lng\": 127.05776}'),(9,'ROECY\' Sunreung','302, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.507679, \"lng\": 127.05776}'),(10,'ROECY\' Sunreung No. 2','427, Teheran-ro, Gangnam-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.506587, \"lng\": 127.053627}'),(11,'ROECY\' Sunreung No. 3','428 Seolleung-ro, Gangnam-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.507679, \"lng\": 127.05776}'),(12,'ROECY\' Yeoksam Station','142, Teheran-ro, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.499684, \"lng\": 127.034911}'),(13,'ROECY\' Yeoksam Station No. 2','14, Teheran-ro 26-gil, Gangnam-gu, Seoul, Republic of Korea','02-521-8238','{\"lat\": 37.499188, \"lng\": 127.035917}'),(14,'ROECY\' BIFC','1227-2 Munhyeon-dong, Nam-gu, Busan, Republic of Korea','02-521-8238','{\"lat\": 35.148413, \"lng\": 129.0654}'),(15,'ROECY\' Seomyeon','3rd floor, Seojeon-ro 8, 155-1 Bujeon-dong, Busanjin-gu, Busan Metropolitan City, Republic of Korea','02-521-8238','{\"lat\": 35.157504, \"lng\": 129.060451}');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
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
