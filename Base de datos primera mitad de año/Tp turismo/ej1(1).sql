-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: tpturismo
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `dni` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `celular` varchar(45) CHARACTER SET cp1251 COLLATE cp1251_general_ci DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (10000,'Pepito','Ibañez','2770',549112,'Google Pixel 5'),(10001,'Andres','Gonzalez','2775',549121,'Iphone x'),(10002,'Joaquin','Duzckewick','2750',549212,'Google Pixel 7'),(10003,'Felipe','Lorras','5720',579112,'Moto G40'),(10004,'Maximo','Ritter','3524',55112,'Iphone 7'),(10005,'Tomas','Golitre','892',969120,'Samsumng J5'),(10006,'Santiago','Sarrena','9815',541928,'Samsumng A50'),(10007,'Blas','Mokix','8520',515412,'Iphone 14'),(10008,'Juan Cruz','Suarez','8898',154015,'Iphone 13'),(10009,'Damian','Punic','San Juan 1234',482720,'Iphone 15');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospedaje`
--

DROP TABLE IF EXISTS `hospedaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospedaje` (
  `codigo hotel` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `cant de personas` int DEFAULT NULL,
  `cocina` varchar(45) DEFAULT NULL,
  `garaje` varchar(45) DEFAULT NULL,
  `parrilla` varchar(45) DEFAULT NULL,
  `cant de pisos` int DEFAULT NULL,
  `bar/res` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospedaje`
--

LOCK TABLES `hospedaje` WRITE;
/*!40000 ALTER TABLE `hospedaje` DISABLE KEYS */;
INSERT INTO `hospedaje` VALUES (1,'Hotel A','5 Estrellas','10',1234567890,100,'SI','SI','SI',5,'SI'),(2,'Hotel B','3 Estrellas','20',1234567891,152,'NO','SI','SI',3,'SI'),(3,'Hotel C','1 Estrellas','Belgrano 15897',1234567892,281,'SI','NO','SI',2,'NO'),(4,'Hotel D','5 Estrellas','40',1234567893,418,'SI','SI','NO',6,'SI'),(5,'Hotel E','6 Estrellas','50',1234567894,207,'SI','SI','SI',15,'SI'),(6,'Hotel F','2 Estrellas','60',1234567895,164,'SI','SI','SI',8,'SI'),(7,'Hotel G','4 Estrellas','70',1234567896,373,'SI','SI','SI',3,'SI'),(8,'Hotel H','5 Estrellas','80',1234567897,399,'SI','SI','SI',4,'SI'),(9,'Hotel I','3 Estrellas','90',1234567898,421,'SI','SI','SI',6,'SI'),(10,'Hotel J','4 Estrellas','100',1234567899,540,'SI','SI','SI',4,'SI');
/*!40000 ALTER TABLE `hospedaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `codigo` int NOT NULL,
  `tarjeta` varchar(45) DEFAULT NULL,
  `cheque` varchar(45) DEFAULT NULL,
  `efectivo` varchar(45) DEFAULT NULL,
  `hospedaje_codigo hotel` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_pago_hospedaje1_idx` (`hospedaje_codigo hotel`),
  CONSTRAINT `fk_pago_hospedaje1` FOREIGN KEY (`hospedaje_codigo hotel`) REFERENCES `hospedaje` (`codigo hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,'santander','efectivo','si',1),(12,'santander','tarjeta','si',2),(13,'visa','efectivo','no',5),(14,'santander','efectivo','no',7),(15,'visa','efectivo','si',8),(21,'visa','efectivo','no',3),(31,'santander','tarjeta','si',4),(41,'santander','tarjeta','si',6),(51,'santander','tarjeta','no',9),(177777,'visa','tarjeta','si',10);
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_has_paquete de viaje`
--

DROP TABLE IF EXISTS `pago_has_paquete de viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago_has_paquete de viaje` (
  `pago_codigo` int NOT NULL,
  `paquete de viaje_codigo` int NOT NULL,
  PRIMARY KEY (`pago_codigo`,`paquete de viaje_codigo`),
  KEY `fk_pago_has_paquete de viaje_paquete de viaje1_idx` (`paquete de viaje_codigo`),
  KEY `fk_pago_has_paquete de viaje_pago1_idx` (`pago_codigo`),
  CONSTRAINT `fk_pago_has_paquete de viaje_pago1` FOREIGN KEY (`pago_codigo`) REFERENCES `pago` (`codigo`),
  CONSTRAINT `fk_pago_has_paquete de viaje_paquete de viaje1` FOREIGN KEY (`paquete de viaje_codigo`) REFERENCES `paquete de viaje` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_has_paquete de viaje`
--

LOCK TABLES `pago_has_paquete de viaje` WRITE;
/*!40000 ALTER TABLE `pago_has_paquete de viaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `pago_has_paquete de viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete de viaje`
--

DROP TABLE IF EXISTS `paquete de viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete de viaje` (
  `codigo` int NOT NULL,
  `cantidad de dias` int DEFAULT NULL,
  `cantidad de noches` int DEFAULT NULL,
  `costo` int DEFAULT NULL,
  `tipo de pago` varchar(45) DEFAULT NULL,
  `cantidad de excusiones` int DEFAULT NULL,
  `viaje` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete de viaje`
--

LOCK TABLES `paquete de viaje` WRITE;
/*!40000 ALTER TABLE `paquete de viaje` DISABLE KEYS */;
INSERT INTO `paquete de viaje` VALUES (1,10,9,200000,'EFECTIVO',6,'Avion'),(2,9,8,300000,'TARJETA',7,'Auto'),(3,11,10,400000,'EFECTIVO',5,'Avion'),(4,5,4,500000,'TARJETA',4,'Avion'),(5,6,6,600000,'EFECTIVO',3,'Auto'),(6,7,6,700000,'EFECTIVO',5,'Avion'),(7,8,7,800000,'EFECTIVO',4,'Auto'),(8,9,8,900000,'TARJETA',7,'Avion'),(9,12,12,10000000,'TARJETA',10,'Avion'),(10,16,15,15000000,'EFECTIVO',12,'Auto');
/*!40000 ALTER TABLE `paquete de viaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `codigo` int NOT NULL,
  `cliente` varchar(45) DEFAULT NULL,
  `paquete de viaje` varchar(45) DEFAULT NULL,
  `fecha de inicio` int DEFAULT NULL,
  `fecha de fin` int DEFAULT NULL,
  `cant de personas` int DEFAULT NULL,
  `clientes_dni` int NOT NULL,
  `paquete de viaje_codigo` int NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk_reservas_clientes_idx` (`clientes_dni`),
  KEY `fk_reservas_paquete de viaje1_idx` (`paquete de viaje_codigo`),
  CONSTRAINT `fk_reservas_clientes` FOREIGN KEY (`clientes_dni`) REFERENCES `clientes` (`dni`),
  CONSTRAINT `fk_reservas_paquete de viaje1` FOREIGN KEY (`paquete de viaje_codigo`) REFERENCES `paquete de viaje` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (100,'Pepito',NULL,-21,-12,4,10000,1),(101,'Pedro',NULL,-21,-12,4,10001,2),(102,'Iniesta',NULL,-21,-12,4,10002,3),(103,'Puyol',NULL,-21,-12,4,10003,4),(104,'Xavi',NULL,-21,-12,4,10004,5),(105,'Messi',NULL,-21,-12,4,10005,6),(106,'Neymar',NULL,-21,-12,4,10006,7),(107,'Eto',NULL,-21,-12,4,10007,8),(108,'Henry',NULL,-21,-12,4,10008,9);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 17:53:01
