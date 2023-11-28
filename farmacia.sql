-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `id_cliente` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `telefone1` varchar(15) DEFAULT NULL,
  `nr_de_compras` int DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (179,'Aline Cunha Ribeiro','476.301.803-57','AlineCunhaRibeiro@armyspy.com','Barretos-SP','São Paulo','(11)4939-8797',NULL),(1042,'Giovanna Sousa Oliveira','368.204.812-09','GiovannaSousaOliveira@armyspy.com','Betim-SP','São Paulo','(11)9669-7916',NULL),(6382,'Fernanda Cunha Ribeiro','357.386.390-65','FernandaCunhaRibeiro@armyspy.com','Catanduva-SP','São Paulo','(17)7064-6312',NULL),(6384,'Luan Dias Goncalves','371.753.433-53','LuanDiasGoncalves@armyspy.com','São Paulo-SP','São Paulo','(11)3420-7003',NULL),(6728,'Kauã Alves Pinto','706.298.004-80','KauaAlvesPinto@jourrapide.com','Catanduva-SP','São Paulo','(17) 2764-3915',NULL),(6885,'Carla Carvalho Sousa','331.683.205-01','CarlaCarvalhoSousa@teleworm.us','Telêmaco Borba-PR','Parana','(42)4936-9636',NULL),(7249,'Diego Cardoso Pinto','722.204.612-70','DiegoCardosoPinto@rhyta.com','Queimados-SP','São Paulo','(21)4625-8441',NULL),(7892,'Kauan Rocha Santos','902.812.788-73','KauanRochaSantos@jourrapide.com','São Paulo-SP','São Paulo','(11) 8594-2931',NULL),(7919,'Aline Fernandes Souza','460.469.418-49','AlineFernandesSouza@rhyta.com','Araguaína-SP','São Paulo','(11)7489-6775',NULL),(8529,'Alex Martins Silva','541.366.288-20','AlexMartinsSilva@dayrep.com','Cariacica-ES','Espirito Santo','(27)5842-8728',NULL),(9973,'Yasmin Azevedo Castro','214.271.531-16','YasminAzevedoCastro@rhyta.com','Catanduva-SP','São Paulo','(17) 6422-4111',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `codigo` bigint NOT NULL,
  `FARMACIA_id_farmacia` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `fabricante` varchar(50) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `lote` int DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `FARMACIA_id_farmacia` (`FARMACIA_id_farmacia`),
  CONSTRAINT `estoque_ibfk_2` FOREIGN KEY (`FARMACIA_id_farmacia`) REFERENCES `farmacia` (`id_farmacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (174536,73457,'Clonazepam','NEO QUIMICA',766,144,'2029-12-31'),(518529,1738,'Durateston','NEO QUIMICA',100,12,'2026-12-31'),(573218,1738,'LORATAMED','NEO QUIMICA',25,75,'2028-12-31'),(1784523,1738,'DIPIMED','NEO QUIMICA',74,899,'2028-12-31'),(1856935,1738,'Aerolin','NEO QUIMICA',25,625,'2025-12-31'),(2378999,6183,'Pregabalina','NEO QUIMICA',73,732,'2025-12-31'),(2580632,1738,'Losartan','NEO QUIMICA',63,132,'2026-12-31'),(2595704,1738,'Quetiapina','NEO QUIMICA',52,521,'2028-12-31'),(2674387,1738,'Glifage XR','NEO QUIMICA',63,732,'2028-12-31'),(3373868,6183,'Neo Soro','NEO QUIMICA',74,474,'2028-12-31'),(3757278,6183,'Ivermectina','NEO QUIMICA',100,245,'2028-12-31'),(3798175,1738,'Pregabalina','NEO QUIMICA',63,673,'2029-12-31'),(3821457,1738,'Glyxambi','NEO QUIMICA',63,14,'2025-12-31'),(3907443,6183,'Alenia','NEO QUIMICA',73,347,'2028-12-31'),(4058274,1738,'Ivermectina','NEO QUIMICA',27,84,'2027-12-31'),(4564567,27572,'Quetiapina','NEO QUIMICA',154,867,'2029-12-31'),(5468747,27572,'Alenia','NEO QUIMICA',157,473,'2026-12-31'),(5732274,6183,'HIDROCLOROTIAZIDA','NEO QUIMICA',35,35,'2024-12-31'),(6855957,1738,'Amoxicilina','NEO QUIMICA',78,27,'2024-12-31'),(7068733,73457,'Neo Soro','NEO QUIMICA',636,636,'2028-12-31'),(7367734,6183,'LORATAMED','NEO QUIMICA',63,745,'2026-12-31'),(7474646,27572,'Avamys','NEO QUIMICA',165,867,'2025-12-31'),(7659742,1738,'Neo Soro','NEO QUIMICA',100,90,'2026-12-31'),(8262498,1738,'HIDROCLOROTIAZIDA','NEO QUIMICA',100,56,'2028-12-31'),(8364464,6183,'Durateston ','NEO QUIMICA',63,74,'2027-12-31'),(8364864,27572,'Durateston','NEO QUIMICA',105,87,'2024-12-31'),(8417890,1738,'Avamys','NEO QUIMICA',100,563,'2027-12-31'),(8476574,27572,'Escitalopram','NEO QUIMICA',85,236,'2029-12-31'),(8477647,27572,'Neo Soro','NEO QUIMICA',156,785,'2029-12-31'),(9567325,1738,'Alenia','NEO QUIMICA',25,756,'2029-12-31'),(9588484,73457,'Escitalopram','NEO QUIMICA',177,968,'2026-12-31'),(9896874,46326,'Glifage XR','NEO QUIMICA',632,646,'2026-12-31'),(9954837,6183,'Glifage XR XR','NEO QUIMICA',63,262,'2025-12-31'),(14145336,46326,'Neo Soro','NEO QUIMICA',654,254,'2026-12-31'),(14535346,73457,'Durateston','NEO QUIMICA',75,636,'2027-12-31'),(23253525,46326,'Escitalopram','NEO QUIMICA',85,675,'2024-12-31'),(23566787,46326,'Ivermectina','NEO QUIMICA',134,76,'2028-12-31'),(25456565,46326,'LORATAMED','NEO QUIMICA',234,78,'2027-12-31'),(25645466,46326,'HIDROCLOROTIAZIDA','NEO QUIMICA',100,56,'2028-12-31'),(32263646,46326,'Pregabalina','NEO QUIMICA',75,255,'2028-12-31'),(47676747,27572,'HIDROCLOROTIAZIDA','NEO QUIMICA',63,355,'2024-12-31'),(47784777,27572,'Ivermectina','NEO QUIMICA',90,366,'2028-12-31'),(48985484,6183,'Glyxambi','NEO QUIMICA',67,733,'2026-12-31'),(52536562,46326,'Xigduo','NEO QUIMICA',543,512,'2028-12-31'),(64265683,6183,'Amoxicilina','NEO QUIMICA',52,462,'2025-12-31'),(64674366,46326,'HIDROCLOROTIAZIDA','NEO QUIMICA',23,754,'2025-12-31'),(67563535,73457,'HIDROCLOROTIAZIDA','NEO QUIMICA',42,366,'2028-12-31'),(67563563,68421,'HIDROCLOROTIAZIDA','NEO QUIMICA',745,75,'2028-12-31'),(74479899,27572,'Glifage XR','NEO QUIMICA',65,876,'2025-12-31'),(74634636,27572,'Xigduo','NEO QUIMICA',75,254,'2028-12-31'),(74635636,47852,'HIDROCLOROTIAZIDA','NEO QUIMICA',464,632,'2029-12-31'),(74763562,73457,'Quetiapina','NEO QUIMICA',366,255,'2029-12-31'),(74767474,27572,'Amoxicilina','NEO QUIMICA',53,874,'2028-12-31'),(77843433,46326,'Durateston','NEO QUIMICA',90,214,'2029-12-31'),(78964573,27572,'Pregabalina','NEO QUIMICA',21,967,'2026-12-31'),(84137890,6183,'Quetiapina','NEO QUIMICA',73,363,'2027-12-31'),(85735355,58294,'HIDROCLOROTIAZIDA','NEO QUIMICA',72,245,'2028-12-31'),(86874674,73457,'LORATAMED','NEO QUIMICA',25,888,'2024-12-31'),(95736325,73457,'Alenia','NEO QUIMICA',885,74,'2029-12-31'),(98689584,46326,'Quetiapina','NEO QUIMICA',32,654,'2029-12-31'),(241343345,73457,'Avamys','NEO QUIMICA',633,243,'2028-12-31'),(363256632,46326,'Avamys','NEO QUIMICA',65,632,'2028-12-31'),(511534654,46326,'Alenia','NEO QUIMICA',134,754,'2028-12-31'),(524234512,81737,'HIDROCLOROTIAZIDA','NEO QUIMICA',325,7847,'2028-12-31'),(625255555,73457,'Xigduo','NEO QUIMICA',88,743,'2028-12-31'),(635345244,73457,'Amoxicilina','NEO QUIMICA',142,366,'2028-12-31'),(635345252,81737,'Durateston','NEO QUIMICA',244,7346,'2029-12-31'),(735252525,73457,'Ivermectina','NEO QUIMICA',144,747,'2029-12-31'),(736366623,46326,'Clonazepam ','NEO QUIMICA',43,255,'2029-12-31'),(747675747,27572,'Glyxambi','NEO QUIMICA',124,876,'2029-12-31'),(862525456,46326,'Glyxambi','NEO QUIMICA',414,646,'2029-12-31'),(2365766547,82183,'Amoxicilina','NEO QUIMICA',144,552,'2028-12-31'),(2525344535,73457,'Aerolin','NEO QUIMICA',23,424,'2026-12-31'),(2546564561,81737,'Losartan','NEO QUIMICA',97,623,'2025-12-31'),(3565556456,82183,'HIDROCLOROTIAZIDA','NEO QUIMICA',242,626,'2028-12-31'),(4325645663,73457,'Pregabalina','NEO QUIMICA',765,313,'2028-12-31'),(6345623552,81737,'Ivermectina','NEO QUIMICA',352,255,'2028-12-31'),(6345627656,81737,'Pregabalina','NEO QUIMICA',88,2155,'2027-12-31'),(7265461155,81737,'DIPIMED','NEO QUIMICA',26,959,'2026-12-31'),(7578747477,73457,'Losartan','NEO QUIMICA',86,985,'2025-12-31'),(8367788467,82183,'Clonazepam ','NEO QUIMICA',45,2456,'2029-12-31'),(8463522256,81737,'Clonazepam ','NEO QUIMICA',73,523,'2024-12-31'),(8566735225,81737,'Alenia','NEO QUIMICA',55,25,'2028-12-31'),(8567463564,81737,'Xigduo','NEO QUIMICA',732,3525,'2029-12-31'),(8567563363,81737,'Escitalopram','NEO QUIMICA',131,96,'2025-12-31'),(8674563522,81737,'Quetiapina','NEO QUIMICA',55,558,'2029-12-31'),(8746353522,81737,'Neo Soro','NEO QUIMICA',11,954,'2024-12-31'),(9837675367,82183,'Xigduo','NEO QUIMICA',14,877,'2029-12-31'),(9867837226,81737,'Aerolin','NEO QUIMICA',88,736,'2029-12-31'),(14515348556,91737,'Durateston','NEO QUIMICA',3,345,'2029-12-31'),(15456576889,82183,'Quetiapina','NEO QUIMICA',445,525,'2029-12-31'),(15465657377,82183,'Alenia','NEO QUIMICA',52,7647,'2024-12-31'),(26457626512,82183,'BUSCOPAN','NEO QUIMICA',144,235,'2028-12-31'),(35135654715,82639,'Quetiapina','NEO QUIMICA',86,5525,'2029-12-31'),(42563456452,82639,'HIDROCLOROTIAZIDA','NEO QUIMICA',21,325,'2028-12-31'),(45154543576,82639,'Glyxambi','NEO QUIMICA',78,2535,'2028-12-31'),(45435135123,82639,'Amoxicilina','NEO QUIMICA',35,35,'2028-12-31'),(46737568856,82183,'Aerolin','NEO QUIMICA',764,245,'2027-12-31'),(56547156676,82183,'Losartan','NEO QUIMICA',225,144,'2026-12-31'),(72678732627,82183,'Pregabalina','NEO QUIMICA',74,6362,'2025-12-31'),(73626575626,82639,'Alenia','NEO QUIMICA',42,255,'2025-12-31'),(76345262656,89383,'Amoxicilina','NEO QUIMICA',345,352,'2028-12-31'),(76345264656,91737,'Ivermectina','NEO QUIMICA',35,52,'2028-12-31'),(85876896337,82183,'Escitalopram','NEO QUIMICA',33,2155,'2025-12-31'),(87563626266,82183,'Ivermectina','NEO QUIMICA',134,6365,'2029-12-31'),(87678567251,82639,'Clonazepam  ','NEO QUIMICA',53,9370,'2024-12-31'),(89677486714,91737,'DIPIMED','NEO QUIMICA',65,23,'2027-12-31'),(93625676827,82183,'DIPIMED','NEO QUIMICA',100,1452,'2028-12-31'),(98357247723,82183,'Avamys ','NEO QUIMICA',14,970,'2024-12-31'),(145153456456,89383,'Ivermectina','NEO QUIMICA',63,6345,'2029-12-31'),(363651453566,92638,'HIDROCLOROTIAZIDA','NEO QUIMICA',25,323,'2028-12-31'),(363661263566,91737,'HIDROCLOROTIAZIDA','NEO QUIMICA',21,33,'2028-12-31'),(363664363566,89383,'HIDROCLOROTIAZIDA','NEO QUIMICA',221,3253,'2028-12-31'),(435145454355,92638,'Amoxicilina','NEO QUIMICA',84,542,'2028-12-31'),(577835435426,91737,'Neo Soro','NEO QUIMICA',28,47,'2024-12-31'),(577835765426,89383,'LORATAMED','NEO QUIMICA',58,7447,'2024-12-31'),(635145153466,92748,'HIDROCLOROTIAZIDA','NEO QUIMICA',235,323,'2028-12-31'),(764575687235,82639,'Escitalopram','NEO QUIMICA',673,635,'2029-12-31'),(785687682541,82639,'BUSCOPAN','NEO QUIMICA',78,747,'2024-12-31'),(876234671236,82639,'Xigduo ','NEO QUIMICA',54,2456,'2029-12-31'),(1436324561515,91737,'Alenia','NEO QUIMICA',28,35,'2028-12-31'),(1653456345115,82639,'Pregabalina','NEO QUIMICA',85,235,'2027-12-31'),(3423432423534,92638,'Alenia','NEO QUIMICA',27,1275,'2029-12-31'),(3434235451334,92638,'Durateston  ','NEO QUIMICA',33,5845,'2025-12-31'),(5436547224514,82639,'Aerolin','NEO QUIMICA',25,877,'2029-12-31'),(5615345634561,92638,'Ivermectina','NEO QUIMICA',48,3845,'2029-12-31'),(7561361652622,92748,'Durateston ','NEO QUIMICA',428,3845,'2029-12-31'),(7576724645632,82639,'Losartan','NEO QUIMICA',67,662,'2025-12-31'),(8567625124534,91737,'Escitalopram ','NEO QUIMICA',22,545,'2025-12-31'),(8567625154534,89383,'Durateston ','NEO QUIMICA',32,2545,'2025-12-31'),(14515134543615,92748,'Alenia','NEO QUIMICA',34,335,'2028-12-31'),(15345654776125,82639,'DIPIMED','NEO QUIMICA',24,1446,'2026-12-31'),(15436457567356,89383,'Escitalopram','NEO QUIMICA',78,1235,'2028-12-31'),(23466578768523,89383,'BUSCOPAN  ','NEO QUIMICA',55,1370,'2024-12-31'),(24534565476561,92748,'Ivermectina','NEO QUIMICA',834,542,'2028-12-31'),(25145134435235,89383,'Quetiapina','NEO QUIMICA',25,477,'2029-12-31'),(25432425512355,92638,'LORATAMED','NEO QUIMICA',92,437,'2024-12-31'),(27572578787232,92748,'Losartan','NEO QUIMICA',100,1452,'2028-12-31'),(34324532424324,92638,'Neo Soro','NEO QUIMICA',36,335,'2028-12-31'),(45653467456816,92748,'BUSCOPAN','NEO QUIMICA',21,1275,'2029-12-31'),(72452565275678,92748,'LORATAMED  ','NEO QUIMICA',3,5845,'2025-12-31'),(78362143656264,91737,'BUSCOPAN','NEO QUIMICA',26,125,'2029-12-31'),(78362514656264,89383,'Alenia','NEO QUIMICA',16,1225,'2029-12-31'),(82567564536572,92748,'Avamys','NEO QUIMICA',21,47,'2029-12-31'),(82656265724572,92748,'Pregabalina','NEO QUIMICA',65,23,'2027-12-31'),(84724562572627,92748,'Aerolin','NEO QUIMICA',63,77,'2029-12-31'),(89678567486714,89383,'Xigduo','NEO QUIMICA',85,2315,'2027-12-31'),(143534615435616,92748,'Glyxambi  ','NEO QUIMICA',33,120,'2024-12-31'),(234665787646523,91737,'Glyxambi  ','NEO QUIMICA',55,10,'2024-12-31'),(251412341435235,91737,'Pregabalina','NEO QUIMICA',25,47,'2029-12-31'),(256324324355235,91737,'Losartan','NEO QUIMICA',25,7,'2029-12-31'),(256457613654726,92748,'Quetiapina ','NEO QUIMICA',84,4256,'2029-12-31'),(367247737572262,92748,'Neo Soro','NEO QUIMICA',912,437,'2024-12-31'),(454123411233562,91737,'Quetiapina ','NEO QUIMICA',54,456,'2029-12-31'),(454213131233562,89383,'Glyxambi ','NEO QUIMICA',54,4456,'2029-12-31'),(534543523432525,92638,'Glyxambi ','NEO QUIMICA',84,4256,'2029-12-31'),(545153525432567,92638,'BUSCOPAN  ','NEO QUIMICA',533,120,'2024-12-31'),(867236315351115,92638,'Quetiapina','NEO QUIMICA',27,47,'2029-12-31'),(5436134614614567,92638,'Pregabalina','NEO QUIMICA',23,77,'2029-12-31');
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmacia` (
  `id_farmacia` int NOT NULL,
  `MEDICAMENTO_id_medicamento` int DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `telefone1` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_farmacia`),
  KEY `MEDICAMENTO_id_medicamento` (`MEDICAMENTO_id_medicamento`),
  CONSTRAINT `farmacia_ibfk_1` FOREIGN KEY (`MEDICAMENTO_id_medicamento`) REFERENCES `medicamento` (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmacia`
--

LOCK TABLES `farmacia` WRITE;
/*!40000 ALTER TABLE `farmacia` DISABLE KEYS */;
INSERT INTO `farmacia` VALUES (1738,NULL,'NatureCare Farmácia Homeopática S.A.','67.890.123/0001-23','contato@naturecare.com','Barretos-SP','São Paulo','(11)4927-9268'),(6183,NULL,'Farmácia da Família','23.456.789/0001-67','contato@farmaciadafamilia.com','Catanduva-SP','São Paulo','(17)7875-2560'),(27572,NULL,'BioPharma Saúde Integral Inc.','34.567.890/0001-56','contato@biopharmasaude.com','Barretos-SP','São Paulo','(11) 7605-6015'),(46326,NULL,'Farmanova Distribuidora de Medicamentos','89.012.345/0001-34','contato@farmanova.com','Barretos-SP','São Paulo','(11)7366-6258'),(47852,NULL,'HarmonyMeds Medicamentos Especiais','56.789.012/0001-90','contato@harmonymeds.com','São Paulo-SP','São Paulo','(11)7007-3119'),(58294,NULL,'VitaMed Clínica Farmacêutica','56.789.012/0001-56','contato@vitamed.com','Catanduva-SP','São Paulo','(17)4958-3005'),(68421,NULL,'PharmaVital Suprimentos Médicos Ltda','45.678.901/0001-12','contato@pharmavital.com','Barretos-SP','São Paulo','(11)9168-5192'),(73457,NULL,'GenoFarma Genéricos Ltda','34.567.890/0001-78','contato@genofarma.com','São Paulo-SP','São Paulo','(11)9708-7873'),(81737,NULL,'CosmoPharma Beleza e Saúde Ltda','90.123.456/0001-45','contato@cosmopharma.com','Catanduva-SP','São Paulo','(17)6594-7519'),(82183,NULL,'Farmácia Vida e Saúde Ltda','12.345.678/0001-90','contato@farmaciavidaesaude.com','Salto-SP','São Paulo','(11)7766-4945'),(82639,NULL,'NaturalPlus Farmácia de Manipulação','67.890.123/0001-01','contato@naturalplus.com','Queimados-SP','São Paulo','(21)6754-6106'),(89383,NULL,'FarmaTech Soluções Farmacêuticas S.A.','98.765.432/0001-21','contato@farmatech.com','Rio de Janeiro-RJ','Rio de Janeiro','(21)9005-5272'),(91737,NULL,'LifePharma Saúde Integrada S.A.','45.678.901/0001-89','contato@lifepharma.com','São Paulo-SP','São Paulo','(11)9325-3629'),(92638,NULL,'EcoFarm Saúde e Bem-Estar Ltda','55.678.901/0001-34','contato@ecofarmsaude.com','São Paulo-SP','São Paulo','(11)6075-8035'),(92748,NULL,'FashionDose Farmácia de Manipulação','23.456.789/0001-45','contato@fashiondose.com','Divinópolis-MG','Minas Gerais','(37)3769-9152');
/*!40000 ALTER TABLE `farmacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pedido` (
  `PEDIDO_id_pedido` int DEFAULT NULL,
  `MEDICAMENTO_id_medicamento` int DEFAULT NULL,
  `qtd_item` decimal(10,0) DEFAULT NULL,
  `valor_item` decimal(10,0) DEFAULT NULL,
  `FARMACIA_id_farmacia` int DEFAULT NULL,
  KEY `MEDICAMENTO_id_medicamento` (`MEDICAMENTO_id_medicamento`),
  KEY `FARMACIA_id_farmacia` (`FARMACIA_id_farmacia`),
  CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`MEDICAMENTO_id_medicamento`) REFERENCES `medicamento` (`id_medicamento`),
  CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`FARMACIA_id_farmacia`) REFERENCES `farmacia` (`id_farmacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pedido`
--

LOCK TABLES `item_pedido` WRITE;
/*!40000 ALTER TABLE `item_pedido` DISABLE KEYS */;
INSERT INTO `item_pedido` VALUES (1,22,2,64,73457),(2,3,1,11,73457),(3,12,1,25,73457),(4,33,1,20,73457),(5,12,1,21,6183),(6,27,1,141,6183),(7,78,2,21,6183),(8,3,1,13,6183),(9,11,1,17,1738),(10,21,3,18,1738),(11,27,2,150,1738),(12,27,1,141,6183),(13,31,1,245,1738),(14,92,1,133,1738),(15,76,2,300,73457),(16,11,1,21,27572),(17,12,3,24,27572),(18,27,2,141,27572),(19,53,2,80,27572),(31,53,1,300,27572),(12,53,4,24,46326),(37,53,2,25,46326),(20,27,3,111,46326),(21,42,1,43,46326),(3,42,10,10,58294),(22,12,3,29,81737),(23,21,3,16,81737),(24,21,8,16,81737),(25,21,3,16,81737),(26,76,1,300,81737),(27,11,2,17,82183),(28,29,2,98,82183),(29,76,1,330,82183),(30,3,8,9,82639),(31,25,2,92,82639),(32,31,1,250,82639),(33,82,3,174,82639),(34,29,3,95,89383),(35,25,2,89,89383),(36,30,2,55,89383),(37,92,4,167,91737),(38,82,2,143,91737),(39,31,1,260,91737),(40,30,3,58,91737),(41,31,3,240,92638),(42,22,4,74,92638),(43,76,1,380,92748),(44,27,4,131,92748),(45,22,2,80,92748),(46,12,5,25,92748),(47,12,2,24,82183),(47,12,2,24,82183),(47,12,2,23,82183),(48,22,1,47,46326);
/*!40000 ALTER TABLE `item_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento` (
  `id_medicamento` int NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `prescricao` varchar(50) DEFAULT NULL,
  `dosagem` varchar(50) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento`
--

LOCK TABLES `medicamento` WRITE;
/*!40000 ALTER TABLE `medicamento` DISABLE KEYS */;
INSERT INTO `medicamento` VALUES (3,'HIDROCLOROTIAZIDA','Requer prescrição médica','2 gotas nos olhos, três vezes ao dia','é um colírio lubrificante indicado para alívio da secura ocular e desconforto nos olhos, proporcionando uma sensação de frescor.'),(11,'Amoxicilina','Sem prescrição médica','10mg PC','medicamento indicado para o controle da pressão arterial.'),(12,'Ivermectina','Sem prescrição médica','Aplicar conforme necessário','é uma pomada hidratante e calmante para pele seca e irritada. Indicado para aliviar coceira, vermelhidão e descamação.'),(21,'Durateston ','Sem prescrição médica',' 500mg PC','analgésico com fórmula avançada para alívio rápido e eficaz da dor.'),(22,'LORATAMED','Requer prescrição médica','1000mg pc','é um medicamento antidiabético utilizado para o controle da glicose no sangue em pacientes com diabetes tipo 2. O uso deve ser supervisionado por um médico.'),(25,'Escitalopram','Requer prescrição médica','5mg PC','é um auxiliar do sono projetado para promover um sono tranquilo e restaurador.'),(27,'Neo Soro','Sem prescrição médica','1 gota nos olhos, duas vezes ao dia','é um colírio indicado para aliviar a irritação ocular e promover a lubrificação. '),(29,'Alenia','Sem prescrição médica','500mg PC','é um suplemento com condroitina e glucosamina, auxiliando na saúde das articulações. Indicado para pessoas com desconforto articular e osteoartrite.'),(30,'BUSCOPAN','Sem prescrição médica','800UI PC','é um suplemento de cálcio e vitamina D3, essenciais para a saúde óssea. Pode ser utilizado para prevenir a osteoporose e manter ossos saudáveis.'),(31,'Glyxambi','Sem prescrição médica','500mg PC','é um suplemento vitamínico que promove o fortalecimento do sistema imunológico, auxiliando na prevenção de gripes e resfriados.'),(33,'Quetiapina','Sem prescrição médica','200mcg por inalação','é um broncodilatador indicado para alívio rápido da falta de ar e sintomas de broncoespasmo em pacientes com doenças respiratórias, como asma.'),(37,'Avamys','Sem prescrição médica','100mg PC','é um suplemento nutricional formulado para melhorar a concentração e o desempenho cognitivo. Indicado para estudantes e profissionais que buscam maior foco mental.'),(42,'Clonazepam ','Sem prescrição médica','600mg PC','é um auxiliar do sono projetado para promover um sono tranquilo e restaurador.'),(53,'Xigduo','Sem prescrição médica','1 cápsula antes das refeições','é um suplemento para controle de peso, auxiliando na queima de gordura e no controle do apetite.'),(57,'Glifage XR','Requer prescrição médica','25mg PC','é um estabilizador de humor utilizado no tratamento de transtornos do humor, como transtorno bipolar.'),(76,'Aerolin','Sem prescrição médica','Aplicar generosamente antes da exposição solar','é um protetor solar de amplo espectro, protegendo contra os raios UVA e UVB. Indicado para prevenção do envelhecimento precoce e danos causados pelo sol.'),(78,'Pregabalina','Requer prescrição médica','250mg PC','é um suplemento enzimático que auxilia na digestão, especialmente indicado para pessoas com desconforto gastrointestinal após as refeições.'),(82,'Losartan','Requer prescrição médica','180mg PC','anti-histamínico eficaz no alívio dos sintomas de alergias sazonais, como espirros, coceira nos olhos e coriza.'),(92,'DIPIMED','Requer prescrição médica','0,5mg pc','é um ansiolítico indicado para o tratamento de transtornos de ansiedade. Deve ser utilizado conforme orientação médica para alívio dos sintomas.');
/*!40000 ALTER TABLE `medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamento_farmacia`
--

DROP TABLE IF EXISTS `medicamento_farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamento_farmacia` (
  `MEDICAMENTO_id_medicamento` int NOT NULL,
  `FARMACIA_id_farmacia` int NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`MEDICAMENTO_id_medicamento`,`FARMACIA_id_farmacia`),
  KEY `FARMACIA_id_farmacia` (`FARMACIA_id_farmacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamento_farmacia`
--

LOCK TABLES `medicamento_farmacia` WRITE;
/*!40000 ALTER TABLE `medicamento_farmacia` DISABLE KEYS */;
INSERT INTO `medicamento_farmacia` VALUES (3,1738,10.99),(3,6183,12.99),(3,27572,14.99),(3,46326,10.99),(3,47852,16.99),(3,58294,10.00),(3,68421,10.50),(3,73457,11.00),(3,81737,12.99),(3,82183,17.99),(3,82639,9.00),(3,89383,11.00),(3,91737,12.99),(3,92638,14.99),(3,92748,13.00),(11,1738,16.99),(11,6183,17.99),(11,27572,20.99),(11,73457,18.00),(11,82183,16.99),(11,82639,13.00),(11,89383,17.00),(11,92638,18.00),(12,1738,29.99),(12,6183,20.99),(12,27572,23.99),(12,46326,24.00),(12,73457,25.00),(12,81737,28.99),(12,82183,23.99),(12,89383,26.00),(12,91737,22.99),(12,92638,28.99),(12,92748,25.00),(21,1738,17.99),(21,6183,17.99),(21,27572,15.99),(21,46326,19.99),(21,73457,13.00),(21,81737,15.99),(21,89383,18.00),(21,91737,13.99),(21,92638,18.99),(21,92748,12.00),(22,1738,53.99),(22,6183,61.99),(22,46326,46.99),(22,73457,64.00),(22,89383,66.00),(22,92638,73.99),(22,92748,80.00),(25,27572,89.99),(25,46326,85.99),(25,73457,84.00),(25,81737,90.99),(25,82183,77.99),(25,82639,92.00),(25,89383,89.00),(25,91737,80.99),(27,1738,150.00),(27,6183,140.99),(27,27572,140.99),(27,46326,110.99),(27,73457,110.00),(27,81737,120.99),(27,91737,120.99),(27,92638,140.99),(27,92748,130.99),(29,1738,100.00),(29,6183,95.99),(29,27572,99.99),(29,46326,100.99),(29,73457,110.00),(29,81737,100.99),(29,82183,97.99),(29,82639,90.00),(29,89383,95.00),(29,91737,92.99),(29,92638,99.99),(29,92748,100.00),(30,82183,50.99),(30,82639,60.00),(30,89383,55.00),(30,91737,57.99),(30,92638,60.99),(30,92748,50.00),(31,1738,245.00),(31,6183,200.00),(31,27572,299.99),(31,46326,289.99),(31,82639,250.00),(31,89383,260.00),(31,91737,259.99),(31,92638,239.99),(31,92748,280.00),(33,1738,12.99),(33,6183,16.99),(33,27572,19.99),(33,46326,16.99),(33,73457,20.00),(33,81737,13.99),(33,82183,15.99),(33,82639,16.00),(33,89383,12.00),(33,91737,18.99),(33,92638,19.99),(33,92748,15.00),(37,1738,25.00),(37,27572,25.00),(37,46326,25.00),(37,73457,25.00),(37,82183,24.99),(37,92748,25.00),(42,46326,42.99),(42,73457,36.00),(42,81737,39.99),(42,82183,47.99),(42,82639,49.00),(53,27572,80.00),(53,46326,75.99),(53,73457,81.00),(53,81737,84.99),(53,82183,90.99),(53,82639,99.00),(53,89383,78.00),(57,1738,10.99),(57,6183,8.99),(57,27572,9.99),(57,46326,10.99),(76,1738,340.00),(76,73457,300.00),(76,81737,299.99),(76,82183,329.99),(76,82639,290.00),(76,92748,380.00),(78,1738,25.99),(78,6183,20.99),(78,27572,33.99),(78,46326,23.99),(78,73457,26.00),(78,81737,29.99),(78,82183,44.99),(78,82639,36.00),(78,91737,21.99),(78,92638,28.99),(78,92748,36.00),(82,1738,119.99),(82,73457,100.00),(82,81737,130.99),(82,82183,157.99),(82,82639,174.00),(82,91737,142.99),(82,92748,144.00),(92,1738,132.99),(92,81737,152.99),(92,82183,152.99),(92,82639,163.00),(92,91737,166.99);
/*!40000 ALTER TABLE `medicamento_farmacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `CLIENTE_id_cliente` int DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `CLIENTE_id_cliente` (`CLIENTE_id_cliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`CLIENTE_id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,179,'2023-11-25',NULL),(2,179,'2023-11-25',NULL),(3,179,'2023-11-20',NULL),(4,179,'2023-11-20',NULL),(5,1042,'2023-09-10',NULL),(6,6728,'2023-09-28',NULL),(7,6384,'2023-10-01',NULL),(8,1042,'2023-10-15',NULL),(9,1042,'2023-10-19',NULL),(10,6728,'2023-10-15',NULL),(11,6728,'2023-11-03',NULL),(12,6885,'2023-10-06',NULL),(13,7249,'2023-10-11',NULL),(14,7249,'2023-10-16',NULL),(15,7892,'2023-10-22',NULL),(16,179,'2023-05-10',NULL),(17,179,'2023-05-11',NULL),(18,1042,'2023-05-13',NULL),(19,1042,'2023-06-03',NULL),(20,1042,'2023-06-03',NULL),(21,6382,'2023-06-03',NULL),(22,6382,'2023-08-16',NULL),(23,6384,'2023-08-22',NULL),(24,6384,'2023-07-11',NULL),(25,6728,'2023-11-19',NULL),(26,6728,'2023-06-01',NULL),(27,6728,'2023-07-03',NULL),(28,6728,'2023-04-27',NULL),(29,6885,'2023-04-29',NULL),(30,7892,'2023-07-18',NULL),(31,7892,'2023-09-22',NULL),(32,7919,'2023-05-10',NULL),(33,7919,'2023-05-11',NULL),(34,7919,'2023-05-13',NULL),(35,7919,'2023-06-03',NULL),(36,7919,'2023-06-03',NULL),(37,8529,'2023-06-03',NULL),(38,8529,'2023-08-16',NULL),(39,8529,'2023-08-22',NULL),(40,8529,'2023-07-11',NULL),(41,9973,'2023-11-19',NULL),(42,9973,'2023-06-01',NULL),(43,9973,'2023-07-03',NULL),(44,9973,'2023-04-29',NULL),(45,9973,'2023-07-18',NULL),(46,9973,'2023-09-22',NULL),(47,7892,'2023-11-14',NULL),(48,7249,'2024-11-15',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_dadoscombinados`
--

DROP TABLE IF EXISTS `vw_dadoscombinados`;
/*!50001 DROP VIEW IF EXISTS `vw_dadoscombinados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_dadoscombinados` AS SELECT 
 1 AS `codigo`,
 1 AS `nome_farmacia`,
 1 AS `nome_medicamento`,
 1 AS `qtd_item`,
 1 AS `data_pedido`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_dadoscombinados`
--

/*!50001 DROP VIEW IF EXISTS `vw_dadoscombinados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_dadoscombinados` AS select `e`.`codigo` AS `codigo`,`f`.`nome` AS `nome_farmacia`,`m`.`nome` AS `nome_medicamento`,`ip`.`qtd_item` AS `qtd_item`,`p`.`data_pedido` AS `data_pedido` from ((((`estoque` `e` join `farmacia` `f` on((`e`.`FARMACIA_id_farmacia` = `f`.`id_farmacia`))) join `item_pedido` `ip` on((`e`.`codigo` = `ip`.`MEDICAMENTO_id_medicamento`))) join `pedido` `p` on((`ip`.`PEDIDO_id_pedido` = `p`.`id_pedido`))) join `medicamento` `m` on((`ip`.`MEDICAMENTO_id_medicamento` = `m`.`id_medicamento`))) */;
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

-- Dump completed on 2023-11-27 22:30:10
