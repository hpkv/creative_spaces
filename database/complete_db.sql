CREATE DATABASE  IF NOT EXISTS `creative_spaces_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `creative_spaces_db`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: creative_spaces_db
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user role',7,'add_userrole'),(26,'Can change user role',7,'change_userrole'),(27,'Can delete user role',7,'delete_userrole'),(28,'Can view user role',7,'view_userrole'),(29,'Can add role detail',8,'add_roledetail'),(30,'Can change role detail',8,'change_roledetail'),(31,'Can delete role detail',8,'delete_roledetail'),(32,'Can view role detail',8,'view_roledetail'),(33,'Can add user',9,'add_roledetails'),(34,'Can change user',9,'change_roledetails'),(35,'Can delete user',9,'delete_roledetails'),(36,'Can view user',9,'view_roledetails'),(37,'Can add categories',10,'add_categories'),(38,'Can change categories',10,'change_categories'),(39,'Can delete categories',10,'delete_categories'),(40,'Can view categories',10,'view_categories'),(41,'Can add product details',11,'add_productdetails'),(42,'Can change product details',11,'change_productdetails'),(43,'Can delete product details',11,'delete_productdetails'),(44,'Can view product details',11,'view_productdetails'),(45,'Can add projects',12,'add_projects'),(46,'Can change projects',12,'change_projects'),(47,'Can delete projects',12,'delete_projects'),(48,'Can view projects',12,'view_projects'),(49,'Can add questionnaire',13,'add_questionnaire'),(50,'Can change questionnaire',13,'change_questionnaire'),(51,'Can delete questionnaire',13,'delete_questionnaire'),(52,'Can view questionnaire',13,'view_questionnaire'),(53,'Can add temporary cart',14,'add_temporarycart'),(54,'Can change temporary cart',14,'change_temporarycart'),(55,'Can delete temporary cart',14,'delete_temporarycart'),(56,'Can view temporary cart',14,'view_temporarycart'),(57,'Can add reviews',15,'add_reviews'),(58,'Can change reviews',15,'change_reviews'),(59,'Can delete reviews',15,'delete_reviews'),(60,'Can view reviews',15,'view_reviews'),(61,'Can add PayPal IPN',16,'add_paypalipn'),(62,'Can change PayPal IPN',16,'change_paypalipn'),(63,'Can delete PayPal IPN',16,'delete_paypalipn'),(64,'Can view PayPal IPN',16,'view_paypalipn'),(65,'Can add invoice table',17,'add_invoicetable'),(66,'Can change invoice table',17,'change_invoicetable'),(67,'Can delete invoice table',17,'delete_invoicetable'),(68,'Can view invoice table',17,'view_invoicetable'),(69,'Can add sales',18,'add_sales'),(70,'Can change sales',18,'change_sales'),(71,'Can delete sales',18,'delete_sales'),(72,'Can view sales',18,'view_sales');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$sXEvLJXp0hRs$4gz1S++8xaGRTVrGuJBU7TN+YbUjJ6d1nOu266Frb8I=','2020-05-20 08:09:46.630591',1,'creative_spaces','','','',1,1,'2020-04-25 07:56:20.386390'),(5,'pbkdf2_sha256$180000$pOxiVtYUUTUI$1Bd08Akn4rqRuMV8yJeu/x61nSDzffKQ30zY7W4yG8s=','2020-06-12 20:00:30.618456',0,'Harjot_Singh','Harjot','Singh','harjotsingh.virdi@gmail.com',0,1,'2020-05-20 20:05:15.344268'),(6,'pbkdf2_sha256$180000$IWw2K5dP2awq$p7Txl46eRSWv9txswMGPV9e4VmlDSPj27fneo1p7YWk=','2020-06-12 15:45:22.233539',0,'Shivam_Kumar','Shivam','Kumar','kshivam1710@gmail.com',0,1,'2020-05-21 05:58:20.199199'),(9,'pbkdf2_sha256$180000$GDGaFSLOCDeP$TXS3TkZKTmxGEwbPeGgU0gzn/YAZ5quiOCKQTBVMQIs=','2020-06-12 15:48:40.231041',0,'Harmanpreet_Virdi','Harmanpreet','Virdi','harmanpreetvirdi1234@gmail.com',0,1,'2020-05-27 16:50:34.693868'),(10,'pbkdf2_sha256$180000$hCo8k56kxVXM$UWrPiVFMEmfuzWjQ3t6p+awUegxhtsUJ2dkWIEH4uL8=','2020-06-09 19:05:16.792065',0,'Aradhna_Singh','Aradhna','Singh','gwaliormachine.tools@gmail.com',0,1,'2020-05-31 18:17:33.817642'),(11,'pbkdf2_sha256$180000$fZ5dS1Coc6PX$qwSP+M6KvC7G8jQWrewg8EgFFSs1l2fPtjDJ17TLvFA=','2020-06-14 13:49:39.897385',0,'Param_Pannu','Param','Pannu','kparamjeet624@gmail.com',0,1,'2020-05-31 18:30:29.682826'),(12,'pbkdf2_sha256$180000$0moZZE2OJHvX$xXVz5nN1XdyFlhRnYajT0LHSwij5JIUYUiZwK3/ynj4=','2020-06-10 17:15:24.002490',0,'Jagatdeep_Singh','Jagatdeep','Singh','singhjagatdeep95@gmail.com',0,1,'2020-05-31 18:43:54.827451'),(13,'pbkdf2_sha256$180000$ibBUYgp7Pd9x$vsux8neUDs4KyNaqaYCUBBG6N4pGNxFV4ve/048IqE8=','2020-06-14 13:32:21.436903',0,'Harkiran_Arora','Harkiran','Arora','harmanpreetkaurvirdi6@gmail.com',0,1,'2020-06-09 06:09:11.274998');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_categories`
--

