-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: localhost    Database: nclose_assessment
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add vendor',7,'add_vendor'),(26,'Can change vendor',7,'change_vendor'),(27,'Can delete vendor',7,'delete_vendor'),(28,'Can view vendor',7,'view_vendor'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add client',9,'add_client'),(34,'Can change client',9,'change_client'),(35,'Can delete client',9,'delete_client'),(36,'Can view client',9,'view_client');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$gYt2pdPebtAENgYAnBzvLs$Gy0RVW6kMXEpCPO6CYs9eBacO4Y+Wj3Lww+QzPbxiww=','2024-11-03 20:02:08.241670',1,'admin','','','admin@test.com',1,1,'2024-11-03 20:01:56.079114'),(2,'pbkdf2_sha256$870000$te6yCBbGqyJwj4ebFSBgt5$mNBnEchcqijHIXvMnnSKZbiCG9g/PAMmo0jfcDH63cA=',NULL,0,'bill.beau','Bill','Beau','',1,1,'2024-11-04 06:37:09.000000'),(3,'pbkdf2_sha256$870000$huJslZPKqlUHBGsO4xsZ29$1h/ko0M88aB8oB3HKMyGKuJ/zMBm1CrC3n4wwRmpWFk=',NULL,0,'bruce.banter','Bruce','Banter','',1,1,'2024-11-04 06:38:19.000000'),(4,'pbkdf2_sha256$870000$bA6XzQwGAz7Arbkl2JyUIb$3mdmLSMSix9LhGmUdjhqNf3bBOJn1dR11K1YMmV5cz8=',NULL,0,'elan.minsk','Elan','Minsk','',1,1,'2024-11-04 06:38:51.000000'),(5,'pbkdf2_sha256$870000$kdrXbP4ly2OPvikhwfM1JH$oiItyBx5aT4LCvAeCVB1PB5r7s7rRJaUVVA8YR3XnOA=',NULL,0,'scarlett.joanhands','Scarlett','Joanhands','',1,1,'2024-11-04 06:39:20.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
-- Table structure for table `clients_client`
--

