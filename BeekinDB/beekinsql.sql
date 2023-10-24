CREATE DATABASE  IF NOT EXISTS `beeui` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `beeui`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: beeui
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `applicantdata`
--

DROP TABLE IF EXISTS `applicantdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicantdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `experience_years` decimal(10,0) DEFAULT NULL,
  `education` varchar(45) DEFAULT NULL,
  `skills` text,
  `Projects` text,
  `jobid` int DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicantdata`
--

LOCK TABLES `applicantdata` WRITE;
/*!40000 ALTER TABLE `applicantdata` DISABLE KEYS */;
INSERT INTO `applicantdata` VALUES (1,'sa',2,'saaa','sad','sadd',1,NULL),(2,'n',1,'nkn','1','hdc',1,NULL),(3,'sak',1,'jjj','jjdhjdh','ndh',2,NULL),(4,'Sakshi',1,'b.tech','django, aka','dhjhee',2,'ss123@gmail.com');
/*!40000 ALTER TABLE `applicantdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(4500) NOT NULL,
  `domain` varchar(4500) DEFAULT NULL,
  `desc` varchar(4500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Software Engineering','Technology/Software Development',' Software developers design, code, and test computer software applications. They work on a variety of projects, from web applications and mobile apps to desktop software. Developers are responsible for turning ideas and requirements into functional software, and they may specialize in front-end, back-end, or full-stack development.'),(2,'Graphic Designer (Creative)','Creative/Design',' Graphic designers use their artistic skills to create visual content for various purposes, including advertisements, websites, logos, and marketing materials. They work with clients or creative teams to design eye-catching visuals that communicate messages effectively'),(3,'Financial Analyst (Finance)','Finance/Investment','Financial analysts evaluate financial data to help organizations make informed investment decisions. They analyze stocks, bonds, and other investment opportunities. Financial analysts also prepare reports, forecasts, and financial models to guide investment strategies.'),(4,'Marketing Manager (Marketing):','Marketing/Advertising',' Marketing managers plan and execute marketing campaigns to promote products or services. They analyze market trends, develop marketing strategies, and oversee a team of marketing professionals. This role involves creating brand awareness, managing advertising, and analyzing campaign results.'),(5,'Data Scientist (Technology)','Data Science',' Data scientists collect, analyze, and interpret large datasets to extract valuable insights. They use statistical techniques, machine learning, and data visualization tools to help organizations make data-driven decisions. Data scientists work in various industries, including finance, healthcare, and e-commerce.'),(6,'Human Resources Manager (Human Resources):','Human Resources/Management','HR managers oversee human resources operations within an organization. They handle staffing, employee relations, benefits administration, and compliance with labor laws. HR managers play a key role in creating a positive workplace culture and resolving employee-related issues.'),(7,'Content Writer (Marketing/Writing):','Marketing/Writing','Content writers create written content for websites, blogs, social media, and marketing materials. They craft engaging, informative, and persuasive articles, blog posts, and copy to attract and engage readers');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 11:23:10
