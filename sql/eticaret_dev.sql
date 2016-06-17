-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sof_dev
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_user_id` (`user_id`),
  KEY `index_addresses_on_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Atakum','Samsun','Kurupelit','5500','123456789',2,0,'2016-06-01 10:36:43','2016-06-01 10:36:43'),(2,'İlkadım','Samsun','Liman','5500','123456789',1,0,'2016-06-01 12:28:32','2016-06-01 12:28:32');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line_items_count` int(11) DEFAULT '0',
  `shipment_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_carts_on_shipment_id` (`shipment_id`),
  KEY `index_carts_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,0,NULL,'2016-05-28 18:33:18','2016-05-28 18:33:18'),(2,0,NULL,'2016-05-29 16:06:57','2016-05-29 16:06:57'),(3,0,NULL,'2016-05-29 16:30:56','2016-05-29 16:30:56'),(4,1,NULL,'2016-05-30 14:30:02','2016-05-30 14:30:18'),(5,0,NULL,'2016-05-31 17:06:55','2016-05-31 17:06:55'),(6,0,NULL,'2016-05-31 17:06:56','2016-05-31 17:06:56'),(7,0,NULL,'2016-05-31 21:49:25','2016-05-31 21:49:25'),(8,0,NULL,'2016-06-01 08:40:52','2016-06-01 08:40:52'),(12,0,NULL,'2016-06-01 12:12:36','2016-06-01 12:12:36'),(14,0,NULL,'2016-06-01 12:28:48','2016-06-01 12:28:48'),(16,0,NULL,'2016-06-14 19:30:31','2016-06-14 19:30:31'),(19,0,NULL,'2016-06-16 13:20:59','2016-06-16 13:20:59');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `products_count` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,NULL,8,'2016-05-30 08:55:11','2016-05-30 08:55:11'),(2,NULL,NULL,6,'2016-05-30 08:55:47','2016-05-30 08:55:47'),(3,NULL,NULL,3,'2016-05-30 08:56:05','2016-05-30 08:56:05'),(4,NULL,NULL,4,'2016-05-30 08:56:24','2016-05-30 08:56:24'),(5,NULL,NULL,4,'2016-05-30 08:56:58','2016-05-30 08:56:58'),(6,NULL,NULL,4,'2016-05-30 08:57:16','2016-05-30 08:57:52'),(7,NULL,NULL,5,'2016-05-30 08:57:40','2016-05-30 08:57:40'),(8,NULL,NULL,4,'2016-05-30 08:58:32','2016-05-30 08:58:32'),(9,NULL,NULL,2,'2016-05-30 08:58:50','2016-05-30 08:58:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_category_translations_on_category_id` (`category_id`),
  KEY `index_category_translations_on_locale` (`locale`),
  KEY `index_category_translations_on_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (1,1,'tr','2016-05-30 08:55:11','2016-05-30 08:55:11','Elektronik'),(2,2,'tr','2016-05-30 08:55:47','2016-05-30 08:55:47','Moda&Takı'),(3,3,'tr','2016-05-30 08:56:05','2016-05-30 08:56:05','Ev, Yaşam, Kırtasiye, Ofis'),(4,4,'tr','2016-05-30 08:56:24','2016-05-30 08:56:24','Oto, Bahçe, Yapı Market'),(5,5,'tr','2016-05-30 08:56:58','2016-05-30 08:56:58','Anne, Bebek, Oyuncak'),(6,6,'tr','2016-05-30 08:57:16','2016-05-30 08:57:52','Spor&Outdoor'),(7,7,'tr','2016-05-30 08:57:40','2016-05-30 08:57:40','Kozmetik&Kişisel Bakım'),(8,8,'tr','2016-05-30 08:58:32','2016-05-30 08:58:32','Süper Market&Petshop'),(9,9,'tr','2016-05-30 08:58:50','2016-05-30 08:58:50','Kitap, Müzik, Film, Hobi');
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line_items`
--

