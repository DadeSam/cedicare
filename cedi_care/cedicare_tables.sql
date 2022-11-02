-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cedicare
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `budjet`
--

DROP TABLE IF EXISTS `budjet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `budjet` (
  `id` int DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `expense_type` varchar(300) DEFAULT NULL,
  `expense_amount` varchar(300) DEFAULT NULL,
  `period` smallint DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `budjet`
--

LOCK TABLES `budjet` WRITE;
/*!40000 ALTER TABLE `budjet` DISABLE KEYS */;
/*!40000 ALTER TABLE `budjet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int DEFAULT NULL,
  `firstname` varchar(300) DEFAULT NULL,
  `lastname` varchar(300) DEFAULT NULL,
  `msisdn` bigint DEFAULT NULL,
  `ammounttransferred` double DEFAULT NULL,
  `recipient` varchar(300) DEFAULT NULL,
  `transdate` date DEFAULT NULL,
  `charge` float DEFAULT NULL,
  `reference` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'Dennis','Agyei',233202000121,195.69,'59779217','2022-10-03',3.37,'Gifts & Donation\r'),(2,'Dennis','Agyei',233202000121,162.98,'52959075','2022-10-16',4.04,'Groceries\r'),(3,'Dennis','Agyei',233202000121,178.64,'11084058','2022-10-20',3.83,'Miscellaneous\r'),(4,'Dennis','Agyei',233202000121,277.96,'93475','2022-10-12',1.83,'Fuel & Transport\r'),(5,'Dennis','Agyei',233202000121,264.04,'55910025','2022-10-12',4.29,'Utilities\r'),(6,'Dennis','Agyei',233202000121,111.5,'548684229','2022-10-12',2.23,'Miscellaneous\r'),(7,'Dennis','Agyei',233202000121,277.93,'53329102','2022-10-15',4.86,'Gifts & Donation\r'),(8,'Dennis','Agyei',233202000121,73.91,'41163236','2022-10-21',1.79,'Utilities\r'),(9,'Dennis','Agyei',233202000121,197.66,'64205032','2022-10-08',2.61,'Utilities\r'),(10,'Dennis','Agyei',233202000121,91.48,'62257773','2022-10-10',3.75,'Hygiene\r'),(11,'Dennis','Agyei',233202000121,172.9,'43269811','2022-10-28',3.18,'Utilities\r'),(12,'Dennis','Agyei',233202000121,250.53,'653421377','2022-10-02',1.42,'Hygiene\r'),(13,'Dennis','Agyei',233202000121,207.49,'551546280','2022-10-20',0.57,'Utilities\r'),(14,'Dennis','Agyei',233202000121,148.49,'548684748','2022-10-09',1.81,'Groceries\r'),(15,'Dennis','Agyei',233202000121,257.95,'42884854','2022-10-03',3.83,'Miscellaneous\r'),(16,'Dennis','Agyei',233202000121,66,'42139001','2022-10-25',3.29,'Hygiene\r'),(17,'Dennis','Agyei',233202000121,207.74,'16995001','2022-10-15',3.93,'Groceries\r'),(18,'Dennis','Agyei',233202000121,159.56,'2686402','2022-10-12',1.75,'Utilities\r'),(19,'Dennis','Agyei',233202000121,127.99,'547260200','2022-10-10',4.59,'Gifts & Donation\r'),(20,'Dennis','Agyei',233202000121,107.52,'60589001','2022-10-10',4.07,'Groceries\r'),(21,'Dennis','Agyei',233202000121,142.73,'35356963','2022-10-06',0.82,'Family\r'),(22,'Dennis','Agyei',233202000121,39.43,'2686692','2022-10-13',2.56,'Miscellaneous\r'),(23,'Dennis','Agyei',233202000121,298.47,'54305221','2022-10-17',3.65,'Family\r'),(24,'Dennis','Agyei',233202000121,249.89,'605129164','2022-10-12',2.01,'Gifts & Donation\r'),(25,'Dennis','Agyei',233202000121,177.78,'68016069','2022-10-25',3.46,'Hygiene\r'),(26,'Dennis','Agyei',233202000121,197.58,'45014151','2022-10-20',1.13,'Family\r'),(27,'Dennis','Agyei',233202000121,133.21,'555049003','2022-10-17',1.32,'Miscellaneous\r'),(28,'Dennis','Agyei',233202000121,109,'43547332','2022-10-01',3.92,'Miscellaneous\r'),(29,'Dennis','Agyei',233202000121,220.5,'35356725','2022-10-17',1.83,'Food\r'),(30,'Dennis','Agyei',233202000121,234.96,'551544510','2022-10-26',0.84,'Groceries\r'),(31,'Dennis','Agyei',233202000121,142.3,'52686259','2022-10-26',4.78,'Family\r'),(32,'Dennis','Agyei',233202000121,238.27,'115840476','2022-10-03',3.94,'Family\r'),(33,'Dennis','Agyei',233202000121,127.7,'33261824','2022-10-22',2.05,'Hygiene\r'),(34,'Dennis','Agyei',233202000121,126.84,'61919438','2022-10-11',1.37,'Food\r'),(35,'Dennis','Agyei',233202000121,47.81,'3780751','2022-10-03',3.2,'Gifts & Donation\r'),(36,'Dennis','Agyei',233202000121,137.9,'57896911','2022-10-26',4.55,'Utilities\r'),(37,'Dennis','Agyei',233202000121,251.54,'438570008','2022-10-14',2.35,'Hygiene\r'),(38,'Dennis','Agyei',233202000121,226,'15127226','2022-10-01',1.43,'Utilities\r'),(39,'Dennis','Agyei',233202000121,263.28,'41250619','2022-10-06',0.71,'Family\r'),(40,'Dennis','Agyei',233202000121,205.5,'59262264','2022-10-03',1.03,'Fuel & Transport\r'),(41,'Dennis','Agyei',233202000121,24.43,'45865386','2022-10-07',1.74,'Family\r'),(42,'Dennis','Agyei',233202000121,142.16,'63545517','2022-10-10',2.12,'Fuel & Transport\r'),(43,'Dennis','Agyei',233202000121,299.5,'52125539','2022-10-18',1.81,'Food\r'),(44,'Dennis','Agyei',233202000121,134.33,'533461309','2022-10-10',4.35,'Miscellaneous\r'),(45,'Dennis','Agyei',233202000121,181.62,'11673585','2022-10-05',2.56,'Gifts & Donation\r'),(46,'Dennis','Agyei',233202000121,53.44,'555665060','2022-10-07',3.18,'Miscellaneous\r'),(47,'Dennis','Agyei',233202000121,259.76,'41442110','2022-10-02',2.24,'Miscellaneous\r'),(48,'Dennis','Agyei',233202000121,143.4,'687889552','2022-10-02',2.51,'Food\r'),(49,'Dennis','Agyei',233202000121,166.55,'52533015','2022-10-12',1.05,'Fuel & Transport\r'),(50,'Alhassan','Abdul-Rafui',233202009882,256.39,'49349258','2022-10-07',1.93,'Food\r'),(51,'Alhassan','Abdul-Rafui',233202009882,101.71,'43063491','2022-10-03',0.72,'Food\r'),(52,'Alhassan','Abdul-Rafui',233202009882,43.56,'55319069','2022-10-28',1.8,'Utilities\r'),(53,'Alhassan','Abdul-Rafui',233202009882,205.13,'176302023','2022-10-06',1.9,'Hygiene\r'),(54,'Alhassan','Abdul-Rafui',233202009882,166.13,'68479040','2022-10-28',0.38,'Fuel & Transport\r'),(55,'Alhassan','Abdul-Rafui',233202009882,184.72,'18860341','2022-10-01',0.3,'Hygiene\r'),(56,'Alhassan','Abdul-Rafui',233202009882,113.89,'37205987','2022-10-26',1.25,'Miscellaneous\r'),(57,'Alhassan','Abdul-Rafui',233202009882,227.51,'692270','2022-10-20',2.45,'Gifts & Donation\r'),(58,'Alhassan','Abdul-Rafui',233202009882,70.27,'548684956','2022-10-04',2.67,'Groceries\r'),(59,'Alhassan','Abdul-Rafui',233202009882,254.1,'581189894','2022-10-23',0.73,'Fuel & Transport\r'),(60,'Alhassan','Abdul-Rafui',233202009882,38.53,'76138201','2022-10-11',0.78,'Food\r'),(61,'Alhassan','Abdul-Rafui',233202009882,84.72,'34666008','2022-10-18',2.62,'Fuel & Transport\r'),(62,'Alhassan','Abdul-Rafui',233202009882,150.36,'35356885','2022-10-15',2.41,'Fuel & Transport\r'),(63,'Alhassan','Abdul-Rafui',233202009882,145.2,'50563201','2022-10-04',3.49,'Food\r'),(64,'Alhassan','Abdul-Rafui',233202009882,112.91,'3780141','2022-10-26',4.15,'Groceries\r'),(65,'Alhassan','Abdul-Rafui',233202009882,90.06,'679382016','2022-10-01',0.23,'Food\r'),(66,'Alhassan','Abdul-Rafui',233202009882,74.1,'11673808','2022-10-24',1.87,'Fuel & Transport\r'),(67,'Alhassan','Abdul-Rafui',233202009882,49.13,'50491585','2022-10-10',3.61,'Food\r'),(68,'Alhassan','Abdul-Rafui',233202009882,171.32,'545693689','2022-10-02',3.92,'Utilities\r'),(69,'Alhassan','Abdul-Rafui',233202009882,164.67,'63777214','2022-10-27',0.21,'Utilities\r'),(70,'Alhassan','Abdul-Rafui',233202009882,70.06,'508450037','2022-10-21',1.66,'Groceries\r'),(71,'Alhassan','Abdul-Rafui',233202009882,224.91,'52125338','2022-10-21',1.46,'Utilities\r'),(72,'Alhassan','Abdul-Rafui',233202009882,294.59,'636295418','2022-10-12',0.62,'Utilities\r'),(73,'Alhassan','Abdul-Rafui',233202009882,112.16,'675100085','2022-10-26',1.33,'Family\r'),(74,'Alhassan','Abdul-Rafui',233202009882,178.72,'55910888','2022-10-19',4.13,'Food\r'),(75,'Alhassan','Abdul-Rafui',233202009882,181.5,'62257938','2022-10-28',1.18,'Groceries\r'),(76,'Alhassan','Abdul-Rafui',233202009882,293.57,'636292753','2022-10-14',0.97,'Family\r'),(77,'Alhassan','Abdul-Rafui',233202009882,156.88,'49349073','2022-10-07',1.67,'Hygiene\r'),(78,'Alhassan','Abdul-Rafui',233202009882,229.11,'16590215','2022-10-27',1.39,'Hygiene\r'),(79,'Alhassan','Abdul-Rafui',233202009882,130.78,'42291109','2022-10-06',1.35,'Gifts & Donation\r'),(80,'Alhassan','Abdul-Rafui',233202009882,230.94,'63187043','2022-10-03',1.16,'Food\r'),(81,'Alhassan','Abdul-Rafui',233202009882,175.38,'63824526','2022-10-03',4.74,'Family\r'),(82,'Alhassan','Abdul-Rafui',233202009882,171.65,'52125327','2022-10-08',1.06,'Hygiene\r'),(83,'Alhassan','Abdul-Rafui',233202009882,199.43,'68462228','2022-10-25',1,'Utilities\r'),(84,'Alhassan','Abdul-Rafui',233202009882,225.08,'49349515','2022-10-16',4.54,'Hygiene\r'),(85,'Alhassan','Abdul-Rafui',233202009882,205.87,'51991632','2022-10-16',4.27,'Food\r'),(86,'Alhassan','Abdul-Rafui',233202009882,130.05,'3380519','2022-10-02',1.49,'Fuel & Transport\r'),(87,'Alhassan','Abdul-Rafui',233202009882,218.65,'24571111','2022-10-15',2.47,'Hygiene\r'),(88,'Alhassan','Abdul-Rafui',233202009882,260.29,'54473230','2022-10-20',2.45,'Utilities\r'),(89,'Alhassan','Abdul-Rafui',233202009882,173.27,'6157613','2022-10-06',2.07,'Groceries\r'),(90,'Sophia','Otu-Ayeh',233202009328,204.49,'51346123','2022-10-05',0.67,'Fuel & Transport\r'),(91,'Sophia','Otu-Ayeh',233202009328,187.48,'605050080','2022-10-09',0.26,'Food\r'),(92,'Sophia','Otu-Ayeh',233202009328,218.08,'43353289','2022-10-14',3.38,'Groceries\r'),(93,'Sophia','Otu-Ayeh',233202009328,180.17,'610960003','2022-10-14',0.8,'Utilities\r'),(94,'Sophia','Otu-Ayeh',233202009328,28.41,'54575385','2022-10-16',1.55,'Utilities\r'),(95,'Sophia','Otu-Ayeh',233202009328,57.91,'55316188','2022-10-27',2.83,'Hygiene\r'),(96,'Sophia','Otu-Ayeh',233202009328,66.26,'66854023','2022-10-27',4.32,'Food\r'),(97,'Sophia','Otu-Ayeh',233202009328,212.15,'586681511','2022-10-13',2.96,'Food\r'),(98,'Sophia','Otu-Ayeh',233202009328,269.05,'52664008','2022-10-19',0.18,'Groceries\r'),(99,'Sophia','Otu-Ayeh',233202009328,248.95,'437420470','2022-10-08',1.03,'Family\r'),(100,'Sophia','Otu-Ayeh',233202009328,254.89,'636293184','2022-10-26',4.54,'Miscellaneous\r');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int DEFAULT NULL,
  `msisdn_id` bigint DEFAULT NULL,
  `firstname` varchar(300) DEFAULT NULL,
  `lastname` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2022-11-02 17:37:05
