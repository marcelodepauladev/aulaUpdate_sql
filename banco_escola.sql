-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `ID` tinyint NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  `RG` tinyint NOT NULL,
  `CPF` tinyint NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `ENDERECO` char(50) NOT NULL,
  `NUMERO` smallint NOT NULL,
  `COMPLEMENTO` varchar(50) DEFAULT NULL,
  `BAIRRO` char(40) NOT NULL,
  `ID_CIDADE` smallint NOT NULL,
  `CEP` char(10) NOT NULL,
  `TELEFONE1` char(12) NOT NULL,
  `TELEFONE2` char(12) NOT NULL,
  `PAI` tinyint NOT NULL,
  `MAE` tinyint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Gabriela da Silva',6,4,'1979-03-26','Rua Angelo Zugliani',33,'Casa','Jardim Maria Luiza',5,'10.584-471','29-8615-4558','29-8775-2452',2,6),(2,'Nacib Saad',8,6,'1961-04-14','Rua Major Ascanio',247,'Apto.','Vila Brasil',4,'20.125-144','10-1718-5110','10-8078-2951',6,10),(3,'Mundinho Falcão',9,3,'1981-03-20','Rua Francisco Glicério',1807,'Fundos','Vila Buscariolo',1,'18.391-120','22-1897-4072','22-8649-6869',5,5),(4,'Manoel da Onças',2,5,'1931-04-02','Rua Visconde Rio Branco',984,'Casa','Centro',9,'13.133-763','13-5006-1895','13-9529-3164',4,2),(5,'Coronel Coriolano',4,8,'1933-01-27','Avenida do Café',488,'3º Andar, Nº 52','Vila Maria Cristina',2,'28.719-415','28-7366-0612','28-8931-1282',1,1),(6,'Maria Machadão',5,9,'1972-05-27','Rua Rangel Pestana',700,'Bloco II','Vila Nova',3,'14.227-991','23-8564-6322','23-9012-8224',9,8),(7,'Zarolha',7,2,'1969-11-06','Rua Dr. Quinzinho',511,'Casa','Chacara Peccioli',7,'22.192-012','10-4211-8537','10-9128-3283',10,3),(8,'Coronel Ramiro Bastos',10,10,'1949-04-18','Avenida Gustavo Chiozzi',405,'Subsolo','Jardim Netinho Prado',6,'11.235-877','19-8340-8276','19-9651-4781',3,4),(9,'Tonico Bastos',1,1,'1967-02-10','Rua Santa Barbara',165,'A','Vila Vicente',6,'26.740-878','25-2533-2285','25-9979-4499',7,9),(10,'Doroteia',3,7,'1927-09-13','Rua Aristides Lobo Sobrinho',101,'Apto.','Chacara Braz Miraglia',8,'13.474-853','12-4511-6110','12-8145-0515',8,7);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletins`
--

DROP TABLE IF EXISTS `boletins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boletins` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_ALUNO` tinyint DEFAULT NULL,
  `ID_DISCIPLINA` tinyint DEFAULT NULL,
  `DATA` date DEFAULT NULL,
  `NOTA` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletins`
--

