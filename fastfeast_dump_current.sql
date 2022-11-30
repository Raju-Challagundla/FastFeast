CREATE DATABASE  IF NOT EXISTS `fastfeast_fall_2022` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fastfeast_fall_2022`;
-- MySQL dump 10.13  Distrib 8.0.26, for macos11 (x86_64)
--
-- Host: localhost    Database: dumptest_2
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `FKpfjyosx85te798iryn7m6cw1u` (`staff_id`),
  CONSTRAINT `FKpfjyosx85te798iryn7m6cw1u` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (59,'$2a$10$6p7K5JTE.B/eXPHl.SxFX.ht2Rg4VhRHRdO7Pee2/ScPvxWIrsjwC',60),(60,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',61),(61,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',1),(62,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',5),(63,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',6),(64,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',9),(65,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',10),(66,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',11),(67,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',14),(68,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',15),(69,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',17),(70,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',18),(71,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',19),(72,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',20),(73,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',21),(74,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',22),(75,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',24),(76,'$2a$10$DyY.8/iBdrAP2909jNBFHuXACrefb/PfbdgTMhRraZ44z7zuUYwDe',25);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int NOT NULL AUTO_INCREMENT,
  `delivery_time` datetime DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `pickedup_time` datetime DEFAULT NULL,
  `delivery_status` int DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `FKgts2r2etfncl0q1l1cvee3x29` (`driver_id`),
  KEY `FKr85isw6qn62sn3flu0ycx3dav` (`vehicle_id`),
  KEY `FKgqr0vb3y22o41s0p13lghtco4` (`delivery_status`),
  CONSTRAINT `FKgqr0vb3y22o41s0p13lghtco4` FOREIGN KEY (`delivery_status`) REFERENCES `status` (`status_id`),
  CONSTRAINT `FKgts2r2etfncl0q1l1cvee3x29` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `FKr85isw6qn62sn3flu0ycx3dav` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,NULL,5,10,'2021-11-15 10:11:00',3),(2,NULL,4,4,'2021-11-15 09:01:25',3),(3,'2021-11-15 12:01:01',6,10,NULL,4),(4,'2021-11-15 13:10:10',5,5,NULL,4),(5,'2021-11-15 17:34:20',1,1,NULL,4),(6,NULL,3,3,'2021-11-15 11:00:20',3),(7,'2021-11-15 11:45:40',6,6,NULL,4),(8,NULL,8,8,'2021-11-15 12:15:15',3),(9,NULL,2,2,'2021-11-15 11:57:10',3),(10,NULL,2,2,'2021-11-15 13:34:55',3),(11,NULL,5,10,'2021-11-16 10:11:00',3),(12,NULL,4,4,'2021-11-16 09:01:25',3),(13,'2021-11-16 12:01:01',6,10,'2021-11-16 11:45:01',4),(14,'2021-11-16 13:10:10',5,5,'2021-11-16 13:00:10',4),(15,'2021-11-16 17:34:20',1,1,'2021-11-16 17:15:20',4),(16,NULL,3,3,'2021-11-16 11:00:20',3),(17,'2021-11-16 11:45:40',6,6,'2021-11-16 11:35:40',4),(18,NULL,8,8,'2021-11-16 12:15:15',3),(19,NULL,2,2,'2021-11-16 11:57:10',3),(20,NULL,2,2,'2021-11-16 13:34:55',3),(21,'2021-11-16 12:01:01',7,10,'2021-11-16 11:45:01',4),(22,'2021-11-16 13:10:10',9,5,'2021-11-16 13:00:10',4),(23,'2021-11-16 17:34:20',10,1,'2021-11-16 17:15:20',4),(24,NULL,5,10,'2021-11-17 10:11:00',3),(25,NULL,4,4,'2021-11-17 09:01:25',3),(26,'2021-11-17 12:01:01',6,10,'2021-11-17 11:45:01',4),(27,'2021-11-17 13:10:10',5,5,'2021-11-17 13:00:10',4),(28,'2021-11-17 17:34:20',1,1,'2021-11-17 17:15:20',4),(29,NULL,3,3,'2021-11-17 11:00:20',3),(30,'2021-11-17 11:45:40',6,6,'2021-11-17 11:35:40',4),(31,NULL,8,8,'2021-11-17 12:15:15',3),(32,NULL,2,2,'2021-11-17 11:57:10',3),(33,NULL,2,2,'2021-11-17 13:34:55',3),(34,'2021-11-17 12:01:01',7,10,'2021-11-17 11:45:01',4),(35,'2021-11-17 13:10:10',9,5,'2021-11-17 13:00:10',4),(36,'2021-11-17 17:34:20',10,1,'2021-11-17 17:15:20',4),(37,NULL,5,10,'2021-11-18 10:11:00',3),(38,NULL,4,4,'2021-11-18 09:01:25',3),(39,'2021-11-18 12:01:01',6,10,'2021-11-18 11:45:01',4),(40,'2021-11-18 13:10:10',5,5,'2021-11-18 13:00:10',4),(41,'2021-11-18 17:34:20',1,1,'2021-11-18 17:15:20',4),(42,NULL,3,3,'2021-11-18 11:00:20',3),(43,'2021-11-18 11:45:40',6,6,'2021-11-18 11:35:40',4),(44,NULL,8,8,'2021-11-18 12:15:15',3),(45,NULL,2,2,'2021-11-18 11:57:10',3),(46,NULL,2,2,'2021-11-18 13:34:55',3),(47,'2021-11-18 12:01:01',7,10,'2021-11-18 11:45:01',4),(48,'2021-11-18 13:10:10',9,5,'2021-11-18 13:00:10',4),(49,'2021-11-18 17:34:20',10,1,'2021-11-18 17:15:20',4),(50,NULL,5,10,'2021-11-19 10:11:00',3),(51,NULL,4,4,'2021-11-19 09:01:25',3),(52,'2021-11-19 12:01:01',6,10,'2021-11-19 11:45:01',4),(53,'2021-11-19 13:10:10',5,5,'2021-11-19 13:00:10',4),(54,'2021-11-19 17:34:20',1,1,'2021-11-19 17:15:20',4),(55,NULL,3,3,'2021-11-19 11:00:20',3),(56,'2021-11-19 11:45:40',6,6,'2021-11-19 11:35:40',4),(57,NULL,8,8,'2021-11-19 12:15:15',3),(58,NULL,2,2,'2021-11-19 11:57:10',3),(59,NULL,2,2,'2021-11-19 13:34:55',3),(60,'2021-11-19 12:01:01',7,10,'2021-11-19 11:45:01',4),(61,'2021-11-19 13:10:10',9,5,'2021-11-19 13:00:10',4),(62,'2021-11-19 17:34:20',10,1,'2021-11-19 17:15:20',4),(63,NULL,5,10,'2021-11-20 10:11:00',3),(64,NULL,4,4,'2021-11-20 09:01:25',3),(65,'2021-11-20 12:01:01',6,10,'2021-11-20 11:45:01',4),(66,'2021-11-20 13:10:10',5,5,'2021-11-20 13:00:10',4),(67,'2021-11-20 17:34:20',1,1,'2021-11-20 17:15:20',4),(68,NULL,3,3,'2021-11-20 11:00:20',3),(69,'2021-11-20 11:45:40',6,6,'2021-11-20 11:35:40',4),(70,NULL,8,8,'2021-11-20 12:15:15',3),(71,NULL,2,2,'2021-11-20 11:57:10',3),(72,NULL,2,2,'2021-11-20 13:34:55',3),(73,'2021-11-20 12:01:01',7,10,'2021-11-20 11:45:01',4),(74,'2021-11-20 13:10:10',9,5,'2021-11-20 13:00:10',4),(75,'2021-11-20 17:34:20',10,1,'2021-11-20 17:15:20',4),(76,NULL,5,10,'2021-11-21 10:11:00',3),(77,NULL,4,4,'2021-11-21 09:01:25',3),(78,'2021-11-21 12:01:01',6,10,'2021-11-21 11:45:01',4),(79,'2021-11-21 13:10:10',5,5,'2021-11-21 13:00:10',4),(80,'2021-11-21 17:34:20',1,1,'2021-11-21 17:15:20',4),(81,NULL,3,3,'2021-11-21 11:00:20',3),(82,'2021-11-21 11:45:40',6,6,'2021-11-21 11:35:40',4),(83,NULL,8,8,'2021-11-21 12:15:15',3),(84,NULL,2,2,'2021-11-21 11:57:10',3),(85,NULL,2,2,'2021-11-21 13:34:55',3),(86,'2021-11-21 12:01:01',7,10,'2021-11-21 11:45:01',4),(87,'2021-11-21 13:10:10',9,5,'2021-11-21 13:00:10',4),(88,'2021-11-21 17:34:20',10,1,'2021-11-21 17:15:20',4),(89,NULL,5,10,'2021-11-22 10:11:00',3),(90,NULL,4,4,'2021-11-22 09:01:25',3),(91,'2021-11-22 12:01:01',6,10,'2021-11-22 11:45:01',4),(92,'2021-11-22 13:10:10',5,5,'2021-11-22 13:00:10',4),(93,'2021-11-22 17:34:20',1,1,'2021-11-22 17:15:20',4),(94,NULL,3,3,'2021-11-22 11:00:20',3),(95,'2021-11-22 11:45:40',6,6,'2021-11-22 11:35:40',4),(96,NULL,8,8,'2021-11-22 12:15:15',3),(97,NULL,2,2,'2021-11-22 11:57:10',3),(98,NULL,2,2,'2021-11-22 13:34:55',3),(99,'2021-11-22 12:01:01',7,10,'2021-11-22 11:45:01',4),(100,'2021-11-22 13:10:10',9,5,'2021-11-22 13:00:10',4),(101,'2021-11-22 17:34:20',10,1,'2021-11-22 17:15:20',4),(102,NULL,5,10,'2021-11-23 10:11:00',3),(103,NULL,4,4,'2021-11-23 09:01:25',3),(104,'2021-11-23 12:01:01',6,10,'2021-11-23 11:45:01',4),(105,'2021-11-23 13:10:10',5,5,'2021-11-23 13:00:10',4),(106,'2021-11-23 17:34:20',1,1,'2021-11-23 17:15:20',4),(107,NULL,3,3,'2021-11-23 11:00:20',3),(108,'2021-11-23 11:45:40',6,6,'2021-11-23 11:35:40',4),(109,NULL,8,8,'2021-11-23 12:15:15',3),(110,NULL,2,2,'2021-11-23 11:57:10',3),(111,NULL,2,2,'2021-11-23 13:34:55',3),(112,'2021-11-23 12:01:01',7,10,'2021-11-23 11:45:01',4),(113,'2021-11-23 13:10:10',9,5,'2021-11-23 13:00:10',4),(114,'2021-11-23 17:34:20',10,1,'2021-11-23 17:15:20',4),(115,NULL,5,10,'2021-11-24 10:11:00',3),(116,NULL,4,4,'2021-11-24 09:01:25',3),(117,'2021-11-24 12:01:01',6,10,'2021-11-24 11:45:01',4),(118,'2021-11-24 13:10:10',5,5,'2021-11-24 13:00:10',4),(119,'2021-11-24 17:34:20',1,1,'2021-11-24 17:15:20',4),(120,NULL,3,3,'2021-11-24 11:00:20',3),(121,'2021-11-24 11:45:40',6,6,'2021-11-24 11:35:40',4),(122,NULL,8,8,'2021-11-24 12:15:15',3),(123,NULL,2,2,'2021-11-24 11:57:10',3),(124,NULL,2,2,'2021-11-24 13:34:55',3),(125,'2021-11-24 12:01:01',7,10,'2021-11-24 11:45:01',4),(126,'2021-11-24 13:10:10',9,5,'2021-11-24 13:00:10',4),(127,'2021-11-24 17:34:20',10,1,'2021-11-24 17:15:20',4),(128,NULL,5,10,'2021-11-25 10:11:00',3),(129,NULL,4,4,'2021-11-25 09:01:25',3),(130,'2021-11-25 12:01:01',6,10,'2021-11-25 11:45:01',4),(131,'2021-11-25 13:10:10',5,5,'2021-11-25 13:00:10',4),(132,'2021-11-25 17:34:20',1,1,'2021-11-25 17:15:20',4),(133,NULL,3,3,'2021-11-25 11:00:20',3),(134,'2021-11-25 11:45:40',6,6,'2021-11-25 11:35:40',4),(135,NULL,8,8,'2021-11-25 12:15:15',3),(136,NULL,2,2,'2021-11-25 11:57:10',3),(137,NULL,2,2,'2021-11-25 13:34:55',3),(138,'2021-11-25 12:01:01',7,10,'2021-11-25 11:45:01',4),(139,'2021-11-25 13:10:10',9,5,'2021-11-25 13:00:10',4),(140,'2021-11-25 17:34:20',10,1,'2021-11-25 17:15:20',4);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `date_hired` date DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `FKfxtdg5wuan9xxjaldelk8iwp9` (`student_id`),
  CONSTRAINT `FKfxtdg5wuan9xxjaldelk8iwp9` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'1999-03-11','6996164',1),(2,'2010-11-02','6244114',2),(3,'2011-04-21','113654424',3),(4,'2020-12-10','B13654424',4),(5,'2017-05-11','999000680',5),(6,'2001-03-12','A0002144',6),(7,'2014-07-12','94-33-0101',7),(8,'2000-02-09','146825129',8),(9,'2012-03-22','1232805',9),(10,'2011-08-15','G544061739250',10),(12,NULL,'',163);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int NOT NULL AUTO_INCREMENT,
  `degree_college` varchar(255) DEFAULT NULL,
  `highest_degree` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `FKl33qciiumlm97fib7rvlrabqw` (`person_id`),
  CONSTRAINT `FKl33qciiumlm97fib7rvlrabqw` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'UNC Charlotte','Ph.D.','Adjunct Faculty',1),(2,'University of Houston','Ph.D.','Associate Dean and Professor',2),(3,'University of Ottawa','Ph.D.','Associate Teaching Professor',3),(4,'Carnegie Mellon University','Ph.D.','Professor',4),(5,'Nova Southern University, FL','Ph.D.','Adjunct Faculty',5),(6,'East Carolina University','M.S.','Lecturer',6),(7,'University of North Dakota','Ph.D.','Adjunct Faculty',7),(8,'North Carolina State University','Ph.D.','Associate Chair - Academics, Teaching Assistant Professor',8),(9,'University of North Texas','Ph.D.','Senior Lecturer',9),(10,'The University of Texas at Austin','Ph.D.','Associate Professor',10),(11,'SJSU','Master','Professor',11),(12,'UF','Bachelor','Assistant Professor',16),(13,'Duke','PhD','Assistant Professor',15),(14,'NCSU','Master','Professor',12),(15,'CMU','Bachelor','Assistant Professor',14),(16,'NCSU','PhD','Assistant Professor',22),(17,'Harvard','Bachelor','Adjunct Professor',25),(18,'Stanford','Master','Adjunct Professor',17),(19,'UNCC','PhD','Assistant Professor',18),(20,'CMU','Bachelor','Assistant Professor',24),(21,'Stanford','PhD','Adjunct Professor',23),(22,'CMU','PhD','Assistant Professor',19),(23,'Stanford','PhD','Professor',20),(24,'NCSU','PhD','Adjunct Professor',13),(25,'UCLA','PhD','Assistant Professor',205);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FKkni9axj2288cnkoxbe0c1qt2i` (`restaurant_id`),
  CONSTRAINT `FKkni9axj2288cnkoxbe0c1qt2i` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'chick fil A sandwich','4',1),(2,'spicy Chicken Sandwich','4',1),(3,'Grilled chicken Sandwich','4',1),(4,'chick fil A nuggets','4',1),(5,'grill nuggets','4',1),(6,'cobb salad','4',1),(7,'the original orange chicken','7',2),(8,'honey sesame chicken breast','7',2),(9,'kungpao chicken','7',2),(10,'grilled teriyaki Chicken','7',2),(11,'honey walnut shrimp','7',2),(12,'Beijing Beef','7',2),(13,'chicken& bacon Ranchf','8',3),(14,'Black forest Ham','8',3),(15,'Itallian B.M.T','8',3),(16,'Roast Beef','8',3),(17,'Subway Club','8',3),(18,'All-American Club','8',3),(19,'Peppermint Mocha','4.5',4),(20,'Chai Latte','4.5',4),(21,'Holiday Spice Latte','4.5',4),(22,'Caramel Macchiato','4.5',4),(23,'Cafe Latte','4.5',4),(24,'Americano','4.5',4),(25,'Americano','5',5),(26,'Honey Butter Chicken Biscuit','5',5),(27,'Classic Big Bacon Cheddar Chicken','5',5),(28,'Classic Chicken Sandwich','5',5),(29,'Crispy Chicken BLT','5',5),(30,'Grilled Asiago Ranch Club','5',5),(31,'Hunan Chicken','10',6),(32,'Chicken with mixed Vegetables','10',6),(33,'Beef with mixed Vegetables','10',6),(34,'Beef with garlic sauce','10',6),(35,'Kong pao chicken','10',6),(36,'Pork with mixed vegetables','10',6),(37,'Saucer Brazil','13',7),(38,'Big dipper','13',7),(39,'Turkey meltdown','13',7),(40,'Saucer burger','13',7),(41,'The duke','13',7),(42,'Hippie burger','13',7),(43,'CHICKEN TIKKA MASALA','13',8),(44,'CHICKEN SAAG','13',8),(45,'CHICKEN MALABAR','13',8),(46,'CHICKEN CURRY','13',8),(47,'CHICKEN KORMA','13',8),(48,'CHICKEN BHUNA','13',8),(49,'Kosher Style Hot Dog','6',9),(50,'Cheese Dog','6',9),(51,'Bacon Dog','6',9),(52,'Bacon hot Dog','6',9),(53,'BLT','6',9),(54,'Grilled Cheese Sandwich','6',9),(55,'Pepperoni Pizza','13.6',10),(56,'The Works Pizza','13.6',10),(57,'Triple Bacon Pizza','13.6',10),(58,'Graden Fresh Pizza','13.6',10),(59,'Hawaiian BBQ Chicken Pizza','13.6',10),(60,'The Meats Pizza','13.6',10),(62,'Chicken Burger','5',1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `drop_off_point` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location_address` varchar(255) DEFAULT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,NULL,'35.227085','9518 Grove Side Ln, Charlotte, NC 28262','Apt 912','-80.843124'),(2,NULL,'35.227085','1266 Varsity Ln, Charlotte, NC 28262','Apt 1266','-80.843124'),(3,NULL,'35.227085','1300 Varsity Ln, Charlotte, NC 28262','Apt 1300','-80.843124'),(4,NULL,'35.227085','Fretwell','330A','-80.843124'),(5,NULL,'35.227085','9915 University Village Blvd, Charlotte, NC 28262',NULL,'-80.843124'),(6,'1097 Wellington\nValleys Apt. 395','-33.883942','0552 Oran\nForest Apt. 992\nMurazikview, NH 38317','Apt. 102','-170.177924'),(7,'408 Arely Streets Suite 405','-64.515628','6422 Nicolas Parkway Apt. 645\nPort Chadrick, FL \n35738-8854','Apt. 309','8.086937'),(8,'5539 Mohammad Heights','86.553283','7342 Lon Burgs Apt. 111\nGriffinborough, VT 64308','Apt. \n210','-\n141.049418'),(9,'65717 Emmerich Walks','5.180228','11269 Satterfield Knoll\nnMauricehaven, WA 28902','Suite 985','-52.389443'),(10,'658 Muhammad Land','44.909586','147 Rempel Fork Apt. 940\nLake Delbert, LA \n88131','Suite\n343','153.999345'),(11,'27516 Elizabeth Road\nSuite 956','-54.503176','6402 Nienow \nBranch\nAriannatown, OK 28871-1749','Suite 534','-25.420009'),(12,'67672 Frederik Skyway','-\n54.104944','500 Boyle Gardens\nEast Amaliamouth, NY 48976','Apt. 170','162.891267'),(13,'7712 Maddison Centers\nSuite 850','2.597478','10112 Rau Station\nApt. 761\nGarryland, AL 55900-5843','Suite 059','-155.953323'),(14,'136 O\'Connell Cape','30.753077','3808 Doyle Trail\nEast Silas, IA 37233-\n1658','Suite 699','86.288575'),(15,'77965\nDestini Expressway Apt. 959','-66.122207','20238 \nAltenwerth Loaf Suite 010\nDereckshire, VA 95393','Apt. 286','-149.824885'),(16,'549 McClure Mission Apt. 918','2.515638','9248 Bogisich Valleys\nTrompstad, NC\n13748-3393','Suite 691','177.753639'),(17,'11522 Haag Ferry Suite 031','-\n68.893434','204 Boyle Fort Apt. 653\nKautzerbury, LA 72319-3112','Apt. \n332','174.800381'),(18,'277 Mitchell Groves','28.507958','63501 Funk \nMeadows\nUptonland, SD 60736-9385','Apt. 158','-75.256071'),(19,'43775 Narciso Plains','-16.610616','5924 Wuckert Meadow\nSouth Peggieview, GA 74295','Suite 575','-\n72.268415'),(20,'3512 Carmela Cove Apt. 544','65.738737','345 Hermiston Streets\nnPadbergton, MT 28143','Suite 268','58.149015'),(21,'3838 Kirk Estates','67.141265','873 Percival Lights Suite 233\nAliviaview, GA 03965','Apt. 524','-\n173.513727'),(22,'2610 Nolan Mill','5.838614','66253 Reynolds Estate Suite 044\nnSimonisside, WA 61688','Apt. 190','-111.040987'),(23,'82341 Bernier Hills','38.930320','80612 Huel Shoal Suite 474\nGustavetown, NY 21745','Suite \n971','-\n13.117365'),(24,'4173 Theodora Plains','7.830370','0276 Tamia Station Suite 735\nnSolonfort, RI 12291-5788','Suite 241','144.207856'),(25,'4485 Larissa Locks','-12.199068','61231 Oda Loaf\nNew Nayeli, AK 82397','Apt. 982','-\n17.852044'),(26,'7989 Keira Fields','-18.154077','3756 Terry Garden\nEast \nLowellchester, AR 21100-1833','Apt. 366','-82.234137'),(27,'6354 Chaya Inlet Apt. 859','32.289014','080 Darian Court\nSchuppemouth, NY 01757-0964','Apt. 655','-\n51.656823'),(28,'8576 Mraz Route','-77.441834','077 Jones Way\nSouth Mac, \nNH 34012','Suite 627','138.508983'),(29,'5524 Amina Meadow','21.713872','532 Walsh \nRest\nClementtown, KS 33449-1356','Apt. 067','64.510151'),(30,'21779 Nikolaus Common Apt. 851','3.125229','62852 Josianne Mills\nEast Jeromeview, LA 82405','Apt. 435','-\n111.949983'),(31,'352 Lehner \nClub','-4.658250','3932 Alysha Station \nSuite 223\nLake Jakeland, WI 16933-0548','Apt. 862','90.607759'),(32,'7245 Lindgren Mount','-\n72.446033','675 Giuseppe Divide\nNorth Angela, NY 08608','Apt. 547','47.048924'),(33,'15710 Leon \nViaduct','51.665170','752 Cecilia Bypass \nApt. 959\nSanfordhaven, WA 56971-1157','Suite 890','77.806552'),(34,'657 Annie Mission Apt. 557','11.881816','7598 Klocko Oval Apt. 344\nDavionview, OH \n58638','Suite 328','73.668767'),(35,'369 Schumm Lock \nApt. 238','24.690149','485 \nGrayce Oval\nWest Jarrett, IA 91623-1323','Suite 753','66.045301'),(36,'091 Matilde Plains','-\n74.927689','21545 Lind Avenue Apt. 382\nPredovicview, MI 29544','Apt. 645','83.265896'),(37,'83844 Colten Locks Apt. 489','66.394980','6198 Fay Wells\nnGaylordstad, CT 61152','Suite 951','-59.050144'),(38,'5860 Herbert Mill Apt. 351','-66.245838','346 Schaefer Coves\nJadeland, MS 78153','Suite 216','-\n158.722669'),(39,'333 Kassulke Stravenue Suite \n365','56.745502','784 Nickolas Prairie\nnEmmanuelleberg, MO 24742','Suite 468','-157.051267'),(40,'1610 Hermina Harbor','29.819380','7517 Leonard Viaduct Apt. 845\nBettiestad, MI 44408-\n9670','Apt. 687','-32.122210'),(41,'0930 Kessler Pines','-84.989439','50315 Frami \nAvenue\nLubowitztown, AR 11074','Apt. 130','-80.878304'),(42,'27321 Jonas Lodge','42.828977','46127 Rowe Meadows\nPort Kacey, OH \n67514','Apt. 621','103.587679'),(43,'674 Axel \nSquare Apt. 434','-64.609637','13115 Goyette \nHill Apt. 020\nNew Viviane, WI 82795-6389','Apt. 339','91.929908'),(44,'90325 Samson Manors','2.426098','64736 Michale Dam Suite 996\nVioletton, CT \n07419-1266','Suite 091','-55.634546'),(45,'70401\nAndres Cape','9.188521','8865 \nWeimann Meadows Apt. 986\nNew Darrin, ND 68683-4367','Suite 606','150.453880'),(46,'4599 Crona Wall','-\n87.709982','0651 Hoeger Route\nNew Madelineport, NJ 20757','Apt. 895','76.089939'),(47,'827 Barrows Grove Suite 824','-21.845400','48826 Jacobson Rue Apt. \n189\nNew Javon, MT 26911','Suite 874','35.257482'),(48,'832 Muller Valley','-78.054954','4926 Lupe Prairie Apt. 046\nBeckerville, ME 26965','Apt. 942','-\n130.852481'),(49,'4022 Koelpin Fords Apt. \n743','72.283789','69415 Gerry Wall Suite 971\nnBeattyfort, VT 50012-9205','Apt. 614','-108.170390'),(50,'0068 Tromp Centers','-\n38.728546','666 Heller Club Apt. 467\nBurleyshire, MD 54385-3107','Apt. 030','-35.072223'),(51,'346 Janae Harbor Suite 458','-8.897519','794 Hilbert Roads\nnWilhelminemouth, DC 00100','Apt. 940','88.848386'),(52,'36035 Barton Crest','23.408943','65073 Aufderhar Mission Suite 778\nLoniestad, SD 78878-\n6419','Apt. 634','165.398873'),(53,'321 Margarett Path','-59.088037','746 Jalon \nFort\nDariofort, MA 79648','Apt. 782','-103.347456'),(54,'189 Blick Manors Apt. 066','-\n26.565917','8353 Alejandra Heights\nNorth Gardner, AR 00733-0393','Suite 426','115.692025'),(55,'2245 Alexander Forest \nApt. 581','-37.074660','62270 Katelynn\nViews\nTomborough, WV 24093-0247','Apt. 709','76.206560'),(56,'49283 Kamryn Point Suite 174','46.302614','7814 Stanley Ramp\nNorth Alene, MA 01296-\n2354','Suite 991','-25.734456'),(57,'1714 Dena \nFerry Suite 821','-20.775978','65592 Liam Route\nLucymouth, VA 96459','Suite \n960','121.809647'),(58,'5529 Rosamond Forges Suite 578','-82.197132','18848 Heaney Knoll Apt. 745\nLake Genoveva, FL \n65517-3493','Apt. 765','47.558329'),(59,'3021 Baumbach Terrace Suite 512','-84.757382','7033 Yost Drive Apt. 553\nMekhiview, OK 48129-1227','Suite \n078','-\n58.654951'),(60,'9338 Chadd Landing','-41.348220','8312 Elaina Stream\nnOsborneview, ME 31318','Apt. 554','-36.548238'),(61,'036 \nRebeca Ports Suite 971','77.113732','32904 Kunze Point\nWest Marlon, KS 96283','Apt. \n649','173.740537'),(62,'6591 Murazik Fields','41.839736','2055 Reinger Isle Suite 643\nPort \nGilbert, CO 29400','Suite 285','140.371966'),(63,'0573 Jennie Centers Suite 444','-\n12.717245','4927 Rowe Mountains Suite 840\nRomafort, OR 55775-5302','Suite \n131','98.803269'),(64,'847 Alexandrine\nPine','39.412911','38523 \nEbert Plains\nNorth Reesemouth, PA 81161','Suite 549','-13.612642'),(65,'715 Elena Prairie','74.904833','577 Bosco Green Apt. 208\nRubytown, CO \n67492','Suite 057','138.781453'),(66,'32117 Larkin Glens \nSuite 120','80.350868','2759 Emmalee \nRadial\nBogisichmouth, GA 93636-4262','Apt. 224','109.402133'),(67,'6672 O\'Reilly Station Apt. 304','51.879563','122 Frederick Plaza Suite 326\nLarkinfurt, LA 61011-\n0332','Suite 842','139.262053'),(68,'60762 \nLafayette Mount','54.628958','1579 Cyrus Square\nPort Raphaelle, SD 02230','Suite \n051','16.532622'),(69,'37963 Eliseo Field Suite 782','55.835435','354 Konopelski Mission Suite 967\nNorth Waldo, \nNH 57787','Suite 566','121.519774'),(70,'3011 \nKeagan Cliff','2.428639','270 Wyman Burgs\nSchmidtborough, ID 31185','Suite \n194','18.915083'),(71,'601 Adriana Forge','-31.676452','7180 Devante Hills Suite 245\nSouth Rossie, ND \n77848-7427','Suite 400','-171.620202'),(72,'57056 \nLang Vista Suite 576','-48.152329','5862 \nLeatha Orchard Suite 024\nReubenmouth, LA 38852','Suite 170','144.854379'),(73,'01687 Russel Streets','5.775053','775 Quinton Lane Apt. 482\nQuitzonfort, ID \n32867-1172','Suite 972','120.802147'),(74,'938 \nAbshire Mission','-67.390203','344 \nRylee Vista Apt. 872\nElvistown, CO 63706-4744','Apt. 814','-38.347276'),(75,'404 Ena Crest Suite 279','-71.989135','45232 Jast Shoals Apt. 768\nWest Nelsview, KY \n81086-6074','Apt. 669','168.958988'),(76,'2263 \nElla Lodge Apt. 429','47.057137','576 Huels Burgs\nPort Fritz, OH 46070-9005','Suite \n564','115.145131'),(77,'4862 Stone Coves','-53.323383','065 Stracke Mountain Suite 204\nnWildermantown, MS 82948-2075','Suite 399','140.320853'),(78,'833 Colten Shore','-\n6.897948','91865 Letha Village Suite 621\nLangchester, ND 52116','Apt. 094','-60.925732'),(79,'395 Koepp Plain','-33.475706','25427 Casimer Oval Apt. \n791\nNorth Herta, TN 66396-2943','Apt. 567','131.064403'),(80,'165 Mercedes Place Apt. 655','-\n53.028515','688 Hahn Centers\nPort Alphonsoview, RI 76712','Suite 693','19.837964'),(81,'2862 Marty \nThroughway','-76.085998','658 Conor \nPort Apt. 489\nAbigaleview, IN 71308-0448','Suite 509','-54.565506'),(82,'45787 Chaya Forks','0.498058','6248 Frida Neck\nHarveyport, NJ 19092-\n3293','Apt. 678','39.425007'),(83,'60734 Kathlyn \nRue Suite 096','-72.426565','19376 Name Neck \nSuite 362\nAntonioland, NV 49104-5101','Apt. 539','-153.978776'),(84,'0603 Ryan Glens','20.498983','16736 Annabel Rapid Suite 989\nPort\n Halie, VT 56468','Suite 174','-156.991411'),(85,'12273 Paucek \nMount Suite 261','-67.186395','522 \nWaelchi Ramp\nSouth Polly, HI 61817-1149','Apt. 010','95.299372'),(86,'9742 Nico Turnpike Apt. 716','-79.339662','20209 Mazie Glens Suite 966\nGwenview, KY \n53849','Suite 873','-18.135492'),(87,'667 Nyasia Stravenue Apt. 223','81.564385','8187 O\'Kon Loop Suite 540\nSouth Mikeborough, MT 08645-\n7217','Apt. \n198','129.153519'),(88,'313 \nToy Shore','-62.141340','3824 Jerald Wells\nLednerchester, IL 34650','Apt. \n386','-50.218426'),(89,'48675 Mann Mission','-\n45.361426','9946 Evangeline Trail\nMitchellfurt, KS 78732','Apt. 627','141.801986'),(90,'04507 Aisha Light','-37.629458','359 Reichel Course\nnPort Heathville, NV 22035-1749','Apt. 408','142.868503'),(91,'7894 Wiegand Center','44.019826','2841 Matilda Light\nNew Berneice, KY 93006-\n1067','Apt. 940','61.089192'),(92,'000 Gleichner Groves Suite \n760','5.537848','09351 Dawn \nIsle\nPort Monty, IN 03900','Suite 523','-47.637225'),(93,'7213 Unique Curve Apt. 238','-\n58.840136','9156 Earlene Drives\nFadelbury, VA 22109-1994','Suite 515','-151.166289'),(94,'843 \nKonopelski Gardens Apt. 507','64.883603','3194 \nVonRueden Road Suite 638\nEast Tiana, NE 22875','Suite 390','157.722086'),(95,'853 Fritsch Street Suite 159','28.826289','441 Steuber Landing Suite 981\nnBayleehaven, DC 05649','Suite 353','41.172158'),(96,'9168 Lilly Ranch Apt. 651','55.711350','94240 Tremblay Viaduct Suite 169\nNew Melody, AR \n25552','Suite 901','161.543504'),(97,'2852 \nMarisol Meadows Suite 534','-26.328698','26914 \nJohnston Via Suite 614\nGloverport, GA 39771','Apt. 441','120.427582'),(98,'57866 Birdie Corners','-68.889173','863 Nina Village\nSouth Vernonberg, WA \n34268','Apt. 481','84.854941'),(99,'97642 \nRempel Tunnel Suite 610','-35.314166','50421 \nHeaney Unions\nNew Pasquale, AK 98565-2159','Apt. 412','-155.680802'),(100,'778 Cassandre Cliff','66.232111','42828 Evangeline Square\nJacklynfort, AK\n42024-2081','Apt. 474','91.681238'),(101,'7893 Zita Mission Suite 949','-60.101046','69612 Will Ferry\nEwellfort, KS \n63168','Suite 157','101.481031'),(102,'456 \nLucio Common','43.715801','711 \nSammie Manor Apt. 863\nNorth Derek, NC 10578-4530','Apt. 080','3.213285'),(103,'145 Hal Skyway','89.842723','28742 Cole Forest Suite 483\nPort Jettiestad, RI \n73714','Suite 057','176.244614'),(104,'783 Travis \nJunction Apt. 728','58.930520','356 Anderson Ridge\nSuite 742\nNorth Napoleon, VT 49903-3077','Apt. 443','109.869865'),(105,'29350 Vandervort Estates','79.842372','160 Skylar Union Apt. 740\nNew Elna, WY 49897-\n8734','Suite 615','-61.397932');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `delivery_charge` float DEFAULT NULL,
  `total_price` float DEFAULT NULL,
  `delivery_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `ordered_time` datetime DEFAULT NULL,
  `order_status` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKtkrur7wg4d8ax0pwgo0vmy20c` (`delivery_id`),
  KEY `FKlfsgolihtmfujlg0egc76sh8w` (`driver_id`),
  KEY `FKt6x8q6pvlj6oucw69uoicfaoj` (`location_id`),
  KEY `FK1b0m4muwx1t377w9if3w6wwqn` (`person_id`),
  KEY `FKi7hgjxhw21nei3xgpe4nnpenh` (`restaurant_id`),
  KEY `FKjj68t2xat2tkgajwj895imt6g` (`order_status`),
  CONSTRAINT `FK1b0m4muwx1t377w9if3w6wwqn` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `FKi7hgjxhw21nei3xgpe4nnpenh` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `FKjj68t2xat2tkgajwj895imt6g` FOREIGN KEY (`order_status`) REFERENCES `status` (`status_id`),
  CONSTRAINT `FKlfsgolihtmfujlg0egc76sh8w` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `FKt6x8q6pvlj6oucw69uoicfaoj` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `FKtkrur7wg4d8ax0pwgo0vmy20c` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,5,19,2,3,2,2,7,'2021-11-15 09:30:00',2),(2,5,30,1,7,3,3,6,'2021-11-15 08:25:00',2),(3,5,4,3,9,1,1,1,'2021-11-15 11:31:01',2),(4,5,18.6,5,8,4,5,5,'2021-11-15 16:59:11',2),(5,5,7,4,4,1,4,2,'2021-11-15 12:50:20',2),(6,5,12,6,10,5,6,2,'2021-11-15 10:45:33',2),(7,5,10,7,2,4,6,7,'2021-11-15 11:15:29',2),(8,5,8,8,5,4,9,3,'2021-11-15 11:50:15',2),(9,5,26,9,3,2,2,7,'2021-11-15 11:26:10',2),(10,5,18,10,3,4,10,5,'2021-11-15 13:00:25',2),(11,5,6,NULL,1,4,9,8,'2021-11-15 11:00:26',1),(12,5,9,NULL,3,4,9,4,'2021-11-15 11:15:14',1),(253,5,19,12,3,2,2,7,'2021-11-16 09:30:00',2),(254,5,30,11,7,3,3,6,'2021-11-16 08:25:00',2),(255,5,4,13,9,1,1,1,'2021-11-16 11:31:01',2),(256,5,18.6,15,8,4,5,5,'2021-11-16 16:59:11',2),(257,5,7,14,4,1,4,2,'2021-11-16 12:50:20',2),(258,5,12,16,10,5,6,2,'2021-11-16 10:45:33',2),(259,5,10,17,2,4,6,7,'2021-11-16 11:15:29',2),(260,5,8,18,5,4,9,3,'2021-11-16 11:50:15',2),(261,5,26,19,3,2,2,7,'2021-11-16 11:26:10',2),(262,5,18,20,3,4,10,5,'2021-11-16 13:00:25',2),(263,5,6,NULL,1,4,9,8,'2021-11-16 11:00:26',1),(264,5,9,NULL,3,4,9,4,'2021-11-16 11:15:14',1),(265,5,19,22,3,2,2,7,'2021-11-17 09:30:00',2),(266,5,30,21,7,3,3,6,'2021-11-17 08:25:00',2),(267,5,4,23,9,1,1,1,'2021-11-17 11:31:01',2),(268,5,18.6,25,8,4,5,5,'2021-11-17 16:59:11',2),(269,5,7,24,4,1,4,2,'2021-11-17 12:50:20',2),(270,5,12,26,10,5,6,2,'2021-11-17 10:45:33',2),(271,5,10,27,2,4,6,7,'2021-11-17 11:15:29',2),(272,5,8,28,5,4,9,3,'2021-11-17 11:50:15',2),(273,5,26,29,3,2,2,7,'2021-11-17 11:26:10',2),(274,5,18,30,3,4,10,5,'2021-11-17 13:00:25',2),(275,5,6,NULL,1,4,9,8,'2021-11-17 11:00:26',1),(276,5,9,NULL,3,4,9,4,'2021-11-17 11:15:14',1),(277,5,19,32,3,2,2,7,'2021-11-18 09:30:00',2),(278,5,30,31,7,3,3,6,'2021-11-18 08:25:00',2),(279,5,4,33,9,1,1,1,'2021-11-18 11:31:01',2),(280,5,18.6,35,8,4,5,5,'2021-11-18 16:59:11',2),(281,5,7,34,4,1,4,2,'2021-11-18 12:50:20',2),(282,5,12,36,10,5,6,2,'2021-11-18 10:45:33',2),(283,5,10,37,2,4,6,7,'2021-11-18 11:15:29',2),(284,5,8,38,5,4,9,3,'2021-11-18 11:50:15',2),(285,5,26,39,3,2,2,7,'2021-11-18 11:26:10',2),(286,5,18,40,3,4,10,5,'2021-11-18 13:00:25',2),(287,5,6,NULL,1,4,9,8,'2021-11-18 11:00:26',1),(288,5,9,NULL,3,4,9,4,'2021-11-18 11:15:14',1),(289,5,19,42,3,2,2,7,'2021-11-19 09:30:00',2),(290,5,30,41,7,3,3,6,'2021-11-19 08:25:00',2),(291,5,4,43,9,1,1,1,'2021-11-19 11:31:01',2),(292,5,18.6,45,8,4,5,5,'2021-11-19 16:59:11',2),(293,5,7,44,4,1,4,2,'2021-11-19 12:50:20',2),(294,5,12,46,10,5,6,2,'2021-11-19 10:45:33',2),(295,5,10,47,2,4,6,7,'2021-11-19 11:15:29',2),(296,5,8,48,5,4,9,3,'2021-11-19 11:50:15',2),(297,5,26,49,3,2,2,7,'2021-11-19 11:26:10',2),(298,5,18,50,3,4,10,5,'2021-11-19 13:00:25',2),(299,5,6,NULL,1,4,9,8,'2021-11-19 11:00:26',1),(300,5,9,NULL,3,4,9,4,'2021-11-19 11:15:14',1),(301,5,19,52,3,2,2,7,'2021-11-20 09:30:00',2),(302,5,30,51,7,3,3,6,'2021-11-20 08:25:00',2),(303,5,4,53,9,1,1,1,'2021-11-20 11:31:01',2),(304,5,18.6,55,8,4,5,5,'2021-11-20 16:59:11',2),(305,5,7,54,4,1,4,2,'2021-11-20 12:50:20',2),(306,5,12,56,10,5,6,2,'2021-11-20 10:45:33',2),(307,5,10,57,2,4,6,7,'2021-11-20 11:15:29',2),(308,5,8,58,5,4,9,3,'2021-11-20 11:50:15',2),(309,5,26,59,3,2,2,7,'2021-11-20 11:26:10',2),(310,5,18,60,3,4,10,5,'2021-11-20 13:00:25',2),(311,5,6,NULL,1,4,9,8,'2021-11-20 11:00:26',1),(312,5,9,NULL,3,4,9,4,'2021-11-20 11:15:14',1),(313,5,19,62,3,2,2,7,'2021-11-21 09:30:00',2),(314,5,30,61,7,3,3,6,'2021-11-21 08:25:00',2),(315,5,4,63,9,1,1,1,'2021-11-21 11:31:01',2),(316,5,18.6,65,8,4,5,5,'2021-11-21 16:59:11',2),(317,5,7,64,4,1,4,2,'2021-11-21 12:50:20',2),(318,5,12,66,10,5,6,2,'2021-11-21 10:45:33',2),(319,5,10,67,2,4,6,7,'2021-11-21 11:15:29',2),(320,5,8,68,5,4,9,3,'2021-11-21 11:50:15',2),(321,5,26,69,3,2,2,7,'2021-11-21 11:26:10',2),(322,5,18,70,3,4,10,5,'2021-11-21 13:00:25',2),(323,5,6,NULL,1,4,9,8,'2021-11-21 11:00:26',1),(324,5,9,NULL,3,4,9,4,'2021-11-21 11:15:14',1),(385,5,19,72,3,2,2,7,'2021-11-22 09:30:00',2),(386,5,30,71,7,3,3,6,'2021-11-22 08:25:00',2),(387,5,4,73,9,1,1,1,'2021-11-22 11:31:01',2),(388,5,18.6,75,8,4,5,5,'2021-11-22 16:59:11',2),(389,5,7,74,4,1,4,2,'2021-11-22 12:50:20',2),(390,5,12,76,10,5,6,2,'2021-11-22 10:45:33',2),(391,5,10,77,2,4,6,7,'2021-11-22 11:15:29',2),(392,5,8,78,5,4,9,3,'2021-11-22 11:50:15',2),(393,5,26,79,3,2,2,7,'2021-11-22 11:26:10',2),(394,5,18,80,3,4,10,5,'2021-11-22 13:00:25',2),(395,5,6,NULL,1,4,9,8,'2021-11-22 11:00:26',1),(396,5,9,NULL,3,4,9,4,'2021-11-22 11:15:14',1),(397,5,19,82,3,2,2,7,'2021-11-23 09:30:00',2),(398,5,30,81,7,3,3,6,'2021-11-23 08:25:00',2),(399,5,4,83,9,1,1,1,'2021-11-23 11:31:01',2),(400,5,18.6,85,8,4,5,5,'2021-11-23 16:59:11',2),(401,5,7,84,4,1,4,2,'2021-11-23 12:50:20',2),(402,5,12,86,10,5,6,2,'2021-11-23 10:45:33',2),(403,5,10,87,2,4,6,7,'2021-11-23 11:15:29',2),(404,5,8,88,5,4,9,3,'2021-11-23 11:50:15',2),(405,5,26,89,3,2,2,7,'2021-11-23 11:26:10',2),(406,5,18,90,3,4,10,5,'2021-11-23 13:00:25',2),(407,5,6,NULL,1,4,9,8,'2021-11-23 11:00:26',1),(408,5,9,NULL,3,4,9,4,'2021-11-23 11:15:14',1),(409,5,19,92,3,2,2,7,'2021-11-24 09:30:00',2),(410,5,30,91,7,3,3,6,'2021-11-24 08:25:00',2),(411,5,4,93,9,1,1,1,'2021-11-24 11:31:01',2),(412,5,18.6,95,8,4,5,5,'2021-11-24 16:59:11',2),(413,5,7,94,4,1,4,2,'2021-11-24 12:50:20',2),(414,5,12,96,10,5,6,2,'2021-11-24 10:45:33',2),(415,5,10,97,2,4,6,7,'2021-11-24 11:15:29',2),(416,5,8,98,5,4,9,3,'2021-11-24 11:50:15',2),(417,5,26,99,3,2,2,7,'2021-11-24 11:26:10',2),(418,5,18,100,3,4,10,5,'2021-11-24 13:00:25',2),(419,5,6,NULL,1,4,9,8,'2021-11-24 11:00:26',1),(420,5,9,NULL,3,4,9,4,'2021-11-24 11:15:14',1),(433,5,19,102,3,2,2,7,'2021-11-25 09:30:00',2),(434,5,30,101,7,3,3,6,'2021-11-25 08:25:00',2),(435,5,4,103,9,1,1,1,'2021-11-25 11:31:01',2),(436,5,18.6,105,8,4,5,5,'2021-11-25 16:59:11',2),(437,5,7,104,4,1,4,2,'2021-11-25 12:50:20',2),(438,5,12,106,10,5,6,2,'2021-11-25 10:45:33',2),(439,5,10,107,2,4,6,7,'2021-11-25 11:15:29',2),(440,5,8,108,5,4,9,3,'2021-11-25 11:50:15',2),(441,5,26,109,3,2,2,7,'2021-11-25 11:26:10',2),(442,5,18,110,3,4,10,5,'2021-11-25 13:00:25',2),(443,5,6,NULL,1,4,9,8,'2021-11-25 11:00:26',1),(444,5,9,NULL,3,4,9,4,'2021-11-25 11:15:14',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_items`
--

DROP TABLE IF EXISTS `orders_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_items` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `FKc03a4t5e1xbn9g2qp2k2umr64` (`item_id`),
  CONSTRAINT `FKc03a4t5e1xbn9g2qp2k2umr64` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `FKij1wwgx6o198ubsx1oulpopem` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_items`
--

LOCK TABLES `orders_items` WRITE;
/*!40000 ALTER TABLE `orders_items` DISABLE KEYS */;
INSERT INTO `orders_items` VALUES (3,1),(255,1),(267,1),(279,1),(291,1),(303,1),(315,1),(387,1),(399,1),(411,1),(435,1),(5,7),(257,7),(269,7),(281,7),(293,7),(305,7),(317,7),(389,7),(401,7),(413,7),(437,7),(6,12),(258,12),(270,12),(282,12),(294,12),(306,12),(318,12),(390,12),(402,12),(414,12),(438,12),(8,17),(260,17),(272,17),(284,17),(296,17),(308,17),(320,17),(392,17),(404,17),(416,17),(440,17),(12,20),(264,20),(276,20),(288,20),(300,20),(312,20),(324,20),(396,20),(408,20),(420,20),(444,20),(12,23),(264,23),(276,23),(288,23),(300,23),(312,23),(324,23),(396,23),(408,23),(420,23),(444,23),(4,25),(256,25),(268,25),(280,25),(292,25),(304,25),(316,25),(388,25),(400,25),(412,25),(436,25),(6,26),(258,26),(270,26),(282,26),(294,26),(306,26),(318,26),(390,26),(402,26),(414,26),(438,26),(10,29),(262,29),(274,29),(286,29),(298,29),(310,29),(322,29),(394,29),(406,29),(418,29),(442,29),(2,32),(7,32),(254,32),(259,32),(266,32),(271,32),(278,32),(283,32),(290,32),(295,32),(302,32),(307,32),(314,32),(319,32),(386,32),(391,32),(398,32),(403,32),(410,32),(415,32),(434,32),(439,32),(2,33),(254,33),(266,33),(278,33),(290,33),(302,33),(314,33),(386,33),(398,33),(410,33),(434,33),(2,34),(254,34),(266,34),(278,34),(290,34),(302,34),(314,34),(386,34),(398,34),(410,34),(434,34),(1,37),(253,37),(265,37),(277,37),(289,37),(301,37),(313,37),(385,37),(397,37),(409,37),(433,37),(9,41),(261,41),(273,41),(285,41),(297,41),(309,41),(321,41),(393,41),(405,41),(417,41),(441,41),(9,42),(261,42),(273,42),(285,42),(297,42),(309,42),(321,42),(393,42),(405,42),(417,42),(441,42),(10,45),(262,45),(274,45),(286,45),(298,45),(310,45),(322,45),(394,45),(406,45),(418,45),(442,45),(1,53),(11,53),(253,53),(263,53),(265,53),(275,53),(277,53),(287,53),(289,53),(299,53),(301,53),(311,53),(313,53),(323,53),(385,53),(395,53),(397,53),(407,53),(409,53),(419,53),(433,53),(443,53),(4,58),(256,58),(268,58),(280,58),(292,58),(304,58),(316,58),(388,58),(400,58),(412,58),(436,58);
/*!40000 ALTER TABLE `orders_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `cell` bigint DEFAULT NULL,
  `person_email` varchar(255) DEFAULT NULL,
  `person_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,7046878581,'plthomps@uncc.edu','Dr. Pam thompson'),(2,7046876155,'bcukic@uncc.edu','Bojan Cukic'),(3,7046877888,'dahmed@uncc.edu','Dewan Ahmed'),(4,7046878573,'sakella@uncc.edu','Srinivas Akella'),(5,7048986542,'aaksut@uncc.edu','Ann Aksut'),(6,7046875404,'alston@uncc.edu','Jermaine Alston Jermaine'),(7,7046878581,'amoham19@uncc.edu','Mohammad Farid Atif'),(8,7046878575,'jbahamon@uncc.edu','Julio Bahamon'),(9,7046875444,'aberardinelli@uncc.edu','Angela Berardinelli'),(10,7046878444,'rbunescu@uncc.edu','Razvan Bunescu'),(11,7046878445,'bch@uncc.edu','Benjamin Chavis'),(12,7046878446,'ggilm@uncc.edu','Glenda Gilmore'),(13,7046878447,'jtie@uncc.edu','Jill S. Tietje'),(14,7046878448,'ggbur@uncc.edu','Greg Gbur'),(15,7046878449,'swri@uncc.edu','Shane Wighton'),(16,7046878441,'caike@uncc.edu','Clay Aiken'),(17,7046878442,'natkin@uncc.edu','Nicole Atkins'),(18,7046878443,'save@uncc.edu','Seth Avett'),(19,7046878440,'clane@uncc.edu','Chris Lane'),(20,7046878450,'ebasd@uncc.edu','Eddie Basden'),(21,9767050989,'tkovacek@example.net','Lyric Cassin \nDVM'),(22,9690677374,'auer.everardo@example.net','Sigmund \nTorp'),(23,9634329045,'macie66@example.org','Rahsaan \nCollins'),(24,9842908406,'jeff47@example.net','Ansel \nWelch'),(25,9148329336,'bruen.merlin@example.net','Axel Bins \nPhD'),(26,9451359352,'kautzer.ernestine@example.net','Frank \nLeffler'),(27,9918645459,'montana49@example.com','Eden \nSchowalter'),(28,9988165013,'uupton@example.net','Eldridge \nVon'),(29,9213090583,'emilia.bauch@example.com','Dagmar \nKassulke'),(30,9383676151,'hans36@example.net','Ms. Madelyn Gleichner \nII'),(31,9945887810,'xnicolas@example.com','Lilliana \nEmard'),(32,9289654741,'janelle32@example.org','Mrs. Cheyanne \nKeeling'),(33,9344083273,'jonathan26@example.com','Gabe \nCole'),(34,9416224204,'konopelski.kylee@example.net','Mr. Gabe Bauch \nPhD'),(35,9577172566,'anna04@example.org','Esther \nBrekke'),(36,9837045438,'delmer.wiza@example.com','Mrs. Freida \nMurphy'),(37,9235802954,'sylvia31@example.org','Kellie Nicolas \nV'),(38,9543994427,'madison95@example.org','Blaise \nDare'),(39,9418786674,'hschultz@example.net','Randi Witting \nIV'),(40,9238976740,'camron52@example.com','Dr. Kacey \nGorczany'),(41,9403417764,'queen.davis@example.org','Alexandrine \nDonnelly'),(42,9969106027,'kamryn97@example.org','Adonis \nWilkinson'),(43,9545589550,'cconn@example.net','Mr. Marcelo Breitenberg \nSr.'),(44,9801051720,'lubowitz.lorenza@example.com','Kraig \nLittel'),(45,9179524322,'mraz.danial@example.org','Althea \nShanahan'),(46,9389501779,'kirlin.della@example.net','Haylee \nHickle'),(47,9944432699,'oraynor@example.org','Mallory \nRolfson'),(48,9721533567,'koch.nathen@example.net','Lelia \nTromp'),(49,9943930303,'ervin.homenick@example.org','Nicolette \nLeuschke'),(50,9755087308,'xwill@example.net','Dr. Winston Gottlieb \nDVM'),(51,9717042066,'donny20@example.org','Zackery \nHermiston'),(52,9873383120,'weimann.marshall@example.org','Kari \nRunte'),(53,9826083434,'jesus54@example.org','Alena \nMacejkovic'),(54,9294415272,'wilfred.hickle@example.org','Braeden \nSchamberger'),(55,9236157601,'zion.koch@example.net','Mariana Schowalter \nII'),(56,9627646768,'queen81@example.com','Osvaldo \nCasper'),(57,9598094832,'yharvey@example.com','Malika \nBeatty'),(58,9228064461,'ilueilwitz@example.com','Lisa Conroy \nJr.'),(59,9673098021,'gwendolyn.gerhold@example.net','Earl \nDare'),(60,9246052737,'ryan.d\'amore@example.org','Juvenal \nMcLaughlin'),(61,7049572438,'rchalla5@uncc.edu','Raju Challagundla'),(62,9284770565,'althea.koch@example.org','Emanuel \nSchmitt'),(63,9641407974,'jaylan46@example.net','Bianka \nLarkin'),(64,9139417942,'nathaniel.rowe@example.net','Samson \nHansen'),(65,9743557343,'enrique60@example.org','Westley \nLakin'),(66,9313519846,'fhirthe@example.net','Mr. Shane \nLebsack'),(67,9278293617,'uharris@example.com','Emelie \nGoyette'),(68,9703845293,'rubie.rosenbaum@example.net','Ms. Meredith Gerlach \nII'),(69,9403734826,'larkin.ernestine@example.org','Miss Alberta Conroy \nI'),(70,9348642594,'wpadberg@example.com','Elnora \nWeissnat'),(71,9120762353,'jerald.skiles@example.org','Joey Reichel \nMD'),(72,9268160216,'kovacek.ryann@example.com','Ephraim \nJohnson'),(73,9537042178,'rsteuber@example.net','Mrs. Yesenia Hills \nPhD'),(74,9166374642,'alec.lebsack@example.com','Diana \nStroman'),(75,9456875969,'beer.camren@example.net','Mr. Alfonso Ullrich \nIV'),(76,9279814004,'mafalda94@example.org','Dr. Deon Harber \nIV'),(77,9392527907,'laverna47@example.com','Angus Steuber \nV'),(78,9627926487,'tanner52@example.com','Mrs. Antoinette Tremblay \nV'),(79,9410869140,'orodriguez@example.org','Mr. Alexandre \nBalistreri'),(80,9319090756,'schmidt.waylon@example.org','Seth Russel \nV'),(81,9519262117,'tyler11@example.org','Mr. Terrell \nBecker'),(82,9427541515,'harrison18@example.net','Viviane \nBayer'),(83,9242394545,'seth56@example.net','Mr. Baron Windler \nI'),(84,9259287865,'vhettinger@example.org','Mrs. Kaitlyn Jacobs \nSr.'),(85,9143324793,'tillman.jude@example.com','Javier \nDooley'),(86,9403386314,'germaine.runolfsdottir@example.com','Alvera \nKling'),(87,9163099974,'tyrel13@example.org','Prof. Kamryn \nArmstrong'),(88,9647050394,'tia55@example.org','Alexandrine Berge \nSr.'),(89,9607795527,'randall.strosin@example.com','Beryl \nAdams'),(90,9965444463,'nlangworth@example.org','Dr. Buster Parisian \nIV'),(91,9452681581,'mazie.towne@example.org','Prof. Hiram \nShanahan'),(92,9999885755,'mccullough.kenyon@example.org','Joy \nMacejkovic'),(93,9851384624,'peter.cole@example.org','Stone \nKshlerin'),(94,9459837816,'wweber@example.com','Gladyce \nCole'),(95,9734279443,'augustus08@example.net','Virginia \nRoob'),(96,9644683434,'anita.torphy@example.com','Prof. Rahul \nHowe'),(97,9968760342,'judah.keebler@example.org','Bryon \nHeidenreich'),(98,9328404976,'percy62@example.com','Prof. Yessenia \nBatz'),(99,9168018675,'cassin.elvie@example.org','Emil \nMonahan'),(100,9266256971,'melvin83@example.com','Guillermo \nHaley'),(101,9290692579,'sbatz@example.net','Dr. Xavier \nRyan'),(102,9538369344,'tmurazik@example.org','Dr. Anibal \nGrady'),(103,9336382266,'chance.leannon@example.com','Willis \nWill'),(104,9853200718,'erling.boyle@example.org','Myron \nMayert'),(105,9278446285,'billy.mills@example.org','Eleonore \nKling'),(106,9299958360,'felipe.osinski@example.net','Adrian Orn \nMD'),(107,9468867991,'bhuel@example.net','Mrs. Lavina \nWill'),(108,9303570434,'smcdermott@example.org','Easton Buckridge \nMD'),(109,9383615879,'white.sherwood@example.org','Peyton Christiansen \nII'),(110,9467683043,'filomena.mayer@example.com','Glennie Corkery \nSr.'),(111,9318343144,'brennan.sauer@example.net','Prof. Nola Homenick \nV'),(112,9836340755,'eichmann.rashawn@example.com','Arnaldo Raynor \nIV'),(113,9121545851,'mayert.minerva@example.org','Fabiola Gusikowski \nV'),(114,9628920683,'laney.flatley@example.net','Maxie \nGrady'),(115,9699469427,'hodkiewicz.dean@example.org','Mr. Sigrid \nMorissette'),(116,9606514404,'hnienow@example.net','Prof. Mayra \nSchamberger'),(117,9569544603,'jabbott@example.com','Elisha \nO\'Conner'),(118,9159123982,'kozey.austyn@example.com','Colt \nWyman'),(119,9804473835,'kovacek.shea@example.com','Asha \nKuhic'),(120,9790100203,'vwintheiser@example.org','Claudie \nWilliamson'),(121,9742865777,'wruecker@example.org','Eula \nRolfson'),(122,9759421993,'tierra46@example.net','Prof. Mitchel O\'Kon \nDVM'),(123,9537817472,'khickle@example.net','Erica \nSporer'),(124,9765562675,'alexandro02@example.com','Greta Hodkiewicz \nV'),(125,9976770718,'schimmel.ludie@example.net','Delores \nHuel'),(126,9463113682,'oo\'conner@example.com','Kassandra Quigley \nSr.'),(127,9793665395,'rhoda36@example.com','Hayley \nPfeffer'),(128,9868074160,'jaunita.schmeler@example.com','Garrett \nBotsford'),(129,9115868268,'vlubowitz@example.net','Marco \nZboncak'),(130,9363265672,'kelsie92@example.org','Walton \nGutkowski'),(131,9803198155,'ysporer@example.com','Xzavier \nHilpert'),(132,9980582077,'labadie.karley@example.com','Dr. Alec \nLeannon'),(133,9135280373,'mann.antonio@example.com','Hobart \nMiller'),(134,9463566099,'luella.cummerata@example.org','Ike \nParisian'),(135,9166649183,'jdaniel@example.net','Casey \nFeil'),(136,9627584754,'hills.merritt@example.org','Leopoldo \nWelch'),(137,9695158064,'anna.spinka@example.net','Chasity \nKiehn'),(138,9385173006,'bradtke.zita@example.org','Kenya \nLittel'),(139,9291456099,'joel.olson@example.net','Prof. Roxanne Wilderman \nJr.'),(140,9535890585,'trippin@example.net','Miss Aubrey Sawayn \nMD'),(141,9645155276,'shanny.upton@example.net','Prof. Nathen \nReichert'),(142,9362461068,'hadley.kunze@example.com','Ms. Kassandra \nJacobi'),(143,9851877198,'kub.jameson@example.net','Myrl \nGoodwin'),(144,9416415238,'hassan61@example.org','Bill \nDouglas'),(145,9562685050,'otha37@example.org','Mr. Peter \nD\'Amore'),(146,9692023975,'gillian.von@example.net','Dr. Keshawn Greenholt \nPhD'),(147,9417365224,'eudora.grant@example.com','Ms. Sincere \nMcDermott'),(148,9198585720,'fay.simone@example.net','Prof. Davonte \nHarvey'),(149,9489869630,'wroob@example.org','Adeline \nOndricka'),(150,9304350705,'ukuvalis@example.net','Ms. Opal Fisher \nIV'),(151,9351442884,'imelda58@example.net','Dora \nDouglas'),(152,9253008977,'marlin11@example.org','Prof. Gust \nSchulist'),(153,9299781232,'gkreiger@example.com','Mr. Jamaal \nGraham'),(154,9975958279,'dare.aurelie@example.com','Estevan \nStamm'),(155,9738082899,'damian04@example.org','Eda \nLowe'),(156,9157717821,'nwilliamson@example.net','Caitlyn \nRunolfsdottir'),(157,9214116473,'ali85@example.org','Josh \nBuckridge'),(158,9739257967,'rquitzon@example.net','Amya \nCole'),(159,9145191828,'gayle.hagenes@example.org','Jammie \nBernhard'),(160,9722902908,'bode.marianne@example.com','Meredith \nKonopelski'),(161,9496887232,'kaylie25@example.org','Dr. Russ \nUllrich'),(162,9979440999,'haven70@example.com','Miss Amanda Beier \nIV'),(163,9307513590,'vokuneva@example.net','Everardo \nVonRueden'),(164,9397654914,'katherine17@example.com','Kyla\n Dibbert'),(165,9574385694,'xwaters@example.net','Dr. Celestino \nHegmann'),(166,9403978574,'helga34@example.com','Adella \nGutmann'),(167,9691385176,'qmuller@example.net','Arch \nCassin'),(168,9919339129,'kuphal.elwyn@example.net','Candida \nGutmann'),(169,9379344758,'quitzon.yvonne@example.com','Millie \nMcClure'),(170,9149480450,'gutmann.novella@example.org','Will \nHowe'),(171,9601448593,'hilpert.caden@example.net','Celine \nMertz'),(172,9568191939,'romaguera.odessa@example.com','Cletus Connelly \nDVM'),(173,9596114054,'maximus04@example.com','Abel \nMcLaughlin'),(174,9826873637,'bkirlin@example.org','Marian \nKuphal'),(175,9820809334,'dooley.godfrey@example.net','Rita Vandervort \nII'),(176,9521975342,'ruthie15@example.org','Leann O\'Kon \nSr.'),(177,9835366363,'miguel74@example.org','Maryam \nHyatt'),(178,9280103270,'hagenes.wilbert@example.net','Carmella \nKulas'),(179,9511542747,'lbogan@example.org','Royce Ledner \nII'),(180,9314707204,'hcassin@example.org','Araceli \nEmard'),(181,9814787976,'kathleen.parisian@example.com','Alexandro Strosin \nDVM'),(182,9871777207,'pearl25@example.com','Ernestina \nBlanda'),(183,9462462695,'lloyd62@example.com','Kelly \nKunze'),(184,9532493167,'zack.littel@example.net','Bert Miller \nDVM'),(185,9325208962,'o\'keefe.kevon@example.org','Ima Deckow \nPhD'),(186,9352726912,'nkrajcik@example.net','Giovanna \nHuels'),(187,9558063000,'mozell.bechtelar@example.com','Kaitlyn \nHeller'),(188,9553259799,'adolfo.green@example.net','Evan Herman \nSr.'),(189,9447842897,'norberto98@example.com','Carroll \nHahn'),(190,9775912526,'stiedemann.chandler@example.net','Isaias \nShields'),(191,9203282907,'mcdermott.austin@example.com','Mrs. Emmie Nikolaus \nSr.'),(192,9203988422,'litzy.prosacco@example.com','Audreanne \nOlson'),(193,9961654066,'holly.wolff@example.com','Mr. Lawrence \nMcClure'),(194,9976085056,'cartwright.lonzo@example.net','Dr. Hester \nFeil'),(195,9371313181,'katrina.marvin@example.org','Pearl \nGottlieb'),(196,9615559380,'weissnat.annetta@example.com','Aubrey \nKihn'),(197,9891213805,'thansen@example.net','Odell \nGraham'),(198,9396553983,'rohan.ressie@example.com','Thaddeus \nNader'),(199,9368433529,'judge.predovic@example.org','Miss Stephany \nHarris'),(200,9755384471,'khills@example.com','Prof. Erick \nDaniel'),(201,9802878895,'darora2@uncc.edu','Dhananjay \nArora'),(202,9802878895,'darora2@uncc.edu','Dhananjay \nArora'),(203,9802878896,'darora2@uncc.edu','Dhananjay \nArora'),(204,9802878897,'darora2@uncc.edu','Dhananjay \nArora'),(205,9802820800,'ababu1@uncc.edu','Akshay \nBabu'),(206,9768623560,'shanon08@example.com','Keith Turner'),(207,9710540609,'brady73@example.com','Ms. Antonette Keeling'),(208,9436829146,'alayna.schowalter@example.net','Miss Rosanna \nConnelly'),(209,9166085646,'icie96@example.org','Noel \nEmard'),(210,9831320422,'hwolf@example.net','Trudie McClure \nJr.'),(211,9401293781,'schmidt.stephan@example.org','Dr. Velva \nHowe'),(212,9595806999,'william.predovic@example.net','Colby \nStokes'),(213,9324930770,'prosacco.vidal@example.com','Rosie Shields \nV'),(214,9670194175,'otilia80@example.com','Ms. Marlee Spinka \nSr.'),(215,9848597984,'nterry@example.com','Skylar Koelpin \nJr.'),(216,9888512127,'mills.hollis@example.com','Prof. Marquis Sawayn \nSr.'),(217,9787570990,'wkuvalis@example.org','Isadore Auer \nIV'),(218,9308906690,'kassulke.estevan@example.net','Candace \nKoss'),(219,9256868854,'rgreenfelder@example.org','Carey \nSawayn'),(220,9757688590,'phaley@example.org','Mr. Dayne Grimes \nDVM'),(221,9633493813,'ron18@example.net','Rosie \nBrown'),(222,9524209592,'stroman.arden@example.net','Kayli \nMaggio'),(223,9150770929,'rocio.mann@example.com','Eddie \nOsinski'),(224,9800676038,'kmedhurst@example.com','Dr. Lia Marks \nJr.'),(225,9863696126,'harris.angelina@example.com','Baron \nFeil'),(226,9687594736,'brady08@example.com','Prof. Khalil \nHowe'),(228,33333333,'rchalla51@uncc.edu','Raju Challagundla'),(229,34345,'test1@te1.com','test');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) DEFAULT NULL,
  `driver_rating` float DEFAULT NULL,
  `item_rating` float DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `restaurant_rating` float DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `FK6ua65pahviqj3c3hoeg0k3u7j` (`item_id`),
  KEY `FKcbqyot4tns9edjdo7tsegs8nb` (`order_id`),
  CONSTRAINT `FK6ua65pahviqj3c3hoeg0k3u7j` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  CONSTRAINT `FKcbqyot4tns9edjdo7tsegs8nb` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` VALUES (1,'The food  is good.',4,4.8,'/var/etc/campuseats/photo.png',NULL,37,1),(2,'I like it',4,4.5,NULL,4.8,53,1),(3,NULL,4.5,4.8,'/var/etc/campuseats/photo1.png',4.8,32,2),(4,'Great service',4.5,4.8,NULL,4.8,33,2),(5,NULL,4.5,4.7,'/var/etc/campuseats/photo2.png',4.5,7,5),(6,'Love it.',4.8,4.8,NULL,4.8,32,7),(7,'very good',4.6,4.9,'/var/etc/campuseats/photo5.png',4.9,17,8),(103,'ligula. Aliquam erat volutpat. Nulla dignissim.',2,NULL,NULL,5,NULL,3),(104,'pellentesque a, facilisis non, bibendum sed, est. Nunc',1,NULL,NULL,1,NULL,4),(105,'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate',5,NULL,NULL,2,NULL,6),(106,'ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam',4,NULL,NULL,1,NULL,9),(107,'In lorem. Donec elementum, lorem',2,NULL,NULL,5,NULL,10),(108,'ultrices iaculis odio. Nam interdum enim non nisi. Aenean',5,NULL,NULL,5,NULL,11),(109,'semper egestas, urna justo faucibus lectus, a sollicitudin orci sem',4,NULL,NULL,5,NULL,12),(110,'tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae,',1,NULL,NULL,1,NULL,253),(111,'Curae; Phasellus ornare. Fusce mollis. Duis',5,NULL,NULL,5,NULL,254),(112,'augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci.',3,NULL,NULL,5,NULL,255),(113,'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus',3,NULL,NULL,4,NULL,256),(114,'vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est',3,NULL,NULL,3,NULL,257),(115,'In ornare sagittis felis. Donec tempor, est ac mattis semper, dui',5,NULL,NULL,3,NULL,258),(116,'at lacus. Quisque purus sapien, gravida non, sollicitudin a,',2,NULL,NULL,1,NULL,259),(117,'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc',4,NULL,NULL,4,NULL,260),(118,'egestas. Sed pharetra, felis eget',4,NULL,NULL,5,NULL,261),(119,'iaculis quis, pede. Praesent eu dui. Cum sociis',5,NULL,NULL,1,NULL,262),(120,'viverra. Maecenas iaculis aliquet diam. Sed diam',5,NULL,NULL,1,NULL,263),(121,'arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus.',4,NULL,NULL,1,NULL,264),(122,'in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit',3,NULL,NULL,5,NULL,265),(123,'semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac',3,NULL,NULL,2,NULL,266),(124,'bibendum ullamcorper. Duis cursus, diam at',1,NULL,NULL,3,NULL,267),(125,'urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.',1,NULL,NULL,3,NULL,268),(126,'Donec fringilla. Donec feugiat metus sit amet',2,NULL,NULL,3,NULL,269),(127,'sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet',3,NULL,NULL,5,NULL,270),(128,'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.',2,NULL,NULL,2,NULL,271),(129,'egestas a, dui. Cras pellentesque. Sed dictum. Proin',2,NULL,NULL,4,NULL,272),(130,'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam.',3,NULL,NULL,2,NULL,273),(131,'sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu',1,NULL,NULL,5,NULL,274),(132,'Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus',2,NULL,NULL,4,NULL,275),(133,'semper pretium neque. Morbi quis urna. Nunc quis',1,NULL,NULL,4,NULL,276),(134,'Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh',3,NULL,NULL,5,NULL,277),(135,'vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac',1,NULL,NULL,1,NULL,278),(136,'blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur',2,NULL,NULL,4,NULL,279),(137,'hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam',4,NULL,NULL,1,NULL,280),(138,'luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec',2,NULL,NULL,3,NULL,281),(139,'Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.',1,NULL,NULL,2,NULL,282),(140,'ac facilisis facilisis, magna tellus',3,NULL,NULL,5,NULL,283),(141,'quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.',1,NULL,NULL,4,NULL,284),(142,'feugiat non, lobortis quis, pede. Suspendisse dui. Fusce',1,NULL,NULL,4,NULL,285),(143,'Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat',5,NULL,NULL,2,NULL,286),(144,'dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec',4,NULL,NULL,4,NULL,287),(145,'sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque',5,NULL,NULL,2,NULL,288),(146,'Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum',3,NULL,NULL,5,NULL,289),(147,'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est',3,NULL,NULL,1,NULL,290),(148,'ligula. Nullam enim. Sed nulla ante, iaculis',1,NULL,NULL,3,NULL,291),(149,'ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus,',5,NULL,NULL,1,NULL,292),(150,'Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes,',3,NULL,NULL,4,NULL,293),(151,'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus',4,NULL,NULL,1,NULL,294),(152,'vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras',2,NULL,NULL,4,NULL,295),(153,'orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus',3,NULL,NULL,2,NULL,296),(154,'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus',4,NULL,NULL,2,NULL,297),(155,'cubilia Curae; Donec tincidunt. Donec vitae erat',2,NULL,NULL,3,NULL,298),(156,'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas',5,NULL,NULL,5,NULL,299),(157,'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel',1,NULL,NULL,2,NULL,300),(158,'euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,',1,NULL,NULL,3,NULL,301),(159,'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis',1,NULL,NULL,1,NULL,302),(160,'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,',3,NULL,NULL,4,NULL,303),(161,'ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero',2,NULL,NULL,3,NULL,304),(162,'mauris a nunc. In at',1,NULL,NULL,3,NULL,305),(163,'gravida. Praesent eu nulla at',4,NULL,NULL,5,NULL,306),(164,'elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies',1,NULL,NULL,1,NULL,307),(165,'eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu',5,NULL,NULL,2,NULL,308),(166,'Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla',2,NULL,NULL,2,NULL,309),(167,'aliquet nec, imperdiet nec, leo. Morbi',1,NULL,NULL,5,NULL,310),(168,'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida',1,NULL,NULL,5,NULL,311),(169,'et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat,',4,NULL,NULL,2,NULL,312),(170,'fringilla, porttitor vulputate, posuere vulputate, lacus.',2,NULL,NULL,5,NULL,313),(171,'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis',4,NULL,NULL,4,NULL,314),(172,'Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a,',2,NULL,NULL,4,NULL,315),(173,'dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit',4,NULL,NULL,3,NULL,316),(174,'purus, accumsan interdum libero dui',3,NULL,NULL,4,NULL,317),(175,'nisi magna sed dui. Fusce aliquam, enim',3,NULL,NULL,3,NULL,318),(176,'cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In',4,NULL,NULL,5,NULL,319),(177,'magna sed dui. Fusce aliquam, enim nec',1,NULL,NULL,3,NULL,400),(178,'ligula elit, pretium et, rutrum non, hendrerit id, ante.',5,NULL,NULL,4,NULL,401),(179,'tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer',5,NULL,NULL,2,NULL,402),(180,'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla.',2,NULL,NULL,5,NULL,403),(181,'amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est,',2,NULL,NULL,5,NULL,404),(182,'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit',4,NULL,NULL,4,NULL,405),(183,'neque. In ornare sagittis felis. Donec tempor, est ac',3,NULL,NULL,5,NULL,406),(184,'Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit',4,NULL,NULL,2,NULL,407),(185,'porttitor eros nec tellus. Nunc lectus pede, ultrices',2,NULL,NULL,1,NULL,408),(186,'ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec',3,NULL,NULL,4,NULL,409),(187,'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis',2,NULL,NULL,2,NULL,410),(188,'mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula',5,NULL,NULL,3,NULL,411),(189,'Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc',4,NULL,NULL,5,NULL,412),(190,'Phasellus ornare. Fusce mollis. Duis sit amet diam eu',5,NULL,NULL,1,NULL,413),(191,'nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc',2,NULL,NULL,4,NULL,414),(192,'vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.',5,NULL,NULL,2,NULL,415),(193,'aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a,',3,NULL,NULL,4,NULL,416),(194,'In mi pede, nonummy ut, molestie in,',4,NULL,NULL,5,NULL,417),(195,'ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,',2,NULL,NULL,5,NULL,418),(196,'molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus',2,NULL,NULL,4,NULL,419),(197,'interdum enim non nisi. Aenean eget',2,NULL,NULL,4,NULL,444);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `schedule` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Prospector','Chick Fil-a','8:30am - 7:00pm M-R, 8:30am - 4:00pm F',NULL),(2,'Cone University Center','Panda Express','10:30am - 5:30pm M-R, 10:30am - 3:00pm F',NULL),(3,'Prospector','Subway','8:30am - 7:00pm M-R, 8:30am - 4:00pm F',NULL),(4,'Atkins Library','Library Cafe','7:30am - 8:00 pm-R, 7:30am - 5:00pm',NULL),(5,'Popp Martin Student Union','Wendy’s','11:30a - 10:00pm M-F, 2:00p - 8:00p Sat-Sun',NULL),(6,'9211 N Tryon St #11 Charlotte, NC 28262','China Palace','11am–9:30pm M-R, 11:15am–10:15pm F, 11:15am–10:30pm Sat, 11:30am–9:15am Sun','http://www.china-palace-restaurant.com/'),(7,'9605 N Tryon St Ste A Charlotte, NC 28262','Flying Saucer Draught Emporium','11:00 am - 11:00 pm M-S','http://www.beerknurd.com'),(8,'9510 University City Blvd #101, Charlotte, NC 28213','Passage to India','10:30 am - 3:00 pm, 5:00-9:30pm M-R, 10:30 am - 3pm, 4:30-9:30pm F-S','http://www.passagetoindianc.com/'),(9,'8944 J. M. Keynes Drive Charlotte, NC 28262','Five Guys','11:00 AM - 3:30 PM M-W, 11:00 AM - 7:30 PM R-S','https://restaurants.fiveguys.com/8944-j-m-keynes-drive'),(10,'9335 North Tryon St Suite 102, Charlotte NC','Papa John’s','10 a.m. to 11 p.m M-S','https://www.papajohns.com/'),(11,'48482 Bode Harbors\nPort Modesta, AZ \n10082-7993','Grady, Kreiger and Frami','10am - 9pm','http://skiles.com/'),(12,'597 \nLeora Summit Apt. 714\nEbertbury, WI 48130-6262','Abbott-Schmitt','9am -\n10pm','http://feil.com/'),(13,'387 Tromp Estates Suite 445\nWest Leopoldshire, NC \n80009','Ankunding Group','9am -10pm','http://www.balistreri.info/'),(14,'679 Russel\nVillages\nConnellyfort, MD 72266','Weber, Lehner and Mueller','9am \n-10pm','http://mccullough.com/'),(15,'177 Katrina Gateway Apt. 797\nJastport, MN \n44988-2805','Connelly, Wolf and Murazik','10am - 9pm','http://mraz.com/'),(16,'3136\nKunde Ports Apt. 399\nLake Trevor, CO 19002','Abernathy, Lehner and Zulauf','10am -\n9pm','http://kirlinkulas.com/'),(17,'03334 Blanda Trafficway Suite 568\nFloyfort, \nOK 34900-7724','Heathcote, Kovacek and Cummerata','9am \n-10pm','http://glover.biz/'),(18,'031 Milton Bypass Suite 952\nStephonburgh, WY \n82916-7389','Hauck, Rodriguez and Cremin','11am - 11pm','http://reynolds.com/'),(19,'375 Alanna Crossroad Suite 259\nNorth Shanna, MN 54873','Hermiston-\nPurdy','11am - 11pm','http://herzog.com/'),(20,'9359 Marcos Park Apt. 091\nnSchmitttown, IL 68853','Smitham-Haley','11am - \n11pm','http://quitzonmckenzie.com/'),(21,'215 Shanon Creek\nEast Antonettaview, MN \n74167-8029','Cruickshank-Reilly','10am - 9pm','http://rodriguezkshlerin.com/'),(22,'0562 Cassin Divide\nElenorafurt, AR 37048','Eichmann-Casper','10am - \n9pm','http://www.farrell.biz/'),(23,'41925 Bosco Station Apt. 238\nSouth Clara, MA \n87547-3817','Gorczany, Kuphal and Pouros','9am -10pm','http://www.dare.com/'),(24,'9119 Cummerata Avenue Suite 529\nAbshiremouth, ND 00145-7770','Moen Ltd','9am \n-10pm','http://www.eichmannhomenick.org/'),(25,'422 Lesch Common Apt. 940\nNew \nFelicitaborough, IL 21308-3053','Keeling, Maggio and Hirthe','10am - \n9pm','http://hermannwalter.info/'),(26,'52787 Ullrich Locks\nReynoldsside, IA \n48689-5885','Mraz, Reichel and Hermiston','11am - \n11pm','http://www.runolfsdottir.com/'),(27,'1135 Bartell Islands\nLake Philipton, \nHI 43588-0971','Oberbrunner-Herman','10am - 9pm','http://www.rice.com/'),(28,'8279 \nConcepcion Center\nHauckshire, AL 83821','Stanton-D\'Amore','9am \n-10pm','http://nienow.com/'),(29,'283 Nadia Islands\nAudreanneburgh, GA 64125-\n4442','Waelchi LLC','11am - 11pm','http://www.littel.net/'),(30,'093 Fredrick \nSpurs\nSouth Shannamouth, RI 24292','Ziemann, Denesik and Kunze','10am - \n9pm','http://www.klinghilll.info/'),(31,'3948 Kiehn Forest Apt. 782\nnHageneschester, VT 94419','Tromp Ltd','9am -10pm','http://white.com/'),(32,'4652 \nMaeve Brook\nSouth Corine, WA 21701-5426','Beatty Ltd','11am - \n11pm','http://parisian.biz/'),(33,'4863 Becker Spring\nNorth Candelarioburgh, UT \n16649-1046','Gutmann LLC','10am - 9pm','http://beahan.net/'),(34,'46083 Mekhi \nRidge\nLake Jerrodhaven, VT 38507-5949','Macejkovic Ltd','9am \n-10pm','http://www.beahan.com/'),(35,'214 Lyric Mission\nPort Meaganview, AR \n17033','Rolfson LLC','9am -10pm','http://skiles.com/'),(36,'96083 Konopelski Isle \nSuite 006\nBruenfort, KY 49444-9497','Marquardt, Reinger and Gusikowski','11am - \n11pm','http://www.daniel.com/'),(37,'213 Larkin Coves\nQuintonside, TX \n07955','Harber Group','10am - 9pm','http://www.goodwin.biz/'),(38,'0859 Hills Pine \nApt. 888\nMyriammouth, NM 69940-8316','Wuckert, Reilly and Wuckert','9am -\n10pm','http://www.boscokilback.com/'),(39,'67511 Graham Shore\nLaceyland, WI \n78493','Kirlin, Gibson and Kovacek','9am -10pm','http://schinner.com/'),(40,'0416 \nNyasia Hills\nWest Penelope, MA 56613','Morissette, Kutch and Spinka','11am - \n11pm','http://www.smitham.biz/'),(41,'6044 Prohaska Oval\nWillton, MI \n09742','Corkery, Kilback and Skiles','10am - 9pm','http://www.schumm.com/'),(42,'0561 Dora Manors Suite 455\nNew Aliamouth, CO 28487-7002','Huels-\nConsidine','11am - 11pm','http://dareboehm.biz/'),(43,'719 Virgil Orchard Apt. 083\nnSouth Amalia, KY 78515-9294','Gusikowski, Funk and Rau','10am - \n9pm','http://www.johnston.org/'),(44,'8474 Joana Rest\nNorth Kariane, MI 13273-\n8980','Friesen, Zemlak and Runolfsson','9am \n-10pm','http://www.schillerstreich.org/'),(45,'85504 Jacky Radial Suite 460\nnBeauberg, ND 20689','Hayes-O\'Hara','9am -10pm','http://www.feest.net/'),(46,'791 \nLennie Tunnel Apt. 153\nTyreekshire, DC 94328','Sporer, Reinger and Runte','10am - \n9pm','http://www.gerhold.com/'),(47,'269 Keeling Forks\nBauchfort, TN 32390-\n9816','Rutherford, Cummerata and Langosh','10am - 9pm','http://pacocha.net/'),(48,'976 Gislason Heights Suite 926\nChristiansenshire, FL 00995','McGlynn \nPLC','10am - 9pm','http://langoshmcclure.com/'),(49,'3227 Witting Landing\nnFerrystad, WY 43540','Crooks, Corkery and Dickinson','11am - \n11pm','http://hudson.com/'),(50,'59694 Ulises Ranch Apt. 292\nRobelhaven, NY \n81549','Jenkins-Greenholt','11am - 11pm','http://feil.net/'),(51,'71811 Gertrude \nVia Suite 007\nSouth Taryn, NV 23967','Waters, Turner and Adams','9am -\n10pm','http://franeckikuhn.com/'),(52,'09615 Green Shores Suite 103\nJaquanmouth, \nVA 66615','Hilpert, Von and Frami','11am - 11pm','http://gloverhansen.com/'),(53,'7385 Douglas Rapid\nLake Eusebioberg, NV 04724','Larkin, Lakin and Huel','11am\n- 11pm','http://www.pfeffer.com/'),(54,'121 Hartmann Falls Apt. 221\nEast \nAshleyshire, CT 19450','Cremin Ltd','10am - 9pm','http://davis.com/'),(55,'9775 \nVictoria Inlet\nWest Clifford, NV 16309-4617','Orn, Kshlerin and Ebert','10am - \n9pm','http://www.wisokywilderman.net/'),(56,'983 Macie Squares Apt. 211\nEast Lyda,\nPA 70725','Keeling-Jaskolski','11am - 11pm','http://doyle.com/'),(57,'801 Strosin \nVillage\nDouglasbury, WY 85892','Kuhn-Kuhn','10am - 9pm','http://www.blick.com/'),(58,'162 Renner Walk\nNew Lexie, IN 72766','Runolfsdottir-Hagenes','9am -\n10pm','http://hickle.info/'),(59,'207 Berge Turnpike\nNorth Bulah, NY 56382-\n2747','Bradtke, Johnston and Baumbach','11am - 11pm','http://jones.org/'),(60,'93126 O\'Reilly Stream\nSouth Reneebury, NE 37534','Schulist-Dickinson','9am -\n10pm','http://www.huels.net/'),(61,'7027 Harold Vista Apt. 309\nSouth Lamarchester,\nAK 74002','Rath, Lebsack and Hane','10am - 9pm','http://www.sawayn.com/'),(62,'070 \nValerie Radial\nLake Geraldine, ID 66048','Botsford Inc','9am \n-10pm','http://kesslergreenholt.com/'),(63,'83563 Gabe Cliffs Suite 176\nnMurraybury, MI 42637-0699','Klocko and Sons','9am \n-10pm','http://cruickshankhahn.org/'),(64,'65258 Nelle Bypass Apt. 441\nNew Noemie,\nOR 56221-2401','Greenfelder-Strosin','11am - 11pm','http://www.quitzon.com/'),(65,'392 Terry Common\nReneeburgh, GA 16078-5698','Volkman Group','10am - \n9pm','http://hansen.com/'),(66,'58362 Weimann View Apt. 783\nBorertown, IA \n93172','Stanton-Marvin','10am - 9pm','http://johns.org/'),(67,'7339 Ziemann Common\nnWest Diamondport, NC 14355-1563','Huels, Schamberger and Volkman','9am -\n10pm','http://www.greenholtlittle.com/'),(68,'172 Daisy Overpass\nFeestbury, MI \n69119','Bahringer, Herman and Lebsack','10am - 9pm','http://www.reichert.info/'),(69,'744 Trudie Row Apt. 555\nLake Eduardoport, AL 24252-6634','Von and Sons','9am \n-10pm','http://www.buckridge.com/'),(70,'0420 Waelchi Ferry\nCedrickberg, KY 95033-\n5914','Daniel PLC','11am - 11pm','http://www.barton.com/'),(71,'90000 Pinkie \nSummit\nSouth Ansleyport, NJ 05455','Daniel, Ledner and Keebler','9am -\n10pm','http://swift.com/'),(72,'267 Kemmer Dam Suite 757\nLake Shanna, ND 06978-\n8017','Shields-Wehner','9am -10pm','http://maggiowisozk.com/'),(73,'5242 Maymie \nPrairie\nJosephinechester, CT 08166','Davis-Gottlieb','10am - \n9pm','http://kiehn.com/'),(74,'503 Halvorson Roads\nEmilianomouth, WY \n48846','Kuhic, DuBuque and Rutherford','10am - 9pm','http://mcdermott.com/'),(75,'61619 White Lock\nKassulkeberg, SD 92407','Miller-Schuppe','9am -\n10pm','http://langworth.net/'),(76,'2686 Rosina Drives\nLake Irving, WI \n93674','Marquardt and Sons','9am -10pm','http://schoen.info/'),(77,'665 Reba Field \nSuite 259\nAbbieville, HI 45209','Heller-Stoltenberg','10am - \n9pm','http://keebler.net/'),(78,'274 Aniyah View\nCorkerybury, NJ 42353-0485','Kub-\nBartoletti','10am - 9pm','http://www.walkerschuster.biz/'),(79,'136 Champlin \nCircles Suite 260\nElmiraburgh, NY 86723','Pollich-Connelly','10am - \n9pm','http://quigleyjohns.com/'),(80,'6656 Durgan Glens\nSidneyfort, NY 23527-\n3946','Predovic Group','11am - 11pm','http://www.mcclure.info/'),(81,'916 Kenna \nWalks Apt. 224\nDomenichaven, SD 08585','Thiel-Paucek','11am - \n11pm','http://www.klein.com/'),(82,'87162 Keven Wall\nNew Amya, GA 23801-\n4982','Bednar and Sons','10am - 9pm','http://hamill.org/'),(83,'32020 Langworth \nWay\nJaycefort, MT 55909','Sipes-Carroll','9am -10pm','http://larkin.net/'),(84,'198 Mazie Bypass Apt. 852\nPort Newellland, ID 46813-6856','Kohler-\nPredovic','10am - 9pm','http://hermiston.com/'),(85,'8170 Orn Pine\nJadonton, MN \n06564-1919','Fisher, Yundt and Wiegand','10am - 9pm','http://friesen.com/'),(86,'6809\n Kulas Circles Suite 622\nPort Leonieland, KS 31358-9888','Corwin Inc','10am - \n9pm','http://turner.com/'),(87,'540 Maximillia Via Suite 247\nNew Christine, OH \n16149-9776','Veum PLC','10am - 9pm','http://www.shields.biz/'),(88,'8085 Alvina \nIsle Apt. 893\nJamisonland, MD 06507','Barrows Group','10am - \n9pm','http://www.marquardtschumm.com/'),(89,'7446 Jarrett Plaza\nNew Phoebeview, ME\n25224','Kub, Hoeger and Swaniawski','10am - 9pm','http://www.haley.biz/'),(90,'631 \nWilkinson Shoal Apt. 785\nMadisynbury, NE 51948','Kerluke-Flatley','11am - \n11pm','http://www.waters.net/'),(91,'86467 Kshlerin Point\nHeathcotetown, AZ 27728-\n4616','Rowe, Pouros and Gutkowski','11am - 11pm','http://gerlach.com/'),(92,'92578 \nKylie Trafficway Suite 755\nLake Murphy, GA 78904','Grimes-Sporer','9am -\n10pm','http://www.osinski.com/'),(93,'72392 Hahn Station Apt. 674\nWest \nJosianeside, MT 59330-3244','Price-Reinger','11am - \n11pm','http://stoltenbergmohr.biz/'),(94,'9329 Vesta Harbors Suite 849\nnUllrichchester, DC 53814','Boehm, White and Kilback','9am \n-10pm','http://www.hillljohnson.com/'),(95,'30248 Eichmann Street Suite 151\nLake \nNelson, VT 78923-5543','Conroy-O\'Keefe','10am - 9pm','http://hermiston.org/'),(96,'1070 Green Forks\nSelenaland, VT 70941','Wiegand LLC','9am \n-10pm','http://www.streich.com/'),(97,'20073 Clyde Ways Suite 898\nWest \nDejahchester, GA 59632','Donnelly and Sons','10am - 9pm','http://cummings.net/'),(98,'215 Altenwerth Mall Apt. 621\nDietrichberg, MI 96944','McDermott, Senger and \nFerry','10am - 9pm','http://www.collins.net/'),(99,'1105 Liza Shores Apt. 158\nnHermannland, GA 62111','Grimes-Lakin','9am -10pm','http://terry.net/'),(100,'88626\nLouvenia Fork\nLake Maxiefurt, TN 43522','Mertz Ltd','9am \n-10pm','http://ortiz.com/'),(101,'5357 Adrianna Shoal Suite 418\nEnochside, OH \n46739-1915','Rath Ltd','9am -10pm','http://hahn.com/'),(102,'6977 Adams Locks Suite \n001\nErikastad, LA 55321-5793','Kerluke-Herman','11am - \n11pm','http://wilderman.com/'),(103,'559 Robin Cape\nWest Merl, OH 31271-9957','Berge\nInc','11am - 11pm','http://okunevarohan.com/'),(104,'4501 Labadie Via\nLake America, \nNJ 33290','Hamill, Prohaska and Lehner','10am - \n9pm','http://jacobswilderman.info/'),(105,'5587 Fanny Port\nNorth Nigel, NC \n05813','Ratke LLC','10am - 9pm','http://www.williamson.org/'),(106,'3906 Wilkinson \nStreet Suite 611\nLake Moisesburgh, DE 83148','Fisher-Rempel','9am \n-10pm','http://www.lehner.net/'),(107,'459 Labadie Course Suite 026\nNorth Ola, ND \n60631','Ryan, Jaskolski and Schinner','10am - 9pm','http://www.schuster.org/'),(108,'630 Block Harbors\nEast Rudolphhaven, LA 44638','Kub, Borer and Ward','11am - \n11pm','http://klingprohaska.com/'),(109,'40616 Mante Islands\nSouth Gileschester, MI \n75466','O\'Conner-Mraz','9am -10pm','http://www.rosenbaum.com/'),(110,'9015 Velma \nJunction\nSpencerland, KY 15821-5602','Mayert LLC','9am \n-10pm','http://www.raynorgoldner.com/');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `is_admin` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `FK2pu48lhwcksg95ouk9dqa8khu` (`person_id`),
  CONSTRAINT `FK2pu48lhwcksg95ouk9dqa8khu` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Y','Janitor',27),(2,'N','Bus Driver',37),(3,'N','Bus \nDriver',48),(4,'N','Assistant Manager',28),(5,'Y','Receptionist',31),(6,'Y','Assistant Manager',38),(7,'N','Bus Driver',26),(8,'N','Logistic \nManager',49),(9,'Y','Receptionist',33),(10,'Y','Assistant Manager',45),(11,'Y','Bus\nDriver',40),(12,'N','Logistic Manager',29),(13,'N','Receptionist',46),(14,'Y','Logistic Manager',41),(15,'Y','Logistic Manager',32),(16,'N','Janitor',47),(17,'Y','Logistic Manager',50),(18,'Y','Janitor',30),(19,'Y','Assistant Manager',39),(20,'Y','Bus Driver',43),(21,'Y','Bus Driver',35),(22,'Y','Logistic Manager',42),(23,'N','Janitor',36),(24,'Y','Logistic \nManager',34),(25,'Y','Bus Driver',44),(60,'Y','Administrator',61),(61,'Y','test',228);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `status_desc` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Placed','Order placed',NULL),(2,'Ready for pickup','Order is available for pickup',NULL),(3,'Pickedup','Order pickedup',NULL),(4,'Delivered','Order delivered',NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `graduation_year` int DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `person_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FKnwsufvlvlnsxqv60ltj06bbfx` (`person_id`),
  CONSTRAINT `FKnwsufvlvlnsxqv60ltj06bbfx` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,2022,'Computer Science','Graduate',11),(2,2021,'Data Science','Undergraduate',12),(3,2022,'Biotechnology','Undergraduate',13),(4,2022,'Chemical','Graduate',14),(5,2023,'Civil','Undergraduate',15),(6,2021,'Computer Science','Undergraduate',16),(7,2024,'Computer Science','Graduate',17),(8,2025,'Electronics','Graduate',18),(9,2023,'Electrical','Undergraduate',19),(10,2025,'Mechanical','Undergraduate',20),(11,2017,'Electrical','Undergraduate',55),(12,2006,'Electrical','Undergraduate',91),(13,2008,'Cyber \nSecurity','Graduate',144),(14,2005,'Mechanical','Graduate',58),(15,2015,'Accounts','Undergraduate',191),(16,2011,'Biotechnology','Undergraduate',190),(17,1990,'Cyber \nSecurity','Undergraduate',60),(18,1987,'Environmental','Undergraduate',59),(19,1999,'Data Science','Graduate',114),(20,1986,'Electrical','Graduate',185),(21,2006,'Electrical','Undergraduate',61),(22,1984,'Data \nScience','Undergraduate',117),(23,2004,'Chemical','Graduate',73),(24,1976,'Chemical','Undergraduate',170),(25,1997,'Computer \nScience','Graduate',146),(26,1977,'Chemical','Undergraduate',143),(27,1995,'Mechanical','Undergraduate',108),(28,2000,'Mechanical','Graduate',198),(29,2013,'Accounts','Graduate',94),(30,2005,'Philosophy','Graduate',172),(31,1981,'Chemical','Graduate',68),(32,1991,'Environmental','Undergraduate',111),(33,1983,'Cyber Security','Undergraduate',165),(34,1993,'Environmental','Graduate',155),(35,2013,'Accounts','Undergraduate',163),(36,2002,'Accounts','Undergraduate',71),(37,2013,'Data Science','Graduate',194),(38,1983,'Chemical','Undergraduate',125),(39,1980,'Chemical','Graduate',126),(40,2014,'Electrical','Undergraduate',168),(41,2010,'Data Science','Graduate',106),(42,1990,'Accounts','Graduate',112),(43,1975,'Philosophy','Graduate',93),(44,2016,'Mechanical','Undergraduate',195),(45,1975,'Philosophy','Graduate',69),(46,1972,'Accounts','Undergraduate',180),(47,1990,'Computer \nScience','Undergraduate',56),(48,1982,'Accounts','Graduate',57),(49,2012,'Accounts','Graduate',193),(50,1988,'Civil','Graduate',100),(51,1999,'Mechanical','Graduate',78),(52,1989,'Mechanical','Undergraduate',63),(53,1978,'Philosophy','Undergraduate',153),(54,1985,'Cyber \nSecurity','Graduate',65),(55,2010,'Biotechnology','Graduate',118),(56,1981,'Chemical','Undergraduate',169),(57,1980,'Chemical','Graduate',184),(58,2001,'Accounts','Graduate',51),(59,1993,'Data Science','Graduate',130),(60,2005,'Chemical','Graduate',80),(61,1994,'Chemical','Graduate',134),(62,1979,'Accounts','Graduate',142),(63,1988,'Data Science','Graduate',97),(64,1998,'Biotechnology','Undergraduate',148),(65,1980,'Civil','Undergraduate',166),(66,1970,'Accounts','Undergraduate',116),(67,2014,'Chemical','Graduate',138),(68,1997,'Data Science','Undergraduate',113),(69,2006,'Mechanical','Graduate',70),(70,1975,'Cyber Security','Graduate',173),(71,1984,'Accounts','Undergraduate',182),(72,1974,'Cyber \nSecurity','Undergraduate',160),(73,1972,'Environmental','Undergraduate',128),(74,2009,'Environmental','Graduate',99),(75,1971,'Mechanical','Graduate',147),(76,1994,'Cyber Security','Graduate',81),(77,1999,'Electronics','Graduate',177),(78,1978,'Computer Science','Graduate',90),(79,1985,'Computer \nScience','Graduate',158),(80,2004,'Environmental','Graduate',79),(81,1989,'Biotechnology','Graduate',119),(82,2019,'Electronics','Undergraduate',171),(83,1989,'Electronics','Undergraduate',77),(84,1973,'Mechanical','Undergraduate',186),(85,2011,'Chemical','Undergraduate',105),(86,1971,'Mechanical','Undergraduate',149),(87,1978,'Mechanical','Undergraduate',133),(88,2010,'Environmental','Graduate',174),(89,1994,'Mechanical','Undergraduate',95),(90,2019,'Environmental','Undergraduate',72),(91,1978,'Data \nScience','Graduate',76),(92,2008,'Philosophy','Undergraduate',123),(93,1979,'Data \nScience','Graduate',188),(94,2001,'Data Science','Graduate',132),(95,1983,'Data \nScience','Graduate',183),(96,1973,'Data Science','Graduate',179),(97,2000,'Accounts','Graduate',129),(98,2015,'Philosophy','Undergraduate',115),(99,1986,'Electronics','Undergraduate',200),(100,2009,'Cyber \nSecurity','Undergraduate',84),(101,1984,'Chemical','Graduate',54),(102,2000,'Biotechnology','Undergraduate',102),(103,2003,'Data \nScience','Graduate',152),(104,1985,'Cyber Security','Graduate',176),(105,2019,'Environmental','Graduate',120),(106,1992,'Chemical','Graduate',53),(107,1971,'Cyber Security','Graduate',178),(108,1998,'Electronics','Graduate',122),(109,2011,'Electrical','Graduate',86),(110,2016,'Electronics','Graduate',136),(111,1981,'Chemical','Undergraduate',151),(112,1992,'Philosophy','Undergraduate',196),(113,1994,'Computer \nScience','Undergraduate',161),(114,2004,'Biotechnology','Undergraduate',83),(115,1985,'Civil','Graduate',98),(116,1979,'Accounts','Undergraduate',139),(117,1977,'Mechanical','Graduate',181),(118,1973,'Accounts','Undergraduate',197),(119,1998,'Electronics','Undergraduate',135),(120,2002,'Cyber \nSecurity','Undergraduate',109),(121,1976,'Chemical','Graduate',159),(122,1971,'Chemical','Undergraduate',67),(123,2019,'Computer \nScience','Graduate',199),(124,1992,'Accounts','Undergraduate',64),(125,2002,'Data \nScience','Graduate',74),(126,1987,'Environmental','Undergraduate',175),(127,2017,'Biotechnology','Undergraduate',157),(128,1971,'Biotechnology','Undergraduate',62),(129,1993,'Cyber \nSecurity','Graduate',103),(130,1972,'Environmental','Graduate',131),(131,1989,'Electrical','Undergraduate',87),(132,1984,'Cyber \nSecurity','Graduate',150),(133,1988,'Accounts','Graduate',75),(134,2018,'Civil','Graduate',82),(135,2016,'Computer Science','Undergraduate',124),(136,1989,'Biotechnology','Undergraduate',88),(137,1991,'Data \nScience','Undergraduate',167),(138,2013,'Chemical','Undergraduate',127),(139,1986,'Electronics','Undergraduate',89),(140,1995,'Environmental','Graduate',189),(141,1972,'Philosophy','Graduate',192),(142,1981,'Computer Science','Graduate',145),(143,1996,'Environmental','Undergraduate',156),(144,1999,'Cyber \nSecurity','Undergraduate',162),(145,2009,'Biotechnology','Undergraduate',154),(146,2006,'Electronics','Graduate',104),(147,1985,'Mechanical','Graduate',96),(148,2002,'Cyber Security','Undergraduate',187),(149,1995,'Cyber \nSecurity','Undergraduate',52),(150,1994,'Mechanical','Graduate',121),(151,2019,'graduate','Graduate',204),(152,1987,'Philosophy','Undergraduate',101),(153,1986,'Accounts','Undergraduate',141),(154,1978,'Electronics','Graduate',92),(155,2008,'Computer Science','Graduate',85),(156,1979,'Accounts','Graduate',66),(157,2019,'Accounts','Graduate',164),(158,1989,'Philosophy','Undergraduate',110),(159,1987,'Accounts','Undergraduate',137),(160,1975,'Data Science','Graduate',140),(161,1985,'Data Science','Graduate',107),(163,2022,'cse','S',229);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_spending_per_person`
--

DROP TABLE IF EXISTS `total_spending_per_person`;
/*!50001 DROP VIEW IF EXISTS `total_spending_per_person`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_spending_per_person` AS SELECT 
 1 AS `person_id`,
 1 AS `total_spending`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `vehicle_plate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'2017','Hyundai Sonata','MH15BD8877'),(2,'2006','Honda Pilot','HDR6512'),(3,'2012','Mazda CX3','CA4398'),(4,'2003','Mercedez Benz C Class','489 CLS'),(5,'2015','FORD Explorer','7VXT881'),(6,'2019','Ford Mustang','SM0311'),(7,'2020','Toyota Highlander','LS7866'),(8,'2009','Toyota Camry','HDR5852'),(9,'2011','GMC Terrain','215BG2'),(10,'2013','Audi Q3','AZM9590'),(11,'Kia','i','5436'),(12,'Kia','e','9357'),(13,'Toyota','z','6519'),(14,'Hyundai','t','3585'),(15,'Bugatti','d','2767'),(16,'Mercedes','j','4184'),(17,'BMW','l','6489'),(18,'Audi','j','4260'),(19,'Mercedes','d','6455'),(20,'Toyota','q','7009'),(21,'Mercedes','p','4333'),(22,'BMW','y','8289'),(23,'Bugatti','h','1126'),(24,'Audi','p','7749'),(25,'BMW','z','2644'),(26,'Kia','o','9878'),(27,'Kia','i','4697'),(28,'Mercedes','s','9687'),(29,'Hyundai','c','3364'),(30,'Toyota','z','8683');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dumptest_2'
--
/*!50003 DROP FUNCTION IF EXISTS `customer_rating_for_restaurant` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `customer_rating_for_restaurant`( cus_id INT, res_id INT) RETURNS float
    DETERMINISTIC
BEGIN 
	DECLARE cus_rating_for_rest FLOAT;	
	SELECT restaurant_rating  INTO cus_rating_for_rest
		FROM (
        SELECT rating.restaurant_rating AS restaurant_rating,ord.person_id, ord.restaurant_id,rating.order_id
FROM rating AS rating
INNER JOIN orders AS ord
ON rating.order_id = ord.order_id
WHERE ord.person_id = cus_id AND ord.restaurant_id = res_id AND rating.restaurant_rating is not null) as rest_rate;
	RETURN cus_rating_for_rest;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `endDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `endDate`() RETURNS datetime
    NO SQL
    DETERMINISTIC
