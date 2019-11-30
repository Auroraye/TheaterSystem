-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: team39
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `adcomdetailemp`
--

DROP TABLE IF EXISTS `adcomdetailemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adcomdetailemp` (
  `empFirstname` varchar(30) NOT NULL,
  `empLastname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adcomdetailemp`
--

LOCK TABLES `adcomdetailemp` WRITE;
/*!40000 ALTER TABLE `adcomdetailemp` DISABLE KEYS */;
INSERT INTO `adcomdetailemp` VALUES ('Dwight','Schrute'),('Alan','Turing');
/*!40000 ALTER TABLE `adcomdetailemp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adcomdetailth`
--

DROP TABLE IF EXISTS `adcomdetailth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adcomdetailth` (
  `thName` varchar(45) NOT NULL,
  `thManagerUsername` varchar(45) NOT NULL,
  `thCity` varchar(20) NOT NULL,
  `thState` char(2) NOT NULL,
  `thCapacity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adcomdetailth`
--

LOCK TABLES `adcomdetailth` WRITE;
/*!40000 ALTER TABLE `adcomdetailth` DISABLE KEYS */;
INSERT INTO `adcomdetailth` VALUES ('Cinema Star','entropyRox','San Francisco','CA',4),('Jonathan\'s Movies','georgep','Seattle','WA',2),('Star Movies','radioactivePoRa','Boulder','CA',5);
/*!40000 ALTER TABLE `adcomdetailth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adfiltercom`
--

DROP TABLE IF EXISTS `adfiltercom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adfiltercom` (
  `comName` varchar(45) NOT NULL,
  `numCityCover` bigint(21) NOT NULL DEFAULT '0',
  `numTheater` bigint(21) NOT NULL DEFAULT '0',
  `numEmployee` bigint(21) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adfiltercom`
--

LOCK TABLES `adfiltercom` WRITE;
/*!40000 ALTER TABLE `adfiltercom` DISABLE KEYS */;
INSERT INTO `adfiltercom` VALUES ('Awesome Theater Company',1,1,1);
/*!40000 ALTER TABLE `adfiltercom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adfilteruser`
--

DROP TABLE IF EXISTS `adfilteruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adfilteruser` (
  `Username` varchar(45) NOT NULL,
  `creditCardCount` bigint(21) NOT NULL DEFAULT '0',
  `userType` varchar(15) NOT NULL DEFAULT '',
  `status` enum('Declined','Approved','Pending') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adfilteruser`
--

LOCK TABLES `adfilteruser` WRITE;
/*!40000 ALTER TABLE `adfilteruser` DISABLE KEYS */;
INSERT INTO `adfilteruser` VALUES ('wonderwoman',0,'CustomerManager','Pending'),('theScienceGuy',1,'Customer','Approved'),('thePiGuy3.14',1,'Customer','Approved'),('texasStarKarate',0,'User','Declined'),('smith_j',0,'User','Declined'),('rubble3',0,'Customer','Pending'),('RitzLover28',1,'Customer','Approved'),('radioactivePoRa',0,'Manager','Approved'),('programerAAL',1,'Customer','Approved'),('notFullMetal',1,'Customer','Approved'),('manager4',0,'Manager','Approved'),('manager3',0,'Manager','Approved'),('manager2',0,'Manager','Approved'),('manager1',0,'Manager','Approved'),('isthisthekrustykrab',3,'Customer','Approved'),('imready',1,'Customer','Approved'),('imbatman',0,'Manager','Approved'),('ilikemoney$$',3,'Customer','Approved'),('ghcghc',0,'Manager','Approved'),('georgep',5,'CustomerManager','Approved'),('gdanger',0,'User','Declined'),('fullMetal',1,'Customer','Approved'),('flinstone4',0,'User','Pending'),('fatherAI',0,'Manager','Approved'),('entropyRox',2,'CustomerManager','Approved'),('eeqmcsquare',1,'Customer','Approved'),('does2Much',1,'Customer','Approved'),('DNAhelix',1,'Customer','Approved'),('cool_class4400',1,'CustomerAdmin','Approved'),('clarinetbeast',0,'Customer','Approved'),('calcwizard',1,'Customer','Approved'),('calcultron2',2,'Customer','Approved'),('calcultron',2,'CustomerManager','Approved'),('b_allen',0,'Manager','Pending');
/*!40000 ALTER TABLE `adfilteruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `Username` varchar(45) NOT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `fk4` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('cool_class4400');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `CompanyName` varchar(45) NOT NULL,
  PRIMARY KEY (`CompanyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('4400 Theater Company'),('AI Theater Company'),('Awesome Theater Company'),('comName'),('EZ Theater Company');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosfiltermovie`
--

DROP TABLE IF EXISTS `cosfiltermovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cosfiltermovie` (
  `movName` varchar(45) NOT NULL,
  `thName` varchar(45) NOT NULL,
  `thStreet` varchar(45) NOT NULL,
  `thCity` varchar(20) NOT NULL,
  `thState` char(2) NOT NULL,
  `thZipcode` char(10) NOT NULL,
  `comName` varchar(45) NOT NULL,
  `movPlayDate` date NOT NULL,
  `movReleaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosfiltermovie`
--

LOCK TABLES `cosfiltermovie` WRITE;
/*!40000 ALTER TABLE `cosfiltermovie` DISABLE KEYS */;
INSERT INTO `cosfiltermovie` VALUES ('4400 The Movie','Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company','2019-09-12','2019-08-12'),('George P Burdell\'s Life Story','Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company','2010-05-20','1927-08-12'),('Georgia Tech The Movie','Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company','2019-09-30','1985-08-13'),('How to Train Your Dragon','Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company','2010-04-02','2010-03-21'),('Spaceballs','Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company','2000-02-02','1987-06-24'),('The King\'s Speech','Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company','2019-12-20','2010-11-26'),('Calculus Returns: A ML Story','ML Movies','314 Pi St','Pallet Town','KS','31415','AI Theater Company','2019-10-10','2019-09-19'),('Calculus Returns: A ML Story','ML Movies','314 Pi St','Pallet Town','KS','31415','AI Theater Company','2019-12-30','2019-09-19'),('Spaceballs','ML Movies','314 Pi St','Pallet Town','KS','31415','AI Theater Company','2010-04-02','1987-06-24'),('Spaceballs','ML Movies','314 Pi St','Pallet Town','KS','31415','AI Theater Company','2023-01-23','1987-06-24'),('Spider-Man: Into the Spider-Verse','ML Movies','314 Pi St','Pallet Town','KS','31415','AI Theater Company','2019-09-30','2018-12-01'),('4400 The Movie','ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company','2019-10-12','2019-08-12'),('Georgia Tech The Movie','ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company','1985-08-13','1985-08-13'),('Georgia Tech The Movie','ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company','2010-04-02','1985-08-13'),('The First Pokemon Movie','ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company','2010-04-02','1998-07-19'),('The First Pokemon Movie','ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company','2018-07-19','1998-07-19'),('George P Burdell\'s Life Story','Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','2019-07-14','1927-08-12'),('George P Burdell\'s Life Story','Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','2019-10-22','1927-08-12'),('How to Train Your Dragon','Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','2010-03-22','2010-03-21'),('How to Train Your Dragon','Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','2010-03-23','2010-03-21'),('Spaceballs','Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','1999-06-24','1987-06-24'),('The King\'s Speech','Main Movies','123 Main St','New York','NY','10001','EZ Theater Company','2019-12-20','2010-11-26'),('4400 The Movie','Star Movies','745 GT St','Atlanta','GA','30332','EZ Theater Company','2019-08-12','2019-08-12'),('How to Train Your Dragon','Star Movies','745 GT St','Atlanta','GA','30332','EZ Theater Company','2010-03-25','2010-03-21'),('Spaceballs','Star Movies','745 GT St','Atlanta','GA','30332','EZ Theater Company','2019-12-06','1987-06-24');
/*!40000 ALTER TABLE `cosfiltermovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cosviewhistory`
--

DROP TABLE IF EXISTS `cosviewhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cosviewhistory` (
  `movName` varchar(45) NOT NULL,
  `thName` varchar(45) NOT NULL,
  `comName` varchar(45) NOT NULL,
  `creditCardNum` char(16) NOT NULL,
  `movPlayDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cosviewhistory`
--

LOCK TABLES `cosviewhistory` WRITE;
/*!40000 ALTER TABLE `cosviewhistory` DISABLE KEYS */;
INSERT INTO `cosviewhistory` VALUES ('Spaceballs','ML Movies','AI Theater Company','1111111111111100','2010-04-02'),('Spaceballs','ML Movies','AI Theater Company','1111111111111100','2023-01-23'),('How to Train Your Dragon','Star Movies','EZ Theater Company','1111111111111100','2010-03-25'),('How to Train Your Dragon','Cinema Star','4400 Theater Company','1111111111111111','2010-04-02'),('The First Pokemon Movie','ABC Theater','Awesome Theater Company','1111111111111111','2010-04-02'),('How to Train Your Dragon','Main Movies','EZ Theater Company','1111111111111111','2010-03-22'),('How to Train Your Dragon','Main Movies','EZ Theater Company','1111111111111111','2010-03-23');
/*!40000 ALTER TABLE `cosviewhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `credit_card` (
  `CreditCardNum` char(16) NOT NULL,
  `Owner` varchar(45) NOT NULL,
  PRIMARY KEY (`CreditCardNum`),
  KEY `fk7_idx` (`Owner`),
  CONSTRAINT `fk7` FOREIGN KEY (`Owner`) REFERENCES `customer` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES ('1111111111000000','calcultron'),('987654321','calcultron'),('1111111100000000','calcultron2'),('1111111110000000','calcultron2'),('1111111111100000','calcwizard'),('2222222222000000','cool_class4400'),('2220000000000000','DNAhelix'),('2222222200000000','does2Much'),('2222222222222200','eeqmcsquare'),('2222222222200000','entropyRox'),('2222222222220000','entropyRox'),('1100000000000000','fullMetal'),('1111111111110000','georgep'),('1111111111111000','georgep'),('1111111111111100','georgep'),('1111111111111110','georgep'),('1111111111111111','georgep'),('2222222222222220','ilikemoney$$'),('2222222222222222','ilikemoney$$'),('9000000000000000','ilikemoney$$'),('1111110000000000','imready'),('1110000000000000','isthisthekrustykrab'),('1111000000000000','isthisthekrustykrab'),('1111100000000000','isthisthekrustykrab'),('1000000000000000','notFullMetal'),('2222222000000000','programerAAL'),('3333333333333300','RitzLover28'),('2222222220000000','thePiGuy3.14'),('2222222222222000','theScienceGuy');
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Username` varchar(45) NOT NULL,
  PRIMARY KEY (`Username`),
  CONSTRAINT `fk6` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('calcultron'),('calcultron2'),('calcwizard'),('clarinetbeast'),('cool_class4400'),('DNAhelix'),('does2Much'),('eeqmcsquare'),('entropyRox'),('fullMetal'),('georgep'),('ilikemoney$$'),('imready'),('isthisthekrustykrab'),('notFullMetal'),('programerAAL'),('RitzLover28'),('rubble3'),('thePiGuy3.14'),('theScienceGuy'),('wonderwoman');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerviewmovie`
--

DROP TABLE IF EXISTS `customerviewmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerviewmovie` (
  `CreditCardNumber` char(16) NOT NULL,
  `CompanyName` varchar(45) NOT NULL,
  `TheaterName` varchar(45) NOT NULL,
  `MovieName` varchar(45) NOT NULL,
  `MovieReleaseDate` date NOT NULL,
  `PlayDate` date NOT NULL,
  PRIMARY KEY (`CreditCardNumber`,`CompanyName`,`TheaterName`,`MovieName`,`MovieReleaseDate`,`PlayDate`),
  KEY `fk13_idx` (`CompanyName`,`TheaterName`,`MovieName`,`MovieReleaseDate`,`PlayDate`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk12` FOREIGN KEY (`CreditCardNumber`) REFERENCES `credit_card` (`CreditCardNum`),
  CONSTRAINT `fk13` FOREIGN KEY (`CompanyName`, `TheaterName`, `MovieName`, `MovieReleaseDate`, `PlayDate`) REFERENCES `movieplay` (`CompanyName`, `TheaterName`, `MovieName`, `MovieReleaseDate`, `playDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerviewmovie`
--

LOCK TABLES `customerviewmovie` WRITE;
/*!40000 ALTER TABLE `customerviewmovie` DISABLE KEYS */;
INSERT INTO `customerviewmovie` VALUES ('1111111111111100','AI Theater Company','ML Movies','Spaceballs','1987-06-24','2010-04-02'),('1111111111111100','AI Theater Company','ML Movies','Spaceballs','1987-06-24','2023-01-23'),('1111111111111100','EZ Theater Company','Star Movies','How to Train Your Dragon','2010-03-21','2010-03-25'),('1111111111111111','4400 Theater Company','Cinema Star','How to Train Your Dragon','2010-03-21','2010-04-02'),('1111111111111111','Awesome Theater Company','ABC Theater','The First Pokemon Movie','1998-07-19','2010-04-02'),('1111111111111111','EZ Theater Company','Main Movies','How to Train Your Dragon','2010-03-21','2010-03-22'),('1111111111111111','EZ Theater Company','Main Movies','How to Train Your Dragon','2010-03-21','2010-03-23');
/*!40000 ALTER TABLE `customerviewmovie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `magic44_answers`
--

DROP TABLE IF EXISTS `magic44_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic44_answers` (
  `step_ID` int(11) NOT NULL,
  `row_hash` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic44_answers`
--

LOCK TABLES `magic44_answers` WRITE;
/*!40000 ALTER TABLE `magic44_answers` DISABLE KEYS */;
INSERT INTO `magic44_answers` VALUES (1,'theScienceGuy#1#Customer#Approved'),(1,'thePiGuy3.14#1#Customer#Approved'),(1,'texasStarKarate#0#User#Declined'),(1,'smith_j#0#User#Pending'),(1,'RitzLover28#1#Customer#Approved'),(1,'radioactivePoRa#0#Manager#Approved'),(1,'programerAAL#1#Customer#Approved'),(1,'notFullMetal#1#Customer#Approved'),(1,'manager4#0#Manager#Approved'),(1,'manager3#0#Manager#Approved'),(1,'manager2#0#Manager#Approved'),(1,'manager1#0#Manager#Approved'),(1,'isthisthekrustykrab#3#Customer#Approved'),(1,'imready#1#Customer#Approved'),(1,'imbatman#0#Manager#Approved'),(1,'ilikemoney$$#3#Customer#Approved'),(1,'ghcghc#0#Manager#Approved'),(1,'georgep#5#CustomerManager#Approved'),(1,'gdanger#0#User#Declined'),(1,'fullMetal#1#Customer#Approved'),(1,'fatherAI#0#Manager#Approved'),(1,'entropyRox#2#CustomerManager#Approved'),(1,'eeqmcsquare#1#Customer#Approved'),(1,'does2Much#1#Customer#Approved'),(1,'DNAhelix#1#Customer#Approved'),(1,'cool_class4400#1#CustomerAdmin#Approved'),(1,'clarinetbeast#0#Customer#Declined'),(1,'calcwizard#1#Customer#Approved'),(1,'calcultron2#2#Customer#Approved'),(1,'calcultron#1#CustomerManager#Approved'),(2,'EZ Theater Company#2#2#2'),(2,'Awesome Theater Company#1#1#1'),(2,'AI Theater Company#1#1#2'),(2,'4400 Theater Company#3#3#6'),(3,'4400 The Movie#130#2019-08-12#2019-09-12'),(3,'George P Burdell\'s Life Story#100#1927-08-12#2010-05-20'),(3,'Georgia Tech The Movie#100#1985-08-13#2019-09-30'),(3,'How to Train Your Dragon#98#2010-03-21#2010-04-02'),(3,'Spaceballs#96#1987-06-24#2000-02-02'),(3,'The King\'s Speech#119#2010-11-26#2019-12-20'),(3,'Avengers: Endgame#181#2019-04-26#'),(3,'Calculus Returns: A ML Story#314#2019-09-19#'),(3,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(3,'The First Pokemon Movie#75#1998-07-19#'),(4,'4400 The Movie#130#2019-08-12#'),(4,'Avengers: Endgame#181#2019-04-26#'),(4,'Calculus Returns: A ML Story#314#2019-09-19#'),(4,'George P Burdell\'s Life Story#100#1927-08-12#'),(4,'Georgia Tech The Movie#100#1985-08-13#'),(4,'How to Train Your Dragon#98#2010-03-21#'),(4,'Spaceballs#96#1987-06-24#'),(4,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(4,'The First Pokemon Movie#75#1998-07-19#'),(4,'The King\'s Speech#119#2010-11-26#'),(5,'Calculus Returns: A ML Story#314#2019-09-19#2019-10-10'),(5,'Calculus Returns: A ML Story#314#2019-09-19#2019-12-30'),(5,'Spaceballs#96#1987-06-24#2010-04-02'),(5,'Spaceballs#96#1987-06-24#2023-01-23'),(5,'Spider-Man: Into the Spider-Verse#117#2018-12-01#2019-09-30'),(5,'4400 The Movie#130#2019-08-12#'),(5,'Avengers: Endgame#181#2019-04-26#'),(5,'George P Burdell\'s Life Story#100#1927-08-12#'),(5,'Georgia Tech The Movie#100#1985-08-13#'),(5,'How to Train Your Dragon#98#2010-03-21#'),(5,'The First Pokemon Movie#75#1998-07-19#'),(5,'The King\'s Speech#119#2010-11-26#'),(6,'4400 The Movie#130#2019-08-12#2019-10-12'),(6,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(6,'The First Pokemon Movie#75#1998-07-19#2018-07-19'),(6,'Avengers: Endgame#181#2019-04-26#'),(6,'Calculus Returns: A ML Story#314#2019-09-19#'),(6,'George P Burdell\'s Life Story#100#1927-08-12#'),(6,'How to Train Your Dragon#98#2010-03-21#'),(6,'Spaceballs#96#1987-06-24#'),(6,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(6,'The King\'s Speech#119#2010-11-26#'),(7,'Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company'),(7,'Jonathan\'s Movies#67 Pearl Dr#Seattle#WA#98101#4400 Theater Company'),(7,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(7,'ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company'),(7,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company'),(7,'Main Movies#123 Main St#New York#NY#10001#EZ Theater Company'),(7,'Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company'),(8,'theScienceGuy#1#Customer#Approved'),(8,'thePiGuy3.14#1#Customer#Approved'),(8,'RitzLover28#1#Customer#Approved'),(8,'radioactivePoRa#0#Manager#Approved'),(8,'programerAAL#1#Customer#Approved'),(8,'notFullMetal#1#Customer#Approved'),(8,'manager4#0#Manager#Approved'),(8,'manager3#0#Manager#Approved'),(8,'manager2#0#Manager#Approved'),(8,'manager1#0#Manager#Approved'),(8,'isthisthekrustykrab#3#Customer#Approved'),(8,'imready#1#Customer#Approved'),(8,'imbatman#0#Manager#Approved'),(8,'ilikemoney$$#3#Customer#Approved'),(8,'ghcghc#0#Manager#Approved'),(8,'georgep#5#CustomerManager#Approved'),(8,'fullMetal#1#Customer#Approved'),(8,'fatherAI#0#Manager#Approved'),(8,'entropyRox#2#CustomerManager#Approved'),(8,'eeqmcsquare#1#Customer#Approved'),(8,'does2Much#1#Customer#Approved'),(8,'DNAhelix#1#Customer#Approved'),(8,'cool_class4400#1#CustomerAdmin#Approved'),(8,'calcwizard#1#Customer#Approved'),(8,'calcultron2#2#Customer#Approved'),(8,'calcultron#1#CustomerManager#Approved'),(9,'clarinetbeast#0#Customer#Declined'),(9,'gdanger#0#User#Declined'),(9,'texasStarKarate#0#User#Declined'),(10,'smith_j#0#User#Pending'),(11,'smith_j#0#User#Pending'),(12,'cool_class4400#1#CustomerAdmin#Approved'),(12,'calcultron#1#CustomerManager#Approved'),(12,'calcultron2#2#Customer#Approved'),(12,'calcwizard#1#Customer#Approved'),(12,'DNAhelix#1#Customer#Approved'),(12,'does2Much#1#Customer#Approved'),(12,'eeqmcsquare#1#Customer#Approved'),(12,'entropyRox#2#CustomerManager#Approved'),(12,'fatherAI#0#Manager#Approved'),(12,'fullMetal#1#Customer#Approved'),(12,'georgep#5#CustomerManager#Approved'),(12,'ghcghc#0#Manager#Approved'),(12,'ilikemoney$$#3#Customer#Approved'),(12,'imbatman#0#Manager#Approved'),(12,'imready#1#Customer#Approved'),(12,'isthisthekrustykrab#3#Customer#Approved'),(12,'manager1#0#Manager#Approved'),(12,'manager2#0#Manager#Approved'),(12,'manager3#0#Manager#Approved'),(12,'manager4#0#Manager#Approved'),(12,'notFullMetal#1#Customer#Approved'),(12,'programerAAL#1#Customer#Approved'),(12,'radioactivePoRa#0#Manager#Approved'),(12,'RitzLover28#1#Customer#Approved'),(12,'thePiGuy3.14#1#Customer#Approved'),(12,'theScienceGuy#1#Customer#Approved'),(12,'clarinetbeast#0#Customer#Declined'),(12,'gdanger#0#User#Declined'),(12,'texasStarKarate#0#User#Declined'),(12,'smith_j#0#User#Pending'),(13,'AI Theater Company#1#1#2'),(13,'Awesome Theater Company#1#1#1'),(13,'EZ Theater Company#2#2#2'),(14,'EZ Theater Company#2#2#2'),(15,'Awesome Theater Company#1#1#1'),(16,'Dwight#Schrute'),(16,'Alan#Turing'),(17,'Cinema Star#entropyRox#San Francisco #CA#4'),(17,'Jonathan\'s Movies#georgep#Seattle#WA#2'),(17,'Star Movies#radioactivePoRa#Boulder#CA#5'),(18,'4400 The Movie#130#2019-08-12#2019-10-12'),(18,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(18,'The First Pokemon Movie#75#1998-07-19#2018-07-19'),(18,'Avengers: Endgame#181#2019-04-26#'),(18,'Calculus Returns: A ML Story#314#2019-09-19#'),(18,'George P Burdell\'s Life Story#100#1927-08-12#'),(18,'How to Train Your Dragon#98#2010-03-21#'),(18,'Spaceballs#96#1987-06-24#'),(18,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(18,'The King\'s Speech#119#2010-11-26#'),(19,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(19,'George P Burdell\'s Life Story#100#1927-08-12#'),(19,'How to Train Your Dragon#98#2010-03-21#'),(19,'Spaceballs#96#1987-06-24#'),(20,'How to Train Your Dragon#98#2010-03-21#'),(20,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(20,'The King\'s Speech#119#2010-11-26#'),(21,'4400 The Movie#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-09-12#2019-08-12'),(21,'George P Burdell\'s Life Story#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2010-05-20#1927-08-12'),(21,'Georgia Tech The Movie#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-09-30#1985-08-13'),(21,'How to Train Your Dragon#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2010-04-02#2010-03-21'),(21,'Spaceballs#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(21,'The King\'s Speech#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-12-20#2010-11-26'),(21,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-10-10#2019-09-19'),(21,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-12-30#2019-09-19'),(21,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(21,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(21,'Spider-Man: Into the Spider-Verse#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-09-30#2018-12-01'),(21,'4400 The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-10-12#2019-08-12'),(21,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#1985-08-13#1985-08-13'),(21,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2018-07-19#1998-07-19'),(21,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-07-14#1927-08-12'),(21,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-10-22#1927-08-12'),(21,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(21,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(21,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(21,'The King\'s Speech#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-12-20#2010-11-26'),(21,'4400 The Movie#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-08-12#2019-08-12'),(21,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(22,'Spaceballs#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(22,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(22,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(23,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(23,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(23,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(23,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(24,'How to Train Your Dragon#Star Movies#EZ Theater Company#1111111111111100#2010-03-25'),(24,'How to Train Your Dragon#Cinema Star#4400 Theater Company#1111111111111111#2010-04-02'),(24,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-22'),(24,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-23'),(26,'Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company'),(26,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(28,'calcwizard#Approved#1#0#0'),(29,'gdanger#Declined#0#0#0'),(30,'imbatman#Approved#0#0#1'),(35,'wonderwoman#0#CustomerManager#Pending'),(35,'theScienceGuy#1#Customer#Approved'),(35,'thePiGuy3.14#1#Customer#Approved'),(35,'texasStarKarate#0#User#Declined'),(35,'smith_j#0#User#Pending'),(35,'rubble3#0#Customer#Pending'),(35,'RitzLover28#1#Customer#Approved'),(35,'radioactivePoRa#0#Manager#Approved'),(35,'programerAAL#1#Customer#Approved'),(35,'notFullMetal#1#Customer#Approved'),(35,'manager4#0#Manager#Approved'),(35,'manager3#0#Manager#Approved'),(35,'manager2#0#Manager#Approved'),(35,'manager1#0#Manager#Approved'),(35,'isthisthekrustykrab#3#Customer#Approved'),(35,'imready#1#Customer#Approved'),(35,'imbatman#0#Manager#Approved'),(35,'ilikemoney$$#3#Customer#Approved'),(35,'ghcghc#0#Manager#Approved'),(35,'georgep#5#CustomerManager#Approved'),(35,'gdanger#0#User#Declined'),(35,'fullMetal#1#Customer#Approved'),(35,'flinstone4#0#User#Pending'),(35,'fatherAI#0#Manager#Approved'),(35,'entropyRox#2#CustomerManager#Approved'),(35,'eeqmcsquare#1#Customer#Approved'),(35,'does2Much#1#Customer#Approved'),(35,'DNAhelix#1#Customer#Approved'),(35,'cool_class4400#1#CustomerAdmin#Approved'),(35,'clarinetbeast#0#Customer#Declined'),(35,'calcwizard#1#Customer#Approved'),(35,'calcultron2#2#Customer#Approved'),(35,'calcultron#1#CustomerManager#Approved'),(35,'b_allen#0#Manager#Pending'),(38,'wonderwoman#0#CustomerManager#Pending'),(38,'theScienceGuy#1#Customer#Approved'),(38,'thePiGuy3.14#1#Customer#Approved'),(38,'texasStarKarate#0#User#Declined'),(38,'smith_j#0#User#Declined'),(38,'rubble3#0#Customer#Pending'),(38,'RitzLover28#1#Customer#Approved'),(38,'radioactivePoRa#0#Manager#Approved'),(38,'programerAAL#1#Customer#Approved'),(38,'notFullMetal#1#Customer#Approved'),(38,'manager4#0#Manager#Approved'),(38,'manager3#0#Manager#Approved'),(38,'manager2#0#Manager#Approved'),(38,'manager1#0#Manager#Approved'),(38,'isthisthekrustykrab#3#Customer#Approved'),(38,'imready#1#Customer#Approved'),(38,'imbatman#0#Manager#Approved'),(38,'ilikemoney$$#3#Customer#Approved'),(38,'ghcghc#0#Manager#Approved'),(38,'georgep#5#CustomerManager#Approved'),(38,'gdanger#0#User#Declined'),(38,'fullMetal#1#Customer#Approved'),(38,'flinstone4#0#User#Pending'),(38,'fatherAI#0#Manager#Approved'),(38,'entropyRox#2#CustomerManager#Approved'),(38,'eeqmcsquare#1#Customer#Approved'),(38,'does2Much#1#Customer#Approved'),(38,'DNAhelix#1#Customer#Approved'),(38,'cool_class4400#1#CustomerAdmin#Approved'),(38,'clarinetbeast#0#Customer#Approved'),(38,'calcwizard#1#Customer#Approved'),(38,'calcultron2#2#Customer#Approved'),(38,'calcultron#1#CustomerManager#Approved'),(38,'b_allen#0#Manager#Pending'),(40,'Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company'),(40,'Jonathan\'s Movies#67 Pearl Dr#Seattle#WA#98101#4400 Theater Company'),(40,'Perimeter Cinema#1 Roundabout Circle#Waco#TX#90467#4400 Theater Company'),(40,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(40,'ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company'),(40,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company'),(40,'Main Movies#123 Main St#New York#NY#10001#EZ Theater Company'),(40,'Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company'),(42,'4400 The Movie#130#2019-08-12#2019-10-12'),(42,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(42,'The First Pokemon Movie#75#1998-07-19#2018-07-19'),(42,'Avengers: Endgame#181#2019-04-26#'),(42,'Calculus Returns: A ML Story#314#2019-09-19#'),(42,'Doctor Strange#115#2016-10-20#'),(42,'George P Burdell\'s Life Story#100#1927-08-12#'),(42,'How to Train Your Dragon#98#2010-03-21#'),(42,'Spaceballs#96#1987-06-24#'),(42,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(42,'The King\'s Speech#119#2010-11-26#'),(44,'4400 The Movie#130#2019-08-12#2019-08-12'),(44,'How to Train Your Dragon#98#2010-03-21#2010-03-25'),(44,'Spaceballs#96#1987-06-24#2019-12-06'),(44,'Avengers: Endgame#181#2019-04-26#'),(44,'Calculus Returns: A ML Story#314#2019-09-19#'),(44,'Doctor Strange#115#2016-10-20#'),(44,'George P Burdell\'s Life Story#100#1927-08-12#'),(44,'Georgia Tech The Movie#100#1985-08-13#'),(44,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(44,'The First Pokemon Movie#75#1998-07-19#'),(44,'The King\'s Speech#119#2010-11-26#'),(46,'Spaceballs#ML Movies#AI Theater Company#1111111111111100#2023-01-23'),(46,'How to Train Your Dragon#Star Movies#EZ Theater Company#1111111111111100#2010-03-25'),(46,'How to Train Your Dragon#Cinema Star#4400 Theater Company#1111111111111111#2010-04-02'),(46,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-22'),(46,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-23'),(48,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-12-24'),(52,'wonderwoman#0#CustomerManager#Pending'),(52,'theScienceGuy#1#Customer#Approved'),(52,'thePiGuy3.14#1#Customer#Approved'),(52,'texasStarKarate#0#User#Declined'),(52,'smith_j#0#User#Declined'),(52,'rubble3#0#Customer#Pending'),(52,'RitzLover28#1#Customer#Approved'),(52,'radioactivePoRa#0#Manager#Approved'),(52,'programerAAL#1#Customer#Approved'),(52,'notFullMetal#1#Customer#Approved'),(52,'manager4#0#Manager#Approved'),(52,'manager3#0#Manager#Approved'),(52,'manager2#0#Manager#Approved'),(52,'manager1#0#Manager#Approved'),(52,'isthisthekrustykrab#3#Customer#Approved'),(52,'imready#1#Customer#Approved'),(52,'imbatman#0#Manager#Approved'),(52,'ilikemoney$$#3#Customer#Approved'),(52,'ghcghc#0#Manager#Approved'),(52,'georgep#5#CustomerManager#Approved'),(52,'gdanger#0#User#Declined'),(52,'fullMetal#1#Customer#Approved'),(52,'flinstone4#0#User#Pending'),(52,'fatherAI#0#Manager#Approved'),(52,'entropyRox#2#CustomerManager#Approved'),(52,'eeqmcsquare#1#Customer#Approved'),(52,'does2Much#1#Customer#Approved'),(52,'DNAhelix#1#Customer#Approved'),(52,'cool_class4400#1#CustomerAdmin#Approved'),(52,'clarinetbeast#0#Customer#Approved'),(52,'calcwizard#1#Customer#Approved'),(52,'calcultron2#2#Customer#Approved'),(52,'calcultron#1#CustomerManager#Approved'),(52,'b_allen#0#Manager#Pending'),(54,'Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company'),(54,'Jonathan\'s Movies#67 Pearl Dr#Seattle#WA#98101#4400 Theater Company'),(54,'Perimeter Cinema#1 Roundabout Circle#Waco#TX#90467#4400 Theater Company'),(54,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(54,'ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company'),(54,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company'),(54,'Main Movies#123 Main St#New York#NY#10001#EZ Theater Company'),(54,'Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company'),(56,'4400 The Movie#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-09-12#2019-08-12'),(56,'George P Burdell\'s Life Story#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2010-05-20#1927-08-12'),(56,'Georgia Tech The Movie#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-09-30#1985-08-13'),(56,'How to Train Your Dragon#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2010-04-02#2010-03-21'),(56,'Spaceballs#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(56,'The King\'s Speech#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-12-20#2010-11-26'),(56,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-10-10#2019-09-19'),(56,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-12-30#2019-09-19'),(56,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(56,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(56,'Spider-Man: Into the Spider-Verse#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-09-30#2018-12-01'),(56,'4400 The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-10-12#2019-08-12'),(56,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#1985-08-13#1985-08-13'),(56,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2018-07-19#1998-07-19'),(56,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-07-14#1927-08-12'),(56,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-10-22#1927-08-12'),(56,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(56,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(56,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(56,'The King\'s Speech#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-12-20#2010-11-26'),(56,'4400 The Movie#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-08-12#2019-08-12'),(56,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(56,'Spaceballs#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-12-06#1987-06-24'),(62,'4400 The Movie#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-09-12#2019-08-12'),(62,'George P Burdell\'s Life Story#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2010-05-20#1927-08-12'),(62,'Georgia Tech The Movie#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-09-30#1985-08-13'),(62,'How to Train Your Dragon#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2010-04-02#2010-03-21'),(62,'Spaceballs#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(62,'The King\'s Speech#Cinema Star#100 Cool Place#San Francisco #CA#94016#4400 Theater Company#2019-12-20#2010-11-26'),(62,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-10-10#2019-09-19'),(62,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-12-30#2019-09-19'),(62,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(62,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(62,'Spider-Man: Into the Spider-Verse#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-09-30#2018-12-01'),(62,'4400 The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-10-12#2019-08-12'),(62,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#1985-08-13#1985-08-13'),(62,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2010-04-02#1985-08-13'),(62,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2010-04-02#1998-07-19'),(62,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2018-07-19#1998-07-19'),(62,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-07-14#1927-08-12'),(62,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-10-22#1927-08-12'),(62,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(62,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(62,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(62,'The King\'s Speech#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-12-20#2010-11-26'),(62,'4400 The Movie#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-08-12#2019-08-12'),(62,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(62,'Spaceballs#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-12-06#1987-06-24'),(63,'Spaceballs#ML Movies#AI Theater Company#1111111111111100#2010-04-02'),(63,'Spaceballs#ML Movies#AI Theater Company#1111111111111100#2023-01-23'),(63,'How to Train Your Dragon#Star Movies#EZ Theater Company#1111111111111100#2010-03-25'),(63,'How to Train Your Dragon#Cinema Star#4400 Theater Company#1111111111111111#2010-04-02'),(63,'The First Pokemon Movie#ABC Theater#Awesome Theater Company#1111111111111111#2010-04-02'),(63,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-22'),(63,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-23');
/*!40000 ALTER TABLE `magic44_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `magic44_content_differences`
--

DROP TABLE IF EXISTS `magic44_content_differences`;
/*!50001 DROP VIEW IF EXISTS `magic44_content_differences`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `magic44_content_differences` AS SELECT 
 1 AS `step_ID`,
 1 AS `category`,
 1 AS `row_hash`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `magic44_count_answers`
--

DROP TABLE IF EXISTS `magic44_count_answers`;
/*!50001 DROP VIEW IF EXISTS `magic44_count_answers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `magic44_count_answers` AS SELECT 
 1 AS `step_ID`,
 1 AS `answer_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `magic44_count_differences`
--

DROP TABLE IF EXISTS `magic44_count_differences`;
/*!50001 DROP VIEW IF EXISTS `magic44_count_differences`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `magic44_count_differences` AS SELECT 
 1 AS `step_ID`,
 1 AS `answer_total`,
 1 AS `result_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `magic44_count_test_results`
--

DROP TABLE IF EXISTS `magic44_count_test_results`;
/*!50001 DROP VIEW IF EXISTS `magic44_count_test_results`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `magic44_count_test_results` AS SELECT 
 1 AS `step_ID`,
 1 AS `result_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `magic44_test_results`
--

DROP TABLE IF EXISTS `magic44_test_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `magic44_test_results` (
  `step_ID` int(11) NOT NULL,
  `row_hash` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magic44_test_results`
--

LOCK TABLES `magic44_test_results` WRITE;
/*!40000 ALTER TABLE `magic44_test_results` DISABLE KEYS */;
INSERT INTO `magic44_test_results` VALUES (1,'theScienceGuy#1#Customer#Approved'),(1,'thePiGuy3.14#1#Customer#Approved'),(1,'texasStarKarate#0#User#Declined'),(1,'smith_j#0#User#Pending'),(1,'RitzLover28#1#Customer#Approved'),(1,'radioactivePoRa#0#Manager#Approved'),(1,'programerAAL#1#Customer#Approved'),(1,'notFullMetal#1#Customer#Approved'),(1,'manager4#0#Manager#Approved'),(1,'manager3#0#Manager#Approved'),(1,'manager2#0#Manager#Approved'),(1,'manager1#0#Manager#Approved'),(1,'isthisthekrustykrab#3#Customer#Approved'),(1,'imready#1#Customer#Approved'),(1,'imbatman#0#Manager#Approved'),(1,'ilikemoney$$#3#Customer#Approved'),(1,'ghcghc#0#Manager#Approved'),(1,'georgep#5#CustomerManager#Approved'),(1,'gdanger#0#User#Declined'),(1,'fullMetal#1#Customer#Approved'),(1,'fatherAI#0#Manager#Approved'),(1,'entropyRox#2#CustomerManager#Approved'),(1,'eeqmcsquare#1#Customer#Approved'),(1,'does2Much#1#Customer#Approved'),(1,'DNAhelix#1#Customer#Approved'),(1,'cool_class4400#1#CustomerAdmin#Approved'),(1,'clarinetbeast#0#Customer#Declined'),(1,'calcwizard#1#Customer#Approved'),(1,'calcultron2#2#Customer#Approved'),(1,'calcultron#1#CustomerManager#Approved'),(2,'EZ Theater Company#2#2#2'),(2,'Awesome Theater Company#1#1#1'),(2,'AI Theater Company#1#1#2'),(2,'4400 Theater Company#3#3#6'),(3,'4400 The Movie#130#2019-08-12#2019-09-12'),(3,'George P Burdell\'s Life Story#100#1927-08-12#2010-05-20'),(3,'Georgia Tech The Movie#100#1985-08-13#2019-09-30'),(3,'How to Train Your Dragon#98#2010-03-21#2010-04-02'),(3,'Spaceballs#96#1987-06-24#2000-02-02'),(3,'The King\'s Speech#119#2010-11-26#2019-12-20'),(3,'Avengers: Endgame#181#2019-04-26#'),(3,'Calculus Returns: A ML Story#314#2019-09-19#'),(3,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(3,'The First Pokemon Movie#75#1998-07-19#'),(4,'4400 The Movie#130#2019-08-12#'),(4,'Avengers: Endgame#181#2019-04-26#'),(4,'Calculus Returns: A ML Story#314#2019-09-19#'),(4,'George P Burdell\'s Life Story#100#1927-08-12#'),(4,'Georgia Tech The Movie#100#1985-08-13#'),(4,'How to Train Your Dragon#98#2010-03-21#'),(4,'Spaceballs#96#1987-06-24#'),(4,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(4,'The First Pokemon Movie#75#1998-07-19#'),(4,'The King\'s Speech#119#2010-11-26#'),(5,'Calculus Returns: A ML Story#314#2019-09-19#2019-10-10'),(5,'Calculus Returns: A ML Story#314#2019-09-19#2019-12-30'),(5,'Spaceballs#96#1987-06-24#2010-04-02'),(5,'Spaceballs#96#1987-06-24#2023-01-23'),(5,'Spider-Man: Into the Spider-Verse#117#2018-12-01#2019-09-30'),(5,'4400 The Movie#130#2019-08-12#'),(5,'Avengers: Endgame#181#2019-04-26#'),(5,'George P Burdell\'s Life Story#100#1927-08-12#'),(5,'Georgia Tech The Movie#100#1985-08-13#'),(5,'How to Train Your Dragon#98#2010-03-21#'),(5,'The First Pokemon Movie#75#1998-07-19#'),(5,'The King\'s Speech#119#2010-11-26#'),(6,'4400 The Movie#130#2019-08-12#2019-10-12'),(6,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(6,'The First Pokemon Movie#75#1998-07-19#2018-07-19'),(6,'Avengers: Endgame#181#2019-04-26#'),(6,'Calculus Returns: A ML Story#314#2019-09-19#'),(6,'George P Burdell\'s Life Story#100#1927-08-12#'),(6,'How to Train Your Dragon#98#2010-03-21#'),(6,'Spaceballs#96#1987-06-24#'),(6,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(6,'The King\'s Speech#119#2010-11-26#'),(7,'Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company'),(7,'Jonathan\'s Movies#67 Pearl Dr#Seattle#WA#98101#4400 Theater Company'),(7,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(7,'ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company'),(7,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company'),(7,'Main Movies#123 Main St#New York#NY#10001#EZ Theater Company'),(7,'Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company'),(8,'theScienceGuy#1#Customer#Approved'),(8,'thePiGuy3.14#1#Customer#Approved'),(8,'RitzLover28#1#Customer#Approved'),(8,'radioactivePoRa#0#Manager#Approved'),(8,'programerAAL#1#Customer#Approved'),(8,'notFullMetal#1#Customer#Approved'),(8,'manager4#0#Manager#Approved'),(8,'manager3#0#Manager#Approved'),(8,'manager2#0#Manager#Approved'),(8,'manager1#0#Manager#Approved'),(8,'isthisthekrustykrab#3#Customer#Approved'),(8,'imready#1#Customer#Approved'),(8,'imbatman#0#Manager#Approved'),(8,'ilikemoney$$#3#Customer#Approved'),(8,'ghcghc#0#Manager#Approved'),(8,'georgep#5#CustomerManager#Approved'),(8,'fullMetal#1#Customer#Approved'),(8,'fatherAI#0#Manager#Approved'),(8,'entropyRox#2#CustomerManager#Approved'),(8,'eeqmcsquare#1#Customer#Approved'),(8,'does2Much#1#Customer#Approved'),(8,'DNAhelix#1#Customer#Approved'),(8,'cool_class4400#1#CustomerAdmin#Approved'),(8,'calcwizard#1#Customer#Approved'),(8,'calcultron2#2#Customer#Approved'),(8,'calcultron#1#CustomerManager#Approved'),(9,'clarinetbeast#0#Customer#Declined'),(9,'gdanger#0#User#Declined'),(9,'texasStarKarate#0#User#Declined'),(10,'smith_j#0#User#Pending'),(11,'smith_j#0#User#Pending'),(12,'calcultron#1#CustomerManager#Approved'),(12,'calcultron2#2#Customer#Approved'),(12,'calcwizard#1#Customer#Approved'),(12,'cool_class4400#1#CustomerAdmin#Approved'),(12,'DNAhelix#1#Customer#Approved'),(12,'does2Much#1#Customer#Approved'),(12,'eeqmcsquare#1#Customer#Approved'),(12,'entropyRox#2#CustomerManager#Approved'),(12,'fatherAI#0#Manager#Approved'),(12,'fullMetal#1#Customer#Approved'),(12,'georgep#5#CustomerManager#Approved'),(12,'ghcghc#0#Manager#Approved'),(12,'ilikemoney$$#3#Customer#Approved'),(12,'imbatman#0#Manager#Approved'),(12,'imready#1#Customer#Approved'),(12,'isthisthekrustykrab#3#Customer#Approved'),(12,'manager1#0#Manager#Approved'),(12,'manager2#0#Manager#Approved'),(12,'manager3#0#Manager#Approved'),(12,'manager4#0#Manager#Approved'),(12,'notFullMetal#1#Customer#Approved'),(12,'programerAAL#1#Customer#Approved'),(12,'radioactivePoRa#0#Manager#Approved'),(12,'RitzLover28#1#Customer#Approved'),(12,'thePiGuy3.14#1#Customer#Approved'),(12,'theScienceGuy#1#Customer#Approved'),(12,'clarinetbeast#0#Customer#Declined'),(12,'gdanger#0#User#Declined'),(12,'texasStarKarate#0#User#Declined'),(12,'smith_j#0#User#Pending'),(13,'AI Theater Company#1#1#2'),(13,'Awesome Theater Company#1#1#1'),(13,'EZ Theater Company#2#2#2'),(14,'EZ Theater Company#2#2#2'),(15,'Awesome Theater Company#1#1#1'),(16,'Dwight#Schrute'),(16,'Alan#Turing'),(17,'Cinema Star#entropyRox#San Francisco#CA#4'),(17,'Jonathan\'s Movies#georgep#Seattle#WA#2'),(17,'Star Movies#radioactivePoRa#Boulder#CA#5'),(18,'4400 The Movie#130#2019-08-12#2019-10-12'),(18,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(18,'The First Pokemon Movie#75#1998-07-19#2018-07-19'),(18,'Avengers: Endgame#181#2019-04-26#'),(18,'Calculus Returns: A ML Story#314#2019-09-19#'),(18,'George P Burdell\'s Life Story#100#1927-08-12#'),(18,'How to Train Your Dragon#98#2010-03-21#'),(18,'Spaceballs#96#1987-06-24#'),(18,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(18,'The King\'s Speech#119#2010-11-26#'),(19,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(19,'George P Burdell\'s Life Story#100#1927-08-12#'),(19,'How to Train Your Dragon#98#2010-03-21#'),(19,'Spaceballs#96#1987-06-24#'),(20,'How to Train Your Dragon#98#2010-03-21#'),(20,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(20,'The King\'s Speech#119#2010-11-26#'),(21,'4400 The Movie#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-09-12#2019-08-12'),(21,'George P Burdell\'s Life Story#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2010-05-20#1927-08-12'),(21,'Georgia Tech The Movie#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-09-30#1985-08-13'),(21,'How to Train Your Dragon#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2010-04-02#2010-03-21'),(21,'Spaceballs#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(21,'The King\'s Speech#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-12-20#2010-11-26'),(21,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-10-10#2019-09-19'),(21,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-12-30#2019-09-19'),(21,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(21,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(21,'Spider-Man: Into the Spider-Verse#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-09-30#2018-12-01'),(21,'4400 The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-10-12#2019-08-12'),(21,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#1985-08-13#1985-08-13'),(21,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2018-07-19#1998-07-19'),(21,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-07-14#1927-08-12'),(21,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-10-22#1927-08-12'),(21,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(21,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(21,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(21,'The King\'s Speech#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-12-20#2010-11-26'),(21,'4400 The Movie#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-08-12#2019-08-12'),(21,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(22,'Spaceballs#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(22,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(22,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(23,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(23,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(23,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(23,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(24,'How to Train Your Dragon#Star Movies#EZ Theater Company#1111111111111100#2010-03-25'),(24,'How to Train Your Dragon#Cinema Star#4400 Theater Company#1111111111111111#2010-04-02'),(24,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-22'),(24,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-23'),(26,'Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company'),(26,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(28,'calcwizard#Approved#1#0#0'),(29,'gdanger#Declined#0#0#0'),(30,'imbatman#Approved#0#0#1'),(35,'wonderwoman#0#CustomerManager#Pending'),(35,'theScienceGuy#1#Customer#Approved'),(35,'thePiGuy3.14#1#Customer#Approved'),(35,'texasStarKarate#0#User#Declined'),(35,'smith_j#0#User#Pending'),(35,'rubble3#0#Customer#Pending'),(35,'RitzLover28#1#Customer#Approved'),(35,'radioactivePoRa#0#Manager#Approved'),(35,'programerAAL#1#Customer#Approved'),(35,'notFullMetal#1#Customer#Approved'),(35,'manager4#0#Manager#Approved'),(35,'manager3#0#Manager#Approved'),(35,'manager2#0#Manager#Approved'),(35,'manager1#0#Manager#Approved'),(35,'isthisthekrustykrab#3#Customer#Approved'),(35,'imready#1#Customer#Approved'),(35,'imbatman#0#Manager#Approved'),(35,'ilikemoney$$#3#Customer#Approved'),(35,'ghcghc#0#Manager#Approved'),(35,'georgep#5#CustomerManager#Approved'),(35,'gdanger#0#User#Declined'),(35,'fullMetal#1#Customer#Approved'),(35,'flinstone4#0#User#Pending'),(35,'fatherAI#0#Manager#Approved'),(35,'entropyRox#2#CustomerManager#Approved'),(35,'eeqmcsquare#1#Customer#Approved'),(35,'does2Much#1#Customer#Approved'),(35,'DNAhelix#1#Customer#Approved'),(35,'cool_class4400#1#CustomerAdmin#Approved'),(35,'clarinetbeast#0#Customer#Declined'),(35,'calcwizard#1#Customer#Approved'),(35,'calcultron2#2#Customer#Approved'),(35,'calcultron#1#CustomerManager#Approved'),(35,'b_allen#0#Manager#Pending'),(38,'wonderwoman#0#CustomerManager#Pending'),(38,'theScienceGuy#1#Customer#Approved'),(38,'thePiGuy3.14#1#Customer#Approved'),(38,'texasStarKarate#0#User#Declined'),(38,'smith_j#0#User#Declined'),(38,'rubble3#0#Customer#Pending'),(38,'RitzLover28#1#Customer#Approved'),(38,'radioactivePoRa#0#Manager#Approved'),(38,'programerAAL#1#Customer#Approved'),(38,'notFullMetal#1#Customer#Approved'),(38,'manager4#0#Manager#Approved'),(38,'manager3#0#Manager#Approved'),(38,'manager2#0#Manager#Approved'),(38,'manager1#0#Manager#Approved'),(38,'isthisthekrustykrab#3#Customer#Approved'),(38,'imready#1#Customer#Approved'),(38,'imbatman#0#Manager#Approved'),(38,'ilikemoney$$#3#Customer#Approved'),(38,'ghcghc#0#Manager#Approved'),(38,'georgep#5#CustomerManager#Approved'),(38,'gdanger#0#User#Declined'),(38,'fullMetal#1#Customer#Approved'),(38,'flinstone4#0#User#Pending'),(38,'fatherAI#0#Manager#Approved'),(38,'entropyRox#2#CustomerManager#Approved'),(38,'eeqmcsquare#1#Customer#Approved'),(38,'does2Much#1#Customer#Approved'),(38,'DNAhelix#1#Customer#Approved'),(38,'cool_class4400#1#CustomerAdmin#Approved'),(38,'clarinetbeast#0#Customer#Approved'),(38,'calcwizard#1#Customer#Approved'),(38,'calcultron2#2#Customer#Approved'),(38,'calcultron#1#CustomerManager#Approved'),(38,'b_allen#0#Manager#Pending'),(40,'Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company'),(40,'Jonathan\'s Movies#67 Pearl Dr#Seattle#WA#98101#4400 Theater Company'),(40,'Perimeter Cinema#1 Roundabout Circle#Waco#TX#90467#4400 Theater Company'),(40,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(40,'ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company'),(40,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company'),(40,'Main Movies#123 Main St#New York#NY#10001#EZ Theater Company'),(40,'Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company'),(42,'4400 The Movie#130#2019-08-12#2019-10-12'),(42,'Georgia Tech The Movie#100#1985-08-13#1985-08-13'),(42,'The First Pokemon Movie#75#1998-07-19#2018-07-19'),(42,'Avengers: Endgame#181#2019-04-26#'),(42,'Calculus Returns: A ML Story#314#2019-09-19#'),(42,'Doctor Strange#115#2016-10-20#'),(42,'George P Burdell\'s Life Story#100#1927-08-12#'),(42,'How to Train Your Dragon#98#2010-03-21#'),(42,'Spaceballs#96#1987-06-24#'),(42,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(42,'The King\'s Speech#119#2010-11-26#'),(44,'4400 The Movie#130#2019-08-12#2019-08-12'),(44,'How to Train Your Dragon#98#2010-03-21#2010-03-25'),(44,'Spaceballs#96#1987-06-24#2019-12-06'),(44,'Avengers: Endgame#181#2019-04-26#'),(44,'Calculus Returns: A ML Story#314#2019-09-19#'),(44,'Doctor Strange#115#2016-10-20#'),(44,'George P Burdell\'s Life Story#100#1927-08-12#'),(44,'Georgia Tech The Movie#100#1985-08-13#'),(44,'Spider-Man: Into the Spider-Verse#117#2018-12-01#'),(44,'The First Pokemon Movie#75#1998-07-19#'),(44,'The King\'s Speech#119#2010-11-26#'),(46,'Spaceballs#ML Movies#AI Theater Company#1111111111111100#2023-01-23'),(46,'How to Train Your Dragon#Star Movies#EZ Theater Company#1111111111111100#2010-03-25'),(46,'How to Train Your Dragon#Cinema Star#4400 Theater Company#1111111111111111#2010-04-02'),(46,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-22'),(46,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-23'),(48,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-12-24'),(52,'wonderwoman#0#CustomerManager#Pending'),(52,'theScienceGuy#1#Customer#Approved'),(52,'thePiGuy3.14#1#Customer#Approved'),(52,'texasStarKarate#0#User#Declined'),(52,'smith_j#0#User#Declined'),(52,'rubble3#0#Customer#Pending'),(52,'RitzLover28#1#Customer#Approved'),(52,'radioactivePoRa#0#Manager#Approved'),(52,'programerAAL#1#Customer#Approved'),(52,'notFullMetal#1#Customer#Approved'),(52,'manager4#0#Manager#Approved'),(52,'manager3#0#Manager#Approved'),(52,'manager2#0#Manager#Approved'),(52,'manager1#0#Manager#Approved'),(52,'isthisthekrustykrab#3#Customer#Approved'),(52,'imready#1#Customer#Approved'),(52,'imbatman#0#Manager#Approved'),(52,'ilikemoney$$#3#Customer#Approved'),(52,'ghcghc#0#Manager#Approved'),(52,'georgep#5#CustomerManager#Approved'),(52,'gdanger#0#User#Declined'),(52,'fullMetal#1#Customer#Approved'),(52,'flinstone4#0#User#Pending'),(52,'fatherAI#0#Manager#Approved'),(52,'entropyRox#2#CustomerManager#Approved'),(52,'eeqmcsquare#1#Customer#Approved'),(52,'does2Much#1#Customer#Approved'),(52,'DNAhelix#1#Customer#Approved'),(52,'cool_class4400#1#CustomerAdmin#Approved'),(52,'clarinetbeast#0#Customer#Approved'),(52,'calcwizard#1#Customer#Approved'),(52,'calcultron2#2#Customer#Approved'),(52,'calcultron#2#CustomerManager#Approved'),(52,'b_allen#0#Manager#Pending'),(54,'Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company'),(54,'Jonathan\'s Movies#67 Pearl Dr#Seattle#WA#98101#4400 Theater Company'),(54,'Perimeter Cinema#1 Roundabout Circle#Waco#TX#90467#4400 Theater Company'),(54,'Star Movies#4400 Rocks Ave#Boulder#CA#80301#4400 Theater Company'),(54,'ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company'),(54,'ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company'),(54,'Main Movies#123 Main St#New York#NY#10001#EZ Theater Company'),(54,'Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company'),(56,'4400 The Movie#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-09-12#2019-08-12'),(56,'George P Burdell\'s Life Story#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2010-05-20#1927-08-12'),(56,'Georgia Tech The Movie#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-09-30#1985-08-13'),(56,'How to Train Your Dragon#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2010-04-02#2010-03-21'),(56,'Spaceballs#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(56,'The King\'s Speech#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-12-20#2010-11-26'),(56,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-10-10#2019-09-19'),(56,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-12-30#2019-09-19'),(56,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(56,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(56,'Spider-Man: Into the Spider-Verse#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-09-30#2018-12-01'),(56,'4400 The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-10-12#2019-08-12'),(56,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#1985-08-13#1985-08-13'),(56,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2018-07-19#1998-07-19'),(56,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-07-14#1927-08-12'),(56,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-10-22#1927-08-12'),(56,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(56,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(56,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(56,'The King\'s Speech#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-12-20#2010-11-26'),(56,'4400 The Movie#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-08-12#2019-08-12'),(56,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(56,'Spaceballs#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-12-06#1987-06-24'),(62,'4400 The Movie#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-09-12#2019-08-12'),(62,'George P Burdell\'s Life Story#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2010-05-20#1927-08-12'),(62,'Georgia Tech The Movie#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-09-30#1985-08-13'),(62,'How to Train Your Dragon#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2010-04-02#2010-03-21'),(62,'Spaceballs#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2000-02-02#1987-06-24'),(62,'The King\'s Speech#Cinema Star#100 Cool Place#San Francisco#CA#94016#4400 Theater Company#2019-12-20#2010-11-26'),(62,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-10-10#2019-09-19'),(62,'Calculus Returns: A ML Story#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-12-30#2019-09-19'),(62,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2010-04-02#1987-06-24'),(62,'Spaceballs#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2023-01-23#1987-06-24'),(62,'Spider-Man: Into the Spider-Verse#ML Movies#314 Pi St#Pallet Town#KS#31415#AI Theater Company#2019-09-30#2018-12-01'),(62,'4400 The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2019-10-12#2019-08-12'),(62,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#1985-08-13#1985-08-13'),(62,'Georgia Tech The Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2010-04-02#1985-08-13'),(62,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2010-04-02#1998-07-19'),(62,'The First Pokemon Movie#ABC Theater#880 Color Dr#Austin#TX#73301#Awesome Theater Company#2018-07-19#1998-07-19'),(62,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-07-14#1927-08-12'),(62,'George P Burdell\'s Life Story#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-10-22#1927-08-12'),(62,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-22#2010-03-21'),(62,'How to Train Your Dragon#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2010-03-23#2010-03-21'),(62,'Spaceballs#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#1999-06-24#1987-06-24'),(62,'The King\'s Speech#Main Movies#123 Main St#New York#NY#10001#EZ Theater Company#2019-12-20#2010-11-26'),(62,'4400 The Movie#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-08-12#2019-08-12'),(62,'How to Train Your Dragon#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2010-03-25#2010-03-21'),(62,'Spaceballs#Star Movies#745 GT St#Atlanta#GA#30332#EZ Theater Company#2019-12-06#1987-06-24'),(63,'Spaceballs#ML Movies#AI Theater Company#1111111111111100#2010-04-02'),(63,'Spaceballs#ML Movies#AI Theater Company#1111111111111100#2023-01-23'),(63,'How to Train Your Dragon#Star Movies#EZ Theater Company#1111111111111100#2010-03-25'),(63,'How to Train Your Dragon#Cinema Star#4400 Theater Company#1111111111111111#2010-04-02'),(63,'The First Pokemon Movie#ABC Theater#Awesome Theater Company#1111111111111111#2010-04-02'),(63,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-22'),(63,'How to Train Your Dragon#Main Movies#EZ Theater Company#1111111111111111#2010-03-23');
/*!40000 ALTER TABLE `magic44_test_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `Username` varchar(45) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zipcode` char(10) NOT NULL,
  `Works_In` varchar(45) NOT NULL,
  PRIMARY KEY (`Username`),
  UNIQUE KEY `Address` (`Zipcode`,`State`,`City`,`Street`),
  KEY `fk9_idx` (`Works_In`),
  CONSTRAINT `fk5` FOREIGN KEY (`Username`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk9` FOREIGN KEY (`Works_In`) REFERENCES `company` (`CompanyName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('b_allen','4 Flash Lane','Star City','GA','30311','Awesome Theater Company'),('calcultron','123 Peachtree St','Atlanta','GA','30308','EZ Theater Company'),('entropyRox','200 Cool Place','San Francisco','CA','94016','4400 Theater Company'),('fatherAI','456 Main St','New York','NY','10001','EZ Theater Company'),('georgep','10 Pearl Dr','Seattle','WA','98105','4400 Theater Company'),('ghcghc','100 Pi St','Pallet Town','KS','31415','AI Theater Company'),('imbatman','800 Color Dr','Austin','TX','78653','Awesome Theater Company'),('manager1','123 Ferst Drive','Atlanta','GA','30332','4400 Theater Company'),('manager2','456 Ferst Drive','Atlanta','GA','30332','AI Theater Company'),('manager3','789 Ferst Drive','Atlanta','GA','30332','4400 Theater Company'),('manager4','000 Ferst Drive','Atlanta','GA','30332','4400 Theater Company'),('radioactivePoRa','100 Blu St','Sunnyvale','CA','94088','4400 Theater Company'),('wonderwoman','10 Lasso Lane','Elysian Fields','CA','90654','AI Theater Company');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manfilterth`
--

DROP TABLE IF EXISTS `manfilterth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manfilterth` (
  `movName` varchar(45) NOT NULL,
  `movDuration` int(11) NOT NULL DEFAULT '0',
  `movReleaseDate` date NOT NULL,
  `movPlayDate` date
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manfilterth`
--

LOCK TABLES `manfilterth` WRITE;
/*!40000 ALTER TABLE `manfilterth` DISABLE KEYS */;
INSERT INTO `manfilterth` VALUES ('4400 The Movie',130,'2019-08-12','2019-08-12'),('How to Train Your Dragon',98,'2010-03-21','2010-03-25'),('Spaceballs',96,'1987-06-24','2019-12-06'),('Avengers: Endgame',181,'2019-04-26',NULL),('Calculus Returns: A ML Story',314,'2019-09-19',NULL),('Doctor Strange',115,'2016-10-20',NULL),('George P Burdell\'s Life Story',100,'1927-08-12',NULL),('Georgia Tech The Movie',100,'1985-08-13',NULL),('Spider-Man: Into the Spider-Verse',117,'2018-12-01',NULL),('The First Pokemon Movie',75,'1998-07-19',NULL),('The King\'s Speech',119,'2010-11-26',NULL);
/*!40000 ALTER TABLE `manfilterth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `MovieName` varchar(45) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Duration` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MovieName`,`ReleaseDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('4400 The Movie','2019-08-12',130),('Avengers: Endgame','2019-04-26',181),('Calculus Returns: A ML Story','2019-09-19',314),('Doctor Strange','2016-10-20',115),('George P Burdell\'s Life Story','1927-08-12',100),('Georgia Tech The Movie','1985-08-13',100),('How to Train Your Dragon','2010-03-21',98),('Spaceballs','1987-06-24',96),('Spider-Man: Into the Spider-Verse','2018-12-01',117),('The First Pokemon Movie','1998-07-19',75),('The King\'s Speech','2010-11-26',119);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieplay`
--

DROP TABLE IF EXISTS `movieplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movieplay` (
  `CompanyName` varchar(45) NOT NULL,
  `TheaterName` varchar(45) NOT NULL,
  `MovieName` varchar(45) NOT NULL,
  `MovieReleaseDate` date NOT NULL,
  `playDate` date NOT NULL,
  PRIMARY KEY (`CompanyName`,`TheaterName`,`MovieName`,`MovieReleaseDate`,`playDate`),
  KEY `fk3_idx` (`MovieName`,`MovieReleaseDate`) /*!80000 INVISIBLE */,
  KEY `fk2_idx` (`CompanyName`,`TheaterName`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk2` FOREIGN KEY (`CompanyName`, `TheaterName`) REFERENCES `theater` (`CompanyName`, `TheaterName`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk3` FOREIGN KEY (`MovieName`, `MovieReleaseDate`) REFERENCES `movie` (`MovieName`, `ReleaseDate`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieplay`
--

LOCK TABLES `movieplay` WRITE;
/*!40000 ALTER TABLE `movieplay` DISABLE KEYS */;
INSERT INTO `movieplay` VALUES ('4400 Theater Company','Cinema Star','4400 The Movie','2019-08-12','2019-09-12'),('4400 Theater Company','Cinema Star','George P Burdell\'s Life Story','1927-08-12','2010-05-20'),('4400 Theater Company','Cinema Star','Georgia Tech The Movie','1985-08-13','2019-09-30'),('4400 Theater Company','Cinema Star','How to Train Your Dragon','2010-03-21','2010-04-02'),('4400 Theater Company','Cinema Star','Spaceballs','1987-06-24','2000-02-02'),('4400 Theater Company','Cinema Star','The King\'s Speech','2010-11-26','2019-12-20'),('AI Theater Company','ML Movies','Calculus Returns: A ML Story','2019-09-19','2019-10-10'),('AI Theater Company','ML Movies','Calculus Returns: A ML Story','2019-09-19','2019-12-30'),('AI Theater Company','ML Movies','Spaceballs','1987-06-24','2010-04-02'),('AI Theater Company','ML Movies','Spaceballs','1987-06-24','2023-01-23'),('AI Theater Company','ML Movies','Spider-Man: Into the Spider-Verse','2018-12-01','2019-09-30'),('Awesome Theater Company','ABC Theater','4400 The Movie','2019-08-12','2019-10-12'),('Awesome Theater Company','ABC Theater','Georgia Tech The Movie','1985-08-13','1985-08-13'),('Awesome Theater Company','ABC Theater','Georgia Tech The Movie','1985-08-13','2010-04-02'),('Awesome Theater Company','ABC Theater','The First Pokemon Movie','1998-07-19','2010-04-02'),('Awesome Theater Company','ABC Theater','The First Pokemon Movie','1998-07-19','2018-07-19'),('EZ Theater Company','Main Movies','George P Burdell\'s Life Story','1927-08-12','2019-07-14'),('EZ Theater Company','Main Movies','George P Burdell\'s Life Story','1927-08-12','2019-10-22'),('EZ Theater Company','Main Movies','How to Train Your Dragon','2010-03-21','2010-03-22'),('EZ Theater Company','Main Movies','How to Train Your Dragon','2010-03-21','2010-03-23'),('EZ Theater Company','Main Movies','Spaceballs','1987-06-24','1999-06-24'),('EZ Theater Company','Main Movies','The King\'s Speech','2010-11-26','2019-12-20'),('EZ Theater Company','Star Movies','4400 The Movie','2019-08-12','2019-08-12'),('EZ Theater Company','Star Movies','How to Train Your Dragon','2010-03-21','2010-03-25'),('EZ Theater Company','Star Movies','Spaceballs','1987-06-24','2019-12-06');
/*!40000 ALTER TABLE `movieplay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater` (
  `CompanyName` varchar(45) NOT NULL,
  `TheaterName` varchar(45) NOT NULL,
  `Capacity` int(11) NOT NULL DEFAULT '0',
  `Street` varchar(45) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` char(2) NOT NULL,
  `Zipcode` char(10) NOT NULL,
  `Manager` varchar(45) NOT NULL,
  PRIMARY KEY (`CompanyName`,`TheaterName`),
  KEY `fk8_idx` (`Manager`),
  CONSTRAINT `fk1` FOREIGN KEY (`CompanyName`) REFERENCES `company` (`CompanyName`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk8` FOREIGN KEY (`Manager`) REFERENCES `manager` (`Username`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater`
--

LOCK TABLES `theater` WRITE;
/*!40000 ALTER TABLE `theater` DISABLE KEYS */;
INSERT INTO `theater` VALUES ('4400 Theater Company','Cinema Star',4,'100 Cool Place','San Francisco','CA','94016','entropyRox'),('4400 Theater Company','Jonathan\'s Movies',2,'67 Pearl Dr','Seattle','WA','98101','georgep'),('4400 Theater Company','Perimeter Cinema',2,'1 Roundabout Circle','Waco','TX','90467','manager1'),('4400 Theater Company','Star Movies',5,'4400 Rocks Ave','Boulder','CA','80301','radioactivePoRa'),('AI Theater Company','ML Movies',3,'314 Pi St','Pallet Town','KS','31415','ghcghc'),('Awesome Theater Company','ABC Theater',5,'880 Color Dr','Austin','TX','73301','imbatman'),('EZ Theater Company','Main Movies',3,'123 Main St','New York','NY','10001','fatherAI'),('EZ Theater Company','Star Movies',2,'745 GT St','Atlanta','GA','30332','calcultron');
/*!40000 ALTER TABLE `theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Username` varchar(45) NOT NULL,
  `Status` enum('Declined','Approved','Pending') NOT NULL DEFAULT 'Pending',
  `Password` varchar(40) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('b_allen','Pending','77c9749b451ab8c713c48037ddfbb2c4','Barry','Allen'),('calcultron','Approved','77c9749b451ab8c713c48037ddfbb2c4','Dwight','Schrute'),('calcultron2','Approved','8792b8cf71d27dc96173b2ac79b96e0d','Jim','Halpert'),('calcwizard','Approved','0d777e9e30b918e9034ab610712c90cf','Issac','Newton'),('clarinetbeast','Approved','c8c605999f3d8352d7bb792cf3fdb25b','Squidward','Tentacles'),('cool_class4400','Approved','77c9749b451ab8c713c48037ddfbb2c4','A. TA','Washere'),('DNAhelix','Approved','ca94efe2a58c27168edf3d35102dbb6d','Rosalind','Franklin'),('does2Much','Approved','00cedcf91beffa9ee69f6cfe23a4602d','Carl','Gauss'),('eeqmcsquare','Approved','7c5858f7fcf63ec268f42565be3abb95','Albert','Einstein'),('entropyRox','Approved','c8c605999f3d8352d7bb792cf3fdb25b','Claude','Shannon'),('fatherAI','Approved','0d777e9e30b918e9034ab610712c90cf','Alan','Turing'),('flinstone4','Pending','bbb8aae57c104cda40c93843ad5e6db8','Fred','Flintstone'),('fullMetal','Approved','d009d70ae4164e8989725e828db8c7c2','Edward','Elric'),('gdanger','Declined','3665a76e271ada5a75368b99f774e404','Gary','Danger'),('georgep','Approved','bbb8aae57c104cda40c93843ad5e6db8','George P.','Burdell'),('ghcghc','Approved','9f0863dd5f0256b0f586a7b523f8cfe8','Grace','Hopper'),('ilikemoney$$','Approved','7c5858f7fcf63ec268f42565be3abb95','Eugene','Krabs'),('imbatman','Approved','9f0863dd5f0256b0f586a7b523f8cfe8','Bruce','Wayne'),('imready','Approved','ca94efe2a58c27168edf3d35102dbb6d','Spongebob','Squarepants'),('isthisthekrustykrab','Approved','134fb0bf3bdd54ee9098f4cbc4351b9a','Patrick','Star'),('manager1','Approved','e58cce4fab03d2aea056398750dee16b','Manager','One'),('manager2','Approved','ba9485f02fc98cdbd2edadb0aa8f6390','Manager','Two'),('manager3','Approved','6e4fb18b49aa3219bef65195dac7be8c','Three','Three'),('manager4','Approved','d61dfee83aa2a6f9e32f268d60e789f5','Four','Four'),('notFullMetal','Approved','d009d70ae4164e8989725e828db8c7c2','Alphonse','Elric'),('programerAAL','Approved','ba9485f02fc98cdbd2edadb0aa8f6390','Ada','Lovelace'),('radioactivePoRa','Approved','e5d4b739db1226088177e6f8b70c3a6f','Marie','Curie'),('RitzLover28','Approved','8792b8cf71d27dc96173b2ac79b96e0d','Abby','Normal'),('rubble3','Pending','0d777e9e30b918e9034ab610712c90cf','Betty','Rubble'),('smith_j','Declined','77c9749b451ab8c713c48037ddfbb2c4','John','Smith'),('texasStarKarate','Declined','7c5858f7fcf63ec268f42565be3abb95','Sandy','Cheeks'),('thePiGuy3.14','Approved','e11170b8cbd2d74102651cb967fa28e5','Archimedes','Syracuse'),('theScienceGuy','Approved','c8c605999f3d8352d7bb792cf3fdb25b','Bill','Nye'),('wonderwoman','Pending','3665a76e271ada5a75368b99f774e404','Diana','Prince');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userfilterth`
--

DROP TABLE IF EXISTS `userfilterth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userfilterth` (
  `thName` varchar(45) NOT NULL,
  `thStreet` varchar(45) NOT NULL,
  `thCity` varchar(20) NOT NULL,
  `thState` char(2) NOT NULL,
  `thZipcode` char(10) NOT NULL,
  `comName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userfilterth`
--

LOCK TABLES `userfilterth` WRITE;
/*!40000 ALTER TABLE `userfilterth` DISABLE KEYS */;
INSERT INTO `userfilterth` VALUES ('Cinema Star','100 Cool Place','San Francisco','CA','94016','4400 Theater Company'),('Jonathan\'s Movies','67 Pearl Dr','Seattle','WA','98101','4400 Theater Company'),('Perimeter Cinema','1 Roundabout Circle','Waco','TX','90467','4400 Theater Company'),('Star Movies','4400 Rocks Ave','Boulder','CA','80301','4400 Theater Company'),('ML Movies','314 Pi St','Pallet Town','KS','31415','AI Theater Company'),('ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company'),('Main Movies','123 Main St','New York','NY','10001','EZ Theater Company'),('Star Movies','745 GT St','Atlanta','GA','30332','EZ Theater Company');
/*!40000 ALTER TABLE `userfilterth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userlogin` (
  `username` varchar(45) NOT NULL,
  `status` enum('Declined','Approved','Pending') NOT NULL DEFAULT 'Pending',
  `isCustomer` int(1) NOT NULL DEFAULT '0',
  `isAdmin` int(1) NOT NULL DEFAULT '0',
  `isManager` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogin`
--

LOCK TABLES `userlogin` WRITE;
/*!40000 ALTER TABLE `userlogin` DISABLE KEYS */;
INSERT INTO `userlogin` VALUES ('imbatman','Approved',0,0,1);
/*!40000 ALTER TABLE `userlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uservisithistory`
--

DROP TABLE IF EXISTS `uservisithistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uservisithistory` (
  `thName` varchar(45) NOT NULL,
  `thStreet` varchar(45) NOT NULL,
  `thCity` varchar(20) NOT NULL,
  `thState` char(2) NOT NULL,
  `thZipcode` char(10) NOT NULL,
  `comName` varchar(45) NOT NULL,
  `visitDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uservisithistory`
--

LOCK TABLES `uservisithistory` WRITE;
/*!40000 ALTER TABLE `uservisithistory` DISABLE KEYS */;
INSERT INTO `uservisithistory` VALUES ('ABC Theater','880 Color Dr','Austin','TX','73301','Awesome Theater Company','2019-12-24');
/*!40000 ALTER TABLE `uservisithistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VisitDate` date NOT NULL,
  `Visitor` varchar(45) NOT NULL,
  `CompanyName` varchar(45) NOT NULL,
  `TheaterName` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk10_idx` (`Visitor`),
  KEY `fk11_idx` (`CompanyName`,`TheaterName`),
  CONSTRAINT `fk10` FOREIGN KEY (`Visitor`) REFERENCES `user` (`Username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk11` FOREIGN KEY (`CompanyName`, `TheaterName`) REFERENCES `theater` (`CompanyName`, `TheaterName`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,'2010-03-22','georgep','EZ Theater Company','Main Movies'),(2,'2010-03-22','calcwizard','EZ Theater Company','Main Movies'),(3,'2010-03-25','calcwizard','EZ Theater Company','Star Movies'),(4,'2010-03-25','imready','EZ Theater Company','Star Movies'),(5,'2010-03-20','calcwizard','AI Theater Company','ML Movies'),(6,'2019-12-24','ghcghc','Awesome Theater Company','ABC Theater');
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'team39'
--
/*!50003 DROP PROCEDURE IF EXISTS `admin_approve_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_approve_user`(IN i_username VARCHAR(45))
BEGIN
	UPDATE user 
    SET Status = 'Approved'
	WHERE Username = i_username;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_create_mov` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_create_mov`(IN i_movName VARCHAR(45), IN i_movDuration int, IN i_movReleaseDate DATE)
BEGIN
insert into movie (MovieName, Duration, ReleaseDate) Values (i_movName, i_movDuration, i_movReleaseDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_create_theater` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_create_theater`(IN i_thName varchar(45), IN i_comName varchar(45), IN i_thStreet varchar(45), IN i_thCity varchar(20), IN i_thState char(2), IN i_thZipcode char(10), IN i_capacity int, IN i_managerUsername varchar(45))
BEGIN
	if not exists (select Manager from theater where Manager = i_managerUsername) then
		if exists (select Username from manager where Username = i_managerUsername and Works_In = i_comName) then 
		INSERT INTO theater (TheaterName, CompanyName, Capacity, Street, City, State, Zipcode, Manager) values
		(i_thName,
		(select CompanyName from company where CompanyName = i_comName),
		i_capacity, i_thStreet, i_thCity, i_thState, i_thZipcode, i_managerUsername);
        end if;
	else 
		SET @error = 'The manager has managed a theater.';
        SIGNAL SQLSTATE '45000' SET message_text = @error;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_decline_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_decline_user`(IN i_username VARCHAR(45))
BEGIN
	If exists (select Username from user where (Status = 'Declined' or Status = 'Pending') and Username = i_username) then
	UPDATE user 
    SET Status = 'Declined'
	WHERE Username = i_username;    
    else 
    SET @error = 'Cannot decline an approved user';
	SIGNAL SQLSTATE '45000' SET message_text = @error;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_filter_company` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_filter_company`(IN  i_comName varchar(45), IN  i_minCity int, IN  i_maxCity int, IN  i_minTheater int, IN  i_maxTheater int, IN  i_minEmployee int, IN i_maxEmployee int, IN  i_sortBy ENUM('','comName', 'numCityCover', 'numTheater', 'numEmployee'), IN  i_sortDirection ENUM('', 'ASC', 'DESC'))
BEGIN
	IF i_sortBy = '' THEN set i_sortBy = 'comName'; END IF;
	IF i_sortDirection = '' THEN set i_sortDirection = 'DESC'; END IF;
    IF i_sortDirection = '' OR i_sortDirection = 'DESC' Then
	DROP TABLE IF EXISTS AdFilterCom;
	CREATE TABLE AdFilterCom
	select * from
	(select CompanyName as comName, 
	count(distinct City, State) as numCityCover, 
	count(TheaterName) as numTheater
	from theater
	group by CompanyName
	having
		(numCityCover >= i_minCity or i_minCity is NULL) and
		(numCityCover <= i_maxCity or i_maxCity is NULL)and
		(numTheater >= i_minTheater or i_minTheater is NULL) and
		(numTheater <= i_maxTheater or i_maxTheater is NULL) 
	) as A
	natural join 
	(select Works_In as comName,
			count(Username) as numEmployee
	 from manager
	 group by comName
	 having(numEmployee >= i_minEmployee or i_minEmployee is NULL) and
			(numEmployee <= i_maxEmployee or i_maxEmployee is NULL)) as B
	where comName = i_comName or i_comName = 'ALL' or i_comName=''
	order by case when i_sortBy = 'comName' 	 then comName
				  when i_sortBy = 'numCityCover' then numCityCover
                  when i_sortBy = 'numTheater'	 then numTheater
                  when i_sortBy = 'numEmployee'	 then numEmployee
			 end
             desc;
	END IF;
    
	IF i_sortDirection = 'ASC' Then
	DROP TABLE IF EXISTS AdFilterCom;
	CREATE TABLE AdFilterCom
	select * from
	(select CompanyName as comName, 
	count(distinct City, State) as numCityCover, 
	count(TheaterName) as numTheater
	from theater
	group by CompanyName
	having
		(numCityCover >= i_minCity or i_minCity is NULL) and
		(numCityCover <= i_maxCity or i_maxCity is NULL)and
		(numTheater >= i_minTheater or i_minTheater is NULL) and
		(numTheater <= i_maxTheater or i_maxTheater is NULL) 
	) as A
	natural join 
	(select Works_In as comName,
			count(Username) as numEmployee
	 from manager
	 group by comName
	 having(numEmployee >= i_minEmployee or i_minEmployee is NULL) and
			(numEmployee <= i_maxEmployee or i_maxEmployee is NULL)) as B
	where comName = i_comName or i_comName = 'ALL' or i_comName=''
	order by case when i_sortBy = 'comName' 	 then comName
				  when i_sortBy = 'numCityCover' then numCityCover
                  when i_sortBy = 'numTheater'	 then numTheater
                  when i_sortBy = 'numEmployee'	 then numEmployee
			 end
             asc;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_filter_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_filter_user`(IN i_username VARCHAR(45), 
IN i_status ENUM("Approved", "Pending", "Declined","ALL"),
IN i_sortBy ENUM("username", "creditCardCount", "userType", "status",""), 
IN i_sortDirection ENUM("ASC", "DESC",""))
BEGIN
    DROP TABLE IF EXISTS AdFilterUser;
    CREATE TABLE AdFilterUser
    SELECT 
    Username,
    creditCardCount, 
    (CASE WHEN Username in (SELECT customer.Username FROM customer JOIN manager ON customer.Username = manager.Username) THEN "CustomerManager"
    WHEN Username in (SELECT customer.Username FROM customer JOIN admin ON customer.Username = admin.Username) THEN "CustomerAdmin"
    WHEN Username in (SELECT Username FROM admin) THEN "Admin"
    WHEN Username in (SELECT Username FROM manager) THEN "Manager"
    WHEN Username in (SELECT Username FROM customer) THEN "Customer"
    ELSE "User" END) AS userType, 
    Status AS status
    FROM (SELECT user.Username, COUNT(credit_card.CreditCardNum) AS creditCardCount, user.Status
    FROM user
    LEFT JOIN credit_card ON user.Username = credit_card.Owner
    GROUP BY user.Username
    HAVING
        CASE WHEN i_username <> '' THEN user.Username = i_username 
        ELSE user.Username = user.Username END
    ) AS t
    WHERE 
        CASE WHEN i_status = "ALL" THEN status = status
        ELSE status = i_status END
    ORDER BY
    (CASE WHEN (i_sortDirection = "ASC") AND (i_sortBy = "username") THEN username 
          WHEN (i_sortDirection = "ASC") AND (i_sortBy = "creditCardCount") THEN creditCardCount 
          WHEN (i_sortDirection = "ASC") AND (i_sortBy = "userType") THEN userType
          WHEN (i_sortDirection = "ASC") AND (i_sortBy = "status") THEN status
     END) ASC,
    (CASE WHEN (i_sortDirection = "DESC" or i_sortDirection = "") AND (i_sortBy = "username" or i_sortBy = "") THEN username 
          WHEN (i_sortDirection = "DESC" or i_sortDirection = "") AND (i_sortBy = "creditCardCount") THEN creditCardCount 
          WHEN (i_sortDirection = "DESC" or i_sortDirection = "") AND (i_sortBy = "userType") THEN userType
          WHEN (i_sortDirection = "DESC" or i_sortDirection = "") AND (i_sortBy = "status") THEN status
     END) DESC,
    (CASE WHEN (i_sortDirection = NULL) OR (i_sortBy = NULL) THEN username END) DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_view_comDetail_emp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_view_comDetail_emp`(IN i_comName varchar(45))
BEGIN
	DROP TABLE IF EXISTS  AdComDetailEmp;
    CREATE TABLE  AdComDetailEmp
    select FirstName as empFirstname, LastName as empLastname from user
    where Username in
	(select Username from manager
     where Works_In = i_comName) ; 
     if not exists (select CompanyName from Company where CompanyName = i_comName)
	then 
		SET @error = 'Company not exist.';
        SIGNAL SQLSTATE '45000' SET message_text = @error;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `admin_view_comDetail_th` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `admin_view_comDetail_th`(IN  i_comName varchar(45))
BEGIN
	DROP TABLE IF EXISTS  AdComDetailTh;
    CREATE TABLE  AdComDetailTh
    select TheaterName as thName,
		   Manager as thManagerUsername,
           City as thCity,
           State as thState,
           Capacity as thCapacity       
    from theater
    where CompanyName = i_comName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_add_creditcard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_add_creditcard`(IN i_Username VARCHAR(45), IN i_CreditCardNum CHAR(16))
BEGIN
		if (select count(*) from credit_card where Owner = i_Username) > 4 
        then
			SET @error = '5 credit cards at most';
			SIGNAL SQLSTATE '45000' SET message_text = @error;
		else
		INSERT INTO credit_card (CreditCardNum, Owner) VALUES (i_CreditCardNum, i_Username);
		end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_filter_mov` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_filter_mov`(i_movName VARCHAR(45), i_comName VARCHAR(45), i_city VARCHAR(20), i_state CHAR(3), i_minMovPlayDate Date, i_maxMovPlayDate Date)
BEGIN
    DROP TABLE IF EXISTS CosFilterMovie;
    CREATE TABLE CosFilterMovie
	SELECT MovieName as movName, TheaterName as thName,
    Street as thStreet, City as thCity, State as thState,
    Zipcode as thZipcode, CompanyName as comName, playDate as movPlayDate,
    MovieReleaseDate as movReleaseDate
    FROM movie NATURAL JOIN movieplay NATURAL JOIN theater
	WHERE
		(MovieName = i_movName or i_movName = 'ALL') AND (CompanyName = i_comName or i_comName ='ALL') AND
        (City = i_city or i_city = '') AND (State = i_state or i_state = 'ALL') AND
        (i_minMovPlayDate IS NULL OR playDate >= i_minMovPlayDate) AND
        (i_maxMovPlayDate IS NULL OR playDate <= i_maxMovPlayDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_only_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_only_register`(IN i_username VARCHAR(45), IN i_password VARCHAR(40), 
																	 IN i_firstname VARCHAR(30), IN i_lastname VARCHAR(30))
BEGIN
		INSERT INTO user (Username, Status, Password, Firstname, Lastname) VALUES (i_username, "Pending", MD5(i_password), i_firstname, i_lastname);
        INSERT INTO customer (Username) VALUES (i_username);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_view_history` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_view_history`(IN i_cusUsername VARCHAR(45))
BEGIN
    DROP TABLE IF EXISTS  CosViewHistory;
    CREATE TABLE  CosViewHistory
	SELECT MovieName as movName, TheaterName as thName,
    CompanyName as comName, CreditCardNumber as creditCardNum,
    PlayDate as movPlayDate
    FROM customerviewmovie
	WHERE
		customerviewmovie.CreditCardNumber IN 
        (SELECT credit_card.CreditCardNum 
        FROM credit_card 
        WHERE credit_card.Owner = i_cusUsername);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `customer_view_mov` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_view_mov`(i_creditCardNum CHAR(16), i_movName VARCHAR(45), i_movReleaseDate DATE,i_thName VARCHAR(45), i_comName VARCHAR(45), i_movPlayDate DATE)
BEGIN
	if (select count(*) from customerviewmovie where PlayDate = i_movPlayDate and 
		CreditCardNumber in (select CreditCardNum from credit_card where Owner = (select Owner from credit_card
        where CreditCardNum = i_creditCardNum)) ) > 2
    then 
		SET @error = 'Customer can at most watch 3 movies per day.';
        SIGNAL SQLSTATE '45000' SET message_text = @error;
	else
		INSERT INTO customerviewmovie (CreditCardNumber, MovieName, MovieReleaseDate, TheaterName, CompanyName, PlayDate)
		VALUES (i_creditCardNum, i_movName, i_movReleaseDate, i_thName, i_comName, i_movPlayDate);
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manager_customer_add_creditcard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manager_customer_add_creditcard`(IN i_username VARCHAR(45), IN i_creditCardNum CHAR(16))
BEGIN
if (select count(*) from credit_card where Owner = i_Username) > 4 
        then
			SET @error = '5 credit cards at most';
			SIGNAL SQLSTATE '45000' SET message_text = @error;
		else
			INSERT INTO credit_card (CreditCardNum, Owner) VALUES (i_creditCardNum, i_username);
		end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manager_customer_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manager_customer_register`(IN i_username VARCHAR(45), IN i_password VARCHAR(40), IN i_firstname VARCHAR(30), IN i_lastname VARCHAR(30),
 IN i_comName VARCHAR(45), IN i_empStreet VARCHAR(45), IN i_empCity VARCHAR(20), IN i_empState CHAR(2),  IN i_empZipcode CHAR(10))
BEGIN
	if exists(select Username from user where Username = i_username) then 
		SET @error = 'Register failed. Username has been used.';
		SIGNAL SQLSTATE '45000' SET message_text = @error;
    else
		if exists(select * from manager where Street = i_empStreet and City = i_empCity and State = i_empState and Zipcode = i_empZipcode) then
			SET @error = 'Register failed. Manager address has been used.';
			SIGNAL SQLSTATE '45000' SET message_text = @error;
		else
			if not exists(select CompanyName from company where CompanyName = i_comName) then
				SET @error = 'Register failed. Company does not exist.';
				SIGNAL SQLSTATE '45000' SET message_text = @error;
			else
				INSERT INTO user (Username, Password, FirstName, LastName) VALUES (i_username, MD5(i_password), i_firstname, i_lastname);
				INSERT INTO manager (Username, Street, City, State, Zipcode, Works_In) VALUES (i_username, i_empStreet, i_empCity, i_empState, i_empZipcode, i_comName);
				INSERT INTO customer (Username) VALUES (i_username);
			end if;
		end if;
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manager_filter_th` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manager_filter_th`(IN i_manUsername VARCHAR(45), 
IN i_movName varchar(45), IN i_minMovDuration INT, IN i_maxMovDuration INT, 
IN i_minMovReleaseDate DATE, IN i_maxMovReleaseDate DATE, 
IN i_minMovPlayDate DATE, IN i_maxMovPlayDate DATE, IN i_includeNotPlay boolean)
BEGIN
 DROP TABLE IF EXISTS ManFilterTh;
	if (i_includeNotPlay) then
    CREATE TABLE ManFilterTh
    select m.MovieName as movName, duration as movDuration, m.ReleaseDate as movReleaseDate, playDate as movPlayDate
        from (select * from movie full join theater where i_manUsername = Manager) m
        left outer join movieplay on
            (m.MovieName = movieplay.MovieName AND 
             m.ReleaseDate = movieplay.MovieReleaseDate AND 
             m.TheaterName = movieplay.TheaterName)
	where (m.MovieName like concat('%', i_movName, '%') or i_movName ="")
    AND (i_minMovDuration IS NULL OR Duration >= i_minMovDuration) 
	AND (i_maxMovDuration IS NULL OR Duration <= i_maxMovDuration)
	AND (i_minMovReleaseDate IS NULL OR ReleaseDate >= i_minMovReleaseDate) 
	AND (i_maxMovReleaseDate IS NULL OR ReleaseDate <= i_maxMovReleaseDate)
    AND (playDate IS NULL);   
else
	CREATE TABLE ManFilterTh
	select m.MovieName as movName, duration as movDuration, m.ReleaseDate as movReleaseDate, playDate as movPlayDate
        from (select * from movie full join theater where i_manUsername = Manager) m
        left outer join movieplay on
            (m.MovieName = movieplay.MovieName AND 
             m.ReleaseDate = movieplay.MovieReleaseDate AND 
             m.TheaterName = movieplay.TheaterName) where 
    (Manager IS NULL OR i_manUsername = Manager) AND    
    (m.MovieName like concat('%', i_movName, '%'))
    AND (i_minMovDuration IS NULL OR Duration >= i_minMovDuration) 
	AND (i_maxMovDuration IS NULL OR Duration <= i_maxMovDuration)
	AND (i_minMovReleaseDate IS NULL OR ReleaseDate >= i_minMovReleaseDate) 
	AND (i_maxMovReleaseDate IS NULL OR ReleaseDate <= i_maxMovReleaseDate)
	AND (PlayDate is NULL OR i_minMovPlayDate IS NULL OR PlayDate >= i_minMovPlayDate)
	AND (PlayDate is NULL OR i_maxMovPlayDate IS NULL OR PlayDate <= i_maxMovPlayDate);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manager_only_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manager_only_register`(IN i_username VARCHAR(45), IN i_password VARCHAR(40), IN i_firstname VARCHAR(30), IN i_lastname VARCHAR(30),
																	IN i_comName VARCHAR(45), IN i_empStreet VARCHAR(45), IN i_empCity VARCHAR(20), IN i_empState CHAR(2), IN i_empZipcode CHAR(5))
BEGIN
if exists(select Username from user where Username = i_username) then 
		SET @error = 'Register failed. Username has been used.';
		SIGNAL SQLSTATE '45000' SET message_text = @error;
    else
		if exists(select * from manager where Street = i_empStreet and City = i_empCity and State = i_empState and Zipcode = i_empZipcode) then
			SET @error = 'Register failed. Manager address has been used.';
			SIGNAL SQLSTATE '45000' SET message_text = @error;
		else
			if not exists(select CompanyName from company where CompanyName = i_comName) then
				SET @error = 'Register failed. Company does not exist.';
				SIGNAL SQLSTATE '45000' SET message_text = @error;
			else
				INSERT INTO user (Username, Password, FirstName, LastName) VALUES (i_username, MD5(i_password), i_firstname, i_lastname);
				INSERT INTO manager (Username, Street, City, State, Zipcode, Works_In) VALUES (i_username, i_empStreet, i_empCity, i_empState, i_empZipcode, i_comName);
			end if;
		end if;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `manager_schedule_mov` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `manager_schedule_mov`(IN i_manUsername varchar(45), i_movName varchar(45), i_movReleaseDate Date, i_movPlayDate Date)
BEGIN
if i_movReleaseDate <= i_movPlayDate Then 
insert into movieplay (CompanyName, TheaterName, MovieName, MovieReleaseDate, playDate) 
Values (
(select(CompanyName) from theater where Manager = i_manUsername), 
(select(TheaterName) from theater where Manager = i_manUsername),
(select(MovieName) from movie where MovieName = i_movName),
(select(ReleaseDate) from movie where ReleaseDate = i_movReleaseDate),
i_movPlayDate);

else
 SET @error = 'Release date must be before play date.';
 SIGNAL SQLSTATE '45000' SET message_text = @error;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_filter_th` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_filter_th`(IN i_thName VARCHAR(45), IN i_comName VARCHAR(45), IN i_city VARCHAR(20), IN i_state CHAR(3))
BEGIN
    DROP TABLE IF EXISTS UserFilterTh;
    CREATE TABLE UserFilterTh
	SELECT TheaterName as thName, Street as thStreet,
    City as thCity, State as thState, Zipcode as thZipcode,
    CompanyName as comName
    FROM Theater
    WHERE 
		(TheaterName = i_thName OR i_thName = "ALL") AND
        (CompanyName = i_comName OR i_comName = "ALL") AND
        (City = i_city OR i_city = "") AND
        (State = i_state OR i_state = "ALL" or i_state = '');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_filter_visitHistory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_filter_visitHistory`(IN i_username VARCHAR(45), IN i_minVisitDate DATE, IN i_maxVisitDate DATE)
BEGIN
    DROP TABLE IF EXISTS UserVisitHistory;
    CREATE TABLE UserVisitHistory
	SELECT TheaterName as thName, Street as thStreet,
    City as thCity, State as thState, Zipcode as thZipcode,
    CompanyName as comName, VisitDate as visitDate
    FROM visit
		NATURAL JOIN
        theater
	WHERE
		(Visitor = i_username) AND
        (i_minVisitDate IS NULL OR VisitDate >= i_minVisitDate) AND
        (i_maxVisitDate IS NULL OR VisitDate <= i_maxVisitDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_login`(IN i_username VARCHAR(45), IN i_password VARCHAR(40))
BEGIN
	if not exists (select Username from user where Username = i_username and md5(i_password) = Password )
    then 
		SET @error = 'Login Failed. Check username and password.';
		SIGNAL SQLSTATE '45000' SET message_text = @error;
	else
    DROP TABLE IF EXISTS UserLogin;
    CREATE TABLE UserLogin
	SELECT Username AS username, 
    Status AS status, 
    (CASE WHEN Username in (SELECT Username FROM customer) THEN 1 ELSE 0 END) AS isCustomer, 
    (CASE WHEN Username in (SELECT Username FROM admin) THEN 1 ELSE 0 END) AS isAdmin, 
    (CASE WHEN Username in (SELECT Username FROM manager) THEN 1 ELSE 0 END) AS isManager 
    FROM user
    where Username = i_username;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_register` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_register`(IN i_username VARCHAR(45), IN i_password VARCHAR(40),  
															 IN i_firstname VARCHAR(30), IN i_lastname VARCHAR(30))
BEGIN
		INSERT INTO user (Username, Status, Password, Firstname, Lastname) 
		VALUES (i_username, "Pending", MD5(i_password), i_firstname, i_lastname);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `user_visit_th` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_visit_th`(IN i_thName VARCHAR(45), IN i_comName VARCHAR(45), IN i_visitDate DATE, IN i_username VARCHAR(45))
BEGIN
    INSERT INTO visit (TheaterName, CompanyName, VisitDate, Visitor)
    VALUES (i_thName, i_comName, i_visitDate, i_username);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `magic44_content_differences`
--

/*!50001 DROP VIEW IF EXISTS `magic44_content_differences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `magic44_content_differences` AS select `magic44_answers`.`step_ID` AS `step_ID`,'missing' AS `category`,`magic44_answers`.`row_hash` AS `row_hash` from `magic44_answers` where concat(`magic44_answers`.`step_ID`,'@',`magic44_answers`.`row_hash`) in (select concat(`magic44_test_results`.`step_ID`,'@',`magic44_test_results`.`row_hash`) from `magic44_test_results`) is false union select `magic44_test_results`.`step_ID` AS `step_ID`,'extra' AS `category`,`magic44_test_results`.`row_hash` AS `row_hash` from `magic44_test_results` where concat(`magic44_test_results`.`step_ID`,'@',`magic44_test_results`.`row_hash`) in (select concat(`magic44_answers`.`step_ID`,'@',`magic44_answers`.`row_hash`) from `magic44_answers`) is false order by `step_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `magic44_count_answers`
--

/*!50001 DROP VIEW IF EXISTS `magic44_count_answers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `magic44_count_answers` AS select `magic44_answers`.`step_ID` AS `step_ID`,count(0) AS `answer_total` from `magic44_answers` group by `magic44_answers`.`step_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `magic44_count_differences`
--

/*!50001 DROP VIEW IF EXISTS `magic44_count_differences`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `magic44_count_differences` AS select `magic44_count_answers`.`step_ID` AS `step_ID`,`magic44_count_answers`.`answer_total` AS `answer_total`,`magic44_count_test_results`.`result_total` AS `result_total` from (`magic44_count_answers` left join `magic44_count_test_results` on((`magic44_count_answers`.`step_ID` = `magic44_count_test_results`.`step_ID`))) where ((`magic44_count_answers`.`answer_total` <> `magic44_count_test_results`.`result_total`) or (`magic44_count_test_results`.`result_total` is null)) union select `magic44_count_test_results`.`step_ID` AS `step_ID`,`magic44_count_answers`.`answer_total` AS `answer_total`,`magic44_count_test_results`.`result_total` AS `result_total` from (`magic44_count_test_results` left join `magic44_count_answers` on((`magic44_count_test_results`.`step_ID` = `magic44_count_answers`.`step_ID`))) where ((`magic44_count_test_results`.`result_total` <> `magic44_count_answers`.`answer_total`) or (`magic44_count_answers`.`answer_total` is null)) order by `step_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `magic44_count_test_results`
--

/*!50001 DROP VIEW IF EXISTS `magic44_count_test_results`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `magic44_count_test_results` AS select `magic44_test_results`.`step_ID` AS `step_ID`,count(0) AS `result_total` from `magic44_test_results` group by `magic44_test_results`.`step_ID` */;
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

-- Dump completed on 2019-11-29 18:39:46
