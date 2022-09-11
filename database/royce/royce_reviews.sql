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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리',1,'2022-09-07 16:05:14'),(2,'jiho','jiho@gmail.com','4','i love Roecy chocolate','very good!',6,'2022-09-07 16:19:58'),(3,'yewon','yewonJ@gmail.com','5','Very good','Delicious',6,'2022-09-07 16:57:37'),(4,'d','gda@dfas','5','sdf','sd',6,'2022-09-07 16:59:42'),(5,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리',1,'2022-09-07 17:01:12'),(6,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리',1,'2022-09-07 17:03:39'),(7,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리',6,'2022-09-07 17:04:03'),(8,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리',6,'2022-09-07 17:04:23'),(9,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리둘리',7,'2022-09-07 17:04:39'),(10,'kimcode','kimcode123@gmail.com','1','이거 아직도 안먹어봄?','홀리몰리괔카몰리로보카폴리롤리폴리둘리',7,'2022-09-07 17:05:41'),(11,'kimcdsode','kimcodsde123@gmail.com','4','이거 아직도 df안먹어봄?','홀리몰리괔카몰리df로보카폴리롤리폴리둘리',2,'2022-09-07 17:05:58'),(12,'kimcdsode','kimcodsde123@gmail.com','4','이거 아직도 df안먹어봄?','홀리몰리괔카몰리df로보카폴리롤리폴리둘리',2,'2022-09-07 17:28:18'),(13,'kimcdsode','kimcodsde123@gmail.com','3','이거 아직도 df안먹어봄?','홀리몰리괔카몰리df로보카폴리롤리폴리둘리',3,'2022-09-07 17:51:30'),(14,'ㅈ','sd@asdf','5','ㅇㄹㄴ','df',6,'2022-09-07 17:58:46'),(15,'방금 생성','djask@dfjasd','4','sd','sdf',6,'2022-09-07 18:04:50'),(16,'yewon','dfs3@gmail.com','3','이거 아직도 몰ㅏㅕ?','핑',10,'2022-09-07 22:37:43'),(17,'yewonㅇ','dfs13@gmail.com','3','이거 아직도 몰ㅏㅕ?','핑',10,'2022-09-07 22:38:16'),(18,'dfs','asd@dfas','5','fsd','asdf',6,'2022-09-07 22:46:38'),(19,'doit','doti@andfe','4','hhi','hihi',6,'2022-09-07 22:47:04'),(20,'hello','hello@apple.co.kr','5','title','content',6,'2022-09-07 22:48:59'),(21,'찬영팍','park@gmail.com','5','최고의 초콜릿','천상의 맛이네요',6,'2022-09-07 22:55:59'),(22,'리뷰','jdc@naver.com','5','sdf','sdfa',6,'2022-09-07 22:57:25'),(23,'df','sd@sdfa','4','asdf','새로 작성함',6,'2022-09-07 23:00:42'),(24,'yewonJung','jdc209802@gmail.com','5','Very good','I like ROECY Chocolate!',6,'2022-09-08 10:21:26'),(25,'yewonJung','jdc209802@gmail.com','5','I love this Chocolate','Thank you!',7,'2022-09-08 10:23:35'),(26,'yewon','john@gmail.com','5','I\'m big fan of ROECY','I love LOECY Chocolate',2,'2022-09-08 10:27:25'),(27,'sdfs','sf@sdf.com','5','sdfa','asdfa',2,'2022-09-08 10:29:54'),(28,'jinyoung','jinYoung@gmail.com','4','So expensive','expensive!',20,'2022-09-08 10:37:07'),(29,'df','sdf@adsf','5','sdfasdf','asdf지금',21,'2022-09-08 10:40:22'),(30,'yewon','jdc@masd.com','5','delicious','very good',1,'2022-09-08 12:08:06'),(31,'김진영','123123@123.com','5','121321312','taste good',1,'2022-09-08 12:17:31'),(32,'chan','youn@gmasd','5','god','최고',1,'2022-09-08 12:50:25'),(33,'123213','123123@naver.com','4','123123','12312312',39,'2022-09-08 13:30:22'),(34,'김진영','jinyoung@naver.com','5','Tasty good','good',8,'2022-09-08 13:38:04'),(35,'kjy','jinyoung985@naver.com','5','Very delicious','cool',11,'2022-09-08 14:12:47'),(36,'kjy','kjy@kjy.com','5','Tasty good','delicious',17,'2022-09-08 14:53:17'),(37,'yewonJung','jdc19@ndsfas.com','5','sdf','df',3,'2022-09-09 20:50:17'),(38,'Joseph Mcdonald','mjoseph@gmail.com','5','The absolute best','these are by far the best chocolate. Ever.',1,'2022-09-10 11:57:42'),(39,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',1,'2022-09-10 11:58:25'),(40,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',3,'2022-09-10 11:58:31'),(41,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',4,'2022-09-10 11:58:36'),(42,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',5,'2022-09-10 11:58:39'),(43,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',6,'2022-09-10 11:58:42'),(44,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',7,'2022-09-10 11:58:45'),(45,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',8,'2022-09-10 11:58:48'),(46,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',9,'2022-09-10 11:58:51'),(47,'kim review','jdc@gmil.com','5','review','i like you~',32,'2022-09-10 11:58:53'),(48,'Kevin Hart','hkevin@gmail.com','5','OMG','crazy. absolute best.',10,'2022-09-10 11:58:53');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