RETURN @endDate ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `startDate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `startDate`() RETURNS datetime
    NO SQL
    DETERMINISTIC
RETURN @startDate ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `min_max_avg_restaurant_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `min_max_avg_restaurant_rating`( in res_id int, out min_rest_rating float, out max_rest_rating float, out avg_rest_rating float)
BEGIN
  SELECT MIN(restaurant_rating) 
  INTO min_rest_rating
  FROM  rating,orders
  WHERE restaurant_id = res_id; 
  
  SELECT MAX(restaurant_rating) 
  INTO max_rest_rating
  FROM  rating,orders
  WHERE restaurant_id = res_id; 
  
  SELECT AVG(restaurant_rating) 
  INTO avg_rest_rating
  FROM  rating,orders
  WHERE restaurant_id = res_id; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `total_order_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `total_order_customer`( in cus_id int, in timea VARCHAR(100), in timeb VARCHAR(100), out total_order int)
BEGIN
  SELECT COUNT(*)
  INTO total_order
  FROM  orders
  WHERE person_id = cus_id AND ordered_time BETWEEN timea AND timeb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `total_spending_per_person`
--

/*!50001 DROP VIEW IF EXISTS `total_spending_per_person`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_spending_per_person` AS select `person`.`person_id` AS `person_id`,round(sum(`orders`.`total_price`),2) AS `total_spending` from (`orders` join `person`) where ((`orders`.`person_id` = `person`.`person_id`) and (`orders`.`ordered_time` between `startDate`() and `endDate`())) group by `orders`.`person_id` order by `orders`.`person_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 19:39:54
