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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `photos` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'https://i.esdrop.com/d/f/yq2OHbMn4A/b3W5kUANGy.jpg'),(2,1,'https://i.esdrop.com/d/f/yq2OHbMn4A/pxMA91qUtG.jpg'),(3,1,'https://i.esdrop.com/d/f/yq2OHbMn4A/Sci8ucvCxZ.jpg'),(4,2,'https://i.esdrop.com/d/f/yq2OHbMn4A/YW5oXDF7iS.jpg'),(5,2,'https://i.esdrop.com/d/f/yq2OHbMn4A/vBeCPxjiVi.jpg'),(6,2,'https://i.esdrop.com/d/f/yq2OHbMn4A/IvmjzjYxNK.jpg'),(7,3,'https://i.esdrop.com/d/f/yq2OHbMn4A/PUQSv9TD56.jpg'),(8,3,'https://i.esdrop.com/d/f/yq2OHbMn4A/8JtxoQOVsv.jpg'),(9,3,'https://i.esdrop.com/d/f/yq2OHbMn4A/isCpbJzt7L.jpg'),(10,4,'https://i.esdrop.com/d/f/yq2OHbMn4A/xRfDJw3HDW.jpg'),(11,4,'https://i.esdrop.com/d/f/yq2OHbMn4A/DH0llZtOGm.jpg'),(12,4,'https://i.esdrop.com/d/f/yq2OHbMn4A/Up9UYd98hD.jpg'),(15,5,'https://i.esdrop.com/d/f/yq2OHbMn4A/sOGzRLdjUo.jpg'),(16,5,'https://i.esdrop.com/d/f/yq2OHbMn4A/FnTr0FCyM4.jpg'),(17,6,'https://i.esdrop.com/d/f/yq2OHbMn4A/L82EwsIE5P.jpg'),(18,6,'https://i.esdrop.com/d/f/yq2OHbMn4A/eLbmpVmWsf.jpg'),(19,7,'https://i.esdrop.com/d/f/yq2OHbMn4A/fkjVcEgu6H.jpg'),(20,7,'https://i.esdrop.com/d/f/yq2OHbMn4A/26N0KyWICc.jpg'),(21,8,'https://i.esdrop.com/d/f/yq2OHbMn4A/KzqsmkRPFs.jpg'),(22,8,'https://i.esdrop.com/d/f/yq2OHbMn4A/RhKbZoL9gz.jpg'),(23,9,'https://i.esdrop.com/d/f/yq2OHbMn4A/k5xX1KvzMj.jpg'),(24,9,'https://i.esdrop.com/d/f/yq2OHbMn4A/ocXFSQxkUT.jpg'),(25,10,'https://i.esdrop.com/d/f/yq2OHbMn4A/aEmtqf7Xr7.jpg'),(26,10,'https://i.esdrop.com/d/f/yq2OHbMn4A/zZ6122qa4A.jpg'),(27,11,'https://i.esdrop.com/d/f/aPa2izyLr7/hJ9eLaU0Lp.jpg'),(28,11,'https://i.esdrop.com/d/f/aPa2izyLr7/4sHH3zOb35.jpg'),(29,12,'https://i.esdrop.com/d/f/aPa2izyLr7/EZD9VlwnSF.jpg'),(30,12,'https://i.esdrop.com/d/f/aPa2izyLr7/7U0vTWZlTE.jpg'),(31,12,'https://i.esdrop.com/d/f/aPa2izyLr7/NvgMftjogn.jpg'),(32,13,'https://i.esdrop.com/d/f/aPa2izyLr7/TG3Neo3weg.jpg'),(33,13,'https://i.esdrop.com/d/f/aPa2izyLr7/CRUZrl0YrQ.jpg'),(34,14,'https://i.esdrop.com/d/f/aPa2izyLr7/DphyGaP2WU.jpg'),(35,14,'https://i.esdrop.com/d/f/aPa2izyLr7/xGaTDWVZj0.jpg'),(36,15,'https://i.esdrop.com/d/f/aPa2izyLr7/smpEVk5RxB.jpg'),(37,15,'https://i.esdrop.com/d/f/aPa2izyLr7/VOLqhz1AOk.jpg'),(38,16,'https://i.esdrop.com/d/f/aPa2izyLr7/MLWUxRpm72.jpg'),(39,16,'https://i.esdrop.com/d/f/aPa2izyLr7/F8JmNoupt8.jpg'),(40,17,'https://i.esdrop.com/d/f/NlKPuBbCgn/CTzzwdR8tj.jpg'),(41,17,'https://i.esdrop.com/d/f/NlKPuBbCgn/TJ8rpLMj7A.jpg'),(42,18,'https://i.esdrop.com/d/f/NlKPuBbCgn/RbtWjNiBNq.jpg'),(43,18,'https://i.esdrop.com/d/f/NlKPuBbCgn/AhPnH6n3Va.jpg'),(44,18,'https://i.esdrop.com/d/f/NlKPuBbCgn/2zlaEgKfiF.jpg'),(45,19,'https://i.esdrop.com/d/f/NlKPuBbCgn/lZZtOuSqtR.jpg'),(46,19,'https://i.esdrop.com/d/f/NlKPuBbCgn/o5C1WHYS5x.jpg'),(47,20,'https://i.esdrop.com/d/f/NlKPuBbCgn/a28FuazLDJ.jpg'),(48,20,'https://i.esdrop.com/d/f/NlKPuBbCgn/zDzbyXNn7h.jpg'),(49,21,'https://i.esdrop.com/d/f/toMKOprgCM/n24LYcrHQ6.jpg'),(50,21,'https://i.esdrop.com/d/f/toMKOprgCM/rEVXlYwtYK.jpg'),(52,22,'https://i.esdrop.com/d/f/toMKOprgCM/dBkd0nb7wL.jpg'),(53,22,'https://i.esdrop.com/d/f/toMKOprgCM/ZvOGwrBioW.jpg'),(54,22,'https://i.esdrop.com/d/f/toMKOprgCM/2TsYpUGxbm.jpg'),(55,22,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(56,23,'https://i.esdrop.com/d/f/toMKOprgCM/KJBMcDkEJD.jpg'),(57,23,'https://i.esdrop.com/d/f/toMKOprgCM/QsYvKxfWko.jpg'),(58,23,'https://i.esdrop.com/d/f/toMKOprgCM/oQyemjUuX4.jpg'),(59,23,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(60,24,'https://i.esdrop.com/d/f/toMKOprgCM/aOSO1J48vH.jpg'),(61,24,'https://i.esdrop.com/d/f/toMKOprgCM/Wmvw2wuj9c.jpg'),(62,24,'https://i.esdrop.com/d/f/toMKOprgCM/t8E6qZoyas.jpg'),(63,24,'https://i.esdrop.com/d/f/toMKOprgCM/HLhJddeaIz.jpg'),(64,24,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(65,25,'https://i.esdrop.com/d/f/toMKOprgCM/kG7IZ9PIQP.jpg'),(66,25,'https://i.esdrop.com/d/f/toMKOprgCM/ypFfSQ1Ozf.jpg'),(67,25,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(68,26,'https://i.esdrop.com/d/f/toMKOprgCM/NkLgBLEXkT.jpg'),(69,26,'https://i.esdrop.com/d/f/toMKOprgCM/6epPnFJvXj.jpg'),(70,26,'https://i.esdrop.com/d/f/toMKOprgCM/gzI3fsnJPA.jpg'),(71,26,'https://i.esdrop.com/d/f/toMKOprgCM/4hV8TViPy7.jpg'),(72,26,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(73,27,'https://i.esdrop.com/d/f/toMKOprgCM/Bb4ALEX9uw.jpg'),(74,27,'https://i.esdrop.com/d/f/toMKOprgCM/02s9CQ2YjE.jpg'),(75,27,'https://i.esdrop.com/d/f/toMKOprgCM/qZlQrkMzaX.jpg'),(76,27,'https://i.esdrop.com/d/f/toMKOprgCM/S5dh3ySk9M.jpg'),(77,27,'https://i.esdrop.com/d/f/toMKOprgCM/mEO4e9ybIn.jpg'),(78,27,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(79,28,'https://i.esdrop.com/d/f/toMKOprgCM/cWBBFKrwWp.jpg'),(80,28,'https://i.esdrop.com/d/f/toMKOprgCM/YBZjg28KO5.jpg'),(81,28,'https://i.esdrop.com/d/f/toMKOprgCM/vuzSUfcQyQ.jpg'),(82,28,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(83,29,'https://i.esdrop.com/d/f/toMKOprgCM/JT7xMeBoug.jpg'),(84,29,'https://i.esdrop.com/d/f/toMKOprgCM/8sSCsGl0Ed.jpg'),(85,29,'https://i.esdrop.com/d/f/toMKOprgCM/jQwk6tfcHt.jpg'),(86,29,'https://i.esdrop.com/d/f/toMKOprgCM/LWcuR18Nzv.png'),(87,30,'https://i.esdrop.com/d/f/WFi7Wlweew/VEgBNprL1a.jpg'),(88,30,'https://i.esdrop.com/d/f/WFi7Wlweew/s31ixS7d2q.jpg'),(89,31,'https://i.esdrop.com/d/f/WFi7Wlweew/evUoEhGBAh.png'),(90,31,'https://i.esdrop.com/d/f/WFi7Wlweew/gT3CH7kTmJ.png'),(91,32,'https://i.esdrop.com/d/f/WFi7Wlweew/SRNyOvPM11.png'),(92,32,'https://i.esdrop.com/d/f/WFi7Wlweew/pGrpyY0e2V.png'),(93,33,'https://i.esdrop.com/d/f/WFi7Wlweew/lpADub4gpl.jpg'),(94,33,'https://i.esdrop.com/d/f/WFi7Wlweew/0OYl90t4cC.jpg'),(95,34,'https://i.esdrop.com/d/f/WFi7Wlweew/ihh0v8Xhor.jpg'),(96,34,'https://i.esdrop.com/d/f/WFi7Wlweew/5c1soPR5by.jpg'),(97,35,'https://i.esdrop.com/d/f/WFi7Wlweew/vLnrkTDsZO.jpg'),(98,35,'https://i.esdrop.com/d/f/WFi7Wlweew/IkRaXCJGRZ.jpg'),(99,36,'https://i.esdrop.com/d/f/WFi7Wlweew/bmyUamoCK9.jpg'),(100,36,'https://i.esdrop.com/d/f/WFi7Wlweew/X86zIqeUl3.jpg'),(101,37,'https://i.esdrop.com/d/f/WFi7Wlweew/7zEVzih6wb.jpg'),(102,37,'https://i.esdrop.com/d/f/WFi7Wlweew/OevnP5nN0G.jpg'),(103,38,'https://images.unsplash.com/photo-1626079450905-169c3d3b7f50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(104,38,'https://images.unsplash.com/photo-1626079451033-39e6fad45b35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(105,39,'https://images.unsplash.com/photo-1600070306429-8b21d175d44d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(106,39,'https://images.unsplash.com/photo-1600070323130-9084bab14be8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2680&q=80'),(107,40,'https://images.unsplash.com/photo-1592177538809-f713fd7d82c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(108,40,'https://images.unsplash.com/photo-1592215639563-9f4f276dcf26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(109,41,'https://images.unsplash.com/photo-1447195047884-0f014b0d9288?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(110,41,'https://images.unsplash.com/photo-1514849302-984523450cf4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(111,42,'https://images.unsplash.com/photo-1629677595313-880bd1ab80d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(112,42,'https://images.unsplash.com/photo-1629677594742-58acc2c5ca82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(113,43,'https://images.unsplash.com/photo-1587132164684-cfd0b8214d8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),(114,43,'https://images.unsplash.com/photo-1587486937407-34f64d78e270?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
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
