-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: dblivraria
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbaluno`
--

DROP TABLE IF EXISTS `tbaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbaluno` (
  `NuMatricula` int(11) NOT NULL,
  `NoAluno` varchar(50) DEFAULT NULL,
  `TxIngresso` varchar(6) DEFAULT NULL,
  `IdCurso` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`NuMatricula`),
  KEY `CoCurso` (`IdCurso`),
  CONSTRAINT `CoCurso` FOREIGN KEY (`IdCurso`) REFERENCES `tbcurso` (`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbaluno`
--

LOCK TABLES `tbaluno` WRITE;
/*!40000 ALTER TABLE `tbaluno` DISABLE KEYS */;
INSERT INTO `tbaluno` VALUES (1,'Jose Maria','2018.1',2),(2,'Lukas Pol','2018.1',2),(3,'Diego Araújo','2018.1',2),(4,'Elaine Sheyla','2018.1',2),(5,'Estevão Henrique','2018.1',2),(6,'Josenildo','2021.1',2),(7,'Luiz França','2021.1',2),(8,'Renata Chagas','2021.1',2),(9,'Rickson Pessoa','2021.1',2),(10,'Vinícus Nascimento','2021.1',2),(11,'Alice Silva','2017.1',1),(12,'Allan Max','2017.1',1),(13,'Alysson Cristiano','2017.1',1),(14,'Ana Júlia','2017.1',1),(15,'Gilvan Almeida','2017.1',1),(16,'Laylla Kaynara','2017.1',1),(17,'Luis Henry','2017.1',1),(18,'Maria Jardiane','2017.1',1),(19,'Ana Júlia','2017.1',1),(20,'Damião Victor','2019.1',1),(21,'Paulino Mesquita','2019.1',1),(22,'Luis Henry','2017.1',1),(23,'Maria Jardiane','2017.1',1),(24,'Jasmini dos Santos','2017.1',3),(25,'Pedro Renato','2021.1',4);
/*!40000 ALTER TABLE `tbaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbautor`
--

DROP TABLE IF EXISTS `tbautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbautor` (
  `IdAutor` int(11) NOT NULL,
  `NoAutor` varchar(50) DEFAULT NULL,
  `IdNacionalidade` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`IdAutor`),
  KEY `IdNacionalidade` (`IdNacionalidade`),
  CONSTRAINT `IdNacionalidade` FOREIGN KEY (`IdNacionalidade`) REFERENCES `tbnacionalidade` (`IdNacionalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbautor`
--

LOCK TABLES `tbautor` WRITE;
/*!40000 ALTER TABLE `tbautor` DISABLE KEYS */;
INSERT INTO `tbautor` VALUES (1,'Turley, Paul',2),(2,'Manzano, José',1),(3,'Coronel, Carlos',1),(4,'Sheldon, Sidney',2),(5,'Netto, Vladimir',1),(6,'Peter, Robert',2),(7,'Harrington, Roger',2),(8,'Ryan, James',2),(9,'Brown, Dan',2),(10,'Finlan, Christopher',2),(11,'Sirin, Vladimir',3);
/*!40000 ALTER TABLE `tbautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbautorobra`
--

DROP TABLE IF EXISTS `tbautorobra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbautorobra` (
  `IdAutorObra` int(11) NOT NULL,
  `IdAutor` int(11) DEFAULT NULL,
  `IdObra` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdAutorObra`),
  KEY `IdAutor` (`IdAutor`),
  KEY `IdObra` (`IdObra`),
  CONSTRAINT `IdAutor` FOREIGN KEY (`IdAutor`) REFERENCES `tbautor` (`IdAutor`),
  CONSTRAINT `IdObra` FOREIGN KEY (`IdObra`) REFERENCES `tbobra` (`IdObra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbautorobra`
--

LOCK TABLES `tbautorobra` WRITE;
/*!40000 ALTER TABLE `tbautorobra` DISABLE KEYS */;
INSERT INTO `tbautorobra` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,3),(7,7,6),(8,4,7),(9,8,8),(10,9,9),(11,9,10),(12,10,1),(13,4,11);
/*!40000 ALTER TABLE `tbautorobra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcurso`
--

DROP TABLE IF EXISTS `tbcurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcurso` (
  `IdCurso` tinyint(4) NOT NULL,
  `NoCurso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcurso`
--

LOCK TABLES `tbcurso` WRITE;
/*!40000 ALTER TABLE `tbcurso` DISABLE KEYS */;
INSERT INTO `tbcurso` VALUES (1,'Informática'),(2,'Sistemas para Internet'),(3,'Mecatrônica'),(4,'Redes de Computadores');
/*!40000 ALTER TABLE `tbcurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbeditora`
--

DROP TABLE IF EXISTS `tbeditora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbeditora` (
  `IdEditora` tinyint(11) NOT NULL,
  `NoEditora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdEditora`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbeditora`
--

LOCK TABLES `tbeditora` WRITE;
/*!40000 ALTER TABLE `tbeditora` DISABLE KEYS */;
INSERT INTO `tbeditora` VALUES (1,'Erica'),(2,'Produção Independente'),(3,'Record'),(4,'HarperOne'),(5,'Ediciones Urano'),(6,'Sextante'),(7,'Pearson'),(8,'Primeira Pessoa'),(9,'Wrox');
/*!40000 ALTER TABLE `tbeditora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbemail`
--

DROP TABLE IF EXISTS `tbemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbemail` (
  `IdEmail` int(11) NOT NULL,
  `TxEmail` varchar(50) DEFAULT NULL,
  `NuMatricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEmail`),
  KEY `NuMatricula` (`NuMatricula`),
  CONSTRAINT `NuMatricula` FOREIGN KEY (`NuMatricula`) REFERENCES `tbaluno` (`NuMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbemail`
--

LOCK TABLES `tbemail` WRITE;
/*!40000 ALTER TABLE `tbemail` DISABLE KEYS */;
INSERT INTO `tbemail` VALUES (1,'josemaria@gmail.com',1),(2,'lukaspol@gmail.com',2),(3,'diegoaraujo@gmail.com',3),(4,'elaine.sheyla@gmail.com',4),(5,'estevaohenrique@gmail.com',5),(6,'josenildo@yahoo.com',6),(7,'luiz_franca@gmail.com',7),(8,'renata.chagas@gmail.com',8),(9,'rickson.pessoa@gmail.com',9),(10,'vinicus.nascimento@gmail.com',10),(11,'alice.silva@gmail.com',11),(12,'allan.max@gmail.com',12),(13,'alysson_cristiano@gmail.com',13),(14,'ana_julia@gmail.com',14),(15,'gilvan.almeida@gmail.com',15),(16,'laylla.kaynara@gmail.com',16),(17,'luis.henry@gmail.com',17),(18,'maria_jardiane@gmail.com',18),(19,'ana.jlia@gmail.com',19),(20,'damiao.silva@gmail.com',20),(21,'paulino.mesquita@gmail.com',21),(22,'luis-henry@gmail.com',22),(23,'maria-jardiane@gmail.com',23),(24,'jasminisantos@gmail.com',24),(25,'pedro-renato@gmail.com',25);
/*!40000 ALTER TABLE `tbemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbemprestimo`
--

DROP TABLE IF EXISTS `tbemprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbemprestimo` (
  `IdEmprestimo` int(11) NOT NULL,
  `DaEmprestimo` date DEFAULT NULL,
  `DaPrevisaoDevolucao` date NOT NULL,
  `DaDevolucao` date DEFAULT NULL,
  `IdOperador` int(11) DEFAULT NULL,
  `NuMatricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEmprestimo`),
  KEY `fk_IdOperador` (`IdOperador`),
  KEY `fk_NuMatricula` (`NuMatricula`),
  CONSTRAINT `fk_IdOperador` FOREIGN KEY (`IdOperador`) REFERENCES `tboperador` (`IdOperador`),
  CONSTRAINT `fk_NuMatricula` FOREIGN KEY (`NuMatricula`) REFERENCES `tbaluno` (`NuMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbemprestimo`
--

LOCK TABLES `tbemprestimo` WRITE;
/*!40000 ALTER TABLE `tbemprestimo` DISABLE KEYS */;
INSERT INTO `tbemprestimo` VALUES (1,'2021-05-21','2021-05-23','2021-05-23',2030,1),(2,'2021-05-21','2021-05-24','2021-05-24',2030,2),(3,'2021-06-19','2021-06-21','2021-06-21',2000,3),(4,'2021-06-17','2021-06-20',NULL,2000,4),(5,'2021-06-20','2021-06-24','2021-06-25',2000,10),(6,'2021-06-24','2021-06-26','2021-06-26',2030,20),(7,'2021-06-17','2021-06-19','2021-06-19',2031,21),(8,'2021-06-11','2021-06-13','2021-06-13',2031,15),(9,'2021-06-24','2021-06-26',NULL,2030,14),(10,'2021-06-18','2021-06-21','2021-06-24',2000,1);
/*!40000 ALTER TABLE `tbemprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbemprestimoitem`
--

DROP TABLE IF EXISTS `tbemprestimoitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbemprestimoitem` (
  `IdEmprestimoItem` int(11) NOT NULL,
  `IdObra` int(11) DEFAULT NULL,
  `IdEmprestimo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdEmprestimoItem`),
  KEY `fk_IdObra` (`IdObra`),
  KEY `fk_IdEmprestimo` (`IdEmprestimo`),
  CONSTRAINT `fk_IdEmprestimo` FOREIGN KEY (`IdEmprestimo`) REFERENCES `tbemprestimo` (`IdEmprestimo`),
  CONSTRAINT `fk_IdObra` FOREIGN KEY (`IdObra`) REFERENCES `tbobra` (`IdObra`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbemprestimoitem`
--

LOCK TABLES `tbemprestimoitem` WRITE;
/*!40000 ALTER TABLE `tbemprestimoitem` DISABLE KEYS */;
INSERT INTO `tbemprestimoitem` VALUES (1,2,1),(2,3,2),(3,4,3),(4,10,3),(5,5,4),(6,6,4),(7,9,4),(8,8,5),(9,3,5),(10,1,6),(11,7,6),(12,10,6),(13,4,7),(14,7,7),(15,1,8),(16,1,9),(17,10,9),(18,1,10),(19,2,10),(20,3,10),(21,4,10),(22,5,10),(23,6,10),(24,7,10),(25,8,10),(26,9,10),(27,10,10);
/*!40000 ALTER TABLE `tbemprestimoitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbidioma`
--

DROP TABLE IF EXISTS `tbidioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbidioma` (
  `IdIdioma` tinyint(4) NOT NULL,
  `NoIdioma` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdIdioma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbidioma`
--

LOCK TABLES `tbidioma` WRITE;
/*!40000 ALTER TABLE `tbidioma` DISABLE KEYS */;
INSERT INTO `tbidioma` VALUES (1,'Portugês'),(2,'Inglês'),(3,'Espanhol');
/*!40000 ALTER TABLE `tbidioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnacionalidade`
--

DROP TABLE IF EXISTS `tbnacionalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnacionalidade` (
  `IdNacionalidade` tinyint(4) NOT NULL,
  `NoNacionalidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdNacionalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnacionalidade`
--

LOCK TABLES `tbnacionalidade` WRITE;
/*!40000 ALTER TABLE `tbnacionalidade` DISABLE KEYS */;
INSERT INTO `tbnacionalidade` VALUES (1,'Brasileiro'),(2,'Americano'),(3,'Suiço');
/*!40000 ALTER TABLE `tbnacionalidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbobra`
--

DROP TABLE IF EXISTS `tbobra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbobra` (
  `IdObra` int(11) NOT NULL,
  `NoObra` varchar(150) DEFAULT NULL,
  `NuAno` smallint(6) DEFAULT NULL,
  `NuEdicao` tinyint(4) DEFAULT NULL,
  `VaPreco` decimal(5,2) DEFAULT NULL,
  `IdIdioma` tinyint(4) DEFAULT NULL,
  `IdEditora` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`IdObra`),
  KEY `IdIdioma` (`IdIdioma`),
  KEY `IdEditora` (`IdEditora`),
  CONSTRAINT `FK_EditoraObra` FOREIGN KEY (`IdEditora`) REFERENCES `tbeditora` (`IdEditora`),
  CONSTRAINT `IdIdioma` FOREIGN KEY (`IdIdioma`) REFERENCES `tbidioma` (`IdIdioma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbobra`
--

LOCK TABLES `tbobra` WRITE;
/*!40000 ALTER TABLE `tbobra` DISABLE KEYS */;
INSERT INTO `tbobra` VALUES (1,'Professional Microsoft SQL Server 2016',2017,1,179.57,2,9),(2,'Microsoft Essencial Windows 7 Professional',2010,2,103.90,1,1),(3,'Sistemas de Banco de Dados',2010,8,239.99,1,7),(4,'Manhã, Tarde e Noite',2011,23,28.78,1,3),(5,'Lava Jato',2016,3,49.90,1,8),(6,'How to get Away with Murder',2017,10,44.00,2,2),(7,'Plano Perfeito',2011,1,36.97,1,3),(8,'Wait, What?',2017,1,41.00,2,4),(9,'La Fortaleza Digital',2009,NULL,130.00,3,5),(10,'Ponto de Impacto',2005,1,62.00,1,6),(11,'Juízo Final',2011,1,29.94,1,3);
/*!40000 ALTER TABLE `tbobra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tboperador`
--

DROP TABLE IF EXISTS `tboperador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tboperador` (
  `IdOperador` int(11) NOT NULL,
  `NoOperador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdOperador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tboperador`
--

LOCK TABLES `tboperador` WRITE;
/*!40000 ALTER TABLE `tboperador` DISABLE KEYS */;
INSERT INTO `tboperador` VALUES (2000,'Admin'),(2030,'Procopio'),(2031,'Paiva');
/*!40000 ALTER TABLE `tboperador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 14:52:42
