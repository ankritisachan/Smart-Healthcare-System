CREATE DATABASE  IF NOT EXISTS `shs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `shs`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: shs
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `availability` (
  `availabilityid` int(11) NOT NULL AUTO_INCREMENT,
  `doctorid` varchar(45) DEFAULT NULL,
  `half_flag` int(11) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `leave_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`availabilityid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` VALUES (1,'1',1,'wednesday',0),(2,'2',2,'wednesday',0),(4,'2',1,'wednesday',0),(7,'4',2,'monday',0),(8,'7',2,'monday',0),(9,'7',3,'wednesday',0),(10,'5',2,'monday',0),(11,'5',1,'friday',0),(12,'4',1,'friday',0);
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `deptid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `hod` int(11) DEFAULT NULL,
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Medicine','3454',1),(2,'ENT','3432',4),(3,'Optic','2124',2),(4,'Cardiaology','4865',1),(5,'Immunology','4589',1),(6,'Anaesthesia','5213',2),(7,'Dermatology','4879',3),(8,'Endocrinology','5896',3),(9,'Gynecology','5213',2),(10,'Neurology','1234',3),(11,'Orthopedic','5478',2),(12,'Pediatric','8547',4);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `doctor` (
  `doctorid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `consultation_fees` double DEFAULT NULL,
  `years_of_exp` int(11) DEFAULT NULL,
  `deptID` int(11) DEFAULT NULL,
  `supervisorID` int(11) DEFAULT NULL,
  `qualification` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `phoneNumber` bigint(12) DEFAULT NULL,
  `specialization` varchar(80) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'vibha','C254, Karol Bagh, New Delhi, India, 110989',300,12,1,1,'MBBS','Specialist',7088987656,'Cardiologist','Surgeon','vibha123'),(2,'nita','C263, Karol Bagh, New Delhi, India, 123456',400,10,1,1,'MBBS','Senior Resident',7099865456,'Medicine Specialist','Physician','nita'),(3,'neha','12, Future Tower Anand Vihar, New Delhi, India, 256',350,8,1,2,'MBBS','Specialist',1321320000,'Medicine Specialist','Physician','neha123'),(4,'Aakanchha','aku, aku, aku, aku, 987',1000,5,10,2,'MBBS','Senior Specialist',2222222222,'Neurologist','Surgeon','aku'),(5,'akshat','ak, ak, ak, ak, 123',500,5,10,4,'MD','Senior Resident',4567894560,'Neurologist','Physician','ak'),(7,'Nisha','11/2, Netaji Colony, New Delhi, India, 110908',200,2,4,1,'MBBS','Junior Resident',7099876545,'Medicine Specialist','Physician','nisha123');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `userid` varchar(160) NOT NULL,
  `password` varchar(80) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('aaa','1234','Patient'),('abc','abc','Patient'),('admin','admin','Admin'),('ak','ak','Doctor'),('aku','aku','Doctor'),('bbb','bbb','Patient'),('neha123','neha123','Doctor'),('nisha123','nisha123','Doctor'),('nita','nita','doctor'),('rina','rina','Patient'),('vibha123','vibha123','Doctor');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_test`
--

DROP TABLE IF EXISTS `medical_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medical_test` (
  `mtid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(56) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `fees` double DEFAULT NULL,
  PRIMARY KEY (`mtid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_test`
--

LOCK TABLES `medical_test` WRITE;
/*!40000 ALTER TABLE `medical_test` DISABLE KEYS */;
INSERT INTO `medical_test` VALUES (1,'MRI Scan',NULL,2500),(2,'X-Ray',NULL,300),(3,'Blood Test',NULL,500),(4,'Sonography',NULL,2000),(5,'Bone Density Test',NULL,1500),(6,'ECG',NULL,500),(7,'CT Scan',NULL,2000),(8,'Blood Sugar Test',NULL,250),(9,'Thyroid Test',NULL,500),(10,'Eye Checkup',NULL,1500);
/*!40000 ALTER TABLE `medical_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_tests_prescribed`
--

DROP TABLE IF EXISTS `medical_tests_prescribed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medical_tests_prescribed` (
  `medical_test_id` int(11) DEFAULT NULL,
  `results` varchar(250) DEFAULT NULL,
  `TID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_tests_prescribed`
--

LOCK TABLES `medical_tests_prescribed` WRITE;
/*!40000 ALTER TABLE `medical_tests_prescribed` DISABLE KEYS */;
INSERT INTO `medical_tests_prescribed` VALUES (3,NULL,'Medi_PAT_5_1'),(6,NULL,'Medi_PAT_5_1'),(3,NULL,'Medi_PAT_5_1'),(6,NULL,'Medi_PAT_5_1'),(1,NULL,'Medi_PAT_6_3'),(10,NULL,'Medi_PAT_6_2'),(7,NULL,'Neur_PAT_8_6'),(1,NULL,'Neur_PAT_8_6');
/*!40000 ALTER TABLE `medical_tests_prescribed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicine` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `disease_category` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'Saridon',NULL,50,NULL),(2,'Paracetamol',NULL,10,NULL),(3,'Combiflam',NULL,90,NULL),(4,'Vertigon',NULL,35,NULL),(5,'Aspirin',NULL,10,NULL),(6,'Cetrizine',NULL,30,NULL),(7,'Eyefresh plus',NULL,250,NULL),(8,'Clobetasol Cream',NULL,98,NULL),(9,'Olza Pus',NULL,350,NULL),(10,'Corex',NULL,110,NULL);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine_prescribed`
--

DROP TABLE IF EXISTS `medicine_prescribed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicine_prescribed` (
  `medicineID` int(11) DEFAULT NULL,
  `TID` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine_prescribed`
--

LOCK TABLES `medicine_prescribed` WRITE;
/*!40000 ALTER TABLE `medicine_prescribed` DISABLE KEYS */;
INSERT INTO `medicine_prescribed` VALUES (6,'Medi_PAT_5_1'),(2,'Medi_PAT_5_1'),(8,'Medi_PAT_5_1'),(2,'Medi_PAT_5_1'),(6,'Medi_PAT_5_1'),(1,'Medi_PAT_6_3'),(7,'Medi_PAT_6_2'),(2,'Medi_PAT_6_2'),(2,'Neur_PAT_8_6'),(1,'Neur_PAT_8_6');
/*!40000 ALTER TABLE `medicine_prescribed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient` (
  `patientid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phoneNumber` bigint(11) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (5,'aaa','11, asdf, New Delhi, India, 201889',9678990989,'aaa@gmail.com','aaa'),(6,'abc','bac, bac, bac, bac, 123',1234567890,'abc@gmail.com','abc'),(7,'bbb','bbb, bbb, bbb, bbb, 123',1234567890,'bbb@gmail.com','bbb'),(8,'Rina','12, JM Market, New Delhi, India, 102009',9000878912,'rina@gmail.com','rina');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `treatment` (
  `TreatmentID` varchar(50) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `patientType` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `treatmentStatus` varchar(45) DEFAULT NULL,
  `problemSelected` varchar(80) DEFAULT NULL,
  `diseaseIdentified` varchar(80) DEFAULT NULL,
  `day_of_visit` varchar(10) DEFAULT NULL,
  `day_of_discharge` varchar(20) DEFAULT NULL,
  `treatment_amount` double DEFAULT '0',
  `visit_count` double DEFAULT NULL,
  `patient_condition` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TreatmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES ('Card_PAT_8_5',8,7,'OPD','ACTIVE','Cardiaology',NULL,'2018-11-21',NULL,0,NULL,NULL),('Medi_PAT_5_1',5,1,'OPD','DONE','Medicine','Allergy','2018-11-14',NULL,1340,NULL,'Critical'),('Medi_PAT_6_2',6,2,'OPD','ACTIVE','Medicine','Allergy','2018-11-21',NULL,2660,NULL,'Non Critical'),('Medi_PAT_6_3',6,1,'Local','DONE','Medicine','Sore Eyes','2018-11-18','2018-11-19',4350,NULL,'Non Critical'),('Medi_PAT_8_4',8,1,'OPD','ACTIVE','Medicine',NULL,'2018-11-28',NULL,0,NULL,NULL),('Neur_PAT_8_6',8,5,'OPD','DONE','Neurology','Headache','2018-11-30','2018-11-19',5060,NULL,'Non Critical');
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-19 23:11:57
