CREATE DATABASE  IF NOT EXISTS `final` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: final
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `adopter`
--

DROP TABLE IF EXISTS `adopter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adopter` (
  `adopter_name` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `adopt_date` date DEFAULT NULL,
  PRIMARY KEY (`adopter_name`),
  UNIQUE KEY `adopter_id_UNIQUE` (`adopter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adopter`
--

LOCK TABLES `adopter` WRITE;
/*!40000 ALTER TABLE `adopter` DISABLE KEYS */;
INSERT INTO `adopter` VALUES ('Crosse','Iowa City','9782792398','2020-04-05'),('Duchant','Des Monines','6165452040','2020-06-20'),('Luke','Iowa City','9232092559','2020-06-18'),('Vauter','Ames','7619194920','2020-06-20'),('Zorener','Iowa City','9315410912','2020-05-31');
/*!40000 ALTER TABLE `adopter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal` (
  `animal_id` int NOT NULL,
  `animal_name` varchar(45) DEFAULT NULL,
  `animal_type` varchar(45) DEFAULT NULL,
  `animal_age` int DEFAULT NULL,
  `animal_gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animal_id`),
  UNIQUE KEY `animal_id_UNIQUE` (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,'Benben','cat',1,'Male'),(2,'Merco','cat',3,'Male'),(3,'Xixi','cat',2,'Female'),(4,'Scotter','cat',2,'Male'),(5,'Aiden','cat',5,'Male'),(6,'Butter','cat',3,'Female'),(7,'Oscar','dog',2,'Male'),(8,'Bella','dog',2,'Female'),(9,'Molly','dog',3,'Female'),(10,'Lucky','rabbit',1,'Male');
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `immunization_after_insert` AFTER INSERT ON `animal` FOR EACH ROW begin
insert into immunization (immunization.animal_id, immunization.immunization_date) 
				values(new.animal_id, now()); 

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `immunization_after_delete` AFTER DELETE ON `animal` FOR EACH ROW begin
delete from immunization where immunization.animal_id = old.animal_id; 
				
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `animal_shelter`
--

DROP TABLE IF EXISTS `animal_shelter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animal_shelter` (
  `shelter_name` varchar(45) NOT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` int DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`shelter_name`),
  UNIQUE KEY `shelter_name_UNIQUE` (`shelter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal_shelter`
--

LOCK TABLES `animal_shelter` WRITE;
/*!40000 ALTER TABLE `animal_shelter` DISABLE KEYS */;
INSERT INTO `animal_shelter` VALUES ('Ames Animal Shelter','325 Billy Sunday Rd','Ames','Iowa',50010,'5152395530'),('Animal Rescue League of Iowa','5452 NE 22nd St','Des Moines','Iowa',50313,'5152629503'),('Iowa City Animal Care Center','3910 Napoleon Ln','Iowa City','Iowa ',52240,'3193565295');
/*!40000 ALTER TABLE `animal_shelter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `dornor_name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `donor_date` date DEFAULT NULL,
  PRIMARY KEY (`dornor_name`),
  UNIQUE KEY `dornor_id_UNIQUE` (`dornor_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES ('Fritz ','3455524386','2019-04-24'),('Garrott ','7576317966','2019-01-27'),('Jack','2282696392','2019-02-03'),('Mick','6955021672','2019-04-11'),('Nola ','3819239056','2019-11-04'),('Sonnie ','4115855755','2019-05-04');
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `immunization`
--

DROP TABLE IF EXISTS `immunization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `immunization` (
  `animal_id` int NOT NULL,
  `immunization_date` date DEFAULT NULL,
  PRIMARY KEY (`animal_id`),
  UNIQUE KEY `immu_id_UNIQUE` (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `immunization`
--

LOCK TABLES `immunization` WRITE;
/*!40000 ALTER TABLE `immunization` DISABLE KEYS */;
INSERT INTO `immunization` VALUES (1,'2020-06-12'),(2,'2020-06-20'),(3,'2020-06-18'),(4,'2020-06-20'),(5,'2020-05-31'),(6,'2020-06-12'),(7,'2020-04-02'),(8,'2020-06-12'),(9,'2020-04-02'),(10,'2020-06-12');
/*!40000 ALTER TABLE `immunization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_info`
--

DROP TABLE IF EXISTS `register_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_info` (
  `register_id` int NOT NULL AUTO_INCREMENT,
  `animal_id` int DEFAULT NULL,
  `shelter_name` varchar(45) DEFAULT NULL,
  `admin_name` varchar(45) DEFAULT NULL,
  `donor_name` varchar(45) DEFAULT NULL,
  `adopt_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`register_id`),
  UNIQUE KEY `register_id_UNIQUE` (`register_id`),
  KEY `fk_info_animal_idx` (`animal_id`),
  KEY `fk_info_donor_idx` (`donor_name`),
  KEY `fk_info_adopter_idx` (`adopt_name`),
  KEY `fk_info_ad_idx` (`admin_name`),
  KEY `fk_info_shelter_name_idx` (`shelter_name`),
  CONSTRAINT `fk_info_ad` FOREIGN KEY (`admin_name`) REFERENCES `shelter_administrator` (`admin_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_info_adopter` FOREIGN KEY (`adopt_name`) REFERENCES `adopter` (`adopter_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_info_animal` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`animal_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_info_donor` FOREIGN KEY (`donor_name`) REFERENCES `donor` (`dornor_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_info_shelter_name` FOREIGN KEY (`shelter_name`) REFERENCES `animal_shelter` (`shelter_name`),
  CONSTRAINT `fk_infor_immun` FOREIGN KEY (`animal_id`) REFERENCES `immunization` (`animal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_info`
--

LOCK TABLES `register_info` WRITE;
/*!40000 ALTER TABLE `register_info` DISABLE KEYS */;
INSERT INTO `register_info` VALUES (101,1,'Ames Animal Shelter','Britney','Mick',NULL),(102,2,'Iowa City Animal Care Center','Marnie','Jack','Vauter'),(103,3,'Ames Animal Shelter','Britney','Sonnie ','Crosse'),(104,4,'Ames Animal Shelter','Britney','Nola ','Zorener'),(105,5,'Ames Animal Shelter','Britney','Garrott ','Luke'),(106,6,'Iowa City Animal Care Center','Marnie','Garrott ',NULL),(107,7,'Ames Animal Shelter','Britney','Mick',NULL),(108,8,'Iowa City Animal Care Center','Marnie','Nola ','Duchant'),(109,9,'Animal Rescue League of Iowa','Mark','Garrott ',NULL),(110,10,'Animal Rescue League of Iowa','Mark','Fritz ',NULL);
/*!40000 ALTER TABLE `register_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_administrator`
--

DROP TABLE IF EXISTS `shelter_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_administrator` (
  `admin_name` varchar(45) NOT NULL,
  `shelter_name` varchar(45) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_name`,`shelter_name`),
  UNIQUE KEY `admin_id_UNIQUE` (`admin_name`),
  KEY `fk_admin_shelter_idx` (`shelter_name`),
  CONSTRAINT `fk_admin_shelter` FOREIGN KEY (`shelter_name`) REFERENCES `animal_shelter` (`shelter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_administrator`
--

LOCK TABLES `shelter_administrator` WRITE;
/*!40000 ALTER TABLE `shelter_administrator` DISABLE KEYS */;
INSERT INTO `shelter_administrator` VALUES ('Britney','Ames Animal Shelter','female','1077990568'),('Mark','Animal Rescue League of Iowa','male','3987302574'),('Marnie','Iowa City Animal Care Center','female','6083036359');
/*!40000 ALTER TABLE `shelter_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelter_volunteer`
--

DROP TABLE IF EXISTS `shelter_volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shelter_volunteer` (
  `volunteer_name` varchar(45) NOT NULL,
  `shelter_name` varchar(45) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`volunteer_name`),
  UNIQUE KEY `volunteer_id_UNIQUE` (`volunteer_name`),
  KEY `fk_volunteer_shelter_idx` (`shelter_name`),
  CONSTRAINT `fk_volunteer_shelter` FOREIGN KEY (`shelter_name`) REFERENCES `animal_shelter` (`shelter_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelter_volunteer`
--

LOCK TABLES `shelter_volunteer` WRITE;
/*!40000 ALTER TABLE `shelter_volunteer` DISABLE KEYS */;
INSERT INTO `shelter_volunteer` VALUES ('Caresse','Animal Rescue League of Iowa','Female','6023847506'),('Darrel','Ames Animal Shelter','Male','9194894590'),('Earvin','Iowa City Animal Care Center','Male','6805919563'),('Janka','Ames Animal Shelter','Female','2766162535'),('Maison','Iowa City Animal Care Center','Male','6642619577'),('Marge','Iowa City Animal Care Center','Female','8601409087'),('Mic','Animal Rescue League of Iowa','Male','6247092244'),('Michal','Ames Animal Shelter','Female','6015590500'),('Stacia','Iowa City Animal Care Center','Female','4758118597');
/*!40000 ALTER TABLE `shelter_volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'final'
--

--
-- Dumping routines for database 'final'
--
/*!50003 DROP FUNCTION IF EXISTS `most_donor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `most_donor`() RETURNS varchar(50) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
begin 
declare d varchar(50);     
select donor_name into d from (
select donor_name, count(donor_name) as num_of_donor from register_info 
group by donor_name order by num_of_donor desc
limit 1) as a;
return(d);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `most_type_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `most_type_animal`(shelter_prarm varchar(50)) RETURNS varchar(50) CHARSET utf8
    READS SQL DATA
    DETERMINISTIC
begin 
declare type_var varchar(50);       
select animal_type into type_var from(
select shelter_name , animal_type, count(animal_type) as number_ from (
select register_info.shelter_name , animal.animal_type from register_info 
join animal 
on register_info.animal_id = animal.animal_id 
where register_info.shelter_name = shelter_prarm) as a 
group by animal_type
order by number_ desc
limit 1) as b;
return(type_var);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `num_animal_shelter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `num_animal_shelter`(shelter_prarm varchar(50)) RETURNS int
    READS SQL DATA
    DETERMINISTIC
begin 
declare num_var int;       
select count(shelter_name) into num_var from register_info where shelter_name =shelter_prarm;
return(num_var);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `animal_no_adopter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `animal_no_adopter`()
begin                          
select register_id, register_info.animal_id, animal_name, animal_type,animal_age, animal_gender,
shelter_name, admin_name, donor_name , adopt_name from register_info 
join animal 
on register_info.animal_id = animal.animal_id  
where register_info.adopt_name is Null ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `summary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `summary`()
begin
select a.register_id, a.animal_id, a.animal_name, a.shelter_name,
       final.immunization.immunization_date,a.animal_type, a. animal_age, 
       a.animal_gender, a.admin_name,a.donor_name, a.adopt_name from (
select final.register_info.register_id,final.register_info.animal_id,final.animal.animal_name,
       final.register_info.shelter_name,final.animal.animal_type, final.animal.animal_age, final.animal.animal_gender,
       final.register_info.admin_name, final.register_info.donor_name, final.register_info.adopt_name from final.animal
	   join final.register_info
       on final.animal.animal_id = final.register_info.animal_id) as a 
       join final.immunization
       on a.animal_id = final.immunization.animal_id
      order by a.shelter_name;
      
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `track_adopter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `track_adopter`(in adopter_prarm  varCHAR(50))
begin
select b.adopter_name , b.animal_name , b.animal_type, b.animal_age, b.animal_gender,
       b.city as adopter_city , b.phone as adopter_phone , b.adopt_date  from (
select * from (
select final.register_info.animal_id,final.animal.animal_name,
       final.animal.animal_type, final.animal.animal_age, final.animal.animal_gender,
	    final.register_info.adopt_name from final.animal
	   join final.register_info
       on final.animal.animal_id = final.register_info.animal_id) as a 
       join final.adopter
       on a.adopt_name = final.adopter.adopter_name	) as b
       where adopter_name = adopter_prarm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `track_animal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `track_animal`(in animal_name_param  varCHAR(50),
							  in animal_type_param varchar(50))
begin
 select * from(
select a.register_id, a.animal_id, a.animal_name, a.shelter_name,
       final.immunization.immunization_date,a.animal_type, a. animal_age, 
       a.animal_gender, a.admin_name,a.donor_name, a.adopt_name from (
select final.register_info.register_id,final.register_info.animal_id,final.animal.animal_name,
       final.register_info.shelter_name,final.animal.animal_type, final.animal.animal_age, final.animal.animal_gender,
       final.register_info.admin_name, final.register_info.donor_name, final.register_info.adopt_name from final.animal
	   join final.register_info
       on final.animal.animal_id = final.register_info.animal_id) as a 
       join final.immunization
       on a.animal_id = final.immunization.animal_id
      order by a.shelter_name) as b
      where b.animal_name = animal_name_param and b.animal_type = animal_type_param;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `track_donor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `track_donor`(in donor_prarm  varCHAR(50))
begin
select b.donor_name , b.animal_name,b.animal_type, b.animal_age , b.animal_gender, b.phone as donor_phone ,b.donor_date from(
select * from (
select final.register_info.animal_id,final.animal.animal_name,
       final.animal.animal_type, final.animal.animal_age, final.animal.animal_gender,
	    final.register_info.donor_name from final.animal
	   join final.register_info
       on final.animal.animal_id = final.register_info.animal_id ) as a 
       join final.donor
       on a.donor_name = final.donor.dornor_name) as b 
       where b.donor_name = donor_prarm;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `track_shelter` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `track_shelter`(in shelter_prarm  varCHAR(50))
begin
select * from (
SELECT final.shelter_volunteer.shelter_name, 
	   final.shelter_volunteer.volunteer_name, 
	   final.shelter_volunteer.gender as volunteer_gender,
	   final.shelter_volunteer.phone as volunteer_phone,
       final.shelter_administrator.admin_name,
       final.shelter_administrator.gender as admin_gender,
       final.shelter_administrator.phone as admin_phone FROM final.shelter_volunteer
join final.shelter_administrator
on final.shelter_administrator.shelter_name = final.shelter_volunteer.shelter_name
) as a
where a.shelter_name = shelter_prarm;
end ;;
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

-- Dump completed on 2020-06-21 21:16:18
