-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: prueba_mineria
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
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` bigint NOT NULL,
  `course` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `intro` longtext,
  `introformat` smallint DEFAULT NULL,
  `timeopen` bigint DEFAULT NULL,
  `timeclose` bigint DEFAULT NULL,
  `timelimit` bigint DEFAULT NULL,
  `overduehandling` varchar(16) DEFAULT NULL,
  `graceperiod` bigint DEFAULT NULL,
  `preferredbehaviour` varchar(32) DEFAULT NULL,
  `canredoquestions` smallint DEFAULT NULL,
  `attempts` mediumint DEFAULT NULL,
  `attemptonlast` smallint DEFAULT NULL,
  `grademethod` smallint DEFAULT NULL,
  `decimalpoints` smallint DEFAULT NULL,
  `questiondecimalpoints` smallint DEFAULT NULL,
  `reviewattempt` mediumint DEFAULT NULL,
  `reviewcorrectness` mediumint DEFAULT NULL,
  `reviewmarks` mediumint DEFAULT NULL,
  `reviewspecificfeedback` mediumint DEFAULT NULL,
  `reviewgeneralfeedback` mediumint DEFAULT NULL,
  `reviewrightanswer` mediumint DEFAULT NULL,
  `reviewoverallfeedback` mediumint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_feedback`
--

DROP TABLE IF EXISTS `quiz_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quizid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizfb_idx` (`quizid`),
  CONSTRAINT `quizfb` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_feedback`
--

LOCK TABLES `quiz_feedback` WRITE;
/*!40000 ALTER TABLE `quiz_feedback` DISABLE KEYS */;
INSERT INTO `quiz_feedback` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `quiz_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_grades`
--

DROP TABLE IF EXISTS `quiz_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_grades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz` bigint DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizg_idx` (`quiz`),
  CONSTRAINT `quizg` FOREIGN KEY (`quiz`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_grades`
--

LOCK TABLES `quiz_grades` WRITE;
/*!40000 ALTER TABLE `quiz_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_overrides`
--

DROP TABLE IF EXISTS `quiz_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_overrides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz` bigint DEFAULT NULL,
  `groupid` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizgr_idx` (`quiz`),
  CONSTRAINT `quizgr` FOREIGN KEY (`quiz`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_overrides`
--

LOCK TABLES `quiz_overrides` WRITE;
/*!40000 ALTER TABLE `quiz_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_sections`
--

DROP TABLE IF EXISTS `quiz_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quizid` bigint DEFAULT NULL,
  `firstslot` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizs_idx` (`quizid`),
  CONSTRAINT `quizs` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_sections`
--

LOCK TABLES `quiz_sections` WRITE;
/*!40000 ALTER TABLE `quiz_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_slots`
--

DROP TABLE IF EXISTS `quiz_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_slots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slot` int DEFAULT NULL,
  `quizid` bigint DEFAULT NULL,
  `questionid` int DEFAULT NULL,
  `questioncategoryid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quizsl_idx` (`quizid`),
  CONSTRAINT `quizsl` FOREIGN KEY (`quizid`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_slots`
--

LOCK TABLES `quiz_slots` WRITE;
/*!40000 ALTER TABLE `quiz_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz_slots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-23 19:48:18
