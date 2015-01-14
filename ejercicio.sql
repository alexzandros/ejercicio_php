-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: ejercicio
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enfermedad`
--

DROP TABLE IF EXISTS `enfermedad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedad` (
  `id_enfermedad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_enfermedad`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedad`
--

LOCK TABLES `enfermedad` WRITE;
/*!40000 ALTER TABLE `enfermedad` DISABLE KEYS */;
INSERT INTO `enfermedad` VALUES (1,'Malaria'),(2,'Viruela'),(3,'Gripe'),(4,'leucemia'),(5,'migraña');
/*!40000 ALTER TABLE `enfermedad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `documento_paciente` varchar(12) DEFAULT NULL,
  `nombre` varchar(18) DEFAULT NULL,
  `apellido` varchar(18) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `direccion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'1024','Isabella','Martínez','8514545','calle 5 # 23-21'),(2,'1075','Alexandro','Sandoval','8517656','carrera 8 # 51-21'),(3,'1221','Charlotte','Aristizabal','8523236','Avenida 6 # 1234'),(4,'1879','Carlos','Rojas','8514678','Calle 14 # 56-72'),(5,'1854','Danae','Rioja','8516765','Calle 23 # 52-71'),(6,'10908070','Pepe','Grillo','5556789','Carrera 34 # 34-34'),(7,'986858','Ramón','Valdez','1234567','Calle falsa # 123'),(8,'87654321','Juliana','Romeroz','12345678','La misma');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `padece`
--

DROP TABLE IF EXISTS `padece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `padece` (
  `id_enfermedad` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_padece` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_padece`),
  KEY `id_enfermedad` (`id_enfermedad`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `padece_ibfk_1` FOREIGN KEY (`id_enfermedad`) REFERENCES `enfermedad` (`id_enfermedad`),
  CONSTRAINT `padece_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `padece`
--

LOCK TABLES `padece` WRITE;
/*!40000 ALTER TABLE `padece` DISABLE KEYS */;
INSERT INTO `padece` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(1,6,6),(2,7,7),(5,7,8);
/*!40000 ALTER TABLE `padece` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-13 17:55:48
