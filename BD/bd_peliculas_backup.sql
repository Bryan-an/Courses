CREATE DATABASE  IF NOT EXISTS `bd_peliculas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_peliculas`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_peliculas
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Will','Smith','2020-04-01 00:00:00','2020-04-01 00:00:00'),(2,'Thandie','Newton','2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,'Jaden','Smith','2020-04-01 00:00:00','2020-04-01 00:00:00'),(4,'Orson','Welles','2020-04-01 00:00:00','2020-04-01 00:00:00'),(5,'Joseph','Cotten','2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,'Dorothy','Comingore','2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,'Ewan','McGregor','2020-04-01 00:00:00','2020-04-01 00:00:00'),(8,'Albert','Finney','2020-04-01 00:00:00','2020-04-01 00:00:00'),(9,'Jessica','Lange','2020-04-01 00:00:00','2020-04-01 00:00:00'),(10,'Anne','Hathaway','2020-04-01 00:00:00','2020-04-01 00:00:00'),(11,'Julie','Andrews','2020-04-01 00:00:00','2020-04-01 00:00:00'),(12,'Hector','Elizondo','2020-04-01 00:00:00','2020-04-01 00:00:00'),(13,'Dani','Rovira','2020-04-01 00:00:00','2020-04-01 00:00:00'),(14,'Karra','Elejalde','2020-04-01 00:00:00','2020-04-01 00:00:00'),(15,'Alexandra','Jiménez','2020-04-01 00:00:00','2020-04-01 00:00:00'),(16,'Philippe','Noiret','2020-04-01 00:00:00','2020-04-01 00:00:00'),(17,'Jacques','Perrin','2020-04-01 00:00:00','2020-04-01 00:00:00'),(18,'Salvatore','Cascio','2020-04-01 00:00:00','2020-04-01 00:00:00'),(19,'Johnny','Depp','2020-04-01 00:00:00','2020-04-01 00:00:00'),(20,'Mia','Wasikowska','2020-04-01 00:00:00','2020-04-01 00:00:00'),(21,'Matt','Lucas','2020-04-01 00:00:00','2020-04-01 00:00:00'),(22,'Adrien','Brody','2020-04-20 00:00:00','2020-04-20 00:00:00'),(23,'Al','Pacino','2020-04-20 00:00:00','2020-04-20 00:00:00'),(24,'Anne','Le Ny ','2020-04-20 00:00:00','2020-04-20 00:00:00'),(25,'Anthony','Gonzalez','2020-04-20 00:00:00','2020-04-20 00:00:00'),(26,'Benjamin','Bratt','2020-04-20 00:00:00','2020-04-20 00:00:00'),(27,'Carme','Elias','2020-04-20 00:00:00','2020-04-20 00:00:00'),(28,'Edward','Hardwicke','2020-04-20 00:00:00','2020-04-20 00:00:00'),(29,'Emilia','Fox','2020-04-20 00:00:00','2020-04-20 00:00:00'),(30,'François','Cluzet','2020-04-20 00:00:00','2020-04-20 00:00:00'),(31,'Gael','García Bernal','2020-04-20 00:00:00','2020-04-20 00:00:00'),(32,'Gary','Sinise','2020-04-20 00:00:00','2020-04-20 00:00:00'),(33,'Horst','Buchholz','2020-04-20 00:00:00','2020-04-20 00:00:00'),(34,'James','Caan','2020-04-20 00:00:00','2020-04-20 00:00:00'),(35,'James','Earl Jones','2020-04-20 00:00:00','2020-04-20 00:00:00'),(36,'Joan','Allen','2020-04-20 00:00:00','2020-04-20 00:00:00'),(37,'Jonathan','Taylor','2020-04-20 00:00:00','2020-04-20 00:00:00'),(38,'Kim','Cattrall','2020-04-20 00:00:00','2020-04-20 00:00:00'),(39,'Leanne','Rowe','2020-04-20 00:00:00','2020-04-20 00:00:00'),(40,'Lewis','Chase','2020-04-20 00:00:00','2020-04-20 00:00:00'),(41,'Mariano','Venancio','2020-04-20 00:00:00','2020-04-20 00:00:00'),(42,'Marisa','Paredes','2020-04-20 00:00:00','2020-04-20 00:00:00'),(43,'Marlon','Brando','2020-04-20 00:00:00','2020-04-20 00:00:00'),(44,'Matthew','Broderick','2020-04-20 00:00:00','2020-04-20 00:00:00'),(45,'Nerea','Camacho','2020-04-20 00:00:00','2020-04-20 00:00:00'),(46,'Omar','Sy','2020-04-20 00:00:00','2020-04-20 00:00:00'),(47,'Pierce','Brosnan','2020-04-20 00:00:00','2020-04-20 00:00:00'),(48,'Richard','Gere','2020-04-20 00:00:00','2020-04-20 00:00:00'),(49,'Roberto','Benigni','2020-04-20 00:00:00','2020-04-20 00:00:00'),(50,'Robin','Wright','2020-04-20 00:00:00','2020-04-20 00:00:00'),(51,'Sarah','Roemer','2020-04-20 00:00:00','2020-04-20 00:00:00'),(52,'Thomas','Kretschmann','2020-04-20 00:00:00','2020-04-20 00:00:00'),(53,'Tom','Hanks','2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_pelicula`
--

DROP TABLE IF EXISTS `actor_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actor_pelicula` (
  `ACTOR_id` int NOT NULL,
  `PELICULA_id` int NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`ACTOR_id`,`PELICULA_id`),
  KEY `fk_ACTOR_has_PELICULA_PELICULA1` (`PELICULA_id`),
  CONSTRAINT `fk_ACTOR_has_PELICULA_ACTOR1` FOREIGN KEY (`ACTOR_id`) REFERENCES `actor` (`id`),
  CONSTRAINT `fk_ACTOR_has_PELICULA_PELICULA1` FOREIGN KEY (`PELICULA_id`) REFERENCES `pelicula` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_pelicula`
--

LOCK TABLES `actor_pelicula` WRITE;
/*!40000 ALTER TABLE `actor_pelicula` DISABLE KEYS */;
INSERT INTO `actor_pelicula` VALUES (1,1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(2,1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(4,2,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(5,2,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,2,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(8,3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(9,3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(10,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(11,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(12,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(13,5,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(14,5,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(15,5,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(16,6,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(17,6,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(18,6,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(19,7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(20,7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(21,7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(22,15,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(23,8,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(24,11,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(25,14,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(26,14,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(27,18,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(28,17,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(29,15,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(30,11,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(31,14,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(32,9,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(33,10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(34,8,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(35,13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(36,12,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(37,13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(38,16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(39,17,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(40,17,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(41,18,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(42,10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(43,8,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(44,13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(45,18,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(46,11,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(47,16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(48,12,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(49,10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(50,9,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(51,12,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(52,15,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(53,9,'2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `actor_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `director` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Gabriele','Muccino','1967-05-20 00:00:00','2020-04-01 00:00:00','2020-04-01 00:00:00'),(2,'Orson','Welles','1915-05-06 00:00:00','2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,'Tim','Burton','1958-08-25 00:00:00','2020-04-01 00:00:00','2020-04-01 00:00:00'),(4,'Garry','Marshall','1934-11-13 00:00:00','2020-04-01 00:00:00','2020-04-01 00:00:00'),(5,'Marcel','Barrena','1981-10-15 00:00:00','2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,'Giuseppe','Tornatore','1956-05-27 00:00:00','2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,'Francis','Ford Coppola','1939-04-06 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(8,'Robert','Zemeckis','1952-05-14 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(9,'Roberto','Benigni','1952-10-27 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(10,'Eric','Toledano','1971-07-03 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(11,'Lasse','Hallström','1946-06-02 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(12,'Rob','Minkoff','1963-08-11 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(13,'Lee','Unkrich','1967-08-08 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(14,'Roman','Polanski','1933-08-18 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00'),(15,'Javier','Fesser','1964-02-15 00:00:00','2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Comedia dramática','2020-04-01 00:00:00','2020-04-01 00:00:00'),(2,'Biografía','2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,'Aventura','2020-04-01 00:00:00','2020-04-01 00:00:00'),(4,'Suspense','2020-04-01 00:00:00','2020-04-01 00:00:00'),(5,'Familia','2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,'Romántico','2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,'Fantasía','2020-04-01 00:00:00','2020-04-01 00:00:00'),(8,'Acción','2020-04-20 00:00:00','2020-04-20 00:00:00'),(9,'Animación','2020-04-20 00:00:00','2020-04-20 00:00:00'),(10,'Artes Marciales','2020-04-20 00:00:00','2020-04-20 00:00:00'),(11,'Bollywood','2020-04-20 00:00:00','2020-04-20 00:00:00'),(12,'Ciencia ficción','2020-04-20 00:00:00','2020-04-20 00:00:00'),(13,'Clásico','2020-04-20 00:00:00','2020-04-20 00:00:00'),(14,'Comedia','2020-04-20 00:00:00','2020-04-20 00:00:00'),(15,'Comedia musical','2020-04-20 00:00:00','2020-04-20 00:00:00'),(16,'Concierto','2020-04-20 00:00:00','2020-04-20 00:00:00'),(17,'Crimen','2020-04-20 00:00:00','2020-04-20 00:00:00'),(18,'Deporte','2020-04-20 00:00:00','2020-04-20 00:00:00'),(19,'Desconocido','2020-04-20 00:00:00','2020-04-20 00:00:00'),(20,'Dibujos animados','2020-04-20 00:00:00','2020-04-20 00:00:00'),(21,'Documental','2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,'Drama','2020-04-20 00:00:00','2020-04-20 00:00:00'),(23,'Épico','2020-04-20 00:00:00','2020-04-20 00:00:00'),(24,'Erótico','2020-04-20 00:00:00','2020-04-20 00:00:00'),(25,'Espionaje','2020-04-20 00:00:00','2020-04-20 00:00:00'),(26,'Experimental','2020-04-20 00:00:00','2020-04-20 00:00:00'),(27,'Guerra','2020-04-20 00:00:00','2020-04-20 00:00:00'),(28,'Histórico','2020-04-20 00:00:00','2020-04-20 00:00:00'),(29,'Judicial','2020-04-20 00:00:00','2020-04-20 00:00:00'),(30,'Médico','2020-04-20 00:00:00','2020-04-20 00:00:00'),(31,'Musical','2020-04-20 00:00:00','2020-04-20 00:00:00'),(32,'Show','2020-04-20 00:00:00','2020-04-20 00:00:00'),(33,'Terror','2020-04-20 00:00:00','2020-04-20 00:00:00'),(34,'Western','2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_pelicula`
--

DROP TABLE IF EXISTS `genero_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero_pelicula` (
  `GENERO_id` int NOT NULL,
  `PELICULA_id` int NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`GENERO_id`,`PELICULA_id`),
  KEY `fk_GENERO_has_PELICULA_PELICULA1` (`PELICULA_id`),
  CONSTRAINT `fk_GENERO_has_PELICULA_GENERO1` FOREIGN KEY (`GENERO_id`) REFERENCES `genero` (`id`),
  CONSTRAINT `fk_GENERO_has_PELICULA_PELICULA1` FOREIGN KEY (`PELICULA_id`) REFERENCES `pelicula` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_pelicula`
--

LOCK TABLES `genero_pelicula` WRITE;
/*!40000 ALTER TABLE `genero_pelicula` DISABLE KEYS */;
INSERT INTO `genero_pelicula` VALUES (1,1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(1,2,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(1,3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(1,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(1,5,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(1,6,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(2,1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(3,17,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(4,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(4,16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(5,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(5,7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,9,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(7,7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,14,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(9,13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(9,14,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(14,9,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(14,10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(14,11,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(17,8,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,8,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,9,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,12,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,15,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,17,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,18,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(28,15,'2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `genero_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `codigo` varchar(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES ('ESP','España','2020-04-01 00:00:00','2020-04-01 00:00:00'),('FRA','Francia','2020-04-20 00:00:00','2020-04-20 00:00:00'),('GER','Alemania','2020-04-20 00:00:00','2020-04-20 00:00:00'),('ITA','Italia','2020-04-01 00:00:00','2020-04-01 00:00:00'),('USA','Estados Unidos','2020-04-01 00:00:00','2020-04-01 00:00:00');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sinopsis` varchar(1500) NOT NULL,
  `fechaEstreno` datetime NOT NULL,
  `codigoPais` varchar(3) NOT NULL,
  `duracion` int NOT NULL,
  `calificacion` decimal(2,1) NOT NULL,
  `DIRECTOR_id` int NOT NULL,
  `clasificacion` varchar(50) NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_PELICULA_DIRECTOR1` (`DIRECTOR_id`),
  KEY `fk_PELICULA_PAIS1` (`codigoPais`),
  CONSTRAINT `fk_PELICULA_DIRECTOR1` FOREIGN KEY (`DIRECTOR_id`) REFERENCES `director` (`id`),
  CONSTRAINT `fk_PELICULA_PAIS1` FOREIGN KEY (`codigoPais`) REFERENCES `pais` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` VALUES (1,'Chris Gardner, un joven padre de familia, está tratando de ganarse la vida.','2007-01-01 00:00:00','USA',118,3.7,1,'MAYORES DE 12','2020-04-01 00:00:00','2020-04-07 00:00:00'),(2,'Charles Foster Kane (Orson Welles) lo ha tenido todo en la vida: dinero, fama, prestigio y mujeres… pero en el momento de su muerte existen serias dudas de que este hombre fuera realmente feliz.','2007-01-01 00:00:00','USA',119,3.1,2,'MAYORES DE 7','2020-04-01 00:00:00','2020-04-06 00:00:00'),(3,'Edward Bloom ha llevado una vida repleta de historias sorprendentes que cuenta a su familia una y otra vez.','2004-03-05 00:00:00','USA',200,3.7,3,'GENERAL','2020-04-01 00:00:00','2020-04-07 00:00:00'),(4,'La trama tiene como personaje central a Mia, una mujer apuesta y decidida que va a tener la responsabilidad de convertirse en la futura reina de Genovia.','2004-12-17 00:00:00','USA',200,4.8,4,'GENERAL','2020-04-01 00:00:00','2020-04-07 00:00:00'),(5,'Ramón Arroyo (Dani Rovira) es un padre de familia que vive para el trabajo, hasta que su cuerpo empieza a fallar.','2007-01-01 00:00:00','ESP',109,1.8,5,'MAYORES DE 15','2020-04-01 00:00:00','2020-04-06 00:00:00'),(6,'En esta historia de amor por el cine, Salvatore Di Vita (Jacques Perrin), un cineasta, recuerda su niñez cuando recibe una llamada de su madre dándole una mala noticia.','2007-01-01 00:00:00','ITA',124,1.8,6,'MAYORES DE 12','2020-04-01 00:00:00','2020-04-06 00:00:00'),(7,'Alicia tiene 19 años y está a punto de recibir una propuesta de matrimonio que no le hace demasiada ilusión, por no decir ninguna.','2010-04-16 00:00:00','USA',200,4.8,3,'GENERAL','2020-04-01 00:00:00','2020-04-07 00:00:00'),(8,'En el verano de 1945, se celebra la boda de Connie (Talia Shire) y Carlo Rizzi (Gianni Russo). Connie es la única hija de Don Vito Corleone (Marlon Brando), jefe de una de las familias que ejercen el mando de la Cosa Nostra en la ciudad de Nueva York. ','1972-10-20 00:00:00','USA',175,4.8,7,'MAYORES DE EDAD','2020-04-20 00:00:00','2020-04-20 00:00:00'),(9,'Al tener el coeficiente intelectual de un niño, Forrest Gump siempre ha sido considerado el “tonto” de clase. Bajo las faldas de su madre se siente protegido y junto a su amiga Jenny es feliz, aunque en su propio mundo.','1994-09-23 00:00:00','USA',140,4.5,8,'GENERAL','2020-04-20 00:00:00','2020-04-20 00:00:00'),(10,'La Segunda Guerra Mundial está a punto de estallar en Europa. Mientras tanto, Guido llega a un pueblo italiano con la intención de abrir una librería. Allí se enamora de la novia de un fascista italiano, Dora. Ésta sucumbirá a sus encantos y Guido consigue que se case con él. ','1999-02-26 00:00:00','ITA',117,4.5,9,'GENERAL','2020-04-20 00:00:00','2020-04-20 00:00:00'),(11,'Philippe (François Cluzet, (No se lo digas a nadie)) es un hombre adinerado que pertenece a la alta sociedad. Sin embargo, su vida cambiará para siempre después de un aparatoso accidente de parapente que lo dejará inválido y en silla de ruedas. ','2012-03-09 00:00:00','FRA',112,4.2,10,'MAYORES DE 7','2020-04-20 00:00:00','2020-04-20 00:00:00'),(12,'Parker Wilson (Richard Gere, (El caso Wells)) es un profesor de universidad que trabaja lejos de su casa. Todos los días se acerca a la estación de tren para trasladarse a su oficio. ','2009-11-06 00:00:00','USA',93,4.8,11,'GENERAL','2020-04-20 00:00:00','2020-04-20 00:00:00'),(13,'Recuperación del clásico de Disney de 1994, adaptado a las nuevas generaciones gracias a la tecnología 3-D.','2011-12-21 00:00:00','USA',89,4.3,12,'GENERAL','2020-04-20 00:00:00','2020-04-20 00:00:00'),(14,'En un pequeño y alegre pueblo mexicano vive Miguel, un niño de 12 años que pertenece a una familia de zapateros, en la que la música está prohibida. ','2017-12-01 00:00:00','USA',105,4.0,13,'GENERAL','2020-04-20 00:00:00','2020-04-20 00:00:00'),(15,'Durante la Segunda Guerra Mundial, Wladyslaw Szpilman, un célebre pianista judío de origen polaco, escapa a la deportación, pero se encuentra hacinado en el gueto de Varsovia, donde comparte con los demás sufrimientos, humillaciones y luchas heroicas. ','2002-12-13 00:00:00','GER',148,3.5,14,'MAYORES DE 12','2020-04-20 00:00:00','2020-04-20 00:00:00'),(16,'Adam Lang, ex primer ministro británico, quiere que le escriban una biografía de su vida. Un prestigioso escritor, papel interpretado por Ewan McGregor, es contratado para escribir la autobiografía de Adam.  ','2010-03-26 00:00:00','GER',128,4.0,14,'MAYORES DE 12','2020-04-20 00:00:00','2020-04-20 00:00:00'),(17,'Una adaptación de la famosa novela de Charles Dickens durante la Inglaterra victoriana. ','2005-12-02 00:00:00','FRA',130,3.6,14,'MAYORES DE 7','2020-04-20 00:00:00','2020-04-20 00:00:00'),(18,'cuenta la historia de una niña de once años que tiene que enfrentarse, de manera simultánea, a dos acontecimientos totalmente nuevos y desconocidos para ella: el amor y la muerte. ','2008-10-17 00:00:00','ESP',143,4.3,15,'MAYORES DE 12','2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula_nombre`
--

DROP TABLE IF EXISTS `pelicula_nombre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelicula_nombre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `PELICULA_id` int NOT NULL,
  `fechaCreacion` datetime NOT NULL,
  `fechaModificacion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_PELICULA_NOMBRE_PELICULA` (`PELICULA_id`),
  CONSTRAINT `fk_PELICULA_NOMBRE_PELICULA` FOREIGN KEY (`PELICULA_id`) REFERENCES `pelicula` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula_nombre`
--

LOCK TABLES `pelicula_nombre` WRITE;
/*!40000 ALTER TABLE `pelicula_nombre` DISABLE KEYS */;
INSERT INTO `pelicula_nombre` VALUES (1,'En busca de la felicidad',1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(2,'The Pursuit of Happyness',1,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(3,'Ciudadano Kane',2,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(4,'Citizen Kane',2,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(5,'Big Fish',3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(6,'El gran pez',3,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(7,'Princesa por sorpresa 2',4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(8,'The Princess Diaries 2: Royal Engagement',4,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(9,'100 metros',5,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(10,'Cinema Paradiso',6,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(11,'Nuovo cinema Paradiso',6,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(12,'Alice in Wonderland',7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(13,'Alicia en el país de las maravillas',7,'2020-04-01 00:00:00','2020-04-01 00:00:00'),(14,'Forrest Gump',9,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(15,'La vida es Bella',10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(16,'La vita e bella',10,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(17,'Intocable',11,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(18,'Intouchables',11,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(19,'Siempre a tu lado. Hachiko',12,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(20,'Hachi: A Dogs Tale',12,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(21,'El Rey León',13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(22,'The Lion King',13,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(23,'Coco',14,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(24,'El pianista',15,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(25,'The Pianist',15,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(26,'El Escritor',16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(27,'The Ghost Writer',16,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(28,'Oliver Twist',17,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(29,'Camino',18,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(30,'El Padrino',8,'2020-04-20 00:00:00','2020-04-20 00:00:00'),(31,'The Godfather',8,'2020-04-20 00:00:00','2020-04-20 00:00:00');
/*!40000 ALTER TABLE `pelicula_nombre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_info_peliculas`
--

DROP TABLE IF EXISTS `v_info_peliculas`;
/*!50001 DROP VIEW IF EXISTS `v_info_peliculas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_info_peliculas` AS SELECT 
 1 AS `idPeliculas`,
 1 AS `nombrePelicula`,
 1 AS `sinopsis`,
 1 AS `fechaEstreno`,
 1 AS `codigoPais`,
 1 AS `nombrePais`,
 1 AS `duracion`,
 1 AS `calificacion`,
 1 AS `clasificacion`,
 1 AS `nombresDirector`,
 1 AS `nombreGenero`,
 1 AS `nombresActor`,
 1 AS `fechaCreacion`,
 1 AS `fechaModificacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_info_peliculas`
--

/*!50001 DROP VIEW IF EXISTS `v_info_peliculas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_info_peliculas` AS select `p`.`id` AS `idPeliculas`,`pn`.`nombre` AS `nombrePelicula`,`p`.`sinopsis` AS `sinopsis`,`p`.`fechaEstreno` AS `fechaEstreno`,`p`.`codigoPais` AS `codigoPais`,`pa`.`nombre` AS `nombrePais`,`p`.`duracion` AS `duracion`,`p`.`calificacion` AS `calificacion`,`p`.`clasificacion` AS `clasificacion`,concat(`d`.`nombre`,' ',`d`.`apellido`) AS `nombresDirector`,`g`.`nombre` AS `nombreGenero`,concat(`a`.`nombre`,' ',`a`.`apellido`) AS `nombresActor`,`p`.`fechaCreacion` AS `fechaCreacion`,`p`.`fechaModificacion` AS `fechaModificacion` from (((((((`pelicula` `p` join `pelicula_nombre` `pn` on((`pn`.`PELICULA_id` = `p`.`id`))) join `director` `d` on((`d`.`id` = `p`.`DIRECTOR_id`))) join `pais` `pa` on((`pa`.`codigo` = `p`.`codigoPais`))) join `genero_pelicula` `gp` on((`gp`.`PELICULA_id` = `p`.`id`))) join `genero` `g` on((`g`.`id` = `gp`.`GENERO_id`))) join `actor_pelicula` `ap` on((`ap`.`PELICULA_id` = `p`.`id`))) join `actor` `a` on((`a`.`id` = `ap`.`ACTOR_id`))) */;
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

-- Dump completed on 2021-10-03 15:38:22
