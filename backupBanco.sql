CREATE DATABASE  IF NOT EXISTS `db_roupas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_roupas`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_roupas
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.29-MariaDB

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
-- Temporary view structure for view `selectroupa`
--

DROP TABLE IF EXISTS `selectroupa`;
/*!50001 DROP VIEW IF EXISTS `selectroupa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `selectroupa` AS SELECT 
 1 AS `id_roupa`,
 1 AS `nome_roupa`,
 1 AS `cor`,
 1 AS `foto`,
 1 AS `preco`,
 1 AS `nome_categoria`,
 1 AS `id_categoria`,
 1 AS `nome_tamanho`,
 1 AS `id_tamanho`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tbl_categoria`
--

DROP TABLE IF EXISTS `tbl_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_categoria`
--

LOCK TABLES `tbl_categoria` WRITE;
/*!40000 ALTER TABLE `tbl_categoria` DISABLE KEYS */;
INSERT INTO `tbl_categoria` VALUES (3,'Camiseta'),(8,'Calça'),(9,'AAAA'),(10,'Retardado');
/*!40000 ALTER TABLE `tbl_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roupa`
--

DROP TABLE IF EXISTS `tbl_roupa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_roupa` (
  `id_roupa` int(11) NOT NULL AUTO_INCREMENT,
  `id_categoria` int(11) NOT NULL,
  `id_tamanho` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `preco` float NOT NULL,
  `cor` varchar(45) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_roupa`),
  KEY `fk_categoria_roupa_idx` (`id_categoria`),
  KEY `fk_tamanho_roupa_idx` (`id_tamanho`),
  CONSTRAINT `fk_categoria_roupa` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tamanho_roupa` FOREIGN KEY (`id_tamanho`) REFERENCES `tbl_tamanho` (`id_tamanho`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roupa`
--

LOCK TABLES `tbl_roupa` WRITE;
/*!40000 ALTER TABLE `tbl_roupa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_roupa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tamanho`
--

DROP TABLE IF EXISTS `tbl_tamanho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tamanho` (
  `id_tamanho` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tamanho` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tamanho`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tamanho`
--

LOCK TABLES `tbl_tamanho` WRITE;
/*!40000 ALTER TABLE `tbl_tamanho` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tamanho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_roupas'
--

--
-- Dumping routines for database 'db_roupas'
--

--
-- Final view structure for view `selectroupa`
--

/*!50001 DROP VIEW IF EXISTS `selectroupa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `selectroupa` AS select `roupa`.`id_roupa` AS `id_roupa`,`roupa`.`nome` AS `nome_roupa`,`roupa`.`cor` AS `cor`,`roupa`.`foto` AS `foto`,`roupa`.`preco` AS `preco`,`categoria`.`nome_categoria` AS `nome_categoria`,`categoria`.`id_categoria` AS `id_categoria`,`tamanho`.`nome_tamanho` AS `nome_tamanho`,`tamanho`.`id_tamanho` AS `id_tamanho` from ((`tbl_roupa` `roupa` join `tbl_categoria` `categoria` on((`categoria`.`id_categoria` = `roupa`.`id_categoria`))) join `tbl_tamanho` `tamanho` on((`tamanho`.`id_tamanho` = `roupa`.`id_tamanho`))) */;
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

-- Dump completed on 2018-08-24 11:12:39
