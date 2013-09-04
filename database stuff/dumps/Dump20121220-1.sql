CREATE DATABASE  IF NOT EXISTS `test_data` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test_data`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: test_data
-- ------------------------------------------------------
-- Server version	5.5.25a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `part_model_fault_repair_reason_map`
--

DROP TABLE IF EXISTS `part_model_fault_repair_reason_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_model_fault_repair_reason_map` (
  `part_model_fault_repair_reason_matrix_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_on_models_id` int(11) NOT NULL,
  `fault_repair_reason_map_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`part_model_fault_repair_reason_matrix_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_model_fault_repair_reason_map`
--

LOCK TABLES `part_model_fault_repair_reason_map` WRITE;
/*!40000 ALTER TABLE `part_model_fault_repair_reason_map` DISABLE KEYS */;
INSERT INTO `part_model_fault_repair_reason_map` VALUES (1,3,12,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(2,3,13,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(3,3,14,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(4,3,15,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(5,3,16,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(6,3,17,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(7,3,18,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(8,3,19,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(9,3,20,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(10,3,21,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(11,5,22,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(12,5,23,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(13,5,24,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(14,5,25,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(15,5,26,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(16,5,27,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(17,5,28,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(18,5,29,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(19,5,30,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(20,6,22,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(21,6,23,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(22,6,24,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(23,6,25,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(24,6,26,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(25,6,27,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(26,6,28,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(27,6,29,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator'),(28,6,30,'2012-12-19 11:10:00','Administrator','2012-12-19 11:10:00','Administrator');
/*!40000 ALTER TABLE `part_model_fault_repair_reason_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fault_repair_reason_map`
--

DROP TABLE IF EXISTS `fault_repair_reason_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fault_repair_reason_map` (
  `fault_repair_reason_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_id` int(11) NOT NULL,
  `repair_id` int(11) NOT NULL,
  `reason_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`fault_repair_reason_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fault_repair_reason_map`
--

LOCK TABLES `fault_repair_reason_map` WRITE;
/*!40000 ALTER TABLE `fault_repair_reason_map` DISABLE KEYS */;
INSERT INTO `fault_repair_reason_map` VALUES (1,1,1,1,'2012-12-13 10:34:17','Administrator'),(2,1,1,4,'2012-12-13 10:34:17','Administrator'),(3,1,8,11,'2012-12-13 10:34:17','Administrator'),(4,1,4,2,'2012-12-13 10:34:17','Administrator'),(5,1,4,12,'2012-12-13 10:34:17','Administrator'),(6,1,6,6,'2012-12-13 10:34:17','Administrator'),(7,1,6,8,'2012-12-13 10:34:17','Administrator'),(8,1,7,5,'2012-12-13 10:34:17','Administrator'),(9,1,7,7,'2012-12-13 10:34:17','Administrator'),(10,1,7,9,'2012-12-13 10:34:17','Administrator'),(11,1,7,10,'2012-12-13 10:34:17','Administrator'),(12,2,1,4,'2012-12-13 10:34:17','Administrator'),(13,2,5,3,'2012-12-13 10:34:17','Administrator'),(14,2,4,2,'2012-12-13 10:34:17','Administrator'),(15,2,6,6,'2012-12-13 10:34:17','Administrator'),(16,2,6,8,'2012-12-13 10:34:17','Administrator'),(17,2,7,5,'2012-12-13 10:34:17','Administrator'),(18,2,7,7,'2012-12-13 10:34:17','Administrator'),(19,2,7,9,'2012-12-13 10:34:17','Administrator'),(20,2,7,10,'2012-12-13 10:34:17','Administrator'),(21,2,8,11,'2012-12-13 10:34:17','Administrator'),(22,3,1,1,'2012-12-13 10:34:17','Administrator'),(23,3,4,2,'2012-12-13 10:34:17','Administrator'),(24,3,4,12,'2012-12-13 10:34:17','Administrator'),(25,3,6,6,'2012-12-13 10:34:17','Administrator'),(26,3,6,8,'2012-12-13 10:34:17','Administrator'),(27,3,7,5,'2012-12-13 10:34:17','Administrator'),(28,3,7,7,'2012-12-13 10:34:17','Administrator'),(29,3,7,9,'2012-12-13 10:34:17','Administrator'),(30,3,7,10,'2012-12-13 10:34:17','Administrator'),(31,4,1,1,'2012-12-13 10:34:17','Administrator'),(32,4,1,4,'2012-12-13 10:34:17','Administrator'),(33,4,2,4,'2012-12-13 10:34:17','Administrator'),(34,4,3,1,'2012-12-13 10:34:17','Administrator'),(35,4,3,4,'2012-12-13 10:34:17','Administrator'),(36,4,4,2,'2012-12-13 10:34:17','Administrator'),(37,4,5,3,'2012-12-13 10:34:17','Administrator'),(38,4,6,6,'2012-12-13 10:34:17','Administrator'),(39,4,6,8,'2012-12-13 10:34:17','Administrator'),(40,4,7,5,'2012-12-13 10:34:17','Administrator'),(41,4,7,7,'2012-12-13 10:34:17','Administrator'),(42,4,7,9,'2012-12-13 10:34:17','Administrator'),(43,4,7,10,'2012-12-13 10:34:17','Administrator'),(44,5,1,1,'2012-12-13 10:34:17','Administrator'),(45,5,1,4,'2012-12-13 10:34:17','Administrator'),(46,5,4,2,'2012-12-13 10:34:17','Administrator'),(47,5,4,12,'2012-12-13 10:34:17','Administrator'),(48,5,5,3,'2012-12-13 10:34:17','Administrator'),(49,5,5,12,'2012-12-13 10:34:17','Administrator'),(50,5,6,6,'2012-12-13 10:34:17','Administrator'),(51,5,6,8,'2012-12-13 10:34:17','Administrator'),(52,5,7,5,'2012-12-13 10:34:17','Administrator'),(53,5,7,7,'2012-12-13 10:34:17','Administrator'),(54,5,7,9,'2012-12-13 10:34:17','Administrator'),(55,5,7,10,'2012-12-13 10:34:17','Administrator'),(56,6,1,1,'2012-12-13 10:34:17','Administrator'),(57,6,1,4,'2012-12-13 10:34:17','Administrator'),(58,6,4,2,'2012-12-13 10:34:17','Administrator'),(59,6,4,12,'2012-12-13 10:34:17','Administrator'),(60,6,5,3,'2012-12-13 10:34:17','Administrator'),(61,6,5,12,'2012-12-13 10:34:17','Administrator'),(62,6,6,6,'2012-12-13 10:34:17','Administrator'),(63,6,6,8,'2012-12-13 10:34:17','Administrator'),(64,6,7,5,'2012-12-13 10:34:17','Administrator'),(65,6,7,7,'2012-12-13 10:34:17','Administrator'),(66,6,7,9,'2012-12-13 10:34:17','Administrator'),(67,6,7,10,'2012-12-13 10:34:17','Administrator'),(68,7,1,1,'2012-12-13 10:34:17','Administrator'),(69,7,1,4,'2012-12-13 10:34:17','Administrator'),(70,7,4,2,'2012-12-13 10:34:17','Administrator'),(71,7,4,12,'2012-12-13 10:34:17','Administrator'),(72,7,5,3,'2012-12-13 10:34:17','Administrator'),(73,7,5,12,'2012-12-13 10:34:17','Administrator'),(74,7,6,6,'2012-12-13 10:34:17','Administrator'),(75,7,6,8,'2012-12-13 10:34:17','Administrator'),(76,7,7,5,'2012-12-13 10:34:17','Administrator'),(77,7,7,7,'2012-12-13 10:34:17','Administrator'),(78,7,7,9,'2012-12-13 10:34:17','Administrator'),(79,7,7,10,'2012-12-13 10:34:17','Administrator'),(80,8,1,1,'2012-12-13 10:34:17','Administrator'),(81,8,1,4,'2012-12-13 10:34:17','Administrator'),(82,8,4,2,'2012-12-13 10:34:17','Administrator'),(83,8,4,12,'2012-12-13 10:34:17','Administrator'),(84,8,5,3,'2012-12-13 10:34:17','Administrator'),(85,8,5,12,'2012-12-13 10:34:17','Administrator'),(86,8,6,6,'2012-12-13 10:34:17','Administrator'),(87,8,6,8,'2012-12-13 10:34:17','Administrator'),(88,8,7,5,'2012-12-13 10:34:17','Administrator'),(89,8,7,7,'2012-12-13 10:34:17','Administrator'),(90,8,7,9,'2012-12-13 10:34:17','Administrator'),(91,8,7,10,'2012-12-13 10:34:17','Administrator'),(92,8,8,12,'2012-12-13 10:34:17','Administrator'),(93,9,1,1,'2012-12-13 10:34:17','Administrator'),(94,9,1,4,'2012-12-13 10:34:17','Administrator'),(95,9,4,2,'2012-12-13 10:34:17','Administrator'),(96,9,4,12,'2012-12-13 10:34:17','Administrator'),(97,9,6,6,'2012-12-13 10:34:17','Administrator'),(98,9,6,8,'2012-12-13 10:34:17','Administrator'),(99,9,7,5,'2012-12-13 10:34:17','Administrator'),(100,9,7,7,'2012-12-13 10:34:17','Administrator'),(101,9,7,9,'2012-12-13 10:34:17','Administrator'),(102,9,7,10,'2012-12-13 10:34:17','Administrator'),(103,10,8,12,'2012-12-13 10:34:17','Administrator');
/*!40000 ALTER TABLE `fault_repair_reason_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(30) NOT NULL,
  `model_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7000036 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (7000000,'345456567678789',1,1,13,'2012-11-12 09:46:19','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000001,'345233434565665',2,1,13,'2012-11-12 09:46:19','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000002,'343445566455665',2,1,13,'2012-11-30 15:45:35','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000003,'345345345345345',1,1,13,'2012-12-07 10:39:24','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000004,'345456345456345',2,1,13,'2012-12-07 10:55:29','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000005,'543345543345543',1,1,13,'2012-12-07 11:00:20','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000006,'545545545545545',2,1,13,'2012-12-07 11:10:15','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000007,'554443332223334',2,1,13,'2012-12-07 11:25:27','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000008,'646646646646646',2,1,13,'2012-12-07 11:29:42','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000009,'333444555666777',1,1,13,'2012-12-07 11:32:33','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000010,'654654654456654',1,1,13,'2012-12-07 11:35:14','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000011,'434434242545566',1,1,13,'2012-12-07 11:37:24','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000012,'765543321123345',2,1,13,'2012-12-07 12:03:30','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000013,'546546654765876',2,1,13,'2012-12-07 12:09:05','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000014,'654456778766565',2,1,13,'2012-12-07 16:17:33','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000015,'444333555444666',1,1,13,'2012-12-10 11:18:24','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000016,'444333555444666',1,1,13,'2012-12-10 11:20:05','Steven Woodhouse','2012-12-14 09:40:00','Steven Woodhouse'),(7000017,'343545565678789',2,1,6,'2012-12-10 11:26:32','Steven Woodhouse','2012-12-19 08:27:58','Steven Woodhouse'),(7000018,'444444444444444',1,1,3,'2012-12-10 13:09:06','Steven Woodhouse','2012-12-14 09:43:22','Steven Woodhouse'),(7000019,'555555555555555',2,1,6,'2012-12-10 13:11:20','Steven Woodhouse','2012-12-19 08:16:44','Steven Woodhouse'),(7000020,'223344556677889',1,1,6,'2012-12-10 13:16:29','Steven Woodhouse','2012-12-19 08:36:22','Steven Woodhouse'),(7000021,'543345654564765',1,1,3,'2012-12-10 13:19:02','Steven Woodhouse','2012-12-14 10:46:51','Steven Woodhouse'),(7000022,'676767676766776',1,1,3,'2012-12-10 13:20:52','Steven Woodhouse','2012-12-14 10:52:37','Steven Woodhouse'),(7000023,'545454454545454',2,1,4,'2012-12-10 13:22:44','Steven Woodhouse','2012-12-14 11:08:21','Steven Woodhouse'),(7000024,'665665665665665',1,1,13,'2012-12-11 11:04:50','Steven Woodhouse','2012-12-14 11:07:06','Steven Woodhouse'),(7000025,'646535424313424',1,1,4,'2012-12-11 11:06:16','Steven Woodhouse','2012-12-14 11:10:00','Steven Woodhouse'),(7000026,'424353656787654',1,1,3,'2012-12-11 12:29:12','Steven Woodhouse','2012-12-14 09:16:14','Steven Woodhouse'),(7000027,'757575757575757',1,1,13,'2012-12-11 13:06:43','Steven Woodhouse','2012-12-19 07:59:59','Steven Woodhouse'),(7000028,'557766877987654',1,1,3,'2012-12-11 13:11:44','Steven Woodhouse','2012-12-14 11:53:08','Steven Woodhouse'),(7000029,'998877665566778',1,1,3,'2012-12-12 12:45:38','Steven Woodhouse','2012-12-14 11:53:20','Steven Woodhouse'),(7000030,'908070605040302',1,1,3,'2012-12-12 12:48:22','Steven Woodhouse','2012-12-14 09:21:01','Steven Woodhouse'),(7000031,'708807708807780',1,1,3,'2012-12-12 12:50:05','Steven Woodhouse','2012-12-14 11:56:56','Steven Woodhouse'),(7000032,'445665776554332',1,1,3,'2012-12-12 13:29:17','Steven Woodhouse','2012-12-14 11:57:07','Steven Woodhouse'),(7000033,'772233665588776',1,2,4,'2012-12-18 10:22:58','Steven Woodhouse','2012-12-18 10:36:49','Steven Woodhouse'),(7000034,'998979695949366',1,1,4,'2012-12-18 10:31:38','Steven Woodhouse','2012-12-18 10:34:35','Steven Woodhouse'),(7000035,'999888777666555',2,1,3,'2012-12-19 12:21:48','Steven Woodhouse','2012-12-19 12:23:01','Steven Woodhouse');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `user_login_UNIQUE` (`user_login`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','admin','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(2,'Steven Woodhouse','swoodhouse','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(3,'bob','bob','2012-12-11 15:06:01','Steven Woodhouse','2012-12-11 15:06:01','Steven Woodhouse'),(4,'bob2','bob2','2012-12-11 15:14:07','Steven Woodhouse','2012-12-11 15:14:07','Steven Woodhouse'),(5,'adrian','aguzy','2012-12-11 15:21:09','Steven Woodhouse','2012-12-11 15:21:09','Steven Woodhouse'),(6,'bananaman','bananaman','2012-12-11 15:22:41','Steven Woodhouse','2012-12-11 15:22:41','Steven Woodhouse'),(7,'alex','alex','2012-12-11 15:30:00','Steven Woodhouse','2012-12-11 15:30:00','Steven Woodhouse'),(8,'brian','brian','2012-12-11 15:31:21','Steven Woodhouse','2012-12-11 15:31:21','Steven Woodhouse');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_reasons`
--

DROP TABLE IF EXISTS `repair_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repair_reasons` (
  `repair_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_reason` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`repair_reason_id`),
  UNIQUE KEY `repair_reason_UNIQUE` (`repair_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_reasons`
--

LOCK TABLES `repair_reasons` WRITE;
/*!40000 ALTER TABLE `repair_reasons` DISABLE KEYS */;
INSERT INTO `repair_reasons` VALUES (1,'missing','2012-12-13 08:27:03','Administrator'),(2,'dry joint','2012-12-13 08:27:03','Administrator'),(3,'wrongly assembled','2012-12-13 08:27:03','Administrator'),(4,'defective','2012-12-13 08:27:03','Administrator'),(5,'unrepairable','2012-12-13 08:27:03','Administrator'),(6,'customer perception','2012-12-13 08:27:03','Administrator'),(7,'parts exceed ceiling price','2012-12-13 08:27:03','Administrator'),(8,'no fault found','2012-12-13 08:54:03','Administrator'),(9,'liquid ingress','2012-12-13 08:56:56','Administrator'),(10,'customer damage','2012-12-13 08:57:37','Administrator'),(11,'corrupt software','2012-12-13 09:16:58','Administrator'),(12,'loose','2012-12-13 10:09:00','Administrator');
/*!40000 ALTER TABLE `repair_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `models` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `model_name_UNIQUE` (`model_name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'Desire HD',1,'2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(2,'Desire One',1,'2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_faults`
--

DROP TABLE IF EXISTS `job_faults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_faults` (
  `job_fault_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `fault_id` int(11) NOT NULL,
  `fault_order` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`job_fault_id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_faults`
--

LOCK TABLES `job_faults` WRITE;
/*!40000 ALTER TABLE `job_faults` DISABLE KEYS */;
INSERT INTO `job_faults` VALUES (1,20,1,1,'2012-12-10 11:18:24','Steven Woodhouse'),(2,20,9,2,'2012-12-10 11:18:24','Steven Woodhouse'),(3,21,1,1,'2012-12-10 11:20:05','Steven Woodhouse'),(4,21,9,2,'2012-12-10 11:20:05','Steven Woodhouse'),(5,22,3,1,'2012-12-10 11:26:32','Steven Woodhouse'),(6,22,10,2,'2012-12-10 11:26:32','Steven Woodhouse'),(7,22,9,3,'2012-12-10 11:26:32','Steven Woodhouse'),(8,23,1,1,'2012-12-10 13:09:06','Steven Woodhouse'),(9,24,10,1,'2012-12-10 13:11:20','Steven Woodhouse'),(10,25,2,1,'2012-12-10 13:16:29','Steven Woodhouse'),(11,26,3,1,'2012-12-10 13:19:02','Steven Woodhouse'),(12,27,4,1,'2012-12-10 13:20:52','Steven Woodhouse'),(13,28,4,1,'2012-12-10 13:22:44','Steven Woodhouse'),(14,29,1,1,'2012-12-11 11:04:50','Steven Woodhouse'),(15,29,9,2,'2012-12-11 11:04:50','Steven Woodhouse'),(16,29,10,3,'2012-12-11 11:04:50','Steven Woodhouse'),(17,30,2,1,'2012-12-11 11:06:16','Steven Woodhouse'),(18,30,3,2,'2012-12-11 11:06:16','Steven Woodhouse'),(19,30,9,3,'2012-12-11 11:06:16','Steven Woodhouse'),(20,31,4,1,'2012-12-11 12:29:12','Steven Woodhouse'),(21,31,9,2,'2012-12-11 12:29:12','Steven Woodhouse'),(22,31,6,3,'2012-12-11 12:29:12','Steven Woodhouse'),(23,32,9,1,'2012-12-11 13:06:43','Steven Woodhouse'),(24,32,2,2,'2012-12-11 13:06:43','Steven Woodhouse'),(25,32,7,3,'2012-12-11 13:06:43','Steven Woodhouse'),(26,33,2,1,'2012-12-11 13:11:44','Steven Woodhouse'),(27,33,9,2,'2012-12-11 13:11:44','Steven Woodhouse'),(28,33,2,3,'2012-12-11 13:11:44','Steven Woodhouse'),(29,34,2,1,'2012-12-12 12:45:38','Steven Woodhouse'),(30,34,10,2,'2012-12-12 12:45:38','Steven Woodhouse'),(31,34,7,3,'2012-12-12 12:45:38','Steven Woodhouse'),(32,35,4,1,'2012-12-12 12:48:22','Steven Woodhouse'),(33,35,10,2,'2012-12-12 12:48:22','Steven Woodhouse'),(34,35,9,3,'2012-12-12 12:48:22','Steven Woodhouse'),(35,36,4,1,'2012-12-12 12:50:05','Steven Woodhouse'),(36,36,7,2,'2012-12-12 12:50:05','Steven Woodhouse'),(37,36,3,3,'2012-12-12 12:50:05','Steven Woodhouse'),(38,37,2,1,'2012-12-12 13:29:17','Steven Woodhouse'),(39,37,10,2,'2012-12-12 13:29:17','Steven Woodhouse'),(40,37,9,3,'2012-12-12 13:29:17','Steven Woodhouse'),(41,50,3,1,'2012-12-14 09:10:24','Steven Woodhouse'),(42,51,4,1,'2012-12-14 09:16:14','Steven Woodhouse'),(43,53,4,1,'2012-12-14 09:21:01','Steven Woodhouse'),(44,55,9,1,'2012-12-14 09:41:29','Steven Woodhouse'),(45,57,2,1,'2012-12-14 09:42:15','Steven Woodhouse'),(46,59,1,1,'2012-12-14 09:43:22','Steven Woodhouse'),(47,61,3,1,'2012-12-14 10:46:51','Steven Woodhouse'),(48,63,4,1,'2012-12-14 10:52:37','Steven Woodhouse'),(49,72,4,1,'2012-12-14 11:01:59','Steven Woodhouse'),(50,73,1,1,'2012-12-14 11:02:31','Steven Woodhouse'),(51,74,1,1,'2012-12-14 11:04:37','Steven Woodhouse'),(52,75,1,1,'2012-12-14 11:06:06','Steven Woodhouse'),(53,76,1,1,'2012-12-14 11:08:21','Steven Woodhouse'),(54,77,5,1,'2012-12-14 11:10:00','Steven Woodhouse'),(55,78,9,1,'2012-12-14 11:28:32','Steven Woodhouse'),(56,79,2,1,'2012-12-14 11:53:08','Steven Woodhouse'),(57,80,2,1,'2012-12-14 11:53:20','Steven Woodhouse'),(58,81,4,1,'2012-12-14 11:56:56','Steven Woodhouse'),(59,82,2,1,'2012-12-14 11:57:07','Steven Woodhouse'),(60,83,1,1,'2012-12-18 10:22:58','Steven Woodhouse'),(61,83,10,2,'2012-12-18 10:22:58','Steven Woodhouse'),(62,83,3,3,'2012-12-18 10:22:58','Steven Woodhouse'),(63,85,1,1,'2012-12-18 10:31:38','Steven Woodhouse'),(64,85,6,2,'2012-12-18 10:31:38','Steven Woodhouse'),(65,85,3,3,'2012-12-18 10:31:38','Steven Woodhouse'),(66,87,1,1,'2012-12-18 10:34:35','Steven Woodhouse'),(67,88,1,1,'2012-12-18 10:36:49','Steven Woodhouse'),(68,89,9,1,'2012-12-19 07:54:25','Steven Woodhouse'),(69,90,9,1,'2012-12-19 07:56:18','Steven Woodhouse'),(70,91,9,1,'2012-12-19 07:57:48','Steven Woodhouse'),(71,92,9,1,'2012-12-19 07:58:35','Steven Woodhouse'),(72,93,9,1,'2012-12-19 07:59:59','Steven Woodhouse'),(73,94,10,1,'2012-12-19 08:16:44','Steven Woodhouse'),(74,95,3,1,'2012-12-19 08:27:58','Steven Woodhouse'),(75,96,2,1,'2012-12-19 08:36:22','Steven Woodhouse'),(76,97,2,1,'2012-12-19 12:21:48','Steven Woodhouse'),(77,97,6,2,'2012-12-19 12:21:48','Steven Woodhouse'),(78,99,2,1,'2012-12-19 12:23:01','Steven Woodhouse');
/*!40000 ALTER TABLE `job_faults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_on_line`
--

DROP TABLE IF EXISTS `model_on_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_on_line` (
  `model_on_line_id` int(11) NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`model_on_line_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_on_line`
--

LOCK TABLES `model_on_line` WRITE;
/*!40000 ALTER TABLE `model_on_line` DISABLE KEYS */;
INSERT INTO `model_on_line` VALUES (1,1,1,'2012-11-28 15:44:37','Administrator','2012-11-28 15:44:37','Administrator'),(2,2,1,'2012-11-28 15:44:44','Administrator','2012-11-28 15:44:44','Administrator');
/*!40000 ALTER TABLE `model_on_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ui_part_repair_map`
--

DROP TABLE IF EXISTS `ui_part_repair_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ui_part_repair_map` (
  `ui_part_repair_map_id` int(11) NOT NULL AUTO_INCREMENT,
  `ui_repair_name` varchar(255) NOT NULL,
  `repair_id` int(11) NOT NULL,
  PRIMARY KEY (`ui_part_repair_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ui_part_repair_map`
--

LOCK TABLES `ui_part_repair_map` WRITE;
/*!40000 ALTER TABLE `ui_part_repair_map` DISABLE KEYS */;
INSERT INTO `ui_part_repair_map` VALUES (1,'Add Part',9),(2,'Add Part',10),(3,'Add Part',11),(4,'Replace Part',1),(5,'Replace Part',2),(6,'Replace Part',3),(7,'Resolder Part',4);
/*!40000 ALTER TABLE `ui_part_repair_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status_name_UNIQUE` (`status_name`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'awaiting delivery','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(2,'awaiting screen','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(3,'awaiting repair','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(4,'awaiting debug','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(5,'awaiting refurbishment','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(6,'awaiting quality checks','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(7,'awaiting out of box checks','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(8,'awaiting pack out','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(9,'awaiting dispatch','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(10,'dispatched','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(11,'completed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(12,'claimed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(13,'deleted','2012-12-13 13:45:00','Administrator','2012-12-13 13:45:00','Administrator');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL,
  PRIMARY KEY (`manufacturer_id`),
  UNIQUE KEY `manufacturer_name_UNIQUE` (`manufacturer_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'HTC','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repairs`
--

DROP TABLE IF EXISTS `repairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repairs` (
  `repair_id` int(11) NOT NULL AUTO_INCREMENT,
  `repair_code` varchar(255) NOT NULL,
  `repair_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`repair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repairs`
--

LOCK TABLES `repairs` WRITE;
/*!40000 ALTER TABLE `repairs` DISABLE KEYS */;
INSERT INTO `repairs` VALUES (1,'replec','replace electrical','2012-12-13 09:12:11','Administrator'),(2,'repmec','replace mechanical','2012-12-13 09:12:11','Administrator'),(3,'repcos','replace cosmetic','2012-12-13 09:12:11','Administrator'),(4,'reslec','resolder electrical','2012-12-13 09:12:11','Administrator'),(5,'reasmbl','reassemble','2012-12-13 09:12:11','Administrator'),(6,'nff','no fault found','2012-12-13 09:12:11','Administrator'),(7,'ber','beyond economical repair','2012-12-13 09:12:11','Administrator'),(8,'reflash','reflash software','2012-12-13 09:15:39','Administrator'),(9,'addlec','replace electrical','2012-12-13 09:15:39','Administrator'),(10,'addmec','add mechanical','2012-12-13 09:15:39','Administrator'),(11,'addcos','add cosmetic','2012-12-13 09:15:39','Administrator');
/*!40000 ALTER TABLE `repairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `role_process_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name_UNIQUE` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin',1,'2012-11-28 15:41:09','Administrator'),(2,'prealert',2,'2012-11-28 15:41:09','Administrator'),(3,'book_in',3,'2012-11-28 15:41:09','Administrator'),(4,'repair',5,'2012-11-28 15:41:09','Administrator'),(5,'debug',6,'2012-11-28 15:41:09','Administrator'),(6,'qa',7,'2012-11-28 15:41:09','Administrator'),(7,'oob',8,'2012-11-28 15:41:09','Administrator'),(8,'dispatch',9,'2012-11-28 15:41:09','Administrator'),(9,'screen',4,'2012-11-28 15:41:09','Administrator');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_prices`
--

DROP TABLE IF EXISTS `part_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_prices` (
  `part_prices_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL,
  `part_price` float NOT NULL,
  `active` bit(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`part_prices_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_prices`
--

LOCK TABLES `part_prices` WRITE;
/*!40000 ALTER TABLE `part_prices` DISABLE KEYS */;
INSERT INTO `part_prices` VALUES (1,1,30.99,'','2012-12-14 14:26:37','Administrator','2012-12-14 14:26:37','Administrator'),(2,2,35.99,'','2012-12-17 09:36:02','Administrator','2012-12-17 09:36:02','Administrator'),(3,2,34.99,'','2012-12-17 09:36:16','Administrator','2012-12-17 09:36:16','Administrator'),(4,4,4.99,'','2012-12-17 11:10:22','Administrator','2012-12-17 11:10:22','Administrator'),(5,5,3.33,'','2012-12-17 11:13:13','Administrator','2012-12-17 11:13:13','Administrator');
/*!40000 ALTER TABLE `part_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `transaction_type_id` int(11) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,7000000,1,'','2012-11-12 09:46:19','Steven Woodhouse'),(2,7000001,1,'','2012-11-12 09:46:19','Steven Woodhouse'),(3,7000002,1,'','2012-11-30 15:45:35','Steven Woodhouse'),(4,7000003,1,'','2012-12-07 10:39:24','Steven Woodhouse'),(5,7000004,1,'','2012-12-07 10:55:29','Steven Woodhouse'),(6,7000005,1,'','2012-12-07 11:00:20','Steven Woodhouse'),(7,7000006,1,'','2012-12-07 11:10:15','Steven Woodhouse'),(8,7000007,1,'','2012-12-07 11:25:27','Steven Woodhouse'),(9,7000008,1,'','2012-12-07 11:29:42','Steven Woodhouse'),(10,7000009,1,'','2012-12-07 11:32:33','Steven Woodhouse'),(11,7000010,1,'','2012-12-07 11:35:14','Steven Woodhouse'),(12,7000011,1,'','2012-12-07 11:37:24','Steven Woodhouse'),(13,7000012,1,'','2012-12-07 12:03:30','Steven Woodhouse'),(14,7000013,1,'','2012-12-07 12:09:05','Steven Woodhouse'),(15,7000001,2,'','2012-12-07 16:09:03','Steven Woodhouse'),(16,7000000,2,'','2012-12-07 16:12:08','Steven Woodhouse'),(17,7000003,2,'','2012-12-07 16:13:01','Steven Woodhouse'),(18,7000014,1,'','2012-12-07 16:17:33','Steven Woodhouse'),(19,7000014,2,'','2012-12-07 16:19:14','Steven Woodhouse'),(20,7000015,1,'','2012-12-10 11:18:24','Steven Woodhouse'),(21,7000016,1,'','2012-12-10 11:20:05','Steven Woodhouse'),(22,7000017,1,'','2012-12-10 11:26:32','Steven Woodhouse'),(23,7000018,1,'','2012-12-10 13:09:06','Steven Woodhouse'),(24,7000019,1,'','2012-12-10 13:11:20','Steven Woodhouse'),(25,7000020,1,'','2012-12-10 13:16:29','Steven Woodhouse'),(26,7000021,1,'','2012-12-10 13:19:02','Steven Woodhouse'),(27,7000022,1,'','2012-12-10 13:20:52','Steven Woodhouse'),(28,7000023,1,'','2012-12-10 13:22:44','Steven Woodhouse'),(29,7000024,1,'','2012-12-11 11:04:50','Steven Woodhouse'),(30,7000025,1,'','2012-12-11 11:06:16','Steven Woodhouse'),(31,7000026,1,'','2012-12-11 12:29:12','Steven Woodhouse'),(32,7000027,1,'','2012-12-11 13:06:43','Steven Woodhouse'),(33,7000028,1,'','2012-12-11 13:11:44','Steven Woodhouse'),(34,7000029,1,'','2012-12-12 12:45:38','Steven Woodhouse'),(35,7000030,1,'','2012-12-12 12:48:22','Steven Woodhouse'),(36,7000031,1,'','2012-12-12 12:50:05','Steven Woodhouse'),(37,7000032,1,'','2012-12-12 13:29:17','Steven Woodhouse'),(38,7000006,2,'','2012-12-12 15:03:36','Steven Woodhouse'),(39,7000005,2,'','2012-12-12 15:12:31','Steven Woodhouse'),(40,7000004,2,'','2012-12-12 15:13:21','Steven Woodhouse'),(41,7000007,2,'','2012-12-12 15:13:56','Steven Woodhouse'),(42,7000007,2,'','2012-12-12 15:15:25','Steven Woodhouse'),(43,7000026,2,'','2012-12-13 12:42:45','Steven Woodhouse'),(44,7000016,2,'','2012-12-13 13:06:44','Steven Woodhouse'),(45,7000017,2,'','2012-12-13 14:24:43','Steven Woodhouse'),(46,7000017,4,'','2012-12-14 09:03:59','Steven Woodhouse'),(47,7000017,4,'','2012-12-14 09:06:04','Steven Woodhouse'),(48,7000017,4,'','2012-12-14 09:07:29','Steven Woodhouse'),(49,7000017,4,'','2012-12-14 09:09:07','Steven Woodhouse'),(50,7000017,4,'','2012-12-14 09:10:24','Steven Woodhouse'),(51,7000026,4,'','2012-12-14 09:16:14','Steven Woodhouse'),(52,7000030,2,'','2012-12-14 09:20:25','Steven Woodhouse'),(53,7000030,4,'','2012-12-14 09:21:01','Steven Woodhouse'),(54,7000019,2,'','2012-12-14 09:41:10','Steven Woodhouse'),(55,7000019,4,'','2012-12-14 09:41:29','Steven Woodhouse'),(56,7000020,2,'','2012-12-14 09:42:04','Steven Woodhouse'),(57,7000020,4,'','2012-12-14 09:42:15','Steven Woodhouse'),(58,7000018,2,'','2012-12-14 09:43:07','Steven Woodhouse'),(59,7000018,4,'','2012-12-14 09:43:22','Steven Woodhouse'),(60,7000021,2,'','2012-12-14 10:46:37','Steven Woodhouse'),(61,7000021,4,'','2012-12-14 10:46:51','Steven Woodhouse'),(62,7000022,2,'','2012-12-14 10:52:26','Steven Woodhouse'),(63,7000022,4,'','2012-12-14 10:52:37','Steven Woodhouse'),(64,7000023,2,'','2012-12-14 11:00:21','Steven Woodhouse'),(65,7000024,2,'','2012-12-14 11:00:28','Steven Woodhouse'),(66,7000025,2,'','2012-12-14 11:00:36','Steven Woodhouse'),(67,7000027,2,'','2012-12-14 11:00:46','Steven Woodhouse'),(68,7000028,2,'','2012-12-14 11:00:55','Steven Woodhouse'),(69,7000029,2,'','2012-12-14 11:01:01','Steven Woodhouse'),(70,7000031,2,'','2012-12-14 11:01:10','Steven Woodhouse'),(71,7000032,2,'','2012-12-14 11:01:16','Steven Woodhouse'),(72,7000023,4,'','2012-12-14 11:01:59','Steven Woodhouse'),(73,7000024,4,'','2012-12-14 11:02:31','Steven Woodhouse'),(74,7000024,4,'','2012-12-14 11:04:37','Steven Woodhouse'),(75,7000024,4,'','2012-12-14 11:06:06','Steven Woodhouse'),(76,7000023,4,'','2012-12-14 11:08:21','Steven Woodhouse'),(77,7000025,4,'','2012-12-14 11:10:00','Steven Woodhouse'),(78,7000027,4,'','2012-12-14 11:28:32','Steven Woodhouse'),(79,7000028,4,'','2012-12-14 11:53:08','Steven Woodhouse'),(80,7000029,4,'','2012-12-14 11:53:20','Steven Woodhouse'),(81,7000031,4,'','2012-12-14 11:56:56','Steven Woodhouse'),(82,7000032,4,'','2012-12-14 11:57:07','Steven Woodhouse'),(83,7000033,1,'','2012-12-18 10:22:58','Steven Woodhouse'),(84,7000033,2,'','2012-12-18 10:23:32','Steven Woodhouse'),(85,7000034,1,'','2012-12-18 10:31:38','Steven Woodhouse'),(86,7000034,2,'','2012-12-18 10:33:27','Steven Woodhouse'),(87,7000034,4,'','2012-12-18 10:34:35','Steven Woodhouse'),(88,7000033,4,'','2012-12-18 10:36:49','Steven Woodhouse'),(89,7000027,5,'','2012-12-19 07:54:25','Steven Woodhouse'),(90,7000027,5,'','2012-12-19 07:56:18','Steven Woodhouse'),(91,7000027,5,'','2012-12-19 07:57:48','Steven Woodhouse'),(92,7000027,5,'','2012-12-19 07:58:35','Steven Woodhouse'),(93,7000027,5,'','2012-12-19 07:59:59','Steven Woodhouse'),(94,7000019,5,'','2012-12-19 08:16:44','Steven Woodhouse'),(95,7000017,5,'','2012-12-19 08:27:58','Steven Woodhouse'),(96,7000020,5,'','2012-12-19 08:36:22','Steven Woodhouse'),(97,7000035,1,'','2012-12-19 12:21:48','Steven Woodhouse'),(98,7000035,2,'','2012-12-19 12:22:01','Steven Woodhouse'),(99,7000035,4,'','2012-12-19 12:23:01','Steven Woodhouse');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lines`
--

DROP TABLE IF EXISTS `lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lines` (
  `line_id` int(11) NOT NULL AUTO_INCREMENT,
  `line_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`line_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lines`
--

LOCK TABLES `lines` WRITE;
/*!40000 ALTER TABLE `lines` DISABLE KEYS */;
INSERT INTO `lines` VALUES (1,'EE HTC Warranty','2012-11-12 09:45:53','Steven Woodhouse','2012-11-12 09:45:53','Steven Woodhouse'),(2,'EE HTC Non-Warranty','2012-12-14 14:57:11','Steven Woodhouse','2012-12-14 14:57:11','Steven Woodhouse');
/*!40000 ALTER TABLE `lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faults`
--

DROP TABLE IF EXISTS `faults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faults` (
  `fault_id` int(11) NOT NULL AUTO_INCREMENT,
  `fault_code` varchar(255) NOT NULL,
  `fault_description` varchar(255) NOT NULL,
  `fault_level_route` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`fault_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faults`
--

LOCK TABLES `faults` WRITE;
/*!40000 ALTER TABLE `faults` DISABLE KEYS */;
INSERT INTO `faults` VALUES (1,'POW-01','no power up',3,'2012-12-10 11:11:16','Administrator'),(2,'DIS-01','no display',2,'2012-12-10 11:11:16','Administrator'),(3,'CHG-01','no charging',2,'2012-12-10 11:11:16','Administrator'),(4,'KEY-01','faulty keypad',2,'2012-12-10 11:11:16','Administrator'),(5,'SIG-01','no signal',3,'2012-12-10 11:11:16','Administrator'),(6,'AUD-01','no audio out',2,'2012-12-10 11:11:16','Administrator'),(7,'MIC-01','microphone fault',2,'2012-12-10 11:11:16','Administrator'),(8,'SIM-01','sim card fault',2,'2012-12-10 11:11:16','Administrator'),(9,'MEM-01','memory fault',2,'2012-12-10 11:11:16','Administrator'),(10,'FEA-01','feature fault',2,'2012-12-10 11:11:16','Administrator');
/*!40000 ALTER TABLE `faults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parts` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_code` varchar(255) NOT NULL,
  `part_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(45) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(45) NOT NULL,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,'54556665-01','HTC One Rear Assy','2012-12-14 14:26:37','Administrator','2012-12-14 14:26:37','Administrator'),(2,'54556432-02','HTC One Front Assy','2012-12-17 09:36:02','Administrator','2012-12-17 09:36:02','Administrator'),(3,'54554442-02','HTC One Display','2012-12-17 11:09:44','Administrator','2012-12-17 11:09:44','Administrator'),(4,'54554443-02','HTC One Speaker','2012-12-17 11:10:22','Administrator','2012-12-17 11:10:22','Administrator'),(5,'54554449-02','usb charger socket','2012-12-17 11:13:13','Administrator','2012-12-17 11:13:13','Administrator');
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,2,1,1,'2012-11-26 12:17:26','Administrator'),(2,2,2,1,'2012-11-26 12:17:26','Administrator'),(3,2,3,1,'2012-11-26 12:17:26','Administrator'),(4,2,4,1,'2012-11-26 12:17:26','Administrator'),(5,2,5,1,'2012-11-26 12:17:26','Administrator'),(6,2,6,1,'2012-11-26 12:17:26','Administrator'),(7,2,7,1,'2012-11-26 12:17:26','Administrator'),(8,2,8,1,'2012-11-26 12:17:26','Administrator'),(16,1,1,1,'2012-11-26 12:17:54','Administrator'),(17,1,2,1,'2012-11-26 12:17:54','Administrator'),(18,1,3,1,'2012-11-26 12:17:54','Administrator'),(19,1,4,1,'2012-11-26 12:17:54','Administrator'),(20,1,5,1,'2012-11-26 12:17:54','Administrator'),(21,1,6,1,'2012-11-26 12:17:54','Administrator'),(22,1,7,1,'2012-11-26 12:17:54','Administrator'),(23,1,8,1,'2012-11-26 12:17:54','Administrator'),(24,3,3,1,'2012-12-11 15:06:01','Steven Woodhouse'),(25,4,3,1,'2012-12-11 15:14:07','Steven Woodhouse'),(26,5,3,1,'2012-12-11 15:21:09','Steven Woodhouse'),(27,6,3,1,'2012-12-11 15:22:41','Steven Woodhouse'),(28,7,3,1,'2012-12-11 15:30:00','Steven Woodhouse'),(29,8,1,1,'2012-12-11 15:31:21','Steven Woodhouse'),(30,2,9,1,'2012-12-11 15:31:21','Administrator'),(31,1,9,1,'2012-12-11 15:31:21','Administrator');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_repairs`
--

DROP TABLE IF EXISTS `job_repairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_repairs` (
  `job_repairs_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `repair_id` int(11) NOT NULL,
  `repair_reason_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  PRIMARY KEY (`job_repairs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_repairs`
--

LOCK TABLES `job_repairs` WRITE;
/*!40000 ALTER TABLE `job_repairs` DISABLE KEYS */;
INSERT INTO `job_repairs` VALUES (1,91,7,9,'2012-12-19 07:57:48','Steven Woodhouse'),(2,92,7,9,'2012-12-19 07:58:35','Steven Woodhouse'),(3,93,7,9,'2012-12-19 07:59:59','Steven Woodhouse'),(4,94,7,9,'2012-12-19 08:16:44','Steven Woodhouse'),(5,95,7,10,'2012-12-19 08:27:58','Steven Woodhouse'),(6,96,7,9,'2012-12-19 08:36:22','Steven Woodhouse');
/*!40000 ALTER TABLE `job_repairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_on_models`
--

DROP TABLE IF EXISTS `part_on_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_on_models` (
  `part_on_models_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`part_on_models_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_on_models`
--

LOCK TABLES `part_on_models` WRITE;
/*!40000 ALTER TABLE `part_on_models` DISABLE KEYS */;
INSERT INTO `part_on_models` VALUES (1,1,2,'2012-12-19 10:40:00','Steven Woodhouse','2012-12-19 10:40:00','Steven Woodhouse'),(2,2,2,'2012-12-19 10:40:00','Steven Woodhouse','2012-12-19 10:40:00','Steven Woodhouse'),(3,3,2,'2012-12-19 10:40:00','Steven Woodhouse','2012-12-19 10:40:00','Steven Woodhouse'),(4,4,2,'2012-12-19 10:40:00','Steven Woodhouse','2012-12-19 10:40:00','Steven Woodhouse'),(5,5,2,'2012-12-19 10:40:00','Steven Woodhouse','2012-12-19 10:40:00','Steven Woodhouse'),(6,5,1,'2012-12-19 10:40:00','Steven Woodhouse','2012-12-19 10:40:00','Steven Woodhouse');
/*!40000 ALTER TABLE `part_on_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_price_lines`
--

DROP TABLE IF EXISTS `part_price_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_price_lines` (
  `part_price_lines_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_prices_id` int(11) NOT NULL,
  `line_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`part_price_lines_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_price_lines`
--

LOCK TABLES `part_price_lines` WRITE;
/*!40000 ALTER TABLE `part_price_lines` DISABLE KEYS */;
INSERT INTO `part_price_lines` VALUES (1,1,1,'2012-12-14 14:26:37','Administrator','2012-12-14 14:26:37','Administrator'),(2,1,2,'2012-12-14 15:14:51','Administrator','2012-12-14 15:14:51','Administrator'),(3,2,1,'2012-12-17 09:36:02','Administrator','2012-12-17 09:36:02','Administrator'),(4,3,2,'2012-12-17 09:36:16','Administrator','2012-12-17 09:36:16','Administrator'),(5,3,1,'2012-12-17 11:09:44','Administrator','2012-12-17 11:09:44','Administrator'),(6,4,1,'2012-12-17 11:10:22','Administrator','2012-12-17 11:10:22','Administrator'),(7,5,1,'2012-12-17 11:13:13','Administrator','2012-12-17 11:13:13','Administrator');
/*!40000 ALTER TABLE `part_price_lines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_types`
--

DROP TABLE IF EXISTS `transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_types` (
  `transaction_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_type_name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_type_id`),
  UNIQUE KEY `transaction_type_name_UNIQUE` (`transaction_type_name`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_types`
--

LOCK TABLES `transaction_types` WRITE;
/*!40000 ALTER TABLE `transaction_types` DISABLE KEYS */;
INSERT INTO `transaction_types` VALUES (1,'prealerted','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(2,'booked in','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(3,'bounce check','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(4,'screened','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(5,'customer damage found','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(6,'part added','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(7,'part replaced','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(8,'part resoldered','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(9,'repaired','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(10,'debugged','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(11,'qa passed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(12,'qa failed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(13,'send to repair','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(14,'send to debug','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(15,'out of box passed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(16,'packed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(17,'dispatched','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator'),(18,'claimed','2012-11-12 09:45:53','Administrator','2012-11-12 09:45:53','Administrator');
/*!40000 ALTER TABLE `transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'test_data'
--

--
-- Dumping routines for database 'test_data'
--
/*!50003 DROP FUNCTION IF EXISTS `this_monday` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `this_monday`() RETURNS datetime
return (select date_add(curdate(), interval  -  weekday(curdate())  day)) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ber` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `ber`(in job_id_in int, user_name_in varchar(255), fault_in varchar(255), repair_in varchar(255),
reason_in varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));

-- update the status
update jobs set status_id = 6, updated_by = user_name_in, updated_at = @date_time_stamp
where job_id = job_id_in;

-- create the ber transaction
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select job_id_in, 5, '', @date_time_stamp, user_name_in;

-- get the transactionid from the prealert
set @transaction_id = (select max(transaction_id) from transactions t where t.job_id = job_id_in and t.transaction_type_id = 5);

-- add in the fault repair reason codes --------------------------------

-- insert the fault --------
set @fault_id = (select fault_id from faults where fault_description = fault_in);

-- create the entry (using primary as the fault order)
insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
select @transaction_id, @fault_id, 1, @date_time_stamp, user_name_in;

-- insert the repair -------
set @repair_id = (select repair_id from repairs where repair_code = repair_in);
set @reason_id = (select repair_reason_id from repair_reasons where repair_reason = reason_in);

-- create the entry 
insert job_repairs (transaction_id, repair_id, repair_reason_id, created_at, created_by)
select @transaction_id, @repair_id, @reason_id, @date_time_stamp, user_name_in;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `book_job_in` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `book_job_in`(in imei_in varchar(30), model_name_in varchar(255), line_name_in varchar(255), user_name varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @model_id = (select m.model_id from models m where m.model_name = model_name_in);
set @line_id = (select l.line_id from `lines` l  where l.line_name = line_name_in);

-- get the jobid
set @jobid = (select max(job_id) from jobs j where j.imei = imei_in);

-- update the status
update jobs set status_id = 2, updated_by = user_name, updated_at = @date_time_stamp
where job_id = @jobid;

-- create the book_in transaction
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select @jobid, 2, '', @date_time_stamp, user_name;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_job_prealert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `create_job_prealert`(in imei_in varchar(30), model_name_in varchar(255), line_name_in varchar(255), 
user_name varchar(255), fault_1 varchar(255), fault_2 varchar(255), fault_3 varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @model_id = (select m.model_id from models m where m.model_name = model_name_in);
set @line_id = (select l.line_id from `lines` l  where l.line_name = line_name_in);

-- create the job
insert jobs (imei, model_id, line_id, status_id, 
created_at, created_by, updated_at, updated_by)
select imei_in, @model_id, @line_id, 1,  @date_time_stamp,
user_name, @date_time_stamp, user_name;

-- get the jobid
set @jobid = (select max(job_id) from jobs j where j.imei = imei_in);

-- create the first transaction - prealert
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select @jobid, 1, '', @date_time_stamp, user_name;

-- get the transactionid from the prealert
set @transaction_id = (select max(transaction_id) from transactions t where t.job_id = @jobid);

-- insert the faults
set @fault_1_id = (select fault_id from faults where fault_description = fault_1);
set @fault_2_id = (select fault_id from faults where fault_description = fault_2);
set @fault_3_id = (select fault_id from faults where fault_description = fault_3);

insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
select @transaction_id, @fault_1_id, 1, @date_time_stamp, user_name;
if @fault_2_id is not null then
    insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
    select @transaction_id, @fault_2_id, 2, @date_time_stamp, user_name;

    if @fault_3_id is not null then
        insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
        select @transaction_id, @fault_3_id, 3, @date_time_stamp, user_name;

    end  if;
end if;


END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_prealert_faults` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_prealert_faults`(in jobid_in int)
BEGIN

select (select fault_description 
from transactions t inner join 
job_faults jf on t.transaction_id = jf.transaction_id inner join 
faults f on jf.fault_id = f.fault_id 
where job_id = jobid_in and fault_order = 1 and transaction_type_id = 1) as `primary`, 
(select fault_description 
from transactions t inner join 
job_faults jf on t.transaction_id = jf.transaction_id inner join 
faults f on jf.fault_id = f.fault_id 
where job_id = jobid_in and fault_order = 2 and transaction_type_id = 1) as secondary,
(select fault_description 
from transactions t inner join 
job_faults jf on t.transaction_id = jf.transaction_id inner join 
faults f on jf.fault_id = f.fault_id 
where job_id = jobid_in and fault_order = 3 and transaction_type_id = 1) as tertiary;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_repair_faults` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_repair_faults`(in model_name_in varchar(255), part_description_in varchar(255), ui_repair_name_in varchar(255))
BEGIN

select distinct f.fault_description
from parts p inner join 
part_on_models pm on p.part_id = pm.part_id inner join 
models m on pm.model_id = m.model_id inner join 
part_model_fault_repair_reason_map pmfrr on pmfrr.part_on_models_id = pm.part_on_models_id inner join
fault_repair_reason_map frrm on frrm.fault_repair_reason_map_id = pmfrr.fault_repair_reason_map_id inner join
faults f on frrm.fault_id = f.fault_id inner join
repairs r on frrm.repair_id = r.repair_id inner join
repair_reasons rr on frrm.reason_id = rr.repair_reason_id inner join
ui_part_repair_map uprm on r.repair_id = uprm.repair_id
where model_name = model_name_in and 
part_description = part_description_in and 
ui_repair_name = ui_repair_name_in ;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_repair_reasons` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_repair_reasons`(in model_name_in varchar(255), part_description_in varchar(255), ui_repair_name_in varchar(255),
fault_description_in varchar(255))
BEGIN

select rr.repair_reason
from parts p inner join 
part_on_models pm on p.part_id = pm.part_id inner join 
models m on pm.model_id = m.model_id inner join 
part_model_fault_repair_reason_map pmfrr on pmfrr.part_on_models_id = pm.part_on_models_id inner join
fault_repair_reason_map frrm on frrm.fault_repair_reason_map_id = pmfrr.fault_repair_reason_map_id inner join
faults f on frrm.fault_id = f.fault_id inner join
repairs r on frrm.repair_id = r.repair_id inner join
repair_reasons rr on frrm.reason_id = rr.repair_reason_id inner join
ui_part_repair_map uprm on r.repair_id = uprm.repair_id
where model_name = model_name_in and 
part_description = part_description_in and 
ui_repair_name = ui_repair_name_in and 
fault_description = fault_description_in;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_roles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `get_roles`(in login varchar(255))
BEGIN
select r.role_name 
from users u inner join 
user_roles ur on u.user_id = ur.user_id inner join 
roles r on ur.role_id = r.role_id 
where user_name = login
order by r.role_process_order;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `joblist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `joblist`()
BEGIN
select j.job_id, line_name, model_name, manufacturer_name, status_name,
transaction_type_name, t.created_at, t.created_by, t.notes
from 
jobs j inner join 
`lines` l on j.line_id = l.line_id inner join 
models m on j.model_id = m.model_id inner join
manufacturer mm on m.manufacturer_id = mm.manufacturer_id inner join 
statuses s on j.status_id = s.status_id inner join 
transactions t on j.job_id = t.job_id inner join 
transaction_types tt on t.transaction_type_id = tt.transaction_type_id; 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `new_user`(in user_name_in varchar(255), user_login_in varchar(255), init_line_in varchar(255), init_role_in varchar(255), 
user_name varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @role_id = (select r.role_id from roles r where r.role_name = init_role_in);
set @line_id = (select l.line_id from `lines` l  where l.line_name = init_line_in);

-- create the user
insert users (user_name, user_login, created_at, created_by, updated_at, updated_by)
select user_name_in, user_login_in, @date_time_stamp, user_name,@date_time_stamp, user_name;


set @user_id = (select u.user_id from users u where u.user_name = user_name_in);

-- create the intitial user_role for line
insert user_roles(user_id, role_id, line_id, created_at, created_by)
select @user_id, @role_id, @line_id, @date_time_stamp, user_name;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `part_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `part_insert`(in part_code_in varchar(255), part_description_in varchar(255), part_price_in float, part_price_line_in varchar(255), user_name_in varchar(255))
BEGIN
-- get some variables
set @date_time_stamp = (select convert(now(), char));
set @line_id = (select l.line_id from `lines` l  where l.line_name = part_price_line_in);

if (select part_code from parts p where p.part_code = part_code_in) is null then 

-- insert the new part
insert parts (part_code, part_description, created_at, created_by, updated_at, updated_by)
select part_code_in, part_description_in, @date_time_stamp, user_name_in, @date_time_stamp, user_name_in;

end if;



-- get the part id
set @part_id = (select max(part_id) from parts p  where p.part_code = part_code_in);


if (select pp.part_price from parts p inner join part_prices pp on p.part_id = pp.part_id where pp.part_price = part_price_in) is null then 

-- insert the price
insert part_prices (part_id, part_price, active, created_at, created_by, updated_at, updated_by)
select @part_id, part_price_in, 1, @date_time_stamp, user_name_in, @date_time_stamp, user_name_in;

end if;

-- get the part_price_id 
set @part_prices_id = (select max(part_prices_id) from part_prices p  inner join parts pp on p.part_id = pp.part_id where p.part_price = part_price_in);



if (select ppl.line_id from parts p inner join 
part_prices pp on p.part_id = pp.part_id inner join 
part_price_lines ppl on pp.part_prices_id = ppl.part_prices_id
where ppl.line_id = @line_id and pp.part_price = part_price_in) is null then 

-- insert the price line
insert part_price_lines (part_prices_id, line_id, created_at, created_by, updated_at, updated_by)
select @part_prices_id, @line_id, @date_time_stamp, user_name_in, @date_time_stamp, user_name_in;

end if;



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_repair_part_by_model` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `return_repair_part_by_model`(in model_name_in varchar(255), ui_repair_name_in varchar(255))
BEGIN

select distinct part_description 
from parts p inner join 
part_on_models pm on p.part_id = pm.part_id inner join 
models m on pm.model_id = m.model_id inner join 
part_model_fault_repair_reason_map pmfrr on pmfrr.part_on_models_id = pm.part_on_models_id inner join
fault_repair_reason_map frrm on frrm.fault_repair_reason_map_id = pmfrr.fault_repair_reason_map_id inner join
repairs r on frrm.repair_id = r.repair_id inner join ui_part_repair_map uprm on r.repair_id = uprm.repair_id
where model_name = model_name_in and ui_repair_name = ui_repair_name_in ;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `return_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `return_user`(in login varchar(30))
BEGIN

select ifnull(user_name, 'No User') as user_name from users u where user_login = login;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `screened` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `screened`(in job_id_in int, user_name_in varchar(255), fault_in varchar(255) )
BEGIN

-- get some variables
set @date_time_stamp = (select convert(now(), char));

-- create the first transaction - prealert
insert transactions
(job_id, transaction_type_id, notes, created_at, created_by)
select job_id_in, 4, '', @date_time_stamp, user_name_in;

-- get the transactionid from the prealert
set @transaction_id = (select max(transaction_id) from transactions t where t.job_id = job_id_in and t.transaction_type_id = 4);

-- insert the fault
set @fault_id = (select fault_id from faults where fault_description = fault_in);

-- create the entry (using primary as the fault order)
insert job_faults (transaction_id, fault_id, fault_order, created_at, created_by)
select @transaction_id, @fault_id, 1, @date_time_stamp, user_name_in;



-- get the fault level (Repair or Debug)
set @repair_level = (select case when fault_level_route = 2 then 3 else 4 end from job_faults jf inner join faults f on jf.fault_id = f.fault_id where jf.transaction_id = @transaction_id);

-- change the status of the job 
update jobs
set status_id = @repair_level, updated_by = user_name_in, updated_at = @date_time_stamp
where job_id = job_id_in;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-20 15:44:57
