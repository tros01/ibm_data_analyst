CREATE DATABASE  IF NOT EXISTS `otters` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `otters`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: otters
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `cohort`
--

DROP TABLE IF EXISTS `cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cohort` (
  `otter_id` int NOT NULL,
  `cute_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `social_status_id` tinyint unsigned NOT NULL,
  `range_status_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`otter_id`),
  KEY `fk_cohort_social_status` (`social_status_id`),
  KEY `fk_cohort_range_status` (`range_status_id`),
  CONSTRAINT `fk_cohort_range_status` FOREIGN KEY (`range_status_id`) REFERENCES `dim_range_status` (`range_status_id`),
  CONSTRAINT `fk_cohort_social_status` FOREIGN KEY (`social_status_id`) REFERENCES `dim_social_status` (`social_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cohort`
--

LOCK TABLES `cohort` WRITE;
/*!40000 ALTER TABLE `cohort` DISABLE KEYS */;
INSERT INTO `cohort` VALUES (1,'Whiskers','2018-04-12',1,1),(2,'Pebble','2019-06-03',2,1),(3,'Mochi','2020-01-25',2,1),(4,'Bubbles','2017-09-14',3,1),(5,'Noodle','2021-11-02',1,2),(6,'Pumpkin','2016-10-31',3,1),(7,'Otto','2015-03-18',1,1),(8,'Willow','2019-07-09',2,1),(9,'Pudding','2022-05-21',2,2),(10,'Chestnut','2018-12-05',1,1),(11,'Hazel','2020-08-17',2,1),(12,'Clover','2021-02-11',2,2),(13,'Rufus','2014-06-29',1,1),(14,'Maple','2019-10-08',2,1),(15,'Sprout','2022-09-13',1,2),(16,'Luna','2017-01-19',3,1),(17,'Biscuit','2016-05-04',1,1),(18,'Poppy','2020-03-27',2,1),(19,'Theo','2018-11-30',1,1),(20,'Daisy','2019-04-22',2,1),(21,'Miso','2021-12-15',1,2),(22,'Rosie','2017-07-07',3,1),(23,'Finn','2015-02-09',1,1),(24,'Honey','2020-06-01',2,1),(25,'Acorn','2022-04-18',1,2),(26,'Olive','2018-08-26',2,1),(27,'Bean','2021-09-05',1,2),(28,'Ivy','2016-12-12',3,1),(29,'Shadow','2014-01-03',1,1),(30,'Marmalade','2019-05-16',2,1);
/*!40000 ALTER TABLE `cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cohort_legacy`
--

DROP TABLE IF EXISTS `cohort_legacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cohort_legacy` (
  `otter_id` int NOT NULL AUTO_INCREMENT,
  `cute_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `social_status` enum('Mr','Ms','Mrs') NOT NULL,
  `range_status` enum('free range','employed','in care') NOT NULL,
  PRIMARY KEY (`otter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cohort_legacy`
--

LOCK TABLES `cohort_legacy` WRITE;
/*!40000 ALTER TABLE `cohort_legacy` DISABLE KEYS */;
INSERT INTO `cohort_legacy` VALUES (1,'Whiskers','2018-04-12','Mr','employed'),(2,'Pebble','2019-06-03','Ms','free range'),(3,'Mochi','2020-01-25','Ms','employed'),(4,'Bubbles','2017-09-14','Mrs','free range'),(5,'Noodle','2021-11-02','Mr','in care'),(6,'Pumpkin','2016-10-31','Mrs','free range'),(7,'Otto','2015-03-18','Mr','employed'),(8,'Willow','2019-07-09','Ms','free range'),(9,'Pudding','2022-05-21','Ms','in care'),(10,'Chestnut','2018-12-05','Mr','employed'),(11,'Hazel','2020-08-17','Ms','free range'),(12,'Clover','2021-02-11','Ms','in care'),(13,'Rufus','2014-06-29','Mr','employed'),(14,'Maple','2019-10-08','Ms','free range'),(15,'Sprout','2022-09-13','Mr','in care'),(16,'Luna','2017-01-19','Mrs','free range'),(17,'Biscuit','2016-05-04','Mr','employed'),(18,'Poppy','2020-03-27','Ms','free range'),(19,'Theo','2018-11-30','Mr','employed'),(20,'Daisy','2019-04-22','Ms','free range'),(21,'Miso','2021-12-15','Mr','in care'),(22,'Rosie','2017-07-07','Mrs','free range'),(23,'Finn','2015-02-09','Mr','employed'),(24,'Honey','2020-06-01','Ms','free range'),(25,'Acorn','2022-04-18','Mr','in care'),(26,'Olive','2018-08-26','Ms','employed'),(27,'Bean','2021-09-05','Mr','in care'),(28,'Ivy','2016-12-12','Mrs','free range'),(29,'Shadow','2014-01-03','Mr','employed'),(30,'Marmalade','2019-05-16','Ms','free range');
/*!40000 ALTER TABLE `cohort_legacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_activity`
--

DROP TABLE IF EXISTS `dim_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_activity` (
  `activity_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `activity_code` varchar(16) NOT NULL,
  `label` varchar(32) NOT NULL,
  PRIMARY KEY (`activity_id`),
  UNIQUE KEY `activity_code` (`activity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_activity`
--

LOCK TABLES `dim_activity` WRITE;
/*!40000 ALTER TABLE `dim_activity` DISABLE KEYS */;
INSERT INTO `dim_activity` VALUES (1,'PLAY','play'),(2,'CONST','construction'),(3,'DAWDLE','dawdle'),(4,'COMM','commerce');
/*!40000 ALTER TABLE `dim_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_cleanliness`
--

DROP TABLE IF EXISTS `dim_cleanliness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_cleanliness` (
  `cleanliness_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `cleanliness_code` varchar(16) NOT NULL,
  `label` varchar(16) NOT NULL,
  PRIMARY KEY (`cleanliness_id`),
  UNIQUE KEY `cleanliness_code` (`cleanliness_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_cleanliness`
--

LOCK TABLES `dim_cleanliness` WRITE;
/*!40000 ALTER TABLE `dim_cleanliness` DISABLE KEYS */;
INSERT INTO `dim_cleanliness` VALUES (1,'THOR','thorough'),(2,'AVG','average'),(3,'NEGL','neglected');
/*!40000 ALTER TABLE `dim_cleanliness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_diet`
--

DROP TABLE IF EXISTS `dim_diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_diet` (
  `diet_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `diet_code` varchar(24) NOT NULL,
  `label` varchar(64) NOT NULL,
  PRIMARY KEY (`diet_id`),
  UNIQUE KEY `diet_code` (`diet_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_diet`
--

LOCK TABLES `dim_diet` WRITE;
/*!40000 ALTER TABLE `dim_diet` DISABLE KEYS */;
INSERT INTO `dim_diet` VALUES (1,'CARN_STRICT','strict carnivore'),(2,'HERB_LAX','lax herbivore'),(3,'OMNI_VOR','voracious omnivore'),(4,'PATR_PROV','proven patrivore'),(5,'VEGAN_SOME','somewhat vegan');
/*!40000 ALTER TABLE `dim_diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_friendliness`
--

DROP TABLE IF EXISTS `dim_friendliness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_friendliness` (
  `friendliness_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `friendliness_code` varchar(16) NOT NULL,
  `label` varchar(16) NOT NULL,
  PRIMARY KEY (`friendliness_id`),
  UNIQUE KEY `friendliness_code` (`friendliness_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_friendliness`
--

LOCK TABLES `dim_friendliness` WRITE;
/*!40000 ALTER TABLE `dim_friendliness` DISABLE KEYS */;
INSERT INTO `dim_friendliness` VALUES (1,'LOW','low'),(2,'EXP','expected'),(3,'HIGH','high');
/*!40000 ALTER TABLE `dim_friendliness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_fur_density`
--

DROP TABLE IF EXISTS `dim_fur_density`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_fur_density` (
  `fur_density_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `density_code` varchar(16) NOT NULL,
  `label` varchar(16) NOT NULL,
  PRIMARY KEY (`fur_density_id`),
  UNIQUE KEY `density_code` (`density_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_fur_density`
--

LOCK TABLES `dim_fur_density` WRITE;
/*!40000 ALTER TABLE `dim_fur_density` DISABLE KEYS */;
INSERT INTO `dim_fur_density` VALUES (1,'LOW','low'),(2,'MED','medium'),(3,'HIGH','high');
/*!40000 ALTER TABLE `dim_fur_density` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_gender`
--

DROP TABLE IF EXISTS `dim_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_gender` (
  `gender_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `gender_code` varchar(16) NOT NULL,
  `label` varchar(16) NOT NULL,
  PRIMARY KEY (`gender_id`),
  UNIQUE KEY `gender_code` (`gender_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_gender`
--

LOCK TABLES `dim_gender` WRITE;
/*!40000 ALTER TABLE `dim_gender` DISABLE KEYS */;
INSERT INTO `dim_gender` VALUES (1,'MALE','male'),(2,'FEMALE','female');
/*!40000 ALTER TABLE `dim_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_observation_type`
--

DROP TABLE IF EXISTS `dim_observation_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_observation_type` (
  `obs_type_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `obs_code` varchar(32) NOT NULL,
  `label` varchar(64) NOT NULL,
  `units` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`obs_type_id`),
  UNIQUE KEY `obs_code` (`obs_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_observation_type`
--

LOCK TABLES `dim_observation_type` WRITE;
/*!40000 ALTER TABLE `dim_observation_type` DISABLE KEYS */;
INSERT INTO `dim_observation_type` VALUES (1,'TEMP_C','Temperature','C');
/*!40000 ALTER TABLE `dim_observation_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_range_status`
--

DROP TABLE IF EXISTS `dim_range_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_range_status` (
  `range_status_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(16) NOT NULL,
  `label` varchar(32) NOT NULL,
  `is_minor_only` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`range_status_id`),
  UNIQUE KEY `status_code` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_range_status`
--

LOCK TABLES `dim_range_status` WRITE;
/*!40000 ALTER TABLE `dim_range_status` DISABLE KEYS */;
INSERT INTO `dim_range_status` VALUES (1,'FREE','free range',0),(2,'CARE','in care',1);
/*!40000 ALTER TABLE `dim_range_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_relationship_type`
--

DROP TABLE IF EXISTS `dim_relationship_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_relationship_type` (
  `relationship_type_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `rel_code` varchar(24) NOT NULL,
  `label` varchar(64) NOT NULL,
  PRIMARY KEY (`relationship_type_id`),
  UNIQUE KEY `rel_code` (`rel_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_relationship_type`
--

LOCK TABLES `dim_relationship_type` WRITE;
/*!40000 ALTER TABLE `dim_relationship_type` DISABLE KEYS */;
INSERT INTO `dim_relationship_type` VALUES (1,'FRIEND','friend'),(2,'RIVAL','rival'),(3,'SIBLING','sibling'),(4,'MENTOR','mentor');
/*!40000 ALTER TABLE `dim_relationship_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_social_status`
--

DROP TABLE IF EXISTS `dim_social_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_social_status` (
  `social_status_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` varchar(8) NOT NULL,
  `label` varchar(32) NOT NULL,
  PRIMARY KEY (`social_status_id`),
  UNIQUE KEY `status_code` (`status_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_social_status`
--

LOCK TABLES `dim_social_status` WRITE;
/*!40000 ALTER TABLE `dim_social_status` DISABLE KEYS */;
INSERT INTO `dim_social_status` VALUES (1,'MR','Mr'),(2,'MS','Ms'),(3,'MRS','Mrs');
/*!40000 ALTER TABLE `dim_social_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employers` (
  `employer_id` int NOT NULL AUTO_INCREMENT,
  `employer_name` varchar(120) NOT NULL,
  PRIMARY KEY (`employer_id`),
  UNIQUE KEY `employer_name` (`employer_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employers`
--

LOCK TABLES `employers` WRITE;
/*!40000 ALTER TABLE `employers` DISABLE KEYS */;
INSERT INTO `employers` VALUES (1,'OtterWorks Ltd');
/*!40000 ALTER TABLE `employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment_contracts`
--

DROP TABLE IF EXISTS `employment_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment_contracts` (
  `contract_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `otter_id` int NOT NULL,
  `employer_id` int NOT NULL,
  `role_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `hours_per_week` tinyint NOT NULL,
  PRIMARY KEY (`contract_id`),
  KEY `fk_contracts_otter` (`otter_id`),
  KEY `fk_contracts_employer` (`employer_id`),
  KEY `fk_contracts_role` (`role_id`),
  CONSTRAINT `fk_contracts_employer` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`employer_id`),
  CONSTRAINT `fk_contracts_otter` FOREIGN KEY (`otter_id`) REFERENCES `cohort` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_contracts_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`),
  CONSTRAINT `chk_contract_dates` CHECK (((`end_date` is null) or (`end_date` >= `start_date`))),
  CONSTRAINT `chk_hours` CHECK ((`hours_per_week` between 1 and 60))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment_contracts`
--

LOCK TABLES `employment_contracts` WRITE;
/*!40000 ALTER TABLE `employment_contracts` DISABLE KEYS */;
INSERT INTO `employment_contracts` VALUES (1,1,1,2,'2024-01-01',NULL,32),(2,3,1,1,'2024-01-01',NULL,32),(3,7,1,1,'2024-01-01',NULL,32),(4,10,1,2,'2024-01-01',NULL,32),(5,13,1,1,'2024-01-01',NULL,32),(6,17,1,1,'2024-01-01',NULL,32),(7,19,1,1,'2024-01-01',NULL,32),(8,23,1,2,'2024-01-01',NULL,32),(9,26,1,2,'2024-01-01',NULL,32),(10,29,1,1,'2024-01-01',NULL,32);
/*!40000 ALTER TABLE `employment_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_checks`
--

DROP TABLE IF EXISTS `health_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_checks` (
  `check_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `otter_id` int NOT NULL,
  `check_date` date NOT NULL,
  `vet_name` varchar(80) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `outcome` enum('cleared','monitor','treatment') NOT NULL,
  PRIMARY KEY (`check_id`),
  UNIQUE KEY `uq_hc` (`otter_id`,`check_date`),
  CONSTRAINT `fk_hc_otter` FOREIGN KEY (`otter_id`) REFERENCES `cohort` (`otter_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_checks`
--

LOCK TABLES `health_checks` WRITE;
/*!40000 ALTER TABLE `health_checks` DISABLE KEYS */;
INSERT INTO `health_checks` VALUES (1,1,'2024-02-10','Dr. River','Routine annual check','cleared'),(2,1,'2025-02-12','Dr. River','Slight weight gain','monitor'),(3,2,'2024-03-05','Dr. Brook','Excellent condition','cleared'),(4,3,'2024-01-20','Dr. River','Strong musculature','cleared'),(5,3,'2025-01-22','Dr. River','Very active','cleared'),(6,4,'2024-04-18','Dr. Delta','Calm demeanor','cleared'),(7,5,'2024-06-01','Dr. Brook','Juvenile intake check','monitor'),(8,5,'2024-08-01','Dr. Brook','Normal development','monitor'),(9,5,'2024-10-01','Dr. Brook','Growth on track','cleared'),(10,6,'2024-02-25','Dr. River','Routine check','cleared'),(11,7,'2024-03-14','Dr. Delta','Very robust','cleared'),(12,8,'2024-05-09','Dr. Brook','No issues noted','cleared'),(13,9,'2024-07-12','Dr. Brook','Minor juvenile fatigue','monitor'),(14,9,'2024-09-15','Dr. Brook','Improved stamina','cleared'),(15,10,'2024-02-02','Dr. River','Excellent condition','cleared'),(16,11,'2024-04-01','Dr. Delta','Routine check','cleared'),(17,12,'2024-06-10','Dr. Brook','Juvenile intake','monitor'),(18,12,'2024-08-10','Dr. Brook','Normal behaviour','cleared'),(19,13,'2024-01-11','Dr. River','High energy, strong build','cleared'),(20,14,'2024-03-19','Dr. Delta','Routine check','cleared'),(21,15,'2024-07-03','Dr. Brook','Young, playful','monitor'),(22,15,'2024-09-03','Dr. Brook','Stable','cleared'),(23,16,'2024-02-28','Dr. River','Healthy','cleared'),(24,17,'2024-01-30','Dr. Delta','Very muscular','cleared'),(25,18,'2024-03-22','Dr. River','Routine check','cleared'),(26,19,'2024-02-14','Dr. Delta','Slightly aggressive, watch closely','monitor'),(27,19,'2024-05-14','Dr. Delta','Behaviour improved','cleared'),(28,20,'2024-04-07','Dr. Brook','No concerns','cleared'),(29,21,'2024-06-20','Dr. Brook','Juvenile intake','monitor'),(30,21,'2024-08-20','Dr. Brook','Healthy growth','cleared'),(31,22,'2024-03-11','Dr. River','Routine check','cleared'),(32,23,'2024-02-05','Dr. Delta','Strong adult','cleared'),(33,24,'2024-05-30','Dr. Brook','Routine check','cleared'),(34,25,'2024-07-18','Dr. Brook','Young, energetic','monitor'),(35,25,'2024-09-18','Dr. Brook','Settling well','cleared'),(36,26,'2024-02-09','Dr. River','Routine check','cleared'),(37,27,'2024-06-25','Dr. Brook','Juvenile intake','monitor'),(38,27,'2024-08-25','Dr. Brook','Normal development','cleared'),(39,28,'2024-03-27','Dr. Delta','Healthy adult','cleared'),(40,29,'2024-01-16','Dr. River','Very large specimen','monitor'),(41,29,'2024-04-16','Dr. River','Stable condition','cleared'),(42,30,'2024-04-30','Dr. Brook','Routine check','cleared');
/*!40000 ALTER TABLE `health_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_checks_legacy`
--

DROP TABLE IF EXISTS `health_checks_legacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_checks_legacy` (
  `check_id` bigint NOT NULL AUTO_INCREMENT,
  `otter_id` int NOT NULL,
  `check_date` date NOT NULL,
  `vet_name` varchar(80) NOT NULL,
  `temperature_c` decimal(4,1) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `outcome` enum('cleared','monitor','treatment') NOT NULL,
  PRIMARY KEY (`check_id`),
  UNIQUE KEY `uq_otter_checkdate` (`otter_id`,`check_date`),
  CONSTRAINT `fk_health_checks_cohort` FOREIGN KEY (`otter_id`) REFERENCES `cohort_legacy` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `chk_temperature_reasonable` CHECK ((`temperature_c` between 34.0 and 42.0))
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_checks_legacy`
--

LOCK TABLES `health_checks_legacy` WRITE;
/*!40000 ALTER TABLE `health_checks_legacy` DISABLE KEYS */;
INSERT INTO `health_checks_legacy` VALUES (1,1,'2024-02-10','Dr. River',37.6,'Routine annual check','cleared'),(2,1,'2025-02-12','Dr. River',37.8,'Slight weight gain','monitor'),(3,2,'2024-03-05','Dr. Brook',37.4,'Excellent condition','cleared'),(4,3,'2024-01-20','Dr. River',37.9,'Strong musculature','cleared'),(5,3,'2025-01-22','Dr. River',38.0,'Very active','cleared'),(6,4,'2024-04-18','Dr. Delta',37.7,'Calm demeanor','cleared'),(7,5,'2024-06-01','Dr. Brook',38.2,'Juvenile intake check','monitor'),(8,5,'2024-08-01','Dr. Brook',38.1,'Normal development','monitor'),(9,5,'2024-10-01','Dr. Brook',37.9,'Growth on track','cleared'),(10,6,'2024-02-25','Dr. River',37.5,'Routine check','cleared'),(11,7,'2024-03-14','Dr. Delta',38.3,'Very robust','cleared'),(12,8,'2024-05-09','Dr. Brook',37.6,'No issues noted','cleared'),(13,9,'2024-07-12','Dr. Brook',38.0,'Minor juvenile fatigue','monitor'),(14,9,'2024-09-15','Dr. Brook',37.8,'Improved stamina','cleared'),(15,10,'2024-02-02','Dr. River',37.7,'Excellent condition','cleared'),(16,11,'2024-04-01','Dr. Delta',37.6,'Routine check','cleared'),(17,12,'2024-06-10','Dr. Brook',38.1,'Juvenile intake','monitor'),(18,12,'2024-08-10','Dr. Brook',38.0,'Normal behaviour','cleared'),(19,13,'2024-01-11','Dr. River',38.4,'High energy, strong build','cleared'),(20,14,'2024-03-19','Dr. Delta',37.8,'Routine check','cleared'),(21,15,'2024-07-03','Dr. Brook',38.2,'Young, playful','monitor'),(22,15,'2024-09-03','Dr. Brook',37.9,'Stable','cleared'),(23,16,'2024-02-28','Dr. River',37.7,'Healthy','cleared'),(24,17,'2024-01-30','Dr. Delta',38.3,'Very muscular','cleared'),(25,18,'2024-03-22','Dr. River',37.6,'Routine check','cleared'),(26,19,'2024-02-14','Dr. Delta',38.5,'Slightly aggressive, watch closely','monitor'),(27,19,'2024-05-14','Dr. Delta',38.2,'Behaviour improved','cleared'),(28,20,'2024-04-07','Dr. Brook',37.7,'No concerns','cleared'),(29,21,'2024-06-20','Dr. Brook',38.0,'Juvenile intake','monitor'),(30,21,'2024-08-20','Dr. Brook',37.9,'Healthy growth','cleared'),(31,22,'2024-03-11','Dr. River',37.6,'Routine check','cleared'),(32,23,'2024-02-05','Dr. Delta',38.4,'Strong adult','cleared'),(33,24,'2024-05-30','Dr. Brook',37.8,'Routine check','cleared'),(34,25,'2024-07-18','Dr. Brook',38.1,'Young, energetic','monitor'),(35,25,'2024-09-18','Dr. Brook',37.9,'Settling well','cleared'),(36,26,'2024-02-09','Dr. River',37.6,'Routine check','cleared'),(37,27,'2024-06-25','Dr. Brook',38.0,'Juvenile intake','monitor'),(38,27,'2024-08-25','Dr. Brook',37.8,'Normal development','cleared'),(39,28,'2024-03-27','Dr. Delta',37.7,'Healthy adult','cleared'),(40,29,'2024-01-16','Dr. River',38.6,'Very large specimen','monitor'),(41,29,'2024-04-16','Dr. River',38.3,'Stable condition','cleared'),(42,30,'2024-04-30','Dr. Brook',37.7,'Routine check','cleared');
/*!40000 ALTER TABLE `health_checks_legacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_observations`
--

DROP TABLE IF EXISTS `health_observations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `health_observations` (
  `observation_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `check_id` bigint unsigned NOT NULL,
  `obs_type_id` smallint unsigned NOT NULL,
  `value_num` decimal(8,2) DEFAULT NULL,
  `value_text` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`observation_id`),
  KEY `fk_obs_check` (`check_id`),
  KEY `fk_obs_type` (`obs_type_id`),
  CONSTRAINT `fk_obs_check` FOREIGN KEY (`check_id`) REFERENCES `health_checks` (`check_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_obs_type` FOREIGN KEY (`obs_type_id`) REFERENCES `dim_observation_type` (`obs_type_id`),
  CONSTRAINT `chk_obs_value` CHECK ((((`value_num` is not null) and (`value_text` is null)) or ((`value_num` is null) and (`value_text` is not null))))
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_observations`
--

LOCK TABLES `health_observations` WRITE;
/*!40000 ALTER TABLE `health_observations` DISABLE KEYS */;
INSERT INTO `health_observations` VALUES (1,1,1,37.60,NULL),(2,2,1,37.80,NULL),(3,3,1,37.40,NULL),(4,4,1,37.90,NULL),(5,5,1,38.00,NULL),(6,6,1,37.70,NULL),(7,7,1,38.20,NULL),(8,8,1,38.10,NULL),(9,9,1,37.90,NULL),(10,10,1,37.50,NULL),(11,11,1,38.30,NULL),(12,12,1,37.60,NULL),(13,13,1,38.00,NULL),(14,14,1,37.80,NULL),(15,15,1,37.70,NULL),(16,16,1,37.60,NULL),(17,17,1,38.10,NULL),(18,18,1,38.00,NULL),(19,19,1,38.40,NULL),(20,20,1,37.80,NULL),(21,21,1,38.20,NULL),(22,22,1,37.90,NULL),(23,23,1,37.70,NULL),(24,24,1,38.30,NULL),(25,25,1,37.60,NULL),(26,26,1,38.50,NULL),(27,27,1,38.20,NULL),(28,28,1,37.70,NULL),(29,29,1,38.00,NULL),(30,30,1,37.90,NULL),(31,31,1,37.60,NULL),(32,32,1,38.40,NULL),(33,33,1,37.80,NULL),(34,34,1,38.10,NULL),(35,35,1,37.90,NULL),(36,36,1,37.60,NULL),(37,37,1,38.00,NULL),(38,38,1,37.80,NULL),(39,39,1,37.70,NULL),(40,40,1,38.60,NULL),(41,41,1,38.30,NULL),(42,42,1,37.70,NULL);
/*!40000 ALTER TABLE `health_observations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otter_measurements`
--

DROP TABLE IF EXISTS `otter_measurements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otter_measurements` (
  `measurement_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `otter_id` int NOT NULL,
  `measured_at` datetime NOT NULL,
  `gender_id` tinyint unsigned NOT NULL,
  `fur_density_id` tinyint unsigned NOT NULL,
  `tail_length_cm` decimal(5,1) NOT NULL,
  `weight_kg` decimal(5,1) NOT NULL,
  PRIMARY KEY (`measurement_id`),
  UNIQUE KEY `uq_measurement_time` (`otter_id`,`measured_at`),
  KEY `fk_measurements_gender` (`gender_id`),
  KEY `fk_measurements_fur_density` (`fur_density_id`),
  CONSTRAINT `fk_measurements_cohort` FOREIGN KEY (`otter_id`) REFERENCES `cohort` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_measurements_fur_density` FOREIGN KEY (`fur_density_id`) REFERENCES `dim_fur_density` (`fur_density_id`),
  CONSTRAINT `fk_measurements_gender` FOREIGN KEY (`gender_id`) REFERENCES `dim_gender` (`gender_id`),
  CONSTRAINT `chk_tail_length` CHECK ((`tail_length_cm` between 15.0 and 60.0)),
  CONSTRAINT `chk_weight` CHECK ((`weight_kg` between 3.0 and 25.0))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otter_measurements`
--

LOCK TABLES `otter_measurements` WRITE;
/*!40000 ALTER TABLE `otter_measurements` DISABLE KEYS */;
INSERT INTO `otter_measurements` VALUES (1,1,'2025-01-01 09:00:00',1,3,34.0,11.8),(2,2,'2025-01-01 09:00:00',2,2,32.5,10.6),(3,3,'2025-01-01 09:00:00',2,3,33.0,11.2),(4,4,'2025-01-01 09:00:00',2,3,35.0,12.4),(5,5,'2025-01-01 09:00:00',1,2,27.0,8.1),(6,6,'2025-01-01 09:00:00',2,3,36.0,12.9),(7,7,'2025-01-01 09:00:00',1,3,37.5,13.6),(8,8,'2025-01-01 09:00:00',2,2,33.5,11.1),(9,9,'2025-01-01 09:00:00',2,2,26.5,7.9),(10,10,'2025-01-01 09:00:00',1,3,35.5,12.7),(11,11,'2025-01-01 09:00:00',2,2,34.0,11.4),(12,12,'2025-01-01 09:00:00',2,1,28.0,8.3),(13,13,'2025-01-01 09:00:00',1,3,38.0,14.2),(14,14,'2025-01-01 09:00:00',2,2,33.0,11.0),(15,15,'2025-01-01 09:00:00',1,1,26.0,7.6),(16,16,'2025-01-01 09:00:00',2,3,36.5,13.1),(17,17,'2025-01-01 09:00:00',1,3,37.0,13.4),(18,18,'2025-01-01 09:00:00',2,2,32.0,10.8),(19,19,'2025-01-01 09:00:00',1,3,36.0,12.9),(20,20,'2025-01-01 09:00:00',2,2,33.5,11.3),(21,21,'2025-01-01 09:00:00',1,1,27.5,8.2),(22,22,'2025-01-01 09:00:00',2,3,35.0,12.5),(23,23,'2025-01-01 09:00:00',1,3,38.5,14.5),(24,24,'2025-01-01 09:00:00',2,2,33.0,11.1),(25,25,'2025-01-01 09:00:00',1,1,26.8,7.8),(26,26,'2025-01-01 09:00:00',2,3,34.5,12.0),(27,27,'2025-01-01 09:00:00',1,1,27.2,8.0),(28,28,'2025-01-01 09:00:00',2,3,36.0,13.0),(29,29,'2025-01-01 09:00:00',1,3,39.0,14.8),(30,30,'2025-01-01 09:00:00',2,2,33.5,11.2);
/*!40000 ALTER TABLE `otter_measurements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otter_preferences_history`
--

DROP TABLE IF EXISTS `otter_preferences_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otter_preferences_history` (
  `pref_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `otter_id` int NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date DEFAULT NULL,
  `activity_id` tinyint unsigned NOT NULL,
  `diet_id` tinyint unsigned NOT NULL,
  `friendliness_id` tinyint unsigned NOT NULL,
  `cleanliness_id` tinyint unsigned NOT NULL,
  `dutifulness` tinyint NOT NULL,
  `sleep_time` tinyint NOT NULL,
  PRIMARY KEY (`pref_id`),
  KEY `fk_prefs_cohort` (`otter_id`),
  KEY `fk_prefs_activity` (`activity_id`),
  KEY `fk_prefs_diet` (`diet_id`),
  KEY `fk_prefs_friendliness` (`friendliness_id`),
  KEY `fk_prefs_cleanliness` (`cleanliness_id`),
  CONSTRAINT `fk_prefs_activity` FOREIGN KEY (`activity_id`) REFERENCES `dim_activity` (`activity_id`),
  CONSTRAINT `fk_prefs_cleanliness` FOREIGN KEY (`cleanliness_id`) REFERENCES `dim_cleanliness` (`cleanliness_id`),
  CONSTRAINT `fk_prefs_cohort` FOREIGN KEY (`otter_id`) REFERENCES `cohort` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_prefs_diet` FOREIGN KEY (`diet_id`) REFERENCES `dim_diet` (`diet_id`),
  CONSTRAINT `fk_prefs_friendliness` FOREIGN KEY (`friendliness_id`) REFERENCES `dim_friendliness` (`friendliness_id`),
  CONSTRAINT `chk_prefs_dutifulness` CHECK ((`dutifulness` between 1 and 5)),
  CONSTRAINT `chk_prefs_sleep_time` CHECK ((`sleep_time` between 6 and 12)),
  CONSTRAINT `chk_prefs_validity` CHECK (((`valid_to` is null) or (`valid_to` > `valid_from`)))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otter_preferences_history`
--

LOCK TABLES `otter_preferences_history` WRITE;
/*!40000 ALTER TABLE `otter_preferences_history` DISABLE KEYS */;
INSERT INTO `otter_preferences_history` VALUES (1,1,'2025-01-01',NULL,4,1,2,1,4,8),(2,6,'2025-01-01',NULL,4,1,2,1,4,8),(3,10,'2025-01-01',NULL,4,1,2,1,4,8),(4,14,'2025-01-01',NULL,4,1,2,1,4,8),(5,18,'2025-01-01',NULL,4,1,2,1,4,8),(6,26,'2025-01-01',NULL,4,1,2,1,4,8),(7,19,'2025-01-01',NULL,2,1,1,3,5,6),(8,4,'2025-01-01',NULL,3,2,3,1,2,11),(9,16,'2025-01-01',NULL,3,2,3,1,2,11),(10,28,'2025-01-01',NULL,3,2,3,1,2,11),(11,9,'2025-01-01',NULL,1,2,2,2,1,12),(12,21,'2025-01-01',NULL,1,2,3,2,1,12),(13,25,'2025-01-01',NULL,1,2,2,2,1,12),(14,11,'2025-01-01',NULL,3,3,3,1,2,10),(15,22,'2025-01-01',NULL,3,3,3,1,2,10),(16,3,'2025-01-01',NULL,2,3,2,1,5,8),(17,5,'2025-01-01',NULL,1,3,3,2,1,12),(18,15,'2025-01-01',NULL,1,3,2,2,1,12),(19,27,'2025-01-01',NULL,1,3,3,2,1,12),(20,23,'2025-01-01',NULL,4,4,2,2,4,7),(21,7,'2025-01-01',NULL,2,4,1,2,5,7),(22,13,'2025-01-01',NULL,2,4,1,2,5,7),(23,17,'2025-01-01',NULL,2,4,2,2,5,7),(24,29,'2025-01-01',NULL,2,4,1,2,5,6),(25,8,'2025-01-01',NULL,3,5,3,1,2,10),(26,20,'2025-01-01',NULL,3,5,3,1,2,10),(27,30,'2025-01-01',NULL,3,5,3,1,2,10),(28,2,'2025-01-01',NULL,1,5,3,2,2,10),(29,12,'2025-01-01',NULL,1,5,3,2,1,12),(30,24,'2025-01-01',NULL,1,5,3,1,2,10);
/*!40000 ALTER TABLE `otter_preferences_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otter_relationships`
--

DROP TABLE IF EXISTS `otter_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otter_relationships` (
  `otter_id_a` int NOT NULL,
  `otter_id_b` int NOT NULL,
  `relationship_type_id` tinyint unsigned NOT NULL,
  `since_date` date NOT NULL,
  `strength` tinyint NOT NULL,
  PRIMARY KEY (`otter_id_a`,`otter_id_b`,`relationship_type_id`),
  KEY `fk_rel_b` (`otter_id_b`),
  KEY `fk_rel_type` (`relationship_type_id`),
  CONSTRAINT `fk_rel_a` FOREIGN KEY (`otter_id_a`) REFERENCES `cohort` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_rel_b` FOREIGN KEY (`otter_id_b`) REFERENCES `cohort` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_rel_type` FOREIGN KEY (`relationship_type_id`) REFERENCES `dim_relationship_type` (`relationship_type_id`),
  CONSTRAINT `chk_rel_order` CHECK ((`otter_id_a` < `otter_id_b`)),
  CONSTRAINT `chk_rel_strength` CHECK ((`strength` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otter_relationships`
--

LOCK TABLES `otter_relationships` WRITE;
/*!40000 ALTER TABLE `otter_relationships` DISABLE KEYS */;
INSERT INTO `otter_relationships` VALUES (1,2,1,'2023-06-01',4),(3,7,4,'2022-09-15',5),(4,8,3,'2021-03-10',4),(13,19,2,'2024-01-20',3),(22,30,1,'2023-11-05',5);
/*!40000 ALTER TABLE `otter_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences_legacy`
--

DROP TABLE IF EXISTS `preferences_legacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferences_legacy` (
  `otter_id` int NOT NULL,
  `activity` enum('play','construction','dawdle','commerce') NOT NULL,
  `diet` enum('strict carnivore','lax herbivore','voracious omnivore','proven patrivore','somewhat vegan') NOT NULL,
  `friendliness` enum('low','expected','high') NOT NULL,
  `cleanliness` enum('thorough','average','neglected') NOT NULL,
  `dutifulness` tinyint NOT NULL,
  `sleep_time` tinyint NOT NULL,
  PRIMARY KEY (`otter_id`),
  CONSTRAINT `fk_preferences_cohort` FOREIGN KEY (`otter_id`) REFERENCES `cohort_legacy` (`otter_id`) ON DELETE CASCADE,
  CONSTRAINT `chk_preferences_dutifulness` CHECK ((`dutifulness` between 1 and 5)),
  CONSTRAINT `chk_preferences_sleep_time` CHECK ((`sleep_time` between 6 and 12))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences_legacy`
--

LOCK TABLES `preferences_legacy` WRITE;
/*!40000 ALTER TABLE `preferences_legacy` DISABLE KEYS */;
INSERT INTO `preferences_legacy` VALUES (1,'commerce','strict carnivore','expected','thorough',4,8),(2,'play','somewhat vegan','high','average',2,10),(3,'construction','voracious omnivore','expected','thorough',5,8),(4,'dawdle','lax herbivore','high','thorough',2,11),(5,'play','voracious omnivore','high','average',1,12),(6,'commerce','strict carnivore','expected','thorough',4,8),(7,'construction','proven patrivore','low','average',5,7),(8,'dawdle','somewhat vegan','high','thorough',2,10),(9,'play','lax herbivore','expected','average',1,12),(10,'commerce','strict carnivore','expected','thorough',4,8),(11,'dawdle','voracious omnivore','high','thorough',2,10),(12,'play','somewhat vegan','high','average',1,12),(13,'construction','proven patrivore','low','average',5,7),(14,'commerce','strict carnivore','expected','thorough',4,8),(15,'play','voracious omnivore','expected','average',1,12),(16,'dawdle','lax herbivore','high','thorough',2,11),(17,'construction','proven patrivore','expected','average',5,7),(18,'commerce','strict carnivore','expected','thorough',4,8),(19,'construction','strict carnivore','low','neglected',5,6),(20,'dawdle','somewhat vegan','high','thorough',2,10),(21,'play','lax herbivore','high','average',1,12),(22,'dawdle','voracious omnivore','high','thorough',2,10),(23,'commerce','proven patrivore','expected','average',4,7),(24,'play','somewhat vegan','high','thorough',2,10),(25,'play','lax herbivore','expected','average',1,12),(26,'commerce','strict carnivore','expected','thorough',4,8),(27,'play','voracious omnivore','high','average',1,12),(28,'dawdle','lax herbivore','high','thorough',2,11),(29,'construction','proven patrivore','low','average',5,6),(30,'dawdle','somewhat vegan','high','thorough',2,10);
/*!40000 ALTER TABLE `preferences_legacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties_legacy`
--

DROP TABLE IF EXISTS `properties_legacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties_legacy` (
  `otter_id` int NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `fur_density` enum('low','medium','high') NOT NULL,
  `tail_length` decimal(4,1) NOT NULL,
  `weight` decimal(4,1) NOT NULL,
  `bmi` decimal(4,1) NOT NULL,
  PRIMARY KEY (`otter_id`),
  CONSTRAINT `fk_properties_cohort` FOREIGN KEY (`otter_id`) REFERENCES `cohort_legacy` (`otter_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_legacy`
--

LOCK TABLES `properties_legacy` WRITE;
/*!40000 ALTER TABLE `properties_legacy` DISABLE KEYS */;
INSERT INTO `properties_legacy` VALUES (1,'male','high',34.0,11.8,27.2),(2,'female','medium',32.5,10.6,25.9),(3,'female','high',33.0,11.2,26.5),(4,'female','high',35.0,12.4,28.1),(5,'male','medium',27.0,8.1,22.3),(6,'female','high',36.0,12.9,28.7),(7,'male','high',37.5,13.6,29.4),(8,'female','medium',33.5,11.1,26.3),(9,'female','medium',26.5,7.9,22.0),(10,'male','high',35.5,12.7,28.3),(11,'female','medium',34.0,11.4,26.8),(12,'female','low',28.0,8.3,22.6),(13,'male','high',38.0,14.2,30.1),(14,'female','medium',33.0,11.0,26.1),(15,'male','low',26.0,7.6,21.7),(16,'female','high',36.5,13.1,29.0),(17,'male','high',37.0,13.4,29.2),(18,'female','medium',32.0,10.8,25.6),(19,'male','high',36.0,12.9,28.6),(20,'female','medium',33.5,11.3,26.6),(21,'male','low',27.5,8.2,22.4),(22,'female','high',35.0,12.5,28.2),(23,'male','high',38.5,14.5,30.6),(24,'female','medium',33.0,11.1,26.2),(25,'male','low',26.8,7.8,21.9),(26,'female','high',34.5,12.0,27.6),(27,'male','low',27.2,8.0,22.1),(28,'female','high',36.0,13.0,28.9),(29,'male','high',39.0,14.8,31.0),(30,'female','medium',33.5,11.2,26.4);
/*!40000 ALTER TABLE `properties_legacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(120) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (3,'Analyst'),(1,'Builder'),(4,'Generalist'),(2,'Trader');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_otter_bmi`
--

DROP TABLE IF EXISTS `v_otter_bmi`;
/*!50001 DROP VIEW IF EXISTS `v_otter_bmi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_otter_bmi` AS SELECT 
 1 AS `otter_id`,
 1 AS `measured_at`,
 1 AS `weight_kg`,
 1 AS `tail_length_cm`,
 1 AS `bmi`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_otter_current_employment`
--

DROP TABLE IF EXISTS `v_otter_current_employment`;
/*!50001 DROP VIEW IF EXISTS `v_otter_current_employment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_otter_current_employment` AS SELECT 
 1 AS `otter_id`,
 1 AS `contract_id`,
 1 AS `employer_name`,
 1 AS `role_name`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `hours_per_week`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_otter_current_measurements`
--

DROP TABLE IF EXISTS `v_otter_current_measurements`;
/*!50001 DROP VIEW IF EXISTS `v_otter_current_measurements`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_otter_current_measurements` AS SELECT 
 1 AS `measurement_id`,
 1 AS `otter_id`,
 1 AS `measured_at`,
 1 AS `gender_id`,
 1 AS `fur_density_id`,
 1 AS `tail_length_cm`,
 1 AS `weight_kg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_otter_current_preferences`
--

DROP TABLE IF EXISTS `v_otter_current_preferences`;
/*!50001 DROP VIEW IF EXISTS `v_otter_current_preferences`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_otter_current_preferences` AS SELECT 
 1 AS `pref_id`,
 1 AS `otter_id`,
 1 AS `valid_from`,
 1 AS `valid_to`,
 1 AS `activity_id`,
 1 AS `diet_id`,
 1 AS `friendliness_id`,
 1 AS `cleanliness_id`,
 1 AS `dutifulness`,
 1 AS `sleep_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_otter_latest_health`
--

DROP TABLE IF EXISTS `v_otter_latest_health`;
/*!50001 DROP VIEW IF EXISTS `v_otter_latest_health`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_otter_latest_health` AS SELECT 
 1 AS `otter_id`,
 1 AS `check_date`,
 1 AS `vet_name`,
 1 AS `outcome`,
 1 AS `notes`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_otter_bmi`
--

/*!50001 DROP VIEW IF EXISTS `v_otter_bmi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_otter_bmi` AS select `m`.`otter_id` AS `otter_id`,`m`.`measured_at` AS `measured_at`,`m`.`weight_kg` AS `weight_kg`,`m`.`tail_length_cm` AS `tail_length_cm`,round((`m`.`weight_kg` / pow((`m`.`tail_length_cm` / 100.0),2)),1) AS `bmi` from `v_otter_current_measurements` `m` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_otter_current_employment`
--

/*!50001 DROP VIEW IF EXISTS `v_otter_current_employment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_otter_current_employment` AS select `ec`.`otter_id` AS `otter_id`,`ec`.`contract_id` AS `contract_id`,`em`.`employer_name` AS `employer_name`,`r`.`role_name` AS `role_name`,`ec`.`start_date` AS `start_date`,`ec`.`end_date` AS `end_date`,`ec`.`hours_per_week` AS `hours_per_week` from ((`employment_contracts` `ec` join `employers` `em` on((`em`.`employer_id` = `ec`.`employer_id`))) join `roles` `r` on((`r`.`role_id` = `ec`.`role_id`))) where (`ec`.`end_date` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_otter_current_measurements`
--

/*!50001 DROP VIEW IF EXISTS `v_otter_current_measurements`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_otter_current_measurements` AS select `m`.`measurement_id` AS `measurement_id`,`m`.`otter_id` AS `otter_id`,`m`.`measured_at` AS `measured_at`,`m`.`gender_id` AS `gender_id`,`m`.`fur_density_id` AS `fur_density_id`,`m`.`tail_length_cm` AS `tail_length_cm`,`m`.`weight_kg` AS `weight_kg` from (`otter_measurements` `m` join (select `otter_measurements`.`otter_id` AS `otter_id`,max(`otter_measurements`.`measured_at`) AS `max_measured_at` from `otter_measurements` group by `otter_measurements`.`otter_id`) `x` on(((`x`.`otter_id` = `m`.`otter_id`) and (`x`.`max_measured_at` = `m`.`measured_at`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_otter_current_preferences`
--

/*!50001 DROP VIEW IF EXISTS `v_otter_current_preferences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_otter_current_preferences` AS select `p`.`pref_id` AS `pref_id`,`p`.`otter_id` AS `otter_id`,`p`.`valid_from` AS `valid_from`,`p`.`valid_to` AS `valid_to`,`p`.`activity_id` AS `activity_id`,`p`.`diet_id` AS `diet_id`,`p`.`friendliness_id` AS `friendliness_id`,`p`.`cleanliness_id` AS `cleanliness_id`,`p`.`dutifulness` AS `dutifulness`,`p`.`sleep_time` AS `sleep_time` from `otter_preferences_history` `p` where (`p`.`valid_to` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_otter_latest_health`
--

/*!50001 DROP VIEW IF EXISTS `v_otter_latest_health`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_otter_latest_health` AS select `hc`.`otter_id` AS `otter_id`,`hc`.`check_date` AS `check_date`,`hc`.`vet_name` AS `vet_name`,`hc`.`outcome` AS `outcome`,`hc`.`notes` AS `notes` from (`health_checks` `hc` join (select `health_checks`.`otter_id` AS `otter_id`,max(`health_checks`.`check_date`) AS `max_check_date` from `health_checks` group by `health_checks`.`otter_id`) `x` on(((`x`.`otter_id` = `hc`.`otter_id`) and (`x`.`max_check_date` = `hc`.`check_date`)))) */;
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

-- Dump completed on 2026-01-30 14:28:37