DROP TABLE IF EXISTS `backend_app_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_categories` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) DEFAULT NULL,
  `image` varchar(255),
  PRIMARY KEY (`c_id`),
  UNIQUE KEY `c_name` (`c_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_categories`
--

LOCK TABLES `backend_app_categories` WRITE;
/*!40000 ALTER TABLE `backend_app_categories` DISABLE KEYS */;
INSERT INTO `backend_app_categories` VALUES (1,'Kitchen','w1.jpg'),(2,'Living Area','w2.jpg'),(4,'Kid\'s Room','kids-room.jpg'),(5,'Office','Modern-Executive-Office-Design.jpg'),(6,'Bedroom','modern-bedroom.jpg'),(7,'Balcony','balcony-design.jpg'),(9,'Lobby','lobby-designs.jpg'),(10,'Drawing Room','w2.jpg');
/*!40000 ALTER TABLE `backend_app_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_invoicetable`
--

DROP TABLE IF EXISTS `backend_app_invoicetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_invoicetable` (
  `invoice` int(11) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `token` varchar(255),
  PRIMARY KEY (`invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_invoicetable`
--

LOCK TABLES `backend_app_invoicetable` WRITE;
/*!40000 ALTER TABLE `backend_app_invoicetable` DISABLE KEYS */;
INSERT INTO `backend_app_invoicetable` VALUES (1,3200,'harjotsingh.virdi@gmail.com',1,'rzinM'),(2,2300,'harjotsingh.virdi@gmail.com',1,'EqHmU'),(3,1400,'harmanpreetkaurvirdi6@gmail.com',1,'Ar3SM'),(4,199,'harmanpreetkaurvirdi6@gmail.com',1,'hE081'),(5,2600,'kparamjeet624@gmail.com',1,'P9TcW'),(6,1700,'harjotsingh.virdi@gmail.com',1,'2zgQH'),(7,398,'harjotsingh.virdi@gmail.com',1,'i4qos'),(8,23400,'harjotsingh.virdi@gmail.com',1,'96CB8'),(9,560,'harmanpreetkaurvirdi6@gmail.com',1,'as1R4'),(10,22000,'harmanpreetkaurvirdi6@gmail.com',1,'8Xhk3'),(11,0,'harmanpreetkaurvirdi6@gmail.com',0,'e7bvo'),(12,1100,'kparamjeet624@gmail.com',1,'q4JnJ');
/*!40000 ALTER TABLE `backend_app_invoicetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_productdetails`
--

DROP TABLE IF EXISTS `backend_app_productdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_productdetails` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` longtext,
  `price` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity` int(11),
  PRIMARY KEY (`p_id`),
  KEY `backend_app_productd_category_id_df05ed06_fk_backend_a` (`category_id`),
  CONSTRAINT `backend_app_productd_category_id_df05ed06_fk_backend_a` FOREIGN KEY (`category_id`) REFERENCES `backend_app_categories` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_productdetails`
--

LOCK TABLES `backend_app_productdetails` WRITE;
/*!40000 ALTER TABLE `backend_app_productdetails` DISABLE KEYS */;
INSERT INTO `backend_app_productdetails` VALUES (1,'Furny Apollo Chair','g3.jpg','g3.jpg','Contemporary style rocking chair with following features:\r\nPrimary Material: Solid wood, \r\nColor: White, \r\ncomes with a premium fabric fur accessory cloth, \r\nStainless steel rods to hold your weight while sitting.',2300,2,6),(2,'Basics Premium Chair','blog3.jpg','blog3.jpg','Product Dimensions: Length (24 inches), Width (24 inches), Height (31 inches)\r\nPrimary Material: High quality wood\r\nColor: White, Style: Modern\r\nNo Assembly Required: The product is delivered in a pre-assembled state',1700,7,11),(3,'Print Ocean Wall Sign','Screenshot (102).png','Screenshot (103).png','Detailed Features:\r\nProduct Dimensions: (30 x 20 x 0.5 cm)\r\nPrimary material: Wood\r\nProduct Weight: 127 g\r\nPlastic clip stick on the back side so, easily hangable.',500,1,5),(4,'Classic Shoppe Iron Kitchen Tissue Paper roll Holder','Screenshot (104).png','Screenshot (105).png','Holds standard size paper towel roll and made by wrought iron\r\nNapkin Roll Holder & Dispenser.\r\nGreat for Kitchen Counter Tops / Table tops. Ideal for Kitchen Napkin Roll\r\nA great addition to your Kitchen\r\ncolor-black',199,1,10),(5,'Beautiful Vase','blog2.jpg','main.jpg','dnhvhucdifjcvofdjhcfbvhfjckkjcd',1100,10,1),(6,'NAOE Hanging Planter Made of Bamboo','Screenshot (106).png','Screenshot (107).png','Made out of matured bamboo\r\nThe width of the product can vary from 38 cms to 50 cms as it is a natural product\r\nIt is ideal for indoor plants as well as you can hang it in outdoor in your balcony as well as garden\r\nIt has strong cotton string to hang the planter\r\nColour- pale yellow to green as the colour may vary due to natural reasons',450,7,3),(7,'Golden Bird Wall Bracket Hang','Screenshot (108).png','Screenshot (109).png','DESIGN : The eclectic and nature inspired designs render a vintage and luxurious appeal in sturdy metal. The different designs and variety compliment a traditional as well as contemporary decor and lends a universal look.\r\nWIDE APPLICATION : These bracket hooks are perfect for hanging lanterns, planters, wind chimes, flower baskets, bird feeders, string lights, holiday decorations. Add a touch of Vintage-elegance beauty to the living room, bedroom, patio, porch, garden, any other indoor-outdoor place.',450,7,10),(9,'Rolling Nature Good Luck Money Plant in White Round Dew Ceramic Pot','Screenshot (113).png','Screenshot (114).png','Material: Natural Live Plant & Ceramic Pot, Qty: 1 (Plant with Pot)\r\nPot Color: White, Pot Diameter: 4 inches (10 cm), Height: 3 inches (8cm)\r\nPlant with Pot Height: 7 - 10 Inches\r\nFeng Shui Good Luck Plant for Prosperity\r\nAir Purifying Indoor Plant',369,5,7),(11,'Wallstick \'Happy Planets\' Wall Sticker','Screenshot (119).png','Screenshot (120).png','Material: Vinyl, Color: Multicolor\r\nPackage Contents: 1 Wall Sticker\r\nItem Size: 49 cm x 4 cm x 4 cm\r\nMade in India\r\nEasy to Stick and Remove\r\nMatte finish',560,4,9),(12,'Home Centre Fabric Sofabed Brown','Screenshot (121).png','Screenshot (122).png','Product Dimensions: Length (196 cm), Width (98 cm), Height (91 cm)\r\nPrimary Material: Eucalyptus, Upholstery Material: Polyester\r\nWarranty: 1 year on product\r\nSeating Capacity: Three seat\r\nAssembly Required: The product requires carpenter assembly and will be provided by the seller\r\nStyle: Contemporary, seat filling : Foam and fibre',22000,6,0),(13,'Wens \'Colorful Hues Buddha\' Wall Painting','Screenshot (123).png','Screenshot (124).png','Material: MDF, Color: Multicolor\r\nPackage Contents: 1 MDF Painting\r\nItem Size: 50.8 cm x 35.5 cm x 1.2 cm\r\nThe art arrive ready to hang with pre installed brackets for simple installation, it is a best gift for marriage anniversary, wedding gift, birthday etc\r\nThis beautifully designed painting is a wall-mounting which give perfect and elegant look to your home, this painting will mesmerize the guests and give royal look to your home\r\nSpecial lamination on painting for long lasting color freshness, beautiful uv textured painting give 3d or embossed look and covered with unique background to enhance the look of wall art\r\nPackaging: Thermocoal die cut with box, providing you keep your wall art free of dust, moisture and direct sunlight, it will last for many years',1400,9,4);
/*!40000 ALTER TABLE `backend_app_productdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_roledetails`
--

DROP TABLE IF EXISTS `backend_app_roledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_roledetails` (
  `user_ptr_id` int(11) NOT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` longtext,
  `verify_link` varchar(255) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `image` varchar(255),
  PRIMARY KEY (`user_ptr_id`),
  KEY `backend_app_roledeta_role_id_cb731b33_fk_backend_a` (`role_id`),
  CONSTRAINT `backend_app_roledeta_role_id_cb731b33_fk_backend_a` FOREIGN KEY (`role_id`) REFERENCES `backend_app_userrole` (`role_id`),
  CONSTRAINT `backend_app_roledetails_user_ptr_id_2d22a55b_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_roledetails`
--

LOCK TABLES `backend_app_roledetails` WRITE;
/*!40000 ALTER TABLE `backend_app_roledetails` DISABLE KEYS */;
INSERT INTO `backend_app_roledetails` VALUES (5,9803836361,'L3/20\r\nSultanwind road\r\nDashmesh colony, near old octroi post, Amritsar','',2,'profileimg-big.jpg'),(6,9090909096,'Jagadhri, Haryana','',1,'team2.jpg'),(9,9872117065,'L3/20\r\nSultanwind road\r\nDashmesh colony, near old octroi post','',3,'team1.jpg'),(10,9872100601,'2335, sector 23C, Jan Marg, Chandigarh','pbkdf2_sha256$180000$aIrENa23BR6I$krpYVjBsrsAJhygfhHmb8pFJhbgwrHPtWnifE2Z7Qx4=',3,'te3.jpg'),(11,8146748596,'2247, Dakshin Marg, Chandigarh','',2,'clem-onojeghuo-3.jpg'),(12,9815451400,'106, Mahavir\'s Fair Oaks, Chennai, Tamil Nadu','',3,'mike.jpg'),(13,9872111546,'Girls hostel no. 3, Punjab university, Sector 14, Chandigarh','',2,'people2.jpg');
/*!40000 ALTER TABLE `backend_app_roledetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_sales`
--

DROP TABLE IF EXISTS `backend_app_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_sales` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_email` varchar(255) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `order_date` date,
  `invoice` bigint(20),
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_sales`
--

LOCK TABLES `backend_app_sales` WRITE;
/*!40000 ALTER TABLE `backend_app_sales` DISABLE KEYS */;
INSERT INTO `backend_app_sales` VALUES (1,'harjotsingh.virdi@gmail.com',1,'Furny Apollo Chair',2300,1,2300,'g3.jpg','2020-06-06',2),(2,'harmanpreetkaurvirdi6@gmail.com',3,'Print Ocean Wall Sign',500,1,500,'Screenshot (102).png','2020-06-07',3),(3,'harmanpreetkaurvirdi6@gmail.com',6,'NAOE Hanging Planter Made of Bamboo',450,2,900,'Screenshot (106).png','2020-06-07',3),(4,'harmanpreetkaurvirdi6@gmail.com',4,'Classic Shoppe Iron Kitchen Tissue Paper roll Holder',199,1,199,'Screenshot (104).png','2020-06-07',4),(5,'kparamjeet624@gmail.com',7,'Golden Bird Wall Bracket Hang',450,2,900,'Screenshot (108).png','2020-06-07',5),(6,'kparamjeet624@gmail.com',2,'Basics Premium Chair',1700,1,1700,'blog3.jpg','2020-06-08',5),(7,'harjotsingh.virdi@gmail.com',2,'Basics Premium Chair',1700,1,1700,'blog3.jpg','2020-06-08',6),(8,'harjotsingh.virdi@gmail.com',4,'Classic Shoppe Iron Kitchen Tissue Paper roll Holder',199,2,398,'Screenshot (104).png','2020-06-08',7),(9,'harjotsingh.virdi@gmail.com',13,'Wens \'Colorful Hues Buddha\' Wall Painting',1400,1,1400,'Screenshot (123).png','2020-06-13',8),(10,'harjotsingh.virdi@gmail.com',12,'Home Centre Fabric Sofabed Brown',22000,1,22000,'Screenshot (121).png','2020-06-13',8),(11,'harmanpreetkaurvirdi6@gmail.com',11,'Wallstick \'Happy Planets\' Wall Sticker',560,1,560,'Screenshot (119).png','2020-06-14',9),(12,'harmanpreetkaurvirdi6@gmail.com',12,'Home Centre Fabric Sofabed Brown',22000,1,22000,'Screenshot (121).png','2020-06-14',10),(13,'kparamjeet624@gmail.com',5,'Beautiful Vase',1100,1,1100,'blog2.jpg','2020-06-14',12);
/*!40000 ALTER TABLE `backend_app_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_temporarycart`
--

DROP TABLE IF EXISTS `backend_app_temporarycart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_temporarycart` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` bigint(20) DEFAULT NULL,
  `image` varchar(255),
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_temporarycart`
--

LOCK TABLES `backend_app_temporarycart` WRITE;
/*!40000 ALTER TABLE `backend_app_temporarycart` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_app_temporarycart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_app_userrole`
--

DROP TABLE IF EXISTS `backend_app_userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_app_userrole` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_name` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_app_userrole`
--

LOCK TABLES `backend_app_userrole` WRITE;
/*!40000 ALTER TABLE `backend_app_userrole` DISABLE KEYS */;
INSERT INTO `backend_app_userrole` VALUES (1,'admin'),(3,'professional'),(2,'user');
/*!40000 ALTER TABLE `backend_app_userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-04-25 08:01:12.138219','1','UserRole object (1)',1,'[{\"added\": {}}]',7,1),(2,'2020-04-25 08:01:35.044014','1','UserRole object (1)',2,'[{\"changed\": {\"fields\": [\"Role name\"]}}]',7,1),(3,'2020-05-01 07:07:35.375423','2','user',1,'[{\"added\": {}}]',7,1),(4,'2020-05-01 07:07:43.502740','3','professional',1,'[{\"added\": {}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(10,'backend_app','categories'),(17,'backend_app','invoicetable'),(11,'backend_app','productdetails'),(8,'backend_app','roledetail'),(9,'backend_app','roledetails'),(18,'backend_app','sales'),(14,'backend_app','temporarycart'),(7,'backend_app','userrole'),(5,'contenttypes','contenttype'),(16,'ipn','paypalipn'),(12,'professionals','projects'),(6,'sessions','session'),(13,'users','questionnaire'),(15,'users','reviews');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-25 07:28:05.723747'),(2,'auth','0001_initial','2020-04-25 07:28:10.287717'),(3,'admin','0001_initial','2020-04-25 07:28:37.110712'),(4,'admin','0002_logentry_remove_auto_add','2020-04-25 07:28:46.735409'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-25 07:28:46.895312'),(6,'contenttypes','0002_remove_content_type_name','2020-04-25 07:28:51.606175'),(7,'auth','0002_alter_permission_name_max_length','2020-04-25 07:28:54.411289'),(8,'auth','0003_alter_user_email_max_length','2020-04-25 07:28:54.800956'),(9,'auth','0004_alter_user_username_opts','2020-04-25 07:28:55.312175'),(10,'auth','0005_alter_user_last_login_null','2020-04-25 07:29:00.394567'),(11,'auth','0006_require_contenttypes_0002','2020-04-25 07:29:00.790957'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-25 07:29:00.921063'),(13,'auth','0008_alter_user_username_max_length','2020-04-25 07:29:03.527773'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-25 07:29:05.785462'),(15,'auth','0010_alter_group_name_max_length','2020-04-25 07:29:06.080848'),(16,'auth','0011_update_proxy_permissions','2020-04-25 07:29:06.195499'),(17,'sessions','0001_initial','2020-04-25 07:29:07.462285'),(18,'backend_app','0001_initial','2020-04-25 07:43:55.213134'),(19,'backend_app','0002_roledetail','2020-05-01 07:25:43.298557'),(20,'backend_app','0003_auto_20200519_1115','2020-05-19 05:45:31.260930'),(21,'backend_app','0004_roledetails_image','2020-05-19 05:59:06.487207'),(22,'backend_app','0005_categories','2020-05-26 15:22:06.929597'),(23,'backend_app','0006_auto_20200527_2211','2020-05-27 16:41:55.334482'),(24,'backend_app','0007_auto_20200528_1635','2020-05-28 11:05:50.466720'),(25,'backend_app','0008_auto_20200528_1726','2020-05-28 11:56:26.273696'),(26,'backend_app','0009_auto_20200528_1727','2020-05-28 11:57:08.240834'),(27,'professionals','0001_initial','2020-05-29 11:23:38.619854'),(28,'backend_app','0010_categories_image','2020-05-30 06:31:11.426613'),(29,'professionals','0002_projects_name','2020-05-30 09:43:55.973698'),(30,'users','0001_initial','2020-06-01 07:01:49.651849'),(31,'backend_app','0011_auto_20200601_1656','2020-06-01 11:27:07.747599'),(32,'ipn','0001_initial','2020-06-06 07:59:11.353658'),(33,'ipn','0002_paypalipn_mp_id','2020-06-06 07:59:13.009918'),(34,'ipn','0003_auto_20141117_1647','2020-06-06 07:59:19.463184'),(35,'ipn','0004_auto_20150612_1826','2020-06-06 08:00:24.567522'),(36,'ipn','0005_auto_20151217_0948','2020-06-06 08:00:25.645636'),(37,'ipn','0006_auto_20160108_1112','2020-06-06 08:00:32.145752'),(38,'ipn','0007_auto_20160219_1135','2020-06-06 08:00:32.317578'),(39,'ipn','0008_auto_20181128_1032','2020-06-06 08:00:32.411330'),(40,'users','0002_reviews','2020-06-06 08:00:33.239461'),(41,'backend_app','0012_auto_20200608_1519','2020-06-08 09:49:58.555154'),(42,'backend_app','0013_temporarycart_image','2020-06-08 12:50:50.728228'),(43,'backend_app','0014_invoicetable_sales','2020-06-09 11:59:34.741476'),(44,'backend_app','0015_invoicetable_token','2020-06-09 12:17:25.333662'),(45,'backend_app','0016_auto_20200610_1656','2020-06-10 11:26:22.412000'),(46,'backend_app','0017_sales_order_date','2020-06-12 19:12:07.176251'),(47,'backend_app','0018_sales_invoice','2020-06-14 13:48:58.255539');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3t3a3ul9iaw2nvjza426fl28u27xnpgv','OTk1NWRiMjZhMTgyYjA2YzdiNDgxOWJhMmRkYTZiMGUyYjVlMDM4Njp7ImFkbWluX2V4aXN0cyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjExIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NGU3MTc2ZGVhOWUyNGM2N2Y2NGYzNDgzMGE5YmYyNmJmMjY5Zjk1IiwiaW1hZ2UiOiJjbGVtLW9ub2plZ2h1by0zLmpwZyIsInJvbGUiOiJ1c2VyIiwibG9nZ2VkX2luIjp0cnVlLCJ0b2tlbiI6InBia2RmMl9zaGEyNTYkMTgwMDAwJEZiQkFib3Y1MnRUcCRRdGFBdFpHcEZvS0ZHQmFVS2FnRFVVRDZaaDlQRFFQZ2pZQkQvbThmdz0iLCJpbnZvaWNlIjoxMn0=','2020-06-28 13:51:37.490877'),('4skfqdia2u0trvic3xxoy9mza4njw2ly','M2NiMGQ2MzVjNTllM2E3OTM1NzgyZGJhMDJhMGU3OTk0ZDlkY2I0YTp7ImFkbWluX2V4aXN0cyI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjMjc1ZjZmZGJkNDgwY2IwNjhkOTNjN2Y0ZGE5YWJmMWY5NmY4YTkiLCJpbWFnZSI6InRlYW0xLmpwZyIsInJvbGUiOiJwcm9mZXNzaW9uYWwiLCJsb2dnZWRfaW4iOnRydWV9','2020-06-23 18:27:31.192686');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn`
--

DROP TABLE IF EXISTS `paypal_ipn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business` varchar(127) NOT NULL,
  `charset` varchar(255) NOT NULL,
  `custom` varchar(256) NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) NOT NULL,
  `receiver_email` varchar(254) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `residence_country` varchar(2) NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `txn_type` varchar(255) NOT NULL,
  `verify_sign` varchar(255) NOT NULL,
  `address_country` varchar(64) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_country_code` varchar(64) NOT NULL,
  `address_name` varchar(128) NOT NULL,
  `address_state` varchar(40) NOT NULL,
  `address_status` varchar(255) NOT NULL,
  `address_street` varchar(200) NOT NULL,
  `address_zip` varchar(20) NOT NULL,
  `contact_phone` varchar(20) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `payer_business_name` varchar(127) NOT NULL,
  `payer_email` varchar(127) NOT NULL,
  `payer_id` varchar(13) NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) NOT NULL,
  `auth_id` varchar(19) NOT NULL,
  `auth_status` varchar(255) NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) NOT NULL,
  `item_name` varchar(127) NOT NULL,
  `item_number` varchar(127) NOT NULL,
  `mc_currency` varchar(32) NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(255) NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) NOT NULL,
  `option_name2` varchar(64) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `pending_reason` varchar(255) NOT NULL,
  `protection_eligibility` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(255) NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(255) NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(255) NOT NULL,
  `auction_buyer_id` varchar(64) NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(255) NOT NULL,
  `period_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` varchar(255) NOT NULL,
  `profile_status` varchar(255) NOT NULL,
  `recurring_payment_id` varchar(255) NOT NULL,
  `rp_invoice_id` varchar(127) NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `period1` varchar(255) NOT NULL,
  `period2` varchar(255) NOT NULL,
  `period3` varchar(255) NOT NULL,
  `reattempt` varchar(1) NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) NOT NULL,
  `username` varchar(64) NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(255) NOT NULL,
  `case_type` varchar(255) NOT NULL,
  `receipt_id` varchar(255) NOT NULL,
  `currency_code` varchar(32) NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(256) NOT NULL,
  `ipaddress` char(39) DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) NOT NULL,
  `flag_info` longtext NOT NULL,
  `query` longtext NOT NULL,
  `response` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) DEFAULT NULL,
  `mp_id` varchar(128) DEFAULT NULL,
  `option_selection1` varchar(200) NOT NULL,
  `option_selection2` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn`
--

LOCK TABLES `paypal_ipn` WRITE;
/*!40000 ALTER TABLE `paypal_ipn` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professionals_projects`
--

DROP TABLE IF EXISTS `professionals_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professionals_projects` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255),
  PRIMARY KEY (`p_id`),
  KEY `professionals_projec_category_id_a158b3b8_fk_backend_a` (`category_id`),
  CONSTRAINT `professionals_projec_category_id_a158b3b8_fk_backend_a` FOREIGN KEY (`category_id`) REFERENCES `backend_app_categories` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professionals_projects`
--

LOCK TABLES `professionals_projects` WRITE;
/*!40000 ALTER TABLE `professionals_projects` DISABLE KEYS */;
INSERT INTO `professionals_projects` VALUES (6,'Minimalist Bedroom Decor','Dark Theme used.','bed1.jpg','singhjagatdeep95@gmail.com',6,'JagatdeepSingh'),(7,'Lobby Design to Inspire','A very modern lobby interior with interesting use of lights!','lobby1.jpeg','singhjagatdeep95@gmail.com',9,'JagatdeepSingh'),(8,'Kitchen Decor ','White Theme','kitchen3.jpeg','singhjagatdeep95@gmail.com',1,'JagatdeepSingh'),(9,'Living area Modern decor','Luxury + Aesthetics + Comfort + Modern design','living2.jpg','singhjagatdeep95@gmail.com',2,'JagatdeepSingh'),(10,'Bathroom Accessories','One of the best bathroom interiors you\'ll ever come across!','bathroom1.jpg','singhjagatdeep95@gmail.com',NULL,'JagatdeepSingh'),(11,'Kid\'s Room','A room which is going to be the happy place of your child!','kids1.jpg','singhjagatdeep95@gmail.com',4,'JagatdeepSingh'),(12,'Office Decor','Dark brown interiors, contemporary design!','office.jpg','singhjagatdeep95@gmail.com',5,'JagatdeepSingh'),(13,'Drawing Room Dream','One of my finest work of interior design in my career! ','drawing3.jpg','singhjagatdeep95@gmail.com',10,'JagatdeepSingh'),(14,'Balcony Decor','White-Blue contrast - always makes everyone happy.','balcony.jpg','singhjagatdeep95@gmail.com',7,'JagatdeepSingh'),(15,'Kids Place','This is the best one!','kids3.jpg','gwaliormachine.tools@gmail.com',4,'AradhnaSingh'),(17,'Beautiful Chair',' uhuyvc','kids-room.jpg','harmanpreetvirdi1234@gmail.com',4,'HarmanpreetVirdi');
/*!40000 ALTER TABLE `professionals_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_questionnaire`
--

DROP TABLE IF EXISTS `users_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_questionnaire` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `p_email` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_questionnaire`
--

LOCK TABLES `users_questionnaire` WRITE;
/*!40000 ALTER TABLE `users_questionnaire` DISABLE KEYS */;
INSERT INTO `users_questionnaire` VALUES (1,'What are the best interior designs for kid\'s room? What should be the color theme?','gwaliormachine.tools@gmail.com','kparamjeet624@gmail.com','',0),(2,'What should be the color theme of one\'s room?','gwaliormachine.tools@gmail.com','kparamjeet624@gmail.com','Hi, it really depends upon what colors you like.',1),(3,'Can you guide me in designing my living area?','harmanpreetvirdi1234@gmail.com','harjotsingh.virdi@gmail.com','',0),(4,'Hey I wanted to know what contemporary color options you suggest which add positivity to the ambience and look minimalist at the same time?','harmanpreetvirdi1234@gmail.com','harmanpreetkaurvirdi6@gmail.com','White and yellow are the best, trust me!',1),(5,'How much do you charge?','singhjagatdeep95@gmail.com','harjotsingh.virdi@gmail.com','',0),(6,'Can you design my living area?\r\n','singhjagatdeep95@gmail.com','harmanpreetkaurvirdi6@gmail.com','',0);
/*!40000 ALTER TABLE `users_questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_reviews`
--

DROP TABLE IF EXISTS `users_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` decimal(2,1) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `p_email` varchar(255) DEFAULT NULL,
  `u_email` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_reviews`
--

LOCK TABLES `users_reviews` WRITE;
/*!40000 ALTER TABLE `users_reviews` DISABLE KEYS */;
INSERT INTO `users_reviews` VALUES (1,4.5,'2020-06-06','harmanpreetvirdi1234@gmail.com','harjotsingh.virdi@gmail.com','The Best interior designer who helped me transform my house into a beautiful place to live in. She\'s very helping and anybody who wants some help in interior design, I definitely recommend her!'),(2,5.0,'2020-06-10','singhjagatdeep95@gmail.com','kparamjeet624@gmail.com','Wanted someone to design cute interiors for my kid\'s room! Jagatdeep did a fantastic job! Really impressed. '),(3,5.0,'2020-06-10','harmanpreetvirdi1234@gmail.com','kparamjeet624@gmail.com','Really impressed by her work! Would ask you all to definitely consult her. Her living area interiors projects are the best.'),(4,4.0,'2020-06-10','gwaliormachine.tools@gmail.com','harjotsingh.virdi@gmail.com','Great work done, Aradhna! Will again consult you once I shift to my new house :)'),(5,4.5,'2020-06-10','singhjagatdeep95@gmail.com','harjotsingh.virdi@gmail.com','Future of the Contemporary Interior design! You\'re the best in the business.'),(6,5.0,'2020-06-10','harmanpreetvirdi1234@gmail.com','harmanpreetkaurvirdi6@gmail.com','She\'s the best people!!! Do consult her for classic interiors <3'),(7,3.5,'2020-06-10','singhjagatdeep95@gmail.com','harmanpreetkaurvirdi6@gmail.com','Amazingly talent + Super Intelligent + Great professional advice :)');
/*!40000 ALTER TABLE `users_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-18 16:43:47
