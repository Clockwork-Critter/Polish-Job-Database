-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: polish_job_posts
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Temporary view structure for view `average permeanant salary by experance level`
--

DROP TABLE IF EXISTS `average permeanant salary by experance level`;
/*!50001 DROP VIEW IF EXISTS `average permeanant salary by experance level`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average permeanant salary by experance level` AS SELECT 
 1 AS `Experience_Level`,
 1 AS `Average Salary`,
 1 AS `Currency_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency` (
  `Currency_id` int NOT NULL AUTO_INCREMENT,
  `Currency_Type` varchar(45) NOT NULL,
  `exchange_rate` float NOT NULL,
  PRIMARY KEY (`Currency_id`),
  UNIQUE KEY `Currency_Type_UNIQUE` (`Currency_Type`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'gbp',0.176806),(5,'unknown',0.182969);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `highest paying jobs`
--

DROP TABLE IF EXISTS `highest paying jobs`;
/*!50001 DROP VIEW IF EXISTS `highest paying jobs`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highest paying jobs` AS SELECT 
 1 AS `Title`,
 1 AS `Experience_Level`,
 1 AS `Posting_Date`,
 1 AS `Salary_permanent`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `Job_id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Experience_Level` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Posting_Date` datetime NOT NULL,
  `Currency_id` int NOT NULL,
  `Workplace_Type_id` int NOT NULL,
  `Payment_id` int NOT NULL,
  `Location_id` int NOT NULL,
  PRIMARY KEY (`Job_id`),
  KEY `fk_Job_Currency1_idx` (`Currency_id`),
  KEY `fk_Job_Workplace_Type1_idx` (`Workplace_Type_id`),
  KEY `fk_Job_Payment1_idx` (`Payment_id`),
  KEY `fk_Job_Location1_idx` (`Location_id`),
  CONSTRAINT `fk_Job_Currency1` FOREIGN KEY (`Currency_id`) REFERENCES `currency` (`Currency_id`),
  CONSTRAINT `fk_Job_Location1` FOREIGN KEY (`Location_id`) REFERENCES `location` (`Location_id`),
  CONSTRAINT `fk_Job_Payment1` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`Payment_id`),
  CONSTRAINT `fk_Job_Workplace_Type1` FOREIGN KEY (`Workplace_Type_id`) REFERENCES `workplace_type` (`Workplace_Type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Senior Frontend Software Engineer','senior','2022-07-31 00:00:00',1,1,1,1),(2,'Sr. Backend Engineer','senior','2022-07-07 00:00:00',1,2,2,2),(3,'Sr. Backend Engineer','senior','2022-05-31 00:00:00',5,3,3,3),(4,'Sr. Backend Engineer','senior','2022-05-25 00:00:00',5,2,4,4),(5,'Python Developer (4 days/week)','mid','2022-06-30 00:00:00',1,3,5,5),(6,'Python Developer (4 days/week)','mid','2022-06-15 00:00:00',1,1,6,6),(8,'Full-stack Engineer (React/TypeScript)','senior','2022-05-10 00:00:00',1,1,6,8),(9,'Senior/Regular Full-stack Engineer (React/TypeScript)','senior','2022-05-09 00:00:00',1,3,6,9),(10,'Senior iOS Engineer','senior','2022-04-22 00:00:00',1,2,6,10),(11,'Golang Developer','senior','2022-04-18 00:00:00',1,1,6,11),(12,'Mid/Senior Ad Banner Developer','senior','2022-10-24 00:00:00',1,1,6,12),(13,'Mid/Senior Creative Frontend Developer','senior','2022-09-29 00:00:00',1,1,6,13),(14,'Platform Engineer - AWS','mid','2022-04-24 00:00:00',1,1,6,14),(15,'Senior Backend Engineer','senior','2022-04-24 00:00:00',1,1,6,15),(16,'Senior Backend Engineer','senior','2022-04-19 00:00:00',1,1,6,16),(17,'Platform Engineer - AWS','mid','2022-04-19 00:00:00',5,1,6,17),(18,'Senior Elixir Backend Developer','senior','2022-11-12 00:00:00',5,1,6,18),(19,'ServiceNow Developer','mid','2022-11-12 00:00:00',5,2,6,19),(20,'Front-end developer (ReactJS)','senior','2022-04-25 00:00:00',5,3,6,20),(21,'Development Team Lead - EMEA Region','senior','2022-06-29 00:00:00',5,3,6,21),(23,'Fullstack Software Engineer (REMOTE)','senior','2022-08-11 00:00:00',1,2,6,1),(24,'Senior Data Engineer (REMOTE)','senior','2022-07-28 00:00:00',1,3,6,1),(25,'Fullstack Software Engineer (REMOTE)','senior','2022-08-02 00:00:00',1,1,6,2),(26,'Python Developer','senior','2022-07-08 00:00:00',5,1,6,3),(27,'Python Developer','senior','2022-07-08 00:00:00',5,1,6,6),(28,'Python Developer','senior','2022-07-07 00:00:00',5,1,6,21),(29,'Web Developer','senior','2022-05-02 00:00:00',5,2,6,1),(30,'Head of Engineering','senior','2022-05-31 00:00:00',1,1,6,3),(31,'Python developer','mid','2022-09-30 00:00:00',5,1,6,5),(32,'Mid/Senior React Developer','mid','2022-11-11 00:00:00',5,1,6,6),(33,'Mid/Senior React Developer','mid','2022-11-12 00:00:00',5,1,6,8),(34,'Senior UX Designer','senior','2022-08-13 00:00:00',1,1,6,1);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Location_id` int NOT NULL AUTO_INCREMENT,
  `Country_code` varchar(2) NOT NULL,
  `City` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'GB','London'),(2,'DE','Berlin'),(3,'PL','Katowice'),(4,'PL','BiaÃ¨?ystok'),(5,'PL','Krak??w'),(6,'PL','Warszawa'),(7,'GB','Londyn'),(8,'NL','Amsterdam'),(9,'GB','London'),(10,'PL','Warszawa'),(11,'CH','Zug'),(12,'PL','Warszawa'),(13,'GB','London'),(14,'PL','WrocÃ¨?aw'),(15,'GB','Southampton'),(16,'NL','Amsterdam'),(17,'GB','London'),(18,'CZ','Brno'),(19,'CZ','Prague'),(20,'PL','BiaÃ¨?ystok'),(21,'CZ','Prague');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most valued skills by experience`
--

DROP TABLE IF EXISTS `most valued skills by experience`;
/*!50001 DROP VIEW IF EXISTS `most valued skills by experience`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most valued skills by experience` AS SELECT 
 1 AS `Skill_Name`,
 1 AS `Total Value`,
 1 AS `Experience_Level`,
 1 AS `Salary_Topermanant`,
 1 AS `Currency_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `Payment_id` int NOT NULL AUTO_INCREMENT,
  `Salary_permanent` float NOT NULL,
  `Permenant` varchar(10) NOT NULL,
  `Salary_Topermanant` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,32996.6,'TRUE','47136.3871'),(2,32487.5,'TRUE','46409.16243'),(3,31387.4,'TRUE','44837.66003'),(4,31606.7,'TRUE','45150.84589'),(5,0,'FALSE','0'),(6,22091.2,'TRUE','38659.53527');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `remote only`
--

DROP TABLE IF EXISTS `remote only`;
/*!50001 DROP VIEW IF EXISTS `remote only`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `remote only` AS SELECT 
 1 AS `Title`,
 1 AS `Experience_Level`,
 1 AS `Posting_Date`,
 1 AS `Salary_permanent`,
 1 AS `Workplace_Type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `salary in location`
--

DROP TABLE IF EXISTS `salary in location`;
/*!50001 DROP VIEW IF EXISTS `salary in location`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salary in location` AS SELECT 
 1 AS `City`,
 1 AS `Country_code`,
 1 AS `Salary_Topermanant`,
 1 AS `Currency_Type`,
 1 AS `exchange_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `Skills_id` int NOT NULL AUTO_INCREMENT,
  `Skill_Name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Skill_Value` int NOT NULL,
  PRIMARY KEY (`Skills_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'React',5),(2,'Kotlin',3),(3,'Kotlin',3),(4,'Flask',3),(5,'Node.js',2),(6,'Node.js',3),(7,'Mobile',4),(8,'Go',4),(9,'JavaScript',5),(10,'Terraform',2),(11,'React',3),(12,'Terraform',2),(13,'Amazon AWS',3),(14,'Bootstrap',3),(15,'Azure',1),(16,'Testing',4),(17,'ETL',3),(18,'TypeScript',1),(19,'ETL',3),(20,'API',4),(21,'Node.js',1),(22,'Core Data',4),(23,'Python',4),(24,'REST API',3),(25,'UX',4),(26,'TypeScript',5),(27,'Backend',4),(28,'English',4),(29,'TypeScript',3),(30,'TypeScript',4),(31,'iOS',4),(32,'Git',4),(33,'CSS',5),(34,'Jenkins',3),(35,'PostgreSQL',3),(36,'ERP',3),(37,'TypeScript',2),(38,'Web Applications',4),(39,'Pandas',3),(40,'Next.js',4),(41,'GraphQL',3),(42,'Python',4),(43,'Three.js',3),(44,'JavaScript',4),(45,'unknown',0),(46,'unknown',0);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_has_job`
--

DROP TABLE IF EXISTS `skills_has_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills_has_job` (
  `Skills_id` int NOT NULL,
  `Job_id` int NOT NULL,
  PRIMARY KEY (`Skills_id`,`Job_id`),
  KEY `fk_Skills_has_Job_Job1_idx` (`Job_id`),
  KEY `fk_Skills_has_Job_Skills1_idx` (`Skills_id`),
  CONSTRAINT `fk_Skills_has_Job_Job1` FOREIGN KEY (`Job_id`) REFERENCES `job` (`Job_id`),
  CONSTRAINT `fk_Skills_has_Job_Skills1` FOREIGN KEY (`Skills_id`) REFERENCES `skills` (`Skills_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_has_job`
--

LOCK TABLES `skills_has_job` WRITE;
/*!40000 ALTER TABLE `skills_has_job` DISABLE KEYS */;
INSERT INTO `skills_has_job` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34);
/*!40000 ALTER TABLE `skills_has_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workplace_type`
--

DROP TABLE IF EXISTS `workplace_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workplace_type` (
  `Workplace_Type_id` int NOT NULL AUTO_INCREMENT,
  `Workplace_Type` varchar(45) NOT NULL,
  `Remote_Interview` varchar(10) NOT NULL,
  PRIMARY KEY (`Workplace_Type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workplace_type`
--

LOCK TABLES `workplace_type` WRITE;
/*!40000 ALTER TABLE `workplace_type` DISABLE KEYS */;
INSERT INTO `workplace_type` VALUES (1,'remote','TRUE'),(2,'remote','FALSE'),(3,'partly_remote','TRUE');
/*!40000 ALTER TABLE `workplace_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `average permeanant salary by experance level`
--

/*!50001 DROP VIEW IF EXISTS `average permeanant salary by experance level`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average permeanant salary by experance level` AS select `job`.`Experience_Level` AS `Experience_Level`,avg(`payment`.`Salary_Topermanant`) AS `Average Salary`,`currency`.`Currency_Type` AS `Currency_Type` from ((`job` join `payment` on((`job`.`Payment_id` = `payment`.`Payment_id`))) join `currency` on((`job`.`Currency_id` = `currency`.`Currency_id`))) group by `job`.`Experience_Level`,`currency`.`Currency_Type` having ('Average Salary' >= 0) order by 'Average Salary' desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highest paying jobs`
--

/*!50001 DROP VIEW IF EXISTS `highest paying jobs`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highest paying jobs` AS select `job`.`Title` AS `Title`,`job`.`Experience_Level` AS `Experience_Level`,`job`.`Posting_Date` AS `Posting_Date`,`payment`.`Salary_permanent` AS `Salary_permanent` from ((`job` join `payment` on((`job`.`Payment_id` = `payment`.`Payment_id`))) join `currency` on((`job`.`Currency_id` = `currency`.`Currency_id`))) where (`payment`.`Salary_permanent` > 0) order by `payment`.`Salary_permanent` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most valued skills by experience`
--

/*!50001 DROP VIEW IF EXISTS `most valued skills by experience`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most valued skills by experience` AS select `skills`.`Skill_Name` AS `Skill_Name`,sum(`skills`.`Skill_Value`) AS `Total Value`,`job`.`Experience_Level` AS `Experience_Level`,`payment`.`Salary_Topermanant` AS `Salary_Topermanant`,`currency`.`Currency_Type` AS `Currency_Type` from ((((`skills` join `skills_has_job` on((`skills`.`Skills_id` = `skills_has_job`.`Skills_id`))) join `job` on((`skills_has_job`.`Job_id` = `job`.`Job_id`))) join `payment` on((`job`.`Payment_id` = `payment`.`Payment_id`))) join `currency` on((`job`.`Currency_id` = `currency`.`Currency_id`))) group by `skills`.`Skill_Name`,`job`.`Experience_Level`,`payment`.`Salary_Topermanant`,`currency`.`Currency_Type` having (`payment`.`Salary_Topermanant` > 0) order by 'Total Value' desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `remote only`
--

/*!50001 DROP VIEW IF EXISTS `remote only`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `remote only` AS select `job`.`Title` AS `Title`,`job`.`Experience_Level` AS `Experience_Level`,`job`.`Posting_Date` AS `Posting_Date`,`payment`.`Salary_permanent` AS `Salary_permanent`,`workplace_type`.`Workplace_Type` AS `Workplace_Type` from (((`job` join `payment` on((`job`.`Payment_id` = `payment`.`Payment_id`))) join `currency` on((`job`.`Currency_id` = `currency`.`Currency_id`))) join `workplace_type` on((`job`.`Workplace_Type_id` = `workplace_type`.`Workplace_Type_id`))) where ((`workplace_type`.`Workplace_Type` = 'remote') and (`payment`.`Salary_permanent` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salary in location`
--

/*!50001 DROP VIEW IF EXISTS `salary in location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salary in location` AS select `locations table`.`City` AS `City`,`locations table`.`Country_code` AS `Country_code`,`locations table`.`Salary_Topermanant` AS `Salary_Topermanant`,`locations table`.`Currency_Type` AS `Currency_Type`,`locations table`.`exchange_rate` AS `exchange_rate` from (select `location`.`City` AS `City`,`location`.`Country_code` AS `Country_code`,`payment`.`Salary_Topermanant` AS `Salary_Topermanant`,`currency`.`Currency_Type` AS `Currency_Type`,`currency`.`exchange_rate` AS `exchange_rate` from (((`location` join `job` on((`location`.`Location_id` = `job`.`Location_id`))) join `payment` on((`job`.`Payment_id` = `payment`.`Payment_id`))) join `currency` on((`job`.`Currency_id` = `currency`.`Currency_id`)))) `locations table` where (`locations table`.`Salary_Topermanant` > 0) */;
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

-- Dump completed on 2024-11-21 21:00:43
