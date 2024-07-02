-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `DNI` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` int DEFAULT NULL,
  `fecha de nacimiento` int DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_has_producto`
--

DROP TABLE IF EXISTS `cliente_has_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_has_producto` (
  `cliente_DNI` int NOT NULL,
  `producto_codigo` int NOT NULL,
  PRIMARY KEY (`cliente_DNI`,`producto_codigo`),
  KEY `fk_cliente_has_producto_producto1_idx` (`producto_codigo`),
  KEY `fk_cliente_has_producto_cliente1_idx` (`cliente_DNI`),
  CONSTRAINT `fk_cliente_has_producto_cliente1` FOREIGN KEY (`cliente_DNI`) REFERENCES `cliente` (`DNI`),
  CONSTRAINT `fk_cliente_has_producto_producto1` FOREIGN KEY (`producto_codigo`) REFERENCES `producto` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_has_producto`
--

LOCK TABLES `cliente_has_producto` WRITE;
/*!40000 ALTER TABLE `cliente_has_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_has_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquete`
--

DROP TABLE IF EXISTS `paquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquete` (
  `poblacion` int DEFAULT NULL,
  `nombre}` varchar(45) DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `direccion` int DEFAULT NULL,
  `salario` int DEFAULT NULL,
  `rec` varchar(45) NOT NULL,
  `ciudad_codigo` int NOT NULL,
  `camionero_rec` varchar(45) NOT NULL,
  PRIMARY KEY (`rec`),
  KEY `fk_paquete_ciudad1_idx` (`ciudad_codigo`),
  KEY `fk_paquete_camionero1_idx` (`camionero_rec`),
  CONSTRAINT `fk_paquete_camionero1` FOREIGN KEY (`camionero_rec`) REFERENCES `camionero` (`rec`),
  CONSTRAINT `fk_paquete_ciudad1` FOREIGN KEY (`ciudad_codigo`) REFERENCES `ciudad` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquete`
--

LOCK TABLES `paquete` WRITE;
/*!40000 ALTER TABLE `paquete` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `codigo` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio unitario` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `DNI` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` int DEFAULT NULL,
  `table1_codigo` int NOT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fk_proveedor_table1_idx` (`table1_codigo`),
  CONSTRAINT `fk_proveedor_table1` FOREIGN KEY (`table1_codigo`) REFERENCES `producto` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-04 16:56:55