LOCK TABLES `boletins` WRITE;
/*!40000 ALTER TABLE `boletins` DISABLE KEYS */;
INSERT INTO `boletins` VALUES (1,7,8,'2012-08-01',5.0),(2,3,6,'2012-06-01',7.1),(3,3,8,'2012-03-14',3.7),(4,6,2,'2012-08-20',4.1),(5,6,6,'2012-10-30',5.0),(6,3,3,'2012-08-20',3.5),(7,9,8,'2012-10-14',4.0),(8,9,4,'2012-07-24',7.0),(9,7,4,'2012-05-06',9.8),(10,9,3,'2012-11-11',2.3),(11,6,8,'2012-06-29',6.2),(12,7,5,'2012-09-01',8.6),(13,1,1,'2012-07-11',5.9),(14,3,1,'2012-11-27',3.8),(15,9,5,'2012-08-27',3.4),(16,3,2,'2012-09-25',8.6),(17,7,3,'2012-07-28',7.2),(18,8,2,'2012-10-01',1.1),(19,7,2,'2012-07-23',3.5),(20,8,4,'2012-02-09',1.3),(21,4,4,'2012-08-05',9.3),(22,9,5,'2012-01-05',8.2),(23,9,4,'2012-03-01',3.9),(24,2,3,'2012-07-09',9.0),(25,2,1,'2012-06-03',7.5),(26,9,3,'2012-12-10',5.5),(27,8,1,'2012-05-02',1.8),(28,9,1,'2012-06-15',7.4),(29,3,4,'2012-07-09',7.9),(30,10,3,'2012-07-29',7.9),(31,9,8,'2012-07-23',6.6),(32,7,6,'2012-07-07',5.0),(33,9,5,'2012-05-28',3.7),(34,8,3,'2012-02-19',9.9),(35,4,1,'2012-05-28',3.6),(36,5,1,'2012-07-29',6.1),(37,8,6,'2012-06-13',8.5),(38,3,5,'2012-06-26',2.5),(39,1,8,'2012-09-14',3.4),(40,6,4,'2012-03-05',5.4),(41,6,4,'2012-02-24',3.3),(42,1,3,'2012-02-09',9.3),(43,3,1,'2012-10-28',9.0),(44,10,8,'2012-06-17',1.2),(45,10,3,'2012-01-17',7.1),(46,10,6,'2012-10-22',3.8),(47,5,6,'2012-12-15',8.2),(48,10,3,'2012-01-11',3.1),(49,5,2,'2012-06-29',2.1),(50,6,2,'2012-04-24',5.5),(51,6,6,'2012-04-15',3.6),(52,6,1,'2012-08-23',8.0),(53,2,3,'2012-04-06',3.8),(54,2,3,'2012-06-28',6.6),(55,7,4,'2012-08-15',1.4),(56,7,3,'2012-01-23',7.2),(57,5,3,'2012-02-03',2.7),(58,9,8,'2012-04-25',4.8),(59,5,5,'2012-05-21',5.1),(60,3,1,'2012-11-04',6.9),(61,6,1,'2012-09-27',6.2),(62,7,6,'2012-07-08',7.8),(63,8,8,'2012-07-30',6.0),(64,9,6,'2012-08-06',3.2),(65,9,6,'2012-12-30',5.1),(66,9,6,'2012-04-08',5.1),(67,6,6,'2012-09-20',9.9),(68,5,5,'2012-09-12',7.9),(69,7,6,'2012-01-21',5.3),(70,1,4,'2012-07-09',5.2),(71,3,3,'2012-07-06',5.6),(72,6,3,'2012-03-13',2.1),(73,6,6,'2012-11-23',2.7),(74,10,3,'2012-11-10',2.2),(75,2,3,'2012-05-15',8.4),(76,10,6,'2012-08-30',7.7),(77,1,2,'2012-11-18',8.3),(78,2,8,'2012-04-29',4.0),(79,6,3,'2012-01-29',6.2),(80,7,2,'2012-04-29',6.6),(81,3,8,'2012-06-21',8.1),(82,3,5,'2012-10-30',7.6),(83,1,8,'2012-06-23',9.5),(84,7,6,'2012-08-03',2.4),(85,10,2,'2012-05-10',9.4),(86,2,8,'2012-10-16',8.8),(87,8,6,'2012-12-29',7.9),(88,10,6,'2012-07-21',2.4),(89,5,3,'2012-07-05',7.4),(90,7,8,'2012-09-25',8.6),(91,6,8,'2012-12-30',1.7),(92,3,3,'2012-11-30',2.8),(93,6,8,'2012-05-20',9.2),(94,3,5,'2012-06-17',7.7),(95,7,4,'2012-09-25',3.0),(96,8,1,'2012-11-30',5.2),(97,4,2,'2012-06-22',4.9);
/*!40000 ALTER TABLE `boletins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `ID` smallint NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  `UF` char(2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Brasília','DF'),(2,'Guaragi','PR'),(3,'Juazeiro','BA'),(4,'Nova Iguaçu','RJ'),(5,'Rio Bonito','RJ'),(6,'Rio de Janeiro','RJ'),(7,'Rosário do Sul','RS'),(8,'São Paulo','SP'),(9,'Ubá','MG');
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpfs`
--

DROP TABLE IF EXISTS `cpfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpfs` (
  `ID` tinyint NOT NULL AUTO_INCREMENT,
  `NUMERO` char(14) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpfs`
--

LOCK TABLES `cpfs` WRITE;
/*!40000 ALTER TABLE `cpfs` DISABLE KEYS */;
INSERT INTO `cpfs` VALUES (1,'220.178.979-44'),(2,'223.168.731-94'),(3,'221.593.349-78'),(4,'147.520.609-61'),(5,'356.115.460-86'),(6,'275.213.650-63'),(7,'102.566.825-44'),(8,'290.724.003-96'),(9,'312.467.859-64'),(10,'206.558.702-80');
/*!40000 ALTER TABLE `cpfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplinas` (
  `ID` tinyint NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES (1,'Gestão de Sistema Operacionais I'),(2,'Instalação e Manutenção de Computador'),(3,'Técnica e Linguagens para Banco de Dados I'),(4,'Organização Empresarial'),(5,'Operação de Software Aplicativos'),(6,'Lógica de Programação'),(7,'Inglês Instrumental'),(8,'Linguagem, Trabalho e Tecnologia');
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maes`
--

DROP TABLE IF EXISTS `maes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maes` (
  `ID` tinyint NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maes`
--

LOCK TABLES `maes` WRITE;
/*!40000 ALTER TABLE `maes` DISABLE KEYS */;
INSERT INTO `maes` VALUES (1,'Florzinha Reis'),(2,'Miquelina'),(3,'Quinquina dos Reis'),(4,'Conceição Bastos'),(5,'Maria Lupicínia'),(6,'Anabela Fernandes Prado'),(7,'Olga Bastos'),(8,'Marinalva Tavares'),(9,'Gerusa Bastos'),(10,'Dona Arminda');
/*!40000 ALTER TABLE `maes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `ID` tinyint NOT NULL AUTO_INCREMENT,
  `NOME` char(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Coronel Ribeirinho'),(2,'Professor Josué'),(3,'Alfredo Bastos'),(4,'João Fulgêncio'),(5,'Chico Moleza'),(6,'Rômulo Vieira'),(7,'Coronel Ramiro Bastos'),(8,'Dr. Osmundo Pimentel'),(9,'Coronel Amâncio Leal'),(10,'Negro Fagundes');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rgs`
--

DROP TABLE IF EXISTS `rgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rgs` (
  `ID` tinyint NOT NULL AUTO_INCREMENT,
  `NUMERO` char(12) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rgs`
--

LOCK TABLES `rgs` WRITE;
/*!40000 ALTER TABLE `rgs` DISABLE KEYS */;
INSERT INTO `rgs` VALUES (1,'16.170.745-4'),(2,'26.230.647-2'),(3,'29.510.610-5'),(4,'13.281.822-9'),(5,'18.519.133-2'),(6,'17.973.898-3'),(7,'28.180.997-2'),(8,'22.184.159-9'),(9,'15.486.669-3'),(10,'29.226.206-6');
/*!40000 ALTER TABLE `rgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'escola'
--

--
-- Dumping routines for database 'escola'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 20:07:52
