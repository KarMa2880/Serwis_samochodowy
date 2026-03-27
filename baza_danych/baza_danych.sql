CREATE DATABASE  IF NOT EXISTS `serwis_samochodowy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `serwis_samochodowy`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: serwis_samochodowy
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
-- Table structure for table `czesci`
--

DROP TABLE IF EXISTS `czesci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czesci` (
  `id_czesci` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `producent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_czesci`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czesci`
--

LOCK TABLES `czesci` WRITE;
/*!40000 ALTER TABLE `czesci` DISABLE KEYS */;
INSERT INTO `czesci` VALUES (1,'Filtr oleju',40.00,'Bosch'),(2,'Filtr powietrza',55.00,'Mann'),(3,'Filtr kabinowy',60.00,'Filtron'),(4,'Klocki hamulcowe przód',150.00,'Brembo'),(5,'Klocki hamulcowe tył',130.00,'ATE'),(6,'Tarcze hamulcowe przód',280.00,'Zimmermann'),(7,'Tarcze hamulcowe tył',240.00,'TRW'),(8,'Pasek rozrządu',180.00,'Contitech'),(9,'Pompa wody',220.00,'SKF'),(10,'Amortyzator przód',300.00,'KYB'),(11,'Amortyzator tył',250.00,'Monroe'),(12,'Alternator',450.00,'Valeo'),(13,'Sprężyna zawieszenia',180.00,'Lesjöfors'),(14,'Świeca zapłonowa',35.00,'NGK'),(15,'Akumulator 60Ah',350.00,'Varta');
/*!40000 ALTER TABLE `czesci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klienci`
--

DROP TABLE IF EXISTS `klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klienci` (
  `id_klienta` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `marka_samochodu` varchar(50) DEFAULT NULL,
  `model_samochodu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` VALUES (1,'Jan','Kowalski','600123456','jan.kowalski@example.com','Mercedes','E200'),(2,'Anna','Nowak','601987654','anna.nowak@example.com','BMW','E36'),(3,'Piotr','Wiśniewski','602555444','piotr.wisniewski@example.com','Honda','Crv'),(4,'Katarzyna','Zielińska','603444333','katarzyna.zielinska@example.com','Aston Martin','DB9'),(5,'Marek','Wójcik','604333222','marek.wojcik@example.com','Mazda','Miata'),(6,'Agnieszka','Kamińska','605222111','agnieszka.kaminska@example.com','Opel','Astra'),(7,'Tomasz','Lewandowski','606111000','tomasz.lewandowski@example.com','Toyota','Corolla'),(8,'Ewa','Szymańska','607999888','ewa.szymanska@example.com','Vw','Arteon'),(9,'Paweł','Dąbrowski','608888777','pawel.dabrowski@example.com','Fiat','Multipla'),(10,'Magdalena','Krawczyk','609777666','magdalena.krawczyk@example.com','Renaul','Talisman');
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uslugi`
--

DROP TABLE IF EXISTS `uslugi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uslugi` (
  `id_uslugi` int NOT NULL AUTO_INCREMENT,
  `nazwa` varchar(100) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_uslugi`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uslugi`
--

LOCK TABLES `uslugi` WRITE;
/*!40000 ALTER TABLE `uslugi` DISABLE KEYS */;
INSERT INTO `uslugi` VALUES (1,'Wymiana oleju',150.00),(2,'Wymiana klocków hamulcowych',300.00),(3,'Diagnostyka komputerowa',120.00),(4,'Przegląd okresowy',250.00),(5,'Wymiana opon',200.00),(6,'Wymiana rozrządu',500.00),(7,'Wymiana zawieszenia',400.00),(8,'Serwis skrzyni biegów',600.00),(9,'Wymiana alternatora',270.00),(10,'Serwis klimatyzacji',400.00);
/*!40000 ALTER TABLE `uslugi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizyty`
--

DROP TABLE IF EXISTS `wizyty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wizyty` (
  `id_wizyty` int NOT NULL AUTO_INCREMENT,
  `id_klienta` int DEFAULT NULL,
  `data_wizyty` date DEFAULT NULL,
  `opis` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_wizyty`),
  KEY `id_klienta` (`id_klienta`),
  CONSTRAINT `wizyty_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizyty`
--

LOCK TABLES `wizyty` WRITE;
/*!40000 ALTER TABLE `wizyty` DISABLE KEYS */;
INSERT INTO `wizyty` VALUES (1,1,'2026-01-10','Wymiana oleju i filtrów'),(2,2,'2026-01-15','Wymiana klocków hamulcowych przód'),(3,3,'2026-02-01','Diagnostyka komputerowa – kontrolka silnika'),(4,4,'2026-02-12','Przegląd okresowy'),(5,5,'2026-02-25','Wymiana opon na letnie'),(6,6,'2026-03-04','Wymiana rozrządu'),(7,7,'2026-03-06','Naprawa zawieszenia – amortyzatory'),(8,8,'2026-03-15','Serwis skrzyni biegów'),(9,9,'2026-03-20','Wymiana alternatora'),(10,10,'2026-03-20','Serwis klimatyzacji – odgrzybianie i nabicie'),(11,3,'2026-03-21','Diagnostyka komputerowa – kontrolka silnika'),(12,10,'2026-03-26','Przeglad okresowy');
/*!40000 ALTER TABLE `wizyty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizyty_czesci`
--

DROP TABLE IF EXISTS `wizyty_czesci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wizyty_czesci` (
  `id_wizyty` int NOT NULL,
  `id_czesci` int NOT NULL,
  `ilosc` int DEFAULT '1',
  PRIMARY KEY (`id_wizyty`,`id_czesci`),
  KEY `id_czesci` (`id_czesci`),
  CONSTRAINT `wizyty_czesci_ibfk_1` FOREIGN KEY (`id_wizyty`) REFERENCES `wizyty` (`id_wizyty`),
  CONSTRAINT `wizyty_czesci_ibfk_2` FOREIGN KEY (`id_czesci`) REFERENCES `czesci` (`id_czesci`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizyty_czesci`
--

LOCK TABLES `wizyty_czesci` WRITE;
/*!40000 ALTER TABLE `wizyty_czesci` DISABLE KEYS */;
INSERT INTO `wizyty_czesci` VALUES (1,1,1),(1,2,1),(1,3,1),(2,4,1),(3,14,4),(4,1,1),(4,2,1),(4,3,1),(6,8,1),(6,9,1),(7,10,2),(7,11,2),(7,13,2),(9,12,1),(10,3,1);
/*!40000 ALTER TABLE `wizyty_czesci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizyty_uslugi`
--

DROP TABLE IF EXISTS `wizyty_uslugi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wizyty_uslugi` (
  `id_wizyty` int NOT NULL,
  `id_uslugi` int NOT NULL,
  PRIMARY KEY (`id_wizyty`,`id_uslugi`),
  KEY `id_uslugi` (`id_uslugi`),
  CONSTRAINT `wizyty_uslugi_ibfk_1` FOREIGN KEY (`id_wizyty`) REFERENCES `wizyty` (`id_wizyty`),
  CONSTRAINT `wizyty_uslugi_ibfk_2` FOREIGN KEY (`id_uslugi`) REFERENCES `uslugi` (`id_uslugi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizyty_uslugi`
--

LOCK TABLES `wizyty_uslugi` WRITE;
/*!40000 ALTER TABLE `wizyty_uslugi` DISABLE KEYS */;
INSERT INTO `wizyty_uslugi` VALUES (1,1),(2,2),(1,3),(3,3),(11,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `wizyty_uslugi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-27 16:41:21
