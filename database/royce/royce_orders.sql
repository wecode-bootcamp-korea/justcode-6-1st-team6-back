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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `num` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (6,5,'[2, 4]','[6, 5]','[4500, 5500]',54503,'도와주세요','대전 동구 판교1길 3 (판암동) 빌라빌라 1212호','2022-09-05 13:10:53'),(7,5,'[4]','[15]','[5500]',82500,'맛있게해주세요','경기 용인시 기흥구 강남동로 5 (구갈동) 용인빌라 123호','2022-09-05 13:13:13'),(8,2,'2','2','4500',9000,'lostark','isgood','2022-09-05 13:36:21'),(9,3,'1','3','19.99',63,'help','제주특별자치도 서귀포시 가가로 14 (상예동) 돌하르방','2022-09-07 12:34:21'),(10,3,'2','22','19.99',440,'ㅁㄴㄹㄴㅇㅁㄴㅇㄴㅇㅁㄴ','제주특별자치도 서귀포시 가가로 14 (상예동) 돌돌','2022-09-07 12:36:21'),(11,3,'2','4','19.99',83,'HELP12321323','제주특별자치도 서귀포시 가가로 28-24 (상예동) 가가','2022-09-07 12:38:10'),(12,3,'17','1','77.99',80.99,'','경기 안산시 상록구 일동로 3 (일동, 안산제일신협동조합) 123','2022-09-08 03:39:25'),(13,3,'3','7','19.99',139.93,'','경기 안양시 동안구 일동로204번길 15 (관양동, 만안주택) ','2022-09-08 03:46:30'),(14,5,'6','3','19.99',62.97,'nothing','서울 강남구 가로수길 5 (신사동) 123','2022-09-08 03:56:11'),(15,9,'6','4','19.99',82.96,'','서울 강남구 가로수길 5 (신사동) 1235','2022-09-08 03:58:00'),(16,3,'3','3','19.99',62.97,'123123','경기 성남시 분당구 대왕판교로 477 (판교동, 낙생고등학교) ','2022-09-08 04:28:10'),(22,3,'[9, 6]','[9, 6]','[9, 6]',479.85,'12312321','경기 성남시 분당구 판교로 20 (판교동, 판교원마을3단지아파트) 123123','2022-09-08 05:46:51'),(23,14,'[5]','[5]','[5]',389.95,'판교','경기 성남시 분당구 판교역로 4 (백현동) 판교판교','2022-09-08 05:54:16'),(24,3,'[2]','[2]','[2]',82.98,'헬프미','경기 성남시 분당구 대왕판교로 477 (판교동, 낙생고등학교) 123123호','2022-09-10 04:45:43');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-10 14:28:14
