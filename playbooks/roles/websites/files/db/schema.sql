-- MySQL dump 10.13  Distrib 5.5.15, for Linux (x86_64)
--
-- Host: localhost    Database: swm
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Table structure for table `Parts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `Parts` (
  `partno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `packsize` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uom` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesale` decimal(15,5) DEFAULT NULL,
  `price` decimal(15,5) NOT NULL,
  UNIQUE KEY `partno_2` (`partno`,`manufacturer_id`),
  KEY `description` (`description`),
  KEY `partno` (`partno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Parts_backup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `Parts_backup` (
  `partno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `packsize` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uom` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesale` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `partno_2` (`partno`,`manufacturer_id`),
  KEY `description` (`description`),
  KEY `partno` (`partno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Parts_backup2`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `Parts_backup2` (
  `partno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `packsize` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uom` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesale` decimal(15,5) DEFAULT NULL,
  `price` decimal(15,5) NOT NULL,
  UNIQUE KEY `partno_2` (`partno`,`manufacturer_id`),
  KEY `description` (`description`),
  KEY `partno` (`partno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Quickieparts`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `Quickieparts` (
  `partno` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `packsize` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uom` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upc` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wholesale` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`partno`),
  KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id_append` int(11) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_override` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `default_shipping_id` int(11) DEFAULT NULL,
  `default_billing_id` int(11) DEFAULT NULL,
  `last_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT '0',
  `last_action_time` int(11) DEFAULT NULL,
  `created_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` int(11) DEFAULT NULL,
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `legacy` tinyint(4) NOT NULL,
  `guest` tinyint(4) NOT NULL,
  `legacy_account_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=66306 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_group`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_group_part_discount`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account_group_part_discount` (
  `group_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `discount_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `discount_percentage` double NOT NULL,
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account_note` (
  `note_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_request_change_email`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account_request_change_email` (
  `request_id` int(255) NOT NULL AUTO_INCREMENT,
  `security_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(11) NOT NULL,
  `new_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `old_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_time` int(11) NOT NULL,
  `processed_time` int(11) NOT NULL DEFAULT '0',
  `request_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','complete','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_request_reset_password`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account_request_reset_password` (
  `request_id` int(255) NOT NULL AUTO_INCREMENT,
  `security_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(11) NOT NULL,
  `request_time` int(11) NOT NULL,
  `processed_time` int(11) NOT NULL DEFAULT '0',
  `request_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('pending','complete','canceled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2918 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `account_website`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `account_website` (
  `account_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `role` enum('customer','guest','doctor','admin') COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  UNIQUE KEY `account_id` (`account_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `address`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_prov` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `country_id` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usps_id` int(11) DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_search` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_search` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `type` enum('account','order','checkout') COLLATE utf8_unicode_ci NOT NULL,
  `hash` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=312260 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_events`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `admin_events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL,
  `exclude_admin_id` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=529086 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `admin_user` (
  `admin_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ext` int(11) NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_ping` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ansi_uom`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ansi_uom` (
  `uom_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `uom_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uom_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `banner`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `banner` (
  `website_id` int(1) NOT NULL,
  `width` int(4) NOT NULL,
  `height` int(4) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_count` int(10) unsigned DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `picture_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_count_admin` int(10) unsigned DEFAULT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  `order_products_by` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_class_id` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1352 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_category_website`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_category_website` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` int(10) unsigned NOT NULL DEFAULT '0',
  `enabled` int(10) unsigned NOT NULL DEFAULT '0',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `html` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL,
  `override_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` enum('default','overview') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`website_id`,`parent`),
  KEY `site_ID` (`website_id`),
  KEY `parent` (`parent`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_option`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `style_id` int(10) unsigned NOT NULL DEFAULT '1',
  `num_cols` int(10) unsigned NOT NULL DEFAULT '1',
  `required` int(10) unsigned NOT NULL DEFAULT '0',
  `option_html` text COLLATE utf8_unicode_ci NOT NULL,
  `option_tpl` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `variation` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`),
  KEY `product_ID` (`product_id`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=22504 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_option_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_option_image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image_file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_caption` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19050 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_option_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_option_linker` (
  `linker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `child_product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `override_price` int(10) unsigned NOT NULL DEFAULT '1',
  `price` float NOT NULL DEFAULT '0',
  `override_name` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`linker_id`),
  KEY `product_ID` (`product_id`),
  KEY `option_ID` (`option_id`),
  KEY `child_product_ID` (`child_product_id`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=63696 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_option_style`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_option_style` (
  `style_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `style_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `routine_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`style_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part` (
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `stock_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `uom` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  PRIMARY KEY (`part_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_category` (
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('parent','parts','unavailable') COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `original_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `category_guid` (`category_guid`),
  KEY `permalink` (`permalink`(255)),
  KEY `parent_category_guid` (`parent_category_guid`),
  KEY `parent_item_guid` (`parent_item_guid`),
  KEY `parent_item_guid_2` (`parent_item_guid`,`parent_category_guid`),
  KEY `parent_item_guid_3` (`parent_item_guid`,`permalink`(255)),
  KEY `name` (`name`),
  KEY `parent_item_guid_4` (`parent_item_guid`,`type`,`permalink`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_category_attachment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_category_attachment` (
  `attachment_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `attachment_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_item` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `type` enum('quantum','wheelchair','powerchair','scooter','liftchair','cushion','seating','accessory','liftsystem','wheel','tilt','rigid','folding','power','sport','pediatric','breezy','wheels') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT '0',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_item_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_item_linker` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_linker` (
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_asbly` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description_extended` text COLLATE utf8_unicode_ci,
  `hcpcs` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `part_linker_guid` (`part_linker_guid`),
  KEY `parent_category_id` (`parent_category_guid`),
  KEY `part_id` (`part_guid`),
  KEY `parent_item_guid` (`parent_item_guid`,`parent_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_note` (
  `note_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_text` text COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`note_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `part_category_guid` (`part_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_price` (
  `price_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msrp` float NOT NULL,
  `dealer` float DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`price_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `msrp` (`msrp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_part_search`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_part_search` (
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `search` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`part_linker_guid`),
  FULLTEXT KEY `search` (`search`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `manufacturer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `brief_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mfg_part_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Real Part Number',
  `HCPCS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `taxable` int(10) unsigned NOT NULL DEFAULT '1',
  `rx` int(10) unsigned NOT NULL DEFAULT '0',
  `latex_free` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` int(10) unsigned NOT NULL DEFAULT '0',
  `product_common_carrier` int(10) unsigned NOT NULL DEFAULT '0',
  `product_inside_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `price_quote_flag` int(10) unsigned NOT NULL DEFAULT '0',
  `wholesale` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `retail` float NOT NULL DEFAULT '0',
  `lamp` tinyint(1) NOT NULL,
  `lamp_price` float NOT NULL,
  `uom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uom_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uom_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `search` text COLLATE utf8_unicode_ci NOT NULL,
  `related_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `product_order` int(10) unsigned NOT NULL DEFAULT '99',
  `shipping_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_inc` float NOT NULL DEFAULT '0',
  `product_return` int(10) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `manufacturer_ID` (`manufacturer_id`),
  KEY `distributor_ID` (`distributor_id`),
  KEY `part_number` (`part_number`)
) ENGINE=InnoDB AUTO_INCREMENT=38825 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_backup_isg`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_backup_isg` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `manufacturer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `brief_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mfg_part_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Real Part Number',
  `HCPCS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `taxable` int(10) unsigned NOT NULL DEFAULT '1',
  `rx` int(10) unsigned NOT NULL DEFAULT '0',
  `latex_free` tinyint(1) NOT NULL DEFAULT '0',
  `free_shipping` int(10) unsigned NOT NULL DEFAULT '0',
  `product_common_carrier` int(10) unsigned NOT NULL DEFAULT '0',
  `product_inside_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `price_quote_flag` int(10) unsigned NOT NULL DEFAULT '0',
  `wholesale` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `retail` float NOT NULL DEFAULT '0',
  `lamp` tinyint(1) NOT NULL,
  `lamp_price` float NOT NULL,
  `uom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uom_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uom_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `search` text COLLATE utf8_unicode_ci NOT NULL,
  `related_ids` text COLLATE utf8_unicode_ci NOT NULL,
  `product_order` int(10) unsigned NOT NULL DEFAULT '99',
  `shipping_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_inc` float NOT NULL DEFAULT '0',
  `product_return` int(10) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `manufacturer_ID` (`manufacturer_id`),
  KEY `distributor_ID` (`distributor_id`),
  KEY `part_number` (`part_number`)
) ENGINE=InnoDB AUTO_INCREMENT=37938 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_feature`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_feature` (
  `feature_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `feature_info` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9630 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_image` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image_file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_caption` text COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `product_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16214 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_info`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_info` (
  `info_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `info_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info_icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1079 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_openbox`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_openbox` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL,
  `cost` float NOT NULL DEFAULT '0',
  `uom_desc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_product_id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_related`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`),
  KEY `related_id` (`related_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_review`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL DEFAULT '0',
  `ownership` enum('days','weeks','months','years') COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `pros` text COLLATE utf8_unicode_ci,
  `cons` text COLLATE utf8_unicode_ci,
  `insert_time` int(11) NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `approved_by` int(11) DEFAULT NULL,
  `approved_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_search`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_search` (
  `product_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `manufacturer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `brief_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HCPCS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `taxable` int(10) unsigned NOT NULL DEFAULT '1',
  `rx` int(10) unsigned NOT NULL DEFAULT '0',
  `free_shipping` int(10) unsigned NOT NULL DEFAULT '0',
  `product_common_carrier` int(10) unsigned NOT NULL DEFAULT '0',
  `product_inside_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `price_quote_flag` int(10) unsigned NOT NULL DEFAULT '0',
  `wholesale` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `retail` float NOT NULL DEFAULT '0',
  `lamp` tinyint(1) NOT NULL,
  `lamp_price` float NOT NULL,
  `uom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uom_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uom_qty` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL,
  `search` text COLLATE utf8_unicode_ci NOT NULL,
  `related_ids` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_order` int(10) unsigned NOT NULL DEFAULT '99',
  `shipping_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_inc` float NOT NULL DEFAULT '0',
  `product_return` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `manufacturer_ID` (`manufacturer_id`),
  KEY `distributor_ID` (`distributor_id`),
  KEY `part_number` (`part_number`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`description`,`part_number`),
  FULLTEXT KEY `name_3` (`name`,`description`),
  FULLTEXT KEY `search` (`search`)
) ENGINE=MyISAM AUTO_INCREMENT=27436 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_searchnew`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_searchnew` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `search` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`),
  FULLTEXT KEY `search` (`search`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_set`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_set` (
  `product_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `set_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_ids` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_set_id`),
  KEY `product_ids` (`product_ids`(255))
) ENGINE=InnoDB AUTO_INCREMENT=23796 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_spec`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_spec` (
  `spec_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spec_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `spec_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `csv` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spec_id`),
  KEY `product_ID` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38777 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_special`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity_min` int(11) NOT NULL DEFAULT '0',
  `quantity_max` int(11) NOT NULL DEFAULT '0',
  `discount_percent` float NOT NULL DEFAULT '0',
  `discount_flat` float NOT NULL DEFAULT '0',
  `begin` int(11) NOT NULL DEFAULT '0',
  `end` int(11) NOT NULL DEFAULT '0',
  `only_identical` tinyint(1) NOT NULL DEFAULT '0',
  `multiples` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_uom`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_uom` (
  `uom_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `uom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `uom_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uom_qty` int(11) NOT NULL,
  `uom_child` int(11) DEFAULT NULL,
  `part_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `wholesale` float NOT NULL,
  PRIMARY KEY (`uom_id`),
  KEY `uom_child` (`uom_child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_product_website`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `website_id` int(10) unsigned NOT NULL DEFAULT '1',
  `enabled` tinyint(1) NOT NULL,
  `feature` tinyint(1) NOT NULL,
  `google_feed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`,`website_id`),
  KEY `category_ID` (`category_id`),
  KEY `enabled` (`enabled`),
  KEY `site_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_sp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_sp` (
  `item_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enrich_price` float NOT NULL,
  `dealer_price` float NOT NULL,
  `group_price` float NOT NULL,
  `cat_page` int(5) NOT NULL,
  `product_line` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_flag` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`item_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_sp_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_sp_category` (
  `category_id` int(25) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('top','header','sub') COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `omit` tinyint(1) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `name` (`name`,`type`,`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_sp_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_sp_item` (
  `item_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `tags` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `hcpcs` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `omit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `catalog_sp_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `catalog_sp_product` (
  `product_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL,
  `omit` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_id`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `title_2` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_api_key`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_api_key` (
  `api_key_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`api_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_api_key_access`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_api_key_access` (
  `api_key_id` int(11) NOT NULL,
  `access_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`api_key_id`,`access_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_api_method`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_api_method` (
  `method_id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cachable` tinyint(1) NOT NULL,
  `cache_life` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_api_method_access`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_api_method_access` (
  `method_id` int(11) NOT NULL,
  `access_tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`method_id`,`access_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_api_session`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_api_session` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `modified` (`modified`,`lifetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_api_session_bot`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_api_session_bot` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `modified` (`modified`,`lifetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_cache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_cache` (
  `cache_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `insert_time` int(11) NOT NULL,
  `lifespan` int(11) NOT NULL DEFAULT '0',
  `labels` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cache_id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=52841 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_cart_blob`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_cart_blob` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_blob` longblob NOT NULL,
  `last_update` int(11) NOT NULL,
  `cart_type` enum('guest','user','order','clone') COLLATE utf8_unicode_ci NOT NULL,
  `start_website_id` int(11) DEFAULT '3',
  PRIMARY KEY (`cart_id`),
  KEY `cart_type` (`cart_type`),
  KEY `last_update` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=52825608 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_company`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_company_setting`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_company_setting` (
  `company_id` int(11) NOT NULL,
  `setting_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  KEY `company_id` (`company_id`,`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_email_template`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_contents_html` longtext COLLATE utf8_unicode_ci,
  `template_contents_text` longtext COLLATE utf8_unicode_ci,
  `template_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_key_id` int(11) NOT NULL DEFAULT '0',
  `template_type` enum('normal','remote') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_email_template_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_email_template_linker` (
  `api_key_id` int(11) NOT NULL,
  `email_type_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_email_template_new`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_email_template_new` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_contents_html` longtext COLLATE utf8_unicode_ci,
  `template_contents_text` longtext COLLATE utf8_unicode_ci,
  `template_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_key_id` int(11) NOT NULL DEFAULT '0',
  `template_type` enum('normal','remote') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_email_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_email_type` (
  `email_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_pending_checkout`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_pending_checkout` (
  `pending_checkout_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address_id` int(11) NOT NULL,
  `billing_address_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insert_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pending_checkout_id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132266 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_seo_sentence`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_seo_sentence` (
  `sentence_id` int(11) NOT NULL AUTO_INCREMENT,
  `sentence` text COLLATE utf8_unicode_ci NOT NULL,
  `group` enum('parts_many','parts_specific','parts_delivery','parts_pricing','parts_brag','parts_notfound','parts_misc') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sentence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_setting`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_setting` (
  `setting_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_required` tinyint(4) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `core_website`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_prefix` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_flag` int(10) unsigned NOT NULL DEFAULT '0',
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secure_header` text COLLATE utf8_unicode_ci NOT NULL,
  `secure_footer` text COLLATE utf8_unicode_ci NOT NULL,
  `google_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `down_for_maintenance` tinyint(1) NOT NULL,
  `default_shipping_class` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`website_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `credit_card`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `credit_card` (
  `credit_card_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `number` blob,
  `exp_month` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `exp_year` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cvc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name_on_card` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`credit_card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59346 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `directory_country`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `directory_country` (
  `iso` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `printable_name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `iso3` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`iso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `directory_country_region`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `default_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  KEY `FK_REGION_COUNTRY` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Country regions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `directory_usps`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `directory_usps` (
  `usps_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iso` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`usps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `distributor`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `distributor` (
  `distributor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `distributor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rep_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edi_flag` int(10) unsigned NOT NULL DEFAULT '0',
  `email_flag` int(10) unsigned NOT NULL DEFAULT '0',
  `dont_nag_tracking` tinyint(1) NOT NULL DEFAULT '0',
  `fax_flag` int(1) NOT NULL DEFAULT '0',
  `account_num` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `dist_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `extra` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`distributor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_address`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `email_address` (
  `email_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `valid` tinyint(4) NOT NULL,
  PRIMARY KEY (`email_address_id`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `manufacturer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_prefix` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manufacturer_id`),
  KEY `manufacturer_name` (`manufacturer_name`)
) ENGINE=InnoDB AUTO_INCREMENT=715 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `billing` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `status` enum('new','payment-pending','cancelled','completed') COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` enum('credit-card','check','telephone','fax','quote','purchase-order','doctor','paypal') COLLATE utf8_unicode_ci NOT NULL,
  `credit_card_id` int(11) DEFAULT NULL,
  `order_data` blob,
  `order_time` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `flags` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ticket_number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archived` tinyint(4) NOT NULL DEFAULT '0',
  `lock_admin_id` int(11) DEFAULT NULL,
  `po_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search` text COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(15,5) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `total` (`total`),
  KEY `order_time` (`order_time`),
  KEY `site_id` (`site_id`),
  KEY `order_num` (`order_num`),
  FULLTEXT KEY `search` (`search`)
) ENGINE=MyISAM AUTO_INCREMENT=65794 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_edi`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `order_edi` (
  `edi_id` int(11) NOT NULL AUTO_INCREMENT,
  `edi_type` int(11) NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `processed` tinyint(1) DEFAULT '0',
  `insert_time` int(11) NOT NULL,
  `processed_time` int(11) DEFAULT NULL,
  `po_number` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`edi_id`),
  KEY `insert_time` (`insert_time`),
  KEY `edi_type` (`edi_type`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49455 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_log`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `order_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` int(11) NOT NULL,
  `type` enum('note','log') COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=835377 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_log_test`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `order_log_test` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` int(11) NOT NULL,
  `type` enum('note','log') COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=450273 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_tracking_number`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `order_tracking_number` (
  `order_id` int(11) NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `part_price_update`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE IF NOT EXISTS `part_price_update` (
  `manufacturer_id` int(11),
  `stock_code` varchar(50),
  `update_query` text
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pending_email_purchase_orders`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE IF NOT EXISTS `pending_email_purchase_orders` (
  `Date Sent` date,
  `PO #` varchar(255),
  `CSR Name` varchar(32),
  `Distributor Email` varchar(255),
  `Days Old` int(7)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `purchase_order_confirmation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `purchase_order_confirmation` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_date` date NOT NULL,
  `po_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `distrib_id` int(11) NOT NULL,
  `distrib_email` varchar(255) NOT NULL,
  `po_html` text NOT NULL,
  `ship_eta` varchar(255) NOT NULL,
  `distributor_confirmer_name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `can_fulfill` varchar(255) NOT NULL,
  `confirm_date` date NOT NULL,
  `delay_reason` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `nagged` tinyint(4) NOT NULL DEFAULT '0',
  `nag_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`email_id`),
  KEY `ship_eta` (`ship_eta`,`confirm_date`,`nagged`,`nag_date`),
  KEY `distrib_id` (`distrib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shipping_type`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `shipping_type` (
  `shipping_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `unit_inc_default` float NOT NULL DEFAULT '0',
  `h` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `l` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `w` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dimensional_weight` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `charge_frt_flag` int(10) DEFAULT '0',
  `truck_charge` float DEFAULT '0',
  `charge_gnd_flag` int(2) unsigned NOT NULL DEFAULT '1',
  `charge_gnd` float NOT NULL DEFAULT '0',
  `charge_2day_flag` int(2) unsigned NOT NULL DEFAULT '1',
  `charge_2day` float NOT NULL DEFAULT '0',
  `charge_1day_flag` int(2) unsigned NOT NULL DEFAULT '1',
  `charge_1day` float NOT NULL DEFAULT '0',
  `enabled` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`shipping_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_coloplast_image`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_coloplast_image` (
  `product_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  KEY `product_hash` (`product_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_coloplast_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_coloplast_item` (
  `product_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `parent_product` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributes` blob NOT NULL,
  KEY `parent_product` (`parent_product`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_coloplast_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_coloplast_product` (
  `product_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `group1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_grahamfield_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_grahamfield_product` (
  `CategoryDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `GroupDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `StockCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ListPrice` double NOT NULL,
  `SellPrice` double NOT NULL,
  `UOM` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `UOMPackaging` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mass` double NOT NULL,
  `HCPCCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Description1` text COLLATE utf8_unicode_ci NOT NULL,
  `DetailDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `Thumbnail` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ImageFile` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `ZoomImageFile` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `UPC` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_gulfsouth_product`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_gulfsouth_product` (
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gs_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `packaging` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mfg_number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mfg_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `category1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `select` tinyint(4) NOT NULL,
  `availability_color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `availability_text` text COLLATE utf8_unicode_ci,
  `image` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `description_extended` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_hollister_benefit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_hollister_benefit` (
  `series_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `benefit` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_hollister_family`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_hollister_family` (
  `family_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_hollister_feature`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_hollister_feature` (
  `series_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_hollister_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_hollister_item` (
  `stock_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `series_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_hollister_series`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_hollister_series` (
  `series_id` int(11) NOT NULL,
  `family_id` int(11) NOT NULL,
  `number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_hollister_spec`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_hollister_spec` (
  `stock_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `spec` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_independence_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_independence_price` (
  `item_number` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `UM` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `UOM_Description` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `HCPCS` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Medicare_Qty_Ext` int(11) NOT NULL,
  `sold_by_qty` int(11) NOT NULL,
  `ProdClass` int(11) NOT NULL,
  `PClass_Descr` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Item_Number` (`item_number`),
  KEY `Item_Number_2` (`item_number`,`UM`),
  KEY `UM` (`UM`),
  KEY `Manufacturer` (`manufacturer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_isg_cifcatalog`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_isg_cifcatalog` (
  `Supplier_ID` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `Supplier_PartID` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `Manufacturer_PartID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Item_Name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `DateCreated` datetime NOT NULL,
  `SPSC_Code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Unit_Price` double NOT NULL,
  `Unit_Of_Measure` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `Lead_Time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Manufacturer_Name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `Supplier_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Manufacturer_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Market_Price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoTitle1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoTitle2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoTitle3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Parent_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Short_Description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ImageName` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SubCategory` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Category` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `UOM_To_Each` int(11) NOT NULL,
  `HCPCS Code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Attributes` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABCClass` char(1) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Supplier_PartID` (`Supplier_PartID`),
  KEY `Unit_Of_Measure` (`Unit_Of_Measure`),
  KEY `Supplier_PartID_2` (`Supplier_PartID`,`Unit_Of_Measure`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_isg_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_isg_price` (
  `item` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(4000) COLLATE utf8_unicode_ci NOT NULL,
  `whls_pg` int(11) NOT NULL,
  `retail_pg` int(11) NOT NULL,
  `hcpcs` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `contract` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uom` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `wholesale` double NOT NULL,
  `into_stock` double NOT NULL,
  `home_delivered` double NOT NULL,
  `retail` double NOT NULL,
  KEY `item` (`item`),
  KEY `item_2` (`item`),
  KEY `uom` (`uom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_kendall_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_kendall_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_manufacturer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_mckesson_marketingtext`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_mckesson_marketingtext` (
  `Category_Desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Category_Number` int(11) NOT NULL,
  `Item_Number` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Short_Desc` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Long_Desc` text COLLATE utf8_unicode_ci NOT NULL,
  `Marketing_Text` text COLLATE utf8_unicode_ci NOT NULL,
  `Mfg_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mfg_Item` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Ea_Sell` int(11) NOT NULL,
  `UM` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Text_Available` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `Image_Available` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `Weight` double NOT NULL,
  `Height` double NOT NULL,
  `Width` double NOT NULL,
  `Length` double NOT NULL,
  KEY `Mfg_Item` (`Mfg_Item`),
  KEY `UM` (`UM`),
  KEY `Mfg_Item_2` (`Mfg_Item`,`UM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_mckesson_mmcap`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_mckesson_mmcap` (
  `Category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mck_Item` int(11) NOT NULL,
  `Product_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Manufacturer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mfg_Item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Casepack` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Sell_Unit` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `EA_Sell` int(11) NOT NULL,
  `MMCAP_2009` double NOT NULL,
  `MMCAP_2008` double NOT NULL,
  KEY `Mck_Item` (`Mck_Item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_mckesson_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_mckesson_price` (
  `Cat` int(11) NOT NULL,
  `Category_Description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mfg_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Mfg_Item` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Item` int(11) NOT NULL,
  `Desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UM` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Cspk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_medline_mfgs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_medline_mfgs` (
  `manufacturer_name1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_name2` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `src_sunrise_parts_uom`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `src_sunrise_parts_uom` (
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hcpc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `uom` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `item_number` (`item_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part` (
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `stock_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  PRIMARY KEY (`part_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_category` (
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('parent','parts','unavailable') COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `original_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `category_guid` (`category_guid`),
  KEY `permalink` (`permalink`(255)),
  KEY `parent_category_guid` (`parent_category_guid`),
  KEY `parent_item_guid` (`parent_item_guid`),
  KEY `parent_item_guid_2` (`parent_item_guid`,`parent_category_guid`),
  KEY `parent_item_guid_3` (`parent_item_guid`,`permalink`(255)),
  KEY `name` (`name`),
  KEY `parent_item_guid_4` (`parent_item_guid`,`type`,`permalink`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_category_attachment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_category_attachment` (
  `attachment_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `attachment_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_item` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `type` enum('quantum','wheelchair','powerchair','scooter','liftchair','cushion','seating','accessory','liftsystem','wheel','tilt','rigid','folding','power','sport','pediatric','breezy','wheels') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT '0',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_item_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_item_linker` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_linker` (
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_asbly` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description_extended` text COLLATE utf8_unicode_ci,
  `hcpcs` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `part_linker_guid` (`part_linker_guid`),
  KEY `parent_category_id` (`parent_category_guid`),
  KEY `part_id` (`part_guid`),
  KEY `parent_item_guid` (`parent_item_guid`,`parent_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_note` (
  `note_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_text` text COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`note_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `part_category_guid` (`part_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_invacare_catalog_part_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_invacare_catalog_part_price` (
  `price_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msrp` float NOT NULL,
  `dealer` float DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`price_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `msrp` (`msrp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part` (
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `stock_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `uom` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  PRIMARY KEY (`part_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_category` (
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('parent','parts','unavailable') COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `original_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `category_guid` (`category_guid`),
  KEY `permalink` (`permalink`(255)),
  KEY `parent_category_guid` (`parent_category_guid`),
  KEY `parent_item_guid` (`parent_item_guid`),
  KEY `parent_item_guid_2` (`parent_item_guid`,`parent_category_guid`),
  KEY `parent_item_guid_3` (`parent_item_guid`,`permalink`(255)),
  KEY `name` (`name`),
  KEY `parent_item_guid_4` (`parent_item_guid`,`type`,`permalink`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_category_attachment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_category_attachment` (
  `attachment_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `attachment_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_item` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `type` enum('quantum','wheelchair','powerchair','scooter','liftchair','cushion','seating','accessory','liftsystem','wheel','tilt','rigid','folding','power','sport','pediatric','breezy','wheels') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT '0',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_item_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_item_linker` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_linker` (
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_asbly` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description_extended` text COLLATE utf8_unicode_ci,
  `hcpcs` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `part_linker_guid` (`part_linker_guid`),
  KEY `parent_category_id` (`parent_category_guid`),
  KEY `part_id` (`part_guid`),
  KEY `parent_item_guid` (`parent_item_guid`,`parent_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_note` (
  `note_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_text` text COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`note_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `part_category_guid` (`part_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_pride_catalog_part_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_pride_catalog_part_price` (
  `price_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msrp` float NOT NULL,
  `dealer` float DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`price_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `msrp` (`msrp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part` (
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `stock_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `uom` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  PRIMARY KEY (`part_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_category` (
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('parent','parts','unavailable') COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `original_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `category_guid` (`category_guid`),
  KEY `permalink` (`permalink`(255)),
  KEY `parent_category_guid` (`parent_category_guid`),
  KEY `parent_item_guid` (`parent_item_guid`),
  KEY `parent_item_guid_2` (`parent_item_guid`,`parent_category_guid`),
  KEY `parent_item_guid_3` (`parent_item_guid`,`permalink`(255)),
  KEY `name` (`name`),
  KEY `parent_item_guid_4` (`parent_item_guid`,`type`,`permalink`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_category_attachment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_category_attachment` (
  `attachment_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `attachment_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_item` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `type` enum('quantum','wheelchair','powerchair','scooter','liftchair','cushion','seating','accessory','liftsystem','wheel','tilt','rigid','folding','power','sport','pediatric','breezy','wheels') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT '0',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_item_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_item_linker` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_linker` (
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_asbly` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description_extended` text COLLATE utf8_unicode_ci,
  `hcpcs` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `part_linker_guid` (`part_linker_guid`),
  KEY `parent_category_id` (`parent_category_guid`),
  KEY `part_id` (`part_guid`),
  KEY `parent_item_guid` (`parent_item_guid`,`parent_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_note` (
  `note_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_text` text COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`note_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `part_category_guid` (`part_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_sunrise_catalog_part_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_sunrise_catalog_part_price` (
  `price_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msrp` float NOT NULL,
  `dealer` float DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`price_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `msrp` (`msrp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part` (
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `stock_code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  PRIMARY KEY (`part_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_category` (
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('parent','parts','unavailable') COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `original_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  UNIQUE KEY `category_guid` (`category_guid`),
  KEY `permalink` (`permalink`(255)),
  KEY `parent_category_guid` (`parent_category_guid`),
  KEY `parent_item_guid` (`parent_item_guid`),
  KEY `parent_item_guid_2` (`parent_item_guid`,`parent_category_guid`),
  KEY `parent_item_guid_3` (`parent_item_guid`,`permalink`(255)),
  KEY `name` (`name`),
  KEY `parent_item_guid_4` (`parent_item_guid`,`type`,`permalink`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_category_attachment`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_category_attachment` (
  `attachment_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `category_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `attachment_url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_item` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `type` enum('quantum','wheelchair','powerchair','scooter','liftchair','cushion','seating','accessory','liftsystem','wheel','tilt','rigid','folding','power','sport','pediatric','breezy','wheels') COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT '0',
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_item_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_item_linker` (
  `item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`item_guid`,`product_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_linker`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_linker` (
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_item_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parent_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diagram_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_asbly` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description_extended` text COLLATE utf8_unicode_ci,
  `hcpcs` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flags` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  UNIQUE KEY `part_linker_guid` (`part_linker_guid`),
  KEY `parent_category_id` (`parent_category_guid`),
  KEY `part_id` (`part_guid`),
  KEY `parent_item_guid` (`parent_item_guid`,`parent_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_note`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_note` (
  `note_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part_category_guid` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_text` text COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`note_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `part_category_guid` (`part_category_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staging_tilite_catalog_part_price`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `staging_tilite_catalog_part_price` (
  `price_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `part_linker_guid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msrp` float NOT NULL,
  `dealer` float DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`price_guid`),
  KEY `part_linker_guid` (`part_linker_guid`),
  KEY `msrp` (`msrp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unsubscribe`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `unsubscribe` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=840 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `part_price_update`
--

/*!50001 DROP TABLE IF EXISTS `part_price_update`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `part_price_update` AS select `catalog_part`.`manufacturer_id` AS `manufacturer_id`,`catalog_part`.`stock_code` AS `stock_code`,cast(concat('UPDATE catalog_part_price SET msrp = 999.999 WHERE part_linker_guid IN ("',group_concat(`catalog_part_linker`.`part_linker_guid` separator '","'),'");') as char(1000) charset utf8) AS `update_query` from (`catalog_part` join `catalog_part_linker` on((`catalog_part_linker`.`part_guid` = `catalog_part`.`part_guid`))) group by `catalog_part`.`stock_code` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pending_email_purchase_orders`
--

/*!50001 DROP TABLE IF EXISTS `pending_email_purchase_orders`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pending_email_purchase_orders` AS select `purchase_order_confirmation`.`po_date` AS `Date Sent`,`purchase_order_confirmation`.`po_number` AS `PO #`,`admin_user`.`first_name` AS `CSR Name`,`purchase_order_confirmation`.`distrib_email` AS `Distributor Email`,(to_days(now()) - to_days(`purchase_order_confirmation`.`po_date`)) AS `Days Old` from (`purchase_order_confirmation` join `admin_user` on((`admin_user`.`admin_id` = `purchase_order_confirmation`.`admin_id`))) where (`purchase_order_confirmation`.`confirm_date` = '0000-00-00') order by (to_days(now()) - to_days(`purchase_order_confirmation`.`po_date`)) desc */;
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

-- Dump completed on 2014-07-18 13:15:37