DROP TABLE IF EXISTS `line_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `line_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `price` decimal(8,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_line_items_on_product_id` (`product_id`),
  KEY `index_line_items_on_order_id` (`order_id`),
  KEY `index_line_items_on_cart_id` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line_items`
--

LOCK TABLES `line_items` WRITE;
/*!40000 ALTER TABLE `line_items` DISABLE KEYS */;
INSERT INTO `line_items` VALUES (1,1,NULL,4,1,1000.00,'2016-05-30 14:30:18','2016-05-30 14:30:18'),(4,1,NULL,NULL,1,1000.00,'2016-06-01 10:44:21','2016-06-01 10:44:21'),(5,4,NULL,NULL,1,250.00,'2016-06-01 10:44:21','2016-06-01 10:44:21'),(9,2,NULL,NULL,1,500.00,'2016-06-01 12:27:55','2016-06-01 12:27:55'),(10,2,1,NULL,1,500.00,'2016-06-01 12:28:47','2016-06-01 12:28:47'),(12,2,2,NULL,1,500.00,'2016-06-14 19:30:31','2016-06-14 19:30:31');
/*!40000 ALTER TABLE `line_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_orders_on_user_id` (`user_id`),
  KEY `index_orders_on_shipment_id` (`shipment_id`),
  KEY `index_orders_on_payment_id` (`payment_id`),
  KEY `index_orders_on_shipping_address_id` (`shipping_address_id`),
  KEY `index_orders_on_billing_address_id` (`billing_address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,2,1,1,1,0,'2016-06-01 12:28:47','2016-06-01 12:28:47'),(2,2,2,1,1,1,2,'2016-06-14 19:30:31','2016-06-16 13:19:39');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_translations`
--

DROP TABLE IF EXISTS `payment_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_payment_translations_on_payment_id` (`payment_id`),
  KEY `index_payment_translations_on_locale` (`locale`),
  KEY `index_payment_translations_on_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_translations`
--

LOCK TABLES `payment_translations` WRITE;
/*!40000 ALTER TABLE `payment_translations` DISABLE KEYS */;
INSERT INTO `payment_translations` VALUES (1,1,'tr','2016-06-01 12:27:10','2016-06-01 12:27:10','Kredi Kartı');
/*!40000 ALTER TABLE `payment_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_product_translations_on_product_id` (`product_id`),
  KEY `index_product_translations_on_locale` (`locale`),
  KEY `index_product_translations_on_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_translations`
--

LOCK TABLES `product_translations` WRITE;
/*!40000 ALTER TABLE `product_translations` DISABLE KEYS */;
INSERT INTO `product_translations` VALUES (1,1,'tr','2016-05-30 14:24:17','2016-05-30 14:24:17','Bilgisayar/Tablet','Web programlama laboratuvar dersi için hazırlanmıştır'),(2,2,'tr','2016-06-01 08:43:46','2016-06-01 08:43:46','Yazıcılar & Tarayıcılar','Web programlama laboratuvar dersi için hazırlanmıştır'),(3,3,'tr','2016-06-01 08:44:17','2016-06-01 08:44:17','Telefon','Web programlama laboratuvar dersi için hazırlanmıştır'),(4,4,'tr','2016-06-01 08:44:53','2016-06-01 08:44:53','Beyaz Eşya','Web programlama laboratuvar dersi için hazırlanmıştır'),(5,5,'tr','2016-06-01 08:45:22','2016-06-01 08:45:22','Elektrikli Ev Aletleri','Web programlama laboratuvar dersi için hazırlanmıştır'),(6,6,'tr','2016-06-01 08:46:00','2016-06-01 08:46:00','Foto & Kamera','Web programlama laboratuvar dersi için hazırlanmıştır'),(7,7,'tr','2016-06-01 08:46:39','2016-06-01 08:46:39','Isıtma ve Soğutma','Web programlama laboratuvar dersi için hazırlanmıştır'),(8,8,'tr','2016-06-01 08:47:21','2016-06-01 08:47:21','Oyun & Oyun Konsolları','Web programlama laboratuvar dersi için hazırlanmıştır'),(9,9,'tr','2016-06-01 08:48:37','2016-06-01 08:48:37','Kadın Giyim','Web programlama laboratuvar dersi için hazırlanmıştır'),(10,10,'tr','2016-06-01 08:49:02','2016-06-01 08:49:02','Erkek Giyim','Web programlama laboratuvar dersi için hazırlanmıştır'),(11,11,'tr','2016-06-01 08:49:40','2016-06-01 08:49:40','Çocuk Giyim','Web programlama laboratuvar dersi için hazırlanmıştır'),(12,12,'tr','2016-06-01 08:50:12','2016-06-01 08:50:12','Saat','Web programlama laboratuvar dersi için hazırlanmıştır'),(13,13,'tr','2016-06-01 08:50:47','2016-06-01 08:50:47','Güneş Gözlüğü','Web programlama laboratuvar dersi için hazırlanmıştır'),(14,14,'tr','2016-06-01 08:52:33','2016-06-01 08:52:33','Altın','Web programlama laboratuvar dersi için hazırlanmıştır'),(15,15,'tr','2016-06-01 08:53:01','2016-06-01 08:53:01','Mobilya','Web programlama laboratuvar dersi için hazırlanmıştır'),(16,16,'tr','2016-06-01 08:53:25','2016-06-01 08:53:25','Ev Tekstili','Web programlama laboratuvar dersi için hazırlanmıştır'),(17,17,'tr','2016-06-01 08:53:51','2016-06-01 08:53:51','Ofis Mobilyaları','Web programlama laboratuvar dersi için hazırlanmıştır'),(18,18,'tr','2016-06-01 08:54:24','2016-06-01 08:54:24','Oto Aksesuar','Web programlama laboratuvar dersi için hazırlanmıştır'),(19,19,'tr','2016-06-01 08:54:48','2016-06-01 08:54:48','Bahçe','Web programlama laboratuvar dersi için hazırlanmıştır'),(20,20,'tr','2016-06-01 08:55:20','2016-06-01 08:55:20','Hırdavat','Web programlama laboratuvar dersi için hazırlanmıştır'),(21,21,'tr','2016-06-01 08:55:42','2016-06-01 08:55:42','Güvenlik','Web programlama laboratuvar dersi için hazırlanmıştır'),(22,22,'tr','2016-06-01 08:56:35','2016-06-01 08:56:35','Bebek Beslenme','Web programlama laboratuvar dersi için hazırlanmıştır'),(23,23,'tr','2016-06-01 08:56:55','2016-06-01 08:56:55','Emzirme','Web programlama laboratuvar dersi için hazırlanmıştır'),(24,24,'tr','2016-06-01 08:57:19','2016-06-01 08:57:19','Hamile Giyim','Web programlama laboratuvar dersi için hazırlanmıştır'),(25,25,'tr','2016-06-01 08:57:42','2016-06-01 08:57:42','Bebek Hediyelik','Web programlama laboratuvar dersi için hazırlanmıştır'),(26,26,'tr','2016-06-01 08:58:41','2016-06-01 08:58:41','Spor Ekipmanları','Web programlama laboratuvar dersi için hazırlanmıştır'),(27,27,'tr','2016-06-01 09:00:41','2016-06-01 09:00:41','Sporcu Besinleri','Web programlama laboratuvar dersi için hazırlanmıştır'),(28,28,'tr','2016-06-01 09:01:10','2016-06-01 09:01:10','Bisiklet','Web programlama laboratuvar dersi için hazırlanmıştır'),(29,29,'tr','2016-06-01 09:01:54','2016-06-01 09:01:54','Şişme Deniz & Plaj Ürünler','Web programlama laboratuvar dersi için hazırlanmıştır'),(30,30,'tr','2016-06-01 10:27:10','2016-06-01 10:27:10','Parfüm&Deodorant','Web programlama laboratuvar dersi için hazırlanmıştır'),(31,31,'tr','2016-06-01 10:27:34','2016-06-01 10:27:34','Makyaj','Web programlama laboratuvar dersi için hazırlanmıştır'),(32,32,'tr','2016-06-01 10:27:58','2016-06-01 10:27:58','Sağlık&Medikal','Web programlama laboratuvar dersi için hazırlanmıştır'),(33,33,'tr','2016-06-01 10:28:27','2016-06-01 10:28:27','Duş ve Banyo Ürünleri','Web programlama laboratuvar dersi için hazırlanmıştır'),(34,34,'tr','2016-06-01 10:28:54','2016-06-01 10:28:54','Güneş Bakım','Web programlama laboratuvar dersi için hazırlanmıştır'),(35,35,'tr','2016-06-01 10:29:50','2016-06-01 10:29:50','Kağıt Ürünleri','Web programlama laboratuvar dersi için hazırlanmıştır'),(36,36,'tr','2016-06-01 10:30:15','2016-06-01 10:30:15','Deterjan&Temizlik Ürünleri','Web programlama laboratuvar dersi için hazırlanmıştır'),(37,37,'tr','2016-06-01 10:30:34','2016-06-01 10:30:34','İçecek Ürünleri','Web programlama laboratuvar dersi için hazırlanmıştır'),(38,38,'tr','2016-06-01 10:30:56','2016-06-01 10:30:56','Petshop','Web programlama laboratuvar dersi için hazırlanmıştır'),(39,39,'tr','2016-06-01 10:31:25','2016-06-01 10:31:25','Kitap & Dergi','Web programlama laboratuvar dersi için hazırlanmıştır'),(40,40,'tr','2016-06-01 10:31:45','2016-06-01 10:31:45','Film','Web programlama laboratuvar dersi için hazırlanmıştır');
/*!40000 ALTER TABLE `product_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` decimal(8,2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `reserved_count` int(11) DEFAULT '0',
  `sold_count` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `vat_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_products_on_category_id` (`category_id`),
  KEY `index_products_on_vat_id` (`vat_id`),
  KEY `index_products_on_price` (`price`),
  KEY `index_products_on_created_at` (`created_at`),
  KEY `index_products_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,NULL,'101',NULL,1000.00,NULL,1,0,0,1,1,'2016-05-30 14:24:17','2016-06-16 13:20:58'),(2,NULL,'102',NULL,500.00,NULL,2,0,0,1,1,'2016-06-01 08:43:46','2016-06-14 19:30:31'),(3,NULL,'103',NULL,800.00,NULL,0,0,0,1,1,'2016-06-01 08:44:17','2016-06-01 08:44:17'),(4,NULL,'104',NULL,250.00,NULL,5,0,0,1,1,'2016-06-01 08:44:53','2016-06-01 10:45:13'),(5,NULL,'105',NULL,400.00,NULL,0,0,0,1,1,'2016-06-01 08:45:22','2016-06-01 08:45:22'),(6,NULL,'106',NULL,300.00,NULL,20,0,0,1,1,'2016-06-01 08:46:00','2016-06-01 08:46:00'),(7,NULL,'107',NULL,150.00,NULL,3,0,0,1,1,'2016-06-01 08:46:39','2016-06-01 08:46:39'),(8,NULL,'108',NULL,1500.00,NULL,0,0,0,1,1,'2016-06-01 08:47:21','2016-06-01 08:47:21'),(9,NULL,'209',NULL,100.00,NULL,20,0,0,2,1,'2016-06-01 08:48:37','2016-06-01 08:48:37'),(10,NULL,'210',NULL,85.00,NULL,30,0,0,2,1,'2016-06-01 08:49:02','2016-06-01 08:49:02'),(11,NULL,'211',NULL,70.00,NULL,25,0,0,2,1,'2016-06-01 08:49:40','2016-06-01 08:49:40'),(12,NULL,'212',NULL,300.00,NULL,20,0,0,2,1,'2016-06-01 08:50:12','2016-06-01 08:50:12'),(13,NULL,'213',NULL,200.00,NULL,20,0,0,2,1,'2016-06-01 08:50:47','2016-06-01 08:50:47'),(14,NULL,'214',NULL,2000.00,NULL,50,0,0,2,1,'2016-06-01 08:52:33','2016-06-01 08:52:33'),(15,NULL,'315',NULL,2000.00,NULL,10,0,0,3,1,'2016-06-01 08:53:01','2016-06-01 08:53:01'),(16,NULL,'316',NULL,200.00,NULL,0,0,0,3,1,'2016-06-01 08:53:25','2016-06-01 08:53:25'),(17,NULL,'317',NULL,1000.00,NULL,50,0,0,3,1,'2016-06-01 08:53:51','2016-06-01 08:53:51'),(18,NULL,'418',NULL,1500.00,NULL,15,0,0,4,1,'2016-06-01 08:54:24','2016-06-01 08:54:24'),(19,NULL,'419',NULL,25.00,NULL,3,0,0,4,1,'2016-06-01 08:54:48','2016-06-01 08:54:48'),(20,NULL,'420',NULL,45.00,NULL,20,0,0,4,1,'2016-06-01 08:55:20','2016-06-01 08:55:20'),(21,NULL,'421',NULL,300.00,NULL,15,0,0,4,1,'2016-06-01 08:55:42','2016-06-01 08:55:42'),(22,NULL,'522',NULL,25.00,NULL,0,0,0,5,1,'2016-06-01 08:56:35','2016-06-01 08:56:35'),(23,NULL,'523',NULL,130.00,NULL,30,0,0,5,1,'2016-06-01 08:56:55','2016-06-01 08:56:55'),(24,NULL,'524',NULL,325.00,NULL,15,0,0,5,1,'2016-06-01 08:57:19','2016-06-01 08:57:19'),(25,NULL,'525',NULL,45.00,NULL,5,0,0,5,1,'2016-06-01 08:57:42','2016-06-01 08:57:42'),(26,NULL,'626',NULL,300.00,NULL,15,0,0,6,1,'2016-06-01 08:58:41','2016-06-01 08:58:41'),(27,NULL,'627',NULL,175.00,NULL,7,0,0,6,1,'2016-06-01 09:00:41','2016-06-01 09:00:41'),(28,NULL,'628',NULL,250.00,NULL,6,0,0,6,1,'2016-06-01 09:01:10','2016-06-01 09:01:10'),(29,NULL,'629',NULL,75.00,NULL,8,0,0,6,1,'2016-06-01 09:01:54','2016-06-01 09:01:54'),(30,NULL,'730',NULL,255.00,NULL,12,0,0,7,1,'2016-06-01 10:27:10','2016-06-01 10:27:10'),(31,NULL,'731',NULL,250.00,NULL,0,0,0,7,1,'2016-06-01 10:27:34','2016-06-01 10:27:34'),(32,NULL,'732',NULL,1500.00,NULL,25,0,0,7,1,'2016-06-01 10:27:58','2016-06-01 10:27:58'),(33,NULL,'733',NULL,750.00,NULL,25,0,0,7,1,'2016-06-01 10:28:27','2016-06-01 10:28:27'),(34,NULL,'734',NULL,500.00,NULL,25,0,0,7,1,'2016-06-01 10:28:54','2016-06-01 10:28:54'),(35,NULL,'835',NULL,255.00,NULL,21,0,0,8,1,'2016-06-01 10:29:50','2016-06-01 10:29:50'),(36,NULL,'836',NULL,750.00,NULL,15,0,0,8,1,'2016-06-01 10:30:15','2016-06-01 10:30:15'),(37,NULL,'837',NULL,150.00,NULL,25,0,0,8,1,'2016-06-01 10:30:34','2016-06-01 10:30:34'),(38,NULL,'838',NULL,500.00,NULL,10,0,0,8,1,'2016-06-01 10:30:56','2016-06-01 10:30:56'),(39,NULL,'939',NULL,1000.00,NULL,250,0,0,9,1,'2016-06-01 10:31:25','2016-06-01 10:31:25'),(40,NULL,'940',NULL,500.00,NULL,100,0,0,9,1,'2016-06-01 10:31:45','2016-06-01 10:31:45');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140325081035'),('20140331081857'),('20140331195535'),('20140411071849'),('20140411140902'),('20140414065249'),('20140414102719'),('20140423194045'),('20141027074506'),('20141027075046'),('20141027205639'),('20141027205814'),('20141028201704'),('20141028203225'),('20150318091231'),('20150318100011'),('20150318114323');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_translations`
--

DROP TABLE IF EXISTS `shipment_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipment_translations_on_shipment_id` (`shipment_id`),
  KEY `index_shipment_translations_on_locale` (`locale`),
  KEY `index_shipment_translations_on_title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_translations`
--

LOCK TABLES `shipment_translations` WRITE;
/*!40000 ALTER TABLE `shipment_translations` DISABLE KEYS */;
INSERT INTO `shipment_translations` VALUES (1,1,'tr','2016-06-01 10:42:28','2016-06-01 10:42:28','kargo');
/*!40000 ALTER TABLE `shipment_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fee` decimal(8,2) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (1,'OMU',NULL,10.50,1);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `integer` int(11) DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitation_created_at` datetime DEFAULT NULL,
  `invitation_sent_at` datetime DEFAULT NULL,
  `invitation_accepted_at` datetime DEFAULT NULL,
  `invitation_limit` int(11) DEFAULT NULL,
  `invited_by_id` int(11) DEFAULT NULL,
  `invited_by_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invitations_count` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_users_on_confirmation_token` (`confirmation_token`),
  UNIQUE KEY `index_users_on_invitation_token` (`invitation_token`),
  KEY `index_users_on_invited_by_id_and_invited_by_type` (`invited_by_id`,`invited_by_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'l.sencer.sahin@gmail.com','$2a$10$j5AW3t0cGFOA1gRiMGLi6eIjgLCj7xKo9deEIcbVsn9Rl/vzAn3NC',NULL,NULL,NULL,9,'2016-06-16 13:18:11','2016-06-14 19:29:58','127.0.0.1','127.0.0.1','levent',NULL,1,NULL,'d8a30f374c84f6fd7403ae137d1b3c8d8e50a504756faa39fa76e636279d58d5',NULL,'2016-05-28 18:33:36',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2016-05-28 18:33:36','2016-06-16 13:18:11'),(2,'kullanici1@kullanici.com','$2a$10$Muw5qgcwJ.m9WqDuZ3WX1OG1ZsIDJIfEVbUcknpn70ViQ4V5t0JaC',NULL,NULL,NULL,1,'2016-06-01 10:33:27','2016-06-01 10:33:27','127.0.0.1','127.0.0.1','Kullanıcı1',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2016-06-01 10:33:27','2016-06-01 10:33:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vats`
--

DROP TABLE IF EXISTS `vats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vats`
--

LOCK TABLES `vats` WRITE;
/*!40000 ALTER TABLE `vats` DISABLE KEYS */;
INSERT INTO `vats` VALUES (1,'KDV',2);
/*!40000 ALTER TABLE `vats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-16 16:48:44
