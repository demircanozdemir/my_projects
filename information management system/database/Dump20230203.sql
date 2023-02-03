-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: magaza_db2
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add urunler',1,'add_urunler'),(2,'Can change urunler',1,'change_urunler'),(3,'Can delete urunler',1,'delete_urunler'),(4,'Can view urunler',1,'view_urunler'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add calisanlar',8,'add_calisanlar'),(30,'Can change calisanlar',8,'change_calisanlar'),(31,'Can delete calisanlar',8,'delete_calisanlar'),(32,'Can view calisanlar',8,'view_calisanlar'),(33,'Can add musteriler',9,'add_musteriler'),(34,'Can change musteriler',9,'change_musteriler'),(35,'Can delete musteriler',9,'delete_musteriler'),(36,'Can view musteriler',9,'view_musteriler'),(37,'Can add tedarikciler',10,'add_tedarikciler'),(38,'Can change tedarikciler',10,'change_tedarikciler'),(39,'Can delete tedarikciler',10,'delete_tedarikciler'),(40,'Can view tedarikciler',10,'view_tedarikciler');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$2wjtBigyRsAuz2QjPM1UOE$WvsvRK617Us1mOKCEskoM67p5GZh+7oRJwA1NiEomDA=','2023-02-03 19:41:18.212028',1,'demir','','','canvector@gmail.com',1,1,'2023-01-08 20:59:13.844583');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-01-08 21:00:29.598436','1','Urunler object (1)',1,'[{\"added\": {}}]',1,1),(2,'2023-01-08 22:36:55.308591','16457970438','Calisanlar object (16457970438)',1,'[{\"added\": {}}]',8,1),(3,'2023-01-08 23:08:52.466365','1','Musteriler object (1)',1,'[{\"added\": {}}]',9,1),(4,'2023-01-08 23:09:43.898638','2','Musteriler object (2)',1,'[{\"added\": {}}]',9,1),(5,'2023-01-08 23:26:52.957903','3','Musteriler object (3)',1,'[{\"added\": {}}]',9,1),(6,'2023-01-09 15:25:18.182788','4','Musteriler object (4)',1,'[{\"added\": {}}]',9,1),(7,'2023-01-09 15:31:58.935154','5','Musteriler object (5)',1,'[{\"added\": {}}]',9,1),(8,'2023-01-09 15:37:53.293955','5','Musteriler object (5)',2,'[{\"changed\": {\"fields\": [\"\\u0130leti\\u015fim No\"]}}]',9,1),(9,'2023-01-09 15:38:48.198939','5','Musteriler object (5)',2,'[{\"changed\": {\"fields\": [\"\\u0130leti\\u015fim No\"]}}]',9,1),(10,'2023-01-09 15:39:37.611158','5','Musteriler object (5)',3,'',9,1),(11,'2023-01-09 18:48:00.626721','1','Urunler object (1)',1,'[{\"added\": {}}]',1,1),(12,'2023-01-09 18:48:17.136179','2','Urunler object (2)',1,'[{\"added\": {}}]',1,1),(13,'2023-01-09 18:50:42.428149','3','Urunler object (3)',1,'[{\"added\": {}}]',1,1),(14,'2023-01-09 18:52:11.238868','4','Urunler object (4)',1,'[{\"added\": {}}]',1,1),(15,'2023-01-09 19:15:23.508511','99999','Calisanlar object (99999)',1,'[{\"added\": {}}]',8,1),(16,'2023-01-09 19:16:40.952137','100000','Calisanlar object (100000)',1,'[{\"added\": {}}]',8,1),(17,'2023-01-09 19:46:34.922719','6','Musteriler object (6)',1,'[{\"added\": {}}]',9,1),(18,'2023-01-09 19:47:35.600994','1','Tedarikciler object (1)',1,'[{\"added\": {}}]',10,1),(19,'2023-01-09 19:48:03.215339','1','Tedarikciler object (1)',2,'[{\"changed\": {\"fields\": [\"Adres\"]}}]',10,1),(20,'2023-01-10 19:21:55.193690','100000','Calisanlar object (100000)',2,'[{\"changed\": {\"fields\": [\"\\u0130sim Soyisim\"]}}]',8,1),(21,'2023-01-10 19:54:08.528675','1','Urunler object (1)',1,'[{\"added\": {}}]',1,1),(22,'2023-01-10 19:54:48.496179','1','Urunler object (1)',3,'',1,1),(23,'2023-01-10 19:56:44.340021','2','Urunler object (2)',1,'[{\"added\": {}}]',1,1),(24,'2023-01-10 19:57:08.096384','4','Musteriler object (4)',3,'',9,1),(25,'2023-01-10 19:57:31.794519','1','Musteriler object (1)',2,'[{\"changed\": {\"fields\": [\"M\\u00fc\\u015fteri Ad\\u0131\"]}}]',9,1),(26,'2023-01-10 19:59:35.477834','2','Urunler object (2)',3,'',1,1),(27,'2023-01-10 20:01:28.345544','3','Urunler object (3)',1,'[{\"added\": {}}]',1,1),(28,'2023-01-10 20:01:54.993648','3','Urunler object (3)',2,'[{\"changed\": {\"fields\": [\"Model\"]}}]',1,1),(29,'2023-01-10 20:02:14.417951','3','Urunler object (3)',3,'',1,1),(30,'2023-02-03 19:41:36.029669','4','Urunler object (4)',1,'[{\"added\": {}}]',1,1),(31,'2023-02-03 19:41:55.634071','4','Urunler object (4)',3,'',1,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(8,'pages','calisanlar'),(9,'pages','musteriler'),(10,'pages','tedarikciler'),(1,'pages','urunler'),(7,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-01-08 20:56:23.340712'),(2,'auth','0001_initial','2023-01-08 20:56:24.189043'),(3,'admin','0001_initial','2023-01-08 20:56:24.387387'),(4,'admin','0002_logentry_remove_auto_add','2023-01-08 20:56:24.398380'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-08 20:56:24.408352'),(6,'contenttypes','0002_remove_content_type_name','2023-01-08 20:56:24.538976'),(7,'auth','0002_alter_permission_name_max_length','2023-01-08 20:56:24.698320'),(8,'auth','0003_alter_user_email_max_length','2023-01-08 20:56:24.731064'),(9,'auth','0004_alter_user_username_opts','2023-01-08 20:56:24.742598'),(10,'auth','0005_alter_user_last_login_null','2023-01-08 20:56:24.811899'),(11,'auth','0006_require_contenttypes_0002','2023-01-08 20:56:24.818724'),(12,'auth','0007_alter_validators_add_error_messages','2023-01-08 20:56:24.827804'),(13,'auth','0008_alter_user_username_max_length','2023-01-08 20:56:24.914237'),(14,'auth','0009_alter_user_last_name_max_length','2023-01-08 20:56:24.989796'),(15,'auth','0010_alter_group_name_max_length','2023-01-08 20:56:25.020990'),(16,'auth','0011_update_proxy_permissions','2023-01-08 20:56:25.029881'),(17,'auth','0012_alter_user_first_name_max_length','2023-01-08 20:56:25.108362'),(18,'pages','0001_initial','2023-01-08 20:56:25.139292'),(19,'sessions','0001_initial','2023-01-08 20:56:25.184880'),(20,'pages','0002_calisanlar_alter_urunler_barcode_alter_urunler_brand_and_more','2023-01-08 22:33:04.751336'),(21,'pages','0003_alter_calisanlar_id','2023-01-08 22:36:43.123677'),(22,'pages','0004_calisanlar_score','2023-01-08 22:39:23.476043'),(23,'pages','0005_musteriler','2023-01-08 23:06:43.337913'),(24,'pages','0006_alter_musteriler_customerid','2023-01-08 23:11:50.513450'),(25,'pages','0007_alter_musteriler_date','2023-01-09 15:24:20.227474'),(26,'pages','0008_alter_musteriler_customerid','2023-01-09 15:30:57.193863'),(27,'pages','0009_alter_calisanlar_id_alter_urunler_barcode','2023-01-09 19:09:59.686946'),(28,'pages','0010_alter_urunler_price','2023-01-09 19:09:59.812971'),(29,'pages','0011_delete_urunler','2023-01-09 19:09:59.856845'),(30,'pages','0012_urunler','2023-01-09 19:09:59.914996'),(31,'pages','0013_alter_calisanlar_id','2023-01-09 19:09:59.926298'),(32,'pages','0014_alter_calisanlar_id','2023-01-09 19:10:00.091815'),(33,'pages','0015_alter_calisanlar_telno','2023-01-09 19:14:55.849712'),(34,'pages','0016_tedarikciler','2023-01-09 19:21:10.407044'),(35,'pages','0017_alter_calisanlar_telno_alter_tedarikciler_tel_no','2023-01-09 19:27:36.834325');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `django_session` VALUES ('1oqkw3yfog34axsgujmxzn6xvq0vzg64','.eJxVjMEOwiAQRP-FsyGFQlk8eu83kIVdpWogKe3J-O-2pge9Tea9mZcIuC45rI3nMJE4CyVOv13E9OCyA7pjuVWZalnmKcpdkQdtcqzEz8vh_h1kbHlbe7Somcm4PrKNmhGMgujTtQcEr7fovrB3btDeGEMApLqhs8AWnXh_AOslN2M:1pO1vy:Qc-RBhJNELJ4o6gRl5rC2FBxdh7bek_LBpjUb_kOW6o','2023-02-17 19:41:18.221085'),('593rtv1mhk11jkgv901cvsg58n4cr8h0','.eJxVjMEOwiAQRP-FsyGFQlk8eu83kIVdpWogKe3J-O-2pge9Tea9mZcIuC45rI3nMJE4CyVOv13E9OCyA7pjuVWZalnmKcpdkQdtcqzEz8vh_h1kbHlbe7Somcm4PrKNmhGMgujTtQcEr7fovrB3btDeGEMApLqhs8AWnXh_AOslN2M:1pEvVp:4vg5pzkMzvxhDsAoTC1uhFYR3AW_r2pv74pVVAygKyo','2023-01-23 17:00:41.014075'),('gpgicpj1kc54zgvotyufwrjjx996es9a','.eJxVjMEOwiAQRP-FsyGFQlk8eu83kIVdpWogKe3J-O-2pge9Tea9mZcIuC45rI3nMJE4CyVOv13E9OCyA7pjuVWZalnmKcpdkQdtcqzEz8vh_h1kbHlbe7Somcm4PrKNmhGMgujTtQcEr7fovrB3btDeGEMApLqhs8AWnXh_AOslN2M:1pFKBb:zfTTOjxEesp5ctu8vg1yvxsZuSuP4oiWM2xEcNqLC3c','2023-01-24 19:21:27.700794');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_calisanlar`
--

DROP TABLE IF EXISTS `pages_calisanlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pages_calisanlar` (
  `id` int(11) NOT NULL,
  `telNo` bigint(20) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `adress` varchar(100) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_calisanlar`
--

LOCK TABLES `pages_calisanlar` WRITE;
/*!40000 ALTER TABLE `pages_calisanlar` DISABLE KEYS */;
INSERT INTO `pages_calisanlar` VALUES (99999,2826586888,'candanali@microsoft.live','Kanlıca Sırtları','Ali Candan',10),(100000,2826541465,'eyluleren@yahoo.com','Kanlıca Sırtları','Eren Apak',0);
/*!40000 ALTER TABLE `pages_calisanlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_musteriler`
--

DROP TABLE IF EXISTS `pages_musteriler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pages_musteriler` (
  `date` datetime(6) NOT NULL,
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(45) NOT NULL,
  `telNo` varchar(11) NOT NULL,
  `adress` varchar(100) NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `customerID_UNIQUE` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_musteriler`
--

LOCK TABLES `pages_musteriler` WRITE;
/*!40000 ALTER TABLE `pages_musteriler` DISABLE KEYS */;
INSERT INTO `pages_musteriler` VALUES ('2023-01-10 19:57:31.790560',1,'Ali Necati','02826541465','barbaros mahallesi'),('2023-01-08 23:09:00.000000',2,'barış yılmaz','06543456578','aydoğdu mahallesi'),('2023-01-08 23:26:13.000000',3,'Nihal Kaya','02826674530','Kıvanç Mah.'),('2023-01-09 19:46:34.860122',6,'Soner Şef','05386970241','Küçükkuyu/Çanakkale');
/*!40000 ALTER TABLE `pages_musteriler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_tedarikciler`
--

DROP TABLE IF EXISTS `pages_tedarikciler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pages_tedarikciler` (
  `ted_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(60) NOT NULL,
  `tel_no` bigint(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `adress` varchar(100) NOT NULL,
  PRIMARY KEY (`ted_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_tedarikciler`
--

LOCK TABLES `pages_tedarikciler` WRITE;
/*!40000 ALTER TABLE `pages_tedarikciler` DISABLE KEYS */;
INSERT INTO `pages_tedarikciler` VALUES (1,'GESTAŞ',2826603636,'gestas@gestas.com','İskele Çanakkale/Merkez');
/*!40000 ALTER TABLE `pages_tedarikciler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_urunler`
--

DROP TABLE IF EXISTS `pages_urunler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pages_urunler` (
  `barcode` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) NOT NULL,
  `model` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  PRIMARY KEY (`barcode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_urunler`
--

LOCK TABLES `pages_urunler` WRITE;
/*!40000 ALTER TABLE `pages_urunler` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_urunler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 22:53:26
