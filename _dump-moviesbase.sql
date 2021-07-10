-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: moviesbase
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cast_and_crew`
--

DROP TABLE IF EXISTS `cast_and_crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_and_crew` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title_id` bigint unsigned DEFAULT NULL,
  `role_id` bigint unsigned DEFAULT NULL,
  `creator_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `title_id` (`title_id`),
  KEY `role_id` (`role_id`),
  KEY `creator_id` (`creator_id`),
  CONSTRAINT `cast_and_crew_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `cast_and_crew_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `cast_and_crew_ibfk_3` FOREIGN KEY (`creator_id`) REFERENCES `creators` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_and_crew`
--

LOCK TABLES `cast_and_crew` WRITE;
/*!40000 ALTER TABLE `cast_and_crew` DISABLE KEYS */;
INSERT INTO `cast_and_crew` VALUES (1,1,5,22),(2,2,5,19),(3,3,5,1),(4,4,5,12),(5,5,5,12),(6,6,5,10),(7,7,5,6),(8,8,5,17),(9,9,5,4),(10,10,5,19),(11,11,5,19),(12,12,5,12),(13,13,5,18),(14,14,5,16),(15,15,5,20),(16,16,5,25),(17,17,5,7),(18,18,5,5),(19,19,5,20),(20,20,5,8),(21,21,5,16),(22,22,5,4),(23,23,5,17),(24,24,5,15),(25,25,5,10),(26,26,5,14),(27,27,5,9),(28,28,5,25),(29,29,5,19),(30,30,5,20),(31,31,5,24),(32,32,5,25),(33,33,5,16),(34,34,5,18),(35,35,5,14),(36,36,5,16),(37,37,5,13),(38,38,5,5),(39,39,5,2),(40,40,5,21),(41,41,5,1),(42,42,5,5),(43,43,5,17),(44,44,5,10),(45,45,5,15),(46,46,5,15),(47,47,5,9),(48,48,5,22),(49,49,5,22),(50,50,5,22),(51,51,5,13),(52,52,5,16),(53,53,5,9),(54,54,5,24),(55,55,5,6),(56,56,5,23),(57,57,5,13),(58,58,5,9),(59,59,5,17),(60,60,5,21),(61,61,5,12),(62,62,5,21),(63,63,5,22),(64,64,5,20),(65,65,5,24),(66,66,5,10),(67,67,5,4),(68,68,5,19),(69,69,5,18),(70,70,5,18),(71,71,5,7),(72,72,5,5),(73,73,5,7),(74,74,5,6),(75,75,5,15),(76,76,5,5),(77,77,5,23),(78,78,5,13),(79,79,5,9),(80,80,5,25),(81,81,5,18),(82,82,5,21),(83,83,5,23),(84,84,5,23),(85,85,5,5),(86,86,5,23),(87,87,5,25),(88,88,5,10),(89,89,5,4),(90,90,5,5),(91,91,5,10),(92,92,5,22),(93,93,5,18),(94,94,5,17),(95,95,5,2),(96,96,5,20),(97,97,5,14),(98,98,5,5),(99,99,5,19),(100,100,5,4),(101,1,9,41),(102,2,9,27),(103,3,9,26),(104,4,9,25),(105,5,9,43),(106,6,9,39),(107,7,9,39),(108,8,9,40),(109,9,9,43),(110,10,9,23),(111,11,9,43),(112,12,9,35),(113,13,9,38),(114,14,9,28),(115,15,9,29),(116,16,9,26),(117,17,9,38),(118,18,9,34),(119,19,9,34),(120,20,9,34),(121,21,9,42),(122,22,9,41),(123,23,9,36),(124,24,9,22),(125,25,9,40),(126,26,9,30),(127,27,9,33),(128,28,9,32),(129,29,9,28),(130,30,9,29),(131,31,9,34),(132,32,9,40),(133,33,9,33),(134,34,9,34),(135,35,9,24),(136,36,9,26),(137,37,9,42),(138,38,9,44),(139,39,9,37),(140,40,9,26),(141,41,9,35),(142,42,9,39),(143,43,9,30),(144,44,9,42),(145,45,9,35),(146,46,9,31),(147,47,9,28),(148,48,9,22),(149,49,9,35),(150,50,9,43),(151,51,9,38),(152,52,9,34),(153,53,9,32),(154,54,9,26),(155,55,9,42),(156,56,9,36),(157,57,9,22),(158,58,9,20),(159,59,9,33),(160,60,9,31),(161,61,9,45),(162,62,9,33),(163,63,9,36),(164,64,9,45),(165,65,9,32),(166,66,9,31),(167,67,9,25),(168,68,9,23),(169,69,9,29),(170,70,9,43),(171,71,9,39),(172,72,9,21),(173,73,9,28),(174,74,9,27),(175,75,9,35),(176,76,9,20),(177,77,9,20),(178,78,9,29),(179,79,9,32),(180,80,9,27),(181,81,9,30),(182,82,9,31),(183,83,9,45),(184,84,9,33),(185,85,9,23),(186,86,9,25),(187,87,9,21),(188,88,9,22),(189,89,9,35),(190,90,9,40),(191,91,9,24),(192,92,9,34),(193,93,9,37),(194,94,9,28),(195,95,9,36),(196,96,9,35),(197,97,9,41),(198,98,9,38),(199,99,9,38),(200,100,9,28),(201,1,4,25),(202,2,17,25),(203,3,17,50),(204,4,17,34),(205,5,17,49),(206,6,17,33),(207,7,17,43),(208,8,17,32),(209,9,17,35),(210,10,17,28),(211,11,17,35),(212,12,17,40),(213,13,17,34),(214,14,17,29),(215,15,17,44),(216,16,17,42),(217,17,17,27),(218,18,17,39),(219,19,17,31),(220,20,17,41),(221,21,17,48),(222,22,17,23),(223,23,17,39),(224,24,17,45),(225,25,17,23),(226,26,17,32),(227,27,17,23),(228,28,17,48),(229,29,17,42),(230,30,17,34),(231,31,17,27),(232,32,17,44),(233,33,17,43),(234,34,17,42),(235,35,17,29),(236,36,17,35),(237,37,17,29),(238,38,17,37),(239,39,17,44),(240,40,17,45),(241,41,17,41),(242,42,17,36),(243,43,17,36),(244,44,17,23),(245,45,17,28),(246,46,17,23),(247,47,17,31),(248,48,17,25),(249,49,17,34),(250,50,17,25),(251,51,17,38),(252,52,17,31),(253,53,17,47),(254,54,17,45),(255,55,17,43),(256,56,17,35),(257,57,17,36),(258,58,17,41),(259,59,17,25),(260,60,17,25),(261,61,17,40),(262,62,17,40),(263,63,17,27),(264,64,17,23),(265,65,17,44),(266,66,17,33),(267,67,17,25),(268,68,17,32),(269,69,17,43),(270,70,17,32),(271,71,17,35),(272,72,17,38),(273,73,17,41),(274,74,17,26),(275,75,17,24),(276,76,17,29),(277,77,17,50),(278,78,17,44),(279,79,17,24),(280,80,17,23),(281,81,17,35),(282,82,17,30),(283,83,17,29),(284,84,17,41),(285,85,17,34),(286,86,17,31),(287,87,17,33),(288,88,17,34),(289,89,17,29),(290,90,17,38),(291,91,17,31),(292,92,17,41),(293,93,17,35),(294,94,17,38),(295,95,17,30),(296,96,17,43),(297,97,17,34),(298,98,17,34),(299,99,17,27),(300,100,17,37),(301,1,14,59),(302,2,14,46),(303,3,14,42),(304,4,14,97),(305,5,14,42),(306,6,14,87),(307,7,14,60),(308,8,14,87),(309,9,14,86),(310,10,14,81),(311,11,14,51),(312,12,14,71),(313,13,14,65),(314,14,14,43),(315,15,14,81),(316,16,14,98),(317,17,14,97),(318,18,14,42),(319,19,14,87),(320,20,14,83),(321,21,14,78),(322,22,14,44),(323,23,14,55),(324,24,14,66),(325,25,14,50),(326,26,14,79),(327,27,14,45),(328,28,14,74),(329,29,14,71),(330,30,14,73),(331,31,14,84),(332,32,14,53),(333,33,14,73),(334,34,14,80),(335,35,14,94),(336,36,14,81),(337,37,14,84),(338,38,14,50),(339,39,14,52),(340,40,14,88),(341,41,14,83),(342,42,14,58),(343,43,14,97),(344,44,14,61),(345,45,14,59),(346,46,14,75),(347,47,14,47),(348,48,14,93),(349,49,14,99),(350,50,14,87),(351,51,14,91),(352,52,14,43),(353,53,14,92),(354,54,14,100),(355,55,14,73),(356,56,14,95),(357,57,14,72),(358,58,14,48),(359,59,14,81),(360,60,14,76),(361,61,14,59),(362,62,14,50),(363,63,14,96),(364,64,14,59),(365,65,14,69),(366,66,14,66),(367,67,14,100),(368,68,14,68),(369,69,14,90),(370,70,14,55),(371,71,14,41),(372,72,14,61),(373,73,14,45),(374,74,14,42),(375,75,14,77),(376,76,14,97),(377,77,14,97),(378,78,14,90),(379,79,14,56),(380,80,14,99),(381,81,14,52),(382,82,14,66),(383,83,14,56),(384,84,14,52),(385,85,14,54),(386,86,14,95),(387,87,14,92),(388,88,14,84),(389,89,14,69),(390,90,14,50),(391,91,14,72),(392,92,14,84),(393,93,14,63),(394,94,14,51),(395,95,14,81),(396,96,14,46),(397,97,14,40),(398,98,14,88),(399,99,14,72),(400,100,14,94),(401,59,14,71),(402,2,14,48),(403,99,14,89),(404,89,14,100),(405,34,14,74),(406,63,14,90),(407,83,14,70),(408,22,14,54),(409,62,14,93),(410,12,14,72),(411,41,14,78),(412,97,14,88),(413,91,14,86),(414,14,14,97),(415,6,14,92),(416,82,14,65),(417,20,14,55),(418,29,14,46),(419,69,14,73),(420,14,14,93),(421,84,14,73),(422,23,14,85),(423,77,14,79),(424,7,14,96),(425,87,14,72),(426,38,14,48),(427,20,14,54),(428,99,14,85),(429,18,14,91),(430,14,14,52),(431,41,14,96),(432,41,14,42),(433,72,14,54),(434,59,14,41),(435,35,14,96),(436,18,14,64),(437,73,14,94),(438,11,14,71),(439,58,14,97),(440,80,14,62),(441,78,14,99),(442,29,14,87),(443,1,14,48),(444,9,14,44),(445,9,14,66),(446,8,14,65),(447,53,14,42),(448,83,14,48),(449,74,14,89),(450,84,14,70),(451,53,14,90),(452,35,14,87),(453,29,14,56),(454,24,14,98),(455,52,14,97),(456,71,14,50),(457,51,14,93),(458,22,14,67),(459,1,14,75),(460,62,14,76),(461,18,14,50),(462,30,14,80),(463,95,14,65),(464,28,14,65),(465,40,14,83),(466,15,14,89),(467,80,14,61),(468,88,14,40),(469,79,14,99),(470,26,14,88),(471,83,14,66),(472,93,14,79),(473,46,14,80),(474,27,14,66),(475,13,14,62),(476,44,14,66),(477,39,14,71),(478,20,14,82),(479,94,14,98),(480,83,14,85),(481,3,14,91),(482,80,14,50),(483,6,14,73),(484,63,14,82),(485,78,14,95),(486,82,14,40),(487,87,14,59),(488,24,14,90),(489,1,14,84),(490,14,14,74),(491,88,14,56),(492,96,14,46),(493,14,14,96),(494,85,14,87),(495,31,14,94),(496,59,14,74),(497,94,14,85),(498,11,14,47),(499,73,14,52),(500,9,14,97);
/*!40000 ALTER TABLE `cast_and_crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `company` (`company`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Beier Ltd'),(2,'Brekke, Gerhold and Purdy'),(3,'Cole, Renner and Swaniawski'),(4,'Cummerata-Jast'),(5,'Douglas and Sons'),(6,'Gibson, Adams and Miller'),(7,'Hilpert-Reinger'),(8,'Kertzmann-Hilll'),(9,'King LLC'),(10,'Kovacek and Sons'),(11,'Kunze PLC'),(12,'Lowe, Gerlach and Walker'),(13,'Marvin-Grady'),(14,'McGlynn Ltd'),(15,'Morar and Sons'),(16,'Murazik, Reilly and Kiehn'),(17,'O\'Reilly-Cassin'),(18,'Orn Group'),(19,'Padberg, Stamm and Okuneva'),(20,'Parker-Lang'),(21,'Renner, Paucek and Jaskolski'),(22,'Rice-Hessel'),(23,'Rolfson, Farrell and Greenfelder'),(24,'Sipes Group'),(25,'Stanton, Kulas and Conn'),(26,'Turcotte, Ruecker and Gusikowski'),(27,'Upton Inc'),(28,'Veum-Rippin'),(29,'Weimann, Jacobson and Pollich'),(30,'Wisoky-McClure');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `country` (`country`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Albania'),(3,'Algeria'),(4,'Andorra'),(5,'Angola'),(6,'Antigua and Barbuda'),(7,'Argentina'),(8,'Aruba'),(9,'Australia'),(10,'Austria'),(11,'Azerbaijan'),(12,'Bahamas'),(13,'Bahrain'),(14,'Bangladesh'),(15,'Barbados'),(16,'Belarus'),(17,'Belgium'),(18,'Belize'),(19,'Benin'),(20,'Bermuda'),(21,'Bhutan'),(22,'Bolivia'),(23,'Bosnia and Herzegovina'),(24,'Botswana'),(25,'Bouvet Island (Bouvetoya)'),(26,'Brazil'),(27,'British Virgin Islands'),(28,'Brunei Darussalam'),(29,'Bulgaria'),(30,'Burkina Faso'),(31,'Burundi'),(32,'Cambodia'),(33,'Canada'),(34,'Cayman Islands'),(35,'Chad'),(36,'Chile'),(37,'China'),(38,'Christmas Island'),(39,'Cocos (Keeling) Islands'),(40,'Colombia'),(41,'Comoros'),(42,'Congo'),(43,'Cook Islands'),(44,'Croatia'),(45,'Cuba'),(46,'Cyprus'),(47,'Czech Republic'),(99,'Democratic Republic'),(48,'Denmark'),(49,'Djibouti'),(50,'Dominica'),(51,'Dominican Republic'),(52,'Ecuador'),(53,'Egypt'),(54,'El Salvador'),(55,'Equatorial Guinea'),(56,'Eritrea'),(57,'Estonia'),(58,'Ethiopia'),(59,'Falkland Islands (Malvinas)'),(60,'Faroe Islands'),(61,'Fiji'),(62,'Finland'),(63,'France'),(64,'French Guiana'),(65,'French Polynesia'),(66,'French Southern Territories'),(67,'Gambia'),(68,'Georgia'),(69,'Germany'),(70,'Ghana'),(71,'Gibraltar'),(72,'Grenada'),(73,'Guadeloupe'),(74,'Guam'),(75,'Guatemala'),(76,'Guernsey'),(77,'Guinea'),(78,'Heard Island and McDonald Islands'),(80,'Honduras'),(81,'Hong Kong'),(82,'Hungary'),(83,'Iceland'),(84,'India'),(85,'Indonesia'),(86,'Iran'),(87,'Iraq'),(88,'Ireland'),(89,'Isle of Man'),(90,'Italy'),(91,'Jamaica'),(92,'Japan'),(93,'Jersey'),(94,'Kenya'),(95,'Kiribati'),(96,'Korea'),(97,'Kuwait'),(98,'Kyrgyz Republic'),(100,'Latvia'),(101,'Lebanon'),(102,'Lesotho'),(103,'Liberia'),(104,'Libyan Arab Jamahiriya'),(105,'Liechtenstein'),(106,'Lithuania'),(107,'Macedonia'),(108,'Madagascar'),(109,'Malawi'),(110,'Malaysia'),(111,'Malta'),(112,'Martinique'),(113,'Mauritania'),(114,'Mayotte'),(115,'Mexico'),(116,'Micronesia'),(117,'Moldova'),(118,'Monaco'),(119,'Mongolia'),(120,'Montenegro'),(121,'Montserrat'),(122,'Morocco'),(123,'Myanmar'),(124,'Namibia'),(125,'Nauru'),(126,'Nepal'),(127,'Netherlands'),(128,'New Caledonia'),(129,'New Zealand'),(130,'Nicaragua'),(131,'Niger'),(132,'Nigeria'),(133,'Niue'),(134,'Norfolk Island'),(135,'Northern Mariana Islands'),(136,'Norway'),(137,'Oman'),(138,'Palau'),(139,'Palestinian Territory'),(140,'Panama'),(141,'Paraguay'),(142,'Peru'),(143,'Philippines'),(144,'Poland'),(145,'Puerto Rico'),(146,'Qatar'),(147,'Reunion'),(148,'Russian Federation'),(149,'Rwanda'),(150,'Saint Barthelemy'),(151,'Saint Helena'),(152,'Saint Kitts and Nevis'),(153,'Saint Lucia'),(154,'Saint Martin'),(155,'Saint Pierre and Miquelon'),(156,'Saint Vincent and the Grenadines'),(157,'Samoa'),(158,'San Marino'),(159,'Sao Tome and Principe'),(160,'Saudi Arabia'),(161,'Serbia'),(162,'Seychelles'),(163,'Sierra Leone'),(164,'Singapore'),(165,'Slovakia (Slovak Republic)'),(166,'Slovenia'),(167,'Solomon Islands'),(168,'Somalia'),(169,'South Africa'),(170,'South Georgia and the South Sandwich Islands'),(171,'Spain'),(172,'Sri Lanka'),(173,'Sudan'),(174,'Suriname'),(175,'Svalbard & Jan Mayen Islands'),(176,'Swaziland'),(177,'Switzerland'),(178,'Syrian Arab Republic'),(179,'Taiwan'),(180,'Tajikistan'),(181,'Tanzania'),(182,'Thailand'),(183,'Togo'),(184,'Tokelau'),(185,'Trinidad and Tobago'),(186,'Tunisia'),(187,'Turkey'),(188,'Turkmenistan'),(189,'Tuvalu'),(190,'Uganda'),(191,'Ukraine'),(192,'United Arab Emirates'),(193,'United Kingdom'),(194,'United States of America'),(195,'United States Virgin Islands'),(196,'Uruguay'),(197,'Vanuatu'),(79,'Vatican City State'),(198,'Venezuela'),(199,'Vietnam'),(200,'Yemen');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creators`
--

DROP TABLE IF EXISTS `creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `photo` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `creator_name_idx` (`first_name`,`last_name`),
  KEY `photo` (`photo`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `creators_ibfk_1` FOREIGN KEY (`photo`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `creators_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creators`
--

LOCK TABLES `creators` WRITE;
/*!40000 ALTER TABLE `creators` DISABLE KEYS */;
INSERT INTO `creators` VALUES (1,'Demario','Johns','1975-04-27',NULL,'m',140,107),(2,'Roselyn','Bauch','1984-06-14',NULL,'m',42,34),(3,'Oran','Kuhlman','2016-11-11',NULL,'m',36,18),(4,'Kim','Runolfsdottir','1997-09-24',NULL,'m',35,147),(5,'Abigail','Haag','1999-01-20',NULL,'f',70,114),(6,'Kailey','Rodriguez','1970-02-05',NULL,'m',92,119),(7,'Devon','Larkin','1984-09-08',NULL,'f',38,51),(8,'Vanessa','Lindgren','1986-02-20',NULL,'m',139,78),(9,'Miles','Stoltenberg','1988-09-11',NULL,'f',140,114),(10,'Danial','Kshlerin','1985-09-05',NULL,'m',29,68),(11,'Jamison','Daniel','1984-09-17',NULL,'m',101,129),(12,'Clarabelle','Windler','1976-07-13',NULL,'f',98,114),(13,'Carole','Murphy','2008-11-09',NULL,'m',148,108),(14,'Urban','Schneider','1981-05-05',NULL,'f',105,114),(15,'Zoie','Wilkinson','1986-10-07',NULL,'f',75,84),(16,'Lillie','Grimes','1990-09-24',NULL,'f',122,199),(17,'Torrance','Walter','2000-05-02',NULL,'f',107,130),(18,'Clark','Braun','1989-04-25',NULL,'m',49,107),(19,'Nadia','Johnston','1997-02-17',NULL,'m',91,15),(20,'Jimmy','Morissette','1975-01-03',NULL,'m',114,143),(21,'Ken','Greenholt','1987-09-11',NULL,'f',119,198),(22,'Grover','Kreiger','1998-07-24',NULL,'m',59,151),(23,'Morton','Konopelski','2011-10-25',NULL,'f',142,174),(24,'Tania','Quitzon','1987-05-27',NULL,'m',133,81),(25,'Tyree','D\'Amore','1983-11-11',NULL,'f',136,194),(26,'Bridgette','Gaylord','2021-05-21',NULL,'m',70,114),(27,'Dante','Little','1976-07-14',NULL,'f',94,114),(28,'Marty','Larson','1996-04-26',NULL,'m',19,55),(29,'Roma','Cartwright','1995-03-12',NULL,'m',117,23),(30,'Constance','Lang','1982-10-25',NULL,'m',135,115),(31,'Estefania','Hayes','2004-11-23',NULL,'m',119,154),(32,'Domingo','Predovic','1971-07-12',NULL,'f',133,5),(33,'Blair','Predovic','1981-05-02',NULL,'m',59,128),(34,'Courtney','Berge','2011-05-29',NULL,'m',72,86),(35,'Jane','Lindgren','1994-06-29',NULL,'m',137,44),(36,'Elyse','Mayer','2020-04-28',NULL,'f',127,106),(37,'Roxanne','Jacobson','2003-11-06',NULL,'m',79,138),(38,'Daisy','Friesen','1991-10-10',NULL,'m',34,116),(39,'Domingo','Robel','2017-06-18',NULL,'f',22,26),(40,'Kyle','Langosh','1988-06-06',NULL,'f',85,139),(41,'Wilfred','Steuber','1996-03-16',NULL,'f',65,162),(42,'Chanel','Eichmann','2010-02-13',NULL,'f',119,45),(43,'Matt','Cummings','2002-06-18',NULL,'m',95,65),(44,'Golda','Senger','2000-10-23',NULL,'f',67,45),(45,'Lauren','Grimes','1997-06-07',NULL,'m',47,168),(46,'Isaac','Leuschke','2008-12-29',NULL,'f',136,40),(47,'Dedrick','Kuvalis','2020-05-04',NULL,'f',130,64),(48,'Charley','Lebsack','1985-02-01',NULL,'m',91,114),(49,'Murray','Simonis','2008-02-17',NULL,'f',18,193),(50,'Claire','Kuhlman','1996-02-10',NULL,'f',61,4),(51,'Ryleigh','Lindgren','1993-04-26',NULL,'f',150,114),(52,'Irma','Hahn','2010-02-17',NULL,'m',28,31),(53,'Elbert','Paucek','2001-08-28',NULL,'f',66,114),(54,'Taurean','Armstrong','1976-04-07',NULL,'m',75,104),(55,'Gregoria','Anderson','2005-08-04',NULL,'m',129,3),(56,'Deon','VonRueden','2000-10-07',NULL,'m',85,117),(57,'Tevin','Russel','1996-02-09',NULL,'m',143,47),(58,'Oda','Miller','1978-10-10',NULL,'f',135,155),(59,'Lucile','Goodwin','1992-04-05',NULL,'m',145,114),(60,'Joaquin','Bartell','2019-11-12',NULL,'f',131,32),(61,'Kiley','Nitzsche','2014-07-05',NULL,'f',85,17),(62,'Wilbert','Murphy','2019-10-16',NULL,'m',150,162),(63,'Ora','Schaden','1971-03-26',NULL,'f',147,57),(64,'Vincenza','Fisher','1997-10-09',NULL,'f',102,15),(65,'Blaze','Hansen','2021-05-18',NULL,'m',49,67),(66,'Hazel','Bailey','1999-12-29',NULL,'m',83,125),(67,'Terrill','Langworth','2002-08-12',NULL,'m',84,116),(68,'Efren','Kessler','1983-10-03',NULL,'f',43,94),(69,'Kaley','Hammes','1993-03-28',NULL,'m',82,37),(70,'Alva','Abernathy','1982-11-09',NULL,'m',113,24),(71,'Christa','Balistreri','2019-05-21',NULL,'f',85,77),(72,'Tremaine','Gibson','1987-03-11',NULL,'m',133,19),(73,'Madalyn','Murray','1984-07-24',NULL,'m',136,15),(74,'Rosemarie','Larkin','1975-06-12',NULL,'m',140,75),(75,'Iva','Stehr','1996-06-18',NULL,'m',145,16),(76,'Grant','Lindgren','1982-12-25',NULL,'f',92,113),(77,'Junius','Gleichner','2019-01-06',NULL,'m',41,113),(78,'Candice','Renner','1993-12-26',NULL,'m',148,177),(79,'Shea','Mayer','1990-06-03',NULL,'f',40,114),(80,'Sasha','Simonis','2017-08-15',NULL,'m',134,25),(81,'Lysanne','Stanton','2010-10-26',NULL,'m',35,25),(82,'Noemy','Greenfelder','1999-12-16',NULL,'m',124,83),(83,'Johnnie','Cassin','1986-06-10',NULL,'m',95,110),(84,'Kip','Blanda','2017-06-01',NULL,'f',93,77),(85,'Golda','Carroll','1980-01-05',NULL,'f',9,70),(86,'Richard','Schumm','1999-12-21',NULL,'m',24,186),(87,'Aidan','Reinger','1979-04-05',NULL,'m',131,50),(88,'Kiarra','Bahringer','2001-03-10',NULL,'f',75,69),(89,'Gregorio','Bartell','1999-03-31',NULL,'m',138,5),(90,'Isom','Adams','1998-01-24',NULL,'f',94,89),(91,'Michelle','Spinka','1989-06-11',NULL,'m',126,96),(92,'Zechariah','Klein','2013-10-21',NULL,'m',1,61),(93,'Nola','Will','2009-01-27',NULL,'m',124,60),(94,'Alec','Nolan','1972-11-03',NULL,'f',45,114),(95,'Sally','Wolf','1973-06-04',NULL,'m',90,13),(96,'Dayana','Kessler','2013-07-09',NULL,'m',93,114),(97,'Jeffrey','Medhurst','2020-03-13',NULL,'f',65,114),(98,'Royal','Bins','1992-09-16',NULL,'f',75,114),(99,'Providenci','Raynor','2018-12-13',NULL,'m',3,21),(100,'Susanna','Ullrich','2008-05-30',NULL,'f',74,95);
/*!40000 ALTER TABLE `creators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `genre` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Adventure'),(3,'Animation'),(4,'Biography'),(5,'Comedy'),(6,'Crime'),(7,'Documentary'),(8,'Drama'),(9,'Family'),(10,'Fantasy'),(11,'Film Noir'),(12,'History'),(13,'Horror'),(14,'Music'),(15,'Musical'),(16,'Mystery'),(17,'Romance'),(18,'Sci-Fi'),(19,'Sport'),(20,'Superhero'),(21,'Thriller'),(22,'Western');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) NOT NULL,
  `path` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'nemo','http://movies.com/images'),(2,'voluptatem','http://movies.com/images'),(3,'rerum','http://movies.com/images'),(4,'minus','http://movies.com/images'),(5,'enim','http://movies.com/images'),(6,'dolorem','http://movies.com/images'),(7,'tempore','http://movies.com/images'),(8,'rerum','http://movies.com/images'),(9,'occaecati','http://movies.com/images'),(10,'assumenda','http://movies.com/images'),(11,'beatae','http://movies.com/images'),(12,'aspernatur','http://movies.com/images'),(13,'maiores','http://movies.com/images'),(14,'quibusdam','http://movies.com/images'),(15,'nisi','http://movies.com/images'),(16,'sapiente','http://movies.com/images'),(17,'quo','http://movies.com/images'),(18,'corporis','http://movies.com/images'),(19,'provident','http://movies.com/images'),(20,'nisi','http://movies.com/images'),(21,'adipisci','http://movies.com/images'),(22,'soluta','http://movies.com/images'),(23,'rerum','http://movies.com/images'),(24,'perferendis','http://movies.com/images'),(25,'fugiat','http://movies.com/images'),(26,'autem','http://movies.com/images'),(27,'repudiandae','http://movies.com/images'),(28,'enim','http://movies.com/images'),(29,'dolorum','http://movies.com/images'),(30,'tempora','http://movies.com/images'),(31,'et','http://movies.com/images'),(32,'quis','http://movies.com/images'),(33,'voluptatem','http://movies.com/images'),(34,'impedit','http://movies.com/images'),(35,'at','http://movies.com/images'),(36,'animi','http://movies.com/images'),(37,'et','http://movies.com/images'),(38,'eum','http://movies.com/images'),(39,'consequatur','http://movies.com/images'),(40,'natus','http://movies.com/images'),(41,'doloribus','http://movies.com/images'),(42,'et','http://movies.com/images'),(43,'aliquam','http://movies.com/images'),(44,'suscipit','http://movies.com/images'),(45,'eligendi','http://movies.com/images'),(46,'magnam','http://movies.com/images'),(47,'cum','http://movies.com/images'),(48,'et','http://movies.com/images'),(49,'aut','http://movies.com/images'),(50,'ex','http://movies.com/images'),(51,'repellat','http://movies.com/images'),(52,'ex','http://movies.com/images'),(53,'tenetur','http://movies.com/images'),(54,'mollitia','http://movies.com/images'),(55,'aut','http://movies.com/images'),(56,'eum','http://movies.com/images'),(57,'voluptatum','http://movies.com/images'),(58,'rerum','http://movies.com/images'),(59,'omnis','http://movies.com/images'),(60,'omnis','http://movies.com/images'),(61,'a','http://movies.com/images'),(62,'corrupti','http://movies.com/images'),(63,'voluptas','http://movies.com/images'),(64,'ratione','http://movies.com/images'),(65,'error','http://movies.com/images'),(66,'et','http://movies.com/images'),(67,'possimus','http://movies.com/images'),(68,'et','http://movies.com/images'),(69,'ratione','http://movies.com/images'),(70,'totam','http://movies.com/images'),(71,'temporibus','http://movies.com/images'),(72,'qui','http://movies.com/images'),(73,'molestiae','http://movies.com/images'),(74,'quas','http://movies.com/images'),(75,'voluptas','http://movies.com/images'),(76,'veniam','http://movies.com/images'),(77,'sunt','http://movies.com/images'),(78,'quas','http://movies.com/images'),(79,'hic','http://movies.com/images'),(80,'voluptatem','http://movies.com/images'),(81,'explicabo','http://movies.com/images'),(82,'non','http://movies.com/images'),(83,'nisi','http://movies.com/images'),(84,'consequatur','http://movies.com/images'),(85,'rerum','http://movies.com/images'),(86,'voluptas','http://movies.com/images'),(87,'fugit','http://movies.com/images'),(88,'fuga','http://movies.com/images'),(89,'tempore','http://movies.com/images'),(90,'est','http://movies.com/images'),(91,'numquam','http://movies.com/images'),(92,'iure','http://movies.com/images'),(93,'earum','http://movies.com/images'),(94,'qui','http://movies.com/images'),(95,'quas','http://movies.com/images'),(96,'nesciunt','http://movies.com/images'),(97,'doloribus','http://movies.com/images'),(98,'et','http://movies.com/images'),(99,'ea','http://movies.com/images'),(100,'harum','http://movies.com/images'),(101,'voluptas','http://movies.com/images'),(102,'ratione','http://movies.com/images'),(103,'error','http://movies.com/images'),(104,'et','http://movies.com/images'),(105,'possimus','http://movies.com/images'),(106,'et','http://movies.com/images'),(107,'ratione','http://movies.com/images'),(108,'totam','http://movies.com/images'),(109,'temporibus','http://movies.com/images'),(110,'qui','http://movies.com/images'),(111,'molestiae','http://movies.com/images'),(112,'quas','http://movies.com/images'),(113,'voluptas','http://movies.com/images'),(114,'veniam','http://movies.com/images'),(115,'sunt','http://movies.com/images'),(116,'quas','http://movies.com/images'),(117,'hic','http://movies.com/images'),(118,'voluptatem','http://movies.com/images'),(119,'explicabo','http://movies.com/images'),(120,'non','http://movies.com/images'),(121,'nisi','http://movies.com/images'),(122,'rerum','http://movies.com/images'),(123,'voluptas','http://movies.com/images'),(124,'fugit','http://movies.com/images'),(125,'fuga','http://movies.com/images'),(126,'tempore','http://movies.com/images'),(127,'est','http://movies.com/images'),(128,'numquam','http://movies.com/images'),(129,'iure','http://movies.com/images'),(130,'earum','http://movies.com/images'),(131,'qui','http://movies.com/images'),(132,'quas','http://movies.com/images'),(133,'nesciunt','http://movies.com/images'),(134,'doloribus','http://movies.com/images'),(135,'et','http://movies.com/images'),(136,'ea','http://movies.com/images'),(137,'harum','http://movies.com/images'),(138,'voluptas','http://movies.com/images'),(139,'ratione','http://movies.com/images'),(140,'error','http://movies.com/images'),(141,'et','http://movies.com/images'),(142,'possimus','http://movies.com/images'),(143,'et','http://movies.com/images'),(144,'ratione','http://movies.com/images'),(145,'totam','http://movies.com/images'),(146,'temporibus','http://movies.com/images'),(147,'earum','http://movies.com/images'),(148,'qui','http://movies.com/images'),(149,'quas','http://movies.com/images'),(150,'nesciunt','http://movies.com/images');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Art Direction'),(2,'Assistant Director'),(3,'Casting '),(5,'Director'),(4,'Director of photography'),(6,'Executive producer'),(7,'Film editor'),(8,'Music'),(9,'Producer'),(10,'Production Design'),(11,'Set Decoration'),(12,'Sound designer'),(13,'Special Effects'),(14,'Star'),(15,'Stunt'),(16,'Visual Effects'),(17,'Writer');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_company`
--

DROP TABLE IF EXISTS `title_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title_company` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title_id` bigint unsigned DEFAULT NULL,
  `company_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `title_id` (`title_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `title_company_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `title_company_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_company`
--

LOCK TABLES `title_company` WRITE;
/*!40000 ALTER TABLE `title_company` DISABLE KEYS */;
INSERT INTO `title_company` VALUES (1,1,3),(2,10,23),(3,10,9),(4,100,6),(5,100,7),(6,11,18),(7,11,2),(8,12,17),(9,12,24),(10,13,14),(11,13,2),(12,14,3),(13,15,18),(14,16,13),(15,16,4),(16,17,13),(17,18,1),(18,18,15),(19,19,8),(20,2,13),(21,2,5),(22,20,3),(23,20,4),(24,21,17),(25,21,20),(26,22,17),(27,23,7),(28,24,2),(29,24,8),(30,25,15),(31,25,4),(32,26,24),(33,26,7),(34,27,14),(35,27,2),(36,27,9),(37,28,1),(38,28,19),(39,29,22),(40,29,25),(41,3,22),(42,30,13),(43,31,13),(44,31,17),(45,32,1),(46,32,19),(47,33,12),(48,33,20),(49,34,4),(50,34,7),(51,34,9),(52,35,21),(53,35,23),(54,36,12),(55,37,25),(56,37,5),(57,38,14),(58,38,2),(59,39,1),(60,39,16),(61,39,6),(62,4,3),(63,4,6),(64,4,6),(65,40,14),(66,41,1),(67,41,2),(68,42,12),(69,42,23),(70,42,3),(71,43,9),(72,44,25),(73,45,17),(74,45,17),(75,45,17),(76,46,13),(77,46,2),(78,47,22),(79,48,8),(80,49,8),(81,5,23),(82,5,8),(83,50,13),(84,51,11),(85,52,24),(86,52,4),(87,53,12),(88,53,4),(89,54,21),(90,55,14),(91,56,18),(92,56,2),(93,56,24),(94,57,21),(95,57,6),(96,58,1),(97,58,22),(98,59,10),(99,59,2),(100,59,24),(101,59,25),(102,59,9),(103,6,1),(104,6,14),(105,6,21),(106,6,25),(107,6,5),(108,6,8),(109,60,16),(110,61,24),(111,62,12),(112,62,3),(113,62,6),(114,63,12),(115,63,22),(116,64,16),(117,64,24),(118,64,3),(119,65,14),(120,65,23),(121,66,21),(122,67,13),(123,67,24),(124,68,13),(125,68,19),(126,69,12),(127,69,22),(128,69,25),(129,7,1),(130,7,23),(131,70,20),(132,70,23),(133,70,23),(134,71,16),(135,72,11),(136,72,13),(137,72,19),(138,72,23),(139,73,1),(140,73,16),(141,73,8),(142,74,16),(143,75,15),(144,75,16),(145,76,3),(146,77,11),(147,77,13),(148,77,3),(149,78,22),(150,79,11),(151,8,4),(152,80,25),(153,81,10),(154,81,5),(155,82,12),(156,83,5),(157,83,7),(158,83,9),(159,84,3),(160,84,7),(161,85,24),(162,85,7),(163,86,12),(164,86,22),(165,87,12),(166,88,12),(167,88,5),(168,89,7),(169,9,16),(170,9,25),(171,9,8),(172,90,12),(173,90,22),(174,90,23),(175,90,4),(176,91,11),(177,91,12),(178,91,19),(179,92,13),(180,93,11),(181,93,25),(182,94,14),(183,94,17),(184,95,14),(185,95,2),(186,95,20),(187,95,25),(188,95,7),(189,96,12),(190,96,13),(191,96,24),(192,97,17),(193,97,2),(194,97,21),(195,98,5),(196,98,7),(197,99,23),(198,99,24),(199,99,6),(200,99,9);
/*!40000 ALTER TABLE `title_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_country`
--

DROP TABLE IF EXISTS `title_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title_country` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `title_id` (`title_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `title_country_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `title_country_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_country`
--

LOCK TABLES `title_country` WRITE;
/*!40000 ALTER TABLE `title_country` DISABLE KEYS */;
INSERT INTO `title_country` VALUES (1,1,148),(2,2,27),(3,3,114),(4,4,88),(5,5,101),(6,6,81),(7,7,200),(8,8,21),(9,9,103),(10,10,13),(11,11,161),(12,12,178),(13,13,137),(14,14,184),(15,15,33),(16,16,42),(17,17,15),(18,18,131),(19,19,85),(20,20,48),(21,21,14),(22,22,3),(23,23,114),(24,24,99),(25,25,34),(26,26,88),(27,27,151),(28,28,114),(29,29,33),(30,30,114),(31,31,162),(32,32,23),(33,33,152),(34,34,146),(35,35,76),(36,36,158),(37,37,9),(38,38,5),(39,39,67),(40,40,119),(41,41,133),(42,42,140),(43,43,171),(44,44,114),(45,45,133),(46,46,118),(47,47,74),(48,48,79),(49,49,65),(50,50,86),(51,51,1),(52,52,5),(53,53,114),(54,54,76),(55,55,68),(56,56,142),(57,57,29),(58,58,139),(59,59,39),(60,60,111),(61,61,1),(62,62,199),(63,63,119),(64,64,134),(65,65,136),(66,66,144),(67,67,71),(68,68,128),(69,69,182),(70,70,157),(71,71,17),(72,72,24),(73,73,123),(74,74,114),(75,75,114),(76,76,114),(77,77,156),(78,78,118),(79,79,40),(80,80,135),(81,81,46),(82,82,135),(83,83,124),(84,84,114),(85,85,38),(86,86,195),(87,87,68),(88,88,114),(89,89,21),(90,90,164),(91,91,177),(92,92,141),(93,93,132),(94,94,114),(95,95,200),(96,96,20),(97,97,44),(98,98,14),(99,99,197),(100,100,114);
/*!40000 ALTER TABLE `title_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_info`
--

DROP TABLE IF EXISTS `title_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title_id` bigint unsigned DEFAULT NULL,
  `title_type_id` bigint unsigned DEFAULT '1',
  `poster` bigint unsigned DEFAULT '2',
  `synopsis` varchar(500) DEFAULT ' ',
  `genre_id` bigint unsigned NOT NULL,
  `release_date` date DEFAULT NULL,
  `rars` enum('0+','6+','12+','16+','18+','NR') DEFAULT 'NR',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `release_date` (`release_date`),
  KEY `title_id` (`title_id`),
  KEY `title_type_id` (`title_type_id`),
  KEY `poster` (`poster`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `title_info_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `titles` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `title_info_ibfk_2` FOREIGN KEY (`title_type_id`) REFERENCES `title_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `title_info_ibfk_3` FOREIGN KEY (`poster`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `title_info_ibfk_4` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_info`
--

LOCK TABLES `title_info` WRITE;
/*!40000 ALTER TABLE `title_info` DISABLE KEYS */;
INSERT INTO `title_info` VALUES (1,1,4,121,'Quod nemo nostrum est dignissimos quidem possimus. Officia nesciunt dolore odit aut perferendis. Officia illo esse ut cupiditate repellendus. Sit sit nisi porro omnis qui.',1,'1981-05-07','0+'),(2,2,6,131,'Eligendi quia voluptatem quisquam sit eos itaque amet ex. Cumque suscipit laborum soluta odit aspernatur necessitatibus eos. Quia facere dolorem recusandae.',9,'2015-09-04','16+'),(3,3,5,46,'Ea in eaque vero dolorem est ad. Reiciendis voluptatum nesciunt ut ipsam aspernatur nemo totam. Illum nihil culpa culpa magnam.',3,'1998-05-06','NR'),(4,4,2,110,'Non ea sit dolorem aliquam. Optio praesentium aliquam aut laboriosam quo sint atque. Animi maiores commodi placeat doloribus.',14,'1984-09-14','0+'),(5,5,5,73,'Autem harum dolorem quibusdam architecto ea. Repellat eius rerum dolor. Reiciendis et architecto recusandae. Id harum ut vero.',7,'1981-01-09','6+'),(6,6,4,8,'Laborum placeat debitis voluptatum qui in omnis aut. Similique sed commodi iure.\nCommodi fuga vel cum optio eaque. Dolores provident maxime quis. Autem quae dolor tempora omnis.',8,'1970-06-01','NR'),(7,7,5,120,'Accusantium ut aut fuga recusandae. Veniam totam numquam voluptas excepturi nobis inventore.',21,'2011-04-25','12+'),(8,8,3,126,'Odio et aut praesentium voluptatum. Aut dolor et commodi quam accusamus minus. Sed non nisi officiis laborum pariatur.',20,'1992-04-21','0+'),(9,9,6,150,'Molestiae autem laudantium inventore accusantium. Itaque consequatur necessitatibus quia in sit. Quisquam dicta beatae dolore.',11,'1998-03-01','12+'),(10,10,4,91,'Accusantium natus ad magnam voluptas. Ut reiciendis distinctio pariatur illum dolorem aut rem. Rem eos culpa laboriosam quasi.',7,'2017-12-15','0+'),(11,11,5,12,'Doloremque perferendis sit ea fugiat et est. Modi quos quod officiis molestiae modi.',9,'2015-03-13','NR'),(12,12,2,145,'Tempore dolor quis libero quisquam. Assumenda velit architecto laborum eos aut. Ullam explicabo tenetur excepturi sit sequi quia accusamus quia.',19,'1991-02-05','0+'),(13,13,1,123,'Id facere voluptatibus eum fugit accusantium quasi est. Facere voluptatem et et consequatur. Neque est laboriosam ad beatae minus ut.',2,'2002-12-21','0+'),(14,14,1,146,'Officiis excepturi molestiae laborum in laborum. Quos non et dignissimos et corporis ipsum ex. Voluptate enim neque nesciunt.',4,'2008-06-07','18+'),(15,15,5,119,'At odio voluptas ad in sit. Illo minima tenetur quam. Nulla qui iusto quidem voluptatem. Labore facilis quia ea est.',8,'1980-04-21','18+'),(16,16,4,1,'Aut harum ut molestiae dolor sed enim. Sapiente aspernatur odit quaerat voluptate sit. Vitae consequatur voluptatem minus architecto quaerat vero est.',16,'2004-12-24','16+'),(17,17,2,94,'Cum accusamus enim dignissimos architecto libero. Distinctio dolores magni ea.',19,'1988-07-02','12+'),(18,18,5,88,'Aliquam facilis pariatur officiis officia. Tenetur consequatur sapiente maxime omnis ut. Libero sunt quisquam saepe est distinctio. Dolor voluptatem eos quam aut qui tenetur asperiores harum.',11,'2007-02-15','18+'),(19,19,4,51,'Aut possimus et vero autem est quis optio. Libero dolor delectus molestiae minima. Ea nulla similique placeat. Fugit ratione nisi et et fugiat.',5,'2017-01-17','6+'),(20,20,1,123,'Numquam dolore fugiat aut sit magnam quo quibusdam. Distinctio unde dignissimos itaque ad voluptatem velit fugiat. Est repellendus fuga dolorem rerum quidem eligendi.',4,'2006-04-29','16+'),(21,21,5,136,'Aut excepturi et ut dolor ullam alias. Quia consectetur et debitis vel. Quam animi earum amet sit. Qui omnis ut dolor ab voluptate voluptatum sit modi.',3,'1987-03-09','NR'),(22,22,1,45,'Aut harum dolor at. Amet eveniet nihil qui soluta corporis. Labore sunt atque voluptatibus magnam.',13,'2005-03-25','0+'),(23,23,2,135,'Minus sed iure est saepe iusto libero dolorum. Fuga occaecati distinctio iusto illo dolor deserunt ea. Praesentium aut nihil impedit et dolorum.',13,'1999-11-06','NR'),(24,24,3,63,'Porro ut veniam modi esse et. Magnam aut possimus neque sed occaecati error. Qui quis a quia voluptatem ad.',1,'2020-03-15','6+'),(25,25,5,91,'Deleniti mollitia temporibus enim minima. Laudantium minima nobis ut aliquam non aut qui. Blanditiis molestiae temporibus sed reiciendis et. Laudantium asperiores perferendis amet corrupti sed.',7,'2011-11-19','6+'),(26,26,5,49,'Ea error dolorum id beatae porro totam. Sapiente fugit est sit omnis ipsa. Magnam quos in voluptas ut.',19,'1992-10-01','0+'),(27,27,6,34,'Aperiam distinctio iste fuga in. Commodi doloremque ad exercitationem enim aut. Atque dicta aperiam tenetur sit nulla. Vitae ut nesciunt delectus sit aut nulla et.',22,'2019-11-10','16+'),(28,28,3,15,'Ad nostrum beatae libero iure repellat architecto. Nostrum sit totam animi. Maiores eveniet sed voluptas quia eos eos.',21,'2013-07-15','NR'),(29,29,3,87,'Vitae dolorem omnis non. Facilis voluptatem quisquam sequi repellendus.',21,'1997-01-31','18+'),(30,30,3,39,'Temporibus autem omnis sapiente aut nihil. Animi dolore voluptatem blanditiis accusantium velit rerum et. Molestiae ducimus doloremque neque iusto ad asperiores eos.',21,'1986-07-18','12+'),(31,31,5,39,'Et fuga natus natus illum quos quam. Tempora alias at est ut magnam animi in. Quo repellat et corrupti aut qui ut culpa. Et quo iusto tempora sit nihil earum reprehenderit.',21,'2005-03-20','12+'),(32,32,6,45,'Est unde pariatur quibusdam numquam dolorem nobis praesentium. Et similique harum quia consequatur veniam occaecati laboriosam. Excepturi ut et aut facere laboriosam sit ut.',3,'2013-02-06','0+'),(33,33,3,144,'Officiis dolore cum maiores quasi et sed. Mollitia temporibus distinctio officia delectus iusto ea. Autem mollitia est possimus quia sunt quo aut.',4,'1987-04-19','6+'),(34,34,5,96,'Reprehenderit quia eius non voluptas neque. Esse temporibus tempora similique quas. Debitis voluptatem provident neque.',5,'2011-06-24','16+'),(35,35,4,24,'Totam eius dolorem deleniti quas minus. Quia aut ut porro aut accusantium sequi illum. Beatae qui quo ad praesentium iste. Optio quae aut vero magnam consequatur.',7,'1975-09-04','0+'),(36,36,1,117,'Molestiae optio unde et rerum quia voluptatibus et. Porro aut nemo molestiae iste tempora cupiditate quod.',9,'1992-08-25','12+'),(37,37,4,74,'Voluptatem voluptatum est voluptate perspiciatis aliquam. Reprehenderit ut a nobis. Aut officiis eum rerum aspernatur.',17,'1984-12-31','NR'),(38,38,6,139,'Commodi aut rerum ut. Reprehenderit similique assumenda repellendus sit ea consequatur. Ipsa qui veritatis sapiente eum.',4,'1971-03-22','12+'),(39,39,3,145,'Sit veniam harum eos soluta in soluta. Mollitia beatae magnam numquam. Asperiores repellat rerum repellat eveniet.',4,'2009-08-11','NR'),(40,40,6,96,'Iure minus dolorum similique. Sunt eum molestiae voluptas aut. Sunt inventore quia consequuntur et eius. Saepe enim numquam eveniet cum.',9,'1992-11-23','12+'),(41,41,3,69,'Sit dignissimos tempore quidem nostrum accusantium nobis. Laborum est quidem est ut eligendi nemo. Ab itaque autem quia praesentium ducimus.',9,'1981-01-17','0+'),(42,42,5,128,'Nobis modi harum alias inventore. Facilis optio in veritatis provident est minus nobis ut. Nesciunt dolores atque voluptate vero unde tenetur distinctio. Iste illo iste aliquam nobis deleniti.',18,'1992-10-03','NR'),(43,43,3,18,'Molestiae eius aperiam aliquam velit magni. Autem vitae repellat ad. Quasi dolor delectus earum vitae voluptas. Voluptas qui quod magni quam totam soluta.',3,'1971-12-04','18+'),(44,44,3,3,'Sint provident et ut consequatur. Neque voluptas debitis maxime in molestias nihil. Id nesciunt autem a est non illum. Doloribus sit fuga repellendus alias.',11,'2020-01-11','18+'),(45,45,1,102,'Accusantium non deserunt et illum odit. Et dolorem autem ut vel sapiente quibusdam. Nemo et nobis dolor aperiam ut numquam.\nAutem enim est cum cupiditate non. Est et est soluta vitae.',10,'2005-04-21','6+'),(46,46,2,56,'Beatae beatae consectetur asperiores voluptates. Accusamus quas vel blanditiis saepe doloremque non. Provident optio sint magnam ipsum illum et voluptatem.',10,'2000-06-12','6+'),(47,47,6,139,'Itaque libero iure voluptatem consequatur. Est dolor delectus est occaecati.',10,'2019-03-18','12+'),(48,48,6,11,'Asperiores aliquam quae illum quod velit et. Ullam necessitatibus ea rerum ea sed fuga. Numquam sed eos voluptatum nemo ipsum ut.',8,'1978-02-14','NR'),(49,49,4,84,'Qui vel dolorem quae exercitationem. Occaecati necessitatibus sed est molestiae ut. Voluptates et fugit dolorum eveniet.',8,'1976-01-01','0+'),(50,50,3,33,'Accusamus et nulla ea quasi. Omnis est ut magni voluptas ea natus. Neque voluptatem dolorem odio commodi quos eius.',7,'2002-01-22','6+'),(51,51,1,51,'Est molestiae sed consectetur harum illo vero. Et tempora et reiciendis natus ut laborum quidem. Perferendis veritatis cumque aut.',6,'2018-01-06','12+'),(52,52,4,36,'Consequuntur voluptate qui dicta facere in qui quia. Molestiae ratione quidem omnis iure. Error quo tempora aperiam expedita laudantium quaerat qui. Omnis sequi sit labore nesciunt.',5,'1976-05-15','NR'),(53,53,1,72,'Nam voluptatem non eligendi iste. Rerum quia earum temporibus alias. Voluptatum qui magnam qui est.',5,'1997-10-17','12+'),(54,54,4,108,'Voluptate dolor repellat ullam necessitatibus. Deserunt omnis sed reprehenderit quia cum occaecati ut. Placeat iusto dignissimos iure aspernatur.',5,'2003-03-20','18+'),(55,55,3,77,'Ut aspernatur hic dolorem. Inventore praesentium voluptatibus neque temporibus vel aliquid. Et dicta quod eum rerum. Sit velit voluptatem optio at qui dolorem.',5,'1977-08-23','6+'),(56,56,6,32,'Fugiat eveniet est nobis. Laboriosam sed quasi iste totam et minus.',5,'2000-11-30','NR'),(57,57,2,121,'Soluta et sit et ut minima voluptatem. Voluptas sunt qui aperiam dignissimos. Quidem magnam incidunt aut.',5,'1973-09-06','12+'),(58,58,4,54,'Tempora error enim doloremque voluptas eum rem. Dolore sed exercitationem officiis dignissimos architecto expedita voluptas itaque. Qui perferendis ut pariatur nobis expedita mollitia officia.',21,'1973-06-15','12+'),(59,59,6,11,'Praesentium adipisci est iusto ipsam mollitia porro quos. Omnis dolore nihil natus dolores sit. Omnis et dolor saepe consequatur omnis a non. Sunt accusamus voluptates eos non pariatur.',14,'2021-05-29','0+'),(60,60,2,3,'Itaque dolores nobis quidem dolor quasi sed. Dolor animi et nam adipisci quae corrupti.',13,'2007-03-22','16+'),(61,61,3,145,'Animi quae dolor molestias veritatis nisi voluptatem. Dicta quos aut consequuntur dolor neque reiciendis. Ipsa eum reiciendis id nesciunt.',13,'1976-05-19','6+'),(62,62,6,8,'Similique sunt quo unde consequatur debitis veniam. Quibusdam voluptas nulla ut praesentium rerum optio facilis. Ullam sequi occaecati est quas numquam facilis dolores.',13,'1981-02-23','16+'),(63,63,4,127,'Quidem vel nobis modi quisquam id perferendis. Vitae id tenetur aut repellendus nisi perferendis consequatur. Corrupti incidunt ea accusamus. Neque ullam quo accusantium.',13,'1977-06-23','16+'),(64,64,6,74,'Est est sequi asperiores error. Dolorum rerum delectus voluptatum iste quis neque. Enim porro aut non debitis maiores et ducimus. Voluptatem eveniet et iusto culpa.',13,'2015-04-19','16+'),(65,65,3,92,'Sapiente molestiae totam natus qui recusandae ullam. Ut nemo eveniet pariatur. In ut id voluptatibus magnam est velit.',13,'1997-02-03','0+'),(66,66,4,41,'Omnis laboriosam aut rerum autem itaque necessitatibus. Adipisci velit culpa ut quas possimus.',13,'2013-11-16','12+'),(67,67,2,9,'Consequatur ea accusamus facere accusantium ratione totam est quasi. Deleniti qui ut iste eos quaerat. Consequatur delectus assumenda qust inventore exercitationem cum ut similique id deserunt. Earum nobis numquam sit corporis error. Eveniet rerum maxime aut aut rerum dolores fuga consequuntur.',13,'2014-08-13','NR'),(68,68,5,126,'Est molestiae est exercitationem reiciendis. Deserunt excepturi deleniti excepturi quaerat iure rerum. Dignissimos iure at facilis cupiditate.',13,'2008-05-26','16+'),(69,69,3,116,'Sapiente sit nihil et voluptatem a. Ut cupiditate qui velit distinctio et ipsa sed et. Ea ut soluta natus illum ipsa a officia sapiente. Suscipit et necessitatibus eligendi facilis sed.',13,'1996-02-15','0+'),(70,70,1,97,'Consectetur aut et a eos maxime. Magni officia voluptatem error molestiae qui. Sint nihil asperiores nihil commodi. Ut sed ipsam dolor eius.',13,'2017-08-28','NR'),(71,71,5,48,'Voluptatum totam dolorum laudantium similique. Minima rerum provident quo iusto non. Sed alias vel aliquam odio cupiditate consequuntur iste. Necessitatibus laborum facilis et.',13,'2002-03-11','6+'),(72,72,6,101,'Iusto consequatur labore vel blanditiis quos ut modi. Qui consectetur veniam est adipisci esse veritatis. Aut aperiam iusto consequatur et blanditiis.',19,'2001-02-01','18+'),(73,73,2,150,'Eaque rerum blanditiis soluta quo placeat sint aut. Maiores sed facere voluptatem. Sunt vitae voluptatem praesentium neque rem. Rerum illo quisquam in totam eligendi et at.',19,'1997-12-20','6+'),(74,74,2,18,'Iusto et repellat eaque repellat ad tempore iure eveniet. Accusantium aut quas dignissimos officia ab qui.',19,'2015-10-03','12+'),(75,75,2,87,'Doloribus officia aspernatur inventore qui dolor architecto architecto. Voluptates et iusto aperiam commodi quis. Voluptatem fugit voluptatem repellendus repellendus enim est est.',19,'1985-07-18','0+'),(76,76,6,12,'Rerum est a dolores assumenda iste nihil. Laudantium sit consequatur commodi placeat repellendus nisi nulla. Et dolorem eligendi aut voluptas. A non quo fuga ab laboriosam voluptatem ex cum.',19,'2019-12-12','16+'),(77,77,4,5,'Voluptate dolor et esse facere. Blanditiis dolor atque laborum labore est veritatis et. Suscipit ea itaque et. Quis illum sunt modi non modi veritatis debitis.',20,'1988-03-01','0+'),(78,78,6,133,'Sunt et beatae amet ipsam. Ea sed ipsa quasi tempore fugiat voluptates. Qui dolores in et et ducimus. Dicta alias atque praesentium tempore id ipsum.',20,'2017-03-18','NR'),(79,79,3,138,'Velit deleniti vero sequi et. Ut voluptatem et nostrum veritatis ad. In eos voluptatem ex dolorum cum.',20,'1982-10-10','16+'),(80,80,5,142,'Dolore ipsum molestias temporibus dolorem. Blanditiis fugit qui et sint omnis dolorum molestiae. Aliquid reiciendis et saepe.',20,'1981-12-23','18+'),(81,81,1,107,'Labore sed velit porro. Reprehenderit sequi qui tempore odit. Nemo ut harum ipsam laudantium doloribus.',20,'2012-09-10','16+'),(82,82,6,133,'Libero non quisquam optio ad doloremque nihil. Quia aut omnis numquam velit veritatis aut. Quos consequuntur laudantium fugiat aspernatur error.',2,'1972-03-25','18+'),(83,83,6,101,'Sed velit ex facilis pariatur perspiciatis accusamus. At et sapiente unde aperiam consequuntur repellat. Qui mollitia nemo fugiat magnam. Impedit hic asperiores ullam quia deserunt non.',2,'2003-08-03','0+'),(84,84,2,68,'Harum sunt voluptatem ullam non ipsum quibusdam est. Accusantium minus quia quia sed a. Laudantium at quis dolorum vero harum vitae nulla.',2,'1973-10-08','NR'),(85,85,3,104,'Et est voluptas est consequatur laudantium enim accusamus. Consequuntur quo doloribus sed facere soluta non natus. Aut sit incidunt amet debitis.',2,'2010-03-06','NR'),(86,86,6,42,'Earum aut nemo quidem illum. Qui nihil dolore rerum delectus. Atque rerum iste facilis ut sed aliquid amet beatae. Repudiandae sit dolores dolores id at.',2,'1974-03-19','6+'),(87,87,1,58,'Quae aut inventore enim eius quia aut. Hic maxime nemo explicabo repellendus earum aut iusto. Et similique delectus consequatur non qui veniam. Aut qui ipsam reiciendis eius voluptas.',2,'2012-07-19','NR'),(88,88,4,36,'Vel est rerum tenetur provident ad qui corrupti. Tempore et in quia quo porro. A sed expedita voluptas aut laudantium laboriosam.',3,'1973-06-27','18+'),(89,89,6,79,'Alias placeat eum ut non hic consequatur ut. Sunt facere natus illo delectus dicta et soluta. Sunt est voluptate accusantium distinctio similique quae temporibus officia.',3,'1985-08-20','0+'),(90,90,1,145,'Sint unde sint necessitatibus minus. Fugit dignissimos necessitatibus non illum et porro ipsa. Placeat saepe quibusdam sed excepturi ex consectetur tempore. Cumque ipsam qui soluta illum veritatis.',3,'2005-09-04','6+'),(91,91,2,68,'Itaque cumque sed nemo eius similique quia harum. Pariatur quis ex voluptatem minima eaque. Aperiam nisi officia commodi voluptatibus veritatis quia est.',5,'1999-04-22','6+'),(92,92,5,65,'Est vel ipsam delectus explicabo. Quas sed rerum consequuntur optio pariatur aut quia voluptatem. Sunt rerum unde accusamus omnis provident.',6,'2020-05-13','0+'),(93,93,5,86,'Magni quasi in sint at non ut labore nulla. Tempore blanditiis sit qui autem impedit sit. Assumenda suscipit a et exercitationem unde ipsum et.',7,'1998-02-14','0+'),(94,94,5,108,'Autem facilis cum quidem sequi. Voluptatibus voluptatem perspiciatis eum quis.',8,'1994-11-12','NR'),(95,95,3,75,'Consequatur porro repellendus quae repellat. Sint sint architecto laborum qui. Voluptas pariatur cum quae autem omnis enim quaerat.',9,'2002-11-18','NR'),(96,96,6,77,'Adipisci sed aut aspernatur odio nostrum. Ut fugit vel praesentium distinctio eos dolores officia officia. Nisi ut ut vel repudiandae porro et ad. Et expedita ab ipsa assumenda placeat.',10,'2020-03-16','0+'),(97,97,5,27,'Et quas aliquid velit aperiam quo rerum ut. Quibusdam voluptatem tenetur et laboriosam rerum et. Quasi eligendi qui provident ut optio. Id error debitis consectetur deserunt sequi enim autem.',11,'1988-07-23','0+'),(98,98,4,76,'Sed ut illo libero. Esse eum dolore et voluptatem et soluta id. Et quia molestias vero sit. Magni accusantium et saepe et.',12,'2014-10-21','NR'),(99,99,4,113,'Architecto voluptas aliquid in esse. Ut eius sit quas nostrum. Esse magnam at esse quia veniam. Necessitatibus facere pariatur blanditiis ullam eveniet unde pariatur.',13,'1996-03-24','0+'),(100,100,2,24,'Corporis quia consequatur doloremque dolorum tempore et. Placeat ut vitae occaecati molestias.',14,'1992-08-31','6+');
/*!40000 ALTER TABLE `title_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_types`
--

DROP TABLE IF EXISTS `title_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title_type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `title_type` (`title_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_types`
--

LOCK TABLES `title_types` WRITE;
/*!40000 ALTER TABLE `title_types` DISABLE KEYS */;
INSERT INTO `title_types` VALUES (1,'Animation'),(2,'Feature Film'),(3,'Mini-Series'),(4,'Short Film'),(5,'TV Movie'),(6,'TV Series');
/*!40000 ALTER TABLE `title_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `original_title` varchar(100) DEFAULT ' ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `title` (`title`),
  KEY `original_title` (`original_title`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES (1,'Voluptatem laborum laboriosam et voluptate delectus explicabo nobis.','Maxime tenetur optio nesciunt odio et.'),(2,'Et temporibus dicta asperiores quia.','Quia fugit alias aut provident praesentium quia omnis.'),(3,'Quas aut laboriosam sit fugiat consequatur vel reiciendis.','Ut et et officia esse deserunt nemo suscipit.'),(4,'Atque perferendis ut quia cupiditate eaque.','In nobis ducimus porro ad illo quos magnam.'),(5,'Autem repellendus sit labore ex cumque dolorum suscipit reprehenderit.','Maxime voluptatem excepturi fugit ut ex voluptatem eum.'),(6,'Et et ut numquam sit porro aut.','Molestiae vel mollitia expedita et assumenda et quam.'),(7,'Illum illo quo earum a.','Dolores eos a modi et.'),(8,'Aliquam tempore qui qui aut aut repellat.','Placeat illo ipsam aut eum non eos.'),(9,'Quia totam assumenda distinctio laborum ratione animi.','Et vel quam molestias qui eos omnis.'),(10,'Architecto laudantium neque quam libero vel omnis sapiente.','Sed aut consequatur tempora at natus quaerat.'),(11,'Libero aut sed non sequi doloribus.','Quia amet temporibus quo nam eum itaque distinctio.'),(12,'Molestiae magnam itaque odit.','Saepe quibusdam magnam modi est voluptate dolorem.'),(13,'Illo aliquam rem minima assumenda natus.','Minima beatae eum quo non id.'),(14,'Odio unde at distinctio laborum cum.','Ea quia aliquid et nesciunt.'),(15,'Minus ea velit et.','Facilis reiciendis et delectus velit.'),(16,'Aut magni repellendus quam error ea similique.','Laudantium voluptatem similique accusantium saepe earum ut.'),(17,'Eaque ut eveniet rerum illum odit iste autem.','Commodi et voluptatem aut aliquam.'),(18,'Quaerat ut non et minima.','Accusantium numquam et libero.'),(19,'Ut ratione et inventore nostrum est voluptatem.','Soluta labore eos perspiciatis et id voluptas assumenda quasi.'),(20,'Quia voluptatem provident illo autem.','Debitis totam nisi voluptates.'),(21,'Voluptatum maiores possimus pariatur numquam vero ut dolorum.','Aliquid accusantium laudantium ut ut quisquam qui optio aut.'),(22,'Consequuntur ex et labore non porro maxime quaerat.','Sequi suscipit quaerat eos vero.'),(23,'Quisquam omnis dolores voluptas eos.','Rerum cupiditate aut facere fugiat id doloribus.'),(24,'Accusantium eos exercitationem aliquam magni eos at et ut.','Ratione facilis quis aut id mollitia rerum.'),(25,'Beatae quos error delectus reiciendis qui iste.','Dolorem quibusdam hic porro eos.'),(26,'Omnis veniam voluptatem eaque amet exercitationem veniam quis.','Libero fugiat et harum.'),(27,'Eum quos laborum quia odit consectetur qui voluptatem.','Mollitia voluptas facere deserunt maxime facere.'),(28,'Pariatur qui aliquam quidem quos earum.','Sequi enim in minima deleniti.'),(29,'Quae quae et sit id et.','Tempora voluptatem at voluptatibus ut animi exercitationem.'),(30,'Dolores iure accusantium asperiores doloremque.','Assumenda voluptas inventore nihil.'),(31,'Nisi inventore et veniam repudiandae hic.','Dolor dolorem commodi dolores deserunt dolore.'),(32,'Est possimus incidunt tenetur et dolorem.','Quam quasi nostrum repudiandae est quidem ipsa sequi.'),(33,'Odit beatae iste magnam dolorem.','Sed placeat est consequatur non.'),(34,'Qui a et deleniti non sed ducimus possimus.','Optio incidunt fugiat modi est explicabo sed velit.'),(35,'Ut omnis blanditiis nulla repellendus.','Enim harum quia corporis dolorum.'),(36,'Quibusdam quia et hic hic quod.','Soluta ut voluptatum doloremque autem at itaque.'),(37,'Occaecati deserunt odio et recusandae nulla aliquid.','Magni ut praesentium tenetur voluptas.'),(38,'Ab odio sunt officiis est consequatur.','Ad ipsam ipsa cupiditate aut hic.'),(39,'Nisi aut repudiandae dolorem cumque.','Impedit rem aut velit nisi cum aspernatur omnis.'),(40,'Voluptatem cum doloribus ratione et quia omnis vitae.','Ratione ea consequatur error commodi vitae blanditiis quaerat eaque.'),(41,'Molestiae labore voluptate sit aut deserunt rerum.','Dolorem nemo quisquam impedit.'),(42,'Iure quis dolorem omnis dicta non eos ullam.','Magnam ipsam at eum debitis atque.'),(43,'Nobis vitae earum aspernatur qui culpa fugit vel.','At enim commodi tempora natus velit voluptatem non.'),(44,'Suscipit qui veniam architecto.','Fugiat eligendi et itaque eum.'),(45,'Ut porro in suscipit sed officia unde veniam.','Sint nobis tempora fugiat delectus facilis.'),(46,'Ipsum cupiditate dolor quo cumque quia.','Ut ipsa maiores ipsa delectus voluptate cum.'),(47,'Id quisquam ipsa enim eum dolorum libero quod.','Aspernatur consequatur praesentium et quasi quia voluptate itaque esse.'),(48,'Pariatur nostrum rem sint modi omnis.','In consequatur sunt animi animi dolorem sit vitae.'),(49,'Ab vel id id necessitatibus porro aut.','Quo explicabo quidem magni.'),(50,'Accusamus et vero fugiat beatae.','Molestiae dignissimos sunt rerum rerum debitis porro maiores.'),(51,'Labore praesentium deserunt earum reiciendis ullam.','Doloremque dolore ullam ut aperiam vel.'),(52,'Nisi enim aut quos quaerat possimus aut.','Omnis est et et deleniti tempore.'),(53,'Et voluptate consequatur aut ut at.','Aut dicta natus nulla quis sit repellendus.'),(54,'Facilis provident quae tenetur.','Voluptatem impedit dolor veritatis.'),(55,'Molestiae placeat cumque cum iusto id.','Vel autem voluptatem nam dolores.'),(56,'Omnis numquam nemo nisi quam sequi et voluptate.','Quam voluptatem nulla illum ab voluptates itaque harum.'),(57,'Occaecati quibusdam est iusto in.','Sunt nesciunt ut nisi enim facilis hic et.'),(58,'Alias aliquid natus iusto doloribus modi eaque.','Id earum et sit enim dicta.'),(59,'Praesentium eaque assumenda in ut natus corporis dolorem.','Exercitationem iusto nam cupiditate qui.'),(60,'Est sed omnis illo ea.','Molestiae sapiente repudiandae consequatur aliquid quibusdam est.'),(61,'Voluptas suscipit ad iure ut.','Consequatur eos quia aut vel.'),(62,'Veritatis magni quia voluptas illo id rerum.','Dolores dolorem suscipit quibusdam quis pariatur eum sed.'),(63,'Suscipit in rem sunt est eos.','Quia omnis illum molestias maxime eligendi consequatur nobis.'),(64,'Et itaque quia omnis maiores fuga enim.','Ullam aut dicta vel.'),(65,'Autem necessitatibus id sint quae eos nam.','Ut eveniet placeat praesentium accusamus esse qui.'),(66,'Saepe quas nemo voluptas tempore.','Neque est cum corporis dolores eaque consequuntur.'),(67,'Illo fuga illo aut repellendus accusamus voluptatem ducimus.','Itaque sequi quis perspiciatis error corrupti.'),(68,'Quae assumenda eligendi quasi nisi.','Vel consequuntur ipsa asperiores quisquam sapiente commodi cumque.'),(69,'Cum quis et non magnam assumenda adipisci.','Assumenda autem quo optio commodi blanditiis dolor similique.'),(70,'Id sapiente rerum deleniti perferendis.','Vitae iure ut quisquam deleniti numquam quisquam.'),(71,'Molestiae voluptas voluptate aut atque culpa eos adipisci aut.','Vel est ut corrupti.'),(72,'Esse amet impedit id consectetur qui.','Nulla qui qui voluptates.'),(73,'Fugit magni sequi quasi repudiandae nulla.','Ipsam qui delectus suscipit saepe.'),(74,'Doloribus ut rem aut velit aut asperiores qui quia.','Corrupti iusto autem harum veritatis voluptatum inventore.'),(75,'Velit aut sit optio necessitatibus perferendis qui quia.','Sed assumenda impedit minus tempore qui.'),(76,'Nesciunt sunt veritatis est atque similique sit et.','Corrupti corrupti aut dignissimos assumenda.'),(77,'Ipsa soluta et vel.','Atque totam perferendis necessitatibus autem dolore.'),(78,'Qui aperiam est repellat sapiente voluptatibus optio.','Sint id quae blanditiis reprehenderit nostrum.'),(79,'Et rerum error voluptatem vitae vero.','Ipsum autem quis qui ad.'),(80,'Cumque et hic est cum.','Nihil accusamus rerum est voluptatum alias.'),(81,'Explicabo similique repudiandae quis velit iusto quo sed.','Delectus est in doloremque dolorem.'),(82,'Nam vel sapiente labore sed sint maiores adipisci.','Esse consequatur optio et.'),(83,'Eveniet ipsam odit saepe porro nobis qui dolores.','Et ut veniam ratione.'),(84,'Consequuntur sed aperiam aut sint odit debitis eligendi.','Nulla placeat consequatur sit laboriosam.'),(85,'Hic aperiam sit deserunt occaecati reiciendis.','In velit ea sed quo accusamus odit qui.'),(86,'Praesentium nemo ex repudiandae eos assumenda dolores.','Maxime occaecati dolor amet qui dolores officia.'),(87,'Autem labore vitae deleniti maxime eius quo.','Soluta doloremque voluptas est explicabo ut.'),(88,'Dolorum a id occaecati autem.','Numquam doloremque voluptatum natus laudantium ducimus architecto tenetur magnam.'),(89,'Similique nesciunt nihil ipsum quia autem dolorem fuga.','Odio debitis blanditiis eos dignissimos placeat aut modi.'),(90,'Qui doloribus voluptatem dolor ipsa magni commodi blanditiis.','Qui cupiditate dolor pariatur molestias ut optio sit.'),(91,'Placeat facilis impedit deserunt aut et omnis.','Nesciunt laborum veniam quia quia sequi.'),(92,'Illum veritatis dignissimos dolorum iste aut veniam nam.','Voluptatem est minima quos non aut est.'),(93,'Optio dolor aut voluptatum dolorem repudiandae.','Saepe exercitationem harum est architecto et aut consequatur non.'),(94,'Dolores itaque est possimus quod.','Error dicta et libero maiores illum aperiam.'),(95,'Mollitia fuga perspiciatis maiores ad.','A hic sequi excepturi nihil sit quidem placeat.'),(96,'Qui quia odit necessitatibus deserunt qui suscipit.','Qui quam id doloribus aspernatur.'),(97,'Sit eos ea repellat magnam iste.','Ipsam sit voluptatem voluptates fugiat corporis.'),(98,'Modi velit ab occaecati rerum consequatur itaque.','Praesentium nihil expedita iure totam aut.'),(99,'Aut earum quas laborum fugit ipsam et.','Illum minus omnis dolorem quidem sit.'),(100,'Ut enim aut et consequatur possimus.','Libero reprehenderit id aut voluptatibus.');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'moviesbase'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-10 17:02:06