DROP TABLE IF EXISTS `clients_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_client_user_id_57c8fc4a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `clients_client_user_id_57c8fc4a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_client`
--

LOCK TABLES `clients_client` WRITE;
/*!40000 ALTER TABLE `clients_client` DISABLE KEYS */;
INSERT INTO `clients_client` VALUES (1,'Brad Pitfall',5),(2,'Tom Cruiseliner',2),(3,'Oprah Windfree',2),(4,'George Clue-less',3),(5,'Angelina Solarie',4),(6,'Morgan Freedman',5),(7,'Jennifer Lawerkin',2),(8,'Leonardo DiCapper',5),(9,'Natalie Portwind',5);
/*!40000 ALTER TABLE `clients_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-11-03 22:18:14.275757','1','Vendor object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-11-03 22:19:14.454274','2','Vendor object (2)',1,'[{\"added\": {}}]',7,1),(3,'2024-11-03 22:20:08.944950','3','Vendor object (3)',1,'[{\"added\": {}}]',7,1),(4,'2024-11-03 22:21:07.599123','1','Product object (1)',1,'[{\"added\": {}}]',8,1),(5,'2024-11-03 22:22:28.113146','2','Product object (2)',1,'[{\"added\": {}}]',8,1),(6,'2024-11-03 22:22:45.764053','3','Product object (3)',1,'[{\"added\": {}}]',8,1),(7,'2024-11-03 22:23:39.796494','4','Product object (4)',1,'[{\"added\": {}}]',8,1),(8,'2024-11-03 22:23:59.147246','5','Product object (5)',1,'[{\"added\": {}}]',8,1),(9,'2024-11-03 22:24:14.618482','6','Product object (6)',1,'[{\"added\": {}}]',8,1),(10,'2024-11-03 22:24:45.651054','7','Product object (7)',1,'[{\"added\": {}}]',8,1),(11,'2024-11-03 22:25:00.729442','8','Product object (8)',1,'[{\"added\": {}}]',8,1),(12,'2024-11-03 22:25:22.880648','9','Product object (9)',1,'[{\"added\": {}}]',8,1),(13,'2024-11-04 06:37:10.342461','2','bill.beau',1,'[{\"added\": {}}]',4,1),(14,'2024-11-04 06:37:40.920312','2','bill.beau',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]',4,1),(15,'2024-11-04 06:38:19.661393','3','bruce.banter',1,'[{\"added\": {}}]',4,1),(16,'2024-11-04 06:38:32.961623','3','bruce.banter',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]',4,1),(17,'2024-11-04 06:38:51.649753','4','elan.minsk',1,'[{\"added\": {}}]',4,1),(18,'2024-11-04 06:39:04.010850','4','elan.minsk',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]',4,1),(19,'2024-11-04 06:39:20.344709','5','scarlett.joanhands',1,'[{\"added\": {}}]',4,1),(20,'2024-11-04 06:39:39.498049','5','scarlett.joanhands',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Staff status\"]}}]',4,1),(21,'2024-11-04 06:40:10.429145','1','Client object (1)',1,'[{\"added\": {}}]',9,1),(22,'2024-11-04 06:58:34.598990','3','KindaCold',2,'[{\"changed\": {\"fields\": [\"Users\"]}}]',7,1),(23,'2024-11-04 06:58:44.735841','2','K-Matrix',2,'[{\"changed\": {\"fields\": [\"Users\"]}}]',7,1),(24,'2024-11-04 06:58:56.268038','1','Beezos Boxes',2,'[{\"changed\": {\"fields\": [\"Users\"]}}]',7,1),(25,'2024-11-04 06:59:07.875830','1','Beezos Boxes',2,'[{\"changed\": {\"fields\": [\"Users\"]}}]',7,1),(26,'2024-11-04 06:59:29.783035','1','Beezos Boxes',2,'[{\"changed\": {\"fields\": [\"Users\"]}}]',7,1),(27,'2024-11-04 07:00:00.401264','2','Tom Cruiseliner',1,'[{\"added\": {}}]',9,1),(28,'2024-11-04 07:00:12.798707','3','Oprah Windfree',1,'[{\"added\": {}}]',9,1),(29,'2024-11-04 07:00:28.678179','4','George Clue-less',1,'[{\"added\": {}}]',9,1),(30,'2024-11-04 07:00:43.455936','5','Angelina Solarie',1,'[{\"added\": {}}]',9,1),(31,'2024-11-04 07:00:56.836201','6','Morgan Freedman',1,'[{\"added\": {}}]',9,1),(32,'2024-11-04 07:01:10.999215','7','Jennifer Lawerkin',1,'[{\"added\": {}}]',9,1),(33,'2024-11-04 07:01:23.330080','8','Leonardo DiCapper',1,'[{\"added\": {}}]',9,1),(34,'2024-11-04 07:01:30.833454','9','Natalie Portwind',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'clients','client'),(5,'contenttypes','contenttype'),(10,'product','product'),(8,'products','product'),(6,'sessions','session'),(7,'vendors','vendor');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-03 19:56:01.958524'),(2,'auth','0001_initial','2024-11-03 19:57:14.622109'),(3,'admin','0001_initial','2024-11-03 19:57:29.998864'),(4,'admin','0002_logentry_remove_auto_add','2024-11-03 19:57:30.568106'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-03 19:57:30.942475'),(6,'contenttypes','0002_remove_content_type_name','2024-11-03 19:57:41.208897'),(7,'auth','0002_alter_permission_name_max_length','2024-11-03 19:57:47.586838'),(8,'auth','0003_alter_user_email_max_length','2024-11-03 19:57:48.575608'),(9,'auth','0004_alter_user_username_opts','2024-11-03 19:57:48.987133'),(10,'auth','0005_alter_user_last_login_null','2024-11-03 19:57:54.865385'),(11,'auth','0006_require_contenttypes_0002','2024-11-03 19:57:55.304500'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-03 19:57:55.751104'),(13,'auth','0008_alter_user_username_max_length','2024-11-03 19:58:02.359308'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-03 19:58:08.700831'),(15,'auth','0010_alter_group_name_max_length','2024-11-03 19:58:09.750184'),(16,'auth','0011_update_proxy_permissions','2024-11-03 19:58:10.207609'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-03 19:58:17.027663'),(18,'sessions','0001_initial','2024-11-03 19:58:21.183130'),(19,'clients','0001_initial','2024-11-03 20:10:43.182058'),(20,'vendors','0001_initial','2024-11-03 20:10:45.895916'),(21,'products','0001_initial','2024-11-03 20:10:55.230768'),(22,'vendors','0002_vendor_users_alter_vendor_description','2024-11-04 06:58:09.948041');
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
INSERT INTO `django_session` VALUES ('nncasfjmc246q34dmmx9x6gbuldd5d2l','.eJxVjDkOwjAQRe_iGlleZrxQ0nMGa7zhAHKkOKkQd4dIKaD9773_YoG2tYVtlCVMmZ2ZZKffLVJ6lL6DfKd-m3ma-7pMke8KP-jg1zmX5-Vw_w4ajfatjVZegjZUVC4QsfqqQGJMriJCEki5khBKO7DeaeU8WOvJmmoIa9bs_QHKATco:1t7gnZ:QUs4_EL3j7SBKkGQMTper5hIDX77uA17X91Ga-_HI8Y','2024-11-17 20:02:09.939152');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `vendor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_product_vendor_id_4c43277c_fk_vendors_vendor_id` (`vendor_id`),
  CONSTRAINT `products_product_vendor_id_4c43277c_fk_vendors_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendors_vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (1,'Primeish Membership',79.99,1),(2,'Big Box Bundle',100.00,1),(3,'Just-In-Time Tape',150.00,1),(4,'AlmosFreezer',500.00,3),(5,'Fridge of Mystery',750.00,3),(6,'Thawed Thrills Ice Tray',20.00,3),(7,'Reality Bender Mirror',2000.00,2),(8,'Déjà Shoe',2500.00,2),(9,'Maybe Mattress',2999.99,2);
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_vendor`
--

DROP TABLE IF EXISTS `vendors_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_vendor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_vendor`
--

LOCK TABLES `vendors_vendor` WRITE;
/*!40000 ALTER TABLE `vendors_vendor` DISABLE KEYS */;
INSERT INTO `vendors_vendor` VALUES (1,'Beezos Boxes','A \"famous\" place to get all your delivery needs met, for a small fee and a very large box.'),(2,'K-Matrix','Everything you need, but you\'ll feel like you\'re in an alternate reality.'),(3,'KindaCold','Appliances and gadgets to keep things almost frozen.');
/*!40000 ALTER TABLE `vendors_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors_vendor_users`
--

DROP TABLE IF EXISTS `vendors_vendor_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors_vendor_users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_vendor_users_vendor_id_user_id_72cb1456_uniq` (`vendor_id`,`user_id`),
  KEY `vendors_vendor_users_user_id_9c37b6d1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `vendors_vendor_users_user_id_9c37b6d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `vendors_vendor_users_vendor_id_4a8adeb2_fk_vendors_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendors_vendor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors_vendor_users`
--

LOCK TABLES `vendors_vendor_users` WRITE;
/*!40000 ALTER TABLE `vendors_vendor_users` DISABLE KEYS */;
INSERT INTO `vendors_vendor_users` VALUES (8,1,2),(5,1,3),(6,1,4),(7,1,5),(2,2,3),(3,2,4),(1,3,2);
/*!40000 ALTER TABLE `vendors_vendor_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-04 10:20:35
