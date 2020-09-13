-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_bus
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `booked`
--

DROP TABLE IF EXISTS `booked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booked` (
  `ticket_no` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `from1` varchar(20) DEFAULT NULL,
  `to1` varchar(20) DEFAULT NULL,
  `dtime1` varchar(10) DEFAULT NULL,
  `atime1` varchar(10) DEFAULT NULL,
  `busno` varchar(10) DEFAULT NULL,
  `busname` varchar(10) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `seatno` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked`
--

LOCK TABLES `booked` WRITE;
/*!40000 ALTER TABLE `booked` DISABLE KEYS */;
INSERT INTO `booked` VALUES ('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('T71903','2019-06-06','banglore','mysore','08:00','11:00','1234','bus1',190,250,9,NULL),('T7070504','2019-06-07','banglore','mysore','08:00','11:00','1234','bus1',190,250,3,'prajwal@gmail.com'),('T7070869','2019-06-07','banglore','mysore','08:00','11:00','1234','bus1',190,240,10,'prajwal@gmail.com'),('T71301012','2019-06-13','mandya','mysore','08:00','11:00','1234','bus1',190,240,16,'prajwal@gmail.com'),('T7120249','2019-10-12','mandya','mysore','08:00','11:00','1234','bus1',190,240,1,'prajwal@gmail.com'),('T7230827','2019-11-23','mandya','mysore','08:00','11:00','1234','bus1',190,240,16,'prajwal@gmail.com');
/*!40000 ALTER TABLE `booked` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 19:19:57
