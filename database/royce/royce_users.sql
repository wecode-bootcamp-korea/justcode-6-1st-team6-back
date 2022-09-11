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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test@test.com','1Q2w3e4r!','2022-09-05 07:06:43'),(2,'himiskl','test2@test.com','$2a$12$aPtGIrLtrHt1AQ/sFpVaGOZBjVsnpoEEI3.zSNp/XHjZu7sg.DBa6','2022-09-05 10:21:35'),(3,'JinYoung','testing@testing.com','$2a$12$rcIogWjJZrXpTL8V.gqz.elZfliCB5Qx6Kd7g4gtKpQphyvWjE9yC','2022-09-05 11:01:50'),(4,'JinYoung','test3@test.com','$2a$12$9udTAf5eIdg4/5gX.LbAKuzuyfJhUetkk5.SOutQcfJa1Y2Jsk/ti','2022-09-06 05:53:18'),(5,'qweqwe','qwe@qwe.com','$2a$12$vYa3xi8tTd8g6BhoP.OJwuPa6m/.b312RXkK8l6vYjF4JQQo3s6FC','2022-09-06 10:42:46'),(6,'qw qwe','dsad@sad.com','$2a$12$ujCG8.1OTJmMIVieQ3lmL.fMSwwHtjkZADMmmQGQu.HigRkf1GxoO','2022-09-06 11:46:38'),(7,'Lee','qweqwe@qwe.com','$2a$12$yG9R9SI.JOJg./8DbxTe5ePBGWNU72NPwkT6BkpESrH5jAtuFlhSe','2022-09-07 02:25:37'),(8,'wqeasd','qwe@QWEE.com','$2a$12$nAmeVp8u8Bid4DyaWwaQJuWEeWpigcQKPPm5WeNbvaA4U/1KItJbW','2022-09-07 05:09:29'),(9,'eqw','ewq@ewq.com','$2a$12$kuxE7Qse5g.wIe68onrn7eGjYzlqFW7yFQWnNr3Y0mx2pWlOMZP22','2022-09-07 14:06:17'),(10,'qweasdas','iop@iop.com','$2a$12$.qomZEbhfKU3RZGApeHh5uojjIj1IBSF02ZMIRbokCovDEoy2MkXy','2022-09-08 02:48:49'),(11,'dsad','sdasd@dsa.com','$2a$12$2INrdqaotwZjr8U2yROBYexg.ZaMmLC7jmTjwNF8LUE0R424RcHQO','2022-09-08 02:50:27'),(12,'yewonJung','meong19@gmail.com','$2a$12$0iEm.CQYVIaz/I1B85jhu.ZLSTT5IkGXmbNp1vvrSFi.ykgJUBHCC','2022-09-08 04:52:19'),(13,'jin young kim','just@code.com','$2a$12$i/BfGM5y76ZHbmq3nBJ4vuc59FX83MgyBADOtu/jtmMKw0rXRH48a','2022-09-08 05:20:24'),(14,'kim jin young','just1@code.com','$2a$12$.ZlCf1R1af1gEDio8f.50eDhuQiwSen.bEQnzSwGNKlfA1eBJsWkm','2022-09-08 05:52:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
