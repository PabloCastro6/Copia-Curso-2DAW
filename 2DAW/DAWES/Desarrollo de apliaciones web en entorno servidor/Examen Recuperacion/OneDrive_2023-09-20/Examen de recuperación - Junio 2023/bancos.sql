-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bancos
-- ------------------------------------------------------
-- Server version	8.0.19

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
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10) NOT NULL,
  `apellido` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=995868026 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (105688391,'Brendan','Zellers',' 476 4th Street North Salinas, CA 93906','2986936'),(127432318,'Kathleen','Holt',' 260 Grant Avenue Tulare, CA 93274','4882033'),(136044569,'Greta','Raschke',' 272 Canal Street Oakland, CA 94601','1877549'),(149043920,'Tess','Riddles',' 685 Oxford Road Watsonville, CA 95076','9213193'),(151012500,'Cliff','Antonucci',' 426 Atlantic Avenue San Diego, CA 92117','5400546'),(155046583,'Ian','Mack',' 165 Washington Street Ontario, CA 91762','3914588'),(156917953,'Lisette','Cortez',' 735 Elizabeth Street Carmichael, CA 95608','4205528'),(191873690,'Kristal','Tincher',' 986 Schoolhouse Lane Huntington Beach, CA 92646','6485151'),(231646902,'Jean','Peters',' 592 Lincoln Avenue Vacaville, CA 95687','1510713'),(260545616,'Jenny','Arnold',' 531 Schoolhouse Lane Canyon Country, CA 91351','9851464'),(261526274,'Joe','Torres',' 394 Cherry Street La Puente, CA 91744','8189949'),(266949409,'Alfred','Myers',' 36 Washington Street Carson, CA 90745','8202369'),(272201236,'Emely','Templin',' 710 Locust Lane Anaheim, CA 92805','3713121'),(281265203,'Molly','Taylor',' 883 Broadway Westminster, CA 92683','2281009'),(307958594,'Emma','Rogers',' 915 Bridge Street Vista, CA 92083','1206735'),(325913915,'Sherry','Reynolds',' 964 Lafayette Street San Diego, CA 92115','6560070'),(335430472,'Elane','Tremble',' 543 Devonshire Drive San Diego, CA 92117','4749865'),(338875710,'Bryon','Rager',' 678 Pheasant Run Salinas, CA 93906','7458893'),(364806130,'Lorene','Maxwell',' 579 Chestnut Street Los Angeles, CA 90003','4807777'),(428234817,'Madie','Ruybal',' 810 Franklin Street Salinas, CA 93906','1209583'),(473787210,'Melida','Barcus',' 124 Monroe Street Santa Ana, CA 92707','2950168'),(481901357,'Marvin','Binns',' 838 Aspen Drive Chula Vista, CA 91911','3304418'),(499569175,'Eloise','Kim',' 750 8th Street Compton, CA 90221','8545674'),(510608747,'Ralph','Klein',' 143 Magnolia Avenue Oakland, CA 94601','9651978'),(548284015,'Danielle','Arline',' 644 College Street Van Nuys, CA 91405','4494229'),(550771984,'Carri','Hippe',' 717 John Street Simi Valley, CA 93065','1321616'),(552085676,'Inez','Richards',' 767 Buttonwood Drive Los Angeles, CA 90022','2268272'),(567940148,'Joya','Brumbaugh',' 351 7th Street El Cajon, CA 92021','2192972'),(569452678,'Clint','Barton',' 451 Magnolia Avenue Laguna Niguel, CA 92677','1309907'),(584829885,'Ora','Jimenez',' 720 Park Street San Diego, CA 92117','5935950'),(616754635,'Rosalee','Trivette',' 574 Center Street San Bernardino, CA 92404','2037896'),(631659054,'Shelley','Collard',' 386 Route 7 Los Angeles, CA 90006','1729720'),(641267911,'Pamela','Porter',' 617 Hartford Road Pomona, CA 91766','2438607'),(651419172,'Eloy','Forte',' 785 Mechanic Street Montebello, CA 90640','2350595'),(671130404,'Gregg','Fitzgerald',' 868 Oak Lane Rancho Cucamonga, CA 91730','4015198'),(672062904,'Catherin','Owusu',' 560 Roberts Road San Jose, CA 95123','6254911'),(689682810,'Karen','Ochs',' 694 Old York Road Santa Ana, CA 92701','1553120'),(697616763,'Drew','Bragdon',' 230 Hillside Drive North Hollywood, CA 91605','2023972'),(700845677,'Joane','Haugh',' 921 Edgewood Road Folsom, CA 95630','6135534'),(703912469,'Soon','Portis',' 33 Race Street Sunnyvale, CA 94086','4308757'),(726015610,'Cathleen','Goguen',' 549 Bridle Lane Modesto, CA 95350','6879474'),(742042850,'Errol','Brantner',' 230 Magnolia Avenue Baldwin Park, CA 91706','5954830'),(786091466,'Chauncey','Mayorga',' 528 Bank Street San Diego, CA 92154','6558287'),(896966100,'Tiffany','Sparks',' 726 Green Street La Puente, CA 91744','3037153'),(937989285,'Jose','Tate',' 290 2nd Street East National City, CA 91950','2172890'),(964719963,'Deloras','Stogner',' 634 Franklin Street Merced, CA 95340','8345168'),(965053100,'Muriel','Manns',' 625 Summer Street San Diego, CA 92105','8961974'),(972531115,'Starla','Gilligan',' 310 1st Street Huntington Park, CA 90255','9108611'),(995868025,'Daphne','Lafreniere',' 375 Cedar Lane Porterville, CA 93257','9963696');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `numero_cuenta` int NOT NULL,
  `saldo` decimal(50,2) NOT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`numero_cuenta`),
  KEY `cuentas_ibfk_1` (`id_usuario`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `clientes` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
INSERT INTO `cuentas` VALUES (101568273,47721.00,307958594),(114830997,82681.00,481901357),(116011072,101677.00,786091466),(131074551,24437.00,364806130),(142600342,31086.00,937989285),(170001393,114990.00,473787210),(187374532,98538.00,428234817),(192459144,28481.00,584829885),(214491505,32834.00,896966100),(215363179,41735.00,550771984),(227058299,28517.00,569452678),(268264295,46848.00,651419172),(282958006,27825.00,260545616),(304590855,36832.00,281265203),(327104039,25490.00,127432318),(336041020,26103.00,689682810),(341574705,51931.00,151012500),(407752913,124929.00,567940148),(432495827,72795.00,631659054),(436869433,105201.00,700845677),(452290824,23801.00,552085676),(476987939,112841.00,995868025),(510014859,36323.00,726015610),(511204574,15216.00,155046583),(526771753,105679.00,105688391),(535790385,55860.00,697616763),(548322512,58533.00,149043920),(548873825,25856.00,231646902),(553357761,25847.00,671130404),(556506782,23456.00,499569175),(569885189,26931.00,266949409),(579414817,45652.00,972531115),(581804075,118605.00,156917953),(599822009,46928.00,338875710),(615124236,118319.00,965053100),(620948770,125721.00,191873690),(649811996,109238.00,703912469),(677255219,21156.00,641267911),(753040214,64431.00,742042850),(768704709,29570.00,261526274),(783728426,68700.00,548284015),(812717794,81345.00,136044569),(850447282,22015.00,272201236),(884288401,25726.00,510608747),(915037662,122916.00,964719963),(916860826,35238.00,325913915),(947157830,124722.00,335430472),(971857280,35046.00,672062904),(971931496,50757.00,616754635);
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-12 13:22:04
