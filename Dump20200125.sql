-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: e_store
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `klient`
--

DROP TABLE IF EXISTS `klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `klient` (
  `kli_id` int(11) NOT NULL AUTO_INCREMENT,
  `kli_em` varchar(45) DEFAULT NULL,
  `kli_mbi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kli_id`),
  UNIQUE KEY `kli_d_UNIQUE` (`kli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klient`
--

LOCK TABLES `klient` WRITE;
/*!40000 ALTER TABLE `klient` DISABLE KEYS */;
INSERT INTO `klient` VALUES (7,'j','d'),(8,'i','d'),(9,'g','b');
/*!40000 ALTER TABLE `klient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porosi`
--

DROP TABLE IF EXISTS `porosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `porosi` (
  `porosi_id` int(11) NOT NULL,
  `poro_sasi` varchar(45) DEFAULT NULL,
  `produkt_id` int(11) DEFAULT NULL,
  `kli_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`porosi_id`),
  UNIQUE KEY `porosi_id_UNIQUE` (`porosi_id`),
  KEY `pro_id_idx` (`produkt_id`),
  KEY `kli_id_idx` (`kli_id`),
  CONSTRAINT `kli_id` FOREIGN KEY (`kli_id`) REFERENCES `klient` (`kli_id`),
  CONSTRAINT `pro_id` FOREIGN KEY (`produkt_id`) REFERENCES `produkt` (`produkt_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porosi`
--

LOCK TABLES `porosi` WRITE;
/*!40000 ALTER TABLE `porosi` DISABLE KEYS */;
INSERT INTO `porosi` VALUES (1,'12',1,7),(2,'23',1,9);
/*!40000 ALTER TABLE `porosi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkt`
--

DROP TABLE IF EXISTS `produkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `produkt` (
  `produkt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_emer` varchar(45) DEFAULT NULL,
  `pro_vendNisje` varchar(45) DEFAULT NULL,
  `pro_foto` varchar(45) DEFAULT NULL,
  `pro_kategori` varchar(45) DEFAULT NULL,
  `pro_vendMberritje` varchar(45) DEFAULT NULL,
  `pro_cmim` int(11) DEFAULT NULL,
  `pro_koheNisje` varchar(45) DEFAULT NULL,
  `pro_koheMberritje` varchar(45) DEFAULT NULL,
  `pro_qytetNisje` varchar(45) DEFAULT NULL,
  `pro_qytetMberritje` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`produkt_id`),
  UNIQUE KEY `produkt_id_UNIQUE` (`produkt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkt`
--

LOCK TABLES `produkt` WRITE;
/*!40000 ALTER TABLE `produkt` DISABLE KEYS */;
INSERT INTO `produkt` VALUES (1,'urban',NULL,NULL,'Te rritur',NULL,1000,NULL,NULL,'Durres',NULL),(2,'urban',NULL,NULL,'Femije',NULL,500,NULL,NULL,'Durres',NULL),(3,'urban',NULL,NULL,'PAK',NULL,0,NULL,NULL,'Durres',NULL),(4,'urban',NULL,NULL,'Te moshuar',NULL,500,'null',NULL,'Durres',NULL),(5,'interurban','Stacioni i trenit',NULL,NULL,'Dogana',300,'9:00','10:00','Durres','Tirane'),(6,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni i trenit',250,'13:00','15:00','Durres','Berat'),(7,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni',400,'11:00','14:00','Durres','Shkoder'),(8,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni',500,'15:00','18:00','Durres','Korce'),(9,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni',600,'16:00','19:00','Durres','Vlore'),(10,'interurban','Dogana',NULL,NULL,'Stacioni itrenit',150,'11:00','12:00','Tirane','Durres'),(11,'interurban','Dogana',NULL,NULL,'Stacioni',350,'7:00','10:00','Tirane','Elbasan'),(12,'interurban','Dogana',NULL,NULL,'Posta',300,'8:30','10:30','Tirane','Berat'),(13,'interurban','Dogana',NULL,NULL,'Stacioni',400,'5:00','7:30','Tirane','Shkoder'),(14,'interurban','Posta',NULL,NULL,'Dogana',300,'9:00','11:00','Berat','Tirane'),(15,'interurban','Posta',NULL,NULL,'Stacioni i trenit',250,'11:00','12:20','Berat','Durres'),(16,'interurban','Posta',NULL,NULL,'Stacioni',600,'7:00','11:30','Berat','Shkoder'),(17,'interurban','Posta',NULL,NULL,'Stacioni',400,'12:00','15:00','Berat','Vlore'),(18,'interurban','Stacioni',NULL,NULL,'Dogana',500,'6:00','9:00','Shkoder','Tirane'),(19,'interurban','Stacioni',NULL,NULL,'Stacioni i trenit',600,'14:10','17:00','Shkoder','Durres'),(20,'interurban','Stacioni',NULL,NULL,'Stacioni',1000,'4:00','10:00','Shkoder','Vlore'),(21,'interurban','Stacioni i trenit',NULL,NULL,'Dogana',300,'10:00','11:00','Durres','Tirane'),(22,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni i trenit',250,'10:00','12:00','Durres','Berat'),(23,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni',400,'12:00','15:00','Durres','Shkoder'),(24,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni',500,'13:00','16:00','Durres','Korce'),(25,'interurban','Stacioni i trenit',NULL,NULL,'Stacioni',600,'10:00','14:00','Durres','Vlore');
/*!40000 ALTER TABLE `produkt` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-25 11:01:57
