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
-- Table structure for table `products_allergies`
--

DROP TABLE IF EXISTS `products_allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_allergies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `allergies_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_allergies`
--

LOCK TABLES `products_allergies` WRITE;
/*!40000 ALTER TABLE `products_allergies` DISABLE KEYS */;
INSERT INTO `products_allergies` VALUES (1,3,1),(2,3,2),(3,3,3),(11,3,4),(12,3,5),(13,3,6),(14,3,7),(15,3,8),(16,3,9),(17,3,10),(18,2,11),(19,1,11),(20,3,11),(21,1,12),(22,3,12),(23,3,13),(24,3,14),(25,3,15),(26,3,16),(27,3,17),(28,3,18),(29,3,19),(30,3,20),(31,3,21),(32,4,21),(33,5,21),(34,3,22),(35,4,22),(36,5,22),(37,3,23),(38,4,23),(39,6,23),(40,3,24),(41,4,24),(42,7,24),(43,8,24),(44,6,24),(45,3,25),(46,4,25),(47,7,25),(48,8,25),(49,6,25),(50,3,26),(51,4,26),(52,6,26),(53,3,27),(54,4,27),(55,6,27),(56,3,28),(57,4,28),(58,6,28),(59,3,29),(60,4,29),(61,6,29),(62,3,30),(63,4,30),(64,6,30),(65,3,31),(66,4,31),(67,6,31),(68,3,32),(69,4,32),(70,6,32),(71,3,33),(72,4,33),(73,7,33),(74,5,33),(75,3,34),(76,4,34),(77,7,34),(78,5,34),(79,3,35),(80,4,35),(81,7,35),(82,5,35),(83,7,36),(84,3,36),(85,4,36),(86,5,36),(87,7,37),(88,3,37),(89,4,37),(90,5,37),(91,3,38),(92,5,38),(93,3,39),(94,5,39),(95,3,40),(96,5,40),(97,3,41),(98,5,41),(99,3,42),(100,5,42),(101,3,43),(102,5,43);
/*!40000 ALTER TABLE `products_allergies` ENABLE KEYS */;
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
