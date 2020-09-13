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
-- Table structure for table `bookseats`
--

DROP TABLE IF EXISTS `bookseats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bookseats` (
  `busno` varchar(10) DEFAULT NULL,
  `busname` varchar(20) DEFAULT NULL,
  `fromstop` varchar(20) DEFAULT NULL,
  `tostop` varchar(20) DEFAULT NULL,
  `seatno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookseats`
--

LOCK TABLES `bookseats` WRITE;
/*!40000 ALTER TABLE `bookseats` DISABLE KEYS */;
INSERT INTO `bookseats` VALUES ('1234','bus1','banglore','mysore',1),('1234','bus1','banglore','mysore',2),('1234','bus1','banglore','mysore',3),('1234','bus1','banglore','mysore',4),('1234','bus1','banglore','mysore',5),('1234','bus1','banglore','mysore',6),('1234','bus1','banglore','mysore',7),('1234','bus1','banglore','mysore',8),('1234','bus1','banglore','mysore',9),('1234','bus1','banglore','mysore',10),('1234','bus1','banglore','mysore',11),('1234','bus1','banglore','mysore',12),('1234','bus1','banglore','mysore',13),('1234','bus1','banglore','mysore',14),('1234','bus1','banglore','mysore',15),('1234','bus1','banglore','mysore',16),('1234','bus1','banglore','mysore',17),('1234','bus1','banglore','mysore',18),('1234','bus1','banglore','mysore',19),('1234','bus1','banglore','mysore',20),('1234','bus1','banglore','mysore',21),('1234','bus1','banglore','mysore',22),('1234','bus1','banglore','mysore',23),('1234','bus1','banglore','mysore',24),('1234','bus1','banglore','mysore',25),('5978','rajahamsa','manglore','chennai',1),('5978','rajahamsa','manglore','chennai',2),('5978','rajahamsa','manglore','chennai',3),('5978','rajahamsa','manglore','chennai',4),('5978','rajahamsa','manglore','chennai',5),('5978','rajahamsa','manglore','chennai',6),('5978','rajahamsa','manglore','chennai',7),('5978','rajahamsa','manglore','chennai',8),('5978','rajahamsa','manglore','chennai',9),('5978','rajahamsa','manglore','chennai',10),('5978','rajahamsa','manglore','chennai',11),('5978','rajahamsa','manglore','chennai',12),('5978','rajahamsa','manglore','chennai',13),('5978','rajahamsa','manglore','chennai',14),('5978','rajahamsa','manglore','chennai',15),('5978','rajahamsa','manglore','chennai',16),('5978','rajahamsa','manglore','chennai',17),('5978','rajahamsa','manglore','chennai',18),('5978','rajahamsa','manglore','chennai',19),('5978','rajahamsa','manglore','chennai',20),('5978','rajahamsa','manglore','chennai',21),('5978','rajahamsa','manglore','chennai',22),('5978','rajahamsa','manglore','chennai',23),('5978','rajahamsa','manglore','chennai',24),('5978','rajahamsa','manglore','chennai',25),('5978','rajahamsa','manglore','chennai',26),('5978','rajahamsa','manglore','chennai',27),('5978','rajahamsa','manglore','chennai',28),('5978','rajahamsa','manglore','chennai',29),('5978','rajahamsa','manglore','chennai',30);
/*!40000 ALTER TABLE `bookseats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 19:19:59
