-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: panda_app
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `ACT_ID` int NOT NULL,
  `ACT_DESCRIPTION` varchar(255) DEFAULT NULL,
  `ACT_LAST_UPDATE` varchar(255) DEFAULT NULL,
  `ACT_NUMBER` int DEFAULT NULL,
  `ACT_MISSION_ID` int DEFAULT NULL,
  `ACT_UNIT_ID` int DEFAULT NULL,
  PRIMARY KEY (`ACT_ID`),
  KEY `FKalbd8ogs0uqpvryc3t9oimvpw` (`ACT_MISSION_ID`),
  KEY `FKrgpsvtclgy0gy83iletnatqb3` (`ACT_UNIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `CLRO_ID` int NOT NULL,
  `CLRO_DESCRIPTION` varchar(255) DEFAULT NULL,
  `CLRO_GRADE` int DEFAULT NULL,
  `CLRO_LAST_UPDATE` datetime DEFAULT NULL,
  `CLRO_ROOM` int DEFAULT NULL,
  `CLRO_INST_ID` int DEFAULT NULL,
  `CLRO_STUDENT_ID` int DEFAULT NULL,
  `CLRO_TEACHER_ID` int DEFAULT NULL,
  PRIMARY KEY (`CLRO_ID`),
  KEY `FKaui0388gfntjkowslam754umf` (`CLRO_INST_ID`),
  KEY `FKcdds7nwx9e3tjwxurd0v88b82` (`CLRO_STUDENT_ID`),
  KEY `FKfslhbak88pg0p712mah2p69ar` (`CLRO_TEACHER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `EVA_ID` int NOT NULL,
  `EVA_DESCRIPTION` varchar(255) DEFAULT NULL,
  `EVA_LAST_UPDATE` varchar(255) DEFAULT NULL,
  `EVA_NUMBER` int DEFAULT NULL,
  `EVA_UNIT_ID` int DEFAULT NULL,
  PRIMARY KEY (`EVA_ID`),
  KEY `FKiqk8c24sng0psnimt49mvfwrg` (`EVA_UNIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excercise`
--

DROP TABLE IF EXISTS `excercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excercise` (
  `EXC_ID` int NOT NULL,
  `EXC_DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXC_LAST_UPDATE` varchar(255) DEFAULT NULL,
  `EXC_NUMBER` int DEFAULT NULL,
  `EXC_ACTIVITY_ID` int DEFAULT NULL,
  `EXC_UNIT_ID` int DEFAULT NULL,
  PRIMARY KEY (`EXC_ID`),
  KEY `FKfm4jha2oftuohqo25rnefl4q` (`EXC_ACTIVITY_ID`),
  KEY `FKkmlndffaqktr7pt4ebbo9srlf` (`EXC_UNIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excercise`
--

LOCK TABLES `excercise` WRITE;
/*!40000 ALTER TABLE `excercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `excercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (35);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution` (
  `INST_ID` int NOT NULL,
  `INST_LAST_UPDATE` datetime(6) DEFAULT NULL,
  `INST_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`INST_ID`),
  UNIQUE KEY `UK_h3vujha234nqmisl5ba9taew0` (`INST_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution`
--

LOCK TABLES `institution` WRITE;
/*!40000 ALTER TABLE `institution` DISABLE KEYS */;
INSERT INTO `institution` VALUES (14,'2021-04-27 04:04:58.472000','Institución educativa uno');
/*!40000 ALTER TABLE `institution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institution_licence`
--

DROP TABLE IF EXISTS `institution_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution_licence` (
  `INLI_ID` int NOT NULL,
  `INLI_END_DATE` datetime DEFAULT NULL,
  `INLI_INI_DATE` datetime DEFAULT NULL,
  `INLI_LAST_UPDATE` datetime DEFAULT NULL,
  `INLI_INST_ID` int DEFAULT NULL,
  `INLI_LIC_ID` int DEFAULT NULL,
  PRIMARY KEY (`INLI_ID`),
  KEY `FK2gailsg8dsq9q57tsyp6s5nmx` (`INLI_INST_ID`),
  KEY `LIC_ID` (`INLI_LIC_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institution_licence`
--

LOCK TABLES `institution_licence` WRITE;
/*!40000 ALTER TABLE `institution_licence` DISABLE KEYS */;
/*!40000 ALTER TABLE `institution_licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licence`
--

DROP TABLE IF EXISTS `licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licence` (
  `LIC_ID` int NOT NULL,
  `LIC_DESCRIPTION` varchar(255) DEFAULT NULL,
  `LIC_DURATION` int DEFAULT NULL,
  `LIC_LAST_UPDATE` datetime(6) DEFAULT NULL,
  `LIC_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LIC_ID`),
  UNIQUE KEY `UK_dml9bd4dm1lce7dljpx57hojg` (`LIC_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licence`
--

LOCK TABLES `licence` WRITE;
/*!40000 ALTER TABLE `licence` DISABLE KEYS */;
INSERT INTO `licence` VALUES (15,'Licencia mensual',30,'2021-04-27 04:39:16.488000','mensual');
/*!40000 ALTER TABLE `licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_trace`
--

DROP TABLE IF EXISTS `login_trace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_trace` (
  `LGTR_ID` int NOT NULL,
  `LGTR_LOGIN_DATETIME` datetime DEFAULT NULL,
  `LGTR_LOGOUT_DATETIME` datetime DEFAULT NULL,
  `LGTR_LOGIN_ORIGIN` varchar(255) DEFAULT NULL,
  `LGTR_USER_ID` int DEFAULT NULL,
  PRIMARY KEY (`LGTR_ID`),
  KEY `FKku4lkp4taumifaa75nerf5k28` (`LGTR_USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_trace`
--

LOCK TABLES `login_trace` WRITE;
/*!40000 ALTER TABLE `login_trace` DISABLE KEYS */;
/*!40000 ALTER TABLE `login_trace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mission` (
  `MIS_ID` int NOT NULL,
  `MIS_DESCRIPTION` varchar(255) DEFAULT NULL,
  `MIS_LAST_UPDATE` varchar(255) DEFAULT NULL,
  `MIS_NUMBER` int DEFAULT NULL,
  `MIS_UNIT_ID` int DEFAULT NULL,
  PRIMARY KEY (`MIS_ID`),
  KEY `FKfr35opbg2w9fv8vmtv5i7llpf` (`MIS_UNIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place` (
  `PLA_ID` int NOT NULL,
  `PLA_DESCRIPTION` varchar(255) DEFAULT NULL,
  `PLA_LAST_UPDATE` datetime(6) DEFAULT NULL,
  `PLA_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PLA_ID`),
  UNIQUE KEY `UK_r0u0x27s825kci0v63ahb4h0d` (`PLA_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (21,'Lugar para ahorrar','2021-04-27 12:21:53.098000','Banco');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_interaction`
--

DROP TABLE IF EXISTS `place_interaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_interaction` (
  `PLIT_ID` int NOT NULL,
  `PLIT_LAST_UPDATE` datetime DEFAULT NULL,
  `PLIT_TIME` int DEFAULT NULL,
  `PLIT_PLA_ID` int DEFAULT NULL,
  `PLIT_STUDENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`PLIT_ID`),
  KEY `FK3nlkpbabnn6bbujnxbtyesxyj` (`PLIT_PLA_ID`),
  KEY `FKpmc1smm2804tejj2lxa4kxmok` (`PLIT_STUDENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_interaction`
--

LOCK TABLES `place_interaction` WRITE;
/*!40000 ALTER TABLE `place_interaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `place_interaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `ROL_ID` int NOT NULL,
  `ROL_DESCRIPTION` varchar(255) NOT NULL,
  `ROL_IS_ACTIVE` bit(1) DEFAULT NULL,
  `ROL_LAST_UPDATE` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ROL_ID`),
  UNIQUE KEY `UK_25u7qsiu81xoesw8rin25wtea` (`ROL_DESCRIPTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_activity`
--

DROP TABLE IF EXISTS `student_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_activity` (
  `STAC_ID` int NOT NULL,
  `STAC_ERRORS_NUMBER` int DEFAULT NULL,
  `STAC_LAST_UPDATE` datetime DEFAULT NULL,
  `STAC_SCORE` int DEFAULT NULL,
  `STAC_TIME` int DEFAULT NULL,
  `STAC_ACTIVITY_ID` int DEFAULT NULL,
  `STAC_STUDENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`STAC_ID`),
  KEY `FK35ppputvvbpv22ve066x1s8b6` (`STAC_ACTIVITY_ID`),
  KEY `FK46sfclku7pp88ow4cvyj6m2m3` (`STAC_STUDENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_activity`
--

LOCK TABLES `student_activity` WRITE;
/*!40000 ALTER TABLE `student_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_evaluation`
--

DROP TABLE IF EXISTS `student_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_evaluation` (
  `STEV_ID` int NOT NULL,
  `STEV_ERRORS_NUMBER` int DEFAULT NULL,
  `STEV_LAST_UPDATE` datetime DEFAULT NULL,
  `STEV_SCORE` int DEFAULT NULL,
  `STEV_TIME` int DEFAULT NULL,
  `STEV_EVALUATION_ID` int DEFAULT NULL,
  `STEV_STUDENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`STEV_ID`),
  KEY `FK600wtv8tcnyi11ph6q34oxmvd` (`STEV_EVALUATION_ID`),
  KEY `FKt0pf19mot1w301la17q3jt780` (`STEV_STUDENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_evaluation`
--

LOCK TABLES `student_evaluation` WRITE;
/*!40000 ALTER TABLE `student_evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_excercise`
--

DROP TABLE IF EXISTS `student_excercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_excercise` (
  `STEX_ID` int NOT NULL,
  `STEX_ERRORS_NUMBER` int DEFAULT NULL,
  `STEX_LAST_UPDATE` datetime DEFAULT NULL,
  `STEX_SCORE` int DEFAULT NULL,
  `STEX_TIME` int DEFAULT NULL,
  `STEX_ACTIVITY_ID` int DEFAULT NULL,
  `STEX_STUDENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`STEX_ID`),
  KEY `FKoxoci5g57jx0psjciiqmvoice` (`STEX_ACTIVITY_ID`),
  KEY `FKc5v1m8aqsy9rq79odl6baxaxa` (`STEX_STUDENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_excercise`
--

LOCK TABLES `student_excercise` WRITE;
/*!40000 ALTER TABLE `student_excercise` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_excercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_game_status`
--

DROP TABLE IF EXISTS `student_game_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_game_status` (
  `STGMST_ID` int NOT NULL,
  `STGMST_COIN` int DEFAULT NULL,
  `STGMST_HEALTH` int DEFAULT NULL,
  `STGMST_LAST_UPDATE` datetime DEFAULT NULL,
  `STGMST_STUDENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`STGMST_ID`),
  KEY `FKowpykqeam9f1oy80bj0m9p5t` (`STGMST_STUDENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_game_status`
--

LOCK TABLES `student_game_status` WRITE;
/*!40000 ALTER TABLE `student_game_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_game_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mission`
--

DROP TABLE IF EXISTS `student_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_mission` (
  `STMI_ID` int NOT NULL,
  `STMI_ERRORS_NUMBER` int DEFAULT NULL,
  `STMI_LAST_UPDATE` datetime DEFAULT NULL,
  `STMI_SCORE` int DEFAULT NULL,
  `STMI_TIME` int DEFAULT NULL,
  `STMI_MISSION_ID` int DEFAULT NULL,
  `STMI_STUDENT_ID` int DEFAULT NULL,
  PRIMARY KEY (`STMI_ID`),
  KEY `FK6d89m0m1mktbcgxhiki1kggc0` (`STMI_MISSION_ID`),
  KEY `FKrr534urpsl3g69hnrlri4grqw` (`STMI_STUDENT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mission`
--

LOCK TABLES `student_mission` WRITE;
/*!40000 ALTER TABLE `student_mission` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_unit`
--

DROP TABLE IF EXISTS `student_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_unit` (
  `STUN_ID` int NOT NULL,
  `STUN_LAST_UPDATE` datetime DEFAULT NULL,
  `STUN_STUDENT_ID` int DEFAULT NULL,
  `STUN_UNIT_ID` int DEFAULT NULL,
  PRIMARY KEY (`STUN_ID`),
  KEY `FKcgsybgc8qhkdsgnmkas37t9id` (`STUN_STUDENT_ID`),
  KEY `FKass47d049ha96v7eg9giqobsy` (`STUN_UNIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_unit`
--

LOCK TABLES `student_unit` WRITE;
/*!40000 ALTER TABLE `student_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unit` (
  `UNI_ID` int NOT NULL,
  `UNI_DESCRIPTION` varchar(255) DEFAULT NULL,
  `UNI_LAST_UPDATE` datetime(6) DEFAULT NULL,
  `UNI_NUMBER` int DEFAULT NULL,
  PRIMARY KEY (`UNI_ID`),
  UNIQUE KEY `UK_h3xo6q4gpovd5wf52fyp3tkc5` (`UNI_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (31,'Unidad 2','2021-04-27 15:55:15.930000',3),(32,'Unidad uno','2021-04-27 15:55:42.199000',1),(33,'Unidad dos t','2021-04-27 15:55:59.195000',2),(34,'Unidad tres','2021-04-27 15:56:23.278000',4);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `USR_ID` int NOT NULL,
  `USR_AGE` int DEFAULT NULL,
  `USR_BIRTH` date DEFAULT NULL,
  `USR_COUNTRY` varchar(255) DEFAULT NULL,
  `USR_EMAIL` varchar(255) DEFAULT NULL,
  `USR_FULL_NAME` varchar(255) DEFAULT NULL,
  `USR_GENDER` varchar(255) DEFAULT NULL,
  `USR_IS_ACTIVE` bit(1) DEFAULT NULL,
  `USR_LAST_UPDATE` datetime DEFAULT NULL,
  `USR_PASSWORD` varchar(255) DEFAULT NULL,
  `USR_USER_NAME` varchar(255) NOT NULL,
  `USR_ROL_ID` int DEFAULT NULL,
  PRIMARY KEY (`USR_ID`),
  UNIQUE KEY `UK_ke3anecsnregaqfs9rku7ma9i` (`USR_ROL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-28  0:13:59
