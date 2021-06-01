CREATE DATABASE  IF NOT EXISTS `globe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `globe`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: globe
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `capitals`
--

DROP TABLE IF EXISTS `capitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `capital_name` varchar(45) DEFAULT NULL,
  `population` int DEFAULT NULL,
  `subway` enum('Y','N') DEFAULT NULL,
  `mayor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mayor_id` (`mayor_id`),
  CONSTRAINT `capitals_ibfk_1` FOREIGN KEY (`mayor_id`) REFERENCES `mayors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitals`
--

LOCK TABLES `capitals` WRITE;
/*!40000 ALTER TABLE `capitals` DISABLE KEYS */;
INSERT INTO `capitals` VALUES (1,'Stockholm',1236457,'Y',7),(2,'Bratislava',452369,'N',3),(3,'Budapest',1526369,'Y',13),(4,'Prague',1236458,'Y',2),(5,'Cairo',9456321,'N',14),(6,'Moscow',9568236,'Y',5),(7,'Beijing',21569874,'Y',12),(8,'Tokio',10569874,'Y',11),(9,'Rabat',580698,'N',15),(10,'Berlin',3654896,'Y',8),(11,'Helsinki',635145,'N',10),(12,'Washington',695236,'N',6),(13,'Soul',9789354,'Y',1),(14,'Montevideo',1365896,'N',9),(15,'Lima',10365412,'Y',4),(16,'Ottava',1265895,'Y',20),(17,'Yaounde',2758634,'N',16),(18,'Buenos Aires',3056954,'N',18),(19,'Mexico City',9247896,'Y',19),(20,'Asuncion',524658,'N',17);
/*!40000 ALTER TABLE `capitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cont_avg_gdp_pc`
--

DROP TABLE IF EXISTS `cont_avg_gdp_pc`;
/*!50001 DROP VIEW IF EXISTS `cont_avg_gdp_pc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cont_avg_gdp_pc` AS SELECT 
 1 AS `cont_name`,
 1 AS `avg_gdp_pc`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `continents`
--

DROP TABLE IF EXISTS `continents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `continents` (
  `id` smallint NOT NULL,
  `cont_name` varchar(30) DEFAULT NULL,
  `population` bigint DEFAULT NULL,
  `area` int DEFAULT NULL,
  `population_density` int DEFAULT NULL,
  `number_of_staes` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continents`
--

LOCK TABLES `continents` WRITE;
/*!40000 ALTER TABLE `continents` DISABLE KEYS */;
INSERT INTO `continents` VALUES (1,'Europe',747636026,22134900,34,48),(2,'Asia',4641054775,31033131,150,51),(3,'Africa',1340598147,29648481,45,58),(4,'North America',592072212,21330000,28,41),(5,'South America',430759766,17461112,25,14),(6,'Australia/Oceania',43111704,8486460,5,23),(7,'Antartica',0,13720000,0,0);
/*!40000 ALTER TABLE `continents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mayors`
--

DROP TABLE IF EXISTS `mayors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mayors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `started_office` date DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mayors`
--

LOCK TABLES `mayors` WRITE;
/*!40000 ALTER TABLE `mayors` DISABLE KEYS */;
INSERT INTO `mayors` VALUES (1,'Dohyun','Daewoo','1965-04-03','2018-04-09','M'),(2,'Jana','Pekna','1985-04-06','2019-04-08','F'),(3,'Katarina','Novak','1978-04-06','2018-03-01','F'),(4,'Chose','Salinas','1985-04-08','2014-04-07','M'),(5,'Sergei','Oveckin','1962-04-03','2018-04-03','M'),(6,'Peter','Kentacky','1974-02-03','2014-08-07','M'),(7,'Swan','Johansson','1958-04-01','2013-04-08','M'),(8,'Helena','Schmitke','1965-04-03','2002-04-03','F'),(9,'Selena','Lopez','1978-04-03','2010-04-07','F'),(10,'Anu','Nokia','1980-03-04','2008-03-04','F'),(11,'Aki','Akasuki','1968-04-03','2010-03-04','F'),(12,'Kai','Mai','1978-04-03','2004-05-03','M'),(13,'Simon','Toth','1956-04-04','2002-04-05','M'),(14,'Mohamad','Ibnsina','1989-04-06','2017-06-05','M'),(15,'Jarmush','Elpatel','1978-02-06','2015-07-08','F'),(16,'Claude','Melingui','1989-04-08','2019-07-03','M'),(17,'Pedro','Santiago','1965-07-11','2015-10-12','M'),(18,'Luciana','Catalina','1969-09-25','2018-05-30','F'),(19,'Claudia','Pardo','1980-07-15','2017-11-13','F'),(20,'Jim','Watson','1962-10-18','2010-11-27','M');
/*!40000 ALTER TABLE `mayors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidents`
--

DROP TABLE IF EXISTS `presidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presidents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `started_office` date DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `email_address` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidents`
--

LOCK TABLES `presidents` WRITE;
/*!40000 ALTER TABLE `presidents` DISABLE KEYS */;
INSERT INTO `presidents` VALUES (1,'Zuzana','Caputova','1975-04-06','2017-01-01','F','zuzana@gmai.com'),(2,'Milos','Zeman','1954-04-09','2013-05-05','M','milos@yahoo.com'),(3,'Angela','Merkel','1958-04-06','2013-04-06','F','angela@gmail.com'),(4,'Pedro','Moldovar','1958-04-05','2015-04-06','M','pedro@aol.com'),(5,'Edu','Mbappe','1965-07-02','2018-04-03','F','edu@aol.com'),(6,'Tuomo','Jarvinen','1962-04-05','2014-07-08','M','tuomo@gmail.com'),(7,'Ibrahim','Sissi','1958-02-01','2016-04-02','M','ibrahim@yahoo.com'),(8,'Mun','Cain','1972-04-02','2017-04-03','M','mun@yahoo.com'),(9,'Attila','Szabo','1967-04-08','2015-04-08','M','attila@yahoo.com'),(10,'Vladimir','Putin','1956-04-03','2000-04-02','M','vladimir@gmail.com'),(11,'Alejandra','Lopez','1969-04-01','2014-07-05','F','alejandrar@yahoo.com'),(12,'Ikea','Ericsson','1976-04-03','2012-04-01','F','ikea@yahoo.com'),(13,'Donald','Trump','1962-04-07','2016-04-02','M','donald@gmail.com'),(14,'Myjagi','Yamamoto','1989-04-05','2018-04-05','M','myjagi@aol.com'),(15,'Li','Wang','1980-01-09','2017-05-08','F','li@yahoo.com'),(16,'Mario','Benitez','1959-11-23','2015-10-18','M','mario@gmail.com'),(17,'Alberto','Fernandez','1958-09-28','2016-10-17','M','alberto@yahoo.com'),(18,'Justin','Trudeau','1975-10-24','2017-11-14','M','justin@aol.com'),(19,'Andrea','Obrador','1981-11-29','2019-10-15','F','andrea@gmail.com'),(20,'Paul','Byia','1962-12-25','2016-09-23','M','paul@aol.com');
/*!40000 ALTER TABLE `presidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `state_area`
--

DROP TABLE IF EXISTS `state_area`;
/*!50001 DROP VIEW IF EXISTS `state_area`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `state_area` AS SELECT 
 1 AS `state_name`,
 1 AS `cont_name`,
 1 AS `areas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `state_gdp_per_cap`
--

DROP TABLE IF EXISTS `state_gdp_per_cap`;
/*!50001 DROP VIEW IF EXISTS `state_gdp_per_cap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `state_gdp_per_cap` AS SELECT 
 1 AS `state_name`,
 1 AS `cont_name`,
 1 AS `gdp_per_cap`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `state_population`
--

DROP TABLE IF EXISTS `state_population`;
/*!50001 DROP VIEW IF EXISTS `state_population`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `state_population` AS SELECT 
 1 AS `state_name`,
 1 AS `cont_name`,
 1 AS `citizens`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(45) DEFAULT NULL,
  `continent_id` smallint DEFAULT NULL,
  `population` int DEFAULT NULL,
  `area` int DEFAULT NULL,
  `GDP_per_capita` float DEFAULT NULL,
  `capital_id` int DEFAULT NULL,
  `president_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `capital_id` (`capital_id`),
  KEY `president_id` (`president_id`),
  KEY `continent_id` (`continent_id`),
  CONSTRAINT `states_ibfk_1` FOREIGN KEY (`capital_id`) REFERENCES `capitals` (`id`),
  CONSTRAINT `states_ibfk_2` FOREIGN KEY (`president_id`) REFERENCES `presidents` (`id`),
  CONSTRAINT `states_ibfk_3` FOREIGN KEY (`continent_id`) REFERENCES `continents` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Sweden',1,9568124,449365,46895.1,1,12),(2,'Slovakia',1,5423654,49569,30125.8,2,1),(3,'Egypt',3,101369745,1010260,5926.58,5,7),(4,'Russia',2,144256987,17126400,25569.6,6,10),(5,'Uruguay',5,3456258,176258,15896.6,14,4),(6,'Japan',2,126963357,378654,40256.9,8,14),(7,'Czechia',1,10569329,78695,33570,4,2),(8,'Morocco',3,36896215,446896,8965.74,9,5),(9,'USA',4,328963542,9885630,62369.9,12,13),(10,'Hungary',1,9584842,93015,28963.3,3,9),(11,'Finland',1,5518963,338962,43987.5,11,6),(12,'China',2,1398563984,9597260,15239.5,7,15),(13,'Peru',5,32569812,1284630,9568.21,15,11),(14,'Germany',1,83695426,358698,48693.7,10,3),(15,'South Korea',2,51698326,101258,35698,13,8),(16,'Argentina',5,44945284,2785694,20654.2,18,17),(17,'Paraguay',5,7045632,406589,15896.5,20,16),(18,'Canada',4,38456214,9984562,49652.4,16,18),(19,'Mexico',4,126558874,1956214,10256.4,19,19),(20,'Camerun',3,26589457,475896,3845,17,20);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'globe'
--
/*!50003 DROP PROCEDURE IF EXISTS `capital_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `capital_info`(in choose_state varchar(30))
begin
select s.state_name, upper(c.capital_name) as capital_name, format(c.population,0) as population, concat(m.first_name, ' ', m.last_name) as mayors_name from states as s
join capitals as c
on s.capital_id = c.id
join mayors as m
on c.mayor_id = m.id
where s.state_name = choose_state;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mayor_of_capital` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mayor_of_capital`(in choose_state varchar(30))
begin
select s.state_name, c.capital_name, concat(upper(m.first_name), ' ', upper(m.last_name)) as mayors_name, m.gender, year(now())-year(m.date_of_birth) as age, year(now())-year(m.started_office) as years_in_office from states as s
join capitals as c
on s.capital_id = c.id
join mayors as m
on c.mayor_id = m.id
where s.state_name = choose_state;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `president_of_state` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `president_of_state`(in choose_state varchar(30))
begin
select s.state_name, concat(upper(p.first_name), ' ', upper(p.last_name)) as presidents_name, p.gender, year(now())-year(p.date_of_birth) as age, year(now())-year(p.started_office) as years_of_presidency from states as s
join presidents as p
on s.president_id = p.id
where s.state_name = choose_state;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `state_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `state_info`(in choose_state varchar(30))
begin
select s.state_name, co.cont_name as continent, format(s.population,0) as population, c.capital_name, concat(p.first_name, ' ', p.last_name) as president, concat(format(s.area,0), ' km2') as area, concat('$', format(s.GDP_per_capita,2)) as GDP_per_capita from states as s
join capitals as c
on s.capital_id = c.id
join presidents as p
on s.president_id = p.id
join continents as co
on s.continent_id = co.id
where s.state_name = choose_state;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `cont_avg_gdp_pc`
--

/*!50001 DROP VIEW IF EXISTS `cont_avg_gdp_pc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cont_avg_gdp_pc` AS select `c`.`cont_name` AS `cont_name`,concat('$',convert(format(avg(`s`.`GDP_per_capita`),2) using utf8mb4)) AS `avg_gdp_pc` from (`states` `s` join `continents` `c` on((`c`.`id` = `s`.`continent_id`))) group by `c`.`cont_name` order by avg(`s`.`GDP_per_capita`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `state_area`
--

/*!50001 DROP VIEW IF EXISTS `state_area`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `state_area` AS select `s`.`state_name` AS `state_name`,`c`.`cont_name` AS `cont_name`,concat(convert(format(`s`.`area`,0) using utf8mb4),' km2') AS `areas` from (`states` `s` join `continents` `c` on((`c`.`id` = `s`.`continent_id`))) order by `s`.`area` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `state_gdp_per_cap`
--

/*!50001 DROP VIEW IF EXISTS `state_gdp_per_cap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `state_gdp_per_cap` AS select `s`.`state_name` AS `state_name`,`c`.`cont_name` AS `cont_name`,concat('$ ',convert(format(`s`.`GDP_per_capita`,2) using utf8mb4)) AS `gdp_per_cap` from (`states` `s` join `continents` `c` on((`c`.`id` = `s`.`continent_id`))) order by `s`.`GDP_per_capita` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `state_population`
--

/*!50001 DROP VIEW IF EXISTS `state_population`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `state_population` AS select `s`.`state_name` AS `state_name`,`c`.`cont_name` AS `cont_name`,format(`s`.`population`,0) AS `citizens` from (`states` `s` join `continents` `c` on((`c`.`id` = `s`.`continent_id`))) order by `s`.`population` desc */;
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

-- Dump completed on 2021-06-01 13:36:44
