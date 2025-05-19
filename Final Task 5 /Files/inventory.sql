-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inventory
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('111111','PAKO','2002-01-17',10,2,100.00,0.00,21227),('11QER/31','SHAMOO','2001-12-03',8,5,109.99,0.00,25595),('13-Q2/P2','7.25-in pwr,saw blade','2002-01-13',32,15,14.99,0.05,21344),('14-Q1/L3','9.00-in pwr, saw blade','2002-01-13',18,12,17.49,0.00,21344),('1546-qq2','Hrd. cloth,1/4-in.2x50','2001-12-15',15,8,39.95,0.00,23119),('1558-QW1','Hrd. cloth, 1/2-in., 3x50','2002-01-15',23,5,43.99,0.00,23119),('2232/QTY','B&D Jigsaw, 12-in. blade','2001-12-30',8,5,109.92,0.05,24288),('2232/QWE','B&D Jigsaw, 8-in. blade','2002-01-24',6,5,99.87,0.05,24288),('2238/QPD','B&D Cordless Drill,12-in. blade','2001-11-20',12,5,38.95,0.05,25595),('23109-HB','Claw Hammer','2002-01-20',23,10,5.95,0.10,21225),('54778-2T','Rat tail-file, 1/8-in fine','2002-01-15',43,20,4.99,0.00,21344),('89-WRE-Q','Hitcut chain saw, 16in.','2001-12-07',11,5,256.99,0.05,24288),('SM-18277','1.25-in. metal screw, 50','2001-12-29',172,75,6.99,0.00,21225),('SW-23116','2.5-in. wd.screw, 50','2001-12-24',237,100,8.45,0.00,21231),('WR3/TT3','Steel Matting','2001-01-17',18,5,119.95,0.10,25595);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (21225,'Bryson and Co','Smithson',615,'223-3234','TN','Y'),(21226,'SuperLoo,Inc.','Flushing',904,'215-8995','FL','N'),(21227,'Bryson and Co','RASEL',615,'223-3235','TN','Y'),(21231,'D&E Supply','Singh',615,'228-3245','TN','Y'),(21344,'Gomez Bros.','Ortega',615,'889-2546','KY','N'),(22567,'Dome Supply','Smith',901,'678-1419','GA','N'),(23119,'Randsets Ltd.','Anderson',901,'678-3998','GA','Y'),(24004,'Brackman','Browning',615,'228-1410','TN','N'),(24288,'ORDVA,Inc.','Hakford',615,'898-1234','TN','Y'),(25443,'B&K Inc.','Smith',904,'227-0093','FL','N'),(25501,'Damal Supplies','Smythe',615,'890-3529','TN','N'),(25595,'Rubicon Sis.','Orton',904,'456-0092','FL','Y');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendorsacode`
--

LOCK TABLES `vendorsacode` WRITE;
/*!40000 ALTER TABLE `vendorsacode` DISABLE KEYS */;
INSERT INTO `vendorsacode` VALUES (615,'AC'),(901,'MAG'),(904,'SF');
/*!40000 ALTER TABLE `vendorsacode` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 11:48:27
