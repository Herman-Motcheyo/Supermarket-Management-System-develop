-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: supermarketmanagemenysystem
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.2

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
-- Table structure for table `EnterStock`
--

DROP TABLE IF EXISTS `EnterStock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EnterStock` (
  `idEnter` int NOT NULL AUTO_INCREMENT,
  `quantityEnter` int NOT NULL,
  `priceEnter` float NOT NULL,
  `dateEnter` date NOT NULL,
  `codeP` varchar(50) NOT NULL,
  PRIMARY KEY (`idEnter`),
  KEY `EnterStock_product_FK` (`codeP`),
  CONSTRAINT `EnterStock_product_FK` FOREIGN KEY (`codeP`) REFERENCES `product` (`codeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EnterStock`
--

LOCK TABLES `EnterStock` WRITE;
/*!40000 ALTER TABLE `EnterStock` DISABLE KEYS */;
/*!40000 ALTER TABLE `EnterStock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Utilisateur`
--

DROP TABLE IF EXISTS `Utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Utilisateur` (
  `idUtilisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) DEFAULT NULL,
  `prenom` varchar(250) DEFAULT NULL,
  `mot_de_passe` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `infecter` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idUtilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Utilisateur`
--

LOCK TABLES `Utilisateur` WRITE;
/*!40000 ALTER TABLE `Utilisateur` DISABLE KEYS */;
/*!40000 ALTER TABLE `Utilisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'herman','014','esfd','fdvdfvd','fsdsd',52522745),(2,'toto','toto','tesytty','dsdsqd','tata@gmail.com',6565);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie` (
  `nameCat` varchar(50) NOT NULL,
  `descriptionCat` longtext,
  PRIMARY KEY (`nameCat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES ('Alimentation','empty');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commande` (
  `numCom` int NOT NULL AUTO_INCREMENT,
  `dateCom` date NOT NULL,
  `statutCom` tinyint(1) NOT NULL,
  PRIMARY KEY (`numCom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factureCommand`
--

DROP TABLE IF EXISTS `factureCommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factureCommand` (
  `indexCommand` int NOT NULL AUTO_INCREMENT,
  `qtycommander` int NOT NULL,
  `priceCommand` float NOT NULL,
  `montantcommand` float NOT NULL,
  `codeP` varchar(50) NOT NULL,
  PRIMARY KEY (`indexCommand`),
  KEY `factureCommand_product_FK` (`codeP`),
  CONSTRAINT `factureCommand_product_FK` FOREIGN KEY (`codeP`) REFERENCES `product` (`codeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factureCommand`
--

LOCK TABLES `factureCommand` WRITE;
/*!40000 ALTER TABLE `factureCommand` DISABLE KEYS */;
/*!40000 ALTER TABLE `factureCommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outputStock`
--

DROP TABLE IF EXISTS `outputStock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outputStock` (
  `idOut` int NOT NULL AUTO_INCREMENT,
  `priceOut` float NOT NULL,
  `quantityOut` int NOT NULL,
  `dateOut` date NOT NULL,
  `codeP` varchar(50) NOT NULL,
  PRIMARY KEY (`idOut`),
  KEY `outputStock_product_FK` (`codeP`),
  CONSTRAINT `outputStock_product_FK` FOREIGN KEY (`codeP`) REFERENCES `product` (`codeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outputStock`
--

LOCK TABLES `outputStock` WRITE;
/*!40000 ALTER TABLE `outputStock` DISABLE KEYS */;
/*!40000 ALTER TABLE `outputStock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `codeP` varchar(50) NOT NULL,
  `designationP` longtext NOT NULL,
  `unityP` int NOT NULL,
  `priceP` float NOT NULL,
  `qteP` int NOT NULL,
  `codePro` varchar(50) NOT NULL,
  `nameCat` varchar(50) NOT NULL,
  `nameStore` varchar(50) NOT NULL,
  PRIMARY KEY (`codeP`),
  KEY `product_provider_FK` (`codePro`),
  KEY `product_categorie0_FK` (`nameCat`),
  KEY `product_storehouse1_FK` (`nameStore`),
  CONSTRAINT `product_categorie0_FK` FOREIGN KEY (`nameCat`) REFERENCES `categorie` (`nameCat`),
  CONSTRAINT `product_provider_FK` FOREIGN KEY (`codePro`) REFERENCES `provider` (`codePro`),
  CONSTRAINT `product_storehouse1_FK` FOREIGN KEY (`nameStore`) REFERENCES `storehouse` (`nameStore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provider` (
  `codePro` varchar(50) NOT NULL,
  `namePro` varchar(50) NOT NULL,
  `adressePro` varchar(50) NOT NULL,
  `numberPro` varchar(50) NOT NULL,
  `mailPro` varchar(50) NOT NULL,
  PRIMARY KEY (`codePro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES ('xyz','best programming','Yaounde 1 . Cameroon','1234','hello@gmail.com');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receive`
--

DROP TABLE IF EXISTS `receive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receive` (
  `numCom` int NOT NULL,
  `codePro` varchar(50) NOT NULL,
  PRIMARY KEY (`numCom`,`codePro`),
  KEY `receive_provider0_FK` (`codePro`),
  CONSTRAINT `receive_commande_FK` FOREIGN KEY (`numCom`) REFERENCES `commande` (`numCom`),
  CONSTRAINT `receive_provider0_FK` FOREIGN KEY (`codePro`) REFERENCES `provider` (`codePro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receive`
--

LOCK TABLES `receive` WRITE;
/*!40000 ALTER TABLE `receive` DISABLE KEYS */;
/*!40000 ALTER TABLE `receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storehouse`
--

DROP TABLE IF EXISTS `storehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storehouse` (
  `nameStore` varchar(50) NOT NULL,
  PRIMARY KEY (`nameStore`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storehouse`
--

LOCK TABLES `storehouse` WRITE;
/*!40000 ALTER TABLE `storehouse` DISABLE KEYS */;
INSERT INTO `storehouse` VALUES ('kenedy');
/*!40000 ALTER TABLE `storehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-21  5:55:10