-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zurmo
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `__role_children_cache`
--

DROP TABLE IF EXISTS `__role_children_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__role_children_cache` (
  `permitable_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`permitable_id`,`role_id`),
  UNIQUE KEY `permitable_id` (`permitable_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__role_children_cache`
--

LOCK TABLES `__role_children_cache` WRITE;
/*!40000 ALTER TABLE `__role_children_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `__role_children_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_group`
--

DROP TABLE IF EXISTS `_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  `_group_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_group`
--

LOCK TABLES `_group` WRITE;
/*!40000 ALTER TABLE `_group` DISABLE KEYS */;
INSERT INTO `_group` VALUES (1,'Super Administrators',2,NULL),(2,'Everyone',3,NULL),(3,'East',5,NULL),(4,'West',6,NULL),(5,'East Channel Sales',7,3),(6,'West Channel Sales',8,4),(7,'East Direct Sales',9,3),(8,'West Direct Sales',10,4);
/*!40000 ALTER TABLE `_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_group__user`
--

DROP TABLE IF EXISTS `_group__user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_group__user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_group_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_resu__di_puorg_` (`_group_id`,`_user_id`),
  KEY `di_puorg_` (`_group_id`),
  KEY `di_resu_` (`_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_group__user`
--

LOCK TABLES `_group__user` WRITE;
/*!40000 ALTER TABLE `_group__user` DISABLE KEYS */;
INSERT INTO `_group__user` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `_group__user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_right`
--

DROP TABLE IF EXISTS `_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_right` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modulename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(11) DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_right`
--

LOCK TABLES `_right` WRITE;
/*!40000 ALTER TABLE `_right` DISABLE KEYS */;
INSERT INTO `_right` VALUES (1,'UsersModule','Login Via Web',1,3),(2,'UsersModule','Login Via Mobile',1,3),(3,'UsersModule','Login Via Web API',1,3),(4,'AccountsModule','Access Accounts Tab',1,3),(5,'AccountsModule','Create Accounts',1,3),(6,'AccountsModule','Delete Accounts',1,3),(7,'CampaignsModule','Access Campaigns Tab',1,3),(8,'CampaignsModule','Create Campaigns',1,3),(9,'CampaignsModule','Delete Campaigns',1,3),(10,'ContactsModule','Access Contacts Tab',1,3),(11,'ContactsModule','Create Contacts',1,3),(12,'ContactsModule','Delete Contacts',1,3),(13,'ConversationsModule','Access Conversations Tab',1,3),(14,'ConversationsModule','Create Conversations',1,3),(15,'ConversationsModule','Delete Conversations',1,3),(16,'EmailMessagesModule','Access Emails Tab',1,3),(17,'EmailMessagesModule','Create Emails',1,3),(18,'EmailMessagesModule','Delete Emails',1,3),(19,'EmailTemplatesModule','Access Email Templates',1,3),(20,'EmailTemplatesModule','Create Email Templates',1,3),(21,'EmailTemplatesModule','Delete Email Templates',1,3),(22,'LeadsModule','Access Leads Tab',1,3),(23,'LeadsModule','Create Leads',1,3),(24,'LeadsModule','Delete Leads',1,3),(25,'LeadsModule','Convert Leads',1,3),(26,'OpportunitiesModule','Access Opportunities Tab',1,3),(27,'OpportunitiesModule','Create Opportunities',1,3),(28,'OpportunitiesModule','Delete Opportunities',1,3),(29,'MarketingModule','Access Marketing Tab',1,3),(30,'MarketingListsModule','Access Marketing Lists Tab',1,3),(31,'MarketingListsModule','Create Marketing Lists',1,3),(32,'MarketingListsModule','Delete Marketing Lists',1,3),(33,'MeetingsModule','Access Meetings',1,3),(34,'MeetingsModule','Create Meetings',1,3),(35,'MeetingsModule','Delete Meetings',1,3),(36,'MissionsModule','Access Missions Tab',1,3),(37,'MissionsModule','Create Missions',1,3),(38,'MissionsModule','Delete Missions',1,3),(39,'NotesModule','Access Notes',1,3),(40,'NotesModule','Create Notes',1,3),(41,'NotesModule','Delete Notes',1,3),(42,'ReportsModule','Access Reports Tab',1,3),(43,'ReportsModule','Create Reports',1,3),(44,'ReportsModule','Delete Reports',1,3),(45,'TasksModule','Access Tasks',1,3),(46,'TasksModule','Create Tasks',1,3),(47,'TasksModule','Delete Tasks',1,3),(48,'HomeModule','Access Dashboards',1,3),(49,'HomeModule','Create Dashboards',1,3),(50,'HomeModule','Delete Dashboards',1,3),(51,'ExportModule','Access Export Tool',1,3),(52,'SocialItemsModule','Access Social Items',1,3),(53,'ProductsModule','Access Products Tab',1,3),(54,'ProductsModule','Create Products',1,3),(55,'ProductsModule','Delete Products',1,3),(56,'ProductTemplatesModule','Access Catalog Items Tab',1,3),(57,'ProductTemplatesModule','Create Catalog Items',1,3),(58,'ProductTemplatesModule','Delete Catalog Items',1,3),(59,'ProjectsModule','Access Projects Tab',1,3),(60,'ProjectsModule','Create Projects',1,3),(61,'ProjectsModule','Delete Projects',1,3),(62,'CalendarsModule','Access Calandar Tab',1,3),(63,'CalendarsModule','Create Calendar',1,3),(64,'CalendarsModule','Delete Calendar',1,3),(65,'UsersModule','Login Via Mobile',2,4),(66,'UsersModule','Login Via Web',2,4),(67,'UsersModule','Login Via Web API',2,4);
/*!40000 ALTER TABLE `_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_user`
--

DROP TABLE IF EXISTS `_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedavatardata` text COLLATE utf8_unicode_ci,
  `isactive` tinyint(1) unsigned DEFAULT NULL,
  `isrootuser` tinyint(1) unsigned DEFAULT NULL,
  `hidefromselecting` tinyint(1) unsigned DEFAULT NULL,
  `issystemuser` tinyint(1) unsigned DEFAULT NULL,
  `hidefromleaderboard` tinyint(1) unsigned DEFAULT NULL,
  `lastlogindatetime` datetime DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  `person_id` int(11) unsigned DEFAULT NULL,
  `currency_id` int(11) unsigned DEFAULT NULL,
  `manager__user_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_emanresu` (`username`),
  KEY `permitable_id` (`permitable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user`
--

LOCK TABLES `_user` WRITE;
/*!40000 ALTER TABLE `_user` DISABLE KEYS */;
INSERT INTO `_user` VALUES (1,'$2y$12$7xnoqnA7WpgvZ9kmer1qX.o1ZQqOBlC8qFFDF.nIajyTcAq2/1U9m',NULL,NULL,'America/Chicago','super','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,1,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL),(2,'$2y$12$.PqtzHj./6V.z7M06XgOHO697LxRyCnCCh7kLZxkGjEoTZhrPccWi',NULL,NULL,'America/Chicago','backendjoboractionuser',NULL,0,NULL,1,1,1,NULL,4,2,NULL,NULL,NULL),(3,'$2y$12$ncgpYop33ZVjFwfrDjYR8u3g.BkiH.pCu/rgyFR8InbLeOIS72/TC','en',NULL,'America/Chicago','admin','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:11',11,3,3,NULL,1),(4,'$2y$12$m4vtb13GHYWuEsVaYa1H5OSK9axxbvow3e1UxTUkHwOGp0pTmm3M2','en',NULL,'America/Chicago','jim','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:12',12,4,3,NULL,2),(5,'$2y$12$3KxLYqGuWz2NSt0VhViFueIvSgmLCw0kLH9L/hGg5Q0WFfV4hErPS','en',NULL,'America/Chicago','john','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:13',13,5,3,NULL,2),(6,'$2y$12$VztQ45F47fcwdGRKz9wBv.WC02Si0kHuV6aDoBv5CynfjF/R70hV2','en',NULL,'America/Chicago','sally','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:13',14,6,3,NULL,2),(7,'$2y$12$YUrDKK7.frfSIkGUdwYXwe/AGepLZJa6vs2r.v5nMODfZYnCD5DIK','en',NULL,'America/Chicago','mary','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:14',15,7,3,NULL,2),(8,'$2y$12$7bGUTtaW/vrhlZZDWwrP8OeWS5q0THbHVxgn9TrjSVfLpIIOaHczG','en',NULL,'America/Chicago','katie','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:14',16,8,3,NULL,2),(9,'$2y$12$456QIdzaZrJTY7BkWqBLeeXH18I79AYfGHNPWfWoXeZO8RYTv4D/y','en',NULL,'America/Chicago','jill','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:15',17,9,3,NULL,2),(10,'$2y$12$vx668Vi9TvELDPmXPxiacOpgeo6hpx3ilK0cy7OVdQYe46YYLWbSm','en',NULL,'America/Chicago','sam','a:2:{s:10:\"avatarType\";i:2;s:24:\"customAvatarEmailAddress\";N;}',1,NULL,NULL,NULL,NULL,'2015-02-10 16:12:15',18,10,3,NULL,2);
/*!40000 ALTER TABLE `_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_user_meeting`
--

DROP TABLE IF EXISTS `_user_meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_user_meeting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_resu__di_gniteem` (`meeting_id`,`_user_id`),
  KEY `di_gniteem` (`meeting_id`),
  KEY `di_resu_` (`_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_user_meeting`
--

LOCK TABLES `_user_meeting` WRITE;
/*!40000 ALTER TABLE `_user_meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `_user_meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `annualrevenue` double DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `employees` int(11) DEFAULT NULL,
  `latestactivitydatetime` datetime DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officefax` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `billingaddress_address_id` int(11) unsigned DEFAULT NULL,
  `industry_customfield_id` int(11) unsigned DEFAULT NULL,
  `primaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `secondaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `shippingaddress_address_id` int(11) unsigned DEFAULT NULL,
  `type_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,178000000,NULL,450,NULL,'Initech','748-451-5984','255-411-2929','http://www.Unnamed.com',7,NULL,9,9,10,NULL,NULL,10),(2,426000000,NULL,420,NULL,'U.S. Robotics and Mechanical Men','457-727-3812','482-205-3170','http://www.Unnamed.com',8,NULL,10,11,11,NULL,NULL,12),(3,743000000,NULL,760,NULL,'Widget Corp','632-611-4578','854-821-3719','http://www.Unnamed.com',9,NULL,11,13,12,NULL,NULL,14),(4,1000000,NULL,80,NULL,'Tessier-Ashpool','492-242-9688','706-336-4013','http://www.Unnamed.com',10,NULL,12,15,13,NULL,NULL,16),(5,749000000,NULL,790,NULL,'Demo Company','223-852-7246','803-283-9726','http://www.Unnamed.com',11,NULL,13,17,14,NULL,NULL,18),(6,280000000,NULL,690,NULL,'Chasers','213-650-6978','688-835-5604','http://www.Unnamed.com',12,NULL,14,19,15,NULL,NULL,20);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_project`
--

DROP TABLE IF EXISTS `account_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_tcejorp_di_tnuocca` (`account_id`,`project_id`),
  KEY `di_tnuocca` (`account_id`),
  KEY `di_tcejorp` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_project`
--

LOCK TABLES `account_project` WRITE;
/*!40000 ALTER TABLE `account_project` DISABLE KEYS */;
INSERT INTO `account_project` VALUES (1,1,1),(4,1,4),(3,3,3),(6,3,6),(2,4,2),(5,4,5);
/*!40000 ALTER TABLE `account_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_read`
--

DROP TABLE IF EXISTS `account_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `account_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_read`
--

LOCK TABLES `account_read` WRITE;
/*!40000 ALTER TABLE `account_read` DISABLE KEYS */;
INSERT INTO `account_read` VALUES (1,7,'R1',1),(2,8,'R1',1),(3,9,'R1',1),(4,10,'R1',1),(5,11,'R1',1),(6,12,'R1',1);
/*!40000 ALTER TABLE `account_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_read_subscription`
--

DROP TABLE IF EXISTS `account_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_read_subscription`
--

LOCK TABLES `account_read_subscription` WRITE;
/*!40000 ALTER TABLE `account_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_read_subscription_temp_build`
--

DROP TABLE IF EXISTS `account_read_subscription_temp_build`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_read_subscription_temp_build` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_read_subscription_temp_build`
--

LOCK TABLES `account_read_subscription_temp_build` WRITE;
/*!40000 ALTER TABLE `account_read_subscription_temp_build` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_read_subscription_temp_build` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountaccountaffiliation`
--

DROP TABLE IF EXISTS `accountaccountaffiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountaccountaffiliation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT NULL,
  `primaryaccountaffiliation_account_id` int(11) unsigned DEFAULT NULL,
  `secondaryaccountaffiliation_account_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountaccountaffiliation`
--

LOCK TABLES `accountaccountaffiliation` WRITE;
/*!40000 ALTER TABLE `accountaccountaffiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountaccountaffiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountcontactaffiliation`
--

DROP TABLE IF EXISTS `accountcontactaffiliation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountcontactaffiliation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `primary` tinyint(1) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `role_customfield_id` int(11) unsigned DEFAULT NULL,
  `accountaffiliation_account_id` int(11) unsigned DEFAULT NULL,
  `contactaffiliation_contact_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountcontactaffiliation`
--

LOCK TABLES `accountcontactaffiliation` WRITE;
/*!40000 ALTER TABLE `accountcontactaffiliation` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountcontactaffiliation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountstarred`
--

DROP TABLE IF EXISTS `accountstarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountstarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_account_id` (`basestarredmodel_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountstarred`
--

LOCK TABLES `accountstarred` WRITE;
/*!40000 ALTER TABLE `accountstarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `accountstarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activelanguage`
--

DROP TABLE IF EXISTS `activelanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activelanguage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nativename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activationdatetime` datetime DEFAULT NULL,
  `lastupdatedatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activelanguage`
--

LOCK TABLES `activelanguage` WRITE;
/*!40000 ALTER TABLE `activelanguage` DISABLE KEYS */;
/*!40000 ALTER TABLE `activelanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latestdatetime` datetime DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'2015-02-28 16:12:39',120),(2,'2015-03-31 16:12:40',121),(3,'2015-03-17 16:12:40',122),(4,'2015-03-16 16:12:40',123),(5,'2015-02-19 16:12:40',124),(6,'2015-03-27 16:12:40',125),(7,'2015-03-08 16:12:40',126),(8,'2015-03-06 16:12:40',127),(9,'2015-03-03 16:12:40',128),(10,'2015-02-19 16:12:40',129),(11,'2015-02-28 16:12:40',130),(12,'2015-02-18 16:12:40',131),(13,'2015-03-06 16:12:40',132),(14,'2015-03-31 16:12:40',133),(15,'2015-04-07 16:12:40',134),(16,'2015-02-14 16:12:40',135),(17,'2015-04-05 16:12:40',136),(18,'2015-03-14 16:12:40',137),(19,'2015-01-24 16:12:40',138),(20,'2015-02-08 16:12:40',139),(21,'2015-01-30 16:12:40',140),(22,'2015-02-01 16:12:40',141),(23,'2015-02-03 16:12:40',142),(24,'2015-01-17 16:12:40',143),(25,'2015-02-02 16:12:40',144),(26,'2015-01-30 16:12:40',145),(27,'2015-01-18 16:12:40',146),(28,'2015-02-06 16:12:40',147),(29,'2015-02-06 16:12:41',148),(30,'2015-02-05 16:12:41',149),(31,'2015-02-04 16:12:41',150),(32,'2015-01-22 16:12:41',151),(33,'2015-02-07 16:12:41',152),(34,'2015-02-05 16:12:41',153),(35,'2015-02-05 16:12:41',154),(36,'2015-01-13 16:12:41',155),(37,'2014-12-30 16:12:42',160),(38,'2014-08-12 16:12:42',161),(39,'2014-07-26 16:12:42',162),(40,'2014-10-08 16:12:42',163),(41,'2014-08-28 16:12:42',164),(42,'2014-08-12 16:12:42',165),(43,'2015-01-07 16:12:42',166),(44,'2014-10-10 16:12:42',167),(45,'2014-09-06 16:12:42',168),(46,'2015-01-03 16:12:42',169),(47,'2014-10-06 16:12:42',170),(48,'2014-09-21 16:12:42',171),(49,'2014-11-11 16:12:42',172),(50,'2014-10-26 16:12:42',173),(51,'2014-12-17 16:12:42',174),(52,'2014-09-01 16:12:42',175),(53,'2014-12-12 16:12:42',176),(54,'2014-10-04 16:12:42',177),(55,'2015-02-10 16:12:48',243),(56,'2015-02-10 16:12:49',253),(57,'2015-02-10 16:12:49',256),(58,'2015-02-10 16:12:49',263),(59,'2015-02-10 16:12:50',264),(60,'2015-02-10 16:12:50',265),(61,'2015-02-10 16:12:50',266),(62,'2015-02-10 16:12:50',267),(63,'2015-02-10 16:12:50',268),(64,'2015-02-10 16:12:50',269),(65,'2015-02-10 16:12:50',270),(66,'2015-02-10 16:12:50',271),(67,'2015-02-10 16:12:51',272),(68,'2015-02-10 16:12:51',273),(69,'2015-02-10 16:12:51',274),(70,'2015-02-10 16:12:51',275),(71,'2015-02-10 16:12:51',276),(72,'2015-02-10 16:12:51',277),(73,'2015-02-10 16:12:51',278),(74,'2015-02-10 16:12:51',279),(75,'2015-02-10 16:12:51',280),(76,'0000-00-00 00:00:00',291),(77,'0000-00-00 00:00:00',292),(78,'2015-02-10 16:12:54',293),(79,'2015-02-10 16:12:54',294),(80,'2015-02-10 16:12:54',295),(81,'0000-00-00 00:00:00',296),(82,'2015-02-10 16:12:56',297),(83,'2015-02-10 16:12:57',298),(84,'2015-02-10 16:12:57',299),(85,'2015-02-10 16:12:58',300),(86,'2015-02-10 16:12:58',302),(87,'0000-00-00 00:00:00',303),(88,'2015-02-10 16:13:00',304),(89,'2015-02-10 16:13:00',305),(90,'2015-02-10 16:13:01',306),(91,'2015-02-10 16:13:01',307),(92,'0000-00-00 00:00:00',308),(93,'0000-00-00 00:00:00',309),(94,'0000-00-00 00:00:00',310),(95,'2015-02-10 16:13:04',311),(96,'2015-02-10 16:13:04',313),(97,'0000-00-00 00:00:00',314),(98,'2015-02-10 16:13:06',315),(99,'2015-02-10 16:13:06',316),(100,'2015-02-10 16:13:07',317),(101,'2015-02-10 16:13:07',318),(102,'2015-02-10 16:13:08',319),(103,'2015-02-10 16:13:08',320),(104,'0000-00-00 00:00:00',321),(105,'2015-02-10 16:13:10',322),(106,'2015-02-10 16:13:10',324),(107,'2015-02-10 16:13:11',325),(108,'2015-02-10 16:13:11',326),(109,'2015-02-10 16:13:12',327),(110,'2015-02-10 16:13:12',328),(111,'2015-02-10 16:13:13',329),(112,'2015-02-10 16:13:13',330),(113,'2015-02-10 16:13:14',331),(114,'2015-02-10 16:13:15',332),(115,'0000-00-00 00:00:00',333),(116,'2015-02-10 16:13:16',335),(117,'2015-02-10 16:13:17',336),(118,'2015-02-10 16:13:17',337),(119,'2015-02-10 16:13:18',338),(120,'2015-02-10 16:13:18',339),(121,'2015-02-10 16:13:19',340),(122,'2015-02-10 16:13:20',341),(123,'2015-02-10 16:13:20',342),(124,'2015-02-10 16:13:21',343),(125,'2015-02-10 16:13:21',344),(126,'2015-02-10 16:13:22',346),(127,'0000-00-00 00:00:00',347),(128,'2015-02-10 16:13:23',348),(129,'2015-02-10 16:13:24',349),(130,'2015-02-10 16:13:24',350),(131,'0000-00-00 00:00:00',351),(132,'2015-02-10 16:13:26',352),(133,'2015-02-10 16:13:26',353),(134,'0000-00-00 00:00:00',354),(135,'0000-00-00 00:00:00',355);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_item`
--

DROP TABLE IF EXISTS `activity_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_ytivitca` (`activity_id`,`item_id`),
  KEY `di_ytivitca` (`activity_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_item`
--

LOCK TABLES `activity_item` WRITE;
/*!40000 ALTER TABLE `activity_item` DISABLE KEYS */;
INSERT INTO `activity_item` VALUES (3,1,37),(2,1,52),(1,1,342),(6,2,37),(5,2,53),(4,2,346),(9,3,37),(8,3,53),(7,3,340),(12,4,34),(11,4,54),(10,4,339),(15,5,35),(14,5,51),(13,5,337),(18,6,34),(17,6,54),(16,6,339),(21,7,37),(20,7,53),(19,7,340),(24,8,35),(23,8,45),(22,8,343),(27,9,34),(26,9,54),(25,9,339),(30,10,35),(29,10,51),(28,10,337),(33,11,35),(32,11,51),(31,11,336),(36,12,35),(35,12,51),(34,12,337),(39,13,39),(38,13,56),(37,13,335),(42,14,37),(41,14,52),(40,14,342),(45,15,37),(44,15,52),(43,15,342),(48,16,37),(47,16,52),(46,16,342),(51,17,35),(50,17,45),(49,17,343),(54,18,34),(53,18,54),(52,18,339),(57,19,35),(56,19,45),(55,19,341),(60,20,37),(59,20,53),(58,20,346),(63,21,37),(62,21,52),(61,21,342),(66,22,37),(65,22,52),(64,22,342),(69,23,38),(68,23,50),(67,23,344),(72,24,39),(71,24,56),(70,24,335),(75,25,37),(74,25,53),(73,25,340),(78,26,37),(77,26,53),(76,26,340),(81,27,37),(80,27,52),(79,27,342),(84,28,39),(83,28,49),(82,28,338),(87,29,37),(86,29,52),(85,29,342),(90,30,34),(89,30,54),(88,30,339),(93,31,37),(92,31,52),(91,31,342),(96,32,35),(95,32,51),(94,32,336),(99,33,37),(98,33,53),(97,33,346),(102,34,38),(101,34,50),(100,34,344),(105,35,35),(104,35,45),(103,35,341),(108,36,35),(107,36,45),(106,36,343),(111,37,39),(110,37,49),(109,37,338),(114,38,39),(113,38,56),(112,38,335),(117,39,35),(116,39,51),(115,39,345),(120,40,37),(119,40,53),(118,40,346),(123,41,37),(122,41,52),(121,41,342),(126,42,37),(125,42,53),(124,42,340),(129,43,35),(128,43,51),(127,43,345),(132,44,38),(131,44,50),(130,44,344),(135,45,39),(134,45,56),(133,45,335),(138,46,34),(137,46,54),(136,46,339),(141,47,34),(140,47,54),(139,47,339),(144,48,35),(143,48,45),(142,48,341),(147,49,34),(146,49,54),(145,49,339),(150,50,35),(149,50,51),(148,50,345),(153,51,38),(152,51,50),(151,51,344),(156,52,37),(155,52,53),(154,52,346),(159,53,35),(158,53,51),(157,53,337),(162,54,37),(161,54,53),(160,54,346),(163,55,39),(164,56,36),(165,57,38),(168,58,34),(167,58,54),(166,58,339),(171,59,39),(170,59,56),(169,59,335),(174,60,34),(173,60,54),(172,60,339),(177,61,34),(176,61,54),(175,61,339),(180,62,35),(179,62,51),(178,62,337),(183,63,38),(182,63,50),(181,63,344),(186,64,37),(185,64,53),(184,64,346),(189,65,35),(188,65,51),(187,65,345),(192,66,34),(191,66,54),(190,66,339),(195,67,34),(194,67,54),(193,67,339),(198,68,37),(197,68,53),(196,68,340),(201,69,37),(200,69,53),(199,69,346),(204,70,37),(203,70,52),(202,70,342),(207,71,35),(206,71,51),(205,71,337),(210,72,35),(209,72,51),(208,72,337),(213,73,35),(212,73,51),(211,73,336),(216,74,35),(215,74,45),(214,74,343),(219,75,39),(218,75,49),(217,75,338);
/*!40000 ALTER TABLE `activity_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual_permissions_cache`
--

DROP TABLE IF EXISTS `actual_permissions_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual_permissions_cache` (
  `securableitem_id` int(11) unsigned NOT NULL,
  `permitable_id` int(11) unsigned NOT NULL,
  `allow_permissions` tinyint(3) unsigned NOT NULL,
  `deny_permissions` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`securableitem_id`,`permitable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_permissions_cache`
--

LOCK TABLES `actual_permissions_cache` WRITE;
/*!40000 ALTER TABLE `actual_permissions_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `actual_permissions_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actual_rights_cache`
--

DROP TABLE IF EXISTS `actual_rights_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actual_rights_cache` (
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry` int(11) unsigned NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actual_rights_cache`
--

LOCK TABLES `actual_rights_cache` WRITE;
/*!40000 ALTER TABLE `actual_rights_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `actual_rights_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalid` tinyint(1) unsigned DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `postalcode` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Philadelphia',NULL,0,NULL,NULL,'19102','10263 South Franklin Center',NULL,'PA'),(2,'San Antonio',NULL,0,NULL,NULL,'78266','29114 West Maple Creek',NULL,'TX'),(3,'Los Angeles',NULL,0,NULL,NULL,'90009','16162 South Oak Street',NULL,'CA'),(4,'Milwaukee',NULL,0,NULL,NULL,'53233','9268 North View Parkway',NULL,'WI'),(5,'Indianapolis',NULL,0,NULL,NULL,'46234','37402 East Battery Trail',NULL,'IN'),(6,'Dallas',NULL,0,NULL,NULL,'75233','6075 North Lake Parkway',NULL,'TX'),(7,'Dallas',NULL,0,NULL,NULL,'75233','29263 West Pine Circle',NULL,'TX'),(8,'San Diego',NULL,0,NULL,NULL,'92101','24656 North Arlington Trail',NULL,'CA'),(9,'New York',NULL,0,NULL,NULL,'10001','22358 South Elm Lane',NULL,'NY'),(10,'Los Angeles',NULL,0,NULL,NULL,'90009','1170 West Arlington Ave',NULL,'CA'),(11,'New York',NULL,0,NULL,NULL,'10169','35722 South Thomas Center',NULL,'NY'),(12,'Dallas',NULL,0,NULL,NULL,'75233','20935 East Thomas Court',NULL,'TX'),(13,'San Jose',NULL,0,NULL,NULL,'95148','5329 East Spring Parkway',NULL,'CA'),(14,'Baltimore',NULL,0,NULL,NULL,'21215','10350 West Oak Blvd',NULL,'MD'),(15,'Philadelphia',NULL,0,NULL,NULL,'19152','14399 North Washington Center',NULL,'PA'),(16,'Phoenix',NULL,0,NULL,NULL,'85050','8947 West Lake Parkway',NULL,'AZ'),(17,'Boston',NULL,0,NULL,NULL,'02101','21127 West Spring Creek',NULL,'MA'),(18,'Indianapolis',NULL,0,NULL,NULL,'46234','31441 North Battery Creek',NULL,'IN'),(19,'Indianapolis',NULL,0,NULL,NULL,'46234','10383 West Maple Street',NULL,'IN'),(20,'Boston',NULL,0,NULL,NULL,'02101','5961 West Park Street',NULL,'MA'),(21,'Boston',NULL,0,NULL,NULL,'02119','14143 West Busse Blvd',NULL,'MA'),(22,'Los Angeles',NULL,0,NULL,NULL,'90009','16019 East Lake Creek',NULL,'CA'),(23,'Indianapolis',NULL,0,NULL,NULL,'46234','4047 East View Creek',NULL,'IN'),(24,'Philadelphia',NULL,0,NULL,NULL,'19142','26768 East Lake Ave',NULL,'PA'),(25,'Indianapolis',NULL,0,NULL,NULL,'46201','28745 West Oak Court',NULL,'IN'),(26,'Chicago',NULL,0,NULL,NULL,'60601','20174 South Ontario Court',NULL,'IL'),(27,'Chicago',NULL,0,NULL,NULL,'60652','1141 East Hill Creek',NULL,'IL'),(28,'Austin',NULL,0,NULL,NULL,'78732','34633 South Cedar Court',NULL,'TX'),(29,'San Francisco',NULL,0,NULL,NULL,'94108','3220 South Maple Lane',NULL,'CA'),(30,'Phoenix',NULL,0,NULL,NULL,'85021','37317 East Second Parkway',NULL,'AZ'),(31,'Los Angeles',NULL,0,NULL,NULL,'90010','37748 West Lake Road',NULL,'CA'),(32,'New York',NULL,0,NULL,NULL,'10282','6641 West Cedar Blvd',NULL,'NY'),(33,'New York',NULL,0,NULL,NULL,'10001','18224 South Oak Court',NULL,'NY'),(34,'Austin',NULL,0,NULL,NULL,'78732','35014 West Michigan Trail',NULL,'TX'),(35,'San Diego',NULL,0,NULL,NULL,'92129','4374 West Ontario Trail',NULL,'CA'),(36,'Austin',NULL,0,NULL,NULL,'78701','13705 East Third Lane',NULL,'TX'),(37,'Detroit',NULL,0,NULL,NULL,'48242','37130 North Thompson Street',NULL,'MI'),(38,'Dallas',NULL,0,NULL,NULL,'75233','26928 East Oak Circle',NULL,'TX');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditevent`
--

DROP TABLE IF EXISTS `auditevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditevent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `eventname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modulename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditevent`
--

LOCK TABLES `auditevent` WRITE;
/*!40000 ALTER TABLE `auditevent` DISABLE KEYS */;
INSERT INTO `auditevent` VALUES (1,'2015-02-10 16:12:08','Item Created','ZurmoModule','User',1,'s:10:\"Super User\";',1),(2,'2015-02-10 16:12:08','User Password Changed','UsersModule','User',1,'s:5:\"super\";',1),(3,'2015-02-10 16:12:08','Item Modified','ZurmoModule','User',1,'a:4:{i:0;s:10:\"Super User\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(4,'2015-02-10 16:12:08','Item Created','ZurmoModule','Group',1,'s:20:\"Super Administrators\";',1),(5,'2015-02-10 16:12:08','Item Created','ZurmoModule','ImageFileModel',1,'s:10:\"200x50.gif\";',1),(6,'2015-02-10 16:12:08','Item Created','ZurmoModule','ImageFileModel',2,'s:11:\"200x200.gif\";',1),(7,'2015-02-10 16:12:08','Item Created','ZurmoModule','ImageFileModel',3,'s:11:\"580x180.gif\";',1),(8,'2015-02-10 16:12:08','Item Created','ZurmoModule','ImageFileModel',4,'s:14:\"googleMaps.png\";',1),(9,'2015-02-10 16:12:08','Item Created','ZurmoModule','Group',2,'s:8:\"Everyone\";',1),(10,'2015-02-10 16:12:08','Item Created','ZurmoModule','EmailTemplate',1,'s:5:\"Blank\";',1),(11,'2015-02-10 16:12:08','Item Created','ZurmoModule','EmailTemplate',2,'s:8:\"1 Column\";',1),(12,'2015-02-10 16:12:08','Item Created','ZurmoModule','EmailTemplate',3,'s:9:\"2 Columns\";',1),(13,'2015-02-10 16:12:08','Item Created','ZurmoModule','EmailTemplate',4,'s:27:\"2 Columns with strong right\";',1),(14,'2015-02-10 16:12:08','Item Created','ZurmoModule','EmailTemplate',5,'s:9:\"3 Columns\";',1),(15,'2015-02-10 16:12:08','Item Created','ZurmoModule','EmailTemplate',6,'s:19:\"3 Columns with Hero\";',1),(16,'2015-02-10 16:12:09','Item Created','ZurmoModule','User',2,'s:11:\"System User\";',1),(17,'2015-02-10 16:12:09','User Password Changed','UsersModule','User',2,'s:22:\"backendjoboractionuser\";',1),(18,'2015-02-10 16:12:09','Item Modified','ZurmoModule','User',2,'a:4:{i:0;s:11:\"System User\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(19,'2015-02-10 16:12:09','Item Modified','ZurmoModule','User',2,'a:4:{i:0;s:11:\"System User\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:4:\"true\";i:3;s:5:\"false\";}',1),(20,'2015-02-10 16:12:09','Item Created','ZurmoModule','NotificationMessage',1,'s:6:\"(None)\";',1),(21,'2015-02-10 16:12:09','Item Created','ZurmoModule','Notification',1,'s:52:\"Remove the api test entry script for production use.\";',1),(22,'2015-02-10 16:12:11','Item Created','ZurmoModule','Group',3,'s:4:\"East\";',1),(23,'2015-02-10 16:12:11','Item Created','ZurmoModule','Group',4,'s:4:\"West\";',1),(24,'2015-02-10 16:12:11','Item Created','ZurmoModule','Group',5,'s:18:\"East Channel Sales\";',1),(25,'2015-02-10 16:12:11','Item Created','ZurmoModule','Group',6,'s:18:\"West Channel Sales\";',1),(26,'2015-02-10 16:12:11','Item Created','ZurmoModule','Group',7,'s:17:\"East Direct Sales\";',1),(27,'2015-02-10 16:12:11','Item Created','ZurmoModule','Group',8,'s:17:\"West Direct Sales\";',1),(28,'2015-02-10 16:12:11','Item Created','ZurmoModule','Role',1,'s:9:\"Executive\";',1),(29,'2015-02-10 16:12:11','Item Created','ZurmoModule','Role',2,'s:7:\"Manager\";',1),(30,'2015-02-10 16:12:11','Item Created','ZurmoModule','Role',3,'s:9:\"Associate\";',1),(31,'2015-02-10 16:12:11','Item Modified','ZurmoModule','User',1,'a:4:{i:0;s:10:\"Super User\";i:1;a:2:{i:0;s:12:\"primaryEmail\";i:1;s:12:\"emailAddress\";}i:2;N;i:3;s:25:\"Super.test@test.zurmo.com\";}',1),(32,'2015-02-10 16:12:12','Item Created','ZurmoModule','User',3,'s:10:\"Jason Blue\";',1),(33,'2015-02-10 16:12:12','User Password Changed','UsersModule','User',3,'s:5:\"admin\";',1),(34,'2015-02-10 16:12:12','Item Modified','ZurmoModule','User',3,'a:4:{i:0;s:10:\"Jason Blue\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(35,'2015-02-10 16:12:12','Item Modified','ZurmoModule','User',3,'a:4:{i:0;s:10:\"Jason Blue\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-41;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:1;i:2;s:9:\"Executive\";}}',1),(36,'2015-02-10 16:12:12','Item Created','ZurmoModule','User',4,'s:9:\"Jim Smith\";',1),(37,'2015-02-10 16:12:12','User Password Changed','UsersModule','User',4,'s:3:\"jim\";',1),(38,'2015-02-10 16:12:12','Item Modified','ZurmoModule','User',4,'a:4:{i:0;s:9:\"Jim Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(39,'2015-02-10 16:12:12','Item Modified','ZurmoModule','User',4,'a:4:{i:0;s:9:\"Jim Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-52;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(40,'2015-02-10 16:12:13','Item Created','ZurmoModule','User',5,'s:10:\"John Smith\";',1),(41,'2015-02-10 16:12:13','User Password Changed','UsersModule','User',5,'s:4:\"john\";',1),(42,'2015-02-10 16:12:13','Item Modified','ZurmoModule','User',5,'a:4:{i:0;s:10:\"John Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(43,'2015-02-10 16:12:13','Item Modified','ZurmoModule','User',5,'a:4:{i:0;s:10:\"John Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-63;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(44,'2015-02-10 16:12:13','Item Created','ZurmoModule','User',6,'s:11:\"Sally Smith\";',1),(45,'2015-02-10 16:12:13','User Password Changed','UsersModule','User',6,'s:5:\"sally\";',1),(46,'2015-02-10 16:12:13','Item Modified','ZurmoModule','User',6,'a:4:{i:0;s:11:\"Sally Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(47,'2015-02-10 16:12:13','Item Modified','ZurmoModule','User',6,'a:4:{i:0;s:11:\"Sally Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-74;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(48,'2015-02-10 16:12:14','Item Created','ZurmoModule','User',7,'s:10:\"Mary Smith\";',1),(49,'2015-02-10 16:12:14','User Password Changed','UsersModule','User',7,'s:4:\"mary\";',1),(50,'2015-02-10 16:12:14','Item Modified','ZurmoModule','User',7,'a:4:{i:0;s:10:\"Mary Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(51,'2015-02-10 16:12:14','Item Modified','ZurmoModule','User',7,'a:4:{i:0;s:10:\"Mary Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-85;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(52,'2015-02-10 16:12:14','Item Created','ZurmoModule','User',8,'s:11:\"Katie Smith\";',1),(53,'2015-02-10 16:12:14','User Password Changed','UsersModule','User',8,'s:5:\"katie\";',1),(54,'2015-02-10 16:12:14','Item Modified','ZurmoModule','User',8,'a:4:{i:0;s:11:\"Katie Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(55,'2015-02-10 16:12:14','Item Modified','ZurmoModule','User',8,'a:4:{i:0;s:11:\"Katie Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-96;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(56,'2015-02-10 16:12:15','Item Created','ZurmoModule','User',9,'s:10:\"Jill Smith\";',1),(57,'2015-02-10 16:12:15','User Password Changed','UsersModule','User',9,'s:4:\"jill\";',1),(58,'2015-02-10 16:12:15','Item Modified','ZurmoModule','User',9,'a:4:{i:0;s:10:\"Jill Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(59,'2015-02-10 16:12:15','Item Modified','ZurmoModule','User',9,'a:4:{i:0;s:10:\"Jill Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-107;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(60,'2015-02-10 16:12:15','Item Created','ZurmoModule','User',10,'s:9:\"Sam Smith\";',1),(61,'2015-02-10 16:12:15','User Password Changed','UsersModule','User',10,'s:3:\"sam\";',1),(62,'2015-02-10 16:12:15','Item Modified','ZurmoModule','User',10,'a:4:{i:0;s:9:\"Sam Smith\";i:1;a:1:{i:0;s:8:\"isActive\";}i:2;s:5:\"false\";i:3;s:4:\"true\";}',1),(63,'2015-02-10 16:12:15','Item Modified','ZurmoModule','User',10,'a:4:{i:0;s:9:\"Sam Smith\";i:1;a:1:{i:0;s:4:\"role\";}i:2;a:3:{i:0;s:4:\"Role\";i:1;i:-118;i:2;s:9:\"(Unnamed)\";}i:3;a:3:{i:0;s:4:\"Role\";i:1;i:2;i:2;s:7:\"Manager\";}}',1),(64,'2015-02-10 16:12:15','Item Created','ZurmoModule','Account',1,'s:7:\"Initech\";',1),(65,'2015-02-10 16:12:15','Item Created','ZurmoModule','Account',2,'s:32:\"U.S. Robotics and Mechanical Men\";',1),(66,'2015-02-10 16:12:15','Item Created','ZurmoModule','Account',3,'s:11:\"Widget Corp\";',1),(67,'2015-02-10 16:12:15','Item Created','ZurmoModule','Account',4,'s:15:\"Tessier-Ashpool\";',1),(68,'2015-02-10 16:12:15','Item Created','ZurmoModule','Account',5,'s:12:\"Demo Company\";',1),(69,'2015-02-10 16:12:15','Item Created','ZurmoModule','Account',6,'s:7:\"Chasers\";',1),(70,'2015-02-10 16:12:16','Item Created','ZurmoModule','MarketingList',1,'s:9:\"Prospects\";',1),(71,'2015-02-10 16:12:16','Item Created','ZurmoModule','MarketingList',2,'s:5:\"Sales\";',1),(72,'2015-02-10 16:12:16','Item Created','ZurmoModule','MarketingList',3,'s:7:\"Clients\";',1),(73,'2015-02-10 16:12:16','Item Created','ZurmoModule','MarketingList',4,'s:9:\"Companies\";',1),(74,'2015-02-10 16:12:16','Item Created','ZurmoModule','MarketingList',5,'s:10:\"New Offers\";',1),(75,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',1,'s:10:\"Lisa Moore\";',1),(76,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',2,'s:13:\"Gail Martinez\";',1),(77,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',3,'s:15:\"Stafford Walker\";',1),(78,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',4,'s:9:\"Ray Jones\";',1),(79,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',5,'s:10:\"Alex Clark\";',1),(80,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',6,'s:14:\"Sarah Robinson\";',1),(81,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',7,'s:10:\"Ruth Clark\";',1),(82,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',8,'s:13:\"Alex Williams\";',1),(83,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',9,'s:9:\"Nev Brown\";',1),(84,'2015-02-10 16:12:16','Item Created','ZurmoModule','Contact',10,'s:11:\"Betty Moore\";',1),(85,'2015-02-10 16:12:17','Item Created','ZurmoModule','Contact',11,'s:13:\"Walter Miller\";',1),(86,'2015-02-10 16:12:17','Item Created','ZurmoModule','Contact',12,'s:12:\"Sophie Allen\";',1),(87,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',5,'s:13:\"testImage.png\";',1),(88,'2015-02-10 16:12:19','Item Created','ZurmoModule','Autoresponder',1,'s:23:\"You are now subscribed.\";',1),(89,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',6,'s:11:\"testZip.zip\";',1),(90,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',7,'s:11:\"testZip.zip\";',1),(91,'2015-02-10 16:12:19','Item Created','ZurmoModule','Autoresponder',2,'s:21:\"You subscribed today.\";',1),(92,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',8,'s:17:\"testDocument.docx\";',1),(93,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',9,'s:12:\"testLogo.jpg\";',1),(94,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',10,'s:11:\"testPDF.pdf\";',1),(95,'2015-02-10 16:12:19','Item Created','ZurmoModule','Autoresponder',3,'s:24:\"You are now unsubscribed\";',1),(96,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',11,'s:11:\"testPDF.pdf\";',1),(97,'2015-02-10 16:12:19','Item Created','ZurmoModule','FileModel',12,'s:11:\"testPDF.pdf\";',1),(98,'2015-02-10 16:12:19','Item Created','ZurmoModule','Autoresponder',4,'s:47:\"Your unsubscription triggered the next big bang\";',1),(99,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',1,'s:5:\"Draft\";',1),(100,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',2,'s:5:\"Inbox\";',1),(101,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',3,'s:4:\"Sent\";',1),(102,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',4,'s:6:\"Outbox\";',1),(103,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',5,'s:12:\"Outbox Error\";',1),(104,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',6,'s:14:\"Outbox Failure\";',1),(105,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',7,'s:8:\"Archived\";',1),(106,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailFolder',8,'s:18:\"Archived Unmatched\";',1),(107,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailBox',1,'s:7:\"Default\";',1),(108,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',1,'s:37:\"2015-02-10 16:12:20: Betty Moore/Open\";',1),(109,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',2,'s:38:\"2015-02-10 16:12:20: Betty Moore/Click\";',1),(110,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',3,'s:36:\"2015-02-10 16:12:20: Ray Jones/Click\";',1),(111,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',4,'s:36:\"2015-02-10 16:12:20: Ray Jones/Click\";',1),(112,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',5,'s:37:\"2015-02-10 16:12:20: Ruth Clark/Click\";',1),(113,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',6,'s:38:\"2015-02-10 16:12:20: Betty Moore/Click\";',1),(114,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',7,'s:39:\"2015-02-10 16:12:20: Sophie Allen/Click\";',1),(115,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',8,'s:42:\"2015-02-10 16:12:20: Stafford Walker/Click\";',1),(116,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',9,'s:38:\"2015-02-10 16:12:20: Betty Moore/Click\";',1),(117,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',10,'s:40:\"2015-02-10 16:12:20: Sophie Allen/Bounce\";',1),(118,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',11,'s:42:\"2015-02-10 16:12:20: Stafford Walker/Click\";',1),(119,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',12,'s:42:\"2015-02-10 16:12:20: Stafford Walker/Click\";',1),(120,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',13,'s:39:\"2015-02-10 16:12:20: Sophie Allen/Click\";',1),(121,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',14,'s:38:\"2015-02-10 16:12:20: Sophie Allen/Open\";',1),(122,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',15,'s:41:\"2015-02-10 16:12:20: Sarah Robinson/Click\";',1),(123,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',16,'s:36:\"2015-02-10 16:12:20: Nev Brown/Click\";',1),(124,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',17,'s:39:\"2015-02-10 16:12:20: Sophie Allen/Click\";',1),(125,'2015-02-10 16:12:20','Item Created','ZurmoModule','AutoresponderItemActivity',18,'s:36:\"2015-02-10 16:12:20: Lisa Moore/Open\";',1),(126,'2015-02-10 16:12:20','Item Created','ZurmoModule','EmailMessage',1,'s:47:\"Your unsubscription triggered the next big bang\";',1),(127,'2015-02-10 16:12:21','Item Created','ZurmoModule','EmailMessage',2,'s:47:\"Your unsubscription triggered the next big bang\";',1),(128,'2015-02-10 16:12:21','Item Created','ZurmoModule','EmailMessage',3,'s:47:\"Your unsubscription triggered the next big bang\";',1),(129,'2015-02-10 16:12:22','Item Created','ZurmoModule','EmailMessage',4,'s:47:\"Your unsubscription triggered the next big bang\";',1),(130,'2015-02-10 16:12:22','Item Created','ZurmoModule','EmailMessage',5,'s:47:\"Your unsubscription triggered the next big bang\";',1),(131,'2015-02-10 16:12:23','Item Created','ZurmoModule','EmailMessage',6,'s:47:\"Your unsubscription triggered the next big bang\";',1),(132,'2015-02-10 16:12:23','Item Created','ZurmoModule','EmailMessage',7,'s:47:\"Your unsubscription triggered the next big bang\";',1),(133,'2015-02-10 16:12:24','Item Created','ZurmoModule','EmailMessage',8,'s:47:\"Your unsubscription triggered the next big bang\";',1),(134,'2015-02-10 16:12:24','Item Created','ZurmoModule','EmailMessage',9,'s:47:\"Your unsubscription triggered the next big bang\";',1),(135,'2015-02-10 16:12:25','Item Created','ZurmoModule','EmailMessage',10,'s:47:\"Your unsubscription triggered the next big bang\";',1),(136,'2015-02-10 16:12:25','Item Created','ZurmoModule','EmailMessage',11,'s:47:\"Your unsubscription triggered the next big bang\";',1),(137,'2015-02-10 16:12:26','Item Created','ZurmoModule','EmailMessage',12,'s:47:\"Your unsubscription triggered the next big bang\";',1),(138,'2015-02-10 16:12:26','Item Created','ZurmoModule','EmailMessage',13,'s:47:\"Your unsubscription triggered the next big bang\";',1),(139,'2015-02-10 16:12:27','Item Created','ZurmoModule','EmailMessage',14,'s:47:\"Your unsubscription triggered the next big bang\";',1),(140,'2015-02-10 16:12:27','Item Created','ZurmoModule','EmailMessage',15,'s:47:\"Your unsubscription triggered the next big bang\";',1),(141,'2015-02-10 16:12:28','Item Created','ZurmoModule','EmailMessage',16,'s:47:\"Your unsubscription triggered the next big bang\";',1),(142,'2015-02-10 16:12:28','Item Created','ZurmoModule','EmailMessage',17,'s:47:\"Your unsubscription triggered the next big bang\";',1),(143,'2015-02-10 16:12:29','Item Created','ZurmoModule','EmailMessage',18,'s:47:\"Your unsubscription triggered the next big bang\";',1),(144,'2015-02-10 16:12:29','Item Created','ZurmoModule','FileModel',13,'s:11:\"testPDF.pdf\";',1),(145,'2015-02-10 16:12:29','Item Created','ZurmoModule','FileModel',14,'s:12:\"testLogo.jpg\";',1),(146,'2015-02-10 16:12:29','Item Created','ZurmoModule','FileModel',15,'s:12:\"testLogo.jpg\";',1),(147,'2015-02-10 16:12:29','Item Created','ZurmoModule','Campaign',1,'s:28:\"10% discount for new clients\";',1),(148,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',16,'s:12:\"testNote.txt\";',1),(149,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',2,'s:32:\"5% discount for existing clients\";',1),(150,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',17,'s:11:\"testZip.zip\";',1),(151,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',18,'s:11:\"testPDF.pdf\";',1),(152,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',19,'s:11:\"testZip.zip\";',1),(153,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',3,'s:33:\"Infrastructure redesign completed\";',1),(154,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',20,'s:13:\"testImage.png\";',1),(155,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',21,'s:12:\"testNote.txt\";',1),(156,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',22,'s:12:\"testNote.txt\";',1),(157,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',23,'s:12:\"testNote.txt\";',1),(158,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',4,'s:14:\"Christmas Sale\";',1),(159,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',24,'s:12:\"testLogo.jpg\";',1),(160,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',25,'s:12:\"testLogo.jpg\";',1),(161,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',5,'s:16:\"Upgrade Complete\";',1),(162,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',26,'s:12:\"testLogo.jpg\";',1),(163,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',6,'s:31:\"Loyalty Program - Special Deals\";',1),(164,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',27,'s:13:\"testImage.png\";',1),(165,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',28,'s:12:\"testLogo.jpg\";',1),(166,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',29,'s:11:\"testPDF.pdf\";',1),(167,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',30,'s:13:\"testImage.png\";',1),(168,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',7,'s:27:\"Loyalty Member - Enroll Now\";',1),(169,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',31,'s:12:\"testLogo.jpg\";',1),(170,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',32,'s:12:\"testLogo.jpg\";',1),(171,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',33,'s:13:\"testImage.png\";',1),(172,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',34,'s:11:\"testPDF.pdf\";',1),(173,'2015-02-10 16:12:30','Item Created','ZurmoModule','Campaign',8,'s:28:\"Loyalty Members - Free Lunch\";',1),(174,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',35,'s:11:\"testPDF.pdf\";',1),(175,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',36,'s:12:\"testNote.txt\";',1),(176,'2015-02-10 16:12:30','Item Created','ZurmoModule','FileModel',37,'s:11:\"testZip.zip\";',1),(177,'2015-02-10 16:12:31','Item Created','ZurmoModule','Campaign',9,'s:32:\"Loyalty Members - Bring a friend\";',1),(178,'2015-02-10 16:12:31','Item Created','ZurmoModule','FileModel',38,'s:11:\"testZip.zip\";',1),(179,'2015-02-10 16:12:31','Item Created','ZurmoModule','FileModel',39,'s:11:\"testPDF.pdf\";',1),(180,'2015-02-10 16:12:31','Item Created','ZurmoModule','Campaign',10,'s:30:\"Loyalty Members - Trip to Rome\";',1),(181,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',1,'s:37:\"2015-02-10 16:12:31: Alex Clark/Click\";',1),(182,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',2,'s:38:\"2015-02-10 16:12:31: Ruth Clark/Bounce\";',1),(183,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',3,'s:36:\"2015-02-10 16:12:31: Ruth Clark/Open\";',1),(184,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',4,'s:40:\"2015-02-10 16:12:31: Gail Martinez/Click\";',1),(185,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',5,'s:37:\"2015-02-10 16:12:31: Betty Moore/Open\";',1),(186,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',6,'s:39:\"2015-02-10 16:12:31: Sophie Allen/Click\";',1),(187,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',7,'s:39:\"2015-02-10 16:12:31: Gail Martinez/Open\";',1),(188,'2015-02-10 16:12:31','Item Created','ZurmoModule','CampaignItemActivity',8,'s:37:\"2015-02-10 16:12:31: Ruth Clark/Click\";',1),(189,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',9,'s:37:\"2015-02-10 16:12:32: Alex Clark/Click\";',1),(190,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',10,'s:37:\"2015-02-10 16:12:32: Ruth Clark/Click\";',1),(191,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',11,'s:41:\"2015-02-10 16:12:32: Sarah Robinson/Click\";',1),(192,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',12,'s:40:\"2015-02-10 16:12:32: Walter Miller/Click\";',1),(193,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',13,'s:37:\"2015-02-10 16:12:32: Lisa Moore/Click\";',1),(194,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',14,'s:37:\"2015-02-10 16:12:32: Ruth Clark/Click\";',1),(195,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',15,'s:39:\"2015-02-10 16:12:32: Walter Miller/Open\";',1),(196,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',16,'s:40:\"2015-02-10 16:12:32: Gail Martinez/Click\";',1),(197,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',17,'s:36:\"2015-02-10 16:12:32: Lisa Moore/Open\";',1),(198,'2015-02-10 16:12:32','Item Created','ZurmoModule','CampaignItemActivity',18,'s:40:\"2015-02-10 16:12:32: Gail Martinez/Click\";',1),(199,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',19,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(200,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',20,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(201,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',21,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(202,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',22,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(203,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',23,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(204,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',24,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(205,'2015-02-10 16:12:32','Item Created','ZurmoModule','EmailMessage',25,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(206,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',26,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(207,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',27,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(208,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',28,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(209,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',29,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(210,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',30,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(211,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',31,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(212,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',32,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(213,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',33,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(214,'2015-02-10 16:12:33','Item Created','ZurmoModule','EmailMessage',34,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(215,'2015-02-10 16:12:34','Item Created','ZurmoModule','EmailMessage',35,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(216,'2015-02-10 16:12:34','Item Created','ZurmoModule','EmailMessage',36,'s:43:\"Special Offer: 10% Discount for new clients\";',1),(217,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',1,'s:16:\"Interesting Idea\";',1),(218,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',2,'s:74:\"I am not sure Mars is best.  What about Titan?  It offers some advantages.\";',1),(219,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',3,'s:30:\"Are we allowed to hire aliens?\";',1),(220,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',4,'s:236:\"Some info about Mars: Mars is the fourth planet from the Sun in the Solar System. Named after the Roman god of war, Mars, it is often described as the \"Red Planet\" as the iron oxide prevalent on its surface gives it a reddish appearance\";',1),(221,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',5,'s:32:\"Great idea guys. Keep it coming.\";',1),(222,'2015-02-10 16:12:34','Item Created','ZurmoModule','Conversation',1,'s:65:\"Should we consider building a new corporate headquarters on Mars?\";',1),(223,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',6,'s:19:\"Elephants are cool.\";',1),(224,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',7,'s:319:\"What about giraffes.  Here is some info: he giraffe (Giraffa camelopardalis) is an African even-toed ungulate mammal, the tallest living terrestrial animal and the largest ruminant. Its specific name refers to its camel-like face and the patches of color on its fur, which bear a vague resemblance to a leopard\'s spots.\";',1),(225,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',8,'s:61:\"I think something like a snake eating a mouse could be funny.\";',1),(226,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',9,'s:32:\"Great idea guys. Keep it coming.\";',1),(227,'2015-02-10 16:12:34','Item Created','ZurmoModule','Conversation',2,'s:87:\"I am considering a new marketing campaign that uses elephants.  What do you guys think?\";',1),(228,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',10,'s:59:\"That should be fun.  Bring your laptop in case we need you!\";',1),(229,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',11,'s:51:\"Do not bring your laptop.  That would ruin the fun.\";',1),(230,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',12,'s:34:\"Make sure you hike up the volcano.\";',1),(231,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',13,'s:26:\"I want to take a vacation.\";',1),(232,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',14,'s:63:\"We should have a company retreat in Hawaii.  That would be fun!\";',1),(233,'2015-02-10 16:12:34','Item Created','ZurmoModule','Comment',15,'s:32:\"Great idea guys. Keep it coming.\";',1),(234,'2015-02-10 16:12:34','Item Created','ZurmoModule','Conversation',3,'s:25:\"Vacation time in December\";',1),(235,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',40,'s:13:\"testImage.png\";',1),(236,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',7,'s:14:\"Happy Birthday\";',1),(237,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',41,'s:12:\"testLogo.jpg\";',1),(238,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',42,'s:17:\"testDocument.docx\";',1),(239,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',43,'s:13:\"testImage.png\";',1),(240,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',44,'s:13:\"testImage.png\";',1),(241,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',45,'s:12:\"testLogo.jpg\";',1),(242,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',8,'s:8:\"Discount\";',1),(243,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',46,'s:12:\"testLogo.jpg\";',1),(244,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',9,'s:14:\"Downtime Alert\";',1),(245,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',47,'s:11:\"testPDF.pdf\";',1),(246,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',48,'s:13:\"testImage.png\";',1),(247,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',49,'s:12:\"testNote.txt\";',1),(248,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',50,'s:12:\"testLogo.jpg\";',1),(249,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',51,'s:12:\"testNote.txt\";',1),(250,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',10,'s:14:\"Sales decrease\";',1),(251,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',52,'s:11:\"testZip.zip\";',1),(252,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',53,'s:17:\"testDocument.docx\";',1),(253,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',54,'s:12:\"testNote.txt\";',1),(254,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',11,'s:14:\"Missions alert\";',1),(255,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',55,'s:12:\"testLogo.jpg\";',1),(256,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',56,'s:11:\"testZip.zip\";',1),(257,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',12,'s:12:\"Inbox Update\";',1),(258,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',57,'s:13:\"testImage.png\";',1),(259,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',58,'s:11:\"testPDF.pdf\";',1),(260,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',59,'s:11:\"testPDF.pdf\";',1),(261,'2015-02-10 16:12:35','Item Created','ZurmoModule','FileModel',60,'s:13:\"testImage.png\";',1),(262,'2015-02-10 16:12:35','Item Created','ZurmoModule','EmailTemplate',13,'s:29:\"Introducing a New Application\";',1),(263,'2015-02-10 16:12:35','Item Created','ZurmoModule','GameReward',1,'s:24:\"Coffeeshop $10 Gift card\";',1),(264,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',2,'s:20:\"1 extra vacation day\";',1),(265,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',3,'s:19:\"Lunch from Marianos\";',1),(266,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',4,'s:20:\"Dinner with the boss\";',1),(267,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',5,'s:16:\"Riverboat cruise\";',1),(268,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',6,'s:21:\"4 hours of Yacht time\";',1),(269,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',7,'s:26:\"First class flight upgrade\";',1),(270,'2015-02-10 16:12:36','Item Created','ZurmoModule','GameReward',8,'s:14:\"$500 gift card\";',1),(271,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameReward',9,'s:32:\"2 Tickets to the basketball game\";',1),(272,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameReward',10,'s:22:\"50 inch Flat-screen TV\";',1),(273,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',1,'s:9:\"LoginUser\";',1),(274,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',1,'s:12:\"UserAdoption\";',1),(275,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',2,'s:13:\"CreateAccount\";',1),(276,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',2,'s:11:\"NewBusiness\";',1),(277,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',1,'s:11:\"LoginUser 2\";',1),(278,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',2,'s:15:\"CreateAccount 3\";',1),(279,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',1,'s:7:\"General\";',1),(280,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',2,'s:11:\"NewBusiness\";',1),(281,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',3,'s:9:\"LoginUser\";',1),(282,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',3,'s:12:\"UserAdoption\";',1),(283,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',4,'s:13:\"CreateAccount\";',1),(284,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',4,'s:11:\"NewBusiness\";',1),(285,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',3,'s:11:\"LoginUser 2\";',1),(286,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',4,'s:15:\"CreateAccount 3\";',1),(287,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',3,'s:7:\"General\";',1),(288,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',4,'s:11:\"NewBusiness\";',1),(289,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',5,'s:9:\"LoginUser\";',1),(290,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',5,'s:12:\"UserAdoption\";',1),(291,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',6,'s:13:\"CreateAccount\";',1),(292,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',6,'s:11:\"NewBusiness\";',1),(293,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',5,'s:11:\"LoginUser 2\";',1),(294,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',6,'s:15:\"CreateAccount 3\";',1),(295,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',5,'s:7:\"General\";',1),(296,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',6,'s:11:\"NewBusiness\";',1),(297,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',7,'s:9:\"LoginUser\";',1),(298,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',7,'s:12:\"UserAdoption\";',1),(299,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',8,'s:13:\"CreateAccount\";',1),(300,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',8,'s:11:\"NewBusiness\";',1),(301,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',7,'s:11:\"LoginUser 2\";',1),(302,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',8,'s:15:\"CreateAccount 3\";',1),(303,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',7,'s:7:\"General\";',1),(304,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',8,'s:11:\"NewBusiness\";',1),(305,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',9,'s:9:\"LoginUser\";',1),(306,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',9,'s:12:\"UserAdoption\";',1),(307,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',10,'s:13:\"CreateAccount\";',1),(308,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',10,'s:11:\"NewBusiness\";',1),(309,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',9,'s:11:\"LoginUser 2\";',1),(310,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',10,'s:15:\"CreateAccount 3\";',1),(311,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',9,'s:7:\"General\";',1),(312,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',10,'s:11:\"NewBusiness\";',1),(313,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',11,'s:9:\"LoginUser\";',1),(314,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',11,'s:12:\"UserAdoption\";',1),(315,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',12,'s:13:\"CreateAccount\";',1),(316,'2015-02-10 16:12:37','Item Created','ZurmoModule','GamePoint',12,'s:11:\"NewBusiness\";',1),(317,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',11,'s:11:\"LoginUser 2\";',1),(318,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameBadge',12,'s:15:\"CreateAccount 3\";',1),(319,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',11,'s:7:\"General\";',1),(320,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameLevel',12,'s:11:\"NewBusiness\";',1),(321,'2015-02-10 16:12:37','Item Created','ZurmoModule','GameScore',13,'s:9:\"LoginUser\";',1),(322,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',13,'s:12:\"UserAdoption\";',1),(323,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',14,'s:13:\"CreateAccount\";',1),(324,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',14,'s:11:\"NewBusiness\";',1),(325,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',13,'s:11:\"LoginUser 2\";',1),(326,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',14,'s:15:\"CreateAccount 3\";',1),(327,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',13,'s:7:\"General\";',1),(328,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',14,'s:11:\"NewBusiness\";',1),(329,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',15,'s:9:\"LoginUser\";',1),(330,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',15,'s:12:\"UserAdoption\";',1),(331,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',16,'s:13:\"CreateAccount\";',1),(332,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',16,'s:11:\"NewBusiness\";',1),(333,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',15,'s:11:\"LoginUser 2\";',1),(334,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',16,'s:15:\"CreateAccount 3\";',1),(335,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',15,'s:7:\"General\";',1),(336,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',16,'s:11:\"NewBusiness\";',1),(337,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',17,'s:9:\"LoginUser\";',1),(338,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',17,'s:12:\"UserAdoption\";',1),(339,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',18,'s:13:\"CreateAccount\";',1),(340,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',18,'s:11:\"NewBusiness\";',1),(341,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',17,'s:11:\"LoginUser 2\";',1),(342,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',18,'s:15:\"CreateAccount 3\";',1),(343,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',17,'s:7:\"General\";',1),(344,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',18,'s:11:\"NewBusiness\";',1),(345,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',19,'s:9:\"LoginUser\";',1),(346,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',19,'s:12:\"UserAdoption\";',1),(347,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameScore',20,'s:13:\"CreateAccount\";',1),(348,'2015-02-10 16:12:38','Item Created','ZurmoModule','GamePoint',20,'s:11:\"NewBusiness\";',1),(349,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',19,'s:11:\"LoginUser 2\";',1),(350,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameBadge',20,'s:15:\"CreateAccount 3\";',1),(351,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',19,'s:7:\"General\";',1),(352,'2015-02-10 16:12:38','Item Created','ZurmoModule','GameLevel',20,'s:11:\"NewBusiness\";',1),(353,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',13,'s:15:\"Raymond Johnson\";',1),(354,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',14,'s:14:\"Ester Thompson\";',1),(355,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',15,'s:13:\"Ignacio Brown\";',1),(356,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',16,'s:13:\"Jake Robinson\";',1),(357,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',17,'s:12:\"David Miller\";',1),(358,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',18,'s:11:\"Gail Walker\";',1),(359,'2015-02-10 16:12:38','Item Created','ZurmoModule','Contact',19,'s:14:\"Katie Williams\";',1),(360,'2015-02-10 16:12:39','Item Created','ZurmoModule','Contact',20,'s:12:\"Walter Moore\";',1),(361,'2015-02-10 16:12:39','Item Created','ZurmoModule','Contact',21,'s:12:\"Kirby Harris\";',1),(362,'2015-02-10 16:12:39','Item Created','ZurmoModule','Contact',22,'s:12:\"Jake Johnson\";',1),(363,'2015-02-10 16:12:39','Item Created','ZurmoModule','Contact',23,'s:15:\"Rosina Thompson\";',1),(364,'2015-02-10 16:12:39','Item Created','ZurmoModule','Contact',24,'s:12:\"Kirby Walker\";',1),(365,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',1,'s:26:\"Expensive Software Product\";',1),(366,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',2,'s:22:\"Open Source Consulting\";',1),(367,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',3,'s:17:\"Training Services\";',1),(368,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',4,'s:19:\"Consulting Services\";',1),(369,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',5,'s:22:\"Open Source Consulting\";',1),(370,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',6,'s:22:\"Open Source Consulting\";',1),(371,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',7,'s:14:\"Wonder Widgets\";',1),(372,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',8,'s:19:\"Enterprise Software\";',1),(373,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',9,'s:26:\"Expensive Software Product\";',1),(374,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',10,'s:14:\"Wonder Widgets\";',1),(375,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',11,'s:21:\"Design Review Service\";',1),(376,'2015-02-10 16:12:39','Item Created','ZurmoModule','Opportunity',12,'s:14:\"Wonder Widgets\";',1),(377,'2015-02-10 16:12:39','Item Created','ZurmoModule','Meeting',1,'s:14:\"Follow-up call\";',1),(378,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',2,'s:15:\"Proposal review\";',1),(379,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',3,'s:15:\"Proposal review\";',1),(380,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',4,'s:16:\"Project kick-off\";',1),(381,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',5,'s:14:\"Follow-up call\";',1),(382,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',6,'s:14:\"Call follow up\";',1),(383,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',7,'s:29:\"Tradeshow preparation meeting\";',1),(384,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',8,'s:23:\"Circle back on proposal\";',1),(385,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',9,'s:33:\"Technical requirements discussion\";',1),(386,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',10,'s:15:\"Proposal review\";',1),(387,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',11,'s:29:\"Tradeshow preparation meeting\";',1),(388,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',12,'s:14:\"Call follow up\";',1),(389,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',13,'s:23:\"Circle back on proposal\";',1),(390,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',14,'s:18:\"Phase 2 discussion\";',1),(391,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',15,'s:14:\"Call follow up\";',1),(392,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',16,'s:14:\"Call follow up\";',1),(393,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',17,'s:16:\"Project kick-off\";',1),(394,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',18,'s:19:\"Discuss new pricing\";',1),(395,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',19,'s:16:\"Project kick-off\";',1),(396,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',20,'s:23:\"Circle back on proposal\";',1),(397,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',21,'s:21:\"Client service review\";',1),(398,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',22,'s:29:\"Tradeshow preparation meeting\";',1),(399,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',23,'s:18:\"Phase 2 discussion\";',1),(400,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',24,'s:16:\"Project kick-off\";',1),(401,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',25,'s:29:\"Tradeshow preparation meeting\";',1),(402,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',26,'s:19:\"Discuss new pricing\";',1),(403,'2015-02-10 16:12:40','Item Created','ZurmoModule','Meeting',27,'s:19:\"Discuss new pricing\";',1),(404,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',28,'s:19:\"Discuss new pricing\";',1),(405,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',29,'s:14:\"Follow-up call\";',1),(406,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',30,'s:21:\"Client service review\";',1),(407,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',31,'s:19:\"Discuss new pricing\";',1),(408,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',32,'s:23:\"Circle back on proposal\";',1),(409,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',33,'s:23:\"Circle back on proposal\";',1),(410,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',34,'s:21:\"Client service review\";',1),(411,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',35,'s:16:\"Project kick-off\";',1),(412,'2015-02-10 16:12:41','Item Created','ZurmoModule','Meeting',36,'s:16:\"Project kick-off\";',1),(413,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',16,'s:22:\"How about at a museum?\";',1),(414,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',17,'s:48:\"I am going to be out of town, so I can\'t attend.\";',1),(415,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',18,'s:27:\"I guess i can take this on.\";',1),(416,'2015-02-10 16:12:41','Item Created','ZurmoModule','Mission',1,'s:71:\"Can someone figure out a good location for the company party this year?\";',1),(417,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',19,'s:63:\"I don\'t even know what this mission is.  Guess I can\'t take it.\";',1),(418,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',20,'s:26:\"Always good to save money!\";',1),(419,'2015-02-10 16:12:41','Item Created','ZurmoModule','Mission',2,'s:58:\"Analyze server infrastructure, look for ways to save money\";',1),(420,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',21,'s:30:\"Can I go to a bank to do this?\";',1),(421,'2015-02-10 16:12:41','Item Created','ZurmoModule','Comment',22,'s:44:\"Yes, a bank will notarize a document for you\";',1),(422,'2015-02-10 16:12:42','Item Created','ZurmoModule','Mission',3,'s:27:\"Get tax document notarized \";',1),(423,'2015-02-10 16:12:42','Item Created','ZurmoModule','Comment',23,'s:36:\"Is this for our consulting services?\";',1),(424,'2015-02-10 16:12:42','Item Created','ZurmoModule','Comment',24,'s:62:\"No, this is for a new offering we will have around our widgets\";',1),(425,'2015-02-10 16:12:42','Item Created','ZurmoModule','Mission',4,'s:54:\"Organize the new marketing initiative for summer sales\";',1),(426,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',1,'s:28:\"E-mail: Re: Product changes.\";',1),(427,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',2,'s:44:\"Accouting information regarding wire payment\";',1),(428,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',3,'s:27:\"E-mail: Re: Follow up call.\";',1),(429,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',4,'s:28:\"E-mail: Re: Product changes.\";',1),(430,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',5,'s:27:\"E-mail: Re: Follow up call.\";',1),(431,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',6,'s:44:\"Accouting information regarding wire payment\";',1),(432,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',7,'s:39:\"System integration - jumpstart proposal\";',1),(433,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',8,'s:44:\"Accouting information regarding wire payment\";',1),(434,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',9,'s:39:\"System integration - jumpstart proposal\";',1),(435,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',10,'s:39:\"System integration - jumpstart proposal\";',1),(436,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',11,'s:39:\"System integration - jumpstart proposal\";',1),(437,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',12,'s:27:\"E-mail: Re: Follow up call.\";',1),(438,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',13,'s:28:\"Competitive landscape notes.\";',1),(439,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',14,'s:27:\"E-mail: Re: Follow up call.\";',1),(440,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',15,'s:27:\"E-mail: Re: Follow up call.\";',1),(441,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',16,'s:28:\"E-mail: Re: Product changes.\";',1),(442,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',17,'s:27:\"E-mail: Re: Follow up call.\";',1),(443,'2015-02-10 16:12:42','Item Created','ZurmoModule','Note',18,'s:28:\"Competitive landscape notes.\";',1),(444,'2015-02-10 16:12:42','Item Created','ZurmoModule','SavedReport',1,'s:16:\"New Leads Report\";',1),(445,'2015-02-10 16:12:43','Item Created','ZurmoModule','SavedReport',2,'s:26:\"Active Customer Email List\";',1),(446,'2015-02-10 16:12:43','Item Created','ZurmoModule','SavedReport',3,'s:22:\"Opportunities By Owner\";',1),(447,'2015-02-10 16:12:43','Item Created','ZurmoModule','SavedReport',4,'s:33:\"Closed won opportunities by month\";',1),(448,'2015-02-10 16:12:43','Item Created','ZurmoModule','SavedReport',5,'s:22:\"Opportunities by Stage\";',1),(449,'2015-02-10 16:12:43','Item Created','ZurmoModule','SavedReport',6,'s:48:\"Meettings Category And Month Start Time By Owner\";',1),(450,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCatalog',1,'s:7:\"Default\";',1),(451,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCategory',1,'s:6:\"CD-DVD\";',1),(452,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCategory',2,'s:5:\"Books\";',1),(453,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCategory',3,'s:5:\"Music\";',1),(454,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCategory',4,'s:7:\"Laptops\";',1),(455,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCategory',5,'s:6:\"Camera\";',1),(456,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductCategory',6,'s:8:\"Handycam\";',1),(457,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',1,'s:11:\"Amazing Kid\";',1),(458,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',2,'s:19:\"You Can Do Anything\";',1),(459,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',3,'s:19:\"A Bend in the River\";',1),(460,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',4,'s:21:\"A Gift of Monotheists\";',1),(461,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',5,'s:18:\"Once in a Lifetime\";',1),(462,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',6,'s:25:\"Laptop Inc - Model A4rxVE\";',1),(463,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',7,'s:25:\"Laptop Inc - Model Ig641C\";',1),(464,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',8,'s:25:\"Laptop Inc - Model WPwdgE\";',1),(465,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',9,'s:25:\"Laptop Inc - Model ILQm6S\";',1),(466,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',10,'s:25:\"Laptop Inc - Model txZLAV\";',1),(467,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',11,'s:25:\"Laptop Inc - Model LxIiYe\";',1),(468,'2015-02-10 16:12:43','Item Created','ZurmoModule','ProductTemplate',12,'s:25:\"Laptop Inc - Model lJR8BE\";',1),(469,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',13,'s:25:\"Laptop Inc - Model RUsXHJ\";',1),(470,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',14,'s:25:\"Laptop Inc - Model sF19vH\";',1),(471,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',15,'s:37:\"Camera Inc 2 MegaPixel - Model U7DLoa\";',1),(472,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',16,'s:37:\"Camera Inc 2 MegaPixel - Model yQAc6z\";',1),(473,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',17,'s:37:\"Camera Inc 2 MegaPixel - Model GD295B\";',1),(474,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',18,'s:37:\"Camera Inc 2 MegaPixel - Model 1m3ifE\";',1),(475,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',19,'s:37:\"Camera Inc 2 MegaPixel - Model tg0IJn\";',1),(476,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',20,'s:37:\"Camera Inc 2 MegaPixel - Model sqfXlL\";',1),(477,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',21,'s:37:\"Camera Inc 2 MegaPixel - Model WXZJcY\";',1),(478,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',22,'s:37:\"Camera Inc 2 MegaPixel - Model BjHkLq\";',1),(479,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',23,'s:37:\"Camera Inc 2 MegaPixel - Model WwhQrf\";',1),(480,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',24,'s:27:\"Handycam Inc - Model OlTA7P\";',1),(481,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',25,'s:27:\"Handycam Inc - Model DyCFrT\";',1),(482,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',26,'s:27:\"Handycam Inc - Model dZthjI\";',1),(483,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',27,'s:27:\"Handycam Inc - Model YbDF1E\";',1),(484,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',28,'s:27:\"Handycam Inc - Model zWZfJI\";',1),(485,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',29,'s:27:\"Handycam Inc - Model kfhOgW\";',1),(486,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',30,'s:27:\"Handycam Inc - Model HqQVW7\";',1),(487,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',31,'s:27:\"Handycam Inc - Model fXwxBP\";',1),(488,'2015-02-10 16:12:44','Item Created','ZurmoModule','ProductTemplate',32,'s:27:\"Handycam Inc - Model xpXevG\";',1),(489,'2015-02-10 16:12:44','Item Created','ZurmoModule','Product',1,'s:18:\"Amazing Kid Sample\";',1),(490,'2015-02-10 16:12:44','Item Created','ZurmoModule','Product',2,'s:26:\"You Can Do Anything Sample\";',1),(491,'2015-02-10 16:12:44','Item Created','ZurmoModule','Product',3,'s:34:\"A Bend in the River November Issue\";',1),(492,'2015-02-10 16:12:44','Item Created','ZurmoModule','Product',4,'s:35:\"A Gift of Monotheists October Issue\";',1),(493,'2015-02-10 16:12:44','Item Created','ZurmoModule','Product',5,'s:30:\"Enjoy Once in a Lifetime Music\";',1),(494,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',6,'s:29:\"Laptop Inc - Model A4rxVE-PgW\";',1),(495,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',7,'s:29:\"Laptop Inc - Model A4rxVE-PGo\";',1),(496,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',8,'s:29:\"Laptop Inc - Model Ig641C-PHE\";',1),(497,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',9,'s:29:\"Laptop Inc - Model Ig641C-PeN\";',1),(498,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',10,'s:29:\"Laptop Inc - Model WPwdgE-PaG\";',1),(499,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',11,'s:29:\"Laptop Inc - Model WPwdgE-PCc\";',1),(500,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',12,'s:29:\"Laptop Inc - Model ILQm6S-Pny\";',1),(501,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',13,'s:29:\"Laptop Inc - Model ILQm6S-P5u\";',1),(502,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',14,'s:29:\"Laptop Inc - Model txZLAV-PUu\";',1),(503,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',15,'s:29:\"Laptop Inc - Model txZLAV-PHD\";',1),(504,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',16,'s:29:\"Laptop Inc - Model LxIiYe-PUk\";',1),(505,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',17,'s:29:\"Laptop Inc - Model LxIiYe-PJ0\";',1),(506,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',18,'s:29:\"Laptop Inc - Model lJR8BE-P7X\";',1),(507,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',19,'s:29:\"Laptop Inc - Model lJR8BE-PBi\";',1),(508,'2015-02-10 16:12:45','Item Created','ZurmoModule','Product',20,'s:29:\"Laptop Inc - Model RUsXHJ-Pey\";',1),(509,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',21,'s:29:\"Laptop Inc - Model RUsXHJ-Pp7\";',1),(510,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',22,'s:29:\"Laptop Inc - Model sF19vH-Pl6\";',1),(511,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',23,'s:29:\"Laptop Inc - Model sF19vH-P5T\";',1),(512,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',24,'s:41:\"Camera Inc 2 MegaPixel - Model U7DLoa-PYE\";',1),(513,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',25,'s:41:\"Camera Inc 2 MegaPixel - Model U7DLoa-PGD\";',1),(514,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',26,'s:41:\"Camera Inc 2 MegaPixel - Model yQAc6z-PLw\";',1),(515,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',27,'s:41:\"Camera Inc 2 MegaPixel - Model yQAc6z-PKJ\";',1),(516,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',28,'s:41:\"Camera Inc 2 MegaPixel - Model GD295B-PJA\";',1),(517,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',29,'s:41:\"Camera Inc 2 MegaPixel - Model GD295B-PU2\";',1),(518,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',30,'s:41:\"Camera Inc 2 MegaPixel - Model 1m3ifE-PVW\";',1),(519,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',31,'s:41:\"Camera Inc 2 MegaPixel - Model 1m3ifE-PHG\";',1),(520,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',32,'s:41:\"Camera Inc 2 MegaPixel - Model tg0IJn-PMw\";',1),(521,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',33,'s:41:\"Camera Inc 2 MegaPixel - Model tg0IJn-PJY\";',1),(522,'2015-02-10 16:12:46','Item Created','ZurmoModule','Product',34,'s:41:\"Camera Inc 2 MegaPixel - Model sqfXlL-P7Q\";',1),(523,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',35,'s:41:\"Camera Inc 2 MegaPixel - Model sqfXlL-PuP\";',1),(524,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',36,'s:41:\"Camera Inc 2 MegaPixel - Model WXZJcY-P67\";',1),(525,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',37,'s:41:\"Camera Inc 2 MegaPixel - Model WXZJcY-PvE\";',1),(526,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',38,'s:41:\"Camera Inc 2 MegaPixel - Model BjHkLq-Pxv\";',1),(527,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',39,'s:41:\"Camera Inc 2 MegaPixel - Model BjHkLq-POe\";',1),(528,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',40,'s:41:\"Camera Inc 2 MegaPixel - Model WwhQrf-Pw1\";',1),(529,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',41,'s:41:\"Camera Inc 2 MegaPixel - Model WwhQrf-P9A\";',1),(530,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',42,'s:31:\"Handycam Inc - Model OlTA7P-PwY\";',1),(531,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',43,'s:31:\"Handycam Inc - Model OlTA7P-P9v\";',1),(532,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',44,'s:31:\"Handycam Inc - Model DyCFrT-PIT\";',1),(533,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',45,'s:31:\"Handycam Inc - Model DyCFrT-Plg\";',1),(534,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',46,'s:31:\"Handycam Inc - Model dZthjI-PLH\";',1),(535,'2015-02-10 16:12:47','Item Created','ZurmoModule','Product',47,'s:31:\"Handycam Inc - Model dZthjI-PTh\";',1),(536,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',48,'s:31:\"Handycam Inc - Model YbDF1E-PPK\";',1),(537,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',49,'s:31:\"Handycam Inc - Model YbDF1E-P3w\";',1),(538,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',50,'s:31:\"Handycam Inc - Model zWZfJI-PWY\";',1),(539,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',51,'s:31:\"Handycam Inc - Model zWZfJI-PAB\";',1),(540,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',52,'s:31:\"Handycam Inc - Model kfhOgW-Ppt\";',1),(541,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',53,'s:31:\"Handycam Inc - Model kfhOgW-Piu\";',1),(542,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',54,'s:31:\"Handycam Inc - Model HqQVW7-Poq\";',1),(543,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',55,'s:31:\"Handycam Inc - Model HqQVW7-PE7\";',1),(544,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',56,'s:31:\"Handycam Inc - Model fXwxBP-PKd\";',1),(545,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',57,'s:31:\"Handycam Inc - Model fXwxBP-PaM\";',1),(546,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',58,'s:31:\"Handycam Inc - Model xpXevG-PBF\";',1),(547,'2015-02-10 16:12:48','Item Created','ZurmoModule','Product',59,'s:31:\"Handycam Inc - Model xpXevG-PN5\";',1),(548,'2015-02-10 16:12:48','Item Created','ZurmoModule','Note',19,'s:27:\"This account is heating up!\";',1),(549,'2015-02-10 16:12:48','Item Created','ZurmoModule','Comment',25,'s:45:\"I would love us to get this guy as a customer\";',1),(550,'2015-02-10 16:12:48','Item Created','ZurmoModule','Comment',26,'s:14:\"I second that.\";',1),(551,'2015-02-10 16:12:48','Item Created','ZurmoModule','Comment',27,'s:30:\"Would be an amazing case study\";',1),(552,'2015-02-10 16:12:48','Item Created','ZurmoModule','SocialItem',1,'s:9:\"(Unnamed)\";',1),(553,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',2,'s:26:\"Game on! I reached level 5\";',1),(554,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',3,'s:26:\"Game on! I reached level 4\";',1),(555,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',28,'s:22:\"How about at a museum?\";',1),(556,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',29,'s:48:\"I am going to be out of town, so I can\'t attend.\";',1),(557,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',30,'s:27:\"I guess i can take this on.\";',1),(558,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',4,'s:41:\"Where should we have the Christmas party?\";',1),(559,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',5,'s:52:\"Game on! I received a new badge: 15 accounts created\";',1),(560,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',6,'s:65:\"Ask Barry why we can\'t use our cell phones in the conference room\";',1),(561,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',7,'s:59:\"Game on! I received a new badge: Logged in 5 times at night\";',1),(562,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',31,'s:17:\"Dude, get to work\";',1),(563,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',32,'s:19:\"Lets get some beers\";',1),(564,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',8,'s:15:\"I love fridays!\";',1),(565,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',9,'s:26:\"Game on! I reached level 3\";',1),(566,'2015-02-10 16:12:49','Item Created','ZurmoModule','Note',20,'s:50:\"Why is this customer having so many problems. Sigh\";',1),(567,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',33,'s:45:\"Did you contact Sarah in client services yet?\";',1),(568,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',34,'s:28:\"That is probably a good idea\";',1),(569,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',35,'s:34:\"Only if sarah is having a good day\";',1),(570,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',10,'s:9:\"(Unnamed)\";',1),(571,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',36,'s:23:\"I wish i was in sales..\";',1),(572,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',37,'s:63:\"Dude, IT just twiddles their thumbs most of the time anyways :)\";',1),(573,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',38,'s:15:\"Yeah whatever..\";',1),(574,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',39,'s:56:\"I am in for golf, primarly drinking and riding the cart.\";',1),(575,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',11,'s:9:\"Golf time\";',1),(576,'2015-02-10 16:12:49','Item Created','ZurmoModule','Note',21,'s:25:\"Bam. Closed another deal!\";',1),(577,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',40,'s:8:\"Awesome!\";',1),(578,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',41,'s:14:\"I second that.\";',1),(579,'2015-02-10 16:12:49','Item Created','ZurmoModule','Comment',42,'s:29:\"You are buying drinks tonight\";',1),(580,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',12,'s:9:\"(Unnamed)\";',1),(581,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',13,'s:59:\"Anyone interested in going to San Diego for the trade show?\";',1),(582,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',14,'s:26:\"Just stubbed my toe. Ouch!\";',1),(583,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',15,'s:26:\"Game on! I reached level 2\";',1),(584,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',16,'s:50:\"Game on! I received a new badge: For being awesome\";',1),(585,'2015-02-10 16:12:49','Item Created','ZurmoModule','SocialItem',17,'s:57:\"Game on! I received a new badge: 5 opportunities searched\";',1),(586,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',1,'s:20:\"Send follow up email\";',1),(587,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',2,'s:28:\"Document changes to proposal\";',1),(588,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',3,'s:15:\"Build prototype\";',1),(589,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',4,'s:18:\"Make courtesy call\";',1),(590,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',5,'s:26:\"Review contract with legal\";',1),(591,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',6,'s:28:\"Document changes to proposal\";',1),(592,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',7,'s:18:\"Make courtesy call\";',1),(593,'2015-02-10 16:12:50','Item Created','ZurmoModule','Task',8,'s:22:\"Follow up with renewal\";',1),(594,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',9,'s:25:\"Research position changes\";',1),(595,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',10,'s:25:\"Research position changes\";',1),(596,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',11,'s:20:\"Send follow up email\";',1),(597,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',12,'s:26:\"Review contract with legal\";',1),(598,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',13,'s:20:\"Send product catalog\";',1),(599,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',14,'s:26:\"Review contract with legal\";',1),(600,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',15,'s:25:\"Research position changes\";',1),(601,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',16,'s:20:\"Send follow up email\";',1),(602,'2015-02-10 16:12:51','Item Created','ZurmoModule','Task',17,'s:22:\"Follow up with renewal\";',1),(603,'2015-02-10 16:12:52','Item Created','ZurmoModule','Task',18,'s:26:\"Review contract with legal\";',1),(604,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebForm',1,'s:18:\"Corporate Web Form\";',1),(605,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebForm',2,'s:21:\"Sales Portal Web Form\";',1),(606,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebForm',3,'s:23:\"Clients Portal Web Form\";',1),(607,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebForm',4,'s:32:\"Customer Support Portal Web Form\";',1),(608,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebForm',5,'s:19:\"Sales Team Web Form\";',1),(609,'2015-02-10 16:12:52','Item Created','ZurmoModule','Contact',25,'s:11:\"Alice Brown\";',1),(610,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebFormEntry',1,'s:6:\"(None)\";',1),(611,'2015-02-10 16:12:52','Item Created','ZurmoModule','Contact',26,'s:9:\"Jim Smith\";',1),(612,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebFormEntry',2,'s:6:\"(None)\";',1),(613,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebFormEntry',3,'s:6:\"(None)\";',1),(614,'2015-02-10 16:12:52','Item Created','ZurmoModule','Contact',27,'s:12:\"Keith Cooper\";',1),(615,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebFormEntry',4,'s:6:\"(None)\";',1),(616,'2015-02-10 16:12:52','Item Created','ZurmoModule','Contact',28,'s:9:\"Sarah Lee\";',1),(617,'2015-02-10 16:12:52','Item Created','ZurmoModule','ContactWebFormEntry',5,'s:6:\"(None)\";',1),(618,'2015-02-10 16:12:52','Item Created','ZurmoModule','Project',1,'s:28:\"Wentworth Industries Project\";',1),(619,'2015-02-10 16:12:53','Item Created','ZurmoModule','Task',19,'s:23:\"Create Demo Proposal v1\";',1),(620,'2015-02-10 16:12:53','Item Created','ZurmoModule','Comment',43,'s:27:\"Quite useful moving forward\";',1),(621,'2015-02-10 16:12:53','Item Created','ZurmoModule','Comment',44,'s:32:\"Would be helful for other people\";',1),(622,'2015-02-10 16:12:53','Item Created','ZurmoModule','Comment',45,'s:33:\"Versatile idea regarding the task\";',1),(623,'2015-02-10 16:12:53','Item Modified','ZurmoModule','Task',19,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(624,'2015-02-10 16:12:53','Item Modified','ZurmoModule','Task',19,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(625,'2015-02-10 16:12:53','Item Created','ZurmoModule','Task',20,'s:46:\"Come up with a contacts list for the client v1\";',1),(626,'2015-02-10 16:12:53','Item Created','ZurmoModule','Comment',46,'s:31:\"Very beneficial for the company\";',1),(627,'2015-02-10 16:12:53','Item Created','ZurmoModule','Comment',47,'s:26:\"Helpful for the sales team\";',1),(628,'2015-02-10 16:12:53','Item Created','ZurmoModule','Comment',48,'s:33:\"Versatile idea regarding the task\";',1),(629,'2015-02-10 16:12:53','Item Modified','ZurmoModule','Task',20,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(630,'2015-02-10 16:12:53','Item Modified','ZurmoModule','Task',20,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(631,'2015-02-10 16:12:54','Item Created','ZurmoModule','Task',21,'s:46:\"Prepare telephone directory for the company v1\";',1),(632,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',49,'s:30:\"Very helpful for the employees\";',1),(633,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',50,'s:23:\"Can easily track people\";',1),(634,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',51,'s:33:\"Versatile idea regarding the task\";',1),(635,'2015-02-10 16:12:54','Item Created','ZurmoModule','Task',22,'s:29:\"Get an accounting software v1\";',1),(636,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',52,'s:30:\"Helpful for finance department\";',1),(637,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',53,'s:17:\"Reduced work load\";',1),(638,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',54,'s:30:\"Less number of people required\";',1),(639,'2015-02-10 16:12:54','Item Created','ZurmoModule','Comment',55,'s:33:\"Versatile idea regarding the task\";',1),(640,'2015-02-10 16:12:55','Item Created','ZurmoModule','Task',23,'s:47:\"Usage of google analytics on company website v1\";',1),(641,'2015-02-10 16:12:55','Item Created','ZurmoModule','Comment',56,'s:21:\"Aids in site analysis\";',1),(642,'2015-02-10 16:12:55','Item Created','ZurmoModule','Comment',57,'s:37:\"Would be helpful from SEO perspective\";',1),(643,'2015-02-10 16:12:55','Item Created','ZurmoModule','Comment',58,'s:33:\"Versatile idea regarding the task\";',1),(644,'2015-02-10 16:12:55','Item Modified','ZurmoModule','Task',23,'a:4:{i:0;s:47:\"Usage of google analytics on company website v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(645,'2015-02-10 16:12:55','Item Created','ZurmoModule','Task',24,'s:23:\"Create Demo Proposal v2\";',1),(646,'2015-02-10 16:12:55','Item Created','ZurmoModule','Comment',59,'s:27:\"Quite useful moving forward\";',1),(647,'2015-02-10 16:12:55','Item Created','ZurmoModule','Comment',60,'s:32:\"Would be helful for other people\";',1),(648,'2015-02-10 16:12:55','Item Created','ZurmoModule','Comment',61,'s:33:\"Versatile idea regarding the task\";',1),(649,'2015-02-10 16:12:56','Item Modified','ZurmoModule','Task',24,'a:4:{i:0;s:23:\"Create Demo Proposal v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(650,'2015-02-10 16:12:56','Item Modified','ZurmoModule','Task',24,'a:4:{i:0;s:23:\"Create Demo Proposal v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(651,'2015-02-10 16:12:56','Item Created','ZurmoModule','Task',25,'s:46:\"Come up with a contacts list for the client v2\";',1),(652,'2015-02-10 16:12:56','Item Created','ZurmoModule','Comment',62,'s:31:\"Very beneficial for the company\";',1),(653,'2015-02-10 16:12:56','Item Created','ZurmoModule','Comment',63,'s:26:\"Helpful for the sales team\";',1),(654,'2015-02-10 16:12:56','Item Created','ZurmoModule','Comment',64,'s:33:\"Versatile idea regarding the task\";',1),(655,'2015-02-10 16:12:57','Item Modified','ZurmoModule','Task',25,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(656,'2015-02-10 16:12:57','Item Created','ZurmoModule','Task',26,'s:46:\"Prepare telephone directory for the company v2\";',1),(657,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',65,'s:30:\"Very helpful for the employees\";',1),(658,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',66,'s:23:\"Can easily track people\";',1),(659,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',67,'s:33:\"Versatile idea regarding the task\";',1),(660,'2015-02-10 16:12:57','Item Created','ZurmoModule','Task',27,'s:29:\"Get an accounting software v2\";',1),(661,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',68,'s:30:\"Helpful for finance department\";',1),(662,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',69,'s:17:\"Reduced work load\";',1),(663,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',70,'s:30:\"Less number of people required\";',1),(664,'2015-02-10 16:12:57','Item Created','ZurmoModule','Comment',71,'s:33:\"Versatile idea regarding the task\";',1),(665,'2015-02-10 16:12:58','Item Modified','ZurmoModule','Task',27,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(666,'2015-02-10 16:12:58','Item Created','ZurmoModule','Task',28,'s:47:\"Usage of google analytics on company website v2\";',1),(667,'2015-02-10 16:12:58','Item Created','ZurmoModule','Comment',72,'s:21:\"Aids in site analysis\";',1),(668,'2015-02-10 16:12:58','Item Created','ZurmoModule','Comment',73,'s:37:\"Would be helpful from SEO perspective\";',1),(669,'2015-02-10 16:12:58','Item Created','ZurmoModule','Comment',74,'s:33:\"Versatile idea regarding the task\";',1),(670,'2015-02-10 16:12:58','Item Modified','ZurmoModule','Task',28,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(671,'2015-02-10 16:12:58','Item Created','ZurmoModule','Project',2,'s:21:\"Cogswell Cogs Project\";',1),(672,'2015-02-10 16:12:59','Item Created','ZurmoModule','Task',29,'s:23:\"Create Demo Proposal v1\";',1),(673,'2015-02-10 16:12:59','Item Created','ZurmoModule','Comment',75,'s:27:\"Quite useful moving forward\";',1),(674,'2015-02-10 16:12:59','Item Created','ZurmoModule','Comment',76,'s:32:\"Would be helful for other people\";',1),(675,'2015-02-10 16:12:59','Item Created','ZurmoModule','Comment',77,'s:33:\"Versatile idea regarding the task\";',1),(676,'2015-02-10 16:12:59','Item Modified','ZurmoModule','Task',29,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(677,'2015-02-10 16:12:59','Item Created','ZurmoModule','Task',30,'s:46:\"Come up with a contacts list for the client v1\";',1),(678,'2015-02-10 16:12:59','Item Created','ZurmoModule','Comment',78,'s:31:\"Very beneficial for the company\";',1),(679,'2015-02-10 16:12:59','Item Created','ZurmoModule','Comment',79,'s:26:\"Helpful for the sales team\";',1),(680,'2015-02-10 16:12:59','Item Created','ZurmoModule','Comment',80,'s:33:\"Versatile idea regarding the task\";',1),(681,'2015-02-10 16:12:59','Item Modified','ZurmoModule','Task',30,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(682,'2015-02-10 16:12:59','Item Modified','ZurmoModule','Task',30,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(683,'2015-02-10 16:13:00','Item Created','ZurmoModule','Task',31,'s:46:\"Prepare telephone directory for the company v1\";',1),(684,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',81,'s:30:\"Very helpful for the employees\";',1),(685,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',82,'s:23:\"Can easily track people\";',1),(686,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',83,'s:33:\"Versatile idea regarding the task\";',1),(687,'2015-02-10 16:13:00','Item Created','ZurmoModule','Task',32,'s:29:\"Get an accounting software v1\";',1),(688,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',84,'s:30:\"Helpful for finance department\";',1),(689,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',85,'s:17:\"Reduced work load\";',1),(690,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',86,'s:30:\"Less number of people required\";',1),(691,'2015-02-10 16:13:00','Item Created','ZurmoModule','Comment',87,'s:33:\"Versatile idea regarding the task\";',1),(692,'2015-02-10 16:13:01','Item Modified','ZurmoModule','Task',32,'a:4:{i:0;s:29:\"Get an accounting software v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(693,'2015-02-10 16:13:01','Item Created','ZurmoModule','Task',33,'s:47:\"Usage of google analytics on company website v1\";',1),(694,'2015-02-10 16:13:01','Item Created','ZurmoModule','Comment',88,'s:21:\"Aids in site analysis\";',1),(695,'2015-02-10 16:13:01','Item Created','ZurmoModule','Comment',89,'s:37:\"Would be helpful from SEO perspective\";',1),(696,'2015-02-10 16:13:01','Item Created','ZurmoModule','Comment',90,'s:33:\"Versatile idea regarding the task\";',1),(697,'2015-02-10 16:13:01','Item Created','ZurmoModule','Task',34,'s:23:\"Create Demo Proposal v2\";',1),(698,'2015-02-10 16:13:01','Item Created','ZurmoModule','Comment',91,'s:27:\"Quite useful moving forward\";',1),(699,'2015-02-10 16:13:01','Item Created','ZurmoModule','Comment',92,'s:32:\"Would be helful for other people\";',1),(700,'2015-02-10 16:13:01','Item Created','ZurmoModule','Comment',93,'s:33:\"Versatile idea regarding the task\";',1),(701,'2015-02-10 16:13:02','Item Modified','ZurmoModule','Task',34,'a:4:{i:0;s:23:\"Create Demo Proposal v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(702,'2015-02-10 16:13:02','Item Created','ZurmoModule','Task',35,'s:46:\"Come up with a contacts list for the client v2\";',1),(703,'2015-02-10 16:13:02','Item Created','ZurmoModule','Comment',94,'s:31:\"Very beneficial for the company\";',1),(704,'2015-02-10 16:13:02','Item Created','ZurmoModule','Comment',95,'s:26:\"Helpful for the sales team\";',1),(705,'2015-02-10 16:13:02','Item Created','ZurmoModule','Comment',96,'s:33:\"Versatile idea regarding the task\";',1),(706,'2015-02-10 16:13:02','Item Modified','ZurmoModule','Task',35,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(707,'2015-02-10 16:13:02','Item Modified','ZurmoModule','Task',35,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(708,'2015-02-10 16:13:03','Item Created','ZurmoModule','Task',36,'s:46:\"Prepare telephone directory for the company v2\";',1),(709,'2015-02-10 16:13:03','Item Created','ZurmoModule','Comment',97,'s:30:\"Very helpful for the employees\";',1),(710,'2015-02-10 16:13:03','Item Created','ZurmoModule','Comment',98,'s:23:\"Can easily track people\";',1),(711,'2015-02-10 16:13:03','Item Created','ZurmoModule','Comment',99,'s:33:\"Versatile idea regarding the task\";',1),(712,'2015-02-10 16:13:03','Item Modified','ZurmoModule','Task',36,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(713,'2015-02-10 16:13:03','Item Modified','ZurmoModule','Task',36,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(714,'2015-02-10 16:13:03','Item Created','ZurmoModule','Task',37,'s:29:\"Get an accounting software v2\";',1),(715,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',100,'s:30:\"Helpful for finance department\";',1),(716,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',101,'s:17:\"Reduced work load\";',1),(717,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',102,'s:30:\"Less number of people required\";',1),(718,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',103,'s:33:\"Versatile idea regarding the task\";',1),(719,'2015-02-10 16:13:04','Item Modified','ZurmoModule','Task',37,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(720,'2015-02-10 16:13:04','Item Modified','ZurmoModule','Task',37,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(721,'2015-02-10 16:13:04','Item Created','ZurmoModule','Task',38,'s:47:\"Usage of google analytics on company website v2\";',1),(722,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',104,'s:21:\"Aids in site analysis\";',1),(723,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',105,'s:37:\"Would be helpful from SEO perspective\";',1),(724,'2015-02-10 16:13:04','Item Created','ZurmoModule','Comment',106,'s:33:\"Versatile idea regarding the task\";',1),(725,'2015-02-10 16:13:04','Item Modified','ZurmoModule','Task',38,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(726,'2015-02-10 16:13:04','Item Created','ZurmoModule','Project',3,'s:15:\"Klimpys Project\";',1),(727,'2015-02-10 16:13:05','Item Created','ZurmoModule','Task',39,'s:23:\"Create Demo Proposal v1\";',1),(728,'2015-02-10 16:13:05','Item Created','ZurmoModule','Comment',107,'s:27:\"Quite useful moving forward\";',1),(729,'2015-02-10 16:13:05','Item Created','ZurmoModule','Comment',108,'s:32:\"Would be helful for other people\";',1),(730,'2015-02-10 16:13:05','Item Created','ZurmoModule','Comment',109,'s:33:\"Versatile idea regarding the task\";',1),(731,'2015-02-10 16:13:05','Item Modified','ZurmoModule','Task',39,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(732,'2015-02-10 16:13:05','Item Created','ZurmoModule','Task',40,'s:46:\"Come up with a contacts list for the client v1\";',1),(733,'2015-02-10 16:13:05','Item Created','ZurmoModule','Comment',110,'s:31:\"Very beneficial for the company\";',1),(734,'2015-02-10 16:13:05','Item Created','ZurmoModule','Comment',111,'s:26:\"Helpful for the sales team\";',1),(735,'2015-02-10 16:13:05','Item Created','ZurmoModule','Comment',112,'s:33:\"Versatile idea regarding the task\";',1),(736,'2015-02-10 16:13:05','Item Modified','ZurmoModule','Task',40,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(737,'2015-02-10 16:13:05','Item Modified','ZurmoModule','Task',40,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(738,'2015-02-10 16:13:06','Item Created','ZurmoModule','Task',41,'s:46:\"Prepare telephone directory for the company v1\";',1),(739,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',113,'s:30:\"Very helpful for the employees\";',1),(740,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',114,'s:23:\"Can easily track people\";',1),(741,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',115,'s:33:\"Versatile idea regarding the task\";',1),(742,'2015-02-10 16:13:06','Item Modified','ZurmoModule','Task',41,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(743,'2015-02-10 16:13:06','Item Created','ZurmoModule','Task',42,'s:29:\"Get an accounting software v1\";',1),(744,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',116,'s:30:\"Helpful for finance department\";',1),(745,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',117,'s:17:\"Reduced work load\";',1),(746,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',118,'s:30:\"Less number of people required\";',1),(747,'2015-02-10 16:13:06','Item Created','ZurmoModule','Comment',119,'s:33:\"Versatile idea regarding the task\";',1),(748,'2015-02-10 16:13:07','Item Modified','ZurmoModule','Task',42,'a:4:{i:0;s:29:\"Get an accounting software v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(749,'2015-02-10 16:13:07','Item Created','ZurmoModule','Task',43,'s:47:\"Usage of google analytics on company website v1\";',1),(750,'2015-02-10 16:13:07','Item Created','ZurmoModule','Comment',120,'s:21:\"Aids in site analysis\";',1),(751,'2015-02-10 16:13:07','Item Created','ZurmoModule','Comment',121,'s:37:\"Would be helpful from SEO perspective\";',1),(752,'2015-02-10 16:13:07','Item Created','ZurmoModule','Comment',122,'s:33:\"Versatile idea regarding the task\";',1),(753,'2015-02-10 16:13:07','Item Modified','ZurmoModule','Task',43,'a:4:{i:0;s:47:\"Usage of google analytics on company website v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(754,'2015-02-10 16:13:07','Item Created','ZurmoModule','Task',44,'s:23:\"Create Demo Proposal v2\";',1),(755,'2015-02-10 16:13:08','Item Created','ZurmoModule','Comment',123,'s:27:\"Quite useful moving forward\";',1),(756,'2015-02-10 16:13:08','Item Created','ZurmoModule','Comment',124,'s:32:\"Would be helful for other people\";',1),(757,'2015-02-10 16:13:08','Item Created','ZurmoModule','Comment',125,'s:33:\"Versatile idea regarding the task\";',1),(758,'2015-02-10 16:13:08','Item Modified','ZurmoModule','Task',44,'a:4:{i:0;s:23:\"Create Demo Proposal v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(759,'2015-02-10 16:13:08','Item Created','ZurmoModule','Task',45,'s:46:\"Come up with a contacts list for the client v2\";',1),(760,'2015-02-10 16:13:08','Item Created','ZurmoModule','Comment',126,'s:31:\"Very beneficial for the company\";',1),(761,'2015-02-10 16:13:08','Item Created','ZurmoModule','Comment',127,'s:26:\"Helpful for the sales team\";',1),(762,'2015-02-10 16:13:08','Item Created','ZurmoModule','Comment',128,'s:33:\"Versatile idea regarding the task\";',1),(763,'2015-02-10 16:13:08','Item Created','ZurmoModule','Task',46,'s:46:\"Prepare telephone directory for the company v2\";',1),(764,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',129,'s:30:\"Very helpful for the employees\";',1),(765,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',130,'s:23:\"Can easily track people\";',1),(766,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',131,'s:33:\"Versatile idea regarding the task\";',1),(767,'2015-02-10 16:13:09','Item Modified','ZurmoModule','Task',46,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(768,'2015-02-10 16:13:09','Item Created','ZurmoModule','Task',47,'s:29:\"Get an accounting software v2\";',1),(769,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',132,'s:30:\"Helpful for finance department\";',1),(770,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',133,'s:17:\"Reduced work load\";',1),(771,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',134,'s:30:\"Less number of people required\";',1),(772,'2015-02-10 16:13:09','Item Created','ZurmoModule','Comment',135,'s:33:\"Versatile idea regarding the task\";',1),(773,'2015-02-10 16:13:09','Item Modified','ZurmoModule','Task',47,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(774,'2015-02-10 16:13:09','Item Modified','ZurmoModule','Task',47,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(775,'2015-02-10 16:13:10','Item Created','ZurmoModule','Task',48,'s:47:\"Usage of google analytics on company website v2\";',1),(776,'2015-02-10 16:13:10','Item Created','ZurmoModule','Comment',136,'s:21:\"Aids in site analysis\";',1),(777,'2015-02-10 16:13:10','Item Created','ZurmoModule','Comment',137,'s:37:\"Would be helpful from SEO perspective\";',1),(778,'2015-02-10 16:13:10','Item Created','ZurmoModule','Comment',138,'s:33:\"Versatile idea regarding the task\";',1),(779,'2015-02-10 16:13:10','Item Modified','ZurmoModule','Task',48,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(780,'2015-02-10 16:13:10','Item Created','ZurmoModule','Project',4,'s:21:\"Fake Brothers Project\";',1),(781,'2015-02-10 16:13:10','Item Created','ZurmoModule','Task',49,'s:23:\"Create Demo Proposal v1\";',1),(782,'2015-02-10 16:13:11','Item Created','ZurmoModule','Comment',139,'s:27:\"Quite useful moving forward\";',1),(783,'2015-02-10 16:13:11','Item Created','ZurmoModule','Comment',140,'s:32:\"Would be helful for other people\";',1),(784,'2015-02-10 16:13:11','Item Created','ZurmoModule','Comment',141,'s:33:\"Versatile idea regarding the task\";',1),(785,'2015-02-10 16:13:11','Item Modified','ZurmoModule','Task',49,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(786,'2015-02-10 16:13:11','Item Created','ZurmoModule','Task',50,'s:46:\"Come up with a contacts list for the client v1\";',1),(787,'2015-02-10 16:13:11','Item Created','ZurmoModule','Comment',142,'s:31:\"Very beneficial for the company\";',1),(788,'2015-02-10 16:13:11','Item Created','ZurmoModule','Comment',143,'s:26:\"Helpful for the sales team\";',1),(789,'2015-02-10 16:13:11','Item Created','ZurmoModule','Comment',144,'s:33:\"Versatile idea regarding the task\";',1),(790,'2015-02-10 16:13:11','Item Modified','ZurmoModule','Task',50,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(791,'2015-02-10 16:13:12','Item Created','ZurmoModule','Task',51,'s:46:\"Prepare telephone directory for the company v1\";',1),(792,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',145,'s:30:\"Very helpful for the employees\";',1),(793,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',146,'s:23:\"Can easily track people\";',1),(794,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',147,'s:33:\"Versatile idea regarding the task\";',1),(795,'2015-02-10 16:13:12','Item Modified','ZurmoModule','Task',51,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(796,'2015-02-10 16:13:12','Item Created','ZurmoModule','Task',52,'s:29:\"Get an accounting software v1\";',1),(797,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',148,'s:30:\"Helpful for finance department\";',1),(798,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',149,'s:17:\"Reduced work load\";',1),(799,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',150,'s:30:\"Less number of people required\";',1),(800,'2015-02-10 16:13:12','Item Created','ZurmoModule','Comment',151,'s:33:\"Versatile idea regarding the task\";',1),(801,'2015-02-10 16:13:12','Item Modified','ZurmoModule','Task',52,'a:4:{i:0;s:29:\"Get an accounting software v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(802,'2015-02-10 16:13:13','Item Created','ZurmoModule','Task',53,'s:47:\"Usage of google analytics on company website v1\";',1),(803,'2015-02-10 16:13:13','Item Created','ZurmoModule','Comment',152,'s:21:\"Aids in site analysis\";',1),(804,'2015-02-10 16:13:13','Item Created','ZurmoModule','Comment',153,'s:37:\"Would be helpful from SEO perspective\";',1),(805,'2015-02-10 16:13:13','Item Created','ZurmoModule','Comment',154,'s:33:\"Versatile idea regarding the task\";',1),(806,'2015-02-10 16:13:13','Item Modified','ZurmoModule','Task',53,'a:4:{i:0;s:47:\"Usage of google analytics on company website v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(807,'2015-02-10 16:13:13','Item Created','ZurmoModule','Task',54,'s:23:\"Create Demo Proposal v2\";',1),(808,'2015-02-10 16:13:13','Item Created','ZurmoModule','Comment',155,'s:27:\"Quite useful moving forward\";',1),(809,'2015-02-10 16:13:13','Item Created','ZurmoModule','Comment',156,'s:32:\"Would be helful for other people\";',1),(810,'2015-02-10 16:13:13','Item Created','ZurmoModule','Comment',157,'s:33:\"Versatile idea regarding the task\";',1),(811,'2015-02-10 16:13:14','Item Created','ZurmoModule','Task',55,'s:46:\"Come up with a contacts list for the client v2\";',1),(812,'2015-02-10 16:13:14','Item Created','ZurmoModule','Comment',158,'s:31:\"Very beneficial for the company\";',1),(813,'2015-02-10 16:13:14','Item Created','ZurmoModule','Comment',159,'s:26:\"Helpful for the sales team\";',1),(814,'2015-02-10 16:13:14','Item Created','ZurmoModule','Comment',160,'s:33:\"Versatile idea regarding the task\";',1),(815,'2015-02-10 16:13:14','Item Modified','ZurmoModule','Task',55,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(816,'2015-02-10 16:13:14','Item Created','ZurmoModule','Task',56,'s:46:\"Prepare telephone directory for the company v2\";',1),(817,'2015-02-10 16:13:14','Item Created','ZurmoModule','Comment',161,'s:30:\"Very helpful for the employees\";',1),(818,'2015-02-10 16:13:14','Item Created','ZurmoModule','Comment',162,'s:23:\"Can easily track people\";',1),(819,'2015-02-10 16:13:14','Item Created','ZurmoModule','Comment',163,'s:33:\"Versatile idea regarding the task\";',1),(820,'2015-02-10 16:13:15','Item Modified','ZurmoModule','Task',56,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(821,'2015-02-10 16:13:15','Item Created','ZurmoModule','Task',57,'s:29:\"Get an accounting software v2\";',1),(822,'2015-02-10 16:13:15','Item Created','ZurmoModule','Comment',164,'s:30:\"Helpful for finance department\";',1),(823,'2015-02-10 16:13:15','Item Created','ZurmoModule','Comment',165,'s:17:\"Reduced work load\";',1),(824,'2015-02-10 16:13:15','Item Created','ZurmoModule','Comment',166,'s:30:\"Less number of people required\";',1),(825,'2015-02-10 16:13:15','Item Created','ZurmoModule','Comment',167,'s:33:\"Versatile idea regarding the task\";',1),(826,'2015-02-10 16:13:15','Item Modified','ZurmoModule','Task',57,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(827,'2015-02-10 16:13:16','Item Created','ZurmoModule','Task',58,'s:47:\"Usage of google analytics on company website v2\";',1),(828,'2015-02-10 16:13:16','Item Created','ZurmoModule','Comment',168,'s:21:\"Aids in site analysis\";',1),(829,'2015-02-10 16:13:16','Item Created','ZurmoModule','Comment',169,'s:37:\"Would be helpful from SEO perspective\";',1),(830,'2015-02-10 16:13:16','Item Created','ZurmoModule','Comment',170,'s:33:\"Versatile idea regarding the task\";',1),(831,'2015-02-10 16:13:16','Item Modified','ZurmoModule','Task',58,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(832,'2015-02-10 16:13:16','Item Modified','ZurmoModule','Task',58,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(833,'2015-02-10 16:13:16','Item Created','ZurmoModule','Project',5,'s:27:\"Sto Plains Holdings Project\";',1),(834,'2015-02-10 16:13:16','Item Created','ZurmoModule','Task',59,'s:23:\"Create Demo Proposal v1\";',1),(835,'2015-02-10 16:13:16','Item Created','ZurmoModule','Comment',171,'s:27:\"Quite useful moving forward\";',1),(836,'2015-02-10 16:13:16','Item Created','ZurmoModule','Comment',172,'s:32:\"Would be helful for other people\";',1),(837,'2015-02-10 16:13:16','Item Created','ZurmoModule','Comment',173,'s:33:\"Versatile idea regarding the task\";',1),(838,'2015-02-10 16:13:17','Item Modified','ZurmoModule','Task',59,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(839,'2015-02-10 16:13:17','Item Created','ZurmoModule','Task',60,'s:46:\"Come up with a contacts list for the client v1\";',1),(840,'2015-02-10 16:13:17','Item Created','ZurmoModule','Comment',174,'s:31:\"Very beneficial for the company\";',1),(841,'2015-02-10 16:13:17','Item Created','ZurmoModule','Comment',175,'s:26:\"Helpful for the sales team\";',1),(842,'2015-02-10 16:13:17','Item Created','ZurmoModule','Comment',176,'s:33:\"Versatile idea regarding the task\";',1),(843,'2015-02-10 16:13:17','Item Created','ZurmoModule','Task',61,'s:46:\"Prepare telephone directory for the company v1\";',1),(844,'2015-02-10 16:13:17','Item Created','ZurmoModule','Comment',177,'s:30:\"Very helpful for the employees\";',1),(845,'2015-02-10 16:13:17','Item Created','ZurmoModule','Comment',178,'s:23:\"Can easily track people\";',1),(846,'2015-02-10 16:13:17','Item Created','ZurmoModule','Comment',179,'s:33:\"Versatile idea regarding the task\";',1),(847,'2015-02-10 16:13:18','Item Modified','ZurmoModule','Task',61,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(848,'2015-02-10 16:13:18','Item Created','ZurmoModule','Task',62,'s:29:\"Get an accounting software v1\";',1),(849,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',180,'s:30:\"Helpful for finance department\";',1),(850,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',181,'s:17:\"Reduced work load\";',1),(851,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',182,'s:30:\"Less number of people required\";',1),(852,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',183,'s:33:\"Versatile idea regarding the task\";',1),(853,'2015-02-10 16:13:18','Item Created','ZurmoModule','Task',63,'s:47:\"Usage of google analytics on company website v1\";',1),(854,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',184,'s:21:\"Aids in site analysis\";',1),(855,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',185,'s:37:\"Would be helpful from SEO perspective\";',1),(856,'2015-02-10 16:13:18','Item Created','ZurmoModule','Comment',186,'s:33:\"Versatile idea regarding the task\";',1),(857,'2015-02-10 16:13:19','Item Modified','ZurmoModule','Task',63,'a:4:{i:0;s:47:\"Usage of google analytics on company website v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(858,'2015-02-10 16:13:19','Item Created','ZurmoModule','Task',64,'s:23:\"Create Demo Proposal v2\";',1),(859,'2015-02-10 16:13:19','Item Created','ZurmoModule','Comment',187,'s:27:\"Quite useful moving forward\";',1),(860,'2015-02-10 16:13:19','Item Created','ZurmoModule','Comment',188,'s:32:\"Would be helful for other people\";',1),(861,'2015-02-10 16:13:19','Item Created','ZurmoModule','Comment',189,'s:33:\"Versatile idea regarding the task\";',1),(862,'2015-02-10 16:13:20','Item Created','ZurmoModule','Task',65,'s:46:\"Come up with a contacts list for the client v2\";',1),(863,'2015-02-10 16:13:20','Item Created','ZurmoModule','Comment',190,'s:31:\"Very beneficial for the company\";',1),(864,'2015-02-10 16:13:20','Item Created','ZurmoModule','Comment',191,'s:26:\"Helpful for the sales team\";',1),(865,'2015-02-10 16:13:20','Item Created','ZurmoModule','Comment',192,'s:33:\"Versatile idea regarding the task\";',1),(866,'2015-02-10 16:13:20','Item Modified','ZurmoModule','Task',65,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(867,'2015-02-10 16:13:20','Item Created','ZurmoModule','Task',66,'s:46:\"Prepare telephone directory for the company v2\";',1),(868,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',193,'s:30:\"Very helpful for the employees\";',1),(869,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',194,'s:23:\"Can easily track people\";',1),(870,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',195,'s:33:\"Versatile idea regarding the task\";',1),(871,'2015-02-10 16:13:21','Item Created','ZurmoModule','Task',67,'s:29:\"Get an accounting software v2\";',1),(872,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',196,'s:30:\"Helpful for finance department\";',1),(873,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',197,'s:17:\"Reduced work load\";',1),(874,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',198,'s:30:\"Less number of people required\";',1),(875,'2015-02-10 16:13:21','Item Created','ZurmoModule','Comment',199,'s:33:\"Versatile idea regarding the task\";',1),(876,'2015-02-10 16:13:21','Item Modified','ZurmoModule','Task',67,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(877,'2015-02-10 16:13:22','Item Created','ZurmoModule','Task',68,'s:47:\"Usage of google analytics on company website v2\";',1),(878,'2015-02-10 16:13:22','Item Created','ZurmoModule','Comment',200,'s:21:\"Aids in site analysis\";',1),(879,'2015-02-10 16:13:22','Item Created','ZurmoModule','Comment',201,'s:37:\"Would be helpful from SEO perspective\";',1),(880,'2015-02-10 16:13:22','Item Created','ZurmoModule','Comment',202,'s:33:\"Versatile idea regarding the task\";',1),(881,'2015-02-10 16:13:22','Item Modified','ZurmoModule','Task',68,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(882,'2015-02-10 16:13:22','Item Created','ZurmoModule','Project',6,'s:28:\"Rouster and Sideways Project\";',1),(883,'2015-02-10 16:13:22','Item Created','ZurmoModule','Task',69,'s:23:\"Create Demo Proposal v1\";',1),(884,'2015-02-10 16:13:22','Item Created','ZurmoModule','Comment',203,'s:27:\"Quite useful moving forward\";',1),(885,'2015-02-10 16:13:22','Item Created','ZurmoModule','Comment',204,'s:32:\"Would be helful for other people\";',1),(886,'2015-02-10 16:13:22','Item Created','ZurmoModule','Comment',205,'s:33:\"Versatile idea regarding the task\";',1),(887,'2015-02-10 16:13:23','Item Modified','ZurmoModule','Task',69,'a:4:{i:0;s:23:\"Create Demo Proposal v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:2;}',1),(888,'2015-02-10 16:13:23','Item Created','ZurmoModule','Task',70,'s:46:\"Come up with a contacts list for the client v1\";',1),(889,'2015-02-10 16:13:23','Item Created','ZurmoModule','Comment',206,'s:31:\"Very beneficial for the company\";',1),(890,'2015-02-10 16:13:23','Item Created','ZurmoModule','Comment',207,'s:26:\"Helpful for the sales team\";',1),(891,'2015-02-10 16:13:23','Item Created','ZurmoModule','Comment',208,'s:33:\"Versatile idea regarding the task\";',1),(892,'2015-02-10 16:13:23','Item Modified','ZurmoModule','Task',70,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(893,'2015-02-10 16:13:23','Item Modified','ZurmoModule','Task',70,'a:4:{i:0;s:46:\"Come up with a contacts list for the client v1\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(894,'2015-02-10 16:13:23','Item Created','ZurmoModule','Task',71,'s:46:\"Prepare telephone directory for the company v1\";',1),(895,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',209,'s:30:\"Very helpful for the employees\";',1),(896,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',210,'s:23:\"Can easily track people\";',1),(897,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',211,'s:33:\"Versatile idea regarding the task\";',1),(898,'2015-02-10 16:13:24','Item Modified','ZurmoModule','Task',71,'a:4:{i:0;s:46:\"Prepare telephone directory for the company v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(899,'2015-02-10 16:13:24','Item Created','ZurmoModule','Task',72,'s:29:\"Get an accounting software v1\";',1),(900,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',212,'s:30:\"Helpful for finance department\";',1),(901,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',213,'s:17:\"Reduced work load\";',1),(902,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',214,'s:30:\"Less number of people required\";',1),(903,'2015-02-10 16:13:24','Item Created','ZurmoModule','Comment',215,'s:33:\"Versatile idea regarding the task\";',1),(904,'2015-02-10 16:13:24','Item Modified','ZurmoModule','Task',72,'a:4:{i:0;s:29:\"Get an accounting software v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:4;}',1),(905,'2015-02-10 16:13:25','Item Created','ZurmoModule','Task',73,'s:47:\"Usage of google analytics on company website v1\";',1),(906,'2015-02-10 16:13:25','Item Created','ZurmoModule','Comment',216,'s:21:\"Aids in site analysis\";',1),(907,'2015-02-10 16:13:25','Item Created','ZurmoModule','Comment',217,'s:37:\"Would be helpful from SEO perspective\";',1),(908,'2015-02-10 16:13:25','Item Created','ZurmoModule','Comment',218,'s:33:\"Versatile idea regarding the task\";',1),(909,'2015-02-10 16:13:25','Item Modified','ZurmoModule','Task',73,'a:4:{i:0;s:47:\"Usage of google analytics on company website v1\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:3;}',1),(910,'2015-02-10 16:13:25','Item Created','ZurmoModule','Task',74,'s:23:\"Create Demo Proposal v2\";',1),(911,'2015-02-10 16:13:25','Item Created','ZurmoModule','Comment',219,'s:27:\"Quite useful moving forward\";',1),(912,'2015-02-10 16:13:25','Item Created','ZurmoModule','Comment',220,'s:32:\"Would be helful for other people\";',1),(913,'2015-02-10 16:13:25','Item Created','ZurmoModule','Comment',221,'s:33:\"Versatile idea regarding the task\";',1),(914,'2015-02-10 16:13:25','Item Modified','ZurmoModule','Task',74,'a:4:{i:0;s:23:\"Create Demo Proposal v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(915,'2015-02-10 16:13:25','Item Modified','ZurmoModule','Task',74,'a:4:{i:0;s:23:\"Create Demo Proposal v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(916,'2015-02-10 16:13:26','Item Created','ZurmoModule','Task',75,'s:46:\"Come up with a contacts list for the client v2\";',1),(917,'2015-02-10 16:13:26','Item Created','ZurmoModule','Comment',222,'s:31:\"Very beneficial for the company\";',1),(918,'2015-02-10 16:13:26','Item Created','ZurmoModule','Comment',223,'s:26:\"Helpful for the sales team\";',1),(919,'2015-02-10 16:13:26','Item Created','ZurmoModule','Comment',224,'s:33:\"Versatile idea regarding the task\";',1),(920,'2015-02-10 16:13:26','Item Created','ZurmoModule','Task',76,'s:46:\"Prepare telephone directory for the company v2\";',1),(921,'2015-02-10 16:13:26','Item Created','ZurmoModule','Comment',225,'s:30:\"Very helpful for the employees\";',1),(922,'2015-02-10 16:13:26','Item Created','ZurmoModule','Comment',226,'s:23:\"Can easily track people\";',1),(923,'2015-02-10 16:13:26','Item Created','ZurmoModule','Comment',227,'s:33:\"Versatile idea regarding the task\";',1),(924,'2015-02-10 16:13:27','Item Created','ZurmoModule','Task',77,'s:29:\"Get an accounting software v2\";',1),(925,'2015-02-10 16:13:27','Item Created','ZurmoModule','Comment',228,'s:30:\"Helpful for finance department\";',1),(926,'2015-02-10 16:13:27','Item Created','ZurmoModule','Comment',229,'s:17:\"Reduced work load\";',1),(927,'2015-02-10 16:13:27','Item Created','ZurmoModule','Comment',230,'s:30:\"Less number of people required\";',1),(928,'2015-02-10 16:13:27','Item Created','ZurmoModule','Comment',231,'s:33:\"Versatile idea regarding the task\";',1),(929,'2015-02-10 16:13:27','Item Modified','ZurmoModule','Task',77,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(930,'2015-02-10 16:13:27','Item Modified','ZurmoModule','Task',77,'a:4:{i:0;s:29:\"Get an accounting software v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1),(931,'2015-02-10 16:13:27','Item Created','ZurmoModule','Task',78,'s:47:\"Usage of google analytics on company website v2\";',1),(932,'2015-02-10 16:13:28','Item Created','ZurmoModule','Comment',232,'s:21:\"Aids in site analysis\";',1),(933,'2015-02-10 16:13:28','Item Created','ZurmoModule','Comment',233,'s:37:\"Would be helpful from SEO perspective\";',1),(934,'2015-02-10 16:13:28','Item Created','ZurmoModule','Comment',234,'s:33:\"Versatile idea regarding the task\";',1),(935,'2015-02-10 16:13:28','Item Modified','ZurmoModule','Task',78,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:6:\"status\";}i:2;i:1;i:3;i:5;}',1),(936,'2015-02-10 16:13:28','Item Modified','ZurmoModule','Task',78,'a:4:{i:0;s:47:\"Usage of google analytics on company website v2\";i:1;a:1:{i:0;s:9:\"completed\";}i:2;s:1:\"0\";i:3;s:1:\"1\";}',1);
/*!40000 ALTER TABLE `auditevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoresponder`
--

DROP TABLE IF EXISTS `autoresponder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoresponder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `fromoperationdurationinterval` int(11) DEFAULT NULL,
  `fromoperationdurationtype` text COLLATE utf8_unicode_ci,
  `operationtype` int(11) DEFAULT NULL,
  `enabletracking` tinyint(1) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `marketinglist_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoresponder`
--

LOCK TABLES `autoresponder` WRITE;
/*!40000 ALTER TABLE `autoresponder` DISABLE KEYS */;
INSERT INTO `autoresponder` VALUES (1,'You are now subscribed.','<html><head></head><body><p>Thanks for <i>subscribing</i>. You are not gonna <strong>regret</strong> this.</body></html>','Thanks for subscribing. You are not gonna regret this.',14,'Day',1,1,58,5),(2,'You subscribed today.','<html><head></head><body><p>So you like <i>our</i> emails so far?</body></html>','So you like our emails so far?',25,'Day',1,1,61,4),(3,'You are now unsubscribed','<html><head></head><body><p><strong>You are now unsubscribed. Its really sad to see you go but you can always subscribe</strong></body></html>','You are now unsubscribed. Its really sad to see you go but you can always subscribe',3,'Day',2,1,65,5),(4,'Your unsubscription triggered the next big bang','<html><head></head><body><p>So you are <strong>not</strong> coming back?</body></html>','So you are not coming back?',17,'Day',2,1,68,4);
/*!40000 ALTER TABLE `autoresponder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoresponderitem`
--

DROP TABLE IF EXISTS `autoresponderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoresponderitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processdatetime` datetime DEFAULT NULL,
  `processed` tinyint(1) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `emailmessage_id` int(11) unsigned DEFAULT NULL,
  `autoresponder_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoresponderitem`
--

LOCK TABLES `autoresponderitem` WRITE;
/*!40000 ALTER TABLE `autoresponderitem` DISABLE KEYS */;
INSERT INTO `autoresponderitem` VALUES (1,'2015-02-10 15:11:02',1,1,1,4),(2,'2015-02-10 17:51:48',0,5,2,4),(3,'2015-02-10 17:04:25',0,6,3,1),(4,'2015-02-10 15:07:00',1,3,4,2),(5,'2015-02-10 16:52:45',0,12,5,3),(6,'2015-02-10 17:04:05',0,12,6,4),(7,'2015-02-10 17:31:51',0,9,7,3),(8,'2015-02-10 17:37:36',0,3,8,2),(9,'2015-02-10 17:17:42',0,2,9,4),(10,'2015-02-10 15:36:37',1,10,10,1),(11,'2015-02-10 16:54:01',0,9,11,1),(12,'2015-02-10 14:55:07',1,3,12,1),(13,'2015-02-10 16:55:57',0,7,13,2),(14,'2015-02-10 15:34:54',1,10,14,3),(15,'2015-02-10 17:21:29',0,7,15,4),(16,'2015-02-10 17:31:16',0,12,16,1),(17,'2015-02-10 15:15:48',1,4,17,3),(18,'2015-02-10 17:16:01',0,5,18,2);
/*!40000 ALTER TABLE `autoresponderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autoresponderitemactivity`
--

DROP TABLE IF EXISTS `autoresponderitemactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoresponderitemactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessageactivity_id` int(11) unsigned DEFAULT NULL,
  `autoresponderitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailmessageactivity_id_autoresponderitem_id` (`emailmessageactivity_id`,`autoresponderitem_id`),
  KEY `emailmessageactivity_id` (`emailmessageactivity_id`),
  KEY `autoresponderitem_id` (`autoresponderitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoresponderitemactivity`
--

LOCK TABLES `autoresponderitemactivity` WRITE;
/*!40000 ALTER TABLE `autoresponderitemactivity` DISABLE KEYS */;
INSERT INTO `autoresponderitemactivity` VALUES (1,1,14),(2,2,14),(3,3,17),(4,4,17),(5,5,13),(6,6,14),(7,7,16),(8,8,12),(9,9,10),(10,10,5),(11,11,12),(12,12,8),(13,13,16),(14,14,16),(15,15,3),(16,16,7),(17,17,16),(18,18,1);
/*!40000 ALTER TABLE `autoresponderitemactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basecustomfield`
--

DROP TABLE IF EXISTS `basecustomfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basecustomfield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `data_customfielddata_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basecustomfield`
--

LOCK TABLES `basecustomfield` WRITE;
/*!40000 ALTER TABLE `basecustomfield` DISABLE KEYS */;
INSERT INTO `basecustomfield` VALUES (1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(8,8),(9,2),(10,3),(11,2),(12,3),(13,2),(14,3),(15,2),(16,3),(17,2),(18,3),(19,2),(20,3),(21,8),(22,2),(23,4),(24,8),(25,2),(26,4),(27,8),(28,2),(29,4),(30,8),(31,2),(32,4),(33,8),(34,2),(35,4),(36,8),(37,2),(38,4),(39,8),(40,2),(41,4),(42,8),(43,2),(44,4),(45,8),(46,2),(47,4),(48,8),(49,2),(50,4),(51,8),(52,2),(53,4),(54,8),(55,2),(56,4),(57,8),(58,2),(59,4),(60,8),(61,2),(62,4),(63,8),(64,2),(65,4),(66,8),(67,2),(68,4),(69,8),(70,2),(71,4),(72,8),(73,2),(74,4),(75,8),(76,2),(77,4),(78,8),(79,2),(80,4),(81,8),(82,2),(83,4),(84,8),(85,2),(86,4),(87,8),(88,2),(89,4),(90,8),(91,2),(92,4),(93,6),(94,4),(95,6),(96,4),(97,6),(98,4),(99,6),(100,4),(101,6),(102,4),(103,6),(104,4),(105,6),(106,4),(107,6),(108,4),(109,6),(110,4),(111,6),(112,4),(113,6),(114,4),(115,6),(116,4),(117,5),(118,5),(119,5),(120,5),(121,5),(122,5),(123,5),(124,5),(125,5),(126,5),(127,5),(128,5),(129,5),(130,5),(131,5),(132,5),(133,5),(134,5),(135,5),(136,5),(137,5),(138,5),(139,5),(140,5),(141,5),(142,5),(143,5),(144,5),(145,5),(146,5),(147,5),(148,5),(149,5),(150,5),(151,5),(152,5),(153,7),(154,7),(155,7),(156,7),(157,7),(158,7),(159,7),(160,7),(161,7),(162,7),(163,7),(164,7),(165,7),(166,7),(167,7),(168,7),(169,7),(170,7),(171,7),(172,7),(173,7),(174,7),(175,7),(176,7),(177,7),(178,7),(179,7),(180,7),(181,7),(182,7),(183,7),(184,7),(185,7),(186,7),(187,7),(188,7),(189,7),(190,7),(191,7),(192,7),(193,7),(194,7),(195,7),(196,7),(197,7),(198,7),(199,7),(200,7),(201,7),(202,7),(203,7),(204,7),(205,7),(206,7),(207,7),(208,7),(209,7),(210,7),(211,7);
/*!40000 ALTER TABLE `basecustomfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basestarredmodel`
--

DROP TABLE IF EXISTS `basestarredmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basestarredmodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basestarredmodel`
--

LOCK TABLES `basestarredmodel` WRITE;
/*!40000 ALTER TABLE `basestarredmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `basestarredmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bytimeworkflowinqueue`
--

DROP TABLE IF EXISTS `bytimeworkflowinqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bytimeworkflowinqueue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processdatetime` datetime DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `modelitem_item_id` int(11) unsigned DEFAULT NULL,
  `savedworkflow_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bytimeworkflowinqueue`
--

LOCK TABLES `bytimeworkflowinqueue` WRITE;
/*!40000 ALTER TABLE `bytimeworkflowinqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `bytimeworkflowinqueue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calculatedderivedattributemetadata`
--

DROP TABLE IF EXISTS `calculatedderivedattributemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calculatedderivedattributemetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `derivedattributemetadata_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculatedderivedattributemetadata`
--

LOCK TABLES `calculatedderivedattributemetadata` WRITE;
/*!40000 ALTER TABLE `calculatedderivedattributemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `calculatedderivedattributemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `supportsrichtext` tinyint(1) unsigned DEFAULT NULL,
  `sendondatetime` datetime DEFAULT NULL,
  `fromname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromaddress` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `enabletracking` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `marketinglist_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,'10% discount for new clients',4,1,'2015-02-10 17:23:10','Marketing Team','marketing@company.com','Special Offer: 10% Discount for new clients','<html><head></head><body><p>We are offering <strong>10% discount</strong> on all packages to new clients.</p></body></html>','We are offering 10% discount on all packages to new clients.',0,48,4),(2,'5% discount for existing clients',2,0,'2015-02-10 16:57:59','Sales Team','sales@company.com','Special Offer: 5% Discount for existing clients','<html><head></head><body><p>Existing clients can upgrade to a higher package and enjoy a special one time <strong>5% discount</strong>.</p></body></html>','Existing clients can upgrade to a higher package and enjoy a special one time 5% discount.',1,49,4),(3,'Infrastructure redesign completed',2,1,'2015-02-10 17:23:41','Development Team','development@company.com','Infrastructure Redesign Completed','<html><head></head><body><p>We have done lot of infrastructure redesign in terms and <strong>seucrity and performance</strong>.</p></body></html>','We have done lot of infrastructure redesign in terms and seucrity and performance.',0,50,5),(4,'Christmas Sale',3,0,'2015-02-10 16:12:30','Special Offers','offers@company.com','Jingle Bells and Special Christmas Offer','<html><head></head><body><p>Brace yourselves. This year santa came bit early with a special gift for you, <strong>25% discount</strong> on all packages.</p></body></html>','Brace yourselves. This year santa came bit early with a special gift for you, 25% discount on all packages.',0,51,3),(5,'Upgrade Complete',4,1,'2015-02-10 16:59:44','Support Team','support@company.com','Upgrade to v1.6','<html><head></head><body><p>All existing clients have been <strong>upgraded to v1.6</strong> as of now. Please contact support if you face any issues.</p></body></html>','All existing clients have been upgraded to v1.6 as of now. Please contact support if you face any issues.',1,52,1),(6,'Loyalty Program - Special Deals',1,1,'2015-02-10 17:10:50','Marketing Team','info@company.com','Special Offer: 10% Discount for new clients','<html><head></head><body><p>We are offering <strong>10% discount</strong> on all packages to new clients.</p></body></html>','We are offering 10% discount on all packages to new clients.',0,53,1),(7,'Loyalty Member - Enroll Now',2,0,'2015-02-10 16:12:30','Sales Team','marketing@company.com','Special Offer: 5% Discount for existing clients','<html><head></head><body><p>Existing clients can upgrade to a higher package and enjoy a special one time <strong>5% discount</strong>.</p></body></html>','Existing clients can upgrade to a higher package and enjoy a special one time 5% discount.',1,54,4),(8,'Loyalty Members - Free Lunch',4,0,'2015-02-10 16:46:59','Development Team','sales@company.com','Infrastructure Redesign Completed','<html><head></head><body><p>We have done lot of infrastructure redesign in terms and <strong>seucrity and performance</strong>.</p></body></html>','We have done lot of infrastructure redesign in terms and seucrity and performance.',1,55,3),(9,'Loyalty Members - Bring a friend',1,0,'2015-02-10 17:23:53','Special Offers','development@company.com','Jingle Bells and Special Christmas Offer','<html><head></head><body><p>Brace yourselves. This year santa came bit early with a special gift for you, <strong>25% discount</strong> on all packages.</p></body></html>','Brace yourselves. This year santa came bit early with a special gift for you, 25% discount on all packages.',1,56,1),(10,'Loyalty Members - Trip to Rome',1,0,'2015-02-10 17:18:37','Support Team','offers@company.com','Upgrade to v1.6','<html><head></head><body><p>All existing clients have been <strong>upgraded to v1.6</strong> as of now. Please contact support if you face any issues.</p></body></html>','All existing clients have been upgraded to v1.6 as of now. Please contact support if you face any issues.',0,57,4);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_read`
--

DROP TABLE IF EXISTS `campaign_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `campaign_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_read`
--

LOCK TABLES `campaign_read` WRITE;
/*!40000 ALTER TABLE `campaign_read` DISABLE KEYS */;
INSERT INTO `campaign_read` VALUES (1,48,'G2',1),(2,49,'G2',1),(3,50,'G2',1),(4,51,'G2',1),(5,52,'G2',1),(6,53,'G2',1),(7,54,'G2',1),(8,55,'G2',1),(9,56,'G2',1),(10,57,'G2',1);
/*!40000 ALTER TABLE `campaign_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignitem`
--

DROP TABLE IF EXISTS `campaignitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaignitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `processed` tinyint(1) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `emailmessage_id` int(11) unsigned DEFAULT NULL,
  `campaign_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `contact_id` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignitem`
--

LOCK TABLES `campaignitem` WRITE;
/*!40000 ALTER TABLE `campaignitem` DISABLE KEYS */;
INSERT INTO `campaignitem` VALUES (1,0,11,25,5),(2,0,6,30,7),(3,1,11,21,3),(4,0,1,35,10),(5,0,2,31,7),(6,1,11,27,6),(7,0,7,22,3),(8,1,12,33,9),(9,1,10,19,2),(10,0,2,28,6),(11,1,5,26,5),(12,1,7,32,7),(13,0,5,34,9),(14,0,7,23,3),(15,0,1,29,6),(16,0,10,36,10),(17,1,10,24,4),(18,0,4,20,2);
/*!40000 ALTER TABLE `campaignitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaignitemactivity`
--

DROP TABLE IF EXISTS `campaignitemactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaignitemactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessageactivity_id` int(11) unsigned DEFAULT NULL,
  `campaignitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailmessageactivity_id_campaignitem_id` (`emailmessageactivity_id`,`campaignitem_id`),
  KEY `emailmessageactivity_id` (`emailmessageactivity_id`),
  KEY `campaignitem_id` (`campaignitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaignitemactivity`
--

LOCK TABLES `campaignitemactivity` WRITE;
/*!40000 ALTER TABLE `campaignitemactivity` DISABLE KEYS */;
INSERT INTO `campaignitemactivity` VALUES (1,19,11),(2,20,12),(3,21,7),(4,22,5),(5,23,17),(6,24,8),(7,25,10),(8,26,12),(9,27,11),(10,28,14),(11,29,2),(12,30,6),(13,31,4),(14,32,12),(15,33,1),(16,34,5),(17,35,15),(18,36,10);
/*!40000 ALTER TABLE `campaignitemactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Interesting Idea',188,1,'conversation'),(2,'I am not sure Mars is best.  What about Titan?  It offers some advantages.',189,1,'conversation'),(3,'Are we allowed to hire aliens?',190,1,'conversation'),(4,'Some info about Mars: Mars is the fourth planet from the Sun in the Solar System. Named after the Roman god of war, Mars, it is often described as the \"Red Planet\" as the iron oxide prevalent on its surface gives it a reddish appearance',191,1,'conversation'),(5,'Great idea guys. Keep it coming.',192,1,'conversation'),(6,'Elephants are cool.',194,2,'conversation'),(7,'What about giraffes.  Here is some info: he giraffe (Giraffa camelopardalis) is an African even-toed ungulate mammal, the tallest living terrestrial animal and the largest ruminant. Its specific name refers to its camel-like face and the patches of color on its fur, which bear a vague resemblance to a leopard\'s spots.',195,2,'conversation'),(8,'I think something like a snake eating a mouse could be funny.',196,2,'conversation'),(9,'Great idea guys. Keep it coming.',197,2,'conversation'),(10,'That should be fun.  Bring your laptop in case we need you!',199,3,'conversation'),(11,'Do not bring your laptop.  That would ruin the fun.',200,3,'conversation'),(12,'Make sure you hike up the volcano.',201,3,'conversation'),(13,'I want to take a vacation.',202,3,'conversation'),(14,'We should have a company retreat in Hawaii.  That would be fun!',203,3,'conversation'),(15,'Great idea guys. Keep it coming.',204,3,'conversation'),(16,'How about at a museum?',384,1,'mission'),(17,'I am going to be out of town, so I can\'t attend.',385,1,'mission'),(18,'I guess i can take this on.',386,1,'mission'),(19,'I don\'t even know what this mission is.  Guess I can\'t take it.',388,2,'mission'),(20,'Always good to save money!',389,2,'mission'),(21,'Can I go to a bank to do this?',391,3,'mission'),(22,'Yes, a bank will notarize a document for you',392,3,'mission'),(23,'Is this for our consulting services?',394,4,'mission'),(24,'No, this is for a new offering we will have around our widgets',395,4,'mission'),(25,'I would love us to get this guy as a customer',520,1,'socialitem'),(26,'I second that.',521,1,'socialitem'),(27,'Would be an amazing case study',522,1,'socialitem'),(28,'How about at a museum?',526,4,'socialitem'),(29,'I am going to be out of town, so I can\'t attend.',527,4,'socialitem'),(30,'I guess i can take this on.',528,4,'socialitem'),(31,'Dude, get to work',533,8,'socialitem'),(32,'Lets get some beers',534,8,'socialitem'),(33,'Did you contact Sarah in client services yet?',538,10,'socialitem'),(34,'That is probably a good idea',539,10,'socialitem'),(35,'Only if sarah is having a good day',540,10,'socialitem'),(36,'I wish i was in sales..',542,11,'socialitem'),(37,'Dude, IT just twiddles their thumbs most of the time anyways :)',543,11,'socialitem'),(38,'Yeah whatever..',544,11,'socialitem'),(39,'I am in for golf, primarly drinking and riding the cart.',545,11,'socialitem'),(40,'Awesome!',548,12,'socialitem'),(41,'I second that.',549,12,'socialitem'),(42,'You are buying drinks tonight',550,12,'socialitem'),(43,'Quite useful moving forward',590,19,'task'),(44,'Would be helful for other people',591,19,'task'),(45,'Versatile idea regarding the task',592,19,'task'),(46,'Very beneficial for the company',594,20,'task'),(47,'Helpful for the sales team',595,20,'task'),(48,'Versatile idea regarding the task',596,20,'task'),(49,'Very helpful for the employees',598,21,'task'),(50,'Can easily track people',599,21,'task'),(51,'Versatile idea regarding the task',600,21,'task'),(52,'Helpful for finance department',602,22,'task'),(53,'Reduced work load',603,22,'task'),(54,'Less number of people required',604,22,'task'),(55,'Versatile idea regarding the task',605,22,'task'),(56,'Aids in site analysis',607,23,'task'),(57,'Would be helpful from SEO perspective',608,23,'task'),(58,'Versatile idea regarding the task',609,23,'task'),(59,'Quite useful moving forward',611,24,'task'),(60,'Would be helful for other people',612,24,'task'),(61,'Versatile idea regarding the task',613,24,'task'),(62,'Very beneficial for the company',615,25,'task'),(63,'Helpful for the sales team',616,25,'task'),(64,'Versatile idea regarding the task',617,25,'task'),(65,'Very helpful for the employees',619,26,'task'),(66,'Can easily track people',620,26,'task'),(67,'Versatile idea regarding the task',621,26,'task'),(68,'Helpful for finance department',623,27,'task'),(69,'Reduced work load',624,27,'task'),(70,'Less number of people required',625,27,'task'),(71,'Versatile idea regarding the task',626,27,'task'),(72,'Aids in site analysis',628,28,'task'),(73,'Would be helpful from SEO perspective',629,28,'task'),(74,'Versatile idea regarding the task',630,28,'task'),(75,'Quite useful moving forward',633,29,'task'),(76,'Would be helful for other people',634,29,'task'),(77,'Versatile idea regarding the task',635,29,'task'),(78,'Very beneficial for the company',637,30,'task'),(79,'Helpful for the sales team',638,30,'task'),(80,'Versatile idea regarding the task',639,30,'task'),(81,'Very helpful for the employees',641,31,'task'),(82,'Can easily track people',642,31,'task'),(83,'Versatile idea regarding the task',643,31,'task'),(84,'Helpful for finance department',645,32,'task'),(85,'Reduced work load',646,32,'task'),(86,'Less number of people required',647,32,'task'),(87,'Versatile idea regarding the task',648,32,'task'),(88,'Aids in site analysis',650,33,'task'),(89,'Would be helpful from SEO perspective',651,33,'task'),(90,'Versatile idea regarding the task',652,33,'task'),(91,'Quite useful moving forward',654,34,'task'),(92,'Would be helful for other people',655,34,'task'),(93,'Versatile idea regarding the task',656,34,'task'),(94,'Very beneficial for the company',658,35,'task'),(95,'Helpful for the sales team',659,35,'task'),(96,'Versatile idea regarding the task',660,35,'task'),(97,'Very helpful for the employees',662,36,'task'),(98,'Can easily track people',663,36,'task'),(99,'Versatile idea regarding the task',664,36,'task'),(100,'Helpful for finance department',666,37,'task'),(101,'Reduced work load',667,37,'task'),(102,'Less number of people required',668,37,'task'),(103,'Versatile idea regarding the task',669,37,'task'),(104,'Aids in site analysis',671,38,'task'),(105,'Would be helpful from SEO perspective',672,38,'task'),(106,'Versatile idea regarding the task',673,38,'task'),(107,'Quite useful moving forward',676,39,'task'),(108,'Would be helful for other people',677,39,'task'),(109,'Versatile idea regarding the task',678,39,'task'),(110,'Very beneficial for the company',680,40,'task'),(111,'Helpful for the sales team',681,40,'task'),(112,'Versatile idea regarding the task',682,40,'task'),(113,'Very helpful for the employees',684,41,'task'),(114,'Can easily track people',685,41,'task'),(115,'Versatile idea regarding the task',686,41,'task'),(116,'Helpful for finance department',688,42,'task'),(117,'Reduced work load',689,42,'task'),(118,'Less number of people required',690,42,'task'),(119,'Versatile idea regarding the task',691,42,'task'),(120,'Aids in site analysis',693,43,'task'),(121,'Would be helpful from SEO perspective',694,43,'task'),(122,'Versatile idea regarding the task',695,43,'task'),(123,'Quite useful moving forward',697,44,'task'),(124,'Would be helful for other people',698,44,'task'),(125,'Versatile idea regarding the task',699,44,'task'),(126,'Very beneficial for the company',701,45,'task'),(127,'Helpful for the sales team',702,45,'task'),(128,'Versatile idea regarding the task',703,45,'task'),(129,'Very helpful for the employees',705,46,'task'),(130,'Can easily track people',706,46,'task'),(131,'Versatile idea regarding the task',707,46,'task'),(132,'Helpful for finance department',709,47,'task'),(133,'Reduced work load',710,47,'task'),(134,'Less number of people required',711,47,'task'),(135,'Versatile idea regarding the task',712,47,'task'),(136,'Aids in site analysis',714,48,'task'),(137,'Would be helpful from SEO perspective',715,48,'task'),(138,'Versatile idea regarding the task',716,48,'task'),(139,'Quite useful moving forward',719,49,'task'),(140,'Would be helful for other people',720,49,'task'),(141,'Versatile idea regarding the task',721,49,'task'),(142,'Very beneficial for the company',723,50,'task'),(143,'Helpful for the sales team',724,50,'task'),(144,'Versatile idea regarding the task',725,50,'task'),(145,'Very helpful for the employees',727,51,'task'),(146,'Can easily track people',728,51,'task'),(147,'Versatile idea regarding the task',729,51,'task'),(148,'Helpful for finance department',731,52,'task'),(149,'Reduced work load',732,52,'task'),(150,'Less number of people required',733,52,'task'),(151,'Versatile idea regarding the task',734,52,'task'),(152,'Aids in site analysis',736,53,'task'),(153,'Would be helpful from SEO perspective',737,53,'task'),(154,'Versatile idea regarding the task',738,53,'task'),(155,'Quite useful moving forward',740,54,'task'),(156,'Would be helful for other people',741,54,'task'),(157,'Versatile idea regarding the task',742,54,'task'),(158,'Very beneficial for the company',744,55,'task'),(159,'Helpful for the sales team',745,55,'task'),(160,'Versatile idea regarding the task',746,55,'task'),(161,'Very helpful for the employees',748,56,'task'),(162,'Can easily track people',749,56,'task'),(163,'Versatile idea regarding the task',750,56,'task'),(164,'Helpful for finance department',752,57,'task'),(165,'Reduced work load',753,57,'task'),(166,'Less number of people required',754,57,'task'),(167,'Versatile idea regarding the task',755,57,'task'),(168,'Aids in site analysis',757,58,'task'),(169,'Would be helpful from SEO perspective',758,58,'task'),(170,'Versatile idea regarding the task',759,58,'task'),(171,'Quite useful moving forward',762,59,'task'),(172,'Would be helful for other people',763,59,'task'),(173,'Versatile idea regarding the task',764,59,'task'),(174,'Very beneficial for the company',766,60,'task'),(175,'Helpful for the sales team',767,60,'task'),(176,'Versatile idea regarding the task',768,60,'task'),(177,'Very helpful for the employees',770,61,'task'),(178,'Can easily track people',771,61,'task'),(179,'Versatile idea regarding the task',772,61,'task'),(180,'Helpful for finance department',774,62,'task'),(181,'Reduced work load',775,62,'task'),(182,'Less number of people required',776,62,'task'),(183,'Versatile idea regarding the task',777,62,'task'),(184,'Aids in site analysis',779,63,'task'),(185,'Would be helpful from SEO perspective',780,63,'task'),(186,'Versatile idea regarding the task',781,63,'task'),(187,'Quite useful moving forward',783,64,'task'),(188,'Would be helful for other people',784,64,'task'),(189,'Versatile idea regarding the task',785,64,'task'),(190,'Very beneficial for the company',787,65,'task'),(191,'Helpful for the sales team',788,65,'task'),(192,'Versatile idea regarding the task',789,65,'task'),(193,'Very helpful for the employees',791,66,'task'),(194,'Can easily track people',792,66,'task'),(195,'Versatile idea regarding the task',793,66,'task'),(196,'Helpful for finance department',795,67,'task'),(197,'Reduced work load',796,67,'task'),(198,'Less number of people required',797,67,'task'),(199,'Versatile idea regarding the task',798,67,'task'),(200,'Aids in site analysis',800,68,'task'),(201,'Would be helpful from SEO perspective',801,68,'task'),(202,'Versatile idea regarding the task',802,68,'task'),(203,'Quite useful moving forward',805,69,'task'),(204,'Would be helful for other people',806,69,'task'),(205,'Versatile idea regarding the task',807,69,'task'),(206,'Very beneficial for the company',809,70,'task'),(207,'Helpful for the sales team',810,70,'task'),(208,'Versatile idea regarding the task',811,70,'task'),(209,'Very helpful for the employees',813,71,'task'),(210,'Can easily track people',814,71,'task'),(211,'Versatile idea regarding the task',815,71,'task'),(212,'Helpful for finance department',817,72,'task'),(213,'Reduced work load',818,72,'task'),(214,'Less number of people required',819,72,'task'),(215,'Versatile idea regarding the task',820,72,'task'),(216,'Aids in site analysis',822,73,'task'),(217,'Would be helpful from SEO perspective',823,73,'task'),(218,'Versatile idea regarding the task',824,73,'task'),(219,'Quite useful moving forward',826,74,'task'),(220,'Would be helful for other people',827,74,'task'),(221,'Versatile idea regarding the task',828,74,'task'),(222,'Very beneficial for the company',830,75,'task'),(223,'Helpful for the sales team',831,75,'task'),(224,'Versatile idea regarding the task',832,75,'task'),(225,'Very helpful for the employees',834,76,'task'),(226,'Can easily track people',835,76,'task'),(227,'Versatile idea regarding the task',836,76,'task'),(228,'Helpful for finance department',838,77,'task'),(229,'Reduced work load',839,77,'task'),(230,'Less number of people required',840,77,'task'),(231,'Versatile idea regarding the task',841,77,'task'),(232,'Aids in site analysis',843,78,'task'),(233,'Would be helpful from SEO perspective',844,78,'task'),(234,'Versatile idea regarding the task',845,78,'task');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `companyname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `latestactivitydatetime` datetime DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `googlewebtrackingid` text COLLATE utf8_unicode_ci,
  `person_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `industry_customfield_id` int(11) unsigned DEFAULT NULL,
  `secondaryaddress_address_id` int(11) unsigned DEFAULT NULL,
  `secondaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `source_customfield_id` int(11) unsigned DEFAULT NULL,
  `state_contactstate_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,NULL,NULL,NULL,'http://www.USRoboticsandMe.com',NULL,11,2,22,NULL,NULL,23,5),(2,NULL,NULL,NULL,'http://www.USRoboticsandMe.com',NULL,12,2,25,NULL,NULL,26,5),(3,NULL,NULL,NULL,'http://www.Chasers.com',NULL,13,6,28,NULL,NULL,29,6),(4,NULL,NULL,NULL,'http://www.Initech.com',NULL,14,1,31,NULL,NULL,32,5),(5,NULL,NULL,NULL,'http://www.Chasers.com',NULL,15,6,34,NULL,NULL,35,5),(6,NULL,NULL,NULL,'http://www.DemoCompany.com',NULL,16,5,37,NULL,NULL,38,6),(7,NULL,NULL,NULL,'http://www.USRoboticsandMe.com',NULL,17,2,40,NULL,NULL,41,6),(8,NULL,NULL,NULL,'http://www.TessierAshpool.com',NULL,18,4,43,NULL,NULL,44,6),(9,NULL,NULL,NULL,'http://www.TessierAshpool.com',NULL,19,4,46,NULL,NULL,47,5),(10,NULL,NULL,NULL,'http://www.Initech.com',NULL,20,1,49,NULL,NULL,50,5),(11,NULL,NULL,NULL,'http://www.DemoCompany.com',NULL,21,5,52,NULL,NULL,53,6),(12,NULL,NULL,NULL,'http://www.Chasers.com',NULL,22,6,55,NULL,NULL,56,5),(13,'Osato Chemicals',NULL,NULL,'http://www.company.com',NULL,23,NULL,58,NULL,NULL,59,1),(14,'U.S. Robotics and Mechanical Men',NULL,NULL,'http://www.company.com',NULL,24,NULL,61,NULL,NULL,62,2),(15,'Zevo Toys',NULL,NULL,'http://www.company.com',NULL,25,NULL,64,NULL,NULL,65,3),(16,'Universal Export',NULL,NULL,'http://www.company.com',NULL,26,NULL,67,NULL,NULL,68,3),(17,'Sample Company',NULL,NULL,'http://www.company.com',NULL,27,NULL,70,NULL,NULL,71,3),(18,'Flowers By Irene',NULL,NULL,'http://www.company.com',NULL,28,NULL,73,NULL,NULL,74,4),(19,'Primatech',NULL,NULL,'http://www.company.com',NULL,29,NULL,76,NULL,NULL,77,3),(20,'Initrode',NULL,NULL,'http://www.company.com',NULL,30,NULL,79,NULL,NULL,80,3),(21,'North Central Positronics',NULL,NULL,'http://www.company.com',NULL,31,NULL,82,NULL,NULL,83,4),(22,'ZiffCorp',NULL,NULL,'http://www.company.com',NULL,32,NULL,85,NULL,NULL,86,2),(23,'United Fried Chicken',NULL,NULL,'http://www.company.com',NULL,33,NULL,88,NULL,NULL,89,1),(24,'Rouster and Sideways',NULL,NULL,'http://www.company.com',NULL,34,NULL,91,NULL,NULL,92,4),(25,'Acme Corp',NULL,NULL,NULL,NULL,35,NULL,NULL,NULL,NULL,NULL,6),(26,'Allied Biscuit',NULL,NULL,NULL,NULL,36,NULL,NULL,NULL,NULL,NULL,5),(27,'BLAND Corporation',NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,NULL,6),(28,'Central Perk',NULL,NULL,NULL,NULL,38,NULL,NULL,NULL,NULL,NULL,6);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_opportunity`
--

DROP TABLE IF EXISTS `contact_opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_opportunity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_ytinutroppo_di_tcatnoc` (`contact_id`,`opportunity_id`),
  KEY `di_tcatnoc` (`contact_id`),
  KEY `di_ytinutroppo` (`opportunity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_opportunity`
--

LOCK TABLES `contact_opportunity` WRITE;
/*!40000 ALTER TABLE `contact_opportunity` DISABLE KEYS */;
INSERT INTO `contact_opportunity` VALUES (7,1,7),(9,1,9),(4,5,4),(10,6,10),(2,7,2),(3,7,3),(11,7,11),(8,8,8),(6,9,6),(12,9,12),(5,10,5),(1,12,1);
/*!40000 ALTER TABLE `contact_opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_project`
--

DROP TABLE IF EXISTS `contact_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_tcejorp_di_tcatnoc` (`contact_id`,`project_id`),
  KEY `di_tcatnoc` (`contact_id`),
  KEY `di_tcejorp` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_project`
--

LOCK TABLES `contact_project` WRITE;
/*!40000 ALTER TABLE `contact_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_read`
--

DROP TABLE IF EXISTS `contact_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `contact_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_read`
--

LOCK TABLES `contact_read` WRITE;
/*!40000 ALTER TABLE `contact_read` DISABLE KEYS */;
INSERT INTO `contact_read` VALUES (1,18,'R1',1),(2,19,'R1',1),(3,20,'R1',1),(4,21,'R1',1),(5,22,'R1',1),(6,23,'R1',1),(7,24,'R1',1),(8,25,'R1',1),(9,26,'R1',1),(10,27,'R1',1),(11,28,'R1',1),(12,29,'R1',1),(13,96,'R1',1),(14,97,'R1',1),(15,98,'R1',1),(16,99,'R1',1),(17,100,'R1',1),(18,101,'R1',1),(19,102,'R1',1),(20,103,'R1',1),(21,104,'R1',1),(22,105,'R1',1),(23,106,'R1',1),(24,107,'R1',1),(25,286,'R1',1),(26,287,'R1',1),(27,288,'R1',1),(28,289,'R1',1);
/*!40000 ALTER TABLE `contact_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_read_subscription`
--

DROP TABLE IF EXISTS `contact_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_read_subscription`
--

LOCK TABLES `contact_read_subscription` WRITE;
/*!40000 ALTER TABLE `contact_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactstarred`
--

DROP TABLE IF EXISTS `contactstarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactstarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_contact_id` (`basestarredmodel_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactstarred`
--

LOCK TABLES `contactstarred` WRITE;
/*!40000 ALTER TABLE `contactstarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactstarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactstate`
--

DROP TABLE IF EXISTS `contactstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactstate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `serializedlabels` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactstate`
--

LOCK TABLES `contactstate` WRITE;
/*!40000 ALTER TABLE `contactstate` DISABLE KEYS */;
INSERT INTO `contactstate` VALUES (1,'New',0,NULL),(2,'In Progress',1,NULL),(3,'Recycled',2,NULL),(4,'Dead',3,NULL),(5,'Qualified',4,NULL),(6,'Customer',5,NULL);
/*!40000 ALTER TABLE `contactstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactwebform`
--

DROP TABLE IF EXISTS `contactwebform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactwebform` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `redirecturl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitbuttonlabel` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `excludestyles` tinyint(1) unsigned DEFAULT NULL,
  `enablecaptcha` tinyint(1) unsigned DEFAULT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultpermissionsetting` tinyint(11) DEFAULT NULL,
  `defaultpermissiongroupsetting` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `defaultstate_contactstate_id` int(11) unsigned DEFAULT NULL,
  `defaultowner__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactwebform`
--

LOCK TABLES `contactwebform` WRITE;
/*!40000 ALTER TABLE `contactwebform` DISABLE KEYS */;
INSERT INTO `contactwebform` VALUES (1,'Corporate Web Form','http://zurmo.org','Submit','a:4:{i:0;s:9:\"firstName\";i:1;s:8:\"lastName\";i:2;s:11:\"companyName\";i:3;s:8:\"jobTitle\";}',0,0,NULL,NULL,NULL,281,6,7),(2,'Sales Portal Web Form','http://zurmo.com','Save','a:4:{i:0;s:9:\"firstName\";i:1;s:8:\"lastName\";i:2;s:11:\"companyName\";i:3;s:8:\"jobTitle\";}',0,0,NULL,NULL,NULL,282,6,5),(3,'Clients Portal Web Form','http://demo.zurmo.com','Save & Redirect','a:4:{i:0;s:9:\"firstName\";i:1;s:8:\"lastName\";i:2;s:11:\"companyName\";i:3;s:8:\"jobTitle\";}',0,0,NULL,NULL,NULL,283,5,6),(4,'Customer Support Portal Web Form','http://zurmo.org','Submit Now','a:4:{i:0;s:9:\"firstName\";i:1;s:8:\"lastName\";i:2;s:11:\"companyName\";i:3;s:8:\"jobTitle\";}',0,0,NULL,NULL,NULL,284,5,9),(5,'Sales Team Web Form','http://zurmo.com','Save Now','a:4:{i:0;s:9:\"firstName\";i:1;s:8:\"lastName\";i:2;s:11:\"companyName\";i:3;s:8:\"jobTitle\";}',0,0,NULL,NULL,NULL,285,6,8);
/*!40000 ALTER TABLE `contactwebform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactwebform_read`
--

DROP TABLE IF EXISTS `contactwebform_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactwebform_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `contactwebform_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactwebform_read`
--

LOCK TABLES `contactwebform_read` WRITE;
/*!40000 ALTER TABLE `contactwebform_read` DISABLE KEYS */;
INSERT INTO `contactwebform_read` VALUES (1,281,'R1',1),(2,281,'G2',1),(3,282,'R1',1),(4,282,'G2',1),(5,283,'R1',1),(6,283,'G2',1),(7,284,'R1',1),(8,284,'G2',1),(9,285,'R1',1),(10,285,'G2',1);
/*!40000 ALTER TABLE `contactwebform_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactwebformentry`
--

DROP TABLE IF EXISTS `contactwebformentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactwebformentry` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `hashindex` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `entries_contactwebform_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactwebformentry`
--

LOCK TABLES `contactwebformentry` WRITE;
/*!40000 ALTER TABLE `contactwebformentry` DISABLE KEYS */;
INSERT INTO `contactwebformentry` VALUES (1,'a:6:{s:9:\"firstName\";s:5:\"Alice\";s:8:\"lastName\";s:5:\"Brown\";s:11:\"companyName\";s:9:\"Acme Corp\";s:8:\"jobTitle\";s:13:\"Sales Manager\";s:5:\"owner\";i:5;s:5:\"state\";i:6;}',1,'Success',NULL,580,25,2),(2,'a:6:{s:9:\"firstName\";s:3:\"Jim\";s:8:\"lastName\";s:5:\"Smith\";s:11:\"companyName\";s:14:\"Allied Biscuit\";s:8:\"jobTitle\";s:14:\"Sales Director\";s:5:\"owner\";i:6;s:5:\"state\";i:5;}',1,'Success',NULL,582,26,3),(3,'a:6:{s:9:\"firstName\";s:7:\"Michael\";s:8:\"lastName\";s:0:\"\";s:11:\"companyName\";s:23:\"Charles Townsend Agency\";s:8:\"jobTitle\";s:11:\"IT Director\";s:5:\"owner\";i:5;s:5:\"state\";i:6;}',2,'Error',NULL,583,NULL,2),(4,'a:6:{s:9:\"firstName\";s:5:\"Keith\";s:8:\"lastName\";s:6:\"Cooper\";s:11:\"companyName\";s:17:\"BLAND Corporation\";s:8:\"jobTitle\";s:10:\"IT Manager\";s:5:\"owner\";i:5;s:5:\"state\";i:6;}',1,'Success',NULL,585,27,2),(5,'a:6:{s:9:\"firstName\";s:5:\"Sarah\";s:8:\"lastName\";s:3:\"Lee\";s:11:\"companyName\";s:12:\"Central Perk\";s:8:\"jobTitle\";s:14:\"Vice President\";s:5:\"owner\";i:8;s:5:\"state\";i:6;}',1,'Success',NULL,587,28,5);
/*!40000 ALTER TABLE `contactwebformentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `latestdatetime` datetime DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerhasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `isclosed` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` VALUES (1,'We are running out of good locations to put our offices. I am thinking we should open an office on Mars.','2015-02-10 16:12:34','Should we consider building a new corporate headquarters on Mars?',0,NULL,76),(2,'We are going to maybe do a tv commercial and I need to make it compelling.','2015-02-10 16:12:34','I am considering a new marketing campaign that uses elephants.  What do you guys think?',0,NULL,77),(3,'My wife and I are thinking about going to Hawaii in December.  Does this time of year work?','2015-02-10 16:12:34','Vacation time in December',0,NULL,78);
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_item`
--

DROP TABLE IF EXISTS `conversation_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_noitasrevnoc` (`conversation_id`,`item_id`),
  KEY `di_noitasrevnoc` (`conversation_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_item`
--

LOCK TABLES `conversation_item` WRITE;
/*!40000 ALTER TABLE `conversation_item` DISABLE KEYS */;
INSERT INTO `conversation_item` VALUES (1,1,38),(2,2,35),(3,3,38);
/*!40000 ALTER TABLE `conversation_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_read`
--

DROP TABLE IF EXISTS `conversation_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `conversation_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_read`
--

LOCK TABLES `conversation_read` WRITE;
/*!40000 ALTER TABLE `conversation_read` DISABLE KEYS */;
INSERT INTO `conversation_read` VALUES (1,76,'R1',4),(2,76,'U10',1),(4,76,'U3',1),(5,76,'U6',1),(7,76,'U4',1),(9,76,'U1',1),(10,77,'R1',3),(11,77,'U7',1),(13,77,'U6',1),(15,77,'U1',1),(16,78,'R1',4),(17,78,'U5',1),(19,78,'U10',1),(21,78,'U3',1),(22,78,'U7',1),(24,78,'U1',1);
/*!40000 ALTER TABLE `conversation_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationparticipant`
--

DROP TABLE IF EXISTS `conversationparticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationparticipant` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `conversation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationparticipant`
--

LOCK TABLES `conversationparticipant` WRITE;
/*!40000 ALTER TABLE `conversationparticipant` DISABLE KEYS */;
INSERT INTO `conversationparticipant` VALUES (1,0,33,1),(2,0,26,1),(3,0,29,1),(4,0,27,1),(5,0,1,1),(6,0,30,2),(7,0,29,2),(8,0,1,2),(9,0,28,3),(10,0,33,3),(11,0,26,3),(12,0,30,3),(13,0,1,3);
/*!40000 ALTER TABLE `conversationparticipant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversationstarred`
--

DROP TABLE IF EXISTS `conversationstarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversationstarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `conversation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_conversation_id` (`basestarredmodel_id`,`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversationstarred`
--

LOCK TABLES `conversationstarred` WRITE;
/*!40000 ALTER TABLE `conversationstarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversationstarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ratetobase` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_edoc` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,1,'USD',1),(2,1,'EUR',1.1297),(3,1,'CAD',0.801888131743),(4,1,'JPY',0.00838865374619);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencyvalue`
--

DROP TABLE IF EXISTS `currencyvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencyvalue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ratetobase` double DEFAULT NULL,
  `value` double DEFAULT NULL,
  `currency_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencyvalue`
--

LOCK TABLES `currencyvalue` WRITE;
/*!40000 ALTER TABLE `currencyvalue` DISABLE KEYS */;
INSERT INTO `currencyvalue` VALUES (1,1,290000,1),(2,0.75,240000,4),(3,1.5,78000,2),(4,1.5,89000,2),(5,1,181000,1),(6,0.75,204000,4),(7,0.75,287000,4),(8,1,107000,1),(9,1.1,332000,3),(10,1,53000,1),(11,1.1,146000,3),(12,1.1,292000,3),(13,1.1,200,3),(14,1.1,200,3),(15,1.1,200,3),(16,1.1,200,3),(17,1.1,200,3),(18,1.1,200,3),(19,1,200,1),(20,1,200,1),(21,1,200,1),(22,1.1,200,3),(23,1.1,200,3),(24,1.1,200,3),(25,1.5,200,2),(26,1.5,200,2),(27,1.5,200,2),(28,0.75,200,4),(29,0.75,200,4),(30,0.75,200,4),(31,1.5,200,2),(32,1.5,200,2),(33,1.5,200,2),(34,1.5,200,2),(35,1.5,200,2),(36,1.5,200,2),(37,1.1,200,3),(38,1.1,200,3),(39,1.1,200,3),(40,1.1,200,3),(41,1.1,200,3),(42,1.1,200,3),(43,1,200,1),(44,1,200,1),(45,1,200,1),(46,1,200,1),(47,1,200,1),(48,1,200,1),(49,1,200,1),(50,1,200,1),(51,1,200,1),(52,1,200,1),(53,1,200,1),(54,1,200,1),(55,1,200,1),(56,1,200,1),(57,1,200,1),(58,1.1,200,3),(59,1.1,200,3),(60,1.1,200,3),(61,0.75,200,4),(62,0.75,200,4),(63,0.75,200,4),(64,1.1,200,3),(65,1.1,200,3),(66,1.1,200,3),(67,1.5,200,2),(68,1.5,200,2),(69,1.5,200,2),(70,1.1,200,3),(71,1.1,200,3),(72,1.1,200,3),(73,1,200,1),(74,1,200,1),(75,1,200,1),(76,1,200,1),(77,1,200,1),(78,1,200,1),(79,1.1,200,3),(80,1.1,200,3),(81,1.1,200,3),(82,1.1,200,3),(83,1.1,200,3),(84,1.1,200,3),(85,1.5,200,2),(86,1.5,200,2),(87,1.5,200,2),(88,1,200,1),(89,1,200,1),(90,1,200,1),(91,1.5,200,2),(92,1.5,200,2),(93,1.5,200,2),(94,1,200,1),(95,1,200,1),(96,1,200,1),(97,1,200,1),(98,1,200,1),(99,1,200,1),(100,1.5,200,2),(101,1.5,200,2),(102,1.5,200,2),(103,1.5,200,2),(104,1.5,200,2),(105,1.5,200,2),(106,1.5,200,2),(107,1.5,200,2),(108,1.5,200,2),(109,1,200,1),(110,1,200,1),(111,1,200,1),(112,1,200,1),(113,1,200,1),(114,1,200,1),(115,1,200,1),(116,1,200,1),(117,1,200,1),(118,1,200,1),(119,1,200,1),(120,1,200,1),(121,1,200,1),(122,1,200,1),(123,1,200,1),(124,1,200,1),(125,1,200,1),(126,1,200,1),(127,1,200,1),(128,1,200,1),(129,1,200,1),(130,1,200,1),(131,1,200,1),(132,1,200,1),(133,1,200,1),(134,1,200,1),(135,1,200,1),(136,1,200,1),(137,1,200,1),(138,1,200,1),(139,1,200,1),(140,1,200,1),(141,1,200,1),(142,1,200,1),(143,1,200,1),(144,1,200,1),(145,1,200,1),(146,1,200,1),(147,1,200,1),(148,1,200,1),(149,1,200,1),(150,1,200,1),(151,1,200,1),(152,1,200,1),(153,1,200,1),(154,1,200,1),(155,1,200,1),(156,1,200,1),(157,1,200,1),(158,1,200,1),(159,1,200,1),(160,1,200,1),(161,1,200,1),(162,1,200,1),(163,1,200,1),(164,1,200,1),(165,1,200,1),(166,1,200,1),(167,1,200,1);
/*!40000 ALTER TABLE `currencyvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfield`
--

DROP TABLE IF EXISTS `customfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8_unicode_ci,
  `basecustomfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfield`
--

LOCK TABLES `customfield` WRITE;
/*!40000 ALTER TABLE `customfield` DISABLE KEYS */;
INSERT INTO `customfield` VALUES (1,'Sir',1),(2,'Mr.',2),(3,'Mr.',3),(4,'Dr.',4),(5,'Mrs.',5),(6,'Ms.',6),(7,'Ms.',7),(8,'Mr.',8),(9,'Business Services',9),(10,'Customer',10),(11,'Energy',11),(12,'Vendor',12),(13,'Automotive',13),(14,'Customer',14),(15,'Insurance',15),(16,'Vendor',16),(17,'Technology',17),(18,'Prospect',18),(19,'Financial Services',19),(20,'Vendor',20),(21,'Ms.',21),(22,'Retail',22),(23,'Word of Mouth',23),(24,'Ms.',24),(25,'Financial Services',25),(26,'Word of Mouth',26),(27,'Mr.',27),(28,'Insurance',28),(29,'Self-Generated',29),(30,'Dr.',30),(31,'Insurance',31),(32,'Inbound Call',32),(33,'Mr.',33),(34,'Business Services',34),(35,'Inbound Call',35),(36,'Dr.',36),(37,'Banking',37),(38,'Inbound Call',38),(39,'Mrs.',39),(40,'Technology',40),(41,'Self-Generated',41),(42,'Dr.',42),(43,'Business Services',43),(44,'Self-Generated',44),(45,'Mr.',45),(46,'Business Services',46),(47,'Self-Generated',47),(48,'Ms.',48),(49,'Business Services',49),(50,'Word of Mouth',50),(51,'Mr.',51),(52,'Financial Services',52),(53,'Word of Mouth',53),(54,'Mrs.',54),(55,'Technology',55),(56,'Tradeshow',56),(57,'Dr.',57),(58,'Technology',58),(59,'Word of Mouth',59),(60,'Dr.',60),(61,'Business Services',61),(62,'Inbound Call',62),(63,'Mr.',63),(64,'Business Services',64),(65,'Inbound Call',65),(66,'Dr.',66),(67,'Retail',67),(68,'Tradeshow',68),(69,'Mr.',69),(70,'Automotive',70),(71,'Word of Mouth',71),(72,'Mrs.',72),(73,'Business Services',73),(74,'Tradeshow',74),(75,'Mrs.',75),(76,'Financial Services',76),(77,'Self-Generated',77),(78,'Dr.',78),(79,'Banking',79),(80,'Self-Generated',80),(81,'Dr.',81),(82,'Technology',82),(83,'Inbound Call',83),(84,'Mr.',84),(85,'Technology',85),(86,'Word of Mouth',86),(87,'Dr.',87),(88,'Retail',88),(89,'Word of Mouth',89),(90,'Dr.',90),(91,'Financial Services',91),(92,'Self-Generated',92),(93,'Closed Lost',93),(94,'Word of Mouth',94),(95,'Verbal',95),(96,'Tradeshow',96),(97,'Prospecting',97),(98,'Word of Mouth',98),(99,'Closed Lost',99),(100,'Inbound Call',100),(101,'Closed Won',101),(102,'Self-Generated',102),(103,'Closed Won',103),(104,'Tradeshow',104),(105,'Prospecting',105),(106,'Word of Mouth',106),(107,'Qualification',107),(108,'Word of Mouth',108),(109,'Prospecting',109),(110,'Inbound Call',110),(111,'Closed Won',111),(112,'Word of Mouth',112),(113,'Closed Won',113),(114,'Word of Mouth',114),(115,'Closed Lost',115),(116,'Inbound Call',116),(117,'Meeting',117),(118,'Call',118),(119,'Call',119),(120,'Call',120),(121,'Meeting',121),(122,'Call',122),(123,'Meeting',123),(124,'Call',124),(125,'Call',125),(126,'Meeting',126),(127,'Meeting',127),(128,'Call',128),(129,'Meeting',129),(130,'Meeting',130),(131,'Meeting',131),(132,'Meeting',132),(133,'Meeting',133),(134,'Meeting',134),(135,'Call',135),(136,'Call',136),(137,'Call',137),(138,'Call',138),(139,'Call',139),(140,'Call',140),(141,'Call',141),(142,'Call',142),(143,'Meeting',143),(144,'Meeting',144),(145,'Meeting',145),(146,'Meeting',146),(147,'Call',147),(148,'Meeting',148),(149,'Call',149),(150,'Call',150),(151,'Meeting',151),(152,'Meeting',152),(153,'Open',153),(154,'Open',154),(155,'Open',155),(156,'Open',156),(157,'Open',157),(158,'Open',158),(159,'Open',159),(160,'Open',160),(161,'Open',161),(162,'Open',162),(163,'Open',163),(164,'Open',164),(165,'Open',165),(166,'Open',166),(167,'Open',167),(168,'Open',168),(169,'Open',169),(170,'Open',170),(171,'Open',171),(172,'Open',172),(173,'Open',173),(174,'Open',174),(175,'Open',175),(176,'Open',176),(177,'Open',177),(178,'Open',178),(179,'Open',179),(180,'Open',180),(181,'Open',181),(182,'Open',182),(183,'Open',183),(184,'Open',184),(185,'Open',185),(186,'Open',186),(187,'Open',187),(188,'Open',188),(189,'Open',189),(190,'Open',190),(191,'Open',191),(192,'Open',192),(193,'Open',193),(194,'Open',194),(195,'Open',195),(196,'Open',196),(197,'Open',197),(198,'Open',198),(199,'Open',199),(200,'Open',200),(201,'Open',201),(202,'Open',202),(203,'Open',203),(204,'Open',204),(205,'Open',205),(206,'Open',206),(207,'Open',207),(208,'Open',208),(209,'Open',209),(210,'Open',210),(211,'Open',211);
/*!40000 ALTER TABLE `customfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfielddata`
--

DROP TABLE IF EXISTS `customfielddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfielddata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultvalue` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `serializedlabels` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfielddata`
--

LOCK TABLES `customfielddata` WRITE;
/*!40000 ALTER TABLE `customfielddata` DISABLE KEYS */;
INSERT INTO `customfielddata` VALUES (1,'AccountContactAffiliationRoles',NULL,'a:6:{i:0;s:7:\"Billing\";i:1;s:8:\"Shipping\";i:2;s:7:\"Support\";i:3;s:9:\"Technical\";i:4;s:14:\"Administrative\";i:5;s:15:\"Project Manager\";}',NULL),(2,'Industries',NULL,'a:9:{i:0;s:10:\"Automotive\";i:1;s:7:\"Banking\";i:2;s:17:\"Business Services\";i:3;s:6:\"Energy\";i:4;s:18:\"Financial Services\";i:5;s:9:\"Insurance\";i:6;s:13:\"Manufacturing\";i:7;s:6:\"Retail\";i:8;s:10:\"Technology\";}',NULL),(3,'AccountTypes',NULL,'a:3:{i:0;s:8:\"Prospect\";i:1;s:8:\"Customer\";i:2;s:6:\"Vendor\";}',NULL),(4,'LeadSources',NULL,'a:4:{i:0;s:14:\"Self-Generated\";i:1;s:12:\"Inbound Call\";i:2;s:9:\"Tradeshow\";i:3;s:13:\"Word of Mouth\";}',NULL),(5,'MeetingCategories','Meeting','a:2:{i:0;s:7:\"Meeting\";i:1;s:4:\"Call\";}',NULL),(6,'SalesStages','Prospecting','a:6:{i:0;s:11:\"Prospecting\";i:1;s:13:\"Qualification\";i:2;s:11:\"Negotiating\";i:3;s:6:\"Verbal\";i:4;s:10:\"Closed Won\";i:5;s:11:\"Closed Lost\";}',NULL),(7,'ProductStages',NULL,'a:3:{i:0;s:4:\"Open\";i:1;s:4:\"Lost\";i:2;s:3:\"Won\";}',NULL),(8,'Titles',NULL,'a:4:{i:0;s:3:\"Mr.\";i:1;s:4:\"Mrs.\";i:2;s:3:\"Ms.\";i:3;s:3:\"Dr.\";}',NULL);
/*!40000 ALTER TABLE `customfielddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customfieldvalue`
--

DROP TABLE IF EXISTS `customfieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customfieldvalue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multiplevaluescustomfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `multiplevaluescustomfield_id` (`multiplevaluescustomfield_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customfieldvalue`
--

LOCK TABLES `customfieldvalue` WRITE;
/*!40000 ALTER TABLE `customfieldvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `customfieldvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isdefault` tinyint(1) unsigned DEFAULT NULL,
  `layoutid` int(11) DEFAULT NULL,
  `layouttype` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derivedattributemetadata`
--

DROP TABLE IF EXISTS `derivedattributemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derivedattributemetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedmetadata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derivedattributemetadata`
--

LOCK TABLES `derivedattributemetadata` WRITE;
/*!40000 ALTER TABLE `derivedattributemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `derivedattributemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropdowndependencyderivedattributemetadata`
--

DROP TABLE IF EXISTS `dropdowndependencyderivedattributemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropdowndependencyderivedattributemetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `derivedattributemetadata_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropdowndependencyderivedattributemetadata`
--

LOCK TABLES `dropdowndependencyderivedattributemetadata` WRITE;
/*!40000 ALTER TABLE `dropdowndependencyderivedattributemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `dropdowndependencyderivedattributemetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isinvalid` tinyint(1) unsigned DEFAULT NULL,
  `optout` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES (1,'Super.test@test.zurmo.com',NULL,NULL),(2,'Jason.Blue@test.zurmo.com',NULL,NULL),(3,'Jim@test.zurmo.com',NULL,NULL),(4,'John@test.zurmo.com',NULL,NULL),(5,'Sally@test.zurmo.com',NULL,NULL),(6,'Mary@test.zurmo.com',NULL,NULL),(7,'Katie@test.zurmo.com',NULL,NULL),(8,'Jill@test.zurmo.com',NULL,NULL),(9,'Sam@test.zurmo.com',NULL,NULL),(10,'info@Initech.com',NULL,0),(11,'info@USRoboticsandMe.com',NULL,0),(12,'info@WidgetCorp.com',NULL,0),(13,'info@TessierAshpool.com',NULL,0),(14,'info@DemoCompany.com',NULL,0),(15,'info@Chasers.com',NULL,0),(16,'Lisa.Moore@USRoboticsandMe.com',NULL,0),(17,'Gail.Martinez@USRoboticsandMe.com',NULL,0),(18,'Stafford.Walker@Chasers.com',NULL,0),(19,'Ray.Jones@Initech.com',NULL,0),(20,'Alex.Clark@Chasers.com',NULL,0),(21,'Sarah.Robinson@DemoCompany.com',NULL,0),(22,'Ruth.Clark@USRoboticsandMe.com',NULL,0),(23,'Alex.Williams@TessierAshpool.com',NULL,0),(24,'Nev.Brown@TessierAshpool.com',NULL,0),(25,'Betty.Moore@Initech.com',NULL,0),(26,'Walter.Miller@DemoCompany.com',NULL,0),(27,'Sophie.Allen@Chasers.com',NULL,0),(28,'Raymond.Johnson@company.com',NULL,0),(29,'Ester.Thompson@company.com',NULL,0),(30,'Ignacio.Brown@company.com',NULL,0),(31,'Jake.Robinson@company.com',NULL,0),(32,'David.Miller@company.com',NULL,0),(33,'Gail.Walker@company.com',NULL,0),(34,'Katie.Williams@company.com',NULL,0),(35,'Walter.Moore@company.com',NULL,0),(36,'Kirby.Harris@company.com',NULL,0),(37,'Jake.Johnson@company.com',NULL,0),(38,'Rosina.Thompson@company.com',NULL,0),(39,'Kirby.Walker@company.com',NULL,0);
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaccount`
--

DROP TABLE IF EXISTS `emailaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaccount` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `replytoname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundhost` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundusername` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundpassword` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundsecurity` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundtype` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outboundport` int(11) DEFAULT NULL,
  `usecustomoutboundsettings` tinyint(1) unsigned DEFAULT NULL,
  `replytoaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaccount`
--

LOCK TABLES `emailaccount` WRITE;
/*!40000 ALTER TABLE `emailaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailbox`
--

DROP TABLE IF EXISTS `emailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailbox`
--

LOCK TABLES `emailbox` WRITE;
/*!40000 ALTER TABLE `emailbox` DISABLE KEYS */;
INSERT INTO `emailbox` VALUES (1,'Default',69,1);
/*!40000 ALTER TABLE `emailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailfolder`
--

DROP TABLE IF EXISTS `emailfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailfolder` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `emailbox_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailfolder`
--

LOCK TABLES `emailfolder` WRITE;
/*!40000 ALTER TABLE `emailfolder` DISABLE KEYS */;
INSERT INTO `emailfolder` VALUES (1,'Draft','Draft',70,1),(2,'Inbox','Inbox',71,1),(3,'Sent','Sent',72,1),(4,'Outbox','Outbox',73,1),(5,'Outbox Error','OutboxError',74,1),(6,'Outbox Failure','OutboxFailure',75,1),(7,'Archived','Archived',76,1),(8,'Archived Unmatched','ArchivedUnmatched',77,1);
/*!40000 ALTER TABLE `emailfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessage`
--

DROP TABLE IF EXISTS `emailmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendattempts` int(11) DEFAULT NULL,
  `sentdatetime` datetime DEFAULT NULL,
  `sendondatetime` datetime DEFAULT NULL,
  `headers` text COLLATE utf8_unicode_ci,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `folder_emailfolder_id` int(11) unsigned DEFAULT NULL,
  `content_emailmessagecontent_id` int(11) unsigned DEFAULT NULL,
  `sender_emailmessagesender_id` int(11) unsigned DEFAULT NULL,
  `error_emailmessagesenderror_id` int(11) unsigned DEFAULT NULL,
  `account_emailaccount_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessage`
--

LOCK TABLES `emailmessage` WRITE;
/*!40000 ALTER TABLE `emailmessage` DISABLE KEYS */;
INSERT INTO `emailmessage` VALUES (1,'Your unsubscription triggered the next big bang',NULL,'2015-01-21 16:12:20',NULL,NULL,30,3,1,1,NULL,NULL),(2,'Your unsubscription triggered the next big bang',NULL,'2015-02-05 16:12:21',NULL,NULL,31,3,2,2,NULL,NULL),(3,'Your unsubscription triggered the next big bang',NULL,'2015-01-21 16:12:21',NULL,NULL,32,3,3,3,NULL,NULL),(4,'Your unsubscription triggered the next big bang',NULL,'2015-01-25 16:12:22',NULL,NULL,33,3,4,4,NULL,NULL),(5,'Your unsubscription triggered the next big bang',NULL,'2015-01-31 16:12:22',NULL,NULL,34,3,5,5,NULL,NULL),(6,'Your unsubscription triggered the next big bang',NULL,'2015-01-21 16:12:23',NULL,NULL,35,3,6,6,NULL,NULL),(7,'Your unsubscription triggered the next big bang',NULL,'2015-01-10 16:12:23',NULL,NULL,36,3,7,7,NULL,NULL),(8,'Your unsubscription triggered the next big bang',NULL,'2015-01-10 16:12:24',NULL,NULL,37,3,8,8,NULL,NULL),(9,'Your unsubscription triggered the next big bang',NULL,'2015-01-12 16:12:24',NULL,NULL,38,3,9,9,NULL,NULL),(10,'Your unsubscription triggered the next big bang',NULL,'2015-01-18 16:12:25',NULL,NULL,39,3,10,10,NULL,NULL),(11,'Your unsubscription triggered the next big bang',NULL,'2015-01-20 16:12:25',NULL,NULL,40,3,11,11,NULL,NULL),(12,'Your unsubscription triggered the next big bang',NULL,'2015-01-28 16:12:26',NULL,NULL,41,3,12,12,NULL,NULL),(13,'Your unsubscription triggered the next big bang',NULL,'2015-01-17 16:12:26',NULL,NULL,42,3,13,13,NULL,NULL),(14,'Your unsubscription triggered the next big bang',NULL,'2015-01-29 16:12:27',NULL,NULL,43,3,14,14,NULL,NULL),(15,'Your unsubscription triggered the next big bang',NULL,'2015-01-10 16:12:27',NULL,NULL,44,3,15,15,NULL,NULL),(16,'Your unsubscription triggered the next big bang',NULL,'2015-01-15 16:12:28',NULL,NULL,45,3,16,16,NULL,NULL),(17,'Your unsubscription triggered the next big bang',NULL,'2015-02-06 16:12:28',NULL,NULL,46,3,17,17,NULL,NULL),(18,'Your unsubscription triggered the next big bang',NULL,'2015-01-31 16:12:29',NULL,NULL,47,3,18,18,NULL,NULL),(19,'Special Offer: 10% Discount for new clients',NULL,'2015-01-22 16:12:32',NULL,NULL,58,3,19,19,NULL,NULL),(20,'Special Offer: 10% Discount for new clients',NULL,'2015-02-07 16:12:32',NULL,NULL,59,3,20,20,NULL,NULL),(21,'Special Offer: 10% Discount for new clients',NULL,'2015-02-03 16:12:32',NULL,NULL,60,3,21,21,NULL,NULL),(22,'Special Offer: 10% Discount for new clients',NULL,'2015-01-13 16:12:32',NULL,NULL,61,3,22,22,NULL,NULL),(23,'Special Offer: 10% Discount for new clients',NULL,'2015-01-24 16:12:32',NULL,NULL,62,3,23,23,NULL,NULL),(24,'Special Offer: 10% Discount for new clients',NULL,'2015-01-14 16:12:32',NULL,NULL,63,3,24,24,NULL,NULL),(25,'Special Offer: 10% Discount for new clients',NULL,'2015-02-07 16:12:32',NULL,NULL,64,3,25,25,NULL,NULL),(26,'Special Offer: 10% Discount for new clients',NULL,'2015-01-18 16:12:32',NULL,NULL,65,3,26,26,NULL,NULL),(27,'Special Offer: 10% Discount for new clients',NULL,'2015-01-24 16:12:33',NULL,NULL,66,3,27,27,NULL,NULL),(28,'Special Offer: 10% Discount for new clients',NULL,'2015-01-22 16:12:33',NULL,NULL,67,3,28,28,NULL,NULL),(29,'Special Offer: 10% Discount for new clients',NULL,'2015-02-04 16:12:33',NULL,NULL,68,3,29,29,NULL,NULL),(30,'Special Offer: 10% Discount for new clients',NULL,'2015-01-11 16:12:33',NULL,NULL,69,3,30,30,NULL,NULL),(31,'Special Offer: 10% Discount for new clients',NULL,'2015-01-31 16:12:33',NULL,NULL,70,3,31,31,NULL,NULL),(32,'Special Offer: 10% Discount for new clients',NULL,'2015-01-25 16:12:33',NULL,NULL,71,3,32,32,NULL,NULL),(33,'Special Offer: 10% Discount for new clients',NULL,'2015-01-26 16:12:33',NULL,NULL,72,3,33,33,NULL,NULL),(34,'Special Offer: 10% Discount for new clients',NULL,'2015-01-13 16:12:33',NULL,NULL,73,3,34,34,NULL,NULL),(35,'Special Offer: 10% Discount for new clients',NULL,'2015-01-24 16:12:33',NULL,NULL,74,3,35,35,NULL,NULL),(36,'Special Offer: 10% Discount for new clients',NULL,'2015-01-20 16:12:34',NULL,NULL,75,3,36,36,NULL,NULL);
/*!40000 ALTER TABLE `emailmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessage_read`
--

DROP TABLE IF EXISTS `emailmessage_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessage_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `emailmessage_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessage_read`
--

LOCK TABLES `emailmessage_read` WRITE;
/*!40000 ALTER TABLE `emailmessage_read` DISABLE KEYS */;
INSERT INTO `emailmessage_read` VALUES (1,30,'R1',1),(2,30,'G2',1),(3,31,'R1',1),(4,31,'G2',1),(5,32,'R1',1),(6,32,'G2',1),(7,33,'R1',1),(8,33,'G2',1),(9,34,'R1',1),(10,34,'G2',1),(11,35,'R1',1),(12,35,'G2',1),(13,36,'R1',1),(14,36,'G2',1),(15,37,'R1',1),(16,37,'G2',1),(17,38,'R1',1),(18,38,'G2',1),(19,39,'R1',1),(20,39,'G2',1),(21,40,'R1',1),(22,40,'G2',1),(23,41,'R1',1),(24,41,'G2',1),(25,42,'R1',1),(26,42,'G2',1),(27,43,'R1',1),(28,43,'G2',1),(29,44,'R1',1),(30,44,'G2',1),(31,45,'R1',1),(32,45,'G2',1),(33,46,'R1',1),(34,46,'G2',1),(35,47,'R1',1),(36,47,'G2',1),(37,58,'R1',1),(38,58,'G2',1),(39,59,'R1',1),(40,59,'G2',1),(41,60,'R1',1),(42,60,'G2',1),(43,61,'R1',1),(44,61,'G2',1),(45,62,'R1',1),(46,62,'G2',1),(47,63,'R1',1),(48,63,'G2',1),(49,64,'R1',1),(50,64,'G2',1),(51,65,'R1',1),(52,65,'G2',1),(53,66,'R1',1),(54,66,'G2',1),(55,67,'R1',1),(56,67,'G2',1),(57,68,'R1',1),(58,68,'G2',1),(59,69,'R1',1),(60,69,'G2',1),(61,70,'R1',1),(62,70,'G2',1),(63,71,'R1',1),(64,71,'G2',1),(65,72,'R1',1),(66,72,'G2',1),(67,73,'R1',1),(68,73,'G2',1),(69,74,'R1',1),(70,74,'G2',1),(71,75,'R1',1),(72,75,'G2',1);
/*!40000 ALTER TABLE `emailmessage_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessageactivity`
--

DROP TABLE IF EXISTS `emailmessageactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessageactivity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `latestdatetime` datetime DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `latestsourceip` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_id` int(11) unsigned DEFAULT NULL,
  `emailmessageurl_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessageactivity`
--

LOCK TABLES `emailmessageactivity` WRITE;
/*!40000 ALTER TABLE `emailmessageactivity` DISABLE KEYS */;
INSERT INTO `emailmessageactivity` VALUES (1,'2015-02-10 16:12:20',1,62,'10.11.12.13',78,20,NULL),(2,'2015-02-10 16:12:20',2,88,'10.11.12.13',79,20,4),(3,'2015-02-10 16:12:20',2,88,'10.11.12.13',80,14,2),(4,'2015-02-10 16:12:20',2,71,'10.11.12.13',81,14,3),(5,'2015-02-10 16:12:20',2,64,'10.11.12.13',82,17,7),(6,'2015-02-10 16:12:20',2,91,'10.11.12.13',83,20,4),(7,'2015-02-10 16:12:20',2,72,'10.11.12.13',84,22,1),(8,'2015-02-10 16:12:20',2,95,'10.11.12.13',85,13,8),(9,'2015-02-10 16:12:20',2,43,'10.11.12.13',86,20,2),(10,'2015-02-10 16:12:20',4,87,'10.11.12.13',87,22,NULL),(11,'2015-02-10 16:12:20',2,78,'10.11.12.13',88,13,14),(12,'2015-02-10 16:12:20',2,31,'10.11.12.13',89,13,15),(13,'2015-02-10 16:12:20',2,21,'10.11.12.13',90,22,4),(14,'2015-02-10 16:12:20',1,76,'10.11.12.13',91,22,NULL),(15,'2015-02-10 16:12:20',2,92,'10.11.12.13',92,16,13),(16,'2015-02-10 16:12:20',2,93,'10.11.12.13',93,19,6),(17,'2015-02-10 16:12:20',2,69,'10.11.12.13',94,22,4),(18,'2015-02-10 16:12:20',1,41,'10.11.12.13',95,11,NULL),(19,'2015-02-10 16:12:31',2,69,'10.11.12.13',151,15,16),(20,'2015-02-10 16:12:31',4,53,'10.11.12.13',152,17,NULL),(21,'2015-02-10 16:12:31',1,92,'10.11.12.13',153,17,NULL),(22,'2015-02-10 16:12:31',2,63,'10.11.12.13',154,12,17),(23,'2015-02-10 16:12:31',1,11,'10.11.12.13',155,20,NULL),(24,'2015-02-10 16:12:31',2,93,'10.11.12.13',156,22,7),(25,'2015-02-10 16:12:31',1,20,'10.11.12.13',157,12,NULL),(26,'2015-02-10 16:12:31',2,61,'10.11.12.13',158,17,18),(27,'2015-02-10 16:12:32',2,74,'10.11.12.13',159,15,10),(28,'2015-02-10 16:12:32',2,48,'10.11.12.13',160,17,6),(29,'2015-02-10 16:12:32',2,86,'10.11.12.13',161,16,1),(30,'2015-02-10 16:12:32',2,69,'10.11.12.13',162,21,16),(31,'2015-02-10 16:12:32',2,15,'10.11.12.13',163,11,15),(32,'2015-02-10 16:12:32',2,31,'10.11.12.13',164,17,7),(33,'2015-02-10 16:12:32',1,76,'10.11.12.13',165,21,NULL),(34,'2015-02-10 16:12:32',2,56,'10.11.12.13',166,12,4),(35,'2015-02-10 16:12:32',1,11,'10.11.12.13',167,11,NULL),(36,'2015-02-10 16:12:32',2,87,'10.11.12.13',168,12,8);
/*!40000 ALTER TABLE `emailmessageactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagecontent`
--

DROP TABLE IF EXISTS `emailmessagecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagecontent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagecontent`
--

LOCK TABLES `emailmessagecontent` WRITE;
/*!40000 ALTER TABLE `emailmessagecontent` DISABLE KEYS */;
INSERT INTO `emailmessagecontent` VALUES (1,'Some fake HTML content','My First Message'),(2,'Some fake HTML content','My First Message'),(3,'Some fake HTML content','My First Message'),(4,'Some fake HTML content','My First Message'),(5,'Some fake HTML content','My First Message'),(6,'Some fake HTML content','My First Message'),(7,'Some fake HTML content','My First Message'),(8,'Some fake HTML content','My First Message'),(9,'Some fake HTML content','My First Message'),(10,'Some fake HTML content','My First Message'),(11,'Some fake HTML content','My First Message'),(12,'Some fake HTML content','My First Message'),(13,'Some fake HTML content','My First Message'),(14,'Some fake HTML content','My First Message'),(15,'Some fake HTML content','My First Message'),(16,'Some fake HTML content','My First Message'),(17,'Some fake HTML content','My First Message'),(18,'Some fake HTML content','My First Message'),(19,'Some fake HTML content','My First Message'),(20,'Some fake HTML content','My First Message'),(21,'Some fake HTML content','My First Message'),(22,'Some fake HTML content','My First Message'),(23,'Some fake HTML content','My First Message'),(24,'Some fake HTML content','My First Message'),(25,'Some fake HTML content','My First Message'),(26,'Some fake HTML content','My First Message'),(27,'Some fake HTML content','My First Message'),(28,'Some fake HTML content','My First Message'),(29,'Some fake HTML content','My First Message'),(30,'Some fake HTML content','My First Message'),(31,'Some fake HTML content','My First Message'),(32,'Some fake HTML content','My First Message'),(33,'Some fake HTML content','My First Message'),(34,'Some fake HTML content','My First Message'),(35,'Some fake HTML content','My First Message'),(36,'Some fake HTML content','My First Message');
/*!40000 ALTER TABLE `emailmessagecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagerecipient`
--

DROP TABLE IF EXISTS `emailmessagerecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagerecipient` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `toaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `toname` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `emailmessage_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `remailmessage` (`emailmessage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagerecipient`
--

LOCK TABLES `emailmessagerecipient` WRITE;
/*!40000 ALTER TABLE `emailmessagerecipient` DISABLE KEYS */;
INSERT INTO `emailmessagerecipient` VALUES (1,'bob.message@zurmotest.com','Lisa Moore',1,1),(2,'bob.message@zurmotest.com','Alex Clark',1,2),(3,'bob.message@zurmotest.com','Sarah Robinson',1,3),(4,'bob.message@zurmotest.com','Stafford Walker',1,4),(5,'bob.message@zurmotest.com','Sophie Allen',1,5),(6,'bob.message@zurmotest.com','Sophie Allen',1,6),(7,'bob.message@zurmotest.com','Nev Brown',1,7),(8,'bob.message@zurmotest.com','Stafford Walker',1,8),(9,'bob.message@zurmotest.com','Gail Martinez',1,9),(10,'bob.message@zurmotest.com','Betty Moore',1,10),(11,'bob.message@zurmotest.com','Nev Brown',1,11),(12,'bob.message@zurmotest.com','Stafford Walker',1,12),(13,'bob.message@zurmotest.com','Ruth Clark',1,13),(14,'bob.message@zurmotest.com','Betty Moore',1,14),(15,'bob.message@zurmotest.com','Ruth Clark',1,15),(16,'bob.message@zurmotest.com','Sophie Allen',1,16),(17,'bob.message@zurmotest.com','Ray Jones',1,17),(18,'bob.message@zurmotest.com','Alex Clark',1,18),(19,'bob.message@zurmotest.com','Betty Moore',1,19),(20,'bob.message@zurmotest.com','Ray Jones',1,20),(21,'bob.message@zurmotest.com','Walter Miller',1,21),(22,'bob.message@zurmotest.com','Ruth Clark',1,22),(23,'bob.message@zurmotest.com','Ruth Clark',1,23),(24,'bob.message@zurmotest.com','Betty Moore',1,24),(25,'bob.message@zurmotest.com','Walter Miller',1,25),(26,'bob.message@zurmotest.com','Alex Clark',1,26),(27,'bob.message@zurmotest.com','Walter Miller',1,27),(28,'bob.message@zurmotest.com','Gail Martinez',1,28),(29,'bob.message@zurmotest.com','Lisa Moore',1,29),(30,'bob.message@zurmotest.com','Sarah Robinson',1,30),(31,'bob.message@zurmotest.com','Gail Martinez',1,31),(32,'bob.message@zurmotest.com','Ruth Clark',1,32),(33,'bob.message@zurmotest.com','Sophie Allen',1,33),(34,'bob.message@zurmotest.com','Alex Clark',1,34),(35,'bob.message@zurmotest.com','Lisa Moore',1,35),(36,'bob.message@zurmotest.com','Betty Moore',1,36);
/*!40000 ALTER TABLE `emailmessagerecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagerecipient_item`
--

DROP TABLE IF EXISTS `emailmessagerecipient_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagerecipient_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessagerecipient_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_tneipiceregassemliame` (`emailmessagerecipient_id`,`item_id`),
  KEY `di_tneipiceregassemliame` (`emailmessagerecipient_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagerecipient_item`
--

LOCK TABLES `emailmessagerecipient_item` WRITE;
/*!40000 ALTER TABLE `emailmessagerecipient_item` DISABLE KEYS */;
INSERT INTO `emailmessagerecipient_item` VALUES (1,1,45),(2,2,49),(3,3,50),(4,4,47),(5,5,56),(6,6,56),(7,7,53),(8,8,47),(9,9,46),(10,10,54),(11,11,53),(12,12,47),(13,13,51),(14,14,54),(15,15,51),(16,16,56),(17,17,48),(18,18,49),(19,19,54),(20,20,48),(21,21,55),(22,22,51),(23,23,51),(24,24,54),(25,25,55),(26,26,49),(27,27,55),(28,28,46),(29,29,45),(30,30,50),(31,31,46),(32,32,51),(33,33,56),(34,34,49),(35,35,45),(36,36,54);
/*!40000 ALTER TABLE `emailmessagerecipient_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagesender`
--

DROP TABLE IF EXISTS `emailmessagesender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagesender` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromaddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromname` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagesender`
--

LOCK TABLES `emailmessagesender` WRITE;
/*!40000 ALTER TABLE `emailmessagesender` DISABLE KEYS */;
INSERT INTO `emailmessagesender` VALUES (1,'super@zurmotest.com','Super User'),(2,'super@zurmotest.com','Super User'),(3,'super@zurmotest.com','Super User'),(4,'super@zurmotest.com','Super User'),(5,'super@zurmotest.com','Super User'),(6,'super@zurmotest.com','Super User'),(7,'super@zurmotest.com','Super User'),(8,'super@zurmotest.com','Super User'),(9,'super@zurmotest.com','Super User'),(10,'super@zurmotest.com','Super User'),(11,'super@zurmotest.com','Super User'),(12,'super@zurmotest.com','Super User'),(13,'super@zurmotest.com','Super User'),(14,'super@zurmotest.com','Super User'),(15,'super@zurmotest.com','Super User'),(16,'super@zurmotest.com','Super User'),(17,'super@zurmotest.com','Super User'),(18,'super@zurmotest.com','Super User'),(19,'super@zurmotest.com','Super User'),(20,'super@zurmotest.com','Super User'),(21,'super@zurmotest.com','Super User'),(22,'super@zurmotest.com','Super User'),(23,'super@zurmotest.com','Super User'),(24,'super@zurmotest.com','Super User'),(25,'super@zurmotest.com','Super User'),(26,'super@zurmotest.com','Super User'),(27,'super@zurmotest.com','Super User'),(28,'super@zurmotest.com','Super User'),(29,'super@zurmotest.com','Super User'),(30,'super@zurmotest.com','Super User'),(31,'super@zurmotest.com','Super User'),(32,'super@zurmotest.com','Super User'),(33,'super@zurmotest.com','Super User'),(34,'super@zurmotest.com','Super User'),(35,'super@zurmotest.com','Super User'),(36,'super@zurmotest.com','Super User');
/*!40000 ALTER TABLE `emailmessagesender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagesender_item`
--

DROP TABLE IF EXISTS `emailmessagesender_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagesender_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `emailmessagesender_id` int(11) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_meti_di_rednesegassemliame` (`emailmessagesender_id`,`item_id`),
  KEY `di_rednesegassemliame` (`emailmessagesender_id`),
  KEY `di_meti` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagesender_item`
--

LOCK TABLES `emailmessagesender_item` WRITE;
/*!40000 ALTER TABLE `emailmessagesender_item` DISABLE KEYS */;
INSERT INTO `emailmessagesender_item` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,24,1),(25,25,1),(26,26,1),(27,27,1),(28,28,1),(29,29,1),(30,30,1),(31,31,1),(32,32,1),(33,33,1),(34,34,1),(35,35,1),(36,36,1);
/*!40000 ALTER TABLE `emailmessagesender_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessagesenderror`
--

DROP TABLE IF EXISTS `emailmessagesenderror`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessagesenderror` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createddatetime` datetime DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessagesenderror`
--

LOCK TABLES `emailmessagesenderror` WRITE;
/*!40000 ALTER TABLE `emailmessagesenderror` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailmessagesenderror` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailmessageurl`
--

DROP TABLE IF EXISTS `emailmessageurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailmessageurl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emailmessageactivity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailmessageurl`
--

LOCK TABLES `emailmessageurl` WRITE;
/*!40000 ALTER TABLE `emailmessageurl` DISABLE KEYS */;
INSERT INTO `emailmessageurl` VALUES (1,'http://0.zurmo.com/',NULL),(2,'http://1.zurmo.com/',NULL),(3,'http://2.zurmo.com/',NULL),(4,'http://3.zurmo.com/',NULL),(5,'http://4.zurmo.com/',NULL),(6,'http://5.zurmo.com/',NULL),(7,'http://6.zurmo.com/',NULL),(8,'http://7.zurmo.com/',NULL),(9,'http://8.zurmo.com/',NULL),(10,'http://9.zurmo.com/',NULL),(11,'http://10.zurmo.com/',NULL),(12,'http://11.zurmo.com/',NULL),(13,'http://12.zurmo.com/',NULL),(14,'http://13.zurmo.com/',NULL),(15,'http://14.zurmo.com/',NULL),(16,'http://15.zurmo.com/',NULL),(17,'http://16.zurmo.com/',NULL),(18,'http://17.zurmo.com/',NULL);
/*!40000 ALTER TABLE `emailmessageurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailsignature`
--

DROP TABLE IF EXISTS `emailsignature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailsignature` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `textcontent` text COLLATE utf8_unicode_ci,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailsignature`
--

LOCK TABLES `emailsignature` WRITE;
/*!40000 ALTER TABLE `emailsignature` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsignature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailtemplate`
--

DROP TABLE IF EXISTS `emailtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailtemplate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `isdraft` tinyint(1) unsigned DEFAULT NULL,
  `builttype` int(11) DEFAULT NULL,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `isfeatured` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailtemplate`
--

LOCK TABLES `emailtemplate` WRITE;
/*!40000 ALTER TABLE `emailtemplate` DISABLE KEYS */;
INSERT INTO `emailtemplate` VALUES (1,NULL,0,3,NULL,'Blank','Blank','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-0\",\"dom\":{\"canvas1\":{\"content\":{\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":[],\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1\"}},\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,1),(2,NULL,0,3,NULL,'1 Column','1 Column','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-5\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"buildertitleelement_1393965668_53163a6447762\":{\"content\":{\"text\":\"Hello there William S...\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"24\",\"font-weight\":\"bold\",\"text-align\":\"center\"}}},\"class\":\"BuilderTitleElement\"},\"builderimageelement_1393970522_53164d5a3787a\":{\"content\":{\"image\":3},\"properties\":[],\"class\":\"BuilderImageElement\"},\"builderexpanderelement_1393970557_53164d7d2881e\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"},\"buildertextelement_1393965781_53163ad53b77c\":{\"content\":{\"text\":\"\\n<p>\\n    Orsino, the <i>Duke of Illyria<\\/i>, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that <b>Olivia<\\/b> plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\\n<\\/p>\\n\"},\"properties\":[],\"class\":\"BuilderTextElement\"},\"builderbuttonelement_1393965942_53163b76e666c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Call Me\",\"sizeClass\":\"medium-button\",\"align\":\"left\"},\"frontend\":{\"href\":\"http:\\/\\/localhost\\/Zurmo\\/app\\/index.php\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#97c43d\",\"border-color\":\"#7cb830\"}}},\"class\":\"BuilderButtonElement\"},\"builderdividerelement_1393965948_53163b7cb98ae\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"solid\",\"border-top-color\":\"#cccccc\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"},\"buildersocialelement_1394060039_5317ab07cf03d\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"vertical\",\"services\":{\"Twitter\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.twitter.com\\/\"},\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.com\"}}}},\"class\":\"BuilderSocialElement\"},\"builderexpanderelement_1393970592_53164da0bd137\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"},\"builderfooterelement_1393966090_53163c0ac51bd\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#efefef\",\"font-size\":\"10\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,2),(3,NULL,0,3,NULL,'2 Columns','2 Columns','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-2\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"Hello there William S...\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"buildertextelement_1393965781_53163ad53b77c\":{\"content\":{\"text\":\"\\n<p>\\n    Orsino, the <i>Duke of Illyria<\\/i>, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that <b>Olivia<\\/b> plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\\n<\\/p>\\n\"},\"properties\":[],\"class\":\"BuilderTextElement\"},\"builderbuttonelement_1393965942_53163b76e666c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Contact Us Now\",\"sizeClass\":\"medium-button\",\"align\":\"left\"},\"frontend\":{\"href\":\"http:\\/\\/localhost\\/Zurmo\\/app\\/index.php\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#97c43d\",\"border-color\":\"#7cb830\"}}},\"class\":\"BuilderButtonElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"buildertextelement_1394061967_5317b28fc8088\":{\"content\":{\"text\":\"\\n<b>New Articles<\\/b>\\n<ul>\\n    <li>Article Name about something<\\/li>\\n    <li>10 ways to create email templates<\\/li>\\n    <li>Great new marketing tools from Acme<\\/li>\\n    <li>Best blog post of the year<\\/li>\\n    <li>Meet our new chef<\\/li>\\n<\\/ul>\\n\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#f6f6f7\",\"color\":\"#323232\",\"font-size\":\"16\"}}},\"class\":\"BuilderTextElement\"},\"builderexpanderelement_1394062193_5317b37137abc\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"},\"buildertitleelement_1394062361_5317b419e1c51\":{\"content\":{\"text\":\"Acme Elsewhere\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#6c1d1d\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"},\"buildersocialelement_1394060039_5317ab07cf03d\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"vertical\",\"services\":{\"Twitter\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.twitter.com\\/\"},\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.com\"}}}},\"class\":\"BuilderSocialElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"2\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062652_5317b53c906f9\":{\"content\":{\"buildercolumnelement_1394062652_5317b53c90615\":{\"content\":{\"builderdividerelement_1394062652_5317b53c901fc\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"dotted\",\"border-top-color\":\"#efefef\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,3),(4,NULL,0,3,NULL,'2 Columns with strong right','2 Columns with strong right','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-3\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"Hello there William S...\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"buildertextelement_1394061967_5317b28fc8088\":{\"content\":{\"text\":\"\\n <b>New Products<\\/b>\\n<ul>\\n    <li><a href=\\\"#\\\" target=\\\"_blank\\\">AcmeMaster 10,000<\\/a><\\/li>\\n    <li><a href=\\\"#\\\">ProAcme 5,000<\\/a><\\/li>\\n    <li><a href=\\\"#\\\">AcmeMaster++<\\/a><\\/li>\\n    <li><a href=\\\"#\\\" target=\\\"_blank\\\">The Acme Beginner pro<\\/a><\\/li>\\n<\\/ul>\\n\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#f6f6f7\",\"color\":\"#323232\",\"font-size\":\"16\"}}},\"class\":\"BuilderTextElement\"},\"buildertitleelement_1394062361_5317b419e1c51\":{\"content\":{\"text\":\"Follow Us!\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#6c1d1d\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"},\"buildersocialelement_1394060039_5317ab07cf03d\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"vertical\",\"services\":{\"Twitter\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.twitter.com\\/\"},\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.com\"}}}},\"class\":\"BuilderSocialElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"buildertextelement_1393965781_53163ad53b77c\":{\"content\":{\"text\":\"\\n<p>\\n    Orsino, the <i>Duke of Illyria<\\/i>, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that <b>Olivia<\\/b> plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\\n<\\/p>\\n\"},\"properties\":[],\"class\":\"BuilderTextElement\"},\"builderbuttonelement_1393965942_53163b76e666c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Contact Us Now\",\"sizeClass\":\"medium-button\",\"align\":\"left\"},\"frontend\":{\"href\":\"http:\\/\\/localhost\\/Zurmo\\/app\\/index.php\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#97c43d\",\"border-color\":\"#7cb830\"}}},\"class\":\"BuilderButtonElement\"},\"builderexpanderelement_1394062193_5317b37137abc\":{\"content\":[],\"properties\":{\"frontend\":{\"height\":\"10\"}},\"class\":\"BuilderExpanderElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062652_5317b53c906f9\":{\"content\":{\"buildercolumnelement_1394062652_5317b53c90615\":{\"content\":{\"builderdividerelement_1394062652_5317b53c901fc\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"dotted\",\"border-top-color\":\"#efefef\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,4),(5,NULL,0,3,NULL,'3 Columns','3 Columns','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-4\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Inc. Newsletter\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\"},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"Latest entries on our database\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#666666\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"200\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"builderimageelement_1394063801_5317b9b9eedc5\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063416_5317b838c6ce1\":{\"content\":{\"text\":\"Property at NYC\"},\"properties\":{\"backend\":{\"headingLevel\":\"h2\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063772_5317b99cab31e\":{\"content\":{\"text\":\"Orsino, the Duke of Illyria, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that Olivia plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\"},\"properties\":[],\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"builderimageelement_1394063806_5317b9be406a3\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063420_5317b83cb81a3\":{\"content\":{\"text\":\"Chalet in Bs. As.\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063737_5317b979ce2a3\":{\"content\":{\"text\":\"Orsino, the Duke of Illyria, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that Olivia plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\"},\"properties\":[],\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394063404_5317b82c72b5c\":{\"content\":{\"builderimageelement_1394063809_5317b9c1da156\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063425_5317b8410f24b\":{\"content\":{\"text\":\"Tiny Island\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063741_5317b97d68d8d\":{\"content\":{\"text\":\"Orsino, the Duke of Illyria, is consumed by his passion for the melancholy Countess Olivia. His ostentatious musings on the nature of love begin with what has become one of Shakespeare\'s most famous lines: \\\"If music be the food of love, play on.\\\" It is apparent that Orsino\'s love is hollow. He is a romantic dreamer, for whom the idea of being in love is most important. When Valentine gives him the terrible news that Olivia plans to seclude herself for seven years to mourn her deceased brother, Orsino seems unfazed, and hopes Olivia may one day be as bewitched by love (the one self king) as he. Fittingly, the scene ends with Orsino off to lay in a bed of flowers, where he can be alone with his love-thoughts. Later in the play it will be up to Viola to teach Orsino the true meaning of love.\"},\"properties\":[],\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"3\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062652_5317b53c906f9\":{\"content\":{\"buildercolumnelement_1394062652_5317b53c90615\":{\"content\":{\"builderbuttonelement_1394063832_5317b9d8a797c\":{\"content\":[],\"properties\":{\"backend\":{\"text\":\"Click for more details\",\"sizeClass\":\"large-button\",\"width\":\"100%\",\"align\":\"center\"},\"frontend\":{\"href\":\"http:\\/\\/google.com\",\"target\":\"_blank\",\"inlineStyles\":{\"background-color\":\"#8224e3\",\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"center\",\"border-color\":\"#8224e3\",\"border-width\":\"1\",\"border-style\":\"solid\"}}},\"class\":\"BuilderButtonElement\"},\"builderdividerelement_1394062652_5317b53c901fc\":{\"content\":[],\"properties\":{\"frontend\":{\"inlineStyles\":{\"border-top-width\":\"1\",\"border-top-style\":\"dotted\",\"border-top-color\":\"#efefef\"}},\"backend\":{\"divider-padding\":\"10\"}},\"class\":\"BuilderDividerElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#ffffff\",\"color\":\"#545454\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,5),(6,NULL,0,3,NULL,'3 Columns with Hero','3 Columns with Hero','en',NULL,NULL,'{\"baseTemplateId\":\"\",\"icon\":\"icon-template-1\",\"dom\":{\"canvas1\":{\"content\":{\"builderheaderimagetextelement_1393965594_53163a1a0eb53\":{\"content\":{\"buildercolumnelement_1393965594_53163a1a0ef48\":{\"content\":{\"builderimageelement_1393965594_53163a1a0ee52\":{\"content\":{\"image\":1},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1393965594_53163a1a145cc\":{\"content\":{\"builderheadertextelement_1393965594_53163a1a14515\":{\"content\":{\"text\":\"Acme Real Estate\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"color\":\"#ffffff\",\"font-weight\":\"bold\",\"text-align\":\"right\"}}},\"class\":\"BuilderHeaderTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"1:2\",\"header\":\"1\",\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}},\"frontend\":{\"inlineStyles\":{\"background-color\":\"#282a76\"}}},\"class\":\"BuilderHeaderImageTextElement\"},\"builderrowelement_1394062546_5317b4d264a62\":{\"content\":{\"buildercolumnelement_1394062546_5317b4d26488b\":{\"content\":{\"buildertitleelement_1394062546_5317b4d263942\":{\"content\":{\"text\":\"New on our Downtown NYC locations\"},\"properties\":{\"backend\":{\"headingLevel\":\"h1\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"28\",\"font-weight\":\"bold\",\"line-height\":\"100\"}}},\"class\":\"BuilderTitleElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1394122137_53189d999cade\":{\"content\":{\"buildercolumnelement_1394122137_53189d999c769\":{\"content\":{\"builderimageelement_1394122137_53189d999b21b\":{\"content\":{\"image\":4},\"properties\":[],\"class\":\"BuilderImageElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"},\"builderrowelement_1393965668_53163a6448794\":{\"content\":{\"buildercolumnelement_1393965668_53163a644866d\":{\"content\":{\"builderimageelement_1394063801_5317b9b9eedc5\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063416_5317b838c6ce1\":{\"content\":{\"text\":\"Property at NYC\"},\"properties\":{\"backend\":{\"headingLevel\":\"h2\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063772_5317b99cab31e\":{\"content\":{\"text\":\"With its welcoming fireplace, wood-paneled ceiling, limestone floor, and luminous\\nview into a stunning courtyard, The Sterling Mason lobby imparts the intimate warmth of home.\"},\"properties\":{\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394061698_5317b182c1f19\":{\"content\":{\"builderimageelement_1394063806_5317b9be406a3\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063420_5317b83cb81a3\":{\"content\":{\"text\":\"Chalet in Bs. As.\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063737_5317b979ce2a3\":{\"content\":{\"text\":\"With its welcoming fireplace, wood-paneled ceiling, limestone floor, and luminous\\nview into a stunning courtyard, The Sterling Mason lobby imparts the intimate warmth of home.\"},\"properties\":{\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"},\"buildercolumnelement_1394063404_5317b82c72b5c\":{\"content\":{\"builderimageelement_1394063809_5317b9c1da156\":{\"content\":{\"image\":2},\"properties\":[],\"class\":\"BuilderImageElement\"},\"buildertitleelement_1394063425_5317b8410f24b\":{\"content\":{\"text\":\"Luminus Loft\"},\"properties\":{\"backend\":{\"headingLevel\":\"h3\"},\"frontend\":{\"inlineStyles\":{\"color\":\"#323232\",\"font-size\":\"18\",\"font-family\":\"Georgia\",\"font-weight\":\"bold\"}}},\"class\":\"BuilderTitleElement\"},\"builderplaintextelement_1394063741_5317b97d68d8d\":{\"content\":{\"text\":\"With its welcoming fireplace, wood-paneled ceiling, limestone floor, and luminous\\nview into a stunning courtyard, The Sterling Mason lobby imparts the intimate warmth of home.\"},\"properties\":{\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderPlainTextElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":{\"backend\":{\"configuration\":\"3\"}},\"class\":\"BuilderRowElement\"},\"builderrowelement_1394062641_5317b53112a36\":{\"content\":{\"buildercolumnelement_1394062641_5317b5311291a\":{\"content\":{\"buildersocialelement_1394121396_53189ab49a77c\":{\"content\":[],\"properties\":{\"backend\":{\"layout\":\"horizontal\",\"services\":{\"Facebook\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.facebook.com\\/\"},\"GooglePlus\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/gplus.con\"},\"Instagram\":{\"enabled\":\"1\",\"url\":\"http:\\/\\/www.instagram.com\\/\"}}}},\"class\":\"BuilderSocialElement\"},\"builderfooterelement_1394062641_5317b5311226e\":{\"content\":{\"text\":\"[[GLOBAL^MARKETING^FOOTER^HTML]]\"},\"properties\":{\"frontend\":{\"inlineStyles\":{\"font-size\":\"11\",\"background-color\":\"#ebebeb\"}}},\"class\":\"BuilderFooterElement\"}},\"properties\":[],\"class\":\"BuilderColumnElement\"}},\"properties\":[],\"class\":\"BuilderRowElement\"}},\"properties\":{\"frontend\":{\"inlineStyles\":{\"background-color\":\"#fefefe\",\"color\":\"#545454\",\"border-color\":\"#284b7d\",\"border-width\":\"10\",\"border-style\":\"solid\"}},\"backend\":{\"border-negation\":{\"border-top\":\"none\",\"border-right\":\"none\",\"border-bottom\":\"none\",\"border-left\":\"none\"}}},\"class\":\"BuilderCanvasElement\"}}}',NULL,6),(7,1,0,2,'Contact','Happy Birthday','Happy Birthday','en','<html><head></head><body><p>Zurmo\'s source code is hosted on bitbucket while we use <img src=\"http://www.selenic.com/hg-logo/droplets-50.png\" alt=\"mercurial\" /> for version control.</body></html>','Zurmo\'s source code is hosted on bitbucket while we use mercurial for version control.',NULL,NULL,79),(8,2,0,2,'Contact','Discount','Special Offer, 10% discount','es','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n                <html>\n                    <head>\n                    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n                    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\" />\n                    <title>Exploring Zurmo</title>\n\n                    <!-- Facebook sharing information tags -->\n                    <meta property=\"og:title\" content=\"Exploring Zurmo\" />\n                </head>\n                <body style=\"width:100% !important; min-height:1000px; color:#333333; background:#e0dbcf; font-family:Arial,Helvetica,sans-serif; font-size:13px; line-height:1.4;\"\n                alink=\"#9d470a\" link=\"#9d470a\" bgcolor=\"#e0dbcf\" text=\"#333333\" yahoo=\"fix\">\n                    <style type=\"text/css\">\n                        /* EMBEDDED CSS\n                           Android Mail does not support \"class\" declarations outside of a media query so use inline CSS as a rule.\n                           More info: Http://www.emailonacid.com/blog/the_android_mail_app_and_css_class_declarations/ */\n\n                        /****** EMAIL CLIENT BUG FIXES - BEST NOT TO CHANGE THESE ********/\n\n                        /* Forces Hotmail to display emails at full width. */\n                        .ExternalClass {width:100%;}\n\n                        /* Forces Hotmail to display normal line spacing. */\n                        .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height:100%;}\n\n                        /* Prevents Webkit and Windows Mobile platforms from changing default font sizes. */\n                        body {-webkit-text-size-adjust:none; -ms-text-size-adjust:none;}\n\n                        /* Resets all body margins and padding to \"0\" for good measure. */\n                        body {margin:0; padding:0;}\n\n                        /* Resolves webkit padding issue. */\n                        table {border-spacing:0;}\n\n                        /* Resolves the Outlook 2007, 2010, and Gmail td padding issue. */\n                        table td {border-collapse:collapse;}\n\n                        /****** END BUG FIXES ********/\n\n                        /****** RESETTING DEFAULTS, IT IS BEST TO OVERWRITE THESE STYLES INLINE ********/\n\n                        /* This sets a clean slate for all clients EXCEPT Gmail.\n                           From there it forces you to do all of your spacing inline during the development process.\n                           Be sure to stick to margins because paragraph padding is not supported by Outlook 2007/2010.\n                           Remember: Hotmail does not support \"margin\" nor the \"margin-top\" properties.\n                           Stick to \"margin-bottom\", \"margin-left\", \"margin-right\" in order to control spacing.\n                           It also wise to set the inline top-margin to \"0\" for consistancy in Gmail for every inline instance\n                           of a paragraph tag. */\n                        p {margin:0; padding:0; margin-bottom:0;}\n\n                        /* This CSS will overwrite Hotmails default CSS and make your headings appear consistant with Gmail.\n                           From there, you can override with inline CSS if needed. */\n                        h1, h2, h3, h4, h5, h6 {color:#333333; line-height:100%;}\n\n                        /****** END RESETTING DEFAULTS ********/\n\n                        /****** EDITABLE STYLES - FOR YOUR TEMPLATE ********/\n\n                        /* The \"body\" is defined here for Yahoo Beta because it does not support your body tag. Instead, it will\n                           create a wrapper div around your email and that div will inherit your embedded body styles.\n                           The \"#body_style\" is defined for AOL because it does not support your embedded body definition nor\n                           your body tag, we will use this class in our wrapper div. */\n                        body, #body_style {width:100% !important; min-height:1000px; color:#333333; background:#e0dbcf; font-family:Arial,Helvetica,sans-serif; font-size:13px; line-height:1.4;}\n\n                        /* This is the embedded CSS link color for Gmail. This will overwrite Hotmail and Yahoo Beta is\n                           embedded link colors and make it consistent with Gmail. Also use this rule on inline CSS. */\n                        a         {color:#114eb1; text-decoration:none;}\n\n                        /* There is no way to set these inline so you have the option of adding pseudo class definitions here.\n                           They would not work for Gmail or older Lotus Notes but it is a nice addition for all other clients. */\n                        a:link    {color:#114eb1; text-decoration:none;}\n                        a:visited {color:#183082; text-decoration:none;}\n                        a:focus   {color:#0066ff !important;}\n                        a:hover   {color:#0066ff !important;}\n\n                        /* A nice and clean way to target phone numbers you want clickable and avoid a mobile phone from\n                           linking other numbers that look like, but are not phone numbers. Use these two blocks of code to\n                           \"unstyle\" any numbers that may be linked. The second block gives you a class \".mobile_link\" to apply\n                           with a span tag to the numbers you would like linked and styled.\n                           More info: http://www.campaignmonitor.com/blog/post/3571/using-phone-numbers-in-html-email/ */\n                        a[href^=\"tel\"], a[href^=\"sms\"] {text-decoration:none; color:#333333; pointer-events:none; cursor:default;}\n                        .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {text-decoration:default; color:#6e5c4f !important; pointer-events:auto; cursor:default;}\n\n                        /****** MEDIA QUERIES ********/\n                        /* You must use attribute selectors in your media queries to prevent Yahoo from rendering these styles.\n                           We added a yahoo attribute in the body tag to complete this fix.\n                           More info: http://www.emailonacid.com/blog/details/C13/stop_yahoo_mail_from_rendering_your_media_queries */\n\n                        /* Target mobile devices. */\n                        /* @media only screen and (max-device-width: 639px) { */\n                        @media only screen and (max-width: 639px)\n                        {\n                            /* Hide elements at smaller screen sizes (!important needed to override inline CSS). */\n                            body[yahoo] .hide {display:none !important;}\n\n                            /* Adjust table widths at smaller screen sizes. */\n                            body[yahoo] .table {width:320px !important;}\n                            body[yahoo] .innertable {width:280px !important;}\n\n                            /* Resize hero image at smaller screen sizes. */\n                            body[yahoo] .heroimage {width:280px !important; height:100px !important;}\n\n                            /* Resize page shadow at smaller screen sizes. */\n                            body[yahoo] .shadow {width:280px !important; height:4px !important;}\n\n                            /* Collapse footer columns. */\n                            body[yahoo] .footer-left   {width:320px !important;}\n                            body[yahoo] .footer-right {width:320px !important;}\n                            body[yahoo] .footer-right img {float:left !important; margin:0 1em 0 0 !important;}\n                        }\n\n                        /* Target tablet devices. */\n                        /* @media only screen and (min-device-width: 640px) and (max-device-width: 1024px) { */\n                        @media only screen and (min-width: 640px) and (max-width: 1024px)\n                        {\n                        }\n\n                        /*** END EDITABLE STYLES ***/\n\n                        /****** TEMPORARY - THESE SHOULD BE MOVED INLINE AT END OF YOUR DEVELOPMENT PROCESS ********/\n\n                        h1 {font-size:26px; line-height:1.2; font-weight:normal; margin-top:0; margin-bottom:0;}\n\n                        p {margin-top:0; margin-bottom:0;}\n\n                        img {display:block; border:none; outline:none; text-decoration:none;}\n\n                        /* Remove spacing around Outlook 07, 10 tables */\n                        table {border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;}\n\n                        /*** END TEMPORARY ***/\n                    </style>\n                <!-- You may adjust each of the values above for your template as needed.\n\n                We have included the style attribute for Gmail because it does not support embedded CSS and it will convert this body tag to\n                a div. Since it gets converted to a div, the other body attributes like bgcolor are ignored.\n\n                We included body attributes (alink, link, bgcolor and text) for Lotus Notes 6.5 and 7, as these clients do not offer much\n                support for embedded nor inline CSS.\n\n                The \"min-height\" attribute is set for Gmail and AOL since they will be converting this body tag to a div and we want our\n                background color to reach the bottom of the page.\n\n                The yahoo attribute is added if you are using media queries for mobile devices (see media queries above) -->\n\n                <!-- PAGE WRAPPER -->\n                    <div id=\"body_style\">\n\n                        <!-- Wrapper/Container Table: Use a wrapper table to control the width and the background color consistently of your email. Use this approach instead of setting attributes on the body tag. -->\n                        <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"width:100% !important; margin:0; padding:0;\">\n                            <tr bgcolor=\"#f0f0f0\">\n                                <td>\n\n                                    <!-- Tables are the most common way to format your email consistently. Set your table widths inside cells and in most cases reset cellpadding, cellspacing, and border to zero. Use nested tables as a way to space effectively in your message. -->\n                                    <table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"table\">\n\n                                        <!-- HEADER -->\n                                        <tr>\n                                            <td>\n                                                <!-- set a value for bgcolor -->\n                                                <table bgcolor=\"#ffffff\" text=\"#cccccc\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <!-- header left: logo and link to homepage -->\n                                                        <td width=\"320\" valign=\"top\">\n                                                            <!-- set an image for header left - must be 320px width (height can be variable) -->\n                                                            <a href=\"#\" target=\"_blank\"><img src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/ZurmoLogo.png\" width=\"320\" height=\"64\" border=\"0\" alt=\"Header (left)\" /></a>\n                                                        </td>\n                                                        <!-- /header left -->\n                                                        <!-- header right: hidden in mobile version -->\n                                                        <td width=\"280\" valign=\"top\" class=\"hide\">\n                                                        </td>\n                                                        <!-- /header right -->\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /HEADER -->\n\n                                        <!-- CONTENT -->\n                                        <!-- set a value for bgcolor -->\n                                        <tr bgcolor=\"#ffffff\">\n                                            <td style=\"padding-top:20px;\">\n\n                                                <!-- hero article -->\n                                                <table style=\"margin-bottom:1em;\" width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr>\n                                                        <!-- hero article textarea -->\n                                                        <td>\n                                                            <table bgcolor=\"#ffffff\" width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr>\n                                                                    <td>\n                                                                        <!-- hero article heading text -->\n                                                                        <h1 style=\"color:#666666; margin-bottom:.5em;\">Hi [[TITLE]]. [[FIRST^NAME]],</h1>\n                                                                        <!-- /hero article heading text -->\n                                                                        <!-- hero article paragraph text -->\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Our goal with Zurmo is to provide an easy-to-use, easy-to-customize CRM application that can be adapted to any business use case. We have taken special care to think through many different use cases and have designed a system that we believe provides a high degree of flexibility and a wide range of out-of-the-box use cases. Zurmo is capable of supporting your complex business processes, yet very simple to use.</p>\n                                                                        <!-- /hero article paragraph text -->\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>\n                                                        <!-- /hero article textarea -->\n                                                    </tr>\n                                                    <!-- hero article main image: must be 560px x 186px -->\n                                                    <tr>\n                                                        <td>\n                                                            <img src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/grass.jpg\" width=\"560\" height=\"280\" border=\"0\" alt=\"\" class=\"heroimage\" />\n                                                        </td>\n                                                    </tr>\n                                                    <!-- /hero article main image -->\n                                                </table>\n                                                <!-- /hero article -->\n\n                                                <!-- standard article (left text) -->\n                                                <table style=\"margin-bottom: 1em;\" width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr valign=\"top\">\n                                                        <!-- standard article textarea -->\n                                                        <td>\n                                                            <table width=\"270\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <!-- standard article heading text -->\n                                                                    <td>\n                                                                        <h1 style=\"color:#666666;\"><a style=\"color:#114eb1;\" href=\"#\" target=\"_blank\">Sales and Marketing Friendly</a></h1>\n                                                                    </td>\n                                                                    <!-- /standard article heading text -->\n                                                                </tr>\n                                                            </table>\n                                                            <!-- standard article paragraph text -->\n                                                            <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <td>\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Zurmo CRM empowers Sales and Marketing Professionals to work together throughout the entire sales and marketing processes. Users are provided with everything they need in order to find, nurture, qualify, and convert Leads into Contacts associated with Accounts. Meetings, Tasks, Notes, and Attachments - everything required to stay on track - are all conveniently located in one place. Opportunities are managed seamlessly from the negotiation stage to close/win.</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <!-- /standard article paragraph text -->\n                                                        </td>\n                                                        <!-- /standard article textarea -->\n                                                        <!-- standard article main image: hidden in mobile version - must be 280px width (height can be variable) -->\n                                                        <td class=\"hide\">\n                                                            <img style=\"margin-bottom:1em;\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/demo1.jpg\" width=\"260\" height=\"260\" border=\"0\" alt=\"\" />\n                                                        </td>\n                                                        <!-- /standard article main image -->\n                                                    </tr>\n                                                </table>\n                                                <!-- /standard article (left text) -->\n\n                                                <!-- standard article (right text) -->\n                                                <table width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr valign=\"top\">\n                                                        <!-- standard article main image: hidden in mobile version - must be 280px width (height can be variable) -->\n                                                        <td class=\"hide\">\n                                                            <img style=\"margin-bottom:1em;\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/demo2.jpg\" width=\"260\" height=\"260\" border=\"0\" alt=\"\" />\n                                                        </td>\n                                                        <!-- /standard article main image -->\n                                                        <!-- standard article textarea -->\n                                                        <td>\n                                                            <table width=\"270\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <!-- standard article heading text -->\n                                                                    <td>\n                                                                        <h1 style=\"color:#666666;\"><a style=\"color:#114eb1;\" href=\"#\" target=\"_blank\">User Friendly</a></h1>\n                                                                    </td>\n                                                                    <!-- /standard article heading text -->\n                                                                </tr>\n                                                            </table>\n                                                            <!-- standard article paragraph text -->\n                                                            <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <td>\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Every effort has been made to design Zurmo for the user. Zurmo is the first CRM solution with gamification at its core. Game concepts like points, leveling, badges, and leaderboards keep users engaged - and somewhat addicted to following CRM best practices.</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <!-- /standard article paragraph text -->\n                                                        </td>\n                                                        <!-- /standard article textarea -->\n                                                    </tr>\n                                                </table>\n                                                <!-- /standard article (right text) -->\n\n                                            </td>\n                                        </tr>\n                                        <!-- /CONTENT -->\n\n                                        <!-- FOOTER -->\n                                        <tr>\n                                            <td>\n                                                <table bgcolor=\"#cccccc\" text=\"#ffffff\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <td>\n                                                            <table align=\"left\" bgcolor=\"#cccccc\" text=\"#333333\" width=\"280\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\" class=\"footer-left\">\n                                                                <tr>\n                                                                    <td style=\"color:#333333;\">\n                                                                             <p> [[UNSUBSCRIBE^URL]] <br/> [[MANAGE^SUBSCRIPTIONS^URL]]</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <table align=\"right\" bgcolor=\"#cccccc\" text=\"#333333\" width=\"280\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\" class=\"footer-right\">\n                                                                <tr>\n                                                                    <td style=\"color:#333333;\">\n                                                                        <p>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/facebook.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Facebook\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/googleplus.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Google+\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/linkedin.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"LinkedIn\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/twitter.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Twitter\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/youtube.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"YouTube\" /></a>\n                                                                        </p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /FOOTER -->\n\n                                        <!-- SUBFOOTER -->\n                                        <tr>\n                                            <td>\n                                                <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <td valign=\"top\" style=\"font-size:11px;\">\n                                                            &copy;[[CURRENT^YEAR]] <a href=\"[[BASE^URL]]\">[[APPLICATION^NAME]]</a>. All rights reserved. This email was sent to [[PRIMARY^EMAIL]].\n                                                        </td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /SUBFOOTER -->\n\n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- End of wrapper table -->\n                    </div>\n\n                </body>\n                </html>','Our goal with Zurmo is to provide an easy-to-use, easy-to-customize CRM application that can be adapted to any business use case. We have taken special care to think through many different use cases and have designed a system that we believe provides a high degree of flexibility and a wide range of out-of-the-box use cases. Zurmo is capable of supporting your complex business processes, yet very simple to use.',NULL,NULL,80),(9,1,0,2,'Account','Downtime Alert','Planned Downtime','it','<html><head></head><body><p>Zurmo\'s source code is hosted on bitbucket while we use <img src=\"http://www.selenic.com/hg-logo/droplets-50.png\" alt=\"mercurial\" /> for version control.</body></html>','Zurmo\'s source code is hosted on bitbucket while we use mercurial for version control.',NULL,NULL,81),(10,2,0,2,'Contact','Sales decrease','Q4 Sales decrease','fr','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n                <html>\n                    <head>\n                    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n                    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\" />\n                    <title>Exploring Zurmo</title>\n\n                    <!-- Facebook sharing information tags -->\n                    <meta property=\"og:title\" content=\"Exploring Zurmo\" />\n                </head>\n                <body style=\"width:100% !important; min-height:1000px; color:#333333; background:#e0dbcf; font-family:Arial,Helvetica,sans-serif; font-size:13px; line-height:1.4;\"\n                alink=\"#9d470a\" link=\"#9d470a\" bgcolor=\"#e0dbcf\" text=\"#333333\" yahoo=\"fix\">\n                    <style type=\"text/css\">\n                        /* EMBEDDED CSS\n                           Android Mail does not support \"class\" declarations outside of a media query so use inline CSS as a rule.\n                           More info: Http://www.emailonacid.com/blog/the_android_mail_app_and_css_class_declarations/ */\n\n                        /****** EMAIL CLIENT BUG FIXES - BEST NOT TO CHANGE THESE ********/\n\n                        /* Forces Hotmail to display emails at full width. */\n                        .ExternalClass {width:100%;}\n\n                        /* Forces Hotmail to display normal line spacing. */\n                        .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height:100%;}\n\n                        /* Prevents Webkit and Windows Mobile platforms from changing default font sizes. */\n                        body {-webkit-text-size-adjust:none; -ms-text-size-adjust:none;}\n\n                        /* Resets all body margins and padding to \"0\" for good measure. */\n                        body {margin:0; padding:0;}\n\n                        /* Resolves webkit padding issue. */\n                        table {border-spacing:0;}\n\n                        /* Resolves the Outlook 2007, 2010, and Gmail td padding issue. */\n                        table td {border-collapse:collapse;}\n\n                        /****** END BUG FIXES ********/\n\n                        /****** RESETTING DEFAULTS, IT IS BEST TO OVERWRITE THESE STYLES INLINE ********/\n\n                        /* This sets a clean slate for all clients EXCEPT Gmail.\n                           From there it forces you to do all of your spacing inline during the development process.\n                           Be sure to stick to margins because paragraph padding is not supported by Outlook 2007/2010.\n                           Remember: Hotmail does not support \"margin\" nor the \"margin-top\" properties.\n                           Stick to \"margin-bottom\", \"margin-left\", \"margin-right\" in order to control spacing.\n                           It also wise to set the inline top-margin to \"0\" for consistancy in Gmail for every inline instance\n                           of a paragraph tag. */\n                        p {margin:0; padding:0; margin-bottom:0;}\n\n                        /* This CSS will overwrite Hotmails default CSS and make your headings appear consistant with Gmail.\n                           From there, you can override with inline CSS if needed. */\n                        h1, h2, h3, h4, h5, h6 {color:#333333; line-height:100%;}\n\n                        /****** END RESETTING DEFAULTS ********/\n\n                        /****** EDITABLE STYLES - FOR YOUR TEMPLATE ********/\n\n                        /* The \"body\" is defined here for Yahoo Beta because it does not support your body tag. Instead, it will\n                           create a wrapper div around your email and that div will inherit your embedded body styles.\n                           The \"#body_style\" is defined for AOL because it does not support your embedded body definition nor\n                           your body tag, we will use this class in our wrapper div. */\n                        body, #body_style {width:100% !important; min-height:1000px; color:#333333; background:#e0dbcf; font-family:Arial,Helvetica,sans-serif; font-size:13px; line-height:1.4;}\n\n                        /* This is the embedded CSS link color for Gmail. This will overwrite Hotmail and Yahoo Beta is\n                           embedded link colors and make it consistent with Gmail. Also use this rule on inline CSS. */\n                        a         {color:#114eb1; text-decoration:none;}\n\n                        /* There is no way to set these inline so you have the option of adding pseudo class definitions here.\n                           They would not work for Gmail or older Lotus Notes but it is a nice addition for all other clients. */\n                        a:link    {color:#114eb1; text-decoration:none;}\n                        a:visited {color:#183082; text-decoration:none;}\n                        a:focus   {color:#0066ff !important;}\n                        a:hover   {color:#0066ff !important;}\n\n                        /* A nice and clean way to target phone numbers you want clickable and avoid a mobile phone from\n                           linking other numbers that look like, but are not phone numbers. Use these two blocks of code to\n                           \"unstyle\" any numbers that may be linked. The second block gives you a class \".mobile_link\" to apply\n                           with a span tag to the numbers you would like linked and styled.\n                           More info: http://www.campaignmonitor.com/blog/post/3571/using-phone-numbers-in-html-email/ */\n                        a[href^=\"tel\"], a[href^=\"sms\"] {text-decoration:none; color:#333333; pointer-events:none; cursor:default;}\n                        .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {text-decoration:default; color:#6e5c4f !important; pointer-events:auto; cursor:default;}\n\n                        /****** MEDIA QUERIES ********/\n                        /* You must use attribute selectors in your media queries to prevent Yahoo from rendering these styles.\n                           We added a yahoo attribute in the body tag to complete this fix.\n                           More info: http://www.emailonacid.com/blog/details/C13/stop_yahoo_mail_from_rendering_your_media_queries */\n\n                        /* Target mobile devices. */\n                        /* @media only screen and (max-device-width: 639px) { */\n                        @media only screen and (max-width: 639px)\n                        {\n                            /* Hide elements at smaller screen sizes (!important needed to override inline CSS). */\n                            body[yahoo] .hide {display:none !important;}\n\n                            /* Adjust table widths at smaller screen sizes. */\n                            body[yahoo] .table {width:320px !important;}\n                            body[yahoo] .innertable {width:280px !important;}\n\n                            /* Resize hero image at smaller screen sizes. */\n                            body[yahoo] .heroimage {width:280px !important; height:100px !important;}\n\n                            /* Resize page shadow at smaller screen sizes. */\n                            body[yahoo] .shadow {width:280px !important; height:4px !important;}\n\n                            /* Collapse footer columns. */\n                            body[yahoo] .footer-left   {width:320px !important;}\n                            body[yahoo] .footer-right {width:320px !important;}\n                            body[yahoo] .footer-right img {float:left !important; margin:0 1em 0 0 !important;}\n                        }\n\n                        /* Target tablet devices. */\n                        /* @media only screen and (min-device-width: 640px) and (max-device-width: 1024px) { */\n                        @media only screen and (min-width: 640px) and (max-width: 1024px)\n                        {\n                        }\n\n                        /*** END EDITABLE STYLES ***/\n\n                        /****** TEMPORARY - THESE SHOULD BE MOVED INLINE AT END OF YOUR DEVELOPMENT PROCESS ********/\n\n                        h1 {font-size:26px; line-height:1.2; font-weight:normal; margin-top:0; margin-bottom:0;}\n\n                        p {margin-top:0; margin-bottom:0;}\n\n                        img {display:block; border:none; outline:none; text-decoration:none;}\n\n                        /* Remove spacing around Outlook 07, 10 tables */\n                        table {border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;}\n\n                        /*** END TEMPORARY ***/\n                    </style>\n                <!-- You may adjust each of the values above for your template as needed.\n\n                We have included the style attribute for Gmail because it does not support embedded CSS and it will convert this body tag to\n                a div. Since it gets converted to a div, the other body attributes like bgcolor are ignored.\n\n                We included body attributes (alink, link, bgcolor and text) for Lotus Notes 6.5 and 7, as these clients do not offer much\n                support for embedded nor inline CSS.\n\n                The \"min-height\" attribute is set for Gmail and AOL since they will be converting this body tag to a div and we want our\n                background color to reach the bottom of the page.\n\n                The yahoo attribute is added if you are using media queries for mobile devices (see media queries above) -->\n\n                <!-- PAGE WRAPPER -->\n                    <div id=\"body_style\">\n\n                        <!-- Wrapper/Container Table: Use a wrapper table to control the width and the background color consistently of your email. Use this approach instead of setting attributes on the body tag. -->\n                        <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"width:100% !important; margin:0; padding:0;\">\n                            <tr bgcolor=\"#f0f0f0\">\n                                <td>\n\n                                    <!-- Tables are the most common way to format your email consistently. Set your table widths inside cells and in most cases reset cellpadding, cellspacing, and border to zero. Use nested tables as a way to space effectively in your message. -->\n                                    <table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"table\">\n\n                                        <!-- HEADER -->\n                                        <tr>\n                                            <td>\n                                                <!-- set a value for bgcolor -->\n                                                <table bgcolor=\"#ffffff\" text=\"#cccccc\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <!-- header left: logo and link to homepage -->\n                                                        <td width=\"320\" valign=\"top\">\n                                                            <!-- set an image for header left - must be 320px width (height can be variable) -->\n                                                            <a href=\"#\" target=\"_blank\"><img src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/ZurmoLogo.png\" width=\"320\" height=\"64\" border=\"0\" alt=\"Header (left)\" /></a>\n                                                        </td>\n                                                        <!-- /header left -->\n                                                        <!-- header right: hidden in mobile version -->\n                                                        <td width=\"280\" valign=\"top\" class=\"hide\">\n                                                        </td>\n                                                        <!-- /header right -->\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /HEADER -->\n\n                                        <!-- CONTENT -->\n                                        <!-- set a value for bgcolor -->\n                                        <tr bgcolor=\"#ffffff\">\n                                            <td style=\"padding-top:20px;\">\n\n                                                <!-- hero article -->\n                                                <table style=\"margin-bottom:1em;\" width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr>\n                                                        <!-- hero article textarea -->\n                                                        <td>\n                                                            <table bgcolor=\"#ffffff\" width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr>\n                                                                    <td>\n                                                                        <!-- hero article heading text -->\n                                                                        <h1 style=\"color:#666666; margin-bottom:.5em;\">Hi [[TITLE]]. [[FIRST^NAME]],</h1>\n                                                                        <!-- /hero article heading text -->\n                                                                        <!-- hero article paragraph text -->\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Our goal with Zurmo is to provide an easy-to-use, easy-to-customize CRM application that can be adapted to any business use case. We have taken special care to think through many different use cases and have designed a system that we believe provides a high degree of flexibility and a wide range of out-of-the-box use cases. Zurmo is capable of supporting your complex business processes, yet very simple to use.</p>\n                                                                        <!-- /hero article paragraph text -->\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>\n                                                        <!-- /hero article textarea -->\n                                                    </tr>\n                                                    <!-- hero article main image: must be 560px x 186px -->\n                                                    <tr>\n                                                        <td>\n                                                            <img src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/grass.jpg\" width=\"560\" height=\"280\" border=\"0\" alt=\"\" class=\"heroimage\" />\n                                                        </td>\n                                                    </tr>\n                                                    <!-- /hero article main image -->\n                                                </table>\n                                                <!-- /hero article -->\n\n                                                <!-- standard article (left text) -->\n                                                <table style=\"margin-bottom: 1em;\" width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr valign=\"top\">\n                                                        <!-- standard article textarea -->\n                                                        <td>\n                                                            <table width=\"270\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <!-- standard article heading text -->\n                                                                    <td>\n                                                                        <h1 style=\"color:#666666;\"><a style=\"color:#114eb1;\" href=\"#\" target=\"_blank\">Sales and Marketing Friendly</a></h1>\n                                                                    </td>\n                                                                    <!-- /standard article heading text -->\n                                                                </tr>\n                                                            </table>\n                                                            <!-- standard article paragraph text -->\n                                                            <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <td>\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Zurmo CRM empowers Sales and Marketing Professionals to work together throughout the entire sales and marketing processes. Users are provided with everything they need in order to find, nurture, qualify, and convert Leads into Contacts associated with Accounts. Meetings, Tasks, Notes, and Attachments - everything required to stay on track - are all conveniently located in one place. Opportunities are managed seamlessly from the negotiation stage to close/win.</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <!-- /standard article paragraph text -->\n                                                        </td>\n                                                        <!-- /standard article textarea -->\n                                                        <!-- standard article main image: hidden in mobile version - must be 280px width (height can be variable) -->\n                                                        <td class=\"hide\">\n                                                            <img style=\"margin-bottom:1em;\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/demo1.jpg\" width=\"260\" height=\"260\" border=\"0\" alt=\"\" />\n                                                        </td>\n                                                        <!-- /standard article main image -->\n                                                    </tr>\n                                                </table>\n                                                <!-- /standard article (left text) -->\n\n                                                <!-- standard article (right text) -->\n                                                <table width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr valign=\"top\">\n                                                        <!-- standard article main image: hidden in mobile version - must be 280px width (height can be variable) -->\n                                                        <td class=\"hide\">\n                                                            <img style=\"margin-bottom:1em;\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/demo2.jpg\" width=\"260\" height=\"260\" border=\"0\" alt=\"\" />\n                                                        </td>\n                                                        <!-- /standard article main image -->\n                                                        <!-- standard article textarea -->\n                                                        <td>\n                                                            <table width=\"270\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <!-- standard article heading text -->\n                                                                    <td>\n                                                                        <h1 style=\"color:#666666;\"><a style=\"color:#114eb1;\" href=\"#\" target=\"_blank\">User Friendly</a></h1>\n                                                                    </td>\n                                                                    <!-- /standard article heading text -->\n                                                                </tr>\n                                                            </table>\n                                                            <!-- standard article paragraph text -->\n                                                            <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <td>\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Every effort has been made to design Zurmo for the user. Zurmo is the first CRM solution with gamification at its core. Game concepts like points, leveling, badges, and leaderboards keep users engaged - and somewhat addicted to following CRM best practices.</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <!-- /standard article paragraph text -->\n                                                        </td>\n                                                        <!-- /standard article textarea -->\n                                                    </tr>\n                                                </table>\n                                                <!-- /standard article (right text) -->\n\n                                            </td>\n                                        </tr>\n                                        <!-- /CONTENT -->\n\n                                        <!-- FOOTER -->\n                                        <tr>\n                                            <td>\n                                                <table bgcolor=\"#cccccc\" text=\"#ffffff\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <td>\n                                                            <table align=\"left\" bgcolor=\"#cccccc\" text=\"#333333\" width=\"280\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\" class=\"footer-left\">\n                                                                <tr>\n                                                                    <td style=\"color:#333333;\">\n                                                                             <p> [[UNSUBSCRIBE^URL]] <br/> [[MANAGE^SUBSCRIPTIONS^URL]]</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <table align=\"right\" bgcolor=\"#cccccc\" text=\"#333333\" width=\"280\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\" class=\"footer-right\">\n                                                                <tr>\n                                                                    <td style=\"color:#333333;\">\n                                                                        <p>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/facebook.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Facebook\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/googleplus.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Google+\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/linkedin.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"LinkedIn\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/twitter.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Twitter\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/youtube.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"YouTube\" /></a>\n                                                                        </p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /FOOTER -->\n\n                                        <!-- SUBFOOTER -->\n                                        <tr>\n                                            <td>\n                                                <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <td valign=\"top\" style=\"font-size:11px;\">\n                                                            &copy;[[CURRENT^YEAR]] <a href=\"[[BASE^URL]]\">[[APPLICATION^NAME]]</a>. All rights reserved. This email was sent to [[PRIMARY^EMAIL]].\n                                                        </td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /SUBFOOTER -->\n\n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- End of wrapper table -->\n                    </div>\n\n                </body>\n                </html>','Our goal with Zurmo is to provide an easy-to-use, easy-to-customize CRM application that can be adapted to any business use case. We have taken special care to think through many different use cases and have designed a system that we believe provides a high degree of flexibility and a wide range of out-of-the-box use cases. Zurmo is capable of supporting your complex business processes, yet very simple to use.',NULL,NULL,82),(11,1,0,2,'Task','Missions alert','Upcoming Missions','de','<html><head></head><body><p>Zurmo\'s source code is hosted on bitbucket while we use <img src=\"http://www.selenic.com/hg-logo/droplets-50.png\" alt=\"mercurial\" /> for version control.</body></html>','Zurmo\'s source code is hosted on bitbucket while we use mercurial for version control.',NULL,NULL,83),(12,2,0,2,'Contact','Inbox Update','New Inbox Module is live','en','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n                <html>\n                    <head>\n                    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n                    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0\" />\n                    <title>Exploring Zurmo</title>\n\n                    <!-- Facebook sharing information tags -->\n                    <meta property=\"og:title\" content=\"Exploring Zurmo\" />\n                </head>\n                <body style=\"width:100% !important; min-height:1000px; color:#333333; background:#e0dbcf; font-family:Arial,Helvetica,sans-serif; font-size:13px; line-height:1.4;\"\n                alink=\"#9d470a\" link=\"#9d470a\" bgcolor=\"#e0dbcf\" text=\"#333333\" yahoo=\"fix\">\n                    <style type=\"text/css\">\n                        /* EMBEDDED CSS\n                           Android Mail does not support \"class\" declarations outside of a media query so use inline CSS as a rule.\n                           More info: Http://www.emailonacid.com/blog/the_android_mail_app_and_css_class_declarations/ */\n\n                        /****** EMAIL CLIENT BUG FIXES - BEST NOT TO CHANGE THESE ********/\n\n                        /* Forces Hotmail to display emails at full width. */\n                        .ExternalClass {width:100%;}\n\n                        /* Forces Hotmail to display normal line spacing. */\n                        .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height:100%;}\n\n                        /* Prevents Webkit and Windows Mobile platforms from changing default font sizes. */\n                        body {-webkit-text-size-adjust:none; -ms-text-size-adjust:none;}\n\n                        /* Resets all body margins and padding to \"0\" for good measure. */\n                        body {margin:0; padding:0;}\n\n                        /* Resolves webkit padding issue. */\n                        table {border-spacing:0;}\n\n                        /* Resolves the Outlook 2007, 2010, and Gmail td padding issue. */\n                        table td {border-collapse:collapse;}\n\n                        /****** END BUG FIXES ********/\n\n                        /****** RESETTING DEFAULTS, IT IS BEST TO OVERWRITE THESE STYLES INLINE ********/\n\n                        /* This sets a clean slate for all clients EXCEPT Gmail.\n                           From there it forces you to do all of your spacing inline during the development process.\n                           Be sure to stick to margins because paragraph padding is not supported by Outlook 2007/2010.\n                           Remember: Hotmail does not support \"margin\" nor the \"margin-top\" properties.\n                           Stick to \"margin-bottom\", \"margin-left\", \"margin-right\" in order to control spacing.\n                           It also wise to set the inline top-margin to \"0\" for consistancy in Gmail for every inline instance\n                           of a paragraph tag. */\n                        p {margin:0; padding:0; margin-bottom:0;}\n\n                        /* This CSS will overwrite Hotmails default CSS and make your headings appear consistant with Gmail.\n                           From there, you can override with inline CSS if needed. */\n                        h1, h2, h3, h4, h5, h6 {color:#333333; line-height:100%;}\n\n                        /****** END RESETTING DEFAULTS ********/\n\n                        /****** EDITABLE STYLES - FOR YOUR TEMPLATE ********/\n\n                        /* The \"body\" is defined here for Yahoo Beta because it does not support your body tag. Instead, it will\n                           create a wrapper div around your email and that div will inherit your embedded body styles.\n                           The \"#body_style\" is defined for AOL because it does not support your embedded body definition nor\n                           your body tag, we will use this class in our wrapper div. */\n                        body, #body_style {width:100% !important; min-height:1000px; color:#333333; background:#e0dbcf; font-family:Arial,Helvetica,sans-serif; font-size:13px; line-height:1.4;}\n\n                        /* This is the embedded CSS link color for Gmail. This will overwrite Hotmail and Yahoo Beta is\n                           embedded link colors and make it consistent with Gmail. Also use this rule on inline CSS. */\n                        a         {color:#114eb1; text-decoration:none;}\n\n                        /* There is no way to set these inline so you have the option of adding pseudo class definitions here.\n                           They would not work for Gmail or older Lotus Notes but it is a nice addition for all other clients. */\n                        a:link    {color:#114eb1; text-decoration:none;}\n                        a:visited {color:#183082; text-decoration:none;}\n                        a:focus   {color:#0066ff !important;}\n                        a:hover   {color:#0066ff !important;}\n\n                        /* A nice and clean way to target phone numbers you want clickable and avoid a mobile phone from\n                           linking other numbers that look like, but are not phone numbers. Use these two blocks of code to\n                           \"unstyle\" any numbers that may be linked. The second block gives you a class \".mobile_link\" to apply\n                           with a span tag to the numbers you would like linked and styled.\n                           More info: http://www.campaignmonitor.com/blog/post/3571/using-phone-numbers-in-html-email/ */\n                        a[href^=\"tel\"], a[href^=\"sms\"] {text-decoration:none; color:#333333; pointer-events:none; cursor:default;}\n                        .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {text-decoration:default; color:#6e5c4f !important; pointer-events:auto; cursor:default;}\n\n                        /****** MEDIA QUERIES ********/\n                        /* You must use attribute selectors in your media queries to prevent Yahoo from rendering these styles.\n                           We added a yahoo attribute in the body tag to complete this fix.\n                           More info: http://www.emailonacid.com/blog/details/C13/stop_yahoo_mail_from_rendering_your_media_queries */\n\n                        /* Target mobile devices. */\n                        /* @media only screen and (max-device-width: 639px) { */\n                        @media only screen and (max-width: 639px)\n                        {\n                            /* Hide elements at smaller screen sizes (!important needed to override inline CSS). */\n                            body[yahoo] .hide {display:none !important;}\n\n                            /* Adjust table widths at smaller screen sizes. */\n                            body[yahoo] .table {width:320px !important;}\n                            body[yahoo] .innertable {width:280px !important;}\n\n                            /* Resize hero image at smaller screen sizes. */\n                            body[yahoo] .heroimage {width:280px !important; height:100px !important;}\n\n                            /* Resize page shadow at smaller screen sizes. */\n                            body[yahoo] .shadow {width:280px !important; height:4px !important;}\n\n                            /* Collapse footer columns. */\n                            body[yahoo] .footer-left   {width:320px !important;}\n                            body[yahoo] .footer-right {width:320px !important;}\n                            body[yahoo] .footer-right img {float:left !important; margin:0 1em 0 0 !important;}\n                        }\n\n                        /* Target tablet devices. */\n                        /* @media only screen and (min-device-width: 640px) and (max-device-width: 1024px) { */\n                        @media only screen and (min-width: 640px) and (max-width: 1024px)\n                        {\n                        }\n\n                        /*** END EDITABLE STYLES ***/\n\n                        /****** TEMPORARY - THESE SHOULD BE MOVED INLINE AT END OF YOUR DEVELOPMENT PROCESS ********/\n\n                        h1 {font-size:26px; line-height:1.2; font-weight:normal; margin-top:0; margin-bottom:0;}\n\n                        p {margin-top:0; margin-bottom:0;}\n\n                        img {display:block; border:none; outline:none; text-decoration:none;}\n\n                        /* Remove spacing around Outlook 07, 10 tables */\n                        table {border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;}\n\n                        /*** END TEMPORARY ***/\n                    </style>\n                <!-- You may adjust each of the values above for your template as needed.\n\n                We have included the style attribute for Gmail because it does not support embedded CSS and it will convert this body tag to\n                a div. Since it gets converted to a div, the other body attributes like bgcolor are ignored.\n\n                We included body attributes (alink, link, bgcolor and text) for Lotus Notes 6.5 and 7, as these clients do not offer much\n                support for embedded nor inline CSS.\n\n                The \"min-height\" attribute is set for Gmail and AOL since they will be converting this body tag to a div and we want our\n                background color to reach the bottom of the page.\n\n                The yahoo attribute is added if you are using media queries for mobile devices (see media queries above) -->\n\n                <!-- PAGE WRAPPER -->\n                    <div id=\"body_style\">\n\n                        <!-- Wrapper/Container Table: Use a wrapper table to control the width and the background color consistently of your email. Use this approach instead of setting attributes on the body tag. -->\n                        <table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" style=\"width:100% !important; margin:0; padding:0;\">\n                            <tr bgcolor=\"#f0f0f0\">\n                                <td>\n\n                                    <!-- Tables are the most common way to format your email consistently. Set your table widths inside cells and in most cases reset cellpadding, cellspacing, and border to zero. Use nested tables as a way to space effectively in your message. -->\n                                    <table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"table\">\n\n                                        <!-- HEADER -->\n                                        <tr>\n                                            <td>\n                                                <!-- set a value for bgcolor -->\n                                                <table bgcolor=\"#ffffff\" text=\"#cccccc\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <!-- header left: logo and link to homepage -->\n                                                        <td width=\"320\" valign=\"top\">\n                                                            <!-- set an image for header left - must be 320px width (height can be variable) -->\n                                                            <a href=\"#\" target=\"_blank\"><img src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/ZurmoLogo.png\" width=\"320\" height=\"64\" border=\"0\" alt=\"Header (left)\" /></a>\n                                                        </td>\n                                                        <!-- /header left -->\n                                                        <!-- header right: hidden in mobile version -->\n                                                        <td width=\"280\" valign=\"top\" class=\"hide\">\n                                                        </td>\n                                                        <!-- /header right -->\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /HEADER -->\n\n                                        <!-- CONTENT -->\n                                        <!-- set a value for bgcolor -->\n                                        <tr bgcolor=\"#ffffff\">\n                                            <td style=\"padding-top:20px;\">\n\n                                                <!-- hero article -->\n                                                <table style=\"margin-bottom:1em;\" width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr>\n                                                        <!-- hero article textarea -->\n                                                        <td>\n                                                            <table bgcolor=\"#ffffff\" width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr>\n                                                                    <td>\n                                                                        <!-- hero article heading text -->\n                                                                        <h1 style=\"color:#666666; margin-bottom:.5em;\">Hi [[TITLE]]. [[FIRST^NAME]],</h1>\n                                                                        <!-- /hero article heading text -->\n                                                                        <!-- hero article paragraph text -->\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Our goal with Zurmo is to provide an easy-to-use, easy-to-customize CRM application that can be adapted to any business use case. We have taken special care to think through many different use cases and have designed a system that we believe provides a high degree of flexibility and a wide range of out-of-the-box use cases. Zurmo is capable of supporting your complex business processes, yet very simple to use.</p>\n                                                                        <!-- /hero article paragraph text -->\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>\n                                                        <!-- /hero article textarea -->\n                                                    </tr>\n                                                    <!-- hero article main image: must be 560px x 186px -->\n                                                    <tr>\n                                                        <td>\n                                                            <img src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/grass.jpg\" width=\"560\" height=\"280\" border=\"0\" alt=\"\" class=\"heroimage\" />\n                                                        </td>\n                                                    </tr>\n                                                    <!-- /hero article main image -->\n                                                </table>\n                                                <!-- /hero article -->\n\n                                                <!-- standard article (left text) -->\n                                                <table style=\"margin-bottom: 1em;\" width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr valign=\"top\">\n                                                        <!-- standard article textarea -->\n                                                        <td>\n                                                            <table width=\"270\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <!-- standard article heading text -->\n                                                                    <td>\n                                                                        <h1 style=\"color:#666666;\"><a style=\"color:#114eb1;\" href=\"#\" target=\"_blank\">Sales and Marketing Friendly</a></h1>\n                                                                    </td>\n                                                                    <!-- /standard article heading text -->\n                                                                </tr>\n                                                            </table>\n                                                            <!-- standard article paragraph text -->\n                                                            <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <td>\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Zurmo CRM empowers Sales and Marketing Professionals to work together throughout the entire sales and marketing processes. Users are provided with everything they need in order to find, nurture, qualify, and convert Leads into Contacts associated with Accounts. Meetings, Tasks, Notes, and Attachments - everything required to stay on track - are all conveniently located in one place. Opportunities are managed seamlessly from the negotiation stage to close/win.</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <!-- /standard article paragraph text -->\n                                                        </td>\n                                                        <!-- /standard article textarea -->\n                                                        <!-- standard article main image: hidden in mobile version - must be 280px width (height can be variable) -->\n                                                        <td class=\"hide\">\n                                                            <img style=\"margin-bottom:1em;\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/demo1.jpg\" width=\"260\" height=\"260\" border=\"0\" alt=\"\" />\n                                                        </td>\n                                                        <!-- /standard article main image -->\n                                                    </tr>\n                                                </table>\n                                                <!-- /standard article (left text) -->\n\n                                                <!-- standard article (right text) -->\n                                                <table width=\"560\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\" class=\"innertable\">\n                                                    <tr valign=\"top\">\n                                                        <!-- standard article main image: hidden in mobile version - must be 280px width (height can be variable) -->\n                                                        <td class=\"hide\">\n                                                            <img style=\"margin-bottom:1em;\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/demo2.jpg\" width=\"260\" height=\"260\" border=\"0\" alt=\"\" />\n                                                        </td>\n                                                        <!-- /standard article main image -->\n                                                        <!-- standard article textarea -->\n                                                        <td>\n                                                            <table width=\"270\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <!-- standard article heading text -->\n                                                                    <td>\n                                                                        <h1 style=\"color:#666666;\"><a style=\"color:#114eb1;\" href=\"#\" target=\"_blank\">User Friendly</a></h1>\n                                                                    </td>\n                                                                    <!-- /standard article heading text -->\n                                                                </tr>\n                                                            </table>\n                                                            <!-- standard article paragraph text -->\n                                                            <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                                <tr valign=\"top\">\n                                                                    <td>\n                                                                        <p style=\"margin-top:0; margin-bottom:0;\">Every effort has been made to design Zurmo for the user. Zurmo is the first CRM solution with gamification at its core. Game concepts like points, leveling, badges, and leaderboards keep users engaged - and somewhat addicted to following CRM best practices.</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <!-- /standard article paragraph text -->\n                                                        </td>\n                                                        <!-- /standard article textarea -->\n                                                    </tr>\n                                                </table>\n                                                <!-- /standard article (right text) -->\n\n                                            </td>\n                                        </tr>\n                                        <!-- /CONTENT -->\n\n                                        <!-- FOOTER -->\n                                        <tr>\n                                            <td>\n                                                <table bgcolor=\"#cccccc\" text=\"#ffffff\" width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <td>\n                                                            <table align=\"left\" bgcolor=\"#cccccc\" text=\"#333333\" width=\"280\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\" class=\"footer-left\">\n                                                                <tr>\n                                                                    <td style=\"color:#333333;\">\n                                                                             <p> [[UNSUBSCRIBE^URL]] <br/> [[MANAGE^SUBSCRIPTIONS^URL]]</p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                            <table align=\"right\" bgcolor=\"#cccccc\" text=\"#333333\" width=\"280\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\" class=\"footer-right\">\n                                                                <tr>\n                                                                    <td style=\"color:#333333;\">\n                                                                        <p>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/facebook.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Facebook\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/googleplus.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Google+\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/linkedin.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"LinkedIn\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/twitter.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"Twitter\" /></a>\n                                                                            <a href=\"#\" target=\"_blank\"><img style=\"margin-left:1em;\" align=\"right\" src=\"http://localhost/zurmo/app/themes/default/images/demo/email-template-demo-one/youtube.gif\" width=\"32\" height=\"32\" border=\"0\" alt=\"YouTube\" /></a>\n                                                                        </p>\n                                                                    </td>\n                                                                </tr>\n                                                            </table>\n                                                        </td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /FOOTER -->\n\n                                        <!-- SUBFOOTER -->\n                                        <tr>\n                                            <td>\n                                                <table width=\"100%\" cellpadding=\"10\" cellspacing=\"0\" border=\"0\">\n                                                    <tr>\n                                                        <td valign=\"top\" style=\"font-size:11px;\">\n                                                            &copy;[[CURRENT^YEAR]] <a href=\"[[BASE^URL]]\">[[APPLICATION^NAME]]</a>. All rights reserved. This email was sent to [[PRIMARY^EMAIL]].\n                                                        </td>\n                                                    </tr>\n                                                </table>\n                                            </td>\n                                        </tr>\n                                        <!-- /SUBFOOTER -->\n\n                                    </table>\n                                </td>\n                            </tr>\n                        </table>\n                        <!-- End of wrapper table -->\n                    </div>\n\n                </body>\n                </html>','Our goal with Zurmo is to provide an easy-to-use, easy-to-customize CRM application that can be adapted to any business use case. We have taken special care to think through many different use cases and have designed a system that we believe provides a high degree of flexibility and a wide range of out-of-the-box use cases. Zurmo is capable of supporting your complex business processes, yet very simple to use.',NULL,NULL,84),(13,1,0,2,'Contact','Introducing a New Application','Lets explore the app','en','<html><head></head><body><p>Zurmo\'s source code is hosted on bitbucket while we use <img src=\"http://www.selenic.com/hg-logo/droplets-50.png\" alt=\"mercurial\" /> for version control.</body></html>','Zurmo\'s source code is hosted on bitbucket while we use mercurial for version control.',NULL,NULL,85);
/*!40000 ALTER TABLE `emailtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailtemplate_read`
--

DROP TABLE IF EXISTS `emailtemplate_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailtemplate_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `emailtemplate_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailtemplate_read`
--

LOCK TABLES `emailtemplate_read` WRITE;
/*!40000 ALTER TABLE `emailtemplate_read` DISABLE KEYS */;
INSERT INTO `emailtemplate_read` VALUES (1,1,'G2',1),(2,2,'G2',1),(3,3,'G2',1),(4,4,'G2',1),(5,5,'G2',1),(6,6,'G2',1),(7,79,'R1',1),(8,79,'G2',1),(9,80,'R1',1),(10,80,'G2',1),(11,81,'R1',1),(12,81,'G2',1),(13,82,'R1',1),(14,82,'G2',1),(15,83,'G2',1),(16,84,'R1',1),(17,84,'G2',1),(18,85,'G2',1);
/*!40000 ALTER TABLE `emailtemplate_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exportfilemodel`
--

DROP TABLE IF EXISTS `exportfilemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exportfilemodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filemodel_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exportfilemodel`
--

LOCK TABLES `exportfilemodel` WRITE;
/*!40000 ALTER TABLE `exportfilemodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `exportfilemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exportitem`
--

DROP TABLE IF EXISTS `exportitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exportitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iscompleted` tinyint(1) unsigned DEFAULT NULL,
  `exportfiletype` text COLLATE utf8_unicode_ci,
  `exportfilename` text COLLATE utf8_unicode_ci,
  `modelclassname` text COLLATE utf8_unicode_ci,
  `processoffset` int(11) DEFAULT NULL,
  `serializeddata` longtext COLLATE utf8_unicode_ci,
  `isjobrunning` tinyint(1) unsigned DEFAULT NULL,
  `cancelexport` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `exportfilemodel_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exportitem`
--

LOCK TABLES `exportitem` WRITE;
/*!40000 ALTER TABLE `exportitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `exportitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exportitem_read`
--

DROP TABLE IF EXISTS `exportitem_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exportitem_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `exportitem_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exportitem_read`
--

LOCK TABLES `exportitem_read` WRITE;
/*!40000 ALTER TABLE `exportitem_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `exportitem_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filecontent`
--

DROP TABLE IF EXISTS `filecontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filecontent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filecontent`
--

LOCK TABLES `filecontent` WRITE;
/*!40000 ALTER TABLE `filecontent` DISABLE KEYS */;
INSERT INTO `filecontent` VALUES (58,'%PDF-1.5\r\n%����\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(en-US) /StructTreeRoot 14 0 R/MarkInfo<</Marked true>>>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 3/Kids[ 3 0 R 7 0 R 9 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 2364>>\r\nstream\r\nx��Y�n�F|���, �y	G��b�ka_�}h�=�^�l�����ӼL[/0,[���:Uu�؇���?|���/,��\'��/����7����){8�ބ,���#D	;�!O2�P���L_�q{�������;Y3���f��t�ze����c�eU�F���%S��U%Ϣf}�a��FI���_���ۛ{�����A���� �B׵.E\'��V�0�X�-g��`]���L�-	ä��,Yc�g���wK����lU���]+;f���������m�d����N��������v����������O�yq\n�8�>����AW׈V�HS���wC�WC����V2#\Z#zv�ċ��2�ܱZ*Ğ�J)�<!�HR�:Qsv���K�R魈�E�!US��ࡧ��*�vW�����=��E��){q��=�*�~��F�Ҫ~k�$�d�U���YS�x�\\\0���I\n7\'�^��c\0��}pWU�\n{�z�>��T��M㈇Ӟ�{��wm�^�C����=��W\0<K��*YY$�y��\"���:��ՃzT.��PxG�h�KO�c����yB$o&�+\0\\�Y)��pY�ipqK���5�\0�b#��q�0�4�}R��5�e�jHi�}�@dT���~k�����AmL�U�rk�,���/��q�U���ϋ.ԣ�l������; 	z�g��3	�{:+��m�{<���q���UE�P�!�\'-t��\n�(k�D���NQ�{w��l(��%<���b�C��h�R�\Z�D+ы��/�`�*pRI�b�t\"\n0 �E�\'P�����a9����}���+�$��6����|e@���E�����}��ѵjΔ&\0\0)\ZBξZ0��U�\Z��ߊ\"��Q?�|���\ZJ5,a,>;.�|��7\'%�՝��u���f�r�aƳi���\Z���\'�7�~j%H�!e	$Q�x�����\0F`�ȖIr��{��o���I��vF��B\Z�A���z�\ZpZ-����&s�S�6Fm�Z��\'z�g��\0��\r�m/�^u���݃��\r���	ʙCr\n/�M�H�p�����d5��b���I�7{O��H��|O��`e�C�������+rO�IJ ��!����e����资%�B����I��C�?Y�qN�|N�B�\rTe@=�yg,�w�~�-G��=����+�/����Fٕ�H��NqE9xC���H��-ҡ��I���\Z���I(�Xfд�mC����0�dVP�����$hD��,�QJd䭳�*Y)K�ఓ��$�!��}���za����s�8���}�&W�>9+��\0�ȴW �F��}#(�U��gѕ�t��E�\Z���M\r��̈́�r��<��!?5�3����S�K6����zF������G���l����7%PKW�Ld�.N�a\0�!�V�Ld���Ǿp��r�G��ik��?qR��f`s\"�B��@���dȟQ�h8��3\\��[�\'��)a$�Ҹ&I�0��h�q��]\'պQ�V�r�o&�And�h4��M���/��<}Oޮ�R��Qʣ�����V8�.�N�*�P5���Su-�����6��b���Ä�>US��:����	�\0Ts��\Z�9�\r��{J����)�ƮA�ә�	J��%�E�RIe�X��f,g.�\"\r%���`T�l��[d�׷��GӶT�����\n02Yj���.�:[�5J���Zl��#���u��ZI�bHѡ�E��q��d6���q���u��Mݕ2+�Y��W�\\_e�:�ٕ�6R��̋���qǎ$LTr�j�P�LX����ˠ�dඬX�y0����5g ����ߩ\n��zS$�$HR�s>�\Zqk��p�#B)G|P���N�sO�����=�õ��[�[$��ҽ-6 ��1^O�_ߙJ��Qy6�%<��g��bĈ8��F���f��D�JC�33hr�<a�vKʣ0�����j⚂�����\"2kr[ԝhx�뢻�h�x�����:�J�\Z��w�8��~�Z:z%�G=)<,����$3�\\�\n\\-�BB��v�|<uy?mٛGȧcN�	����>����X����]���˅�և{꩘&v�ڇ�K�����..j��;o�M߅��\Z���Ѯ6t�R�	�>ۉ��X�ş�&MJ{�C�jW�~�.����_oɮVΓ#N���^֔��4-�c>��T�]�:*�ύ:���v8�sp��s5�J�7�ҹ��\"N���Ia�&�t�/U�|I�3��U��I���=�:���]w��K�G��.�;����=7������٩��d�0*�b\'v��u�HF+um���ޣ��_w�u�\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/ABCDEE+Courier#20New/Encoding/WinAnsiEncoding/FontDescriptor 6 0 R/FirstChar 32/LastChar 122/Widths 69 0 R>>\r\nendobj\r\n6 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Courier#20New/Flags 32/ItalicAngle 0/Ascent 833/Descent -188/CapHeight 613/AvgWidth 600/MaxWidth 659/FontWeight 400/XHeight 250/StemV 60/FontBBox[ -21 -188 638 613] /FontFile2 70 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 8 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 1>>\r\nendobj\r\n8 0 obj\r\n<</Filter/FlateDecode/Length 2495>>\r\nstream\r\nx��Y]���}��Џ�`���e!;��7	Yvؗ�m��nPK������{�ڲ���@�=RU��ԩsJ��w��/�>|�,ֿ�*~�� ~{����{(� ݊����P��/�(XG�؅a��œ��[�#�������O��=�v\nq�k��]bͿ<e?>|WV(\'2}��Y���{Y�Ψf����)QH�+#2\'T�⻭�j\Z%r��v4�e��u��?>���&�lM�u �������YgZ���ʄ,W�T�jZ�D�Y]��ʈF�X�j&�v�v]��Vx�FK���3�Px�F�@��,����B�@<8#J}҅�T�,�Z�H�$���6_���`�M��ހ_�8�O$�>1�G8��Ϗ���K���D��kz�,������j���J�t[]�W�繲F�l�/�@�Y8���*�M*������>�sp�n�`]����(���G��l��JF\'�Ⱐ\\58��\rėR��p�4�\nl]3�4��MrIʠy|FI,�@�t�n�I�y�B�*z\'�,��\r.-PWcpH\"l�n�d	≳��d	 �� X�~���H|�L\"���T�\r��EY��\Z��,��H�����.��Z�é�Vɒ(���D��ǂ�a��i�tផ;j\0Ҩ\\W`�V��0B�\n��vAX�iQ�#.!�~��Luݸ���t��\'Lक`X�8�B �6� W�l�a�\"8����l���L��V�@���3I�� ��4��(\'�NS��\nѹ�+�\Zo��u�iq�w쉳cX��-a�����q�mv�eԵ���M�(Z����C�*�9�աVU����.�-���5�;hD]�,K�G�w��Ù6���g��z��\Z�	8]���*8�u8J���7` IX��/�7�qS��RϥM�N���+.4����I�W�TzE0�Y\n�s`%D�Ő3)�uŗ�g}F���x��W��9A�)�+�.�\nH�?�P��w��?��1��VD�\"��Q����9:�;r֯�}�BF�(^�(��$���>ÙHJ<JVx����L�5\ZzWVe`�\Z�BX�5/���=k���T:���fw�����EE���G�-+�����}R^��\0���HŖ\Z���U6�έ̴�7��Xt������\0��1$;t�F�8�-���J�(��|�·PЙeğ�\r)�#����K�E��Ң~Pn,8^����ڳ��%5XC�!N���\n�*��2�8���c�h	$҉�ܬ��=��VƮ\'��i�Y(B׾/9���5����aW�B��F�c��3\\͹*���qui�`=��;�h�3�jǍ�A�c��Zi�.�\r���2����3�H�j���O�CwEڲ&���yvF�P��BAL`+�2#/��+v�l����.<�+j銊	�������rH�4�\"D��Bfh:�P�h}��͘���{�$�[a��}w�?K��c�V\0\Z��h��-rq6.F�w)�m�	#������A�׶��g|����\"}�J��d��Ep7�#��0R\\j`�U��gNb���]#6Pzx^!�G/5� ��)�>$��E��f�hIw	��.a�j��A�1@3�(<{=v�j.�r�?R� �o2�g�mxݑ�%\n���I{�>0��Hb�N�x5��!�y�F\'��Ϻ��3��A��Lx�8L�4^�����?c?Hj�O�:��1�����5����m14�Y�.+^��������WeN#&�%:C��;%�\r�@�����<Zuu^ޒ�b:g�FA��D㯭:�(�u%A@�5z�m%l�o�p{!懆@�qW������Y�~�7��=���Ze,�/S�a/�1�f�⤐�\\e8Q��������rnӞ�<�����>���M�p?�c�;���(N6Jv�z�\0\Z\\{#���:Ҩeku�2��b�T�_د^���.�,\\�*���x�3.\'[����Q���ayIn�49� �`T��az�p��J�F���䄐|��FQ��D�ᓄ�z�&ֈ�S]Ȓ:�,��\"�g��.���dq&q������&ړ�ꓕ\rYg|�x�ƭ[��q�t»E�0ؾ7+ye¼��:��0��������D+`���Cq��l����!@�X��fS�h�?�u�@B�!��3�A�4��ٙf���\'o ~��\Z�e�w�;�5hQr�ur��:��-\Zo7�4Rw��+�Z�%ueiT�ˮ@|�NB��֤��b�ɺA���8���ki�q�&�ao!=Q���M4���jZ���m̤��L�A�\'��5 ��K�g�ũr�*\"Hn:�>ޢ����a��w4�^CX�����tP�%���=��C��a��6����MN /Ć�\'��ZW�I°���aH��oá AϮ\0R�V���m�SÖF量�4��C�1�.MAgך,i\\�������/�P�5Z�������h����mm�\"��ɸ߃Β���_��W��� }�٢�x!�A�%p�&���`;���_�-��\r\nendstream\r\nendobj\r\n9 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R/F2 11 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 10 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 2>>\r\nendobj\r\n10 0 obj\r\n<</Filter/FlateDecode/Length 613>>\r\nstream\r\nx����j1��\r~��t!(��w\r!�ZZHȅ�B/i�X�F���h�$v⍋�`Y�s�Gpzgg�7����8?���K�X�G�?JX�����Q	Jh*QT54e)��f<*�)���\'��,�G��%ޢڏQP�\'Ku?�C����B�4�\"��ĀXU��l_�\Z�W��S��օ�筌)�AMNy4��9��D9#���`�۶�(7���r�8�N�4�����,)���n��+g�>����\n*�yr|�q޶�y%bG*y�G�hE�(gC��$�a������y2�\'QxI�<�#�)J�]�$=�6��m��@��Οf��\\�ݓ�)8H!���\r�>��{�i�RO��Q����9��Q/ZQ���\\�\\���1���s����Ԩ�Иբ��؎��{�\\s�e�{�R��c�����?���l_�8�<n�����pwl��T��m�yf�fe6�J�\r�A��9�RǓ�9y�Я����D6�B�`��x��+�Xҫ�Z\"� W=C4��v�w��:�Qzb _z�U�5z>�}���fG�U!���fn˲y�q ��3R��Ȟ@�6w^�-�5fȞ�i�{�=�:�{�+�G��=��y��\'���o\r\nendstream\r\nendobj\r\n11 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F2/BaseFont/ABCDEE+Calibri/Encoding/WinAnsiEncoding/FontDescriptor 12 0 R/FirstChar 32/LastChar 32/Widths 71 0 R>>\r\nendobj\r\n12 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Calibri/Flags 32/ItalicAngle 0/Ascent 750/Descent -250/CapHeight 750/AvgWidth 503/MaxWidth 1690/FontWeight 400/XHeight 250/StemV 50/FontBBox[ -476 -250 1214 750] /FontFile2 72 0 R>>\r\nendobj\r\n13 0 obj\r\n<</Author(Jason Green)/Creator(��\0M\0i\0c\0r\0o\0s\0o\0f\0t\0�\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)/CreationDate(D:20110721111428) /ModDate(D:20110721111428) /Producer(��\0M\0i\0c\0r\0o\0s\0o\0f\0t\0�\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)>>\r\nendobj\r\n19 0 obj\r\n<</Type/ObjStm/N 54/First 399/Filter/FlateDecode/Length 593>>\r\nstream\r\nx�͖MjA���A7�V駪��3x����*�q��>�ZC�¸�4�V��\'��n(��RYI�\nS�u!^��\"S�l�E�X�e�Ґ5F�Q\0~ͱB\n�R�}!�J�d��0���WH*�@��+$�*:�eU\'�(\r�ƕT��\0RkȜ::h�n�\Z���cj̅Ax�Bƈ9v�ư�F����\"��#V\'�X����\'M1(l�=�B4+�9x<����;�B��.Z�; X���\n���a$��\r|-p\Z��a���rE+=,���}��D���X�����@�sI�Kd.ѹ���K�\\�撞�.co�_N�	�9a1\'<�ɜp�6s���$|�`��k�LR��Kt.����:����\'��؛�s�aNX�	�9a2\'\\�͜�$|.	�/�>�\Z>���D>��Erܞ�a�Xǉ=p�A\"h��.u-��e(�	�E�\"A��HP$(\r�E�\\�\\�\\�\\�\\�\\�ܢܢ�b�łbA��XP,(�Ń�A�(�(���D��_��x~}{:?�n����y9|�~��8T�簿�Q�������n{\'����~�Ƌ3N ��8������~�\'\Z�}�\Z�}�T���\"3YB\r\nendstream\r\nendobj\r\n69 0 obj\r\n[ 600 0 0 0 0 0 0 0 0 0 0 0 600 0 600 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 600 0 600 600 600 600 0 600 600 0 0 600 600 600 600 600 600 600 600 600 0 600 0 0 0 0 0 0 0 0 0 0 600 600 600 600 600 600 600 600 600 600 0 600 600 600 600 600 600 600 600 600 600 600 600 600 600 600] \r\nendobj\r\n70 0 obj\r\n<</Filter/FlateDecode/Length 28256/Length1 52092>>\r\nstream\r\nx��{	xTŶ�Z���NB�!!#��N\'��$cC:d`�@�\0	2$���� �h@��#gE�P@�Y�{A��x$��U��x�w�}�{���sW�_U�jW�Zkժ�!�\r` g��!�¾��ѓ��:=2������&zh\Z�\Z=f�ES�\\E��uD����-����G0�ر��*�\Z�eu� ��>u~�¤��ٿ&b�����A�������p��z[�<\"�wD�f��.$/E`>�O���.����>\"�u�h��Y�k�8�y)���,0��~�!�͚���wi{�B5rԼSk��}��h�`ԇϯ�laDvT&�߀�?�̟�D�7��m �۴pA�����=d��K�/ܳe��(�\0ޯ\'�+��IΙ���Ӧ�����52�G����zc�ɋj��/�a�6�\r%���δ��=��=4H�.`�\\)���1y=��cwT���VC3��h�Z�Fa0]�zE�J�a����-��Z�����b]�e�� ��r��I����?9�>���]|���/в����t�m�.}�1|�{��N�s�OV\ZG��^��ʹ��⍭T�R��,���&ZG���t*�����O��#����7����2���I{!M\'�G��mZߤ[�b�G�1�t��~�}�H�1��i4F:���ִ+��hm��P:�#!�U��(��Zx7`d��������������S����,�/�8�y#�C��X�r�\'e���-��X�����g#$�\n͇�\\QA)��@�^:���X��Jh�5� �)�.�cN?�������!ho,�l�fޣ¯7�5�̗\r�u�<���<M�eƔ��c���ֿ0�zE��ތ�W(Z���(z�4Z��{��8�`I��EI�B�r�p<��$\'�z��Կ`�I�6�H�BWw�zaW[�.�[���eh��[7�?(��G�l+ �C������ I!5b����f�A1�ς9�v�M�l�MO�7���4צ�VM-k���ݹ4\0z~��\n��G�ڮ� �>)��V}^Ѯ�6J��K�������i!v����_~��w@�(J&��n6Q@?/+��,���v�t���ڥUІܣ�����7 �T�`\'?Z��Xm\r�ql�RKkh�0�S\n���r	dr��\rKh	wA����ˑ��o%7�i�Kɇ1�2Z�J�]B]�.E�H�*�rH�SrTQ&N(���8xw�]�]	�\Z�<��H�Qwr��[@2�<�/�:�Q)���0�C����Z�u3ޖ��D���]��o����û�,��Cyi�4�ހR�H=���_[CM�:|�^�D�����������I�5Va�u�(�D�����z�^�-��*�¾_���?���I�[*��<��ܸ�Ԙr����RXd\'8��\"^�՜�/�KtF`S�\'|���*��4D�S��+��8�3�N��R��g���²��߫B,4���<�G����p5|/]u��0��9���{K>�H�y����z݋��Id�n�����{��~�����=o+�x �&u��b�G�k��]��}��Ur�`�rh}�2_׾�6^h����#%)H\nk�M{�ۧCH?���`���6��{�|\'��l7�\"�7p����e�g�*�G��1Z��3�GW�_h\"	H$������������������3a�W�ރ5�E��em�o�4�����O�)��=b*�ľ)$�s���cė��{1���7�Ay/��id�×o�Z�{x����ď�y\"ҳH{�>rN��Z��\"�lW�@<��~���W�7:uF!nB���k�k�q�xn{�3xk��e��f~�������E%�=�ί�K��~~��t���{���<3�J����q>MU��V�2�9��;�˱t\Z�X���8z���HS�rxv&b�\\�b!�,u������1j\ZcsQ��}��Iǝ4Lo��\Z�;F��(�v��h�Y���f����2�ƐE�cv�\r��\r���o���Q\"��&S<�3�W�K0���NJ����Ab*u�ɎS2Ma�B�\03ȡ��%1�\\�,�)x`*�Gn`��J���=�Ua7�\0�(C�	\'T�y���q��{Q6���>�����Lb?����?�$N�<`N�����s��z\0R>�Ha1��O�4�,���A�8�\r�����X<N�8L�p\Z\0A����đ�?|K�p��Q��s p�±T��sy�Ra\r��!�W�&�h(p��IT�I��\"`5\r��p�x��T�Ө8�F��h�4\n8K�l��?�948W�<\Z���v�O\n�^�\"_��)bd��X<J�ip	M.Ux)Mҏ�����S\r�\n�������{�4�2��\Z��3�+h&�\Z�+i��	n��9�U4x=�cZM�7�|�������\\�p--\0�D���%��T������)�����c.ީ�.���.�#�K���nT�����џq�O���×�r���5��(��V�k�w���u��>L��w���(�>F7�o�u#�q�ۨ��-�Nk�AZ�W�@7�o�^��Sᓴ^��R�4�����V`� b�m��t�.ϋ���\r7\0����{�{��h���h#�y�<@�_���^�������-�W�J�F��/��$� =\0|��	|	����o+|��_�w�#�C\nߣG��i��N8����~D���1=�D��v�y��Gh�(�~JO���[[�����/�i}?���_)����}�\r�~��8�~܋o�g��ӳ��\n�����#��D��?�s�3tJ�iz�\0���~���E/�����靈\n��U`���\"]��1=R����/cz�?b�1������7�������b��K���3�����iL_�GL���Oc���Q1���a%u�����u�[ɠ~י��!�#s�J}*3�`mQ�Z��!:]��\Z�f���N��w��y��^���?�\n�пz���\Z�U�8X��I#OF�L���r�v���#�g/�����t��!C�.\ZF#�G�\Z]1f�ʪ�O����o=����ZV\n����ۧw����u����y�2�dx��ܩ.�#��99)1!>�Sl��j1w��a\n3\Z4��+q�V;�����<8[��5`ԜǨ:�*��O�Y��9/�@���h�h������>g��<X�v6����(�T�rO��0U^���(�\\x�Y�0���jgI�t鬺��bWY�.������(�P\nƻ�s�\0V_ҷ^�)\ZB���%�Dw�� ����L���,)Nv���}A.��$���٫�P��&VW�8g���\Zg�o_��FM��v��V3�2��T�9�^�[���X¹*�U�>�5Y�+I��պ�������緺$VUa�+�K��J1�Z(�l���UU�A^�)�r%rU���.���9�`�{�{Vݜj�&�.H�.w5$%�p�&�8�**ݮ`A�����s},Ս�|Gb��xaK���bmUl}Gs��!�����6UR�e�lT�fYJ��:�:!I�k�-azo�����T1�\nN�Ef#���,}%_�4�[�κ�p���BNM��n9M�(������Vz���,�\"�E�)d���پ��b�{�ŉ�r趦�o.��rI�i�T�+FV�֝4%���ު���-��Z:��-+�Z�_�vÓw���)h���-q1%��9�4Oom/�.9��YRW�mY������m�R0��RK��H�T+�rB{gY��4��\'L9���p�Rq�Y\Z�TnŪH��_|�Q�A���s�����^X�wA��:�i��e���\"/h+E��+u;K��j\Z�S�N���I�h���%�mm�w�I����\"fq_x����n�ad}�o=��ɂ0}CEe�`QT=��>\rm�MN�\\��\\Ys�\Z�1<�A�TSrS�h�j5(��OmdR<S�ij�h�YO�.\\��i�\Z�t4\"뫲��V�<*Z�\r�\ns�}���&�@���C����S�[������]��g8��)�\Z�����\Z��z�Ĵ���I��AB�E[��͡M\n�C�:�Y�ׇ�5\r���ԙNu���65\Z�פ\n�������q8��Dm���6A�M��$�1�F�7�������X\r��\r*lj0ǅ8(FjU�X|:��P>Nې��[X�����n�*��NV8B�rպ\\���U.P�PYb�y�Ph����F��ա�Ԇ��\\+�w�C��̇kCT>L���O@^�~6�C�RU�z1����|�V�P��Z���h�O�!C1d*��$gh��L.�	�TO֊���\n�B���H�HH�h鏾��ͯ��G/?f�CW~��y�0���5?Щ�SWP\0T�1��� �3��l�\0�K��X��P�k(y�XӐ�F��T�-�;�6sa,�ɾ���ɠ�͠� ���D�(�F��ޝ����Sy���yg{k�!)�\\x��	5e�f��3!r&��Vs�\\\'����I�g@PF���3T�0��$Hip��a�z��=o��NԺ��.���#@Vo��r�:��P[�r�T圩+��T�th�\r\"���r_sa/�}��&h�&��&�!Bn�\\��z�m�&�L��.H�H.$\',���z��!݌t�Z�5�F�v�^���� y����������5Hբ:Iqq8	mVSR�EhE��nSx���@҄�c�_�}���;&DWN�>!�tBt��F���F�^������Fw�Fgz��\\��(��U8Pa��T�v�M{�br����u��W��׺\ZM�V��.n��I�S����_+�Ӛ���1`\ZÏS8{��W�\'�����g�w	�w�;�cM6������i2��L�0�)�Q?\Z�ʯ��0���\r�l���M��R0F+e�rYp�T*���2��ȑ8S����QY���`/oYc�>*��[�(������*Ԃ�Y���K֪dy}m\"fߪ��CyU�|����7�TEqK\nl�}J��C�=�$xϯ@{�βѕ���U�<Y��UeМ��6�ޢgIq��%��ʦ��w�(ɏ\\Q\\u�9�/n\"��T?r�~��M��K�K�Yk��/�~��]%��.W[���O��̼��L�gf�����u^���R}\\�G��Oʿ�\'�w���������&\Zʇ닮��\n���������+�8�MTćC_��)Sgɼfz#vO/����C������y�����(����\"0��ah`h����jǠ��mLwc�t�Y5�3X�,K�5h��4o�̓�\\��\\��\\���\\���&\ZX����w��H8pu��j`�e�\0���\\	W\'�2ȿy��U�>��A�)�0�P6a�ɦ��0Ԕpu?W�.~$�d��H	%���S[*��?����\'�N�����]�$�D�T������|s \Z�ؼ�V�h���j1)��.!9�b	�o/-��\\{�P�o�^j%W���Kv\\r�Z��T����Q�_�n�d�)��ؤ	�g��e{K����ѹ\"D�O�\n+xXkN��ͧ[�.���(��!Ҙ���t]J���Gp]t?�$��Yz���^F�s�_��w���	��5Gp���V^I����xz#f鑨�v��[��6��ӻ�?�>�+������	z�Np��Z�����MԑNi����n�|�5��i	]	Vнt��D�W�Q���tp������ƍnz_G����7�����܅W�|�H�Z�C�)�*��TN+�j�t.���6����[��)����et%�S�>}H�&\"E��m�d��j���^h�:�&��}9����b�Ak>��@����J���F��A�N�-zc��j���	��W��|;?ȏ�|\\���]cx�p���ߣ?�y��39q������[�/�}\\����il�����]�/�_��\'7e�o�kKh��ԗӵ��^Ļ�\r���\n-i�6���nţy	���\'�Y��~��<� i^��a���-�Z\ZZN���V=�?�������i!���ؓ��:F��i���:�˰�\r���;����q����^{Őh��2�e~ˆ�z}|Kå+�z ��7��*��ڼ��ev�{����)ܕ��X��j��x!/�+�*h�Q�ɻ�0����1Lt���b�X)n;�qX�H�o�Eڕ�m�N�-�k���3t53T.7\\aĕ,,�������4���|KNKq�ܖ5-�[�|�G�{�/p�\n�h&d\\��_O7�f��c��S�����?A\ZGp$v(�A�a�|�L3�f��o����x?�¯�;�	���s\'����`���5�#������/|���<�;�*�����\rX�]�\'�a�d�fmXnxɨ��4n40�l�6�vq(F�� �w������<ڂ�M�V�#��L�ᇅ��c6;���E�臻�nx�|�\r��\ns�X��W�1��\"[g�hh1����zQM�:#�Ӗj�1Y�h��0�����~�h��\n���v��\"X([�n��JF�v�8_D�\r_���`ګ<�Op�������ɍ��O ��!<�	��ކ��Z1T|�<���c��i�����.��/�rޤu��y�ч��)U,���1�3��Nعg`�41�Z��J�D���D_\r?�Ok��|����uq���ڳg��>{���T�g�^���4i��p��>���H.���MF��8�j�u�8�W�y4�7h�����F�t�V��-�\r�Zwhl�IQX�F��,�\r�7�$\n�e8b\\)�ڻ�)�Jw�L6vl����v#���^\ZLqO�]�t},m�\r���܁]�����$�9Mw�\"=�G��\'���eXcXeXb�\ng�D���V����i�\0έ��\"hsb�l�])��4Qi��i,�i5���-B��3=N�8�ʠ�Ixo��\'ԕt5��jZ�p\'=Do���f|�� ^K�l��>�^�<�n4,����1�����{k�w1[&%#���.�������#�ob�� ��a�xX�t`�KC��Oe\Z�Si}Xx#w�	�� \ZE�QxJ�DRD��=Ŕh\Zqe�w��X����0K3>���~Iݺ��.k:\0�t֩�;0�r\Z����량όF�A\Z0��\"J��#��1��0�Ӂ�hJ��{�2�#؟�T8��Cp.��pJ�Z~�x��1˱cTPp�r���>���Qs�z24O~�����:�j\n����%���x�-^��\\�;gz����,	�[��;���⡄�Ԝw�YS���?+[��B��osEP�@�s��������O���%������lo�X�1�=�&�������-�\'{�\Z�4��N�� �?��Kʏ�l���S�შĎ�8�������~�bƤ�.�K#z�.	�c/�UY��O�=�}l}��ze�\rI��W�]n+���4�W��k��KYY�\";��(�E���-�Dst�5:�b�GZm�L�������df��Y�M��º��0M�#Dvb�b�ō������6kjg�\Z� �\n�z������G�d{jrR�/++%9)699�f����XH��vGF��S������l�\')Ɠ�(�v������,Or�Q@V6\';��&��lHnd�S]�ǚ����d����FX�}���L�֓V�j���ܒy	�WI[-�\\���|\n����Oír\'*��[���9�e��s���H ���?�����E���������p��/��a��֥,ݽ;�����ӠinM����EIIJJiyQb!��*s~��)T�II�-�}���W����%$�b�o�cb��<�V��bj��/��G�!�	\\�˹T�h��:ō��;-nv���ڸ�	;�#{u��uh�О�_�?\'~V���w�Fv�fv&��rc��+��N1G�f�r����{E�1��{{i���1U�<����s7G��n�������8p���N �kn�U\n\n,\'Zvq�֍߇e�1�ʂQ�˂i#����]�5�v�ߑ]��ɸ���	q�[�*���`�P��:E�@r����u��٫5�������������} Uc�Ʊ�o����̖��[;�⼣ξx��I7��j�[G?i�oI	��U^G��ɥ���i9>ir�8k|���[o��*�����Ű{�w�p�yc�\r�cn�]�i�c���uSF]溬Q]8Ù��%�qwƓ.Qd���=��IIIv�Ǜ���3�hl7Ys̎��8{J�ɛ!RL\"�c6���4sR�/%��������܇M��f�P���H�#���ݛO÷ϯt�Zty��3+�SGs���9�l�g�wI�L7���bm\"̕�����N�N7{s8���!���^oVV�5��D��ML��m���x$i��s���׳\',$��q��>Hm�s��ȴ_�j����l�ns�&&�\rL[;��͊�}P�{�a�_����r3�ퟴax��r��J�#��g[ i�cA��0�\Z��k�٣R;;��n{g-\"�f�9�@��9� l�@d�M����ؓz�Hݼ�����lʲd�,��c�v4�?I�\'ʝ�I�\'O:����D�)�c��\';�E�B\\�\"�<bK�[G#~�0F�{<9�m�ٍ��q��i��brm\'m?�4[bϡB�;��G;%��e��@�N0�~�:�s�-\'�rz�!{A�N�U������\r7����&��١�JV����]���8<F\\/�~�FZd�\"�Z��4?��	�!)A�8T,k�y.b����-e�U��\'�J�a�ŰR�10����^���JN�OM�\'w�6wut]�=zس��ؓ�l���V�=��LK������}�nObJO�%�*�\"��#=;�C>��ܧ���}iinb�%�C��dQ��%�-u�GY�&�\n�z��%1��&���)aA���=��pu*@��-~�}:�\n�,�p���j�^���ةT��fsT��g���e\Z�3#:��M\0̅\r�E�\\���/qO��ۛkh�\\DE{Cw�$��+X�l���v�˞��S,��_�}`U��93�_\'sIf�I&�4IӤMڤmڔf�P�\"B���*�BU���k]����,*��\n����dw�_��#��(�?��J��Iz����rfΙ�t�}��}��	0M%5)o�i^��9)G�b-�ܘoS�y�u��(��3Zb���s��<VV^*�Ʋ�x�d`&��dj��l0�C��(Ԅ��?��c�\"�h�fM���|ei_Y�\"J�-�Z��-�[��^b��G�d��K\n�� ۈa\'f	�x�[cq�s��y$g$$,���U �6anѤz�&��\Z�&!3��G���&��]#��/-8��@@e��9������m����ڡ�H}�V��ED��H�rKߛ�q>P�$���ת���|nA�\Z��g�G�uߙ$E5��p���i��u�s���H�$�R��Ti���������5kS�$��rb�7I�bQX�;Ol��8\\�B�c��,;�	AR�bE	x���4#�(zN���W��8��奰@�� �{�h4`��h� %��9�zL,u$l,��?D��%��- mi���h�}T��/�G�<j�����Ķډluzn2X�d�;����%\0^rgW-�^D����n�F7�=C���\r����P��p�����AJs6Q�x����s�|{��7�����IXI\n��!xt?/�����#�1�\n&d^����\r�)p\n��B ����t�I�v�Ap�~?�Zg��E2�\"	�(c�ӌ�\"��B���\0���P�+%T`1פ�jjj�	�V�R\Z�A��=\\����K<�GY��X�����u��1\"��b�oUo�݊��/z�>H���\0>��EK���*f_(,I>��\rC<� ��L=AraQ��ԅ	�٢a�C8��x}>o}�/���P�̎,�l��h#J$��(t�=�<r r$r��*�W��!���{v5��!\r\"��)N�OjX�����f�d4���r�]����[���D�o�M�XOs�HJ]ŮN�q*�h�a�N��kHsp����;(�Ңh+Ɵ�:�w�ء���y���[�5h�\r�A�K\n/RkT�z��k��\'����Y+�P�+���l��H+�τ2�3l���jnFZ����FQ��h�:�:=\Z�CU2[����bC��2!������ސI��E�\"�z\r��-��u�Xd�e><�)�,���2i�=,�&�L,\n��ee\0���a���Q$�b�f�	\Z����L�\0WB��x[|v|a|y�p\\wW����3�lf!��9�h�d���+���I�b<C�q��M%�l�B��;�b�Y)vh`�s�u�h�<9������v�j,(�ٕaD5Ă�Uk�B�c���> ����T�иN�\ZmB�2���wi\0���@������W�>�<�M}M�t�t�9ߥޥ�r�����+�wSn�s:y�k�����Q�*�:�)�S�u��u���h�:-(\\� �h\r��zC��di�Rt���*��%A��3�g	��]T7��ts������Y�Fj=�[�qn�s��`��\\���k�U�J�#�j�0�ǍsN�\'\n3�3�)�!�7��z���d�@��\rf����yQ{��p(����ح\Z�w�4FG�D�B\0P���h�6�z�-ח^}yc掫��K��_y����V�It����S=�H������sNtTl�\'����#\n�{P@�.}�������f\Z�_�Gc���Ց����\'���q~+����\0{�?�a���t$��r�ґ����bu0�ІK\0�}��^����Q����\n��4j�ր;�\\�����[���i_���7P���/��\'v�vh�v8����S����|Vxhz�\\��$*�	�׸5�H���B�Z�8���������P�ݷ����°ҽJ\"�Q�Č��	U�ȩȄ�*\n_����ʈ�2ѡhŮ�;Q�h%T�\ZJ�$p�=y�Zx���}b�h0�1m/�8U�d@N�% \Z0`��	��|A\Z�\n6���������ל7�����В���U8��=Ӣ���_�2nf�~�<�1��/�wh.G6]\Z�^e��ۓw���N?Y���uUz~�)�!c�c+�`B�%�Rwn�y�����#��R����/j��8/6��\'�K�7&Owտ�ܖ�No����j��d i�Gھ�є4��ӓ�ՆV���%b�VFj�s���\r疍�-+�;rK�֪[�K�֔������Z�\\]��.�f�\r�N�J���w�XW�ШI��d<���l0�^�l�������p�!W&�5��+J������q?v|m\"�f<�k�KjCa!�,|@\rT+�N��p*?��IT���tD�T���_�6R�X�Q�c�������C���~�Ёu�5�$�sU�|t.V��*�u>4��P�z�\\\Zu>��:�eCS4ԱN+:CC�EGXi;�k����������G��ta1خ��~�3�,��zя�fLk�ǋ�e�&d�*W}Υ�X��w�|�Kd����4oy���J�.�n��B�����,K��>�_x����W�\'�y�͞PsU�GV_	��o���2�/7�X�|Q�eՋ�I}��zB�L���k���^��v}����Ç�7��Ç*�;P@S=Nj��M�+~��[iC|��|,f����0�w\"D���!�䯈ɺ@e<(U����B\'���D6�*l�UU>\ZWT�XJ�A\\*�.�\nЍ��THaF��&q���,Wp���@W�@�D@�|��P(��NP%d&,J\"�.G�G�{�N����j�1���ň�.�x���m�Ky�n����o8���:%䟺��j�kJ�\n2���<Ҳ�2�L9��J�#�� `M+r��axu�ѷo{df�2�=�aa᫏�s�S���3a�_�\\[���?�*t��v����#��1��X�R1*5�Ӗʧ�8ow��^깧a�ӹ���V��F?9���+�ރo���z����G��ʺy����V��Ui��w��pSS�j1߭��;��-��Y-ԇf�����\r)��`X�0zStytmtST�=�JC���GDQu#���@q��\Z���A��bAu`���ad�ٱ�c}N*��;�JY2��h={��#�u�\\Ydr�j���uU/�l��������[�c-^���cϷ�K>�ƬYo>�Y�,b��å�ۗ��fJJr���]�ط4�/}���zl����8w�sn���8.X��I���*v���6�T��τA[�����CQ��Q�A 3z��m���N?%&�K����.��6q��Y�&�h�\Z���T�3ʪ��n�V��[*<�r:!V���\'����\nO��C>�ߙ��V�%���1��TKx�튨z>	&�b�x�x�濎��Oz	[�(R)��X�kᜁ\n��`cQ�\0a*|I�@XGc�pE����J��!��.ԣh)J��$�5P��s����\n�W�]��}�V���1�]<�r�.gE8 �e6l!��,[,f*[��I~2��?�kx�26��p�����H�{�]е��ā��Z��w[�:y,2�����bc�\'�����9�̨F�߻��WGE>HLXz*�`i\"����Z%�/.��v�V+�\r<c�1����u��.�Ef�GE�l�,�XO;�φ�1SZ���B���:8G��i�:��*2�IY͵���<��m���U�\r�.v�{cb���s��v�>��j�X�_;p7T�U���iۆ�W�U\\m(Ga��%�P( �i/��ɠ.\nɔ���G����r`Jɤ�(c��(NƣY���}���z|�\n�~Y�:sv&��&ϖ�ʛ�]�a� �3��IY��/ԭ����itB}��!�c���T,.3���G28�ȣ�\\�I��`U��a�A�E(y�]����O�Z��O�І*C�����R�Eo�	|�-L�K�\n���\\�+yh؍�K��9`�dX��4W@��x��#o7����9�9��r�ls���{��W�����O&-����s�����o�Sw��������]��ܾ������j�N�x���X��H��5�\0�ò����J�Ű���sFHp����OOB�?lɛ{�ܭa����U*H\0Ro4{e;z��]�\n,~��\rvv!{�%Y!z��Ł�pt \0���(��K8��@��q��	[J�P��7¤9Y6����y�O֗=��_�m����3�|`8����pj�a�v������]�i���y�L������t��:i�o��b`kȉ\"��f���|j�\Z��:��\0b��7G��.z0,0X��۽PW���V�2����{���~i>�{���W/�.�xu=^M��nݳ��^�^u7 震,���*�9C!�)%�N^�>�9\"���,�/�\"α��C�G��󡙑�������ŉ�k�����2tY�[�s�RQ:例ZC=ȯr��֣�ô�.��c@]E�\0�t�Q��G�뒃f[���%��K!���B�\nC{X\n��a!�{���������qG�qljǏ�\Z���Ġ#��1%�����9�\0�i���Wp}�}\0�M�|������Qץ���W����i���^r�<�;?{���Lf]�ؘ+!��>h���K��7�>h��?�vn��&��BmB�����K�\'��xxW�grʍy2��r=od����������d�w�a���IA������|�(=L����\n�i���\'��=}V�<o��d=6m�3d�AE���~6�aU������LĨA�T��`j\\��Se\rQ���?����{�T��Y��;�<���\'�\\���=�Y������5����&�=��d���\n�s5G�c�)�\\�U�U�u�=�=����?����\nb��&2�	���,�Li�g��K�=���j��Z�b�q7���+����8�~?���]z��0[���]\0.B�?V\\f�X�����GP�a��a*z�q����Q�\'�j���\0�n\'�C����J>����A����t�hR)j&Ыz��T�~���S�i4c�x*����C��?A�t��ʕ����_kN�����={�G���n�{�3�0�|���H3�`�R,����[,7WwY�-[b/��L.\"�{(*`LW�jX�Kh��B��*�\"�-+�P>*{��BU%�3\ZL����ġ߽_U�U�5�)�\"�\0�����c�K�q��:��&��U�%8���^hj�N�U�<H�q	�<Q	bJv��g�����C\0U��\"[�8ڷ����q�3�.�#��y��.�KU�������v��7��ipҴ�t-w^�V���/5�D�)�S�Ǳ�X��������7��2ݕѫ*�&榮���H��L=\Z�/�!ڕ���sT�0j�c�\0�X5�\\~$K�oe��7�d�2�7d	��r��M&��e�l$��6�l�&�~��训�;�+�]��Aͮ�������&(�+~|���h�k|H��2wCj��y&b�G�ʝ��bbw���\nCMo���}��UqC��^�t&��䒢c�kk1��F�: S.���E��4����E�W�/�u�ڠ��	K\"�;=��7��c߲e���l�>bϯU��>uL��r��p��Oo�p�V\n�=��?�|��D�0\r��U�2�j�r��?����[�[ ��:b3�!L�u��o�nտ�Gحw.�����,�e]|�M��\'>+�\'��(e*�Zg�V�1@��94��_35x�MT���T2�~i���H���S&��/�!��+�F ��w%�\'�d/�[O���;b�Q-��j��8+��Ўti y�_���9��p�A,֮\Z$��h���G+HЭ�&�lrX�d;�����Hl���vv�!�:h�E�?[\"N���9Kg],	�T����oY<ktb���ղ/�f��q����9h��E�W���}>�P�J�z_D���:\0��MJE@�a�0W�V�U�3Vj�x��b���,NQX�!K�B����:���N8[��(6�F���X�\n�n\Zj@q�Z˝:>���w�p�Z�[=�@���&8�w��&|���Zǻ�.8��aH��ƥ-�_��μ`��\0g�\"/����݉��;A\'�$:�Uv�$�r�Z�q��\r���5k͆^��6�&`.ްb3��S?�؜+}81[qI�$�����i�F��[�`��K��������S}C}g��e��w>x�Û�5u���o.XqA�?cƨ����`��V|�}�U˟{�JI5�{~��|\'�+���y%=�����CPi��=�i3�?�yn���rc\0��F��HJ����{dvVy�w�����5@t�� �]9��<H+Q�4���[����deW�-�qF:l��l�t�5X�i���Z����N_#�ӏ��IC�({7������Q́zΎ�|~\ZN��G�����$�j�i�-��$�@�\n�V_  ���dq1E��Tk\"�J&u�\n^��pli͵�(�@eB�WU�{E�W�+YЪ��I�l4�����P�3Ym~�S�j��N\'�<����0��;�D�t3H�s�8�ͻ��7�����g�a:�5\r��J�8�A��/���#��A�A�S���X�@y�L���j\"���K���\n	�7�D�T�E���G��)��h�A�_\0\rz���C��{j��Cm�����ݬ���#�M��Q�\r`����_��Cp\ZTqtF�#qud���Fϑ3�4^T7^��]3)Uu��V����2>�E]�H�����i׌km��8�o+�f�!e�K��T��k���+N����H˧#-��;��C�Cb�n��x�Э�6��N=1W?�0�C���7H=pA��|�\0PC>d�E�I��\n�z�v���m�&��l\n8��!*D�p���֢��ftp<�(�b��F�<2M;LF��}X�vƔ�W$��3�\'��.*g�Iħ������Qk�tB\'j��yޢ\'�P=�g����o��s��^8�+�+��oiǙZ�-g<}ƽ헴e.R��C�q�WW����Ᾰ�+7�����>���!_�~C�m}� �c݇b�&�!f���(کq�.\'��5\"���YȬ�R�����Ts��\n�|�ǥ�e.\'�v�H��z���m!�m.��X������H�K�C�%�PxZ�)��[A�Y�ۥۯ;�;���z�G=<�������|&88̈́q�\r\n;��K��������������b�y\\)RK�f\'n{a������˙Y4Lh����xisNϚit\rN��jf���v�c�B���B��DAڥ&8Њ0��q�i ��7������w��ivu}�_p�K�бoq:�_����9��|(���B�a���6�\"�U[y�F�� ���J���������{����]�{�w���>62Nޠ��\\M>CꜢj�B�+�7�,z)3���4:�(y#h�&�YN�\"M�%d�)*Õ\Z=��!]X�������g��yg{z5^�fx�[�`���&5���h��˃Ã�rK��J�8h�C,���??	�\\�8NDq%ʫ���jRgd��{f���Bߋ��դK\0>��ë\\��Ar��f]��ꭅ���b�\n�,�����?���q���i$� H���A��T��!��/co���l�S�l�<�S�|�\Zp��gU��e�۫V��?T�T�����pMt�C�,���Ak��ܞ,ax\n��D	��;R�gis�v�*e�d��lE�}������#�&�䮮��f�.i���/�NH�$$R^��X�mA/*.��}g�\nb�e�����(��yw��#C�.gc�H���-���[XLᔍf�yE�{�ٯ�\"5q�G/� ��#w|���E�]�%��+��~�����ݷ�}�8�3�8�C.Ah�)�67������K�u�2z�tJ{��D���x�(F�y5��\r����Ijw} f���Dj�V�\0�F��BYәrr�\\�Ȋ��dן�zw%`�e���`1�p\"�\n�{�a�p#q���l��0���ǌ�ᇖ��	\"�9J��ʰ6\'-0���\r/�ϖ.\"�u��;�f�1٘`Z�_�^�R��p̱Om$�|`ڥnńA��\r��*��\"^(����������ʝlNM�A;�b�3�g����w�_���o5�?�o����cN3\'��\ZC��S�l#1��k���;�*��n����\\����>�������z��5ݛ�*b�`�ZՔv�v���4�tM2�����,�	�!;j��[L��v鯂U��AE��2��5�m>\\�\'}����l���%��*��0*�kѓ��I6_\\29�2�Y<�>�5{,��P��aXɾ��o��yDX2�ch�bB�fNYO���h�Ǡ�3�K��7�j�6!.��6e�:	��*��Ī8��zT�3 �-Y6m_������Ef���#��	8�ġ,�-ؑW�u�X#\n;�,\Z2����fh�]�X9ձ�ٞ��AO��yL,X<s�Ȼ��C�u9�5\"��a��Z�!.�\Znġ;�V!2S�X6)ۚ�}�����k��d�j+��\n�^���)���xp�F2�E����v\nM�LC���\\�3|��s�|��\0ks��E��UI���c\'%���Mn�Q���meq�2ث�}�V��C�3m5�lz�tԤ���v�*��l���2�\\����W+�A���b���N9hV+X���q��˖���E�읚^������?,�\nDJ��]�1��{*q���X�I�j�\\��;^,�|kOb1����f�Q&�E�l�Z\\��w�#���3��N�}uOB!��cګ�����v�ܨ6���� �`��{��9)�Upح��w-&xQ�φ��E�9��s@!�Ť��$ʝ�m�U�$����>fϤR�\'\"�y%(�e���2��@����Y1������\r�,eױ2i��p9qb�R�a��q:�|d:�	7v�T���R����p\0nT0���H�ьF�\r1\Z�h[|�E3dJf�\"���9��?*�7�rud��WeS?4�V��̞����\'�q�*�/�0�GZf,&|�0�M��B���2��� B2��J���~�!�&�ُ���v?�ܲ0C72�?q\\�^܄��4C+ě�6*�X)k�JZ\'���&]t��n%(�*9� �;�6�=�ԭk#���J�/n�T�,�  ��ől\0?ò�24&�M�S�PY�5u�,��+f��&9�&���\Z�B�$����\Z�E�	�L�ț�m&��cj�Iq�{��>���-&���V�&��c2���F���-<q���RwL�\r�!Xu��Є��H��+�s|1�ȅe��5 I��qe}�3⺝|ڹ��Klwnq\0A��޷4qe��̝�B	��!� $�*P�H�GW� 5$��v�V�Vm���֮���V��O�[��m��ؾw���Zۭ�U��V��{&	��������Gs�̝s�=�{�;3�͚��G5�h>�\\Ԅ�����H���dpC���tm_S�W�L�FO���������[cZ�-�����1+5�h7s��-1�Op{�]1�i��=����C�;گ4G��a�xM&����.�-�xH�Gs@v �#�q����;���FIO<D(��<D�$�Ӫ��T�IRKR�I\n�O}3����O唩5���U����ILxm0��ЛC��:�C�C�w�죡φ~J+���U��� Yr����+rt		q�dA���h�]�&�cx\"D�x^�����(�.V���~\n�Z����D��\0��{�=����t)�=\\��3u,K�xyzQR\\��.R�\'	�B�ec��Xz�/�Y�+яЕdd��J��C���.�Ȩ<]Qɬ6c�\0\\�h��%ZM=Wb(��(G�eT��}�D!fŰ1�����E2�ԥAw;\n\n��0S:�npp�q��D����JbF�,[*�Y����e�0CF�ٙ3�s���:�љq���B�1���̸���3��I&���[c�+�R���B���Ƙ�������`�̙s.{��J�8��V��х�ʾ��u%�N�ĩV���Ȣ�ݻZJ㗴��bGӮ�����c4��`�A��#�����\r�:p��o��Qj▕�5Xũ\n��Fq�t�ep�,�M�Lr��2�g�+_W��t(�q_�>SdˬL&��U��T�er�2)/��&�S�*��\Z�Y֘gR�TBR^tRRW�EA�T������8C��(�(�h��\"Sш�����iLA��������1�ey��읂i�%}:,�ee�II��p�a5�vu��	�Wn��;RV��/iu��Ȅ�2�,AW&��ɇ{�\r�Z\rH����Ğ�)����n��X�d�:����=\Zw\"Vy�V�\n�>��U�8A�|�WȤ��v����������p�hGt����*��е-��=�x�7�F{�̔�̇��,h�,��J94S&Be\"$��d+l	������XEd^�KǷ�^��1�K�ҹ�������D%���\0֑�	\0D�5��Q0e�6�&�ư�0�5���id� (LѺ�1,-��	��H(�Ѻ��J�wi�\r{�wo�u��h���B���b(�hq՗ph2�JO9��ٕ�n%*��U���e�\r��n=۝	W��X|q��=8�]�.1.R��v_|0U\r翠�Y�&4�!�=�ʾxqi�F��{,�Jk�\nM0\\�V���F�%��pM��o�W¨2�OC2�Īb�3I�숨jE������P�D���V�5j�zn�\"����Q{�O%H~?9��ʨ�2���&Q���\'3�ɉ���Uɉ�����)�@ٙ��kCmI�1;�`L�4�C�G�d�U�K�,C_<�)G�ײ�|�09Nm�Jk���sR��SS���$��FAz�$\n�/�F3*5�\Z�*�eBe�P����G�����h�Z4�P��9,�I�I��\'��W�y52��)e��]vXvR$��{\n�8�\0�9Gyo�! ��>�0$�>](�_�ſ6!�*b�(�C���p����5���$q��7��1�c���Nek1�bp�2:��7����C�l0�f�\"&�s5���B�\\}+F4F�`�-x����DA��ِ9���YFq���3<�	���K��\Zt�2uN�Z��L�D����\nE�\"��`5\n.���-d�BX����E��ȝt�N���g�u�Kt��Og��U1�3{tE\0B���8�q�8:�C��=D,���/D��%�3�:��}u����ư����4�M�=�O޻��+����u�tq7��5|7}\"��E���\'�۲+n�`;�k6N�+d/��e�A֠tC^\n}V~\"lk�񈐈w\"k\"k����E��T���ё�{cVh��\r�.���丆x���A�	��\r�+ܜԔ22�HZhڦ߶߶߶߶߶߶߶߶߶����H����E�V��:4��sL;��}��Z�\"�e�>\\�4{� f{�f6���p���¡̠�3^X�%���1��l/�4���*�vr%^8����aǛ�gxa�	?�9&X�	3<�C/��ȘpE�b\"�^8��(�z�F���C��{^X�F*}t���^8��U��*ȵ�?x�&[5�~	�\'�[��v�e\0+U������ ���C�6�`�F,�H�%I0�#�H�%I�d#	�l$���$X��K6�`�F,�H�%QX o�����CXIeQ�EX\r�J�#��t$XP��m�\Z��G���38\0NE�T��!lDx8�(KH\0�!}�ԇ�d�c�1��43V���~uL+\'〟ǋ%0&8rLK+��C�\Z;�����KJ9~��g�L��\ruf�K��B���p/�������Zh�<x�U-�s���tB�tW���8oC,���}�w��ϥz��\nLP�/.8�_3P�=�\0%;��b�\\�u�ޤ�j@^���~璒Q�TSMp܆TgC���ej)�6�̓<P�pLq\Z����wL9r@�ĕ��b��w3~��Z�p5�ҿ�;�J���ݰ@I�2tS�_���u�����`C+y.�I_�$e;����<�.�^�!\'HH�o���\nX���Wt�O��~TJ_�T��\0�t`[�7|�H�kC|���v�\n�Uĺ�B�\'���N���\n�;�	|�t.�����<�=�ֈ(W���&8���PgG��Q{mWԗ�+՘@��K�J�5y���D�R���e^�W�P:J�_S�_]���,�S]w�;�l���m7R�\\�o��z��c��\0���B�S�qA�#��F:�Pی�\Z�^_t�Xt�Q_�tl7���Qj��\n�`Y~lW��J�y���(wmH��W�~�����њ�����}�N���Hj��o��#���4^Qo��/��v���t���D}�aF�/��0�?�E�퓦�Rls��k���(S��ϛ�Q�c`W@�5��ѓ�$��^k�1���(iK���1�s�q쳘u����%n��|y��a:���8��4�O��)�g�Y\0��H�%(\rpD��?=Cs�zf�Sg\r� 	����gF�J�:��8yC�n� ��߈������9������������N����b�O�ff,h��Ձ�D���/r�H���#�P)�ټ�������\n�fF\"���;��5b��, U�6��)٘�^	�Q�F���\0��p��t��R.Ѕ�+���Ս�NC\0�L_6�w�޹��_w�XD}Oʙ|�J\Zw�Vڱ�Ӊ);1\'�\"�y��`}�_��O3M���|��/f��~���m@5JFtJ5s�����;(g��Ϳ��.�	W����;�3 ��i��k�����U�k�IN��U���jw����!����2���O�r(1��w�\Z�`v@;Ca�~8y�B��.��ZZ=n�Vt��N��Gj���Ᲊ.�J�\Z�)�ܔ�1�P/dL�5��ng�gh���a�����6�V5�Iuޣ�:��Il��f��_dYp�-6�Gt�M��!4�.����rgWUיǙM�u��*�z�Pi6�WYʅ����ʫ�r�����<>MR�lw9ہ�<ʂ�{А��emo�\'X�%���-\n\r�y�ڲ�ى�t8�@�0��D����(:\0����6����C�Vk�(8(���ӏ��.�KDs	M6�����]ζ>��З�ED�.��k��q�\Z:<@\Z�t:�@���>�@W~U�l:��k��v�EO`�l��a�n�\0����8���]l�5�\Z/�\\\0-:<6G��65٨I�v���E�]�[��3�)���F�N�����H^���Jg�HG���n��\0-I�m�y��j�Gק���>��}�Y�9��it:��^	\\^�����7�kv��.��ŧx`I��H����lAk����T0����+�E��\r\Z��A��~��Q��R*2\n�FF\Z\n���������P�7���;R�?�pD�B���������n����V�N�����c]e���B��J]��t��D.���n;)K���.@��鲂��-K�\\6�v�BOm%5,����gA(��m��*Ͷ��a����*4a�YrH��@�Hm��m�6 �f�v�0��z��EbD&�\0}�;;<���%B̡N�6����t=bc��ir6vP�f_Eg9��6{N��ams���5J�p�]��̯l�%ڡV��M�Q��I���ٹ\rga�ɐ�\n�Q���p>��L�p���j�8�K���n�y(��g\'��gH[�ח؏\Z��y?��_e!`[�\n��;\'�����W����X�k�����\"�\\��0tu4�a/]��p���x��sǹ��}��2������`��p(	XN�V�H�#J�8�D�\"qp6��C� 2����I>Ԍ$�\0O&B}%��?�������\0�\'��&K\0�����3���/��7������r��+��5��Xz���A\0\'�)\0��i\0��9\0�y�F>�|>�#�k\0͗\0\\ʛ��O����a�Y|��ܐݧ��V��t�SU��d���n��U��a�L�Ml�1i�6��ɲ�Z���\r&��o	�ҧ����}D0��Kl�*��m�+_&N�mX�b�b��\0�d�r�L\ZI\"C�P�Cr�i�;2�4��Jl�z�&s�b���Od\rYG�#��I�<s?9H^%o�����C�)��|I�A�\Z|\ZX(�����@F��\n�(r\rMƐb\"��6��� �Ƚd�~���^�<y��L^#%���g���>��&�$�42��I9C��ed%�3YO�\'[�N��<M�#/���!�&y�|@>\"��Qr�|C=\0Z��?墕1�D\"�T�A�H61�|RE�H�#Y@��ɝ�.r7���Z��l&���#�1�����3d9@^!����{���r�#_�o�Ir��%��\'�Tz���帀��G�Bn%��;���l%�����\"�	����9�#9��R��sL\\����ś���[�6�U�ql*����#ϥq�8���ay����X=�3JF�b��j8��##��)��$��z2��ɵPn!��m�����b[R	Ǐ�IP#Uز\Z�S������L\Z�E\n��L��{�yҜ�4�h� ��H�iZ�&%�d�j@	�,�~���~���CH�Q�T���\n8̆k����@�=P���V��70��fQ@�:\n�߄��!b�ԯ�5@c-\r�F2�ͤ�+���H�݊r�P��Q��Tn��=��$?B��̑;�q1z�\'��y\0�{h�؃���M�ar؎-�`K�t�q�QOT�<�߶�Hmbv �N�օ��P��v�J�J_K�6��2�T+�Ū�!6��t��\'�<H�^!0[����B�p��d<��H����3d�?���qg�K�v,D�T���Zle/�!f���7��\"1�\Z�\Z4w�5��zG�f�n\Zx�\r�!k�������|�vv\'�	{�㸺�>��O:�p��i���\'���@�Y�iE��lD̦>�x*�Y:_wR��5�X��c����}�rA4���\\�X��Q.H�J�)UC�D�i�Q7���(��B(տ��,���=4`��C� b��C\"�p�Ѓ=�{X�=P���#����nG(Ps,j�C��Qsa����t���31� fZ��5�Qm���Xc�\Zy�؂H\\c*) =���Q�0�>�נ�Z����J�#J|e��HqRLE�C�b\ZR�#ER<�{��O^*a��#~����N���=Ĥs0k���y�%2�LY�2��0�%x��	�3ip���~GtN�b���d�3`t�90��!�A�WE�I-���[O�@�2�X���qB�2��0/�٘ƅ0#��uĔ\r_���!�<s�� h�����0K?���0O�\n���?���9�ٯ N����;�RT~�*0������~�g�3�P��X�~Y�~	f�,H���\n`\rD)�eA�d����e8 =�#qN-�g�,h��AP�b\\�άV����b�Y1�z�v�w�Y%�j�%����x�\0�Fr?��%(AOP>NvB�n�4�{�sP�29�[�-(�#�A��hz��o	��|@��(y�%��^��|0d�A|��*^	Yx�]�q|\n����p%����g@V���|<�\Z���yp����|_Y�(~,����2���y�cjjjj��\n4?�T3�\0z\r�㬫�qX���~G\n�u�uM��+����	٣ϟi�\\D��Yr)�r���\'��א��>�L#�ɵ��3��-d6X��t�N�֦�OG�m# ��7AnA=�Q�K��?�)�~����_���]��ǐ�R����_���4�߸�0C�k:�\0�p:���te��y��ÇA	��z8\Z5E�WCD@4�\0\\���z�G��j��\Z��j!� ���~�o��i6f5혡t�X�#�(����u^��0h	ʇ�v�\rA	:�����\n�MA�.z>h��Ԁ�0?�s�SPCs@� c�h^P\'@]����:3_�����4�j�5�t��,�}�t��X��0(t؂��l0��\'f.Ty8�5D�ÃB�3�L��g�3�X��ɱ��Z}�>+�f�����ઓnՐͺ���5���^�O�W���ĥ�;jޖmN��)IY��G����+���[9%9�t��2>-��p�O-J���\'�;VC�>2�����3]�t��VC���)��f�(�hn���0�0�	��lk]�6�]��V�j��I��L��D��0_��/��k�\n80�G\Zs�:ܵ�	������}�ﾍ��f��mkٻ�eh��QW�b���	E�n����_����¿�����C�/�t/{�ņ��\'e\'Ռ=z�;+�\n~�����PeH���/����z����\'�|�i���Ⱥ�,������I�������>>���w��WK��&��b��#�T�B��\'�~����6.��4w��Wԃi�v����<���	�c�_���]Ò�U��9�i��{U�]q�oX\\�杣�|� ��͎ޯ�Э+Ў��ȋ��ǒvɞ[�����[^�t׉��_y��7���_�	��񢡏���ڜ&Cq����ߤ��c9.����M�\"��MV���XW��2�Խ�0X� M�M�����D]Z�Y5�2�f�I\'R�Z��D�ⱶ�ӵh���5�B���1��vfU�Pi.k�4�MJM���,!�qh�H�臅�!������{�ս�+Y�U%�/���K���D�mqɒ���m�k^NmM)��t�g���Z�9;��]YWFy.0dC8\0:D=�(�T*X�\Z`�\'t�6��z9�ò�;+��,{�-jǃ����0はO����l]���|&����o��rž��\\]��.gɫˎE\r_zϤ�?mztPPN�읒M\'Ľ�ؙ]����߻Ni��ɣrM�^�\"?xiݲ�QE�#��{s�i)�j_;�#r����E)��_��������a�Q����nz��%�bͳK*b��4٣e��RS5a�~iæ�\\̭�_g����[K�\'��ɯ�1n���ڟ���o�����O��uY���ͅ_�3��}Ks��v�ݳVM��M�\Z�;�/�V^�^�rњ]�u/�w�Q��&������2Y0	�W�J���S��ZP�.�-g�YV?B����XM:]�v{������|�>�e/q,���<O���\Z:��������o�}IO}xz��������}�}̡�߿�ī���l:1|kֆ9>AC�z9�|j���#��?�|GOx\"St�����ܸ��铌x�#�M�3��s�b[�����m��\Zk��]q���%u�n;�Җ�7m�=�J�y�=�u��ƹ��ԝ�[��U������f�Go���A�g�O=����L���h}�DgD�����e��nu��\\a�࿋������$���4\Z����}������(z��O���?��aP�#$U׊MmNG�!Q?�HtL��̾�aW9�����r1��t�|��եg�V�4<��~ي=�j7�m���l�窏r�X���閒�⚮];\"���@�����o_H��qo���iw�k��x\"^7�v��鞟��K���4�[^�>s{�����/���铷��2ٓ��:S��yT��2yf�6�%���OA��P��L�^�}7=b��%0��W�x�ѿ�.��<]p�Qt*�gC���{.O��(W<D^����İ/��.x>j9���R8>?\0GN���)P=x����*\"�j,zȮ��o��\'	�kzSІ�K�.�����f�%:\ZŬ~�[��V��>O��h�^l�gީ�Ӈ�.��\Z���Cg)��<ҍ��d�����k��f�;�6Gj}�{��	ZD�.�d\0O���D���.��t�Շ�߼Y�qDa.X�\n�yi���s�)6�+�ε��r����>o��,�PX�?��p��I�Sym]��J>�������\\n��Se�yRy�PZU��T�\'�!�ɖS�*s��QB]E�Po)��z�U�-HNz\0�\\�CK]��TW9]�ԏ�Pn��i���Z��<�*\0�>0RS[j�3�ʡ���\0۴��R�	��uյ���Ǥ�\'�`�TSi��\\>����b��%T�*��(��Z9�=���T�>)�k�q�*�|��BM)�h��,�j�kk�-�Y��Tse�PU]\'[�J�,���*K��z`�\\Z�M��u�)�6>f�A�Z��tR��rK�`)/�S9�U�FY9`UZ@�&\'����{!��O�8��V�6��\"\r�R���\\��ѹ�%��n���2�gܶ&$B$hl�pI#���j�1#�¾�8��\\�-�/~ޯ�z��ř�bk���4������\n~��Oqz�5=���� �/#C`4�!/\\Uh@�W���o��u�=[�4y�C��|����\\}�h ���@�r8�J�<��\n����1���(MƯ��&`j�����\n)j��5K��oyP�:Q���;��;���C����C<�y��ջz�0|��v�泃[�Q�vn��ش���]����\\�����4m�w�z>L��S�s���?�|��t������	�~���OG}��6���c�I�_ԵM������3\r=|Lz��l�`�B�o�e}�_�:��B�!p&�!��;\n3�����\Z�����EN�mo���z�N��6\0=�P���>y�p�w��\'X�gC����gf|yZ����i�=���!�nJ�v׬c_����X��UkZ7���%��S�?~��1�y_�k?�]|]���W�m^�Tu����fYՆږ�?ַZ��)ʘ�Yr#��3���?TOMgO��|ǖ��<?���Ш%ܒ��93T��O�̫X||̴��b7�p� .���d��FAU>�v�������4��[��c�%�o��_�\"�§��g�����_{��l����l�ԋ|qR����wڳ�e������Bp��U	�9�_Y����S2�i�ӷ.]uČ��|-��9y4�uq�C�<~��!�̽\rg�c�P�q�74�����m�П��_3ǹ�n����G�-�Ҋ�k�Tr��[�nzhϮOf��~�����\\���>��]��z�m_lZ�����w����g�j��/��o�jx��{#��I=���ý6mٖ޻�n����{S^�q𮕚;�LU��,��uڳ�4z�ztx������8����J�����2����Ǐ?�X�磇3��xˮ�����U�Q��\r~/)\r\nendstream\r\nendobj\r\n71 0 obj\r\n[ 226] \r\nendobj\r\n72 0 obj\r\n<</Filter/FlateDecode/Length 41769/Length1 82460>>\r\nstream\r\nx��}	x�U��9I�oiiK�@�Z�B[٬�@��R�Bl�i���n&)��Pp�*.����(���Zt�m�qt�\rEET���<9�T�򿮹����=���>�yξ�$#�c�xXN~ɤ	��^ӓ�Ì%����s=y�1�xYr���~wv3c�k�/O�/(di�*��Dz�	��K�6��u+c�|8�Ē��������$mzI���\ZW;�������!h;c�71�n[�����������꺓\'�F2�\r�	�Ymu7�^̌��\"���vIU�՟��X��_S��?�0�OA�Ha��7<q�����y������w\0c15�\r6�}I��flbc���͍�O���{��[�i�_26�cщ�\rn�?�]���xh�.G�����2����X� ����/̏�������˟�d��?_t��`�fDØ�у|���ç!���eI�}���l:�3�L�`̜�z��!�߄�Р;����>�����:�t1A:�Π��2�W9L[�ʞZ�i��Ԇ�ͺ4��-�Ї��EOQz����؅��s��\\x.<�υ��s�����6��_M�`��_����_����`\"b\\�\rl0_ױ���g�ӹd�\r�`*A?��/����w	2/}�c�����.<��G��,,g�}����Ι]^f)-�9�x���S�&O�8�� ?/w|θ�3z�%����1d����~澦��XcLTDxXhHp�A��lp���B�Ux\ri�����\n����«�Tx��W��nڹ�9���C�9�ܨ�ac��\n̚��|���g�(�^�o.׼Ǥ�*�!MF�IIA� �&_��\n��[�����\"���3�9f��# #��̍����\\\n݀�Q�u,4JT�էX���e��))����dY��<o�,Ks�6�����]�nd��v��:�̫�\"S�����\Zol�w�9�;p�GI��;؜_�M7����poP�Ѭ�}��x�/εX��T�wLH�ŎaB��mCѿ�і��sX%\"��e�Xe���d��{u\"�JI���V�ґ�\"���\"�&��Z�\r�ї?��A��էUT�j[m��|\Z��2oN>D�5�ׂ�Y��V�N13ʼ��Fo�9�`��8K�d�@6o|��U������]ZA[E>5P�e�Q�0�?���|�06���vx�0)ime�*��\"َ�Y��%�xs�1|��2G��%��;�(�K�5�\\�[o�,z�\Z�����b�`�\n�2�A��%�bFs�he<�)7���rѧ�MIz�5obrJy\n=�Ѥ�@��R����2���&��W�FޢA�G~��ShP������N��@��*�s�Jҧb�¦C1�$f1I�b���0����r��D��X��-*1͘]&g;�JJωQz6ż,�*���\Z,LOV�*�d�#:�K�$������J�D��@�L�B���&Y�ˎ��Y���\\h5kF�����o�l۟���XPQ3J�a�do3���I�m�Y֒�TTǊxQi��8{r����3���kKf�=l���kK�|:�˫�-��iek8ܥU\'��(\"����f\"*���a�U�\Z�A�m�I[��qfkבͨl:�dˑ6�`��j0�8n4�����5m�bs�DL%~����2��<v?�Gz�͎\\o�9W��	�8�{O�q&�U�qNaA��dNKQ/�����Ҳ�����`��f�y��q��N���\n�\'x[mV�f)yCR\'�ʱlU�p��\rC	a��Q(��L6�\r&P�oE��Z�-O��9��r6z�D�(L;��&*�,o�3�{[!<�\ZAah+)#K2����)$-���d��0�f+�R��4<�,��4�Dxr ��n�S#�½a(?BGd�-�\ZR^N���k���@��:\re FI�D[�s\r�*\\���hg3��8YD�eI!H�F�N�������U�PqFD�8L���H��>��ݿǼ$��3d�Y�r�%?����ۺ\Z�s҇�j��涶Ш�g��\n��`a�\n�[�1_�^k�]y ,�O��B��J�R�U��J�P�E��J,Sb�K�hVb���hR£�[�˕hT�A�z%ꔨUb��p*Q�D�UJ8��+aS�R	�J�Wb��)1W�9J�V�\\�2%.Ub�%J�(Qb�3�(Vb�Ӕ���%�����$%&*1A�B%\n��W\"O�\\%�+���8%�*�%�(1Z�QJ\\�D�+1R�JWb�C��H�,%2��Pb���HWb���D%ҔHU��f%�*�����I�>J�V���J�T��IJtW\"Q�%��D��J��Q\"Z�(%\"��P\"\\�0%B�Q\"X� %J��)��`��J�Q�?+����Q���^��J|��	%�U�%�V�_)�ǔ�B�ϕ�L�O��D�+��R�#%��ćJ|��Q%����J��ĻJ����J�]���xS�7����+��*�/+�/*��+��*�W%�(�%�Q�i%+�g%�R�I%)��+��xT�G�xX�v%R�A%P��+�Sb�^%�S�^%���=J�S�n%�Rb�{�ح�.%v*�C��JlSb�[�ج�&%6*�A�;��C��Jܮ�mJܪ�:%nQb�7+q�7*q�k��^��hS�J\\��5J\\��UJ�kW���=\\]{���pu�����յ��kW���=\\]{���pu�����յ��kW��RB����pu����������W���?\\����pu����������W���?\\����pu����������W���?\\����pu����������W���?\\]{���pu�����m���W��n;\\�v���pu�������f_��&ܙ}}@�)���g��b+�V��D�Z(��h�R�%���A;�y��D���(�C17�����z�\Z�\Z��ɥ���h��Wh���������+䠘��FTId%� �O4��]F��Ds�f��]J4��BTJTB4�hQ1�t�iDS��M�%OM\"��K��@T�K.������r)m<��!\ZG����hy�&\ZE�/!�&��h$�*l8�0*e(�EDYTX&Q�B4�(�h�@�D���4�T*����/�B�Q>Q��D����z�zN� J����N�H��x2v#�#��4#Q����\")-�(�(��B�B��}=�AA�3@\"=u�DL���.�4�~&�����H���\':I��/�tT��b�}Mt�Ҿ�ؗDǈ���ω>#�D����cr��>��?)�!�DG)�D��=�w��!z�\\�N�����u���,�߈^\'�kD��B�2��D�\"_ z��9�g��DG���g��&:L�g�|�bO\"z��\'z���%z��a�v�|�b=@t��~_�8�ϗ8���KtѽD\"��h�ݾD���.*e/�J�M��h\'���Dۈ�m��6S)��6R��;�� ZOn��mD����[���D7S�MD7�@���z�bmD$���\Z��}	V�U��JЕDW��@��V�,�V_c�җ0�����/�|ˈ���%���h1�\"�&\"���vQ�ˉ\Z}	6PVO�uD�D�9)_\rQ5����;���i#�$�U�\'�G���Z6�huz6]N�]J͝EY��R���D3|�9�b_��a�/^,�i��+@S}�C@Sȥ�h�/�>�b�&����T�����_	��ŷ�r}q���D9D���������bc|���D�|�bi\\B�틝\0��[\Z鋝\r\ZAiÉ��b����E�Xѱ,_�؛�D�}�0�(�\nD4�\n@ԟ(�(�+F�����Ke�Pa\Z�b\"�C�z�\"J&�I��g���3�u����≺�Q�X�`$cQ4QQ$yF�g8ÈB�B���3�<\rd��8���T����L�c즟�N?��l�\'���|���?||	���s�}����\'������M���1}���\0���\0��!�.��m���[QMoF]dz���Z��Qi�׀W�_�J7�����`{>�������>����(�陨\Z��Qզ���g���$��?�����c���F�L�F�M�DzL��C�?<��H�6���E,1�������{\"ZL�\"V����{�����!����v���\Z�дz3�&`#��u\'ʺe���v�6�V`p��nFy7�O3�>�tCx�iM�.���{LW�SMW�MW�l�jK�eվV�JK�ežKD�hIn)jYֲ�坖�����-K-��-�,�,�4�[lY���bh�o�4�O4�}M<��g5qk26iM�H��eq�sY����������.s��v���]�}\n�9�]Q���-\r��}\r���:�4˙]m��Wm�ʶ[��[v�Ś]a��}�e޾�,s�g[��m)�.�\\\n�Y٥˾RKI���}3,ӳ�Y��>5��2e_�er�Dˤ}-�-�2�e���E��BKX2��J�I>�|<����ɇ��q1=M=ucz��=xC��=n졏Iz)I��4ppaL������W�\r�r��(d��D-Q� ��8��P�|�FȾNM4��$�S�����Y������\'�/u11<&��ˉ�{L�)Z\'^�h}N�E�D��t���\'�D�\"J�Y\\Za��Y�EL���D��+̉�U��\\�q#H\n�<�T�?��j�8�iiIzzQ{(�Y�\r-����zSK�;g�lo�^f�=�l?�7��纼Ro��je��5kX��\"o�2�~��޹�E�V�sr����R�>���NO���k�ۓ.�M\"�.����A\\�&g���h��\'`��v�����n�������`�_w%��\0V��V`%�h�ˀ���X,�\0�.\Z���j����	�\0�@�\0�\r��@0�\\��\0��r���X�R��	�\0����4`*0(&�����(\0�< �\0〱��1�h`p	�\r\\�F\0Áa�P�\" �2�!�` \0��4 ����@\n�&���$=�@�H�x��F ���H P �\0�x?�z@p�1;���N??�����w�	�[��k�8��%p������7�1�/�#������Q����{���;���߁��7�7������\0////\0����\0����O\0���G�G���v�!�A��\0p?��^�>�^�O�=�>�n�.`/��\r�v;���6`+��l6�;�;�����m���:�`-p3pp#p���h�\\\\\\\r\\���[9�?�������c�s���ϱ�9�?�������c�s���ϱ�9�?���.\0g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp���c�s���ϱ�9�>�����{�c�s�}��ϱ�����������O��y�1�����r�<]�07kE���a��\'�;��]u��v����=�����O��g�ձH�C,�uc����n�=(���ĺ�����eۗgn�ϴǱp�7J�*�����S�����뮁��9��|�3{���6��as�e��Y�;�aN��BV��X���#�\Z�*������g�\ZX#�b��!4B�1�v��7���l	[ʖ��%�^,-ˑ�Tƛ�l%ff[-�b�\\��dWa֮aײ?�f���]Ǯ�<��n�U���M7��X�ح�6��b���z����6�-X3\"�VX�H%R�g��^v{P��\r�F#�ƥJ�a#�`9zxE���-����[[��Ͱ��cQ`���RhD)-]F�&���Q�V����Σ�[V5;�������mlv�6�Ũ\n����;�7w�n��l\'ۅ��#�b�����bo����{��Ί�^�\'9s^������\0f�A�k���J;������ay�=��\ny��I���<��ai��S�ψ/�=����Y�{��ĞF�E�>����U�\Z{�GA��>��4 >m�3n��85�,�]¦�il�A���l������!!��w��i�����y91]�C={�3?4\"x�>vR;r`\\�\Z�kǝ~�􋙧�?wI�1����`����K2�}��e�ؔX��h]HH|��o�nD���Æ\r�1<��7Z\'m�G^<V?lh�>^Y��D��_�y�~��`�\n�YÂ�􌉏\n��J�2&�X2\'uLF�}H�>(4d�Ź}�j���;!�w\\hh\\�Ąޱ!��	�>�MP�Oy�ڟ��G��O�><Tgn��c��I�b�\r݌���!q���瞾:��(�WB�uz*��p�I�n�<�����R��\Zٸqｈ���Ө�	ݺv�Q\\���X�`�lN��1�d\Z��4�d\Z�#�7�F�\Zx����\n����钔�䈈����!=\"\"z�����˖hY\">�i,AwɃ�Ah���Q��<��\"В���ֶ[Cb����<6�[�^�}����%���+�{XX��^��%��!�!z=^:�1<((\"&�g�w�������{��c\0Vڶ�B�.��B�_>����B���;�]_��ն]���,ZƄֱh�������hC\'� ���\r��N�vJ?;�C� ���4Ci@��v�G�YO@G�A�g:J��p\"��Ym����h��YH蠀ֱ����_����Um���\"����N���+�CYB�рc��΋;�#Xz�Ѐ�d	�t��\n�h62�q��a�q&M�L�ƙ4�3iC\'\Zg����4Τi�I�8��q&M�L�ƙ4�3i\Z�p�ʲFBM���]�l����[cy��~�\n���e e<>�ׂg�V�j��1��Ex�ᙇ|���	���u(�.}�s�V/�(�-�\0+��(a	b��<�K���TB��W�mnBn����Z��(���@��CCd������$��*X�����&�*{)�~ؐ2X�\\\'-��D+ƈ쪖:�S+G�1��zX�d�T�觧SD���/��(\Zmj���#��ob��(8�w/�;-���{:�ƌj�d���j�c[)=϶�s�Ĩ5�|�녈g���y6����d	K�84f��x���;d�E�i^\\r5�\Z�\\k(���7��ꀏ����=��Т�Y��5b���~��lCK��~[���b��\\��_�Q�����]3��\n�\"g`�]���z�U��_�5��j�J�qFL��.W�h�B9g*��S���v���BscA�)� �/���s�<fZ�Щ�����^:�Z���\r�s�O���\Z� [Ey=��L��2d�=~n�3d�u��`m��W�4��%����};��R��J~+��W�W.�L�v�\\mn�B��WnyPnM�A�I�\\QNY�P�̫F�\0�7\'\"�uuJ��l�crv�.|�Z�+�R\\�ڰ����;ּ]�7����:o�=��t*�!�b�v��H�b\0r\r����rt��_���%��1:[�:���9K��v�y�˾�]��kt�=��Щ�V���7�]����,��jOi��猩#����1�b�5ɜvy��8:����L���O틳{\"S�F��M�!窑5ߥ\r��\Z�Mu�\\\r�*����jlpY=Ά�m|m�6�Y]�qk3n�k�Þ�g�uV���ӭY����U����n\r��*��Z�]�-vzj4wS��֡�\Z�����j��\0W��9�횭�U�p�3�I��a�4�n���jN갹k�:+Z`�6B�,uM�g#��o�s���vxdn��Հv�f���چ�Z\r\Z�9�\Z�6���<�h�h��z��P�U:�e�T����Af�BG��f�Vg�_�ٚ�yj���;k.+��r���h�Ӛ\ZE5(�\Z�s)�=\r��\"�%���ꪣ��0�j�.4��ʘ�n���:f`��z����0D�vQF��NC����\Z+ʯv�v8�0���j\r\"�S���,����;=�_�z���(�AV`��y\\N�;cJ�m��=P�;�	��z<��23/^�Q�\nϰ5�ez�46T���5K2m���z�;�*t�X(���0�K�&��@�D�f�L:\\uN�hP�ټ˔�Hu����D3���i��쬷�6��X4hv����1ot9�`���ޓ���� 8j��J��lQ����-��bIc��������\Z-0��Z���л��7,��m�v�m�RK1�3���il�`�9m�S�m�ҡ�3r&2�*+6Q������y����߄?���O���YL��#A|/ދ�_�m�s�d���H��{���������������(���^��X����w��9X�ŹP�w�ħQ��\r��.i��Ң���:��tI��f�6�SZl������|�rjh�k\r�<,A,��:b�\\��\"�u����Q:]T𡎇�\'0b��=t��mK\\�,���XȲj��z6)�df���\n�r}q�����FZόL7s�T�%��,��;��\0��m��F6x!~-���-�c�;_�\'�wq�lr��=���N~\n�Z\"��D�\0G�p�(�m5�Ռ�t�l�n��M�U�I�����]^�N]����BHVHV��ȭgC�n\n\"�k��6ndGx�d��ns����V������d_�#��R�<�n��y�\r�;U�|v�\\.>Ia����w��=f��\rc�Q)]��g�}�Bδ_	e9��<;���䥝/�ޝ�IA\\�\n���\r�a���\r�\'}��䷊6�0e/������Ok/���Sx[غ���������4C�r��Yo��h��K�.]p��Kߟ�����е����ц���k�7S���� �;R�g\Z.�~�g*TN�ݭBU(����߯�r���9\n��f�S��M���\'�\'_0��`��v`�����p�V/l\\؆p��\\��kCkg\"�k�k��#u���ֵ�}\\��0���~Q���7��o��p,�>��\ZO��:������\rqE���M��y�oZ��E��Z����e��\r>A^K�~K^6jY����/�R��c������[�Z���G�o��ro��+��W�	�1+�8�2�o�Zqh�ae��SV.��xk�ͭ�[��nn=��Y�x�Y�*c��U���:��8|�P��^�GV箞rE�?\\����g_mo�&���z���n�z��qbC�mü\r��6�۰}��\r/n8���F�Ƹ��Ƒs6N�8w��G6��i����&nZ�i��W7}�y���k�Dn�ų��-�|���c�6o}d��m���n�s�=��������s�߶�����w�(��ڱ|��Gw����\\�s��Ww~�+qW֮���:�;g������l�3rO��{��M�������]ml\r��ͺ�@�t����  ź�\\wV���M�Ӏ�@10�	�\0��r��`�\n��eN`���z�h.\\�ۿ�y�^�,��R��X�\0+�������-�:�V�6`7����\r<���\0�B?<�\0�����\n���\rx��1���o��\'���g����1�K�+�8�5��3���4;|��~�od����������N��|��?��{t�u���_���3g�3��3�CeT�**��N.E�Kg�Y����1�K)4��RJ�)m�iI\Zz�fM\Z�д!i��4I�w¾�׽WB�[�;��:�3���Z��J����<���~��\\X�UX�5X�uX�\nl�S؈M��f<���\n[�Ϡ\Z5؆=Q��1�,zM؇�3������en.��}1���:v����87\Z��	��?�r�9�C���<����\\��⏢�	˘��	˘��	˘��	˘��	˘���:j�����&��:j�����&��:j������-Q܊��m�&?F)��RS���(�2l�S؈M�ľ(m*Ҧ\"m*Ҧ\"m*Ҧ\"m*Ҧ\"m*Ҧ\"m*Ҧ\"�DA/�p�H\"�\r`#Q�$M@�$M@�$�	����)8d\n��C��Pћ�ޢ�\0���f���p>ނ�h����#�1ށ��w�O�%��u��)��+����opI��h*އK�x?.����!\\���a|��Q|W���>�k�)|\Z������Y|��p-��E|	_�?`:�S���7b������c��n,�=���~,���(#mi�H[F�2Җ����e�-#mi�H[F�2Җ����e�-#mi�H[F�2Җ����e�-#mi;X����~�z4�ѿM؇�蠔\r%,��P�B	%,��P�B	%,��P�B�=ȱ9� o�y3Û���f�73��v�l��F�l��F�l��PZBi	�%Fc�=���~,�X��RѨ�5ݣ�;i��;o��;o��;i�;Mw���4ݝ���t��+4]��\nMWh�B����t��+4]��\nMWh�B����t��+4]��\nMWh�B����t��+4]��\nMWh�B����t��+4]��\nMWh�B����T��\"4��MEh*BS���T��\"4��MEh*BS���T��\"4��MEh*BS���T��\"4a��h��� 4�)MA�.\Z���>���|���<_��2ϗy�����f�7���<o�y3ϛy���f�7���<�3�������(�2l����������l�?�9��#���G&82��	�Lpd�#���G&82a[l˂mY�-�e��,ؖ۲`[l˂mY05Տ�n���̈�����`�L$e\")I�H�DR&�2����L$e\")��\")���s5�����o��d�{ш|��ǈ|��ǈ|���a�8,���|���|��#\'9���!���!���!���!����`�N�:�����-EǋE�U��Q�oR�׃�3.�0�p�\n��p�\n��p�\n��p�\n��p�\n��p�\n�حy�5o���ּݚ�[�g���\\7��Ь���ؔ��cSvlʎM�VNg�tfLg�tfLg���z�Y�3�uf�άי�:�^g������褹{�ܽ`�^0w/�����O����	���X�UX�5X�uX�\nl����FlB%6��O�\n[�Ϡ\Z5؆Z<��؁��&\'�)xΟ�ݨC{���h�^4�4a_�$Mr�$Mr�$Mr�$Mr�$Mr�$MA��Ӊ.>�c�8���E��I��>��c�>�\ne*��P�B�\ne*��P�B�\ne*����S=��=��=`:_`�4C�:��i�N��&���=`b��4��4��4��4��4��4��4��4��4��4��4���H�>�tI��$�G��#I����H�}$�>�tI���}���}��aQI��E3���\\\\��`Jѷ���+������c��n,�=���~,>��QO�R<�r<�ǰ?�z$�J���tZ%5��(L����r�[�s�qn9�-��2�-��2�-㼒�$�$y%�+I\'y�I�t�\'�ί��	�s��p:\'��	\'�y�ɼ�d^s2��)7���D�M\"�&�s���##�H�I�#I{$i�p�>]�Ooק�����a��b��a���a���a���a���a���QkZ�\'����RJy(塔�RJy(塔O�A�]�Q�U�Q�U�Q�U�Q[9j+Gm娭���Vq�*nZ�M��i7��Uܴ��Vq�*nZ�Myn�sS���ܔ禼�̔�̔�̔�̔�̔�̔�̔�̔�̔�̔�̔��uZ�N��i�:�^n��:n��:n��:���3�yf7����v�;��w�~����~����~����~����~����~����|���������������g2���}2~P���A?(�e�����2~P���AS�p֧�_?c4����`�\ZLR�|���.���.���.���.���.��{�i���[`�-0��vL����n�i���[`�-0��vL����n�i���[`�-0��vL����n�i���[`�-0��vL����n�i���[`�-0��vL���Ӝ��9}���9}��WtK����W�t�<��<���uѷ���3���>�\0�0?�܁7�|���|��%(����R�����1,�O�ܓ�X��X��X��X����<��؄Jl�����[��Q�m��^��v��N��s�9v�q쉞`�5����ְ�\Z�Z�X�k3cmf�͌���Oo�ύ�\Z��1G�9ȓc�s䘣�9Z���9Z���M�b7���A���A���A���A���A������������5�Y��5�Y��5�Y��5�Y��5�Y��5�y~s,f��̱�93�b����3x~������.�����c�b<����-���Q<�e؀���P��A1��N3�4�N3�4�N3�4�N3�4�N3�4�N3�4�N3��c�u첎]R�b����%�.)vI�K�]R�b��<�.��\0�`��r�Y�2�\\f��,s�e�dg%;+�Y��JvV������dg%;+�Y��JvV������dg%;+�Y��JvV������dg%;+�Y��JvV������dg%;+�Y��JvV����������쉪M�S����0�;L�S�����?c�1��Į�n3_�z4�v�:v��wxN�3��>KE?�\rW�������l�\Z�o\n>a�gm�-��ų�x����Y[<k�gm�-���S�=��&��d���|� g�s&:g�s&:g��1�M���T7��&S���p�O��\'��n���[A����VPp+(��\n\nn���;v��I�;f����Yp�,�����	i?Zp����A�����ݽ.Й���A��g�z��g�z��g�z��g�z��g�z��g��{�������qU��z��}��6<��;�����ҩ�wca�T�KU�T�KU�T�KU�T�KU�T�KUX��z۽`�l���^���{!Hy�� ��S�m�n[�����u�m�n[�����u�m�n[������!���m}ȶ>d[���ևl�C��!���m�k[w�֝�u�m�i[w�֝�u�m�i[w�֝E��=N��p)���e�W�� >�+q>��`\Z>���j|��\'q\r>�O�3�;�=>������E1��/���L�uj�7�F������p~�R܍����>܏Ex��yضZ�GP�G���\'X�\n��*��\Z��:�G6�)l�&Tb3���P�-؊gP�\ZlC#^@����_�)v�������->���w�Gm�_�5�m©6�T��j�[Mz�|����|����|�?���K��%�������dkM����ZSm����T[k��5�֚jkM����D���>L��)D�Ԣ\0E�Jpu�?��\Z�	���E{�w�������Uq�\n΍}\'X�+xW�4�����]���+���cv�1��������������������������=5zj��0�a�Sà��I���V�[��׭�n�u+�[��>Ǚ{���}��>jo�������v���oo�����ӭ���oo�����v���oo�����v���oo�����v�����\\1��\\1��\\1��\\1��\\1��v��Y����~�8��N?���#�D�����?\"�G������#��!K��!K��!K��!K��!K��!Kv��v_���g���}}v_���g���}}v_����18?��3�0�3�0�3�0�3�0�3�0�3�IFg�q\'7��F�܈�qr�Nn��\r;�a\'7��8���N/tz�ӛ|�=��X���b�S�~��O��)V?��ܚ�ܚ�ܚ�t���v�n��v�n��v�i	ޥûtx����]:�Չ�Nt���(�DZ\'�:�։�N����\r`Ğ�\0F�z��]:S�3%:S�3%:S�3%:S�3��q!ފ���e�Cv:d�Cv:d�Cv:d�Av\Zd�Av\Zd�A����2�W����^�+C{eh�핡�2�W����q:.C�e�������?����h��N��i:;Mg���4�����tv��N�jd�f�Y�n���e�f�9����S<�x+�\n��k��Q�\r�\n�	����?�*l�V<�j�`j�,�cvF������ϱu�c~�_�\r؋F��&�s�x�т8�V��6��:��Nt��a�����^��(��D:*�rN(�rN(�rN(�rN(�rN(7�Ϛ�ZS[kjkMm���5��Lm���3�}����������������������������������������Lw����1��c���t������?��Lw����1����������������������+���W�5������\r�3pK�^O���~�\'��yB������K=��z�\'�RO襞�K=��zB/��^�q�W�q�W�q�W�q�W�q�W�q�W�	�ԝa�\'�RO襞�K=���C�r���1�b�;�,w�Y���!fyr.��\\�ɹԓs�\'�ROΥ��K=9�zr.��\\�ɹ�=ֳG%{T�G%{T�G���Y� �d��c�un�sݠ�A�u����pY���,vC��M�*w�w��;�����1�)��Eb)��=wd���<m���<m���<m���<m���<m���<m���&]l�%���?,���?,���?,���?,���?�[�\'O��F����ګ������j��ګ�������.�[qQ���qWH�]���|�	��z��_i�A��A��A��A��A��Q��Q��Q�\r�-8O��U:_��U:_��U:_��U:_��U:��w=V��J�[�s+yn%ϭ�=���$�=�sO�ܓ<����]�\'����]��<���6��f���s�yn3�m��<���6��������|��y�{����y�y�{��:y���:y���:y���:y���:y���:MRw��]�r׫��*w�qWw�qWw�qWw�qWw�qWw�q����8w=�]�s����8w=�]�s����8wm��ܵ���s�r�Z�]˹k9w-��ܵ��Vp�\n�Z�]+�kwm�Mܵ��6q�&�������w}��Z��#���]-���]-���]-���]��U�]��U�]��U�]��U�]��U�]��U�]-ܵ��Z����Z����6p����]�kwm�\rܵ��Z����Z����Z����Z����Z����Z����z����z������������J�o�G�i�����⥫xi/=�E?���c�u���ֱ�:VX�\n�Xa+x�x+.���_=̱B�r��c�+ld����c�+�X!�\n9VȱB�r��c�+�^�4y�\\-b�E�����\"VX�\n�Xa+,b�E�P`�\ZV�a�\ZV�a�\ZV�a�+X��\nV(�B�\n�P`�+X��\nV(�B\r+԰B\r+԰B\r+X��\nV(�B�\n�P`�+X��\nV(����i�e�gY��\nV(�B�\n�P`�+X��\nV(�B�\n�P`�\ZV�a�\ZV�a�\ZV�a�\ZV�a�\ZV�a�\ZV�a�+X��\n�P`�+X!�\nIVH�B����|���,����~�n?i����O�-�_���2� 2� ;d\'��d����Av2�N�� ;d\'��d�j�f�j�f�j�f�j�f�j�f�R� �R� �R� �R� �R� ���A�1�>�� �d��`���Av0���o�2��r9�\\� ��7R� �R� �R� �R�{��Av0H=��3H=��3�v�� �d;�lg����A�3H=��3H=��3H=��3H=��3H=��3H�����H5�H3�4�H3�4��%��-�� c��1����R�(��R�(��R�(��R����ǥ>.���<���(���(���(���(���(퍯�ӆKݡA9�cX�\rx\n�	��?�-���Z騕�Z騕�Z騕�Z騕�Z騕�Z����P\nB)� ��P\nBO�M�L�<�6I�~��/�%b�D었��_\"�K�~��/�%�I\"�$�M\"�$�M\"ڤ�EixQ\Z^����Ei��!��H\Z\"��nr���&���=lr���&���=lr���&w�䎛�q�;nr�Mn��m7��&��䶛���K����K����K����K����K����K�����Q�X��X��X��X����<��؄Jl�����[��Q�m�=���&��������p?`:��C���<d:�~�������o�[��[��[��[��[��[��[��[��[��[��[��[_1��M�n���6��M�n���6��M�n���z��z�$י�:�\\g��Lr�I�3�u&��$י�:�\\L~��V�`&n�7�nv�\'�{p/���X���!<,IK��J�w��R�])��|���aq;,n��������vX���aq;,n������̓�y�3Or�I�<;,n��������vX���aq;,n��������v�O����aq;,n��������vX���aq;,n��������R:OJ�I�<)�\'��t��Γ�yR:OJ�I�<)�g������γ��vX���aq�]%���w�����UһJzۥ�]zۥ�Uz[��Uz[��Uz[��Uz[��Uz[��UzwIo��VIo��VIo�}�Z�[%�U�[%�U�[%�9�}N���������l�}��>[`�-���g����l�}6�>�i�ʹ�f�g3�����L�l�}6�>��\nw��V��\nsXa+�a�9�0���V�StI􋢩x.�������\n|\0ćp%��L�G�1\\����$����i|���g�9|_��(��%|��������W�5��S���7bn��ڹ��\Z��w/�wo�w��w�f�^c�-����}ߟ�y��b����,���~��o��b�Y�7��f��,���~��o�ݻ��{�ڽk�޵v�Z�w�ݻ��]b�.�{�ؽK��%v���˙�	��J��j��Z��zT`��FlB%6�i�U؂�xը�6�z?�b;v`\'v�9��Q�8�������%�р��*�g�8��6�)b����\"Vx�X�>��?��mw�?v\'�3w�?�����%�QO�b�h����c�(T0�3�1�3�1�3�1�3�1�3�1�+�Y9��iVN�r��ӯ�[6ΰq��3l�a�g�8��6ΰ��Ϣ�\Z|?�<���;�����F���������l���l����W�g\\�`��`��`��`��`��`��\\�t��N0�	F�1R��r��c�#�)�H9F�1R��r�t��2��a�#e)�F6ʰQ��2l�a���s�}���q�9�>���8�?��<}.�ۢQ�e�Q�e�Q�e�Q�e�Q�e�<���O?���O?���O?���O?���O�$�%9/���ɟQ��[��K��$x�D�?+���K�3%�)�LIgJ:Sҙ�Δt��3%�)�LIgJ2�&��D\'Lt�D\'Lt�DO��M�i�6�ݦ��4w���L�e&�-���N9锓N9锓N9锓~�I��_v�/;闝�N�\n\'�q�\'�q�\'�q�\'�q�\'�q�\'�q�\'���N�I��Sv�);锝4���\'L�&�	�m�M@�	�6�&��t��n�m�M@�	�b���-&`�	�b�L�<�)Xl\n��Ŧ`�)X��\'�낷��M���5�}#�z��!v���X����F�W��d�H2n$7��Iƍ$�F�q#ɸ�d�H2:����ft0����`Ns:�����~�����{���Q�#y:9ՁQՁQ=�3௺Q�\n\'p��?�\\����c31� W�W�R*�P��\n&T0��	L�`B*�P��\n&T0��H�\n\"D*�T9�fg���U��:��UӬ�f�4��Y5ͪ	U�&T��O������t��M_�M�7/�<�,�z�O���u>�Χ�����|v�4��TeN�9U�T�SeN�9U�T�SeN�9U�T�Se.H�Ĉɞ�{�\'����	���w~�~���o1�p��:�F��?�..q)�r)�r)�r)�r)�\nʜ�N��k�xz\Z� ~mȳ���~��wuػ:�]���gF?3���όw���o\rd�4��=M�n���oF��Z�p�w��;\\�.��y�˼�e��2�p�w��;��3p�`�8�g0�Bg:���� ����SY3^�~��\0�/�\r�8�.��O��D=�ѧ}�ѧ}��w�뷯��_�N�5��FtcD7FtcD7�u�Z�v�s{�s{�s����sn�sn�Y��;źS�&P;\\\Z���\'\'��O����O����\'�7�Ɯ�ؙ��-�}g���o��ɟ���sO�ۉt;�n\'��D��H��v\"�N�ۉt{O��{���Y���${T����J�2����b���I���I���I���I���?�P�:P�:P�ο��W8�\n�_��+d����W8�\n�_��+���p�ο��W8�\n�_��+�����ꘪ��ꘪ�����o���,�6K���o���,�6K���o���,�Nb�I$�D�I$�D�I$�l�^\'��$z�D���5瘉����u�f�3�^3q�n}�_�������{p/���X���!��֭�jѭ�jѭ�jy���ovr�nu�V�nu�V�nu�V�nu�V�nu�V�nu�V���4���\r>�ա�:�R�V��JZ�;�tg��,ҝE����=�C��o��#�ٷ��k�����e���bwD�cwF��������]��`����{p/���X���!�Mzۙ�:��׻e�U�^������}λ�y�9�>�������i���3?%x�����I�sU�_:c�?�3��2���Le*(SA�\n�TP��2���g�w�yg�w�yg�w���o)߅}rڌ�-8��h�KhC;�=�ҋ>E?<��PA�\n:TС�С	�С	�tC���C���+:���C)J�PJ�R:��:��q�])�I�E:t�D��Cա������9��)�1E:�H��\"S�c�tL��)�1E:>l��c���}5cDn_a�Q��8�1��w<�zǃ��w<h*��޻��9~#�s~�ή/v��~�	���;V���>�,�堳t���r�Y:�Ag9�,��sr�C�q�99�!�8����sr�C�q��\r9�!�7����ߐ�r~C�o��\r9�!�7���������lV7���=��Wg����N$u\"�I�H:�Qg7��F�ݨ�:���V\'�Pר��ʏ���ʏ���ʏ���ʏ���ʏ����T�S}N�9��T�S����T?��1Տ��	S<�c�0�c�0�c�0�c�0�c�0�c�0�c�#��t�.Ӆa]х]х]1�GϺQo�r,5ar�4a2GNW_��r՗��\\��/W}���U_��r�߫�=�ߣ�=�ߣ�=�ߣ�:�ש�N�u��S}���Uߠ��7��A�\r�oP}��Tߠ��7��A�\r�?����?����?��ɟi�B�z�|����7;��l��2x�s���f�.���rX�ڇ�X>{)���G�b��ۂ����ꏨ��ꏨ��ꏨ��ꏨ��ꏨ��7?]�]$�z�Ϟ������g��l�Y��,�|�m>�6�e�ϲ�g���H{��G{��G{��Gz��Ä&�0������7�zxBO��	=<��������%=lSŧ���zx�^��%z�f=�V/��U>�ʇ��L��X��o��g�*�W��J�U*�Ry�ʫT^��*�W��#�ޓ�Y~��ޅ��� q�鑋�{�\r�?��v���~���S��3�OS�y�����U��������F�*�Vi�J�UZ��j�nQ��nQ��n���bݮ��*ݮ��*ݮ��*ݮ��*ݮ��*���������{�㿙��D�����]k�ֺ��Z=V+Z��s�=�X�)*�\\@�u_�ڪ�\"n�ƥ���\0!2�\02��Y�fP���F/m���?�q>^N�������|��_23��7���;\rZ�׬h;+��j�f5�s��V�Lp�U����V1�*�[�x�o�b�U����b���}g�p��̱�9V2�J��\"1[d%\rV�`%\rV�`%\rV�`%\rV�`%\rV�`%\rV�`%\rV��J�X�+�b%[�d�?U�s�����2�;�r6=�j���;+g�3�x/+�S���;����{O���=\"D���XO���XO���XO���XO���(U�V*�R��\n�Th�B��W��g?*�R��\n�Th�B+Z��J�V*�R��\n�Th�B�j^T͋�yQ5/�����I��ڣ�t�Ume�gE���8��8���8q$a0�·������p<N�������������4�NǏq��O��0�ß�8����3����&�Lĳx����I������2^A=^E��ﺯ������x�ss¶�\\�C��?w�w���S\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`����\"�)��`��y\n�)��`��y\n�)��`��y\n�)��`��y\n�)��`��y\n�)��`��y\n�)��`��\n(X�`��\n���\nn��\nn���H�;�X�Ev�ҝC����J�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4�ת���x\0�!<�G���H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H���E�V�(^�x���(�A��wP��|����HԪb��v����G�bF�&܌[p+�s�\\�>��E�s��>����9��#p9����\n���;�#a	�H�G�<�0��y$�#a	�HD�.��]�+v����\'������\"��k�:��}���8��*�Y����s�S�k}��g8`T�\"F-b�\"F-b�\"F-b�\"F-b�\"F-b�\"F-����7���N����N����N������;Am�ݠ:231�1G��b\Z0���级=?��r�������A���9z\"�\Z{��g2�7�\nΉu��:�/Ǻ��\'�-�k��5�Q�9���)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)����)}���)}���)}���)}���)}T�z/�{��K�^�����z��i�����z��i�����z��i����R+RjEJ�H�)�\"�V�Ԋ�Z�R+RjEJ�H�)�\"�V�Ԋ�Z�R+RjEJ�H�)�\"�V�Ԋ�Z�R+R��O�Q�?�D�w)�Glz���g�l�f5ۨ�F�6j�Q���m�l�f5۾�o3��Q3G�5s��Q3G�5s��Q39+�52g���j~��qFّG�&܌[p+��(����)����)����W(�����\n<���sbÃӂ��^�GP��~������;-�Qm�Qk��\Z��Fm�Qk��\Z��Fm�Qk�<P˳�<P˳�-��ro-��ro-��ro-��ro-��ro-w��WZ���-k��ղV�Z-k��ղV�Z-k������\"�N�_h��Ƶ�����~\'��k+xm�������V��\n^[�k+xm���&^k�&^k�&^k�&^k�&^k⵹�6�צ��t^��k�ym:�M��6�צ��\\���Ws�j._�嫩|5�����T���WS�j*_M嫩|5�����T���^f�ˌz�Q/3�eF�̨��������w�+�]��\n|W�����w�+�]��\n|W�����w�+�]��\n|W��\"��]��>��y��<��y`���&�M����y灼�@�y �<�W�;U�NU�S��T����Ÿ\\��Ÿ\\���x0DԖ��2Q[&j�Dm��-�e��LԖ��2Q[&jIQK�ZRԒ�����%E-)jIQK�Z��u�Z��u�Z��u�Z��u�Z��u�Z������a���u��:D�C$;D�C$;D�C$W��*�\\%��Dr�H��U\"�J$W��*�\\%��D����!;߮v��v��v��v��v��������+b|��/�_��EhV�^!�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�Eɳ�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˩�?����Y����,�f95˩Y\'��X�]��R4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�-}�e��I�&)��h��I�&)��h��I�&)��h��I�&)��h��I�&)��h��I�&)��h��IU G��g���=�����R���]T��jU���<\"ۓ�=)ۓ�=)ۓ�=)ۓ�=)ۓ�=)ۓ_�tUz�sZ��e{Z��e{Z��e{Z��e{Z��#ɮ�q�7q���q�H�`�o�;8\Z��18��x���=|\'�8?�)�N�i�������೫�?>�(95\Z7�f܂[1cq��v�[?��\ZU��jTT���QQ5*�F���U�?�1�	��	<�?�)<��`��D<���<^�����x	/���U�c/30�0��?ៜtn������uW�=�q��ⲻz����z����z����z����z����z�+�]i�JsW���ܕ�4w��+�]��kϲܕ�,we�+�]Y��rW���ܕ�j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��,we�+�]Y��~��徸����\'WU�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�UUqW?���]���w��w�+�]9��U��Q�ᮖ�|�Z�]˹k9w-��ܵ���s�r�Z�]˹k9w5sW3w5sW3w5sW3w5sW3w5sWs��\r���]\r���]\r���]\r���]\r���9﬘\'R�Dj�H��y\"5O���<��\'R�Dj�H�+���^�P��~<���#���r�������ğ���_0�`\"��sx/�EL�d����\n��*^+}B0�(<����)��«)��«)��«)��«)��«)�E�.\nwQ���]�p��(�E�.\n�P�����p7��)�M�n\nwS�����7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��K�v��.��%����+z���+z���+z���+z���+z���+z���+z���+z���+z�뻎�������~\Z���+�{}%O���	���^�?���g�����]����]����]����]����]�N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(ܕ�w�+�]9�j�f�j�f�j�%ܵ���p��Z�]K�k	w-�%ܵ���p��j�>���>���>���>��S\nN������9�?�Ѐ��W��~��F�	S����_����GO/��Ό�����\'��������9�����/:���85\\��|��G��r�J-۵jvtu��iW��J��1WE�x<��.��Ũ�����r�tq-�Z���*�U�+V�b�5f\r��r~y�.Wv�Օ]f�hF�hA���pn�*�+][�\\�ڠ��\'�w�YL2�If1�����v��P}�wJ�C�]��F}o�wi�	W\'b��mc����+?m:��Ӧ�+��U��z��1���Ɲ=5�z8SgV޻yW�5�T>�bP�)U>���Kz�BOW��F����z���K�t��j�t�����.z�G��a��\r��j���X��2W��]<�@�56PcCth�L�����0G]���q#�E���-�7���8C��2�����q�\r?��������Pl/F�{��?�:���<:�w���[��\Z�֨�F���qݱ��=���!a��Im��~��G�~��*m�i۟����.�Xz����/�Wn=Ƽ������+�6W����f������O���;<|�����0��O{���h�U��J���Vhew�W/p������=��^m�ׄ������`���0}H=\Zf����Q�n��\rA��7�õ��:+�cÖ�8�ܮ��Þ�å��~�凾{��F�j=\\���n�wDsQw7�{%�G�j߽Ε�㦰)z3n���N���{����~<�G�)ƚT��JW-q�����:��7��_n2�&#l1Bi5�9���W��I/���\Z�,�o����r�*0�����\\�e}M��t3�q�\\}������ߣ�^��[A�\n�V�����>6�t�M7޺�o�9V�j%�V�j%�4i��{��b.-��F�4R��6�����f�5F�\Z!k����Yc��%m�t���=����z��c�#�)c�u���VmU���\nF+�W����z[��uz*�i�\Z}�8_���Gٻ\\y�+�W��a<���D�G�=Z��J�u�Y��u�Y����d�����>����R,זbY�ϴ>�V���Nפ]�.�.�����]����\"\\��X}�3�]����ᮇ�����W��(��r�Gf��׺z�u���Z}�\nf��S��<X��:3X��Osgc+?7�d�N�j0V��3����]mf����]���~Pn<�Y�����`�r�n]�`pt���}+\\��w�r���o��\n����{����х��h�kZ<.C��k�A��h!|3Z�fy�q��X��T�=��=�C������`n�n\'N��A��m�=6|5f���/�|)�����>�#T��T�#T��Ԥ;���6	3�?3\\j�b�Ul���8�~�P5[j�-����{E1/�\n�_Ėp�|`�����T��ÔYn0�\rf�!�4g��`�ʨm��d�V�f��1�GF�0j¨�F�`�V��\Z�`��F[o��FZo��F�l��Q�F�!�0�%�����)�Z�R������.Lǻ��z�	\'D�sO�/������i�6,G;V`exit�Ǥ�R��_w�=������h��� ^�x�\"田�|���U���9<�v�E?��G�8|=�7��FE,����m���𷱸3A_�8�׆-���+b_�����_���3�s���ؗëb{{�+�\'�$�u�����wc�a����p_N�7v������oľ�D�(}-�����\\w���!�m�|G�wǾ���;���8���D�����^Xy��*{������_��~-6�|�x78T�V��jQZ�����\n��⍄���o$��E�.�v��Jꮠ�\n�vR4�/+)��3+yf%�z)��Bk)�֊�Z�Z+]k�I�LYe�*SV������\n�18V^/�Vʥ���|V���1�3o1��f^ʣƊ���qK%����2������y��7��<��2�63��N�l6�f�l����%^]f�0�/����f���o�KKyf���Af�����<3�2��+Y�2�f�2����j6k�f�٬��*:vѱ�R�tl5�5tl�c+n�ԩ�Y��2e�5f�2���5��J�[lv��n��}@�v3�c�);�Ӳ�4�Yru6����f�P%Xj�k�,쐥=N����Ϊ6�龉�����W����\\�4��$|r����Ok�\\g���c��\"�O����O;�>G�I�3��^3����̤�,���\\�ͷ;-ߎ.V����ms|[�ȩ}j@N���p����Y����_k����1��FJ�]u�i7�e������F�X�������P��4�=��g�_�]�\rG\Zq��^#I�H�EGY{����kG��@Z�K�9�q����Ǣ�1��c�/i9�\ngY�l���N<׉�r���j��w��~+��뚸�I�s��옳1\'|ʊ>�&+겒�?���^�����w����b����ڛ���#�w�6�v�Z۴M�=O�]�M�}�sj��J�}��7Wjm]��֩�ujm�Z[G�c)*�O���j�8��Z��N����jm�Z[\'*���)��jm�Z[\':���)jm�Z[\'J?Pk�]ּH�[�|�o�3���jm�Z[\'�nUk���:�t�Z[��֩��&§��u�\\����*��Q��Uk�Tk�Tk��/���/E�J�{Y�F��H�[*zK�Ul�L���5\"�T�E�*�k�F�k�F�k�{D�Q���FQk�FQ�7Q{M�\ZE�Q��FQk��E�uQk�FQ�,j�ԟ���-b)k�F�j�F�j�F�Z,Z��V�h5�֣��(Zo��њ\"ZSDk�hM���=�u�h�#Zo��њ\"ZSD�\"њ\"ZSD�BѺP�&��њ\"Zw���5E����xњ-Zݢ�.Z���.Z��њ\"ZS�g��z<��x���v�9|����\"R?�wD����o�΢�\0�yVt^P)�դu��P���gE&+3_���d�2�Qʨ��K��U5^S5^��Eg�����\"0��	���I*w���T�����)5gQ�EJ�H�Ͳ􎅳K{v�?�,��<��5r,�Ĵ]L��r�Q>0J�Q���h�]��;�*:m�jԩZ��4�=�O�M�i�F�6Z�O�N:/��:/�smߗ	Z.q^�������G������az�B�Rh�y�L���5���ͫ���*�I�4ɜ&�#���r�������o�z�ӓ��q�\'�\n-r��Zl�_>|Ε��=�^��\\=Ѻ7h1Q����IW�R\n�R�\'��ʪ�>W-p�;dR.���]��NW��tnr�FW6�������H#�k��]�flQ�?�[W�˴j�g�s\n׵r]ioz��J�ҫ�J��Y��Q+�U�_����I%�������﮼��p�G�W[�-eU��ҧ��Ү��^�z�@/9�����z��˛T�yv-���>,�W>�Wٷ*�~�Mx��_�k�u��9���y��˵�К�i�\\��A�JK?��^2aWK�g����`�Ow�K�c�X�+���U����ڳ����z|5V�����������|SˮO�ZJ�l[�h�&����?ݓ��C����Y��\Zm�T�rF��.�]���Fy�s�ɵ�V���rn��?������2���R�ʵ ��*�N��U}s�c�th����Ϻi}A���h�R�7�p�:�L/o���mr�Jf��F��R:w�����׷�z��&�������g߼����*c˵�h��������D[ԃ�N�U�q��o��o�!�y3*�{���^N��c�x�A8*ܬN���e�O�h��{���A8��^���\'qWg]���YWg]Yteѕ���m�*�6�j$\ZΉ�P��P���; ���5~�;����T�5��\Z�o�&a�\n�U{U�^�[]�R��%Kɧ(�T�տ�W��rvwutcl79��U\r��8H���p��rґ���wT��:Z�w��{F;5����[��ݜ�r�ܗo����Bl�������E�\ZZոz�\r���?�}�1�u��T�A߹���uN�=s$�(c���e?W����c�gyvQe���x_��g��R4>�B�Q�#o�V��n{��Oi>�A������Z_�>n�Y�ϚV�׵{����D$c-k�#+\"��D>/\"ϋ�.\"R�Y|\"�YO/�Cl��i��6�i��6�i��6Tb�YO��4����Xm��Z����Z*w~�z��:��!O�=��`O��q���w�5Y���[������o����o	O��_c�o�����~�K02|\"���7����H������g��l�����F\n�\"��o½b�[8G` �� �Q�6����]�cq��	8���q~���C���T�����1����	�\"�oG�\r߈��L��l�	ߊ��<4`�\n�_�K�0�\\�=0\0� �Cp(NǏq��Op��l���p.��c�⣃��?W�\Z\\��p��č�5Fa4�s��A<��1�`\"��sh�|4bb���؂%X�$�\n_�W����\'n��ۃ<\n(bs8Y�\'��d��,���AU�s���=�a��5�Ŏ8&�#8�7��F:�H���p.��et�����ᆰ�u���E-�1�N�X܆q����w�nL	�\Z��Tx���`e7XكV6��&Z�D+�he�Mf�9eu��n�Ս��Q�߇-�?�1�	��	<�?�)<��`��D<���<^�����x	/���հ%z�}|�{��Oĩ���ܹ��!�=�=�e���0�W~|U���WŮr�t����`���`�ؒ����e*w��C=��uy�.}���5�P4���))}UzGɀ /�5\"Z#�5\"Z#�5���\Z�)�W��K�&S�dJ�Li�)m2�M��ɔ6��&S�dJ���*��~�Ϯ�8��S.�K���L5�a����\\�+p%F�C��r����.�˹�r�:��N樓9�d�:����8G�9*�Qq��sT���U���r�]���v9�.��`�l���r�]�s�^ܷ�\\��Ŭ\\��Ŭ\\��Ŭ\\��Ŭ\\��Ŭ\\��Ŭ\\,���+8�\n���~v�#�=��\'p����8�zξ������9�z5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N�ى�Y��!8�����<�w�z{�4{�4{�4{�4{�4{E����^Qo���W�G\Z�x�=]d!�^#�;�Qz5ǉ����&}��>������Ce�6��+���x�}��>^v_��qOl�;�����`�ػ*�\"g��NK�2�O��b��2[�};پ_������\Z�pFP�4�������\Z�bG�+��ep�n���2�=8�����������#����d�ո��R�\rnį1\n�1&�a0�an�op��]��\r������3�&e�T�&\Z���G#`!�	�ь%X�$�\n�:Љ�����q#�(������|���q�������X��a������X��a������X�R�ddg�]�v��=��>�j�ld|\r_�7�/���8\0�pRd��9�)�oD����#r.\nΈ�\"8\'���u��~�������\"��7#�qn�-�c0�an�op���\rG���x\0�!<�G܁��c���=������ӂC��cHx�,IɒTthp^����0G��U^�l}����co�b��3b�p�}l�X�S|����d��ޱ>�㚰�+��ۦ`;Tc{����?jP���ߚ�q��q��q��q��q��q�dH���!�2�^��ː�2d���!�2�^��ːzR/C�eH���!�2�^��$Cv�!;ɄZ�P+jeB�L��	�\'܆q����w�n��o3�{�f�0L6�\r�d�0�0L6�ܣ���\'<�\'�$����4��	Nb�`\"��sx��_�$L�Kx����5��7�WL	�Ⱥ1�T_O�[����f`&fa6����<4w>\Z�\0�MX�f,�R�`�6�H��}�mX�v��Vb>�j$��Ig>�G�8�\'s���a2w��&s���a2w��&s���a2w��.s����2w��.s����2w��.s���2w��!sG��2w��!sG��2w��!sG�ܑ2w��)sG��2w��!sG���3׋�*S�۲�P�{���^�pId(�_��\Z\\��p=n��1ʼF�&܌[p+�`,n�8܎����k!GD��8��=�7#����1�~��#����1�~L�5׼�7�WL����ix��6�	;�Ý��N�p�}�3�pQk���:�Ҥ�����b�-\n�5�RE �%D�cK���5��P�Qc��\Z�X� d1*�E��u��9�k�7�3ɽ����o��3���<��.W���2=\"��R��堜D9��\"��!��!��B��C�م��{+Yf#��Fd�E4��h�Ѥ?�I0�ID��b��[d��5����6���A��8�~�(3\r摸\n_�>א��#��P�\"�h��=5^\n�\r�׆�kCᵡ��Pxm(�6^\no͆�f�[�����lxk6<o\'<o\'<o\'<o\'<o\'��(��(�!ސ	oȄ7d�2�\r���LxC&�!ސ	oȄ7d�2a�Ű�bX}1��V_�/\'�U�4b$��8�F�s�N��ݝW�(����4��Q���@��2e6�(��Q��Mo�7v������nz#��{�=z�=b��G�أG��#��{�=z�=b�\Z� �0h \ZC��#��{�=z�=b��G�أG��#��{�=z�=��� ��{�=z�=b��G�أG��#��{�=z�=b��Gm�C���v8�m�C���v8�m�C���v8��أG��C��=z�=b��G�S��)d�2p\n8��B0�v`����ہ�W�g�g�g�g�g���6X>X>X>X>���2R�e�P��\'���I����;�шS���\rXqNv<Nv1���\0��\0��\0r�@��\0��\0\"�\0��\0��@��\0��@nj�Lx��*2�Ud«ȄW�	�\"�]��E��R%������	�	�	�	�	�	�	�	�	�	�	���ڃ���k�g\0�3����`{�=؞l�\0�g\0�3����ڃ�\0��7lo���_���W��._]0��`|�`|�`|�`|�`|�`|�`|�`|�`|�`|��15�E_�E_�E_�E_�E_�E_��o�n����ɇ���b�a1���|XL>,&��ɇ���b�a)���a��a��a`}E`}E`}E`}E`}E`}E`}E`}E`}E`}E`}E���a-q��8XK�%�G����M`-M`-M`-M`-M\'K&PK+k[;�3V�*�Q\"P���5��倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅� �OB����?	���$D�I�������������<�ª��y �烅y �烅uk֊�3�M�����`b�`b�`b�`b��\n�<�_OU�&��[�;Q���au?�rT]ȿW�x5����V�<W�r���\"P�(�P���T7�=d���kx�Qq\ZY�,Y�3����g\Z�]r���139a~�F ˔���07p��z\\JAV�@�D�B�F�A�E�C�Gq@����>->-Dv�Bv�Bv�Bv�Bv�Bv�Bv�Bv�Bv�Bv��:�����g�\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n���A� p�8�\0�b\0f1\0��Y�,`0���\0�b\0f1\0��Y�&�M.\0�\\\06�\0lr����`��Y�Y�\nY`�\0�U�É�!�?C���)�!ׇ#�?��D�#�J<6V�\'�B�T�ό��\Z*�������b�vP�T+��X��[�R�3�*�j����Tp��,D�\"�\Z	��vE[��l	\"�D�%��xv<�\0�]\0�.���;������_(�������e��2x�Bx�Bx�9x�9x�9�J�&#����Y��Q��%�UG~�	^�!q��F��lx�.j%v������䎶;�A��CTG��0�g�=g��8GN\"��0�Ex�Y�˸{������o��5�q��/�����~��3�F�+wS%�;��S2f��!X<��dOQ N53��t�|�;���\n��\0��\r�!���&1�r��q�V�?[mka>����PC�h��S�ݸ����}�g��#�(k=��A����G�l�\0,[�+��WOp�9\r�\r�\r�\r�\r�\r�\r�\r�b�P��P��Pя\\� `��(	��n�����+�帻���k��%b4��t@�}�L��wa�l��ʰNrb��&;C:�b(��QB+��C4�����>\"Ʃ��|j.P�s\'P^�IiEAJ0鰳7�=|0OSh>�|1�-m~9�f������=�#QG�N�ɟV/\07�3=��z���9=��nh醖6hy-ʡ�+�T�d�gڧ��������pB���3r�\\h;�0��1f?���{��Qj%[����^s0�>e֞�rJ���˱��8}W��\0��`\\;���t4%\rV~\Z?����3��Y�=#�V���w����k�՟�\'i䁞6X�%z>D�g�逹�ڮ����+ԅ�Q��<�:`�u���A��������:1^8���H�Q�ǀw�`=�ԕb\"�u>��y�@c�1c���Y�9[�z�����|�A�A?�a t:e��M���P��\'֭y�5�k������<�=�q=���=���=Z�ue�Y\"O����>B�b�+W~���SM��O5���������h��၈Qq`lΤ���S=��O�m�o:�8��i%X�5�x]�-��\'�+F?[�n��9�`�1�]��@�w�x��߰��V���r	4U�5]濁Qn�e�ߪ�O����u\rEIŊ�\"�]������a�r\'�Gװ���	�=39�S��s?5����Lc�Q�a����1���d����a\'1ԃbQ�Pҩ��2e�d�Q1j����6�ho��W��h*vrv�\rv�C�W��u�hX�4#�6�5�\06	V�\0W[c�����R_�N�k�lD�M�{������澍�A��_����H0B�����r�-�\0�U�w��6��N���Ũ	�\"��x����_�Փ��Z���H�S��I��,���3�swle���	�{��=W�!�\n�9�\Z�*X������c	f1������c�O1�3X���3�j����)֨m�\n;�7��;x\0�H\0n� �Q�1���B�\r3mnKb�]��F�V��y\ru5=�`\r�ѻ&z��C�*W����aD^S��X�e�V�b�����+we��+�TH�F~�5ej�D���aF���s����ZO�E)��4U��S�R�\0���y����ޯ8�V�ھ�<����������a�c��o��w�L��Q\\�>w�U<1��x#oV��>xV����׵�6��A\\Q7������k�L�\\�������3xa&m,ܯ��5p��k�>��)h�����-������.��W7ܩ��N>X�Z^Ř>X��8z]U|�����M-ܫ���`�0�k�v��Փ,̣h�\rX��C���3<3��د�+l�\rkvǸ�؋N�sU������������j�ym<���a8W�놻UQ���X�ڹ�x�,�a�>hSm|����D���6u�]�s��zu\'�C��#����:�n�p�/5�kp�\Z�S!!��iֳi����ܷ�G�y՜��M�koC��x{cr����^:��#���Z������\0���v��T�ߵ��J���^p��9�-�����ڍ�����I#q��z�W�#��^}�\'Q�Q-��:\"j$��7�ZO��rD����o 2� ��\"�+.Ƈ�HCh�.4RWqǵ��\0\Z��UB+���Z��WG;_�����h�v�Ю6�Ձ�؀�؃w��e:�]:q�\0m�U�V8��/VՐ�����Q{�t�:��@�Op�\r�\ZIRw��6Rm��i�����/��������J�+�g^̋ʙkHwX֓g}g��f͆�f���rb	,�9��l!sc��\nf��՚-�+��c�Y���b�\\ǃX8o�[�̃Yޖ���#�����yg�&��_g�yOޓE�޼����@���o�|�F����>����<�%�>���	|�g���	��>��\"�_ſf��V~���G�y����+�(��o�s���a?�{��]���Sv����e��`��J8��(��-�\"\\�]�&<�=Q]Tg���c����Ş�:�.{&\Z��L�Ec�D��\\4͹\"�Ekn%ڈ��F����� :p{�It����D_1�W�D4�c��H㹟�(&�\01YL�u�|�����&�@|#��\r���7;�!�X�?�`qY���C��0�B��*.J\0��Q����b˂-���~;%�\\F�Ď�Ą��DZ.��Dt��!U��]gI^T�,�),�#�S?�эޤ(\Zan�\0F�M~�L�a{ͨ5Pw/� ��\r��@}Lm+!�T���B\r0Os��k���a�C(�⑷yDxO_\n��/����a�6����O���Ԇ�Qg� pp�4��Q;�NT�ܨ5�������V@=i��h���o��\'��iL��K�+�%p�Ka	/J�1�A��|����\\%�&)���`tTB\Z?!e��?JY,e�����Rc�3M\n.�����t��3:zL�𕲶�\r�����mc�G�NRv��WLb��_��R�r���R�ťDE�t)�I����\\!�F%�K�Gʃ	�cǈ�<)e��R�$eIBRt�(��O4��(�R�K�$���>R�\'�R�I�����!Rv��kRJL�&e_)%k�#���2A�)\'H99:W�I9[�O�\\(�R)פ�\'�)��\"�R���S�D\'+��,��L�\'�����-u��T)�I�����!RvH��j�U�0)�J9H�H)�Ұr�)S�� �d)�I9�$��U��\'�}2�/���j��	��i�J)3l���\'��kY�OH.w�1�v�̱S��B:�	��Y�O�*r]B��%����{����}.��&������Wf^���j��\n���3�9���d�d3Xf\rP�v =��)��M��,Y%�V�5b�Y[֙��ΕU6מ���\\7��ku��������iS-<M�����e��n��듦\Z��T��+��u���hj��V�Se6?��m���v�yl���g��g��>��k�?�jGK�}Ǒ�����5��yb>[�h6Oz�p��5v�D��@㪤��D�Ut���;q\'�w�=�VT��\n�(��0���\0��=������b�	{B��L%�-�)܎ۑ��+�%w�d�=9X\n��~d�x\0يn��cU��2�e3Gz�y�j4��\0��:��:C3YK���-�F��l6}����\0���Oy\ZK[�x`�m<���v>�O�|\Z�F;�>�v���g��/�h���-�ǻ@wM�g`�Nt�i@�|��!�E�!F��\"U����b��)f�����H|�i�/�K�^�CSa\"����$�HO�~)d%�D\ZY�qb��1;\Z$;������%Ь���:��N�����X�@��i�a7�o�\'!<���;A��yw��`���Я�7�-ѻ#���y�:����Qx���s�\\�\'���(�_����T��ZJm�ޙ�VCr��/���������^S�Z���k�Ǆ֤hl�)J��m^�UqS�*�x)�\Z+�e^�8)��Ȗ��b��(���b�8(�G��Rmh�],A�Á�ۂ��W��8p��X#֊�b�8,��8*���q�8!rD��%n�rqG�����x ��Z-Vcį�WX���<�}hs(\Zz�e��h�Ow��b��{�>�_�!��\"��UQ\"J�5q]�@?m�5b\rF_+�b�b#F�,6c��\"��a\r���%o��ه��e�#s�ߙ����:G��J���`Y6���c�d>����:�E�9���F�;�NÖ�x\Zli��}���F���X(�4\rڋ�����=�G�M���f�L�E���ޏ�>�9�����g4�a��\"p�%�9��RZF��KZA+i�F�����:ZO��3�I6S}\rn����m�+;�[�	���P6��>��t<�0A�9J��1:N��	�A:E����s�Ky�G?�k_�*�ɀ�t�~�Kt��P18x	��5�N7�&��-d�r�Cw���(�\0y�{}LO�)=��d$U��������3��|x�`>�s��Q|8���3�{	�<���	|O�I<��^|��B�#7�\"~���/���\n/�Wy	/c��o�L��[�����3���3������?�~�g�97j\\Z0�KEXK�ika#z��|w�\"\"E�#����b��!�E�s��s�\"���~n{R���qV��\"O�?(��X��)��H�����EwD�\\p�0:6�&勡b�8�H�d�WO�\"���.Kk�\"ci��ͫҲJ`��Tz�5���v��nH?-SZ)�8	����;v��V�߲9���~kw/,��m�֧��?-p����+\\����Q���EF��9��,���h�D{������̀%ҩ%�tԉ-b_�P����h���4����3��W{�Dk�w�(S��z�I4��Z8*���,��	Їj?4ŚV�I���&y�m��ƕ/�����X{#�ђ��5va]�����\0�,27��Mx�!,�|g�Kw~� jH1���\"�G������� < ���X���|4r�[�-� ���f��V�Ɗ�y\'k��/`	mf+9����F�l+g��3�˙��;����s,������.�V�~dV�.���%v�]a��*+a��\Z��n���L�\"�\n�H<O�S�L<F��;�(_�x�\'��KtZYc����5�j{�.ao��\n����fi6@�	ȇ\Zj�cc�8 �Il2�,6���C���9䤽�Jΰ�m����\0�YώRUv�� �]<e��\\\'L\'�`:c}�X��Й�o�w˩\'1� xͫ�	D�|D�bĶ;�cϰvk�@��L����e�XwV���\Z�z|J���V�ʂe=���u$X�VG�6����:���:旺���X\'YǳβN��ju�Ot�7s\\5 �}�F�7Ce:�a,2�AF�&����j��Y,k�:@Ƴ����k�	�\n�t�Lf��B�!SX�����-a=!?��QKjG]�\r�H\ZI�4�� �}[����i��^d��l=v��� �!l����LYc�dɾ�u�,��,K��l��c�VYǲodǖJ],�ZX.����\n���R+�VI-��Z�Jja���:mo2��:X�P����*��ܤ��J���+�㗟Fj���ٳ�RWRj̀U��sE�`�ƹ�\\!Ş�e�SKnϫp7��k�/�\'�/\"��h�d|�\Z��C�<���1�\'����G�&��J���ܑ���_�\r����t�+X����Ҧ����+�_��U�jr��t6��+	�iA�(K���La-8S�����5x��\n�)�8$�N�)��(�b)\r�����xi0ťݕ1�ˣ����_i�g���}0yy��E]�8��p�@�╻��w��+\n�tu\\�s�e������\\��X:�A�]u�څ�����ԴؔDߎQɱ�.:\'����]��)ã��\'$�:b4ܵu��;2j|Zl`5��v����t÷clJZ|\\|tTZ|Rb`u]5��pv3?�?�D�I�O�۱�Χ���I`���N�T�!P�lԤY�f������~}��\\M�W���\'~Db�n�э���&�{�@N����\\}bS��GǦj�f0����,Hd0G�}[���;�eՉ�Ͷ�fm�1��7aw/p�7\"*{e�w���Ǜl���5p򇅣\r͗:�;S6���5��B����k���ώgG4�е̓�yC�y�eO\Z��YU�r�\Z����w{D\\�Y��{�N��У�\\��=,}T`#�h���.�\'S4̙д�<�EN;�F6^_r������ƌ���H\Z�/d}�C�Wv\rY6�F�����G�vZUY�7��m�3>ʖ�[��Qxxk���=�-��S<���w\'m�>y�Ӯ�_���r6����.���{^X�t��M.���8���ʩ�������ְX+�������ֱ��#�Ғ�7N�NMn4zO��E\'���S͙1U��Y��t��{Օ`]K]��M�Mי�G�$�K��&[y�T:�o�V�R��R�u�/V!�u�����\\\n<�+�u���CW��}g��}���Z6lجɯ�BL�J�G?�1�`\'��Yo/�?_�Fv޻GN�쁉�����ΥJ�Cy�:��eV�a�s���V����8��-gl�vmO���v]���M;���\\�d�C\r���v��.\\\Z���������Y`��u��W�:���ê.������z�;��ug�Y�]<n������uG]˗�q�������i�گ�T{��J���+������i����|��eѵ�6?�X�e�Z�R/���<l���s���{ջկ��|���=MF-7�l���\\��}|O�k6�b�k�qa�LY1���M3�����{|ۯE��\'/�>�����m+�g��V����qYɐQ�ڌ��o�~����J��w�9�w��z��Ϯp�-�O������j�+/]q}�&e]�E[�}�1�J����5�b[RL����nS���1��Jjgn._�gG��}{�17bCݴ��Z���V��n���4�c�SF�]�n�ѿ����$ב��������^�?�1-5�at�t?7�~���Z��S������	�a��͟�>��;�|����С���J������U9� �+�Ӣa��:=񵽽r�+�R����������o�\'��~��w�&����˿ѽ���*vw�w�>m���n.\Z>�@�G���knX��_W|R�����zum_pg��o���/Ȉ�nsj����m�\\x\\�_��QA{�y�;���8�_�	g����i���;Kz���<Q|6�i�n�\\C#�������J�ٶ�����L\\9����w�5����͞�C�_�x}=�w�ݷ~�����!�2u�B�Sp��AH��*g�>�.���e�)�\0�/|��ٯcR��)�#F��D��\rlժ�o��蔤Ԥ�4ߎI)ɍ}tަƮ��$)Ŕ�k誛�����#���|ۏM�����Z���t-��!H�$�|���W�r�} ����0��e&��X��Z���X����\n߶{�X��Ƞ�g:ļ}{�c}���|��\'˦�m=2:}x���B�٧����0n�⑵�n��~���:�ڶm9����Vk˺����4�݋�Em̘�ed��=�/�&���^ށ��.�֕���{I���.�-b�Uk1���ϸ��ܾ~�m�5e_pY���6=�*}LZ�f��mjЀ9��-v��d�_}��8[�5g��P���P��㕂�{7M�g��y��W�)�C��c��O����c[}�;��7�ꦮ�M]��%S�.�M]0�򛧓��S���=�eKϏ��L��?��Wظ�\n��������n}����W�ypdв�v߷����O��Ըwg��ۖw�nx��N�n=h]��F�1��N�/��h��Ͳ�ɣv�����?;��J�A��7���y��w�[�j�7�K�ٵ�WV��~\\��yן#6&v�z�Q���	�fߍ8�]zX��7�ff�yu={�U��N�I|����\r�\r���hD��߈\0\'u��;֟L�v��\r-\Z��e�r:=*����jﴶ�(�Q��.�z+�k_S�ԤebOo��;lW|x.�oh��~k���g��쫳�l6�Qv���S�\rU\n�/���zA��_�]s����-�6\rl�x����/B��5�\n�uULt�v@T�H@�4�SY��\r��ؘ1I�1/Vf�G+��ma��l����i�/?����CC#�$)��m$q�\"���$�N�~��ڶ������;YCͩ�?��Uk��P}kx��Q��\Z�=Lf��-��Fni\Z��`$$fȭRhʥdh��ɥPFQʏr���$�\Z�r6u����~�y�gｾ���������}�����\n��ojn�J�S�X���s��V�\n�Ь����*��ު\Z����,��=�b��Es�N\ZM\n��9D�W��wٸ�>�uۼ���\'<rM&}d��X�X%���׉�z���9|�jH<$W��~I3\Z,�V-��`�%�|#`���O�����o����*��?�c|ӽ����ځ�q5\'���3��E�\'W��q��AS�^Z*7]��6�S�KB\0kJ������F[o��O�����^N���z���a�E ~��ĂE�^�E�6L��9�{�䰧R�׊rX3�TP���_f%`\r�Bv����g�w��?7�NK���߼\Z�.�B\"��h����m�7g\\H���xS���c���ojm�o�?i\ZM��-1��}=;S�;�)�\0���ü�Eg.�=G(�j���/�O���E&;����Do����}	r��-���J����G��O�It��}��>t�z�����:���Ʈ,��n���[S��|	����,�����̼^�+�e�\Z�2������lP��0��T޾���\0�{NZ���xV\\�9b?�ã����bO*r�x2/�\n��@\Z�:De��il��I��r�\nşB�ܧ�U�j̻%�����&H�[��G?�7��S5S/�s��X}�-Y���Z�d�>t�����{2+;�Hqg�B ���i� �nfrݵ�	��Gnh=���s��*�QGg���3NxF�[<{]~�R���=r4�qY4�#��ȕ�e���������F �n\n����� \"��ڭ�6�$�9��-8��jo��l�Yf�ꜸȉǼ�Id���Ç�:z\\����?[g�C�EB�����|^n��s�g<��u6nz5����$� �W����ɏdp�j?�.�h�8����]�`��#�׺yψ��8�L�լ������2��THM	Y�E����U,�}7~F�������u��;��y����|T��}��/��:���a_m��Y�D\rA}P���\nW�1����r�����\'�w|��P�6������qZ�w�f۬�T+�>2��#/��t�C?�0fX�L\n���<ECM���H����E~�>���\nŌ�*�g41|��ziKV����a�N\'uN��\0����Ę�D�^���X�0�o��8&B�c/D��CZ�0��+;X�ZxE6��싒zf�����v�p&N����ܨq���w�{����؎�A\"�礧Ŝiy�������!�v���g��d���(����Tda_W�G d=o~��j>v珡!\Z ڬ��@j�C��A��e�T�\0���P�`�p�O���W���/��CK_l!1����\"�Ł�o�`�=V�螖��P�Vb�?N�K��c�R5B�Pw���l�\r�\0�8�	P\0�� AQ(>�0�f\0����E6ş|��ۅ����ZA��ZeuP��a�~gg%�]����<���;����r3*�W��)ۉ�G�\'=�NǗ�P@r�.W���NQ����[Ef��o������>65�AU�����>�rU�9�^�];\"��B�ߖSS�Ra����i�����C��Lw�f5����@�g#��c��	�\ZT��1\nW}i�#�mP���ݻ�����Oa��<巉�~*{\ro���c��8��J���biV��gm��藍z����W*y~r��u*t�CգE�K4H�`���Ń������<������2�T~����8&�[�<����=���l���`41j�-�!�]<!ĚDq��z]��K-:���$,���j��tň��\"N����P����?�Z+/��拊��S�6Y�6�`7���S�z�����mg�!H�\\Ƕ���6=���5,��}M�cy�o7\r\r<u����4}���\Z6H9�E@_�H=���#����5��-�\ZFJe���!�n}�7�IK��<�ov�J$���{7첃A�:.6~l�_6��p������\r��5�Q��2�-V�,�UY9<ep����[o`e��iu	�k�C���i�9%[��Zh7�n���������\0�/	�.F\r\nendstream\r\nendobj\r\n73 0 obj\r\n<</Type/XRef/Size 73/W[ 1 4 2] /Root 1 0 R/Info 13 0 R/ID[<6E249F90F18B724493526401E1432DE3><6E249F90F18B724493526401E1432DE3>] /Filter/FlateDecode/Length 182>>\r\nstream\r\nx�5ѷ\rQ�a���sN�0	;P\"1\0%\r5��A��,[.l�erB����uT�	<��]����EqNJq���q�e)��f��-�d���,p�<��!\0A�\ra�@b�$!i�@V��P�\"���B\r�Ѐ&��\r�B�0�!�`\rc���\\�v�w�oʎ��\"�3�\r\nendstream\r\nendobj\r\nxref\r\n0 74\r\n0000000014 65535 f\r\n0000000017 00000 n\r\n0000000125 00000 n\r\n0000000193 00000 n\r\n0000000423 00000 n\r\n0000002862 00000 n\r\n0000003036 00000 n\r\n0000003278 00000 n\r\n0000003508 00000 n\r\n0000006078 00000 n\r\n0000006319 00000 n\r\n0000007007 00000 n\r\n0000007176 00000 n\r\n0000007416 00000 n\r\n0000000015 65535 f\r\n0000000016 65535 f\r\n0000000017 65535 f\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000021 65535 f\r\n0000000022 65535 f\r\n0000000023 65535 f\r\n0000000024 65535 f\r\n0000000025 65535 f\r\n0000000026 65535 f\r\n0000000027 65535 f\r\n0000000028 65535 f\r\n0000000029 65535 f\r\n0000000030 65535 f\r\n0000000031 65535 f\r\n0000000032 65535 f\r\n0000000033 65535 f\r\n0000000034 65535 f\r\n0000000035 65535 f\r\n0000000036 65535 f\r\n0000000037 65535 f\r\n0000000038 65535 f\r\n0000000039 65535 f\r\n0000000040 65535 f\r\n0000000041 65535 f\r\n0000000042 65535 f\r\n0000000043 65535 f\r\n0000000044 65535 f\r\n0000000045 65535 f\r\n0000000046 65535 f\r\n0000000047 65535 f\r\n0000000048 65535 f\r\n0000000049 65535 f\r\n0000000050 65535 f\r\n0000000051 65535 f\r\n0000000052 65535 f\r\n0000000053 65535 f\r\n0000000054 65535 f\r\n0000000055 65535 f\r\n0000000056 65535 f\r\n0000000057 65535 f\r\n0000000058 65535 f\r\n0000000059 65535 f\r\n0000000060 65535 f\r\n0000000061 65535 f\r\n0000000062 65535 f\r\n0000000063 65535 f\r\n0000000064 65535 f\r\n0000000065 65535 f\r\n0000000066 65535 f\r\n0000000067 65535 f\r\n0000000068 65535 f\r\n0000000000 65535 f\r\n0000008347 00000 n\r\n0000008642 00000 n\r\n0000036989 00000 n\r\n0000037016 00000 n\r\n0000078876 00000 n\r\ntrailer\r\n<</Size 74/Root 1 0 R/Info 13 0 R/ID[<6E249F90F18B724493526401E1432DE3><6E249F90F18B724493526401E1432DE3>] >>\r\nstartxref\r\n79259\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 74/Root 1 0 R/Info 13 0 R/ID[<6E249F90F18B724493526401E1432DE3><6E249F90F18B724493526401E1432DE3>] /Prev 79259/XRefStm 78876>>\r\nstartxref\r\n80896\r\n%%EOF'),(59,'%PDF-1.5\r\n%����\r\n1 0 obj\r\n<</Type/Catalog/Pages 2 0 R/Lang(en-US) /StructTreeRoot 14 0 R/MarkInfo<</Marked true>>>>\r\nendobj\r\n2 0 obj\r\n<</Type/Pages/Count 3/Kids[ 3 0 R 7 0 R 9 0 R] >>\r\nendobj\r\n3 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 4 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 0>>\r\nendobj\r\n4 0 obj\r\n<</Filter/FlateDecode/Length 2364>>\r\nstream\r\nx��Y�n�F|���, �y	G��b�ka_�}h�=�^�l�����ӼL[/0,[���:Uu�؇���?|���/,��\'��/����7����){8�ބ,���#D	;�!O2�P���L_�q{�������;Y3���f��t�ze����c�eU�F���%S��U%Ϣf}�a��FI���_���ۛ{�����A���� �B׵.E\'��V�0�X�-g��`]���L�-	ä��,Yc�g���wK����lU���]+;f���������m�d����N��������v����������O�yq\n�8�>����AW׈V�HS���wC�WC����V2#\Z#zv�ċ��2�ܱZ*Ğ�J)�<!�HR�:Qsv���K�R魈�E�!US��ࡧ��*�vW�����=��E��){q��=�*�~��F�Ҫ~k�$�d�U���YS�x�\\\0���I\n7\'�^��c\0��}pWU�\n{�z�>��T��M㈇Ӟ�{��wm�^�C����=��W\0<K��*YY$�y��\"���:��ՃzT.��PxG�h�KO�c����yB$o&�+\0\\�Y)��pY�ipqK���5�\0�b#��q�0�4�}R��5�e�jHi�}�@dT���~k�����AmL�U�rk�,���/��q�U���ϋ.ԣ�l������; 	z�g��3	�{:+��m�{<���q���UE�P�!�\'-t��\n�(k�D���NQ�{w��l(��%<���b�C��h�R�\Z�D+ы��/�`�*pRI�b�t\"\n0 �E�\'P�����a9����}���+�$��6����|e@���E�����}��ѵjΔ&\0\0)\ZBξZ0��U�\Z��ߊ\"��Q?�|���\ZJ5,a,>;.�|��7\'%�՝��u���f�r�aƳi���\Z���\'�7�~j%H�!e	$Q�x�����\0F`�ȖIr��{��o���I��vF��B\Z�A���z�\ZpZ-����&s�S�6Fm�Z��\'z�g��\0��\r�m/�^u���݃��\r���	ʙCr\n/�M�H�p�����d5��b���I�7{O��H��|O��`e�C�������+rO�IJ ��!����e����资%�B����I��C�?Y�qN�|N�B�\rTe@=�yg,�w�~�-G��=����+�/����Fٕ�H��NqE9xC���H��-ҡ��I���\Z���I(�Xfд�mC����0�dVP�����$hD��,�QJd䭳�*Y)K�ఓ��$�!��}���za����s�8���}�&W�>9+��\0�ȴW �F��}#(�U��gѕ�t��E�\Z���M\r��̈́�r��<��!?5�3����S�K6����zF������G���l����7%PKW�Ld�.N�a\0�!�V�Ld���Ǿp��r�G��ik��?qR��f`s\"�B��@���dȟQ�h8��3\\��[�\'��)a$�Ҹ&I�0��h�q��]\'պQ�V�r�o&�And�h4��M���/��<}Oޮ�R��Qʣ�����V8�.�N�*�P5���Su-�����6��b���Ä�>US��:����	�\0Ts��\Z�9�\r��{J����)�ƮA�ә�	J��%�E�RIe�X��f,g.�\"\r%���`T�l��[d�׷��GӶT�����\n02Yj���.�:[�5J���Zl��#���u��ZI�bHѡ�E��q��d6���q���u��Mݕ2+�Y��W�\\_e�:�ٕ�6R��̋���qǎ$LTr�j�P�LX����ˠ�dඬX�y0����5g ����ߩ\n��zS$�$HR�s>�\Zqk��p�#B)G|P���N�sO�����=�õ��[�[$��ҽ-6 ��1^O�_ߙJ��Qy6�%<��g��bĈ8��F���f��D�JC�33hr�<a�vKʣ0�����j⚂�����\"2kr[ԝhx�뢻�h�x�����:�J�\Z��w�8��~�Z:z%�G=)<,����$3�\\�\n\\-�BB��v�|<uy?mٛGȧcN�	����>����X����]���˅�և{꩘&v�ڇ�K�����..j��;o�M߅��\Z���Ѯ6t�R�	�>ۉ��X�ş�&MJ{�C�jW�~�.����_oɮVΓ#N���^֔��4-�c>��T�]�:*�ύ:���v8�sp��s5�J�7�ҹ��\"N���Ia�&�t�/U�|I�3��U��I���=�:���]w��K�G��.�;����=7������٩��d�0*�b\'v��u�HF+um���ޣ��_w�u�\r\nendstream\r\nendobj\r\n5 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F1/BaseFont/ABCDEE+Courier#20New/Encoding/WinAnsiEncoding/FontDescriptor 6 0 R/FirstChar 32/LastChar 122/Widths 69 0 R>>\r\nendobj\r\n6 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Courier#20New/Flags 32/ItalicAngle 0/Ascent 833/Descent -188/CapHeight 613/AvgWidth 600/MaxWidth 659/FontWeight 400/XHeight 250/StemV 60/FontBBox[ -21 -188 638 613] /FontFile2 70 0 R>>\r\nendobj\r\n7 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 8 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 1>>\r\nendobj\r\n8 0 obj\r\n<</Filter/FlateDecode/Length 2495>>\r\nstream\r\nx��Y]���}��Џ�`���e!;��7	Yvؗ�m��nPK������{�ڲ���@�=RU��ԩsJ��w��/�>|�,ֿ�*~�� ~{����{(� ݊����P��/�(XG�؅a��œ��[�#�������O��=�v\nq�k��]bͿ<e?>|WV(\'2}��Y���{Y�Ψf����)QH�+#2\'T�⻭�j\Z%r��v4�e��u��?>���&�lM�u �������YgZ���ʄ,W�T�jZ�D�Y]��ʈF�X�j&�v�v]��Vx�FK���3�Px�F�@��,����B�@<8#J}҅�T�,�Z�H�$���6_���`�M��ހ_�8�O$�>1�G8��Ϗ���K���D��kz�,������j���J�t[]�W�繲F�l�/�@�Y8���*�M*������>�sp�n�`]����(���G��l��JF\'�Ⱐ\\58��\rėR��p�4�\nl]3�4��MrIʠy|FI,�@�t�n�I�y�B�*z\'�,��\r.-PWcpH\"l�n�d	≳��d	 �� X�~���H|�L\"���T�\r��EY��\Z��,��H�����.��Z�é�Vɒ(���D��ǂ�a��i�tផ;j\0Ҩ\\W`�V��0B�\n��vAX�iQ�#.!�~��Luݸ���t��\'Lक`X�8�B �6� W�l�a�\"8����l���L��V�@���3I�� ��4��(\'�NS��\nѹ�+�\Zo��u�iq�w쉳cX��-a�����q�mv�eԵ���M�(Z����C�*�9�աVU����.�-���5�;hD]�,K�G�w��Ù6���g��z��\Z�	8]���*8�u8J���7` IX��/�7�qS��RϥM�N���+.4����I�W�TzE0�Y\n�s`%D�Ő3)�uŗ�g}F���x��W��9A�)�+�.�\nH�?�P��w��?��1��VD�\"��Q����9:�;r֯�}�BF�(^�(��$���>ÙHJ<JVx����L�5\ZzWVe`�\Z�BX�5/���=k���T:���fw�����EE���G�-+�����}R^��\0���HŖ\Z���U6�έ̴�7��Xt������\0��1$;t�F�8�-���J�(��|�·PЙeğ�\r)�#����K�E��Ң~Pn,8^����ڳ��%5XC�!N���\n�*��2�8���c�h	$҉�ܬ��=��VƮ\'��i�Y(B׾/9���5����aW�B��F�c��3\\͹*���qui�`=��;�h�3�jǍ�A�c��Zi�.�\r���2����3�H�j���O�CwEڲ&���yvF�P��BAL`+�2#/��+v�l����.<�+j銊	�������rH�4�\"D��Bfh:�P�h}��͘���{�$�[a��}w�?K��c�V\0\Z��h��-rq6.F�w)�m�	#������A�׶��g|����\"}�J��d��Ep7�#��0R\\j`�U��gNb���]#6Pzx^!�G/5� ��)�>$��E��f�hIw	��.a�j��A�1@3�(<{=v�j.�r�?R� �o2�g�mxݑ�%\n���I{�>0��Hb�N�x5��!�y�F\'��Ϻ��3��A��Lx�8L�4^�����?c?Hj�O�:��1�����5����m14�Y�.+^��������WeN#&�%:C��;%�\r�@�����<Zuu^ޒ�b:g�FA��D㯭:�(�u%A@�5z�m%l�o�p{!懆@�qW������Y�~�7��=���Ze,�/S�a/�1�f�⤐�\\e8Q��������rnӞ�<�����>���M�p?�c�;���(N6Jv�z�\0\Z\\{#���:Ҩeku�2��b�T�_د^���.�,\\�*���x�3.\'[����Q���ayIn�49� �`T��az�p��J�F���䄐|��FQ��D�ᓄ�z�&ֈ�S]Ȓ:�,��\"�g��.���dq&q������&ړ�ꓕ\rYg|�x�ƭ[��q�t»E�0ؾ7+ye¼��:��0��������D+`���Cq��l����!@�X��fS�h�?�u�@B�!��3�A�4��ٙf���\'o ~��\Z�e�w�;�5hQr�ur��:��-\Zo7�4Rw��+�Z�%ueiT�ˮ@|�NB��֤��b�ɺA���8���ki�q�&�ao!=Q���M4���jZ���m̤��L�A�\'��5 ��K�g�ũr�*\"Hn:�>ޢ����a��w4�^CX�����tP�%���=��C��a��6����MN /Ć�\'��ZW�I°���aH��oá AϮ\0R�V���m�SÖF量�4��C�1�.MAgך,i\\�������/�P�5Z�������h����mm�\"��ɸ߃Β���_��W��� }�٢�x!�A�%p�&���`;���_�-��\r\nendstream\r\nendobj\r\n9 0 obj\r\n<</Type/Page/Parent 2 0 R/Resources<</Font<</F1 5 0 R/F2 11 0 R>>/ProcSet[/PDF/Text/ImageB/ImageC/ImageI] >>/MediaBox[ 0 0 612 792] /Contents 10 0 R/Group<</Type/Group/S/Transparency/CS/DeviceRGB>>/Tabs/S/StructParents 2>>\r\nendobj\r\n10 0 obj\r\n<</Filter/FlateDecode/Length 613>>\r\nstream\r\nx����j1��\r~��t!(��w\r!�ZZHȅ�B/i�X�F���h�$v⍋�`Y�s�Gpzgg�7����8?���K�X�G�?JX�����Q	Jh*QT54e)��f<*�)���\'��,�G��%ޢڏQP�\'Ku?�C����B�4�\"��ĀXU��l_�\Z�W��S��օ�筌)�AMNy4��9��D9#���`�۶�(7���r�8�N�4�����,)���n��+g�>����\n*�yr|�q޶�y%bG*y�G�hE�(gC��$�a������y2�\'QxI�<�#�)J�]�$=�6��m��@��Οf��\\�ݓ�)8H!���\r�>��{�i�RO��Q����9��Q/ZQ���\\�\\���1���s����Ԩ�Иբ��؎��{�\\s�e�{�R��c�����?���l_�8�<n�����pwl��T��m�yf�fe6�J�\r�A��9�RǓ�9y�Я����D6�B�`��x��+�Xҫ�Z\"� W=C4��v�w��:�Qzb _z�U�5z>�}���fG�U!���fn˲y�q ��3R��Ȟ@�6w^�-�5fȞ�i�{�=�:�{�+�G��=��y��\'���o\r\nendstream\r\nendobj\r\n11 0 obj\r\n<</Type/Font/Subtype/TrueType/Name/F2/BaseFont/ABCDEE+Calibri/Encoding/WinAnsiEncoding/FontDescriptor 12 0 R/FirstChar 32/LastChar 32/Widths 71 0 R>>\r\nendobj\r\n12 0 obj\r\n<</Type/FontDescriptor/FontName/ABCDEE+Calibri/Flags 32/ItalicAngle 0/Ascent 750/Descent -250/CapHeight 750/AvgWidth 503/MaxWidth 1690/FontWeight 400/XHeight 250/StemV 50/FontBBox[ -476 -250 1214 750] /FontFile2 72 0 R>>\r\nendobj\r\n13 0 obj\r\n<</Author(Jason Green)/Creator(��\0M\0i\0c\0r\0o\0s\0o\0f\0t\0�\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)/CreationDate(D:20110721111428) /ModDate(D:20110721111428) /Producer(��\0M\0i\0c\0r\0o\0s\0o\0f\0t\0�\0 \0O\0f\0f\0i\0c\0e\0 \0W\0o\0r\0d\0 \02\00\00\07)>>\r\nendobj\r\n19 0 obj\r\n<</Type/ObjStm/N 54/First 399/Filter/FlateDecode/Length 593>>\r\nstream\r\nx�͖MjA���A7�V駪��3x����*�q��>�ZC�¸�4�V��\'��n(��RYI�\nS�u!^��\"S�l�E�X�e�Ґ5F�Q\0~ͱB\n�R�}!�J�d��0���WH*�@��+$�*:�eU\'�(\r�ƕT��\0RkȜ::h�n�\Z���cj̅Ax�Bƈ9v�ư�F����\"��#V\'�X����\'M1(l�=�B4+�9x<����;�B��.Z�; X���\n���a$��\r|-p\Z��a���rE+=,���}��D���X�����@�sI�Kd.ѹ���K�\\�撞�.co�_N�	�9a1\'<�ɜp�6s���$|�`��k�LR��Kt.����:����\'��؛�s�aNX�	�9a2\'\\�͜�$|.	�/�>�\Z>���D>��Erܞ�a�Xǉ=p�A\"h��.u-��e(�	�E�\"A��HP$(\r�E�\\�\\�\\�\\�\\�\\�ܢܢ�b�łbA��XP,(�Ń�A�(�(���D��_��x~}{:?�n����y9|�~��8T�簿�Q�������n{\'����~�Ƌ3N ��8������~�\'\Z�}�\Z�}�T���\"3YB\r\nendstream\r\nendobj\r\n69 0 obj\r\n[ 600 0 0 0 0 0 0 0 0 0 0 0 600 0 600 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 600 0 600 600 600 600 0 600 600 0 0 600 600 600 600 600 600 600 600 600 0 600 0 0 0 0 0 0 0 0 0 0 600 600 600 600 600 600 600 600 600 600 0 600 600 600 600 600 600 600 600 600 600 600 600 600 600 600] \r\nendobj\r\n70 0 obj\r\n<</Filter/FlateDecode/Length 28256/Length1 52092>>\r\nstream\r\nx��{	xTŶ�Z���NB�!!#��N\'��$cC:d`�@�\0	2$���� �h@��#gE�P@�Y�{A��x$��U��x�w�}�{���sW�_U�jW�Zkժ�!�\r` g��!�¾��ѓ��:=2������&zh\Z�\Z=f�ES�\\E��uD����-����G0�ر��*�\Z�eu� ��>u~�¤��ٿ&b�����A�������p��z[�<\"�wD�f��.$/E`>�O���.����>\"�u�h��Y�k�8�y)���,0��~�!�͚���wi{�B5rԼSk��}��h�`ԇϯ�laDvT&�߀�?�̟�D�7��m �۴pA�����=d��K�/ܳe��(�\0ޯ\'�+��IΙ���Ӧ�����52�G����zc�ɋj��/�a�6�\r%���δ��=��=4H�.`�\\)���1y=��cwT���VC3��h�Z�Fa0]�zE�J�a����-��Z�����b]�e�� ��r��I����?9�>���]|���/в����t�m�.}�1|�{��N�s�OV\ZG��^��ʹ��⍭T�R��,���&ZG���t*�����O��#����7����2���I{!M\'�G��mZߤ[�b�G�1�t��~�}�H�1��i4F:���ִ+��hm��P:�#!�U��(��Zx7`d��������������S����,�/�8�y#�C��X�r�\'e���-��X�����g#$�\n͇�\\QA)��@�^:���X��Jh�5� �)�.�cN?�������!ho,�l�fޣ¯7�5�̗\r�u�<���<M�eƔ��c���ֿ0�zE��ތ�W(Z���(z�4Z��{��8�`I��EI�B�r�p<��$\'�z��Կ`�I�6�H�BWw�zaW[�.�[���eh��[7�?(��G�l+ �C������ I!5b����f�A1�ς9�v�M�l�MO�7���4צ�VM-k���ݹ4\0z~��\n��G�ڮ� �>)��V}^Ѯ�6J��K�������i!v����_~��w@�(J&��n6Q@?/+��,���v�t���ڥUІܣ�����7 �T�`\'?Z��Xm\r�ql�RKkh�0�S\n���r	dr��\rKh	wA����ˑ��o%7�i�Kɇ1�2Z�J�]B]�.E�H�*�rH�SrTQ&N(���8xw�]�]	�\Z�<��H�Qwr��[@2�<�/�:�Q)���0�C����Z�u3ޖ��D���]��o����û�,��Cyi�4�ހR�H=���_[CM�:|�^�D�����������I�5Va�u�(�D�����z�^�-��*�¾_���?���I�[*��<��ܸ�Ԙr����RXd\'8��\"^�՜�/�KtF`S�\'|���*��4D�S��+��8�3�N��R��g���²��߫B,4���<�G����p5|/]u��0��9���{K>�H�y����z݋��Id�n�����{��~�����=o+�x �&u��b�G�k��]��}��Ur�`�rh}�2_׾�6^h����#%)H\nk�M{�ۧCH?���`���6��{�|\'��l7�\"�7p����e�g�*�G��1Z��3�GW�_h\"	H$������������������3a�W�ރ5�E��em�o�4�����O�)��=b*�ľ)$�s���cė��{1���7�Ay/��id�×o�Z�{x����ď�y\"ҳH{�>rN��Z��\"�lW�@<��~���W�7:uF!nB���k�k�q�xn{�3xk��e��f~�������E%�=�ί�K��~~��t���{���<3�J����q>MU��V�2�9��;�˱t\Z�X���8z���HS�rxv&b�\\�b!�,u������1j\ZcsQ��}��Iǝ4Lo��\Z�;F��(�v��h�Y���f����2�ƐE�cv�\r��\r���o���Q\"��&S<�3�W�K0���NJ����Ab*u�ɎS2Ma�B�\03ȡ��%1�\\�,�)x`*�Gn`��J���=�Ua7�\0�(C�	\'T�y���q��{Q6���>�����Lb?����?�$N�<`N�����s��z\0R>�Ha1��O�4�,���A�8�\r�����X<N�8L�p\Z\0A����đ�?|K�p��Q��s p�±T��sy�Ra\r��!�W�&�h(p��IT�I��\"`5\r��p�x��T�Ө8�F��h�4\n8K�l��?�948W�<\Z���v�O\n�^�\"_��)bd��X<J�ip	M.Ux)Mҏ�����S\r�\n�������{�4�2��\Z��3�+h&�\Z�+i��	n��9�U4x=�cZM�7�|�������\\�p--\0�D���%��T������)�����c.ީ�.���.�#�K���nT�����џq�O���×�r���5��(��V�k�w���u��>L��w���(�>F7�o�u#�q�ۨ��-�Nk�AZ�W�@7�o�^��Sᓴ^��R�4�����V`� b�m��t�.ϋ���\r7\0����{�{��h���h#�y�<@�_���^�������-�W�J�F��/��$� =\0|��	|	����o+|��_�w�#�C\nߣG��i��N8����~D���1=�D��v�y��Gh�(�~JO���[[�����/�i}?���_)����}�\r�~��8�~܋o�g��ӳ��\n�����#��D��?�s�3tJ�iz�\0���~���E/�����靈\n��U`���\"]��1=R����/cz�?b�1������7�������b��K���3�����iL_�GL���Oc���Q1���a%u�����u�[ɠ~י��!�#s�J}*3�`mQ�Z��!:]��\Z�f���N��w��y��^���?�\n�пz���\Z�U�8X��I#OF�L���r�v���#�g/�����t��!C�.\ZF#�G�\Z]1f�ʪ�O����o=����ZV\n����ۧw����u����y�2�dx��ܩ.�#��99)1!>�Sl��j1w��a\n3\Z4��+q�V;�����<8[��5`ԜǨ:�*��O�Y��9/�@���h�h������>g��<X�v6����(�T�rO��0U^���(�\\x�Y�0���jgI�t鬺��bWY�.������(�P\nƻ�s�\0V_ҷ^�)\ZB���%�Dw�� ����L���,)Nv���}A.��$���٫�P��&VW�8g���\Zg�o_��FM��v��V3�2��T�9�^�[���X¹*�U�>�5Y�+I��պ�������緺$VUa�+�K��J1�Z(�l���UU�A^�)�r%rU���.���9�`�{�{Vݜj�&�.H�.w5$%�p�&�8�**ݮ`A�����s},Ս�|Gb��xaK���bmUl}Gs��!�����6UR�e�lT�fYJ��:�:!I�k�-azo�����T1�\nN�Ef#���,}%_�4�[�κ�p���BNM��n9M�(������Vz���,�\"�E�)d���پ��b�{�ŉ�r趦�o.��rI�i�T�+FV�֝4%���ު���-��Z:��-+�Z�_�vÓw���)h���-q1%��9�4Oom/�.9��YRW�mY������m�R0��RK��H�T+�rB{gY��4��\'L9���p�Rq�Y\Z�TnŪH��_|�Q�A���s�����^X�wA��:�i��e���\"/h+E��+u;K��j\Z�S�N���I�h���%�mm�w�I����\"fq_x����n�ad}�o=��ɂ0}CEe�`QT=��>\rm�MN�\\��\\Ys�\Z�1<�A�TSrS�h�j5(��OmdR<S�ij�h�YO�.\\��i�\Z�t4\"뫲��V�<*Z�\r�\ns�}���&�@���C����S�[������]��g8��)�\Z�����\Z��z�Ĵ���I��AB�E[��͡M\n�C�:�Y�ׇ�5\r���ԙNu���65\Z�פ\n�������q8��Dm���6A�M��$�1�F�7�������X\r��\r*lj0ǅ8(FjU�X|:��P>Nې��[X�����n�*��NV8B�rպ\\���U.P�PYb�y�Ph����F��ա�Ԇ��\\+�w�C��̇kCT>L���O@^�~6�C�RU�z1����|�V�P��Z���h�O�!C1d*��$gh��L.�	�TO֊���\n�B���H�HH�h鏾��ͯ��G/?f�CW~��y�0���5?Щ�SWP\0T�1��� �3��l�\0�K��X��P�k(y�XӐ�F��T�-�;�6sa,�ɾ���ɠ�͠� ���D�(�F��ޝ����Sy���yg{k�!)�\\x��	5e�f��3!r&��Vs�\\\'����I�g@PF���3T�0��$Hip��a�z��=o��NԺ��.���#@Vo��r�:��P[�r�T圩+��T�th�\r\"���r_sa/�}��&h�&��&�!Bn�\\��z�m�&�L��.H�H.$\',���z��!݌t�Z�5�F�v�^���� y����������5Hբ:Iqq8	mVSR�EhE��nSx���@҄�c�_�}���;&DWN�>!�tBt��F���F�^������Fw�Fgz��\\��(��U8Pa��T�v�M{�br����u��W��׺\ZM�V��.n��I�S����_+�Ӛ���1`\ZÏS8{��W�\'�����g�w	�w�;�cM6������i2��L�0�)�Q?\Z�ʯ��0���\r�l���M��R0F+e�rYp�T*���2��ȑ8S����QY���`/oYc�>*��[�(������*Ԃ�Y���K֪dy}m\"fߪ��CyU�|����7�TEqK\nl�}J��C�=�$xϯ@{�βѕ���U�<Y��UeМ��6�ޢgIq��%��ʦ��w�(ɏ\\Q\\u�9�/n\"��T?r�~��M��K�K�Yk��/�~��]%��.W[���O��̼��L�gf�����u^���R}\\�G��Oʿ�\'�w���������&\Zʇ닮��\n���������+�8�MTćC_��)Sgɼfz#vO/����C������y�����(����\"0��ah`h����jǠ��mLwc�t�Y5�3X�,K�5h��4o�̓�\\��\\��\\���\\���&\ZX����w��H8pu��j`�e�\0���\\	W\'�2ȿy��U�>��A�)�0�P6a�ɦ��0Ԕpu?W�.~$�d��H	%���S[*��?����\'�N�����]�$�D�T������|s \Z�ؼ�V�h���j1)��.!9�b	�o/-��\\{�P�o�^j%W���Kv\\r�Z��T����Q�_�n�d�)��ؤ	�g��e{K����ѹ\"D�O�\n+xXkN��ͧ[�.���(��!Ҙ���t]J���Gp]t?�$��Yz���^F�s�_��w���	��5Gp���V^I����xz#f鑨�v��[��6��ӻ�?�>�+������	z�Np��Z�����MԑNi����n�|�5��i	]	Vнt��D�W�Q���tp������ƍnz_G����7�����܅W�|�H�Z�C�)�*��TN+�j�t.���6����[��)����et%�S�>}H�&\"E��m�d��j���^h�:�&��}9����b�Ak>��@����J���F��A�N�-zc��j���	��W��|;?ȏ�|\\���]cx�p���ߣ?�y��39q������[�/�}\\����il�����]�/�_��\'7e�o�kKh��ԗӵ��^Ļ�\r���\n-i�6���nţy	���\'�Y��~��<� i^��a���-�Z\ZZN���V=�?�������i!���ؓ��:F��i���:�˰�\r���;����q����^{Őh��2�e~ˆ�z}|Kå+�z ��7��*��ڼ��ev�{����)ܕ��X��j��x!/�+�*h�Q�ɻ�0����1Lt���b�X)n;�qX�H�o�Eڕ�m�N�-�k���3t53T.7\\aĕ,,�������4���|KNKq�ܖ5-�[�|�G�{�/p�\n�h&d\\��_O7�f��c��S�����?A\ZGp$v(�A�a�|�L3�f��o����x?�¯�;�	���s\'����`���5�#������/|���<�;�*�����\rX�]�\'�a�d�fmXnxɨ��4n40�l�6�vq(F�� �w������<ڂ�M�V�#��L�ᇅ��c6;���E�臻�nx�|�\r��\ns�X��W�1��\"[g�hh1����zQM�:#�Ӗj�1Y�h��0�����~�h��\n���v��\"X([�n��JF�v�8_D�\r_���`ګ<�Op�������ɍ��O ��!<�	��ކ��Z1T|�<���c��i�����.��/�rޤu��y�ч��)U,���1�3��Nعg`�41�Z��J�D���D_\r?�Ok��|����uq���ڳg��>{���T�g�^���4i��p��>���H.���MF��8�j�u�8�W�y4�7h�����F�t�V��-�\r�Zwhl�IQX�F��,�\r�7�$\n�e8b\\)�ڻ�)�Jw�L6vl����v#���^\ZLqO�]�t},m�\r���܁]�����$�9Mw�\"=�G��\'���eXcXeXb�\ng�D���V����i�\0έ��\"hsb�l�])��4Qi��i,�i5���-B��3=N�8�ʠ�Ixo��\'ԕt5��jZ�p\'=Do���f|�� ^K�l��>�^�<�n4,����1�����{k�w1[&%#���.�������#�ob�� ��a�xX�t`�KC��Oe\Z�Si}Xx#w�	�� \ZE�QxJ�DRD��=Ŕh\Zqe�w��X����0K3>���~Iݺ��.k:\0�t֩�;0�r\Z����량όF�A\Z0��\"J��#��1��0�Ӂ�hJ��{�2�#؟�T8��Cp.��pJ�Z~�x��1˱cTPp�r���>���Qs�z24O~�����:�j\n����%���x�-^��\\�;gz����,	�[��;���⡄�Ԝw�YS���?+[��B��osEP�@�s��������O���%������lo�X�1�=�&�������-�\'{�\Z�4��N�� �?��Kʏ�l���S�შĎ�8�������~�bƤ�.�K#z�.	�c/�UY��O�=�}l}��ze�\rI��W�]n+���4�W��k��KYY�\";��(�E���-�Dst�5:�b�GZm�L�������df��Y�M��º��0M�#Dvb�b�ō������6kjg�\Z� �\n�z������G�d{jrR�/++%9)699�f����XH��vGF��S������l�\')Ɠ�(�v������,Or�Q@V6\';��&��lHnd�S]�ǚ����d����FX�}���L�֓V�j���ܒy	�WI[-�\\���|\n����Oír\'*��[���9�e��s���H ���?�����E���������p��/��a��֥,ݽ;�����ӠinM����EIIJJiyQb!��*s~��)T�II�-�}���W����%$�b�o�cb��<�V��bj��/��G�!�	\\�˹T�h��:ō��;-nv���ڸ�	;�#{u��uh�О�_�?\'~V���w�Fv�fv&��rc��+��N1G�f�r����{E�1��{{i���1U�<����s7G��n�������8p���N �kn�U\n\n,\'Zvq�֍߇e�1�ʂQ�˂i#����]�5�v�ߑ]��ɸ���	q�[�*���`�P��:E�@r����u��٫5�������������} Uc�Ʊ�o����̖��[;�⼣ξx��I7��j�[G?i�oI	��U^G��ɥ���i9>ir�8k|���[o��*�����Ű{�w�p�yc�\r�cn�]�i�c���uSF]溬Q]8Ù��%�qwƓ.Qd���=��IIIv�Ǜ���3�hl7Ys̎��8{J�ɛ!RL\"�c6���4sR�/%��������܇M��f�P���H�#���ݛO÷ϯt�Zty��3+�SGs���9�l�g�wI�L7���bm\"̕�����N�N7{s8���!���^oVV�5��D��ML��m���x$i��s���׳\',$��q��>Hm�s��ȴ_�j����l�ns�&&�\rL[;��͊�}P�{�a�_����r3�ퟴax��r��J�#��g[ i�cA��0�\Z��k�٣R;;��n{g-\"�f�9�@��9� l�@d�M����ؓz�Hݼ�����lʲd�,��c�v4�?I�\'ʝ�I�\'O:����D�)�c��\';�E�B\\�\"�<bK�[G#~�0F�{<9�m�ٍ��q��i��brm\'m?�4[bϡB�;��G;%��e��@�N0�~�:�s�-\'�rz�!{A�N�U������\r7����&��١�JV����]���8<F\\/�~�FZd�\"�Z��4?��	�!)A�8T,k�y.b����-e�U��\'�J�a�ŰR�10����^���JN�OM�\'w�6wut]�=zس��ؓ�l���V�=��LK������}�nObJO�%�*�\"��#=;�C>��ܧ���}iinb�%�C��dQ��%�-u�GY�&�\n�z��%1��&���)aA���=��pu*@��-~�}:�\n�,�p���j�^���ةT��fsT��g���e\Z�3#:��M\0̅\r�E�\\���/qO��ۛkh�\\DE{Cw�$��+X�l���v�˞��S,��_�}`U��93�_\'sIf�I&�4IӤMڤmڔf�P�\"B���*�BU���k]����,*��\n����dw�_��#��(�?��J��Iz����rfΙ�t�}��}��	0M%5)o�i^��9)G�b-�ܘoS�y�u��(��3Zb���s��<VV^*�Ʋ�x�d`&��dj��l0�C��(Ԅ��?��c�\"�h�fM���|ei_Y�\"J�-�Z��-�[��^b��G�d��K\n�� ۈa\'f	�x�[cq�s��y$g$$,���U �6anѤz�&��\Z�&!3��G���&��]#��/-8��@@e��9������m����ڡ�H}�V��ED��H�rKߛ�q>P�$���ת���|nA�\Z��g�G�uߙ$E5��p���i��u�s���H�$�R��Ti���������5kS�$��rb�7I�bQX�;Ol��8\\�B�c��,;�	AR�bE	x���4#�(zN���W��8��奰@�� �{�h4`��h� %��9�zL,u$l,��?D��%��- mi���h�}T��/�G�<j�����Ķډluzn2X�d�;����%\0^rgW-�^D����n�F7�=C���\r����P��p�����AJs6Q�x����s�|{��7�����IXI\n��!xt?/�����#�1�\n&d^����\r�)p\n��B ����t�I�v�Ap�~?�Zg��E2�\"	�(c�ӌ�\"��B���\0���P�+%T`1פ�jjj�	�V�R\Z�A��=\\����K<�GY��X�����u��1\"��b�oUo�݊��/z�>H���\0>��EK���*f_(,I>��\rC<� ��L=AraQ��ԅ	�٢a�C8��x}>o}�/���P�̎,�l��h#J$��(t�=�<r r$r��*�W��!���{v5��!\r\"��)N�OjX�����f�d4���r�]����[���D�o�M�XOs�HJ]ŮN�q*�h�a�N��kHsp����;(�Ңh+Ɵ�:�w�ء���y���[�5h�\r�A�K\n/RkT�z��k��\'����Y+�P�+���l��H+�τ2�3l���jnFZ����FQ��h�:�:=\Z�CU2[����bC��2!������ސI��E�\"�z\r��-��u�Xd�e><�)�,���2i�=,�&�L,\n��ee\0���a���Q$�b�f�	\Z����L�\0WB��x[|v|a|y�p\\wW����3�lf!��9�h�d���+���I�b<C�q��M%�l�B��;�b�Y)vh`�s�u�h�<9������v�j,(�ٕaD5Ă�Uk�B�c���> ����T�иN�\ZmB�2���wi\0���@������W�>�<�M}M�t�t�9ߥޥ�r�����+�wSn�s:y�k�����Q�*�:�)�S�u��u���h�:-(\\� �h\r��zC��di�Rt���*��%A��3�g	��]T7��ts������Y�Fj=�[�qn�s��`��\\���k�U�J�#�j�0�ǍsN�\'\n3�3�)�!�7��z���d�@��\rf����yQ{��p(����ح\Z�w�4FG�D�B\0P���h�6�z�-ח^}yc掫��K��_y����V�It����S=�H������sNtTl�\'����#\n�{P@�.}�������f\Z�_�Gc���Ց����\'���q~+����\0{�?�a���t$��r�ґ����bu0�ІK\0�}��^����Q����\n��4j�ր;�\\�����[���i_���7P���/��\'v�vh�v8����S����|Vxhz�\\��$*�	�׸5�H���B�Z�8���������P�ݷ����°ҽJ\"�Q�Č��	U�ȩȄ�*\n_����ʈ�2ѡhŮ�;Q�h%T�\ZJ�$p�=y�Zx���}b�h0�1m/�8U�d@N�% \Z0`��	��|A\Z�\n6���������ל7�����В���U8��=Ӣ���_�2nf�~�<�1��/�wh.G6]\Z�^e��ۓw���N?Y���uUz~�)�!c�c+�`B�%�Rwn�y�����#��R����/j��8/6��\'�K�7&Owտ�ܖ�No����j��d i�Gھ�є4��ӓ�ՆV���%b�VFj�s���\r疍�-+�;rK�֪[�K�֔������Z�\\]��.�f�\r�N�J���w�XW�ШI��d<���l0�^�l�������p�!W&�5��+J������q?v|m\"�f<�k�KjCa!�,|@\rT+�N��p*?��IT���tD�T���_�6R�X�Q�c�������C���~�Ёu�5�$�sU�|t.V��*�u>4��P�z�\\\Zu>��:�eCS4ԱN+:CC�EGXi;�k����������G��ta1خ��~�3�,��zя�fLk�ǋ�e�&d�*W}Υ�X��w�|�Kd����4oy���J�.�n��B�����,K��>�_x����W�\'�y�͞PsU�GV_	��o���2�/7�X�|Q�eՋ�I}��zB�L���k���^��v}����Ç�7��Ç*�;P@S=Nj��M�+~��[iC|��|,f����0�w\"D���!�䯈ɺ@e<(U����B\'���D6�*l�UU>\ZWT�XJ�A\\*�.�\nЍ��THaF��&q���,Wp���@W�@�D@�|��P(��NP%d&,J\"�.G�G�{�N����j�1���ň�.�x���m�Ky�n����o8���:%䟺��j�kJ�\n2���<Ҳ�2�L9��J�#�� `M+r��axu�ѷo{df�2�=�aa᫏�s�S���3a�_�\\[���?�*t��v����#��1��X�R1*5�Ӗʧ�8ow��^깧a�ӹ���V��F?9���+�ރo���z����G��ʺy����V��Ui��w��pSS�j1߭��;��-��Y-ԇf�����\r)��`X�0zStytmtST�=�JC���GDQu#���@q��\Z���A��bAu`���ad�ٱ�c}N*��;�JY2��h={��#�u�\\Ydr�j���uU/�l��������[�c-^���cϷ�K>�ƬYo>�Y�,b��å�ۗ��fJJr���]�ط4�/}���zl����8w�sn���8.X��I���*v���6�T��τA[�����CQ��Q�A 3z��m���N?%&�K����.��6q��Y�&�h�\Z���T�3ʪ��n�V��[*<�r:!V���\'����\nO��C>�ߙ��V�%���1��TKx�튨z>	&�b�x�x�濎��Oz	[�(R)��X�kᜁ\n��`cQ�\0a*|I�@XGc�pE����J��!��.ԣh)J��$�5P��s����\n�W�]��}�V���1�]<�r�.gE8 �e6l!��,[,f*[��I~2��?�kx�26��p�����H�{�]е��ā��Z��w[�:y,2�����bc�\'�����9�̨F�߻��WGE>HLXz*�`i\"����Z%�/.��v�V+�\r<c�1����u��.�Ef�GE�l�,�XO;�φ�1SZ���B���:8G��i�:��*2�IY͵���<��m���U�\r�.v�{cb���s��v�>��j�X�_;p7T�U���iۆ�W�U\\m(Ga��%�P( �i/��ɠ.\nɔ���G����r`Jɤ�(c��(NƣY���}���z|�\n�~Y�:sv&��&ϖ�ʛ�]�a� �3��IY��/ԭ����itB}��!�c���T,.3���G28�ȣ�\\�I��`U��a�A�E(y�]����O�Z��O�І*C�����R�Eo�	|�-L�K�\n���\\�+yh؍�K��9`�dX��4W@��x��#o7����9�9��r�ls���{��W�����O&-����s�����o�Sw��������]��ܾ������j�N�x���X��H��5�\0�ò����J�Ű���sFHp����OOB�?lɛ{�ܭa����U*H\0Ro4{e;z��]�\n,~��\rvv!{�%Y!z��Ł�pt \0���(��K8��@��q��	[J�P��7¤9Y6����y�O֗=��_�m����3�|`8����pj�a�v������]�i���y�L������t��:i�o��b`kȉ\"��f���|j�\Z��:��\0b��7G��.z0,0X��۽PW���V�2����{���~i>�{���W/�.�xu=^M��nݳ��^�^u7 震,���*�9C!�)%�N^�>�9\"���,�/�\"α��C�G��󡙑�������ŉ�k�����2tY�[�s�RQ:例ZC=ȯr��֣�ô�.��c@]E�\0�t�Q��G�뒃f[���%��K!���B�\nC{X\n��a!�{���������qG�qljǏ�\Z���Ġ#��1%�����9�\0�i���Wp}�}\0�M�|������Qץ���W����i���^r�<�;?{���Lf]�ؘ+!��>h���K��7�>h��?�vn��&��BmB�����K�\'��xxW�grʍy2��r=od����������d�w�a���IA������|�(=L����\n�i���\'��=}V�<o��d=6m�3d�AE���~6�aU������LĨA�T��`j\\��Se\rQ���?����{�T��Y��;�<���\'�\\���=�Y������5����&�=��d���\n�s5G�c�)�\\�U�U�u�=�=����?����\nb��&2�	���,�Li�g��K�=���j��Z�b�q7���+����8�~?���]z��0[���]\0.B�?V\\f�X�����GP�a��a*z�q����Q�\'�j���\0�n\'�C����J>����A����t�hR)j&Ыz��T�~���S�i4c�x*����C��?A�t��ʕ����_kN�����={�G���n�{�3�0�|���H3�`�R,����[,7WwY�-[b/��L.\"�{(*`LW�jX�Kh��B��*�\"�-+�P>*{��BU%�3\ZL����ġ߽_U�U�5�)�\"�\0�����c�K�q��:��&��U�%8���^hj�N�U�<H�q	�<Q	bJv��g�����C\0U��\"[�8ڷ����q�3�.�#��y��.�KU�������v��7��ipҴ�t-w^�V���/5�D�)�S�Ǳ�X��������7��2ݕѫ*�&榮���H��L=\Z�/�!ڕ���sT�0j�c�\0�X5�\\~$K�oe��7�d�2�7d	��r��M&��e�l$��6�l�&�~��训�;�+�]��Aͮ�������&(�+~|���h�k|H��2wCj��y&b�G�ʝ��bbw���\nCMo���}��UqC��^�t&��䒢c�kk1��F�: S.���E��4����E�W�/�u�ڠ��	K\"�;=��7��c߲e���l�>bϯU��>uL��r��p��Oo�p�V\n�=��?�|��D�0\r��U�2�j�r��?����[�[ ��:b3�!L�u��o�nտ�Gحw.�����,�e]|�M��\'>+�\'��(e*�Zg�V�1@��94��_35x�MT���T2�~i���H���S&��/�!��+�F ��w%�\'�d/�[O���;b�Q-��j��8+��Ўti y�_���9��p�A,֮\Z$��h���G+HЭ�&�lrX�d;�����Hl���vv�!�:h�E�?[\"N���9Kg],	�T����oY<ktb���ղ/�f��q����9h��E�W���}>�P�J�z_D���:\0��MJE@�a�0W�V�U�3Vj�x��b���,NQX�!K�B����:���N8[��(6�F���X�\n�n\Zj@q�Z˝:>���w�p�Z�[=�@���&8�w��&|���Zǻ�.8��aH��ƥ-�_��μ`��\0g�\"/����݉��;A\'�$:�Uv�$�r�Z�q��\r���5k͆^��6�&`.ްb3��S?�؜+}81[qI�$�����i�F��[�`��K��������S}C}g��e��w>x�Û�5u���o.XqA�?cƨ����`��V|�}�U˟{�JI5�{~��|\'�+���y%=�����CPi��=�i3�?�yn���rc\0��F��HJ����{dvVy�w�����5@t�� �]9��<H+Q�4���[����deW�-�qF:l��l�t�5X�i���Z����N_#�ӏ��IC�({7������Q́zΎ�|~\ZN��G�����$�j�i�-��$�@�\n�V_  ���dq1E��Tk\"�J&u�\n^��pli͵�(�@eB�WU�{E�W�+YЪ��I�l4�����P�3Ym~�S�j��N\'�<����0��;�D�t3H�s�8�ͻ��7�����g�a:�5\r��J�8�A��/���#��A�A�S���X�@y�L���j\"���K���\n	�7�D�T�E���G��)��h�A�_\0\rz���C��{j��Cm�����ݬ���#�M��Q�\r`����_��Cp\ZTqtF�#qud���Fϑ3�4^T7^��]3)Uu��V����2>�E]�H�����i׌km��8�o+�f�!e�K��T��k���+N����H˧#-��;��C�Cb�n��x�Э�6��N=1W?�0�C���7H=pA��|�\0PC>d�E�I��\n�z�v���m�&��l\n8��!*D�p���֢��ftp<�(�b��F�<2M;LF��}X�vƔ�W$��3�\'��.*g�Iħ������Qk�tB\'j��yޢ\'�P=�g����o��s��^8�+�+��oiǙZ�-g<}ƽ헴e.R��C�q�WW����Ᾰ�+7�����>���!_�~C�m}� �c݇b�&�!f���(کq�.\'��5\"���YȬ�R�����Ts��\n�|�ǥ�e.\'�v�H��z���m!�m.��X������H�K�C�%�PxZ�)��[A�Y�ۥۯ;�;���z�G=<�������|&88̈́q�\r\n;��K��������������b�y\\)RK�f\'n{a������˙Y4Lh����xisNϚit\rN��jf���v�c�B���B��DAڥ&8Њ0��q�i ��7������w��ivu}�_p�K�бoq:�_����9��|(���B�a���6�\"�U[y�F�� ���J���������{����]�{�w���>62Nޠ��\\M>CꜢj�B�+�7�,z)3���4:�(y#h�&�YN�\"M�%d�)*Õ\Z=��!]X�������g��yg{z5^�fx�[�`���&5���h��˃Ã�rK��J�8h�C,���??	�\\�8NDq%ʫ���jRgd��{f���Bߋ��դK\0>��ë\\��Ar��f]��ꭅ���b�\n�,�����?���q���i$� H���A��T��!��/co���l�S�l�<�S�|�\Zp��gU��e�۫V��?T�T�����pMt�C�,���Ak��ܞ,ax\n��D	��;R�gis�v�*e�d��lE�}������#�&�䮮��f�.i���/�NH�$$R^��X�mA/*.��}g�\nb�e�����(��yw��#C�.gc�H���-���[XLᔍf�yE�{�ٯ�\"5q�G/� ��#w|���E�]�%��+��~�����ݷ�}�8�3�8�C.Ah�)�67������K�u�2z�tJ{��D���x�(F�y5��\r����Ijw} f���Dj�V�\0�F��BYәrr�\\�Ȋ��dן�zw%`�e���`1�p\"�\n�{�a�p#q���l��0���ǌ�ᇖ��	\"�9J��ʰ6\'-0���\r/�ϖ.\"�u��;�f�1٘`Z�_�^�R��p̱Om$�|`ڥnńA��\r��*��\"^(����������ʝlNM�A;�b�3�g����w�_���o5�?�o����cN3\'��\ZC��S�l#1��k���;�*��n����\\����>�������z��5ݛ�*b�`�ZՔv�v���4�tM2�����,�	�!;j��[L��v鯂U��AE��2��5�m>\\�\'}����l���%��*��0*�kѓ��I6_\\29�2�Y<�>�5{,��P��aXɾ��o��yDX2�ch�bB�fNYO���h�Ǡ�3�K��7�j�6!.��6e�:	��*��Ī8��zT�3 �-Y6m_������Ef���#��	8�ġ,�-ؑW�u�X#\n;�,\Z2����fh�]�X9ձ�ٞ��AO��yL,X<s�Ȼ��C�u9�5\"��a��Z�!.�\Znġ;�V!2S�X6)ۚ�}�����k��d�j+��\n�^���)���xp�F2�E����v\nM�LC���\\�3|��s�|��\0ks��E��UI���c\'%���Mn�Q���meq�2ث�}�V��C�3m5�lz�tԤ���v�*��l���2�\\����W+�A���b���N9hV+X���q��˖���E�읚^������?,�\nDJ��]�1��{*q���X�I�j�\\��;^,�|kOb1����f�Q&�E�l�Z\\��w�#���3��N�}uOB!��cګ�����v�ܨ6���� �`��{��9)�Upح��w-&xQ�φ��E�9��s@!�Ť��$ʝ�m�U�$����>fϤR�\'\"�y%(�e���2��@����Y1������\r�,eױ2i��p9qb�R�a��q:�|d:�	7v�T���R����p\0nT0���H�ьF�\r1\Z�h[|�E3dJf�\"���9��?*�7�rud��WeS?4�V��̞����\'�q�*�/�0�GZf,&|�0�M��B���2��� B2��J���~�!�&�ُ���v?�ܲ0C72�?q\\�^܄��4C+ě�6*�X)k�JZ\'���&]t��n%(�*9� �;�6�=�ԭk#���J�/n�T�,�  ��ől\0?ò�24&�M�S�PY�5u�,��+f��&9�&���\Z�B�$����\Z�E�	�L�ț�m&��cj�Iq�{��>���-&���V�&��c2���F���-<q���RwL�\r�!Xu��Є��H��+�s|1�ȅe��5 I��qe}�3⺝|ڹ��Klwnq\0A��޷4qe��̝�B	��!� $�*P�H�GW� 5$��v�V�Vm���֮���V��O�[��m��ؾw���Zۭ�U��V��{&	��������Gs�̝s�=�{�;3�͚��G5�h>�\\Ԅ�����H���dpC���tm_S�W�L�FO���������[cZ�-�����1+5�h7s��-1�Op{�]1�i��=����C�;گ4G��a�xM&����.�-�xH�Gs@v �#�q����;���FIO<D(��<D�$�Ӫ��T�IRKR�I\n�O}3����O唩5���U����ILxm0��ЛC��:�C�C�w�죡φ~J+���U��� Yr����+rt		q�dA���h�]�&�cx\"D�x^�����(�.V���~\n�Z����D��\0��{�=����t)�=\\��3u,K�xyzQR\\��.R�\'	�B�ec��Xz�/�Y�+яЕdd��J��C���.�Ȩ<]Qɬ6c�\0\\�h��%ZM=Wb(��(G�eT��}�D!fŰ1�����E2�ԥAw;\n\n��0S:�npp�q��D����JbF�,[*�Y����e�0CF�ٙ3�s���:�љq���B�1���̸���3��I&���[c�+�R���B���Ƙ�������`�̙s.{��J�8��V��х�ʾ��u%�N�ĩV���Ȣ�ݻZJ㗴��bGӮ�����c4��`�A��#�����\r�:p��o��Qj▕�5Xũ\n��Fq�t�ep�,�M�Lr��2�g�+_W��t(�q_�>SdˬL&��U��T�er�2)/��&�S�*��\Z�Y֘gR�TBR^tRRW�EA�T������8C��(�(�h��\"Sш�����iLA��������1�ey��읂i�%}:,�ee�II��p�a5�vu��	�Wn��;RV��/iu��Ȅ�2�,AW&��ɇ{�\r�Z\rH����Ğ�)����n��X�d�:����=\Zw\"Vy�V�\n�>��U�8A�|�WȤ��v����������p�hGt����*��е-��=�x�7�F{�̔�̇��,h�,��J94S&Be\"$��d+l	������XEd^�KǷ�^��1�K�ҹ�������D%���\0֑�	\0D�5��Q0e�6�&�ư�0�5���id� (LѺ�1,-��	��H(�Ѻ��J�wi�\r{�wo�u��h���B���b(�hq՗ph2�JO9��ٕ�n%*��U���e�\r��n=۝	W��X|q��=8�]�.1.R��v_|0U\r翠�Y�&4�!�=�ʾxqi�F��{,�Jk�\nM0\\�V���F�%��pM��o�W¨2�OC2�Īb�3I�숨jE������P�D���V�5j�zn�\"����Q{�O%H~?9��ʨ�2���&Q���\'3�ɉ���Uɉ�����)�@ٙ��kCmI�1;�`L�4�C�G�d�U�K�,C_<�)G�ײ�|�09Nm�Jk���sR��SS���$��FAz�$\n�/�F3*5�\Z�*�eBe�P����G�����h�Z4�P��9,�I�I��\'��W�y52��)e��]vXvR$��{\n�8�\0�9Gyo�! ��>�0$�>](�_�ſ6!�*b�(�C���p����5���$q��7��1�c���Nek1�bp�2:��7����C�l0�f�\"&�s5���B�\\}+F4F�`�-x����DA��ِ9���YFq���3<�	���K��\Zt�2uN�Z��L�D����\nE�\"��`5\n.���-d�BX����E��ȝt�N���g�u�Kt��Og��U1�3{tE\0B���8�q�8:�C��=D,���/D��%�3�:��}u����ư����4�M�=�O޻��+����u�tq7��5|7}\"��E���\'�۲+n�`;�k6N�+d/��e�A֠tC^\n}V~\"lk�񈐈w\"k\"k����E��T���ё�{cVh��\r�.���丆x���A�	��\r�+ܜԔ22�HZhڦ߶߶߶߶߶߶߶߶߶����H����E�V��:4��sL;��}��Z�\"�e�>\\�4{� f{�f6���p���¡̠�3^X�%���1��l/�4���*�vr%^8����aǛ�gxa�	?�9&X�	3<�C/��ȘpE�b\"�^8��(�z�F���C��{^X�F*}t���^8��U��*ȵ�?x�&[5�~	�\'�[��v�e\0+U������ ���C�6�`�F,�H�%I0�#�H�%I�d#	�l$���$X��K6�`�F,�H�%QX o�����CXIeQ�EX\r�J�#��t$XP��m�\Z��G���38\0NE�T��!lDx8�(KH\0�!}�ԇ�d�c�1��43V���~uL+\'〟ǋ%0&8rLK+��C�\Z;�����KJ9~��g�L��\ruf�K��B���p/�������Zh�<x�U-�s���tB�tW���8oC,���}�w��ϥz��\nLP�/.8�_3P�=�\0%;��b�\\�u�ޤ�j@^���~璒Q�TSMp܆TgC���ej)�6�̓<P�pLq\Z����wL9r@�ĕ��b��w3~��Z�p5�ҿ�;�J���ݰ@I�2tS�_���u�����`C+y.�I_�$e;����<�.�^�!\'HH�o���\nX���Wt�O��~TJ_�T��\0�t`[�7|�H�kC|���v�\n�Uĺ�B�\'���N���\n�;�	|�t.�����<�=�ֈ(W���&8���PgG��Q{mWԗ�+՘@��K�J�5y���D�R���e^�W�P:J�_S�_]���,�S]w�;�l���m7R�\\�o��z��c��\0���B�S�qA�#��F:�Pی�\Z�^_t�Xt�Q_�tl7���Qj��\n�`Y~lW��J�y���(wmH��W�~�����њ�����}�N���Hj��o��#���4^Qo��/��v���t���D}�aF�/��0�?�E�퓦�Rls��k���(S��ϛ�Q�c`W@�5��ѓ�$��^k�1���(iK���1�s�q쳘u����%n��|y��a:���8��4�O��)�g�Y\0��H�%(\rpD��?=Cs�zf�Sg\r� 	����gF�J�:��8yC�n� ��߈������9������������N����b�O�ff,h��Ձ�D���/r�H���#�P)�ټ�������\n�fF\"���;��5b��, U�6��)٘�^	�Q�F���\0��p��t��R.Ѕ�+���Ս�NC\0�L_6�w�޹��_w�XD}Oʙ|�J\Zw�Vڱ�Ӊ);1\'�\"�y��`}�_��O3M���|��/f��~���m@5JFtJ5s�����;(g��Ϳ��.�	W����;�3 ��i��k�����U�k�IN��U���jw����!����2���O�r(1��w�\Z�`v@;Ca�~8y�B��.��ZZ=n�Vt��N��Gj���Ᲊ.�J�\Z�)�ܔ�1�P/dL�5��ng�gh���a�����6�V5�Iuޣ�:��Il��f��_dYp�-6�Gt�M��!4�.����rgWUיǙM�u��*�z�Pi6�WYʅ����ʫ�r�����<>MR�lw9ہ�<ʂ�{А��emo�\'X�%���-\n\r�y�ڲ�ى�t8�@�0��D����(:\0����6����C�Vk�(8(���ӏ��.�KDs	M6�����]ζ>��З�ED�.��k��q�\Z:<@\Z�t:�@���>�@W~U�l:��k��v�EO`�l��a�n�\0����8���]l�5�\Z/�\\\0-:<6G��65٨I�v���E�]�[��3�)���F�N�����H^���Jg�HG���n��\0-I�m�y��j�Gק���>��}�Y�9��it:��^	\\^�����7�kv��.��ŧx`I��H����lAk����T0����+�E��\r\Z��A��~��Q��R*2\n�FF\Z\n���������P�7���;R�?�pD�B���������n����V�N�����c]e���B��J]��t��D.���n;)K���.@��鲂��-K�\\6�v�BOm%5,����gA(��m��*Ͷ��a����*4a�YrH��@�Hm��m�6 �f�v�0��z��EbD&�\0}�;;<���%B̡N�6����t=bc��ir6vP�f_Eg9��6{N��ams���5J�p�]��̯l�%ڡV��M�Q��I���ٹ\rga�ɐ�\n�Q���p>��L�p���j�8�K���n�y(��g\'��gH[�ח؏\Z��y?��_e!`[�\n��;\'�����W����X�k�����\"�\\��0tu4�a/]��p���x��sǹ��}��2������`��p(	XN�V�H�#J�8�D�\"qp6��C� 2����I>Ԍ$�\0O&B}%��?�������\0�\'��&K\0�����3���/��7������r��+��5��Xz���A\0\'�)\0��i\0��9\0�y�F>�|>�#�k\0͗\0\\ʛ��O����a�Y|��ܐݧ��V��t�SU��d���n��U��a�L�Ml�1i�6��ɲ�Z���\r&��o	�ҧ����}D0��Kl�*��m�+_&N�mX�b�b��\0�d�r�L\ZI\"C�P�Cr�i�;2�4��Jl�z�&s�b���Od\rYG�#��I�<s?9H^%o�����C�)��|I�A�\Z|\ZX(�����@F��\n�(r\rMƐb\"��6��� �Ƚd�~���^�<y��L^#%���g���>��&�$�42��I9C��ed%�3YO�\'[�N��<M�#/���!�&y�|@>\"��Qr�|C=\0Z��?墕1�D\"�T�A�H61�|RE�H�#Y@��ɝ�.r7���Z��l&���#�1�����3d9@^!����{���r�#_�o�Ir��%��\'�Tz���帀��G�Bn%��;���l%�����\"�	����9�#9��R��sL\\����ś���[�6�U�ql*����#ϥq�8���ay����X=�3JF�b��j8��##��)��$��z2��ɵPn!��m�����b[R	Ǐ�IP#Uز\Z�S������L\Z�E\n��L��{�yҜ�4�h� ��H�iZ�&%�d�j@	�,�~���~���CH�Q�T���\n8̆k����@�=P���V��70��fQ@�:\n�߄��!b�ԯ�5@c-\r�F2�ͤ�+���H�݊r�P��Q��Tn��=��$?B��̑;�q1z�\'��y\0�{h�؃���M�ar؎-�`K�t�q�QOT�<�߶�Hmbv �N�օ��P��v�J�J_K�6��2�T+�Ū�!6��t��\'�<H�^!0[����B�p��d<��H����3d�?���qg�K�v,D�T���Zle/�!f���7��\"1�\Z�\Z4w�5��zG�f�n\Zx�\r�!k�������|�vv\'�	{�㸺�>��O:�p��i���\'���@�Y�iE��lD̦>�x*�Y:_wR��5�X��c����}�rA4���\\�X��Q.H�J�)UC�D�i�Q7���(��B(տ��,���=4`��C� b��C\"�p�Ѓ=�{X�=P���#����nG(Ps,j�C��Qsa����t���31� fZ��5�Qm���Xc�\Zy�؂H\\c*) =���Q�0�>�נ�Z����J�#J|e��HqRLE�C�b\ZR�#ER<�{��O^*a��#~����N���=Ĥs0k���y�%2�LY�2��0�%x��	�3ip���~GtN�b���d�3`t�90��!�A�WE�I-���[O�@�2�X���qB�2��0/�٘ƅ0#��uĔ\r_���!�<s�� h�����0K?���0O�\n���?���9�ٯ N����;�RT~�*0������~�g�3�P��X�~Y�~	f�,H���\n`\rD)�eA�d����e8 =�#qN-�g�,h��AP�b\\�άV����b�Y1�z�v�w�Y%�j�%����x�\0�Fr?��%(AOP>NvB�n�4�{�sP�29�[�-(�#�A��hz��o	��|@��(y�%��^��|0d�A|��*^	Yx�]�q|\n����p%����g@V���|<�\Z���yp����|_Y�(~,����2���y�cjjjj��\n4?�T3�\0z\r�㬫�qX���~G\n�u�uM��+����	٣ϟi�\\D��Yr)�r���\'��א��>�L#�ɵ��3��-d6X��t�N�֦�OG�m# ��7AnA=�Q�K��?�)�~����_���]��ǐ�R����_���4�߸�0C�k:�\0�p:���te��y��ÇA	��z8\Z5E�WCD@4�\0\\���z�G��j��\Z��j!� ���~�o��i6f5혡t�X�#�(����u^��0h	ʇ�v�\rA	:�����\n�MA�.z>h��Ԁ�0?�s�SPCs@� c�h^P\'@]����:3_�����4�j�5�t��,�}�t��X��0(t؂��l0��\'f.Ty8�5D�ÃB�3�L��g�3�X��ɱ��Z}�>+�f�����ઓnՐͺ���5���^�O�W���ĥ�;jޖmN��)IY��G����+���[9%9�t��2>-��p�O-J���\'�;VC�>2�����3]�t��VC���)��f�(�hn���0�0�	��lk]�6�]��V�j��I��L��D��0_��/��k�\n80�G\Zs�:ܵ�	������}�ﾍ��f��mkٻ�eh��QW�b���	E�n����_����¿�����C�/�t/{�ņ��\'e\'Ռ=z�;+�\n~�����PeH���/����z����\'�|�i���Ⱥ�,������I�������>>���w��WK��&��b��#�T�B��\'�~����6.��4w��Wԃi�v����<���	�c�_���]Ò�U��9�i��{U�]q�oX\\�杣�|� ��͎ޯ�Э+Ў��ȋ��ǒvɞ[�����[^�t׉��_y��7���_�	��񢡏���ڜ&Cq����ߤ��c9.����M�\"��MV���XW��2�Խ�0X� M�M�����D]Z�Y5�2�f�I\'R�Z��D�ⱶ�ӵh���5�B���1��vfU�Pi.k�4�MJM���,!�qh�H�臅�!������{�ս�+Y�U%�/���K���D�mqɒ���m�k^NmM)��t�g���Z�9;��]YWFy.0dC8\0:D=�(�T*X�\Z`�\'t�6��z9�ò�;+��,{�-jǃ����0はO����l]���|&����o��rž��\\]��.gɫˎE\r_zϤ�?mztPPN�읒M\'Ľ�ؙ]����߻Ni��ɣrM�^�\"?xiݲ�QE�#��{s�i)�j_;�#r����E)��_��������a�Q����nz��%�bͳK*b��4٣e��RS5a�~iæ�\\̭�_g����[K�\'��ɯ�1n���ڟ���o�����O��uY���ͅ_�3��}Ks��v�ݳVM��M�\Z�;�/�V^�^�rњ]�u/�w�Q��&������2Y0	�W�J���S��ZP�.�-g�YV?B����XM:]�v{������|�>�e/q,���<O���\Z:��������o�}IO}xz��������}�}̡�߿�ī���l:1|kֆ9>AC�z9�|j���#��?�|GOx\"St�����ܸ��铌x�#�M�3��s�b[�����m��\Zk��]q���%u�n;�Җ�7m�=�J�y�=�u��ƹ��ԝ�[��U������f�Go���A�g�O=����L���h}�DgD�����e��nu��\\a�࿋������$���4\Z����}������(z��O���?��aP�#$U׊MmNG�!Q?�HtL��̾�aW9�����r1��t�|��եg�V�4<��~ي=�j7�m���l�窏r�X���閒�⚮];\"���@�����o_H��qo���iw�k��x\"^7�v��鞟��K���4�[^�>s{�����/���铷��2ٓ��:S��yT��2yf�6�%���OA��P��L�^�}7=b��%0��W�x�ѿ�.��<]p�Qt*�gC���{.O��(W<D^����İ/��.x>j9���R8>?\0GN���)P=x����*\"�j,zȮ��o��\'	�kzSІ�K�.�����f�%:\ZŬ~�[��V��>O��h�^l�gީ�Ӈ�.��\Z���Cg)��<ҍ��d�����k��f�;�6Gj}�{��	ZD�.�d\0O���D���.��t�Շ�߼Y�qDa.X�\n�yi���s�)6�+�ε��r����>o��,�PX�?��p��I�Sym]��J>�������\\n��Se�yRy�PZU��T�\'�!�ɖS�*s��QB]E�Po)��z�U�-HNz\0�\\�CK]��TW9]�ԏ�Pn��i���Z��<�*\0�>0RS[j�3�ʡ���\0۴��R�	��uյ���Ǥ�\'�`�TSi��\\>����b��%T�*��(��Z9�=���T�>)�k�q�*�|��BM)�h��,�j�kk�-�Y��Tse�PU]\'[�J�,���*K��z`�\\Z�M��u�)�6>f�A�Z��tR��rK�`)/�S9�U�FY9`UZ@�&\'����{!��O�8��V�6��\"\r�R���\\��ѹ�%��n���2�gܶ&$B$hl�pI#���j�1#�¾�8��\\�-�/~ޯ�z��ř�bk���4������\n~��Oqz�5=���� �/#C`4�!/\\Uh@�W���o��u�=[�4y�C��|����\\}�h ���@�r8�J�<��\n����1���(MƯ��&`j�����\n)j��5K��oyP�:Q���;��;���C����C<�y��ջz�0|��v�泃[�Q�vn��ش���]����\\�����4m�w�z>L��S�s���?�|��t������	�~���OG}��6���c�I�_ԵM������3\r=|Lz��l�`�B�o�e}�_�:��B�!p&�!��;\n3�����\Z�����EN�mo���z�N��6\0=�P���>y�p�w��\'X�gC����gf|yZ����i�=���!�nJ�v׬c_����X��UkZ7���%��S�?~��1�y_�k?�]|]���W�m^�Tu����fYՆږ�?ַZ��)ʘ�Yr#��3���?TOMgO��|ǖ��<?���Ш%ܒ��93T��O�̫X||̴��b7�p� .���d��FAU>�v�������4��[��c�%�o��_�\"�§��g�����_{��l����l�ԋ|qR����wڳ�e������Bp��U	�9�_Y����S2�i�ӷ.]uČ��|-��9y4�uq�C�<~��!�̽\rg�c�P�q�74�����m�П��_3ǹ�n����G�-�Ҋ�k�Tr��[�nzhϮOf��~�����\\���>��]��z�m_lZ�����w����g�j��/��o�jx��{#��I=���ý6mٖ޻�n����{S^�q𮕚;�LU��,��uڳ�4z�ztx������8����J�����2����Ǐ?�X�磇3��xˮ�����U�Q��\r~/)\r\nendstream\r\nendobj\r\n71 0 obj\r\n[ 226] \r\nendobj\r\n72 0 obj\r\n<</Filter/FlateDecode/Length 41769/Length1 82460>>\r\nstream\r\nx��}	x�U��9I�oiiK�@�Z�B[٬�@��R�Bl�i���n&)��Pp�*.����(���Zt�m�qt�\rEET���<9�T�򿮹����=���>�yξ�$#�c�xXN~ɤ	��^ӓ�Ì%����s=y�1�xYr���~wv3c�k�/O�/(di�*��Dz�	��K�6��u+c�|8�Ē��������$mzI���\ZW;�������!h;c�71�n[�����������꺓\'�F2�\r�	�Ymu7�^̌��\"���vIU�՟��X��_S��?�0�OA�Ha��7<q�����y������w\0c15�\r6�}I��flbc���͍�O���{��[�i�_26�cщ�\rn�?�]���xh�.G�����2����X� ����/̏�������˟�d��?_t��`�fDØ�у|���ç!���eI�}���l:�3�L�`̜�z��!�߄�Р;����>�����:�t1A:�Π��2�W9L[�ʞZ�i��Ԇ�ͺ4��-�Ї��EOQz����؅��s��\\x.<�υ��s�����6��_M�`��_����_����`\"b\\�\rl0_ױ���g�ӹd�\r�`*A?��/����w	2/}�c�����.<��G��,,g�}����Ι]^f)-�9�x���S�&O�8�� ?/w|θ�3z�%����1d����~澦��XcLTDxXhHp�A��lp���B�Ux\ri�����\n����«�Tx��W��nڹ�9���C�9�ܨ�ac��\n̚��|���g�(�^�o.׼Ǥ�*�!MF�IIA� �&_��\n��[�����\"���3�9f��# #��̍����\\\n݀�Q�u,4JT�էX���e��))����dY��<o�,Ks�6�����]�nd��v��:�̫�\"S�����\Zol�w�9�;p�GI��;؜_�M7����poP�Ѭ�}��x�/εX��T�wLH�ŎaB��mCѿ�і��sX%\"��e�Xe���d��{u\"�JI���V�ґ�\"���\"�&��Z�\r�ї?��A��էUT�j[m��|\Z��2oN>D�5�ׂ�Y��V�N13ʼ��Fo�9�`��8K�d�@6o|��U������]ZA[E>5P�e�Q�0�?���|�06���vx�0)ime�*��\"َ�Y��%�xs�1|��2G��%��;�(�K�5�\\�[o�,z�\Z�����b�`�\n�2�A��%�bFs�he<�)7���rѧ�MIz�5obrJy\n=�Ѥ�@��R����2���&��W�FޢA�G~��ShP������N��@��*�s�Jҧb�¦C1�$f1I�b���0����r��D��X��-*1͘]&g;�JJωQz6ż,�*���\Z,LOV�*�d�#:�K�$������J�D��@�L�B���&Y�ˎ��Y���\\h5kF�����o�l۟���XPQ3J�a�do3���I�m�Y֒�TTǊxQi��8{r����3���kKf�=l���kK�|:�˫�-��iek8ܥU\'��(\"����f\"*���a�U�\Z�A�m�I[��qfkבͨl:�dˑ6�`��j0�8n4�����5m�bs�DL%~����2��<v?�Gz�͎\\o�9W��	�8�{O�q&�U�qNaA��dNKQ/�����Ҳ�����`��f�y��q��N���\n�\'x[mV�f)yCR\'�ʱlU�p��\rC	a��Q(��L6�\r&P�oE��Z�-O��9��r6z�D�(L;��&*�,o�3�{[!<�\ZAah+)#K2����)$-���d��0�f+�R��4<�,��4�Dxr ��n�S#�½a(?BGd�-�\ZR^N���k���@��:\re FI�D[�s\r�*\\���hg3��8YD�eI!H�F�N�������U�PqFD�8L���H��>��ݿǼ$��3d�Y�r�%?����ۺ\Z�s҇�j��涶Ш�g��\n��`a�\n�[�1_�^k�]y ,�O��B��J�R�U��J�P�E��J,Sb�K�hVb���hR£�[�˕hT�A�z%ꔨUb��p*Q�D�UJ8��+aS�R	�J�Wb��)1W�9J�V�\\�2%.Ub�%J�(Qb�3�(Vb�Ӕ���%�����$%&*1A�B%\n��W\"O�\\%�+���8%�*�%�(1Z�QJ\\�D�+1R�JWb�C��H�,%2��Pb���HWb���D%ҔHU��f%�*�����I�>J�V���J�T��IJtW\"Q�%��D��J��Q\"Z�(%\"��P\"\\�0%B�Q\"X� %J��)��`��J�Q�?+����Q���^��J|��	%�U�%�V�_)�ǔ�B�ϕ�L�O��D�+��R�#%��ćJ|��Q%����J��ĻJ����J�]���xS�7����+��*�/+�/*��+��*�W%�(�%�Q�i%+�g%�R�I%)��+��xT�G�xX�v%R�A%P��+�Sb�^%�S�^%���=J�S�n%�Rb�{�ح�.%v*�C��JlSb�[�ج�&%6*�A�;��C��Jܮ�mJܪ�:%nQb�7+q�7*q�k��^��hS�J\\��5J\\��UJ�kW���=\\]{���pu�����յ��kW���=\\]{���pu�����յ��kW��RB����pu����������W���?\\����pu����������W���?\\����pu����������W���?\\����pu����������W���?\\]{���pu�����m���W��n;\\�v���pu�������f_��&ܙ}}@�)���g��b+�V��D�Z(��h�R�%���A;�y��D���(�C17�����z�\Z�\Z��ɥ���h��Wh���������+䠘��FTId%� �O4��]F��Ds�f��]J4��BTJTB4�hQ1�t�iDS��M�%OM\"��K��@T�K.������r)m<��!\ZG����hy�&\ZE�/!�&��h$�*l8�0*e(�EDYTX&Q�B4�(�h�@�D���4�T*����/�B�Q>Q��D����z�zN� J����N�H��x2v#�#��4#Q����\")-�(�(��B�B��}=�AA�3@\"=u�DL���.�4�~&�����H���\':I��/�tT��b�}Mt�Ҿ�ؗDǈ���ω>#�D����cr��>��?)�!�DG)�D��=�w��!z�\\�N�����u���,�߈^\'�kD��B�2��D�\"_ z��9�g��DG���g��&:L�g�|�bO\"z��\'z���%z��a�v�|�b=@t��~_�8�ϗ8���KtѽD\"��h�ݾD���.*e/�J�M��h\'���Dۈ�m��6S)��6R��;�� ZOn��mD����[���D7S�MD7�@���z�bmD$���\Z��}	V�U��JЕDW��@��V�,�V_c�җ0�����/�|ˈ���%���h1�\"�&\"���vQ�ˉ\Z}	6PVO�uD�D�9)_\rQ5����;���i#�$�U�\'�G���Z6�huz6]N�]J͝EY��R���D3|�9�b_��a�/^,�i��+@S}�C@Sȥ�h�/�>�b�&����T�����_	��ŷ�r}q���D9D���������bc|���D�|�bi\\B�틝\0��[\Z鋝\r\ZAiÉ��b����E�Xѱ,_�؛�D�}�0�(�\nD4�\n@ԟ(�(�+F�����Ke�Pa\Z�b\"�C�z�\"J&�I��g���3�u����≺�Q�X�`$cQ4QQ$yF�g8ÈB�B���3�<\rd��8���T����L�c즟�N?��l�\'���|���?||	���s�}����\'������M���1}���\0���\0��!�.��m���[QMoF]dz���Z��Qi�׀W�_�J7�����`{>�������>����(�陨\Z��Qզ���g���$��?�����c���F�L�F�M�DzL��C�?<��H�6���E,1�������{\"ZL�\"V����{�����!����v���\Z�дz3�&`#��u\'ʺe���v�6�V`p��nFy7�O3�>�tCx�iM�.���{LW�SMW�MW�l�jK�eվV�JK�ežKD�hIn)jYֲ�坖�����-K-��-�,�,�4�[lY���bh�o�4�O4�}M<��g5qk26iM�H��eq�sY����������.s��v���]�}\n�9�]Q���-\r��}\r���:�4˙]m��Wm�ʶ[��[v�Ś]a��}�e޾�,s�g[��m)�.�\\\n�Y٥˾RKI���}3,ӳ�Y��>5��2e_�er�Dˤ}-�-�2�e���E��BKX2��J�I>�|<����ɇ��q1=M=ucz��=xC��=n졏Iz)I��4ppaL������W�\r�r��(d��D-Q� ��8��P�|�FȾNM4��$�S�����Y������\'�/u11<&��ˉ�{L�)Z\'^�h}N�E�D��t���\'�D�\"J�Y\\Za��Y�EL���D��+̉�U��\\�q#H\n�<�T�?��j�8�iiIzzQ{(�Y�\r-����zSK�;g�lo�^f�=�l?�7��纼Ro��je��5kX��\"o�2�~��޹�E�V�sr����R�>���NO���k�ۓ.�M\"�.����A\\�&g���h��\'`��v�����n�������`�_w%��\0V��V`%�h�ˀ���X,�\0�.\Z���j����	�\0�@�\0�\r��@0�\\��\0��r���X�R��	�\0����4`*0(&�����(\0�< �\0〱��1�h`p	�\r\\�F\0Áa�P�\" �2�!�` \0��4 ����@\n�&���$=�@�H�x��F ���H P �\0�x?�z@p�1;���N??�����w�	�[��k�8��%p������7�1�/�#������Q����{���;���߁��7�7������\0////\0����\0����O\0���G�G���v�!�A��\0p?��^�>�^�O�=�>�n�.`/��\r�v;���6`+��l6�;�;�����m���:�`-p3pp#p���h�\\\\\\\r\\���[9�?�������c�s���ϱ�9�?�������c�s���ϱ�9�?���.\0g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp�g\0��qp���c�s���ϱ�9�>�����{�c�s�}��ϱ�����������O��y�1�����r�<]�07kE���a��\'�;��]u��v����=�����O��g�ձH�C,�uc����n�=(���ĺ�����eۗgn�ϴǱp�7J�*�����S�����뮁��9��|�3{���6��as�e��Y�;�aN��BV��X���#�\Z�*������g�\ZX#�b��!4B�1�v��7���l	[ʖ��%�^,-ˑ�Tƛ�l%ff[-�b�\\��dWa֮aײ?�f���]Ǯ�<��n�U���M7��X�ح�6��b���z����6�-X3\"�VX�H%R�g��^v{P��\r�F#�ƥJ�a#�`9zxE���-����[[��Ͱ��cQ`���RhD)-]F�&���Q�V����Σ�[V5;�������mlv�6�Ũ\n����;�7w�n��l\'ۅ��#�b�����bo����{��Ί�^�\'9s^������\0f�A�k���J;������ay�=��\ny��I���<��ai��S�ψ/�=����Y�{��ĞF�E�>����U�\Z{�GA��>��4 >m�3n��85�,�]¦�il�A���l������!!��w��i�����y91]�C={�3?4\"x�>vR;r`\\�\Z�kǝ~�􋙧�?wI�1����`����K2�}��e�ؔX��h]HH|��o�nD���Æ\r�1<��7Z\'m�G^<V?lh�>^Y��D��_�y�~��`�\n�YÂ�􌉏\n��J�2&�X2\'uLF�}H�>(4d�Ź}�j���;!�w\\hh\\�Ąޱ!��	�>�MP�Oy�ڟ��G��O�><Tgn��c��I�b�\r݌���!q���瞾:��(�WB�uz*��p�I�n�<�����R��\Zٸqｈ���Ө�	ݺv�Q\\���X�`�lN��1�d\Z��4�d\Z�#�7�F�\Zx����\n����钔�䈈����!=\"\"z�����˖hY\">�i,AwɃ�Ah���Q��<��\"В���ֶ[Cb����<6�[�^�}����%���+�{XX��^��%��!�!z=^:�1<((\"&�g�w�������{��c\0Vڶ�B�.��B�_>����B���;�]_��ն]���,ZƄֱh�������hC\'� ���\r��N�vJ?;�C� ���4Ci@��v�G�YO@G�A�g:J��p\"��Ym����h��YH蠀ֱ����_����Um���\"����N���+�CYB�рc��΋;�#Xz�Ѐ�d	�t��\n�h62�q��a�q&M�L�ƙ4�3iC\'\Zg����4Τi�I�8��q&M�L�ƙ4�3i\Z�p�ʲFBM���]�l����[cy��~�\n���e e<>�ׂg�V�j��1��Ex�ᙇ|���	���u(�.}�s�V/�(�-�\0+��(a	b��<�K���TB��W�mnBn����Z��(���@��CCd������$��*X�����&�*{)�~ؐ2X�\\\'-��D+ƈ쪖:�S+G�1��zX�d�T�觧SD���/��(\Zmj���#��ob��(8�w/�;-���{:�ƌj�d���j�c[)=϶�s�Ĩ5�|�녈g���y6����d	K�84f��x���;d�E�i^\\r5�\Z�\\k(���7��ꀏ����=��Т�Y��5b���~��lCK��~[���b��\\��_�Q�����]3��\n�\"g`�]���z�U��_�5��j�J�qFL��.W�h�B9g*��S���v���BscA�)� �/���s�<fZ�Щ�����^:�Z���\r�s�O���\Z� [Ey=��L��2d�=~n�3d�u��`m��W�4��%����};��R��J~+��W�W.�L�v�\\mn�B��WnyPnM�A�I�\\QNY�P�̫F�\0�7\'\"�uuJ��l�crv�.|�Z�+�R\\�ڰ����;ּ]�7����:o�=��t*�!�b�v��H�b\0r\r����rt��_���%��1:[�:���9K��v�y�˾�]��kt�=��Щ�V���7�]����,��jOi��猩#����1�b�5ɜvy��8:����L���O틳{\"S�F��M�!窑5ߥ\r��\Z�Mu�\\\r�*����jlpY=Ά�m|m�6�Y]�qk3n�k�Þ�g�uV���ӭY����U����n\r��*��Z�]�-vzj4wS��֡�\Z�����j��\0W��9�횭�U�p�3�I��a�4�n���jN갹k�:+Z`�6B�,uM�g#��o�s���vxdn��Հv�f���چ�Z\r\Z�9�\Z�6���<�h�h��z��P�U:�e�T����Af�BG��f�Vg�_�ٚ�yj���;k.+��r���h�Ӛ\ZE5(�\Z�s)�=\r��\"�%���ꪣ��0�j�.4��ʘ�n���:f`��z����0D�vQF��NC����\Z+ʯv�v8�0���j\r\"�S���,����;=�_�z���(�AV`��y\\N�;cJ�m��=P�;�	��z<��23/^�Q�\nϰ5�ez�46T���5K2m���z�;�*t�X(���0�K�&��@�D�f�L:\\uN�hP�ټ˔�Hu����D3���i��쬷�6��X4hv����1ot9�`���ޓ���� 8j��J��lQ����-��bIc��������\Z-0��Z���л��7,��m�v�m�RK1�3���il�`�9m�S�m�ҡ�3r&2�*+6Q������y����߄?���O���YL��#A|/ދ�_�m�s�d���H��{���������������(���^��X����w��9X�ŹP�w�ħQ��\r��.i��Ң���:��tI��f�6�SZl������|�rjh�k\r�<,A,��:b�\\��\"�u����Q:]T𡎇�\'0b��=t��mK\\�,���XȲj��z6)�df���\n�r}q�����FZόL7s�T�%��,��;��\0��m��F6x!~-���-�c�;_�\'�wq�lr��=���N~\n�Z\"��D�\0G�p�(�m5�Ռ�t�l�n��M�U�I�����]^�N]����BHVHV��ȭgC�n\n\"�k��6ndGx�d��ns����V������d_�#��R�<�n��y�\r�;U�|v�\\.>Ia����w��=f��\rc�Q)]��g�}�Bδ_	e9��<;���䥝/�ޝ�IA\\�\n���\r�a���\r�\'}��䷊6�0e/������Ok/���Sx[غ���������4C�r��Yo��h��K�.]p��Kߟ�����е����ц���k�7S���� �;R�g\Z.�~�g*TN�ݭBU(����߯�r���9\n��f�S��M���\'�\'_0��`��v`�����p�V/l\\؆p��\\��kCkg\"�k�k��#u���ֵ�}\\��0���~Q���7��o��p,�>��\ZO��:������\rqE���M��y�oZ��E��Z����e��\r>A^K�~K^6jY����/�R��c������[�Z���G�o��ro��+��W�	�1+�8�2�o�Zqh�ae��SV.��xk�ͭ�[��nn=��Y�x�Y�*c��U���:��8|�P��^�GV箞rE�?\\����g_mo�&���z���n�z��qbC�mü\r��6�۰}��\r/n8���F�Ƹ��Ƒs6N�8w��G6��i����&nZ�i��W7}�y���k�Dn�ų��-�|���c�6o}d��m���n�s�=��������s�߶�����w�(��ڱ|��Gw����\\�s��Ww~�+qW֮���:�;g������l�3rO��{��M�������]ml\r��ͺ�@�t����  ź�\\wV���M�Ӏ�@10�	�\0��r��`�\n��eN`���z�h.\\�ۿ�y�^�,��R��X�\0+�������-�:�V�6`7����\r<���\0�B?<�\0�����\n���\rx��1���o��\'���g����1�K�+�8�5��3���4;|��~�od����������N��|��?��{t�u���_���3g�3��3�CeT�**��N.E�Kg�Y����1�K)4��RJ�)m�iI\Zz�fM\Z�д!i��4I�w¾�׽WB�[�;��:�3���Z��J����<���~��\\X�UX�5X�uX�\nl�S؈M��f<���\n[�Ϡ\Z5؆=Q��1�,zM؇�3������en.��}1���:v����87\Z��	��?�r�9�C���<����\\��⏢�	˘��	˘��	˘��	˘��	˘���:j�����&��:j�����&��:j������-Q܊��m�&?F)��RS���(�2l�S؈M�ľ(m*Ҧ\"m*Ҧ\"m*Ҧ\"m*Ҧ\"m*Ҧ\"m*Ҧ\"�DA/�p�H\"�\r`#Q�$M@�$M@�$�	����)8d\n��C��Pћ�ޢ�\0���f���p>ނ�h����#�1ށ��w�O�%��u��)��+����opI��h*އK�x?.����!\\���a|��Q|W���>�k�)|\Z������Y|��p-��E|	_�?`:�S���7b������c��n,�=���~,���(#mi�H[F�2Җ����e�-#mi�H[F�2Җ����e�-#mi�H[F�2Җ����e�-#mi;X����~�z4�ѿM؇�蠔\r%,��P�B	%,��P�B	%,��P�B�=ȱ9� o�y3Û���f�73��v�l��F�l��F�l��PZBi	�%Fc�=���~,�X��RѨ�5ݣ�;i��;o��;o��;i�;Mw���4ݝ���t��+4]��\nMWh�B����t��+4]��\nMWh�B����t��+4]��\nMWh�B����t��+4]��\nMWh�B����t��+4]��\nMWh�B����T��\"4��MEh*BS���T��\"4��MEh*BS���T��\"4��MEh*BS���T��\"4a��h��� 4�)MA�.\Z���>���|���<_��2ϗy�����f�7���<o�y3ϛy���f�7���<�3�������(�2l����������l�?�9��#���G&82��	�Lpd�#���G&82a[l˂mY�-�e��,ؖ۲`[l˂mY05Տ�n���̈�����`�L$e\")I�H�DR&�2����L$e\")��\")���s5�����o��d�{ш|��ǈ|��ǈ|���a�8,���|���|��#\'9���!���!���!���!����`�N�:�����-EǋE�U��Q�oR�׃�3.�0�p�\n��p�\n��p�\n��p�\n��p�\n��p�\n�حy�5o���ּݚ�[�g���\\7��Ь���ؔ��cSvlʎM�VNg�tfLg�tfLg���z�Y�3�uf�άי�:�^g������褹{�ܽ`�^0w/�����O����	���X�UX�5X�uX�\nl����FlB%6��O�\n[�Ϡ\Z5؆Z<��؁��&\'�)xΟ�ݨC{���h�^4�4a_�$Mr�$Mr�$Mr�$Mr�$Mr�$MA��Ӊ.>�c�8���E��I��>��c�>�\ne*��P�B�\ne*��P�B�\ne*����S=��=��=`:_`�4C�:��i�N��&���=`b��4��4��4��4��4��4��4��4��4��4��4���H�>�tI��$�G��#I����H�}$�>�tI���}���}��aQI��E3���\\\\��`Jѷ���+������c��n,�=���~,>��QO�R<�r<�ǰ?�z$�J���tZ%5��(L����r�[�s�qn9�-��2�-��2�-㼒�$�$y%�+I\'y�I�t�\'�ί��	�s��p:\'��	\'�y�ɼ�d^s2��)7���D�M\"�&�s���##�H�I�#I{$i�p�>]�Ooק�����a��b��a���a���a���a���a���QkZ�\'����RJy(塔�RJy(塔O�A�]�Q�U�Q�U�Q�U�Q[9j+Gm娭���Vq�*nZ�M��i7��Uܴ��Vq�*nZ�Myn�sS���ܔ禼�̔�̔�̔�̔�̔�̔�̔�̔�̔�̔�̔��uZ�N��i�:�^n��:n��:n��:���3�yf7����v�;��w�~����~����~����~����~����~����|���������������g2���}2~P���A?(�e�����2~P���AS�p֧�_?c4����`�\ZLR�|���.���.���.���.���.��{�i���[`�-0��vL����n�i���[`�-0��vL����n�i���[`�-0��vL����n�i���[`�-0��vL����n�i���[`�-0��vL���Ӝ��9}���9}��WtK����W�t�<��<���uѷ���3���>�\0�0?�܁7�|���|��%(����R�����1,�O�ܓ�X��X��X��X����<��؄Jl�����[��Q�m��^��v��N��s�9v�q쉞`�5����ְ�\Z�Z�X�k3cmf�͌���Oo�ύ�\Z��1G�9ȓc�s䘣�9Z���9Z���M�b7���A���A���A���A���A������������5�Y��5�Y��5�Y��5�Y��5�Y��5�y~s,f��̱�93�b����3x~������.�����c�b<����-���Q<�e؀���P��A1��N3�4�N3�4�N3�4�N3�4�N3�4�N3�4�N3��c�u첎]R�b����%�.)vI�K�]R�b��<�.��\0�`��r�Y�2�\\f��,s�e�dg%;+�Y��JvV������dg%;+�Y��JvV������dg%;+�Y��JvV������dg%;+�Y��JvV������dg%;+�Y��JvV����������쉪M�S����0�;L�S�����?c�1��Į�n3_�z4�v�:v��wxN�3��>KE?�\rW�������l�\Z�o\n>a�gm�-��ų�x����Y[<k�gm�-���S�=��&��d���|� g�s&:g�s&:g��1�M���T7��&S���p�O��\'��n���[A����VPp+(��\n\nn���;v��I�;f����Yp�,�����	i?Zp����A�����ݽ.Й���A��g�z��g�z��g�z��g�z��g�z��g��{�������qU��z��}��6<��;�����ҩ�wca�T�KU�T�KU�T�KU�T�KU�T�KUX��z۽`�l���^���{!Hy�� ��S�m�n[�����u�m�n[�����u�m�n[������!���m}ȶ>d[���ևl�C��!���m�k[w�֝�u�m�i[w�֝�u�m�i[w�֝E��=N��p)���e�W�� >�+q>��`\Z>���j|��\'q\r>�O�3�;�=>������E1��/���L�uj�7�F������p~�R܍����>܏Ex��yضZ�GP�G���\'X�\n��*��\Z��:�G6�)l�&Tb3���P�-؊gP�\ZlC#^@����_�)v�������->���w�Gm�_�5�m©6�T��j�[Mz�|����|����|�?���K��%�������dkM����ZSm����T[k��5�֚jkM����D���>L��)D�Ԣ\0E�Jpu�?��\Z�	���E{�w�������Uq�\n΍}\'X�+xW�4�����]���+���cv�1��������������������������=5zj��0�a�Sà��I���V�[��׭�n�u+�[��>Ǚ{���}��>jo�������v���oo�����ӭ���oo�����v���oo�����v���oo�����v�����\\1��\\1��\\1��\\1��\\1��v��Y����~�8��N?���#�D�����?\"�G������#��!K��!K��!K��!K��!K��!Kv��v_���g���}}v_���g���}}v_����18?��3�0�3�0�3�0�3�0�3�0�3�IFg�q\'7��F�܈�qr�Nn��\r;�a\'7��8���N/tz�ӛ|�=��X���b�S�~��O��)V?��ܚ�ܚ�ܚ�t���v�n��v�n��v�i	ޥûtx����]:�Չ�Nt���(�DZ\'�:�։�N����\r`Ğ�\0F�z��]:S�3%:S�3%:S�3%:S�3��q!ފ���e�Cv:d�Cv:d�Cv:d�Av\Zd�Av\Zd�A����2�W����^�+C{eh�핡�2�W����q:.C�e�������?����h��N��i:;Mg���4�����tv��N�jd�f�Y�n���e�f�9����S<�x+�\n��k��Q�\r�\n�	����?�*l�V<�j�`j�,�cvF������ϱu�c~�_�\r؋F��&�s�x�т8�V��6��:��Nt��a�����^��(��D:*�rN(�rN(�rN(�rN(�rN(7�Ϛ�ZS[kjkMm���5��Lm���3�}����������������������������������������Lw����1��c���t������?��Lw����1����������������������+���W�5������\r�3pK�^O���~�\'��yB������K=��z�\'�RO襞�K=��zB/��^�q�W�q�W�q�W�q�W�q�W�q�W�	�ԝa�\'�RO襞�K=���C�r���1�b�;�,w�Y���!fyr.��\\�ɹԓs�\'�ROΥ��K=9�zr.��\\�ɹ�=ֳG%{T�G%{T�G���Y� �d��c�un�sݠ�A�u����pY���,vC��M�*w�w��;�����1�)��Eb)��=wd���<m���<m���<m���<m���<m���<m���&]l�%���?,���?,���?,���?,���?�[�\'O��F����ګ������j��ګ�������.�[qQ���qWH�]���|�	��z��_i�A��A��A��A��A��Q��Q��Q�\r�-8O��U:_��U:_��U:_��U:_��U:��w=V��J�[�s+yn%ϭ�=���$�=�sO�ܓ<����]�\'����]��<���6��f���s�yn3�m��<���6��������|��y�{����y�y�{��:y���:y���:y���:y���:y���:MRw��]�r׫��*w�qWw�qWw�qWw�qWw�qWw�q����8w=�]�s����8w=�]�s����8wm��ܵ���s�r�Z�]˹k9w-��ܵ��Vp�\n�Z�]+�kwm�Mܵ��6q�&�������w}��Z��#���]-���]-���]-���]��U�]��U�]��U�]��U�]��U�]��U�]-ܵ��Z����Z����6p����]�kwm�\rܵ��Z����Z����Z����Z����Z����Z����z����z������������J�o�G�i�����⥫xi/=�E?���c�u���ֱ�:VX�\n�Xa+x�x+.���_=̱B�r��c�+ld����c�+�X!�\n9VȱB�r��c�+�^�4y�\\-b�E�����\"VX�\n�Xa+,b�E�P`�\ZV�a�\ZV�a�\ZV�a�+X��\nV(�B�\n�P`�+X��\nV(�B\r+԰B\r+԰B\r+X��\nV(�B�\n�P`�+X��\nV(����i�e�gY��\nV(�B�\n�P`�+X��\nV(�B�\n�P`�\ZV�a�\ZV�a�\ZV�a�\ZV�a�\ZV�a�\ZV�a�+X��\n�P`�+X!�\nIVH�B����|���,����~�n?i����O�-�_���2� 2� ;d\'��d����Av2�N�� ;d\'��d�j�f�j�f�j�f�j�f�j�f�R� �R� �R� �R� �R� ���A�1�>�� �d��`���Av0���o�2��r9�\\� ��7R� �R� �R� �R�{��Av0H=��3H=��3�v�� �d;�lg����A�3H=��3H=��3H=��3H=��3H=��3H�����H5�H3�4�H3�4��%��-�� c��1����R�(��R�(��R�(��R����ǥ>.���<���(���(���(���(���(퍯�ӆKݡA9�cX�\rx\n�	��?�-���Z騕�Z騕�Z騕�Z騕�Z騕�Z����P\nB)� ��P\nBO�M�L�<�6I�~��/�%b�D었��_\"�K�~��/�%�I\"�$�M\"�$�M\"ڤ�EixQ\Z^����Ei��!��H\Z\"��nr���&���=lr���&���=lr���&w�䎛�q�;nr�Mn��m7��&��䶛���K����K����K����K����K����K�����Q�X��X��X��X����<��؄Jl�����[��Q�m�=���&��������p?`:��C���<d:�~�������o�[��[��[��[��[��[��[��[��[��[��[��[_1��M�n���6��M�n���6��M�n���z��z�$י�:�\\g��Lr�I�3�u&��$י�:�\\L~��V�`&n�7�nv�\'�{p/���X���!<,IK��J�w��R�])��|���aq;,n��������vX���aq;,n������̓�y�3Or�I�<;,n��������vX���aq;,n��������v�O����aq;,n��������vX���aq;,n��������R:OJ�I�<)�\'��t��Γ�yR:OJ�I�<)�g������γ��vX���aq�]%���w�����UһJzۥ�]zۥ�Uz[��Uz[��Uz[��Uz[��Uz[��UzwIo��VIo��VIo�}�Z�[%�U�[%�U�[%�9�}N���������l�}��>[`�-���g����l�}6�>�i�ʹ�f�g3�����L�l�}6�>��\nw��V��\nsXa+�a�9�0���V�StI􋢩x.�������\n|\0ćp%��L�G�1\\����$����i|���g�9|_��(��%|��������W�5��S���7bn��ڹ��\Z��w/�wo�w��w�f�^c�-����}ߟ�y��b����,���~��o��b�Y�7��f��,���~��o�ݻ��{�ڽk�޵v�Z�w�ݻ��]b�.�{�ؽK��%v���˙�	��J��j��Z��zT`��FlB%6�i�U؂�xը�6�z?�b;v`\'v�9��Q�8�������%�р��*�g�8��6�)b����\"Vx�X�>��?��mw�?v\'�3w�?�����%�QO�b�h����c�(T0�3�1�3�1�3�1�3�1�3�1�+�Y9��iVN�r��ӯ�[6ΰq��3l�a�g�8��6ΰ��Ϣ�\Z|?�<���;�����F���������l���l����W�g\\�`��`��`��`��`��`��\\�t��N0�	F�1R��r��c�#�)�H9F�1R��r�t��2��a�#e)�F6ʰQ��2l�a���s�}���q�9�>���8�?��<}.�ۢQ�e�Q�e�Q�e�Q�e�Q�e�<���O?���O?���O?���O?���O�$�%9/���ɟQ��[��K��$x�D�?+���K�3%�)�LIgJ:Sҙ�Δt��3%�)�LIgJ2�&��D\'Lt�D\'Lt�DO��M�i�6�ݦ��4w���L�e&�-���N9锓N9锓N9锓~�I��_v�/;闝�N�\n\'�q�\'�q�\'�q�\'�q�\'�q�\'�q�\'���N�I��Sv�);锝4���\'L�&�	�m�M@�	�6�&��t��n�m�M@�	�b���-&`�	�b�L�<�)Xl\n��Ŧ`�)X��\'�낷��M���5�}#�z��!v���X����F�W��d�H2n$7��Iƍ$�F�q#ɸ�d�H2:����ft0����`Ns:�����~�����{���Q�#y:9ՁQՁQ=�3௺Q�\n\'p��?�\\����c31� W�W�R*�P��\n&T0��	L�`B*�P��\n&T0��H�\n\"D*�T9�fg���U��:��UӬ�f�4��Y5ͪ	U�&T��O������t��M_�M�7/�<�,�z�O���u>�Χ�����|v�4��TeN�9U�T�SeN�9U�T�SeN�9U�T�Se.H�Ĉɞ�{�\'����	���w~�~���o1�p��:�F��?�..q)�r)�r)�r)�r)�\nʜ�N��k�xz\Z� ~mȳ���~��wuػ:�]���gF?3���όw���o\rd�4��=M�n���oF��Z�p�w��;\\�.��y�˼�e��2�p�w��;��3p�`�8�g0�Bg:���� ����SY3^�~��\0�/�\r�8�.��O��D=�ѧ}�ѧ}��w�뷯��_�N�5��FtcD7FtcD7�u�Z�v�s{�s{�s����sn�sn�Y��;źS�&P;\\\Z���\'\'��O����O����\'�7�Ɯ�ؙ��-�}g���o��ɟ���sO�ۉt;�n\'��D��H��v\"�N�ۉt{O��{���Y���${T����J�2����b���I���I���I���I���?�P�:P�:P�ο��W8�\n�_��+d����W8�\n�_��+���p�ο��W8�\n�_��+�����ꘪ��ꘪ�����o���,�6K���o���,�6K���o���,�Nb�I$�D�I$�D�I$�l�^\'��$z�D���5瘉����u�f�3�^3q�n}�_�������{p/���X���!��֭�jѭ�jѭ�jy���ovr�nu�V�nu�V�nu�V�nu�V�nu�V�nu�V���4���\r>�ա�:�R�V��JZ�;�tg��,ҝE����=�C��o��#�ٷ��k�����e���bwD�cwF��������]��`����{p/���X���!�Mzۙ�:��׻e�U�^������}λ�y�9�>�������i���3?%x�����I�sU�_:c�?�3��2���Le*(SA�\n�TP��2���g�w�yg�w�yg�w���o)߅}rڌ�-8��h�KhC;�=�ҋ>E?<��PA�\n:TС�С	�С	�tC���C���+:���C)J�PJ�R:��:��q�])�I�E:t�D��Cա������9��)�1E:�H��\"S�c�tL��)�1E:>l��c���}5cDn_a�Q��8�1��w<�zǃ��w<h*��޻��9~#�s~�ή/v��~�	���;V���>�,�堳t���r�Y:�Ag9�,��sr�C�q�99�!�8����sr�C�q��\r9�!�7����ߐ�r~C�o��\r9�!�7���������lV7���=��Wg����N$u\"�I�H:�Qg7��F�ݨ�:���V\'�Pר��ʏ���ʏ���ʏ���ʏ���ʏ����T�S}N�9��T�S����T?��1Տ��	S<�c�0�c�0�c�0�c�0�c�0�c�0�c�#��t�.Ӆa]х]х]1�GϺQo�r,5ar�4a2GNW_��r՗��\\��/W}���U_��r�߫�=�ߣ�=�ߣ�=�ߣ�:�ש�N�u��S}���Uߠ��7��A�\r�oP}��Tߠ��7��A�\r�?����?����?��ɟi�B�z�|����7;��l��2x�s���f�.���rX�ڇ�X>{)���G�b��ۂ����ꏨ��ꏨ��ꏨ��ꏨ��ꏨ��7?]�]$�z�Ϟ������g��l�Y��,�|�m>�6�e�ϲ�g���H{��G{��G{��Gz��Ä&�0������7�zxBO��	=<��������%=lSŧ���zx�^��%z�f=�V/��U>�ʇ��L��X��o��g�*�W��J�U*�Ry�ʫT^��*�W��#�ޓ�Y~��ޅ��� q�鑋�{�\r�?��v���~���S��3�OS�y�����U��������F�*�Vi�J�UZ��j�nQ��nQ��n���bݮ��*ݮ��*ݮ��*ݮ��*ݮ��*���������{�㿙��D�����]k�ֺ��Z=V+Z��s�=�X�)*�\\@�u_�ڪ�\"n�ƥ���\0!2�\02��Y�fP���F/m���?�q>^N�������|��_23��7���;\rZ�׬h;+��j�f5�s��V�Lp�U����V1�*�[�x�o�b�U����b���}g�p��̱�9V2�J��\"1[d%\rV�`%\rV�`%\rV�`%\rV�`%\rV�`%\rV�`%\rV��J�X�+�b%[�d�?U�s�����2�;�r6=�j���;+g�3�x/+�S���;����{O���=\"D���XO���XO���XO���XO���(U�V*�R��\n�Th�B��W��g?*�R��\n�Th�B+Z��J�V*�R��\n�Th�B�j^T͋�yQ5/�����I��ڣ�t�Ume�gE���8��8���8q$a0�·������p<N�������������4�NǏq��O��0�ß�8����3����&�Lĳx����I������2^A=^E��ﺯ������x�ss¶�\\�C��?w�w���S\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`��Y\nf)��`����\"�)��`��y\n�)��`��y\n�)��`��y\n�)��`��y\n�)��`��y\n�)��`��y\n�)��`��\n(X�`��\n���\nn��\nn���H�;�X�Ev�ҝC����J�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4G�Es�Q4�ת���x\0�!<�G���H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H�\"ŋ/R�H���E�V�(^�x���(�A��wP��|����HԪb��v����G�bF�&܌[p+�s�\\�>��E�s��>����9��#p9����\n���;�#a	�H�G�<�0��y$�#a	�HD�.��]�+v����\'������\"��k�:��}���8��*�Y����s�S�k}��g8`T�\"F-b�\"F-b�\"F-b�\"F-b�\"F-b�\"F-����7���N����N����N������;Am�ݠ:231�1G��b\Z0���级=?��r�������A���9z\"�\Z{��g2�7�\nΉu��:�/Ǻ��\'�-�k��5�Q�9���)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)ݜ��)����)}���)}���)}���)}���)}T�z/�{��K�^�����z��i�����z��i�����z��i����R+RjEJ�H�)�\"�V�Ԋ�Z�R+RjEJ�H�)�\"�V�Ԋ�Z�R+RjEJ�H�)�\"�V�Ԋ�Z�R+R��O�Q�?�D�w)�Glz���g�l�f5ۨ�F�6j�Q���m�l�f5۾�o3��Q3G�5s��Q3G�5s��Q39+�52g���j~��qFّG�&܌[p+��(����)����)����W(�����\n<���sbÃӂ��^�GP��~������;-�Qm�Qk��\Z��Fm�Qk��\Z��Fm�Qk�<P˳�<P˳�-��ro-��ro-��ro-��ro-��ro-w��WZ���-k��ղV�Z-k��ղV�Z-k������\"�N�_h��Ƶ�����~\'��k+xm�������V��\n^[�k+xm���&^k�&^k�&^k�&^k�&^k⵹�6�צ��t^��k�ym:�M��6�צ��\\���Ws�j._�嫩|5�����T���WS�j*_M嫩|5�����T���^f�ˌz�Q/3�eF�̨��������w�+�]��\n|W�����w�+�]��\n|W�����w�+�]��\n|W��\"��]��>��y��<��y`���&�M����y灼�@�y �<�W�;U�NU�S��T����Ÿ\\��Ÿ\\���x0DԖ��2Q[&j�Dm��-�e��LԖ��2Q[&jIQK�ZRԒ�����%E-)jIQK�Z��u�Z��u�Z��u�Z��u�Z��u�Z������a���u��:D�C$;D�C$;D�C$W��*�\\%��Dr�H��U\"�J$W��*�\\%��D����!;߮v��v��v��v��v��������+b|��/�_��EhV�^!�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�E��\"�|�q��8_d�/2�狌�Eɳ�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˳�<�˩�?����Y����,�f95˩Y\'��X�]��R4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�MR4I�$E�-}�e��I�&)��h��I�&)��h��I�&)��h��I�&)��h��I�&)��h��I�&)��h��IU G��g���=�����R���]T��jU���<\"ۓ�=)ۓ�=)ۓ�=)ۓ�=)ۓ�=)ۓ_�tUz�sZ��e{Z��e{Z��e{Z��e{Z��#ɮ�q�7q���q�H�`�o�;8\Z��18��x���=|\'�8?�)�N�i�������೫�?>�(95\Z7�f܂[1cq��v�[?��\ZU��jTT���QQ5*�F���U�?�1�	��	<�?�)<��`��D<���<^�����x	/���U�c/30�0��?ៜtn������uW�=�q��ⲻz����z����z����z����z����z�+�]i�JsW���ܕ�4w��+�]��kϲܕ�,we�+�]Y��rW���ܕ�j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��j��,we�+�]Y��~��徸����\'WU�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�U�]U�UUqW?���]���w��w�+�]9��U��Q�ᮖ�|�Z�]˹k9w-��ܵ���s�r�Z�]˹k9w5sW3w5sW3w5sW3w5sW3w5sWs��\r���]\r���]\r���]\r���]\r���9﬘\'R�Dj�H��y\"5O���<��\'R�Dj�H�+���^�P��~<���#���r�������ğ���_0�`\"��sx/�EL�d����\n��*^+}B0�(<����)��«)��«)��«)��«)��«)�E�.\nwQ���]�p��(�E�.\n�P�����p7��)�M�n\nwS�����7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��7.��K�v��.��%����+z���+z���+z���+z���+z���+z���+z���+z���+z�뻎�������~\Z���+�{}%O���	���^�?���g�����]����]����]����]����]�N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(N�\'ʂe����DYp�,8Q�(ܕ�w�+�]9�j�f�j�f�j�%ܵ���p��Z�]K�k	w-�%ܵ���p��j�>���>���>���>��S\nN������9�?�Ѐ��W��~��F�	S����_����GO/��Ό�����\'��������9�����/:���85\\��|��G��r�J-۵jvtu��iW��J��1WE�x<��.��Ũ�����r�tq-�Z���*�U�+V�b�5f\r��r~y�.Wv�Օ]f�hF�hA���pn�*�+][�\\�ڠ��\'�w�YL2�If1�����v��P}�wJ�C�]��F}o�wi�	W\'b��mc����+?m:��Ӧ�+��U��z��1���Ɲ=5�z8SgV޻yW�5�T>�bP�)U>���Kz�BOW��F����z���K�t��j�t�����.z�G��a��\r��j���X��2W��]<�@�56PcCth�L�����0G]���q#�E���-�7���8C��2�����q�\r?��������Pl/F�{��?�:���<:�w���[��\Z�֨�F���qݱ��=���!a��Im��~��G�~��*m�i۟����.�Xz����/�Wn=Ƽ������+�6W����f������O���;<|�����0��O{���h�U��J���Vhew�W/p������=��^m�ׄ������`���0}H=\Zf����Q�n��\rA��7�õ��:+�cÖ�8�ܮ��Þ�å��~�凾{��F�j=\\���n�wDsQw7�{%�G�j߽Ε�㦰)z3n���N���{����~<�G�)ƚT��JW-q�����:��7��_n2�&#l1Bi5�9���W��I/���\Z�,�o����r�*0�����\\�e}M��t3�q�\\}������ߣ�^��[A�\n�V�����>6�t�M7޺�o�9V�j%�V�j%�4i��{��b.-��F�4R��6�����f�5F�\Z!k����Yc��%m�t���=����z��c�#�)c�u���VmU���\nF+�W����z[��uz*�i�\Z}�8_���Gٻ\\y�+�W��a<���D�G�=Z��J�u�Y��u�Y����d�����>����R,זbY�ϴ>�V���Nפ]�.�.�����]����\"\\��X}�3�]����ᮇ�����W��(��r�Gf��׺z�u���Z}�\nf��S��<X��:3X��Osgc+?7�d�N�j0V��3����]mf����]���~Pn<�Y�����`�r�n]�`pt���}+\\��w�r���o��\n����{����х��h�kZ<.C��k�A��h!|3Z�fy�q��X��T�=��=�C������`n�n\'N��A��m�=6|5f���/�|)�����>�#T��T�#T��Ԥ;���6	3�?3\\j�b�Ul���8�~�P5[j�-����{E1/�\n�_Ėp�|`�����T��ÔYn0�\rf�!�4g��`�ʨm��d�V�f��1�GF�0j¨�F�`�V��\Z�`��F[o��FZo��F�l��Q�F�!�0�%�����)�Z�R������.Lǻ��z�	\'D�sO�/������i�6,G;V`exit�Ǥ�R��_w�=������h��� ^�x�\"田�|���U���9<�v�E?��G�8|=�7��FE,����m���𷱸3A_�8�׆-���+b_�����_���3�s���ؗëb{{�+�\'�$�u�����wc�a����p_N�7v������oľ�D�(}-�����\\w���!�m�|G�wǾ���;���8���D�����^Xy��*{������_��~-6�|�x78T�V��jQZ�����\n��⍄���o$��E�.�v��Jꮠ�\n�vR4�/+)��3+yf%�z)��Bk)�֊�Z�Z+]k�I�LYe�*SV������\n�18V^/�Vʥ���|V���1�3o1��f^ʣƊ���qK%����2������y��7��<��2�63��N�l6�f�l����%^]f�0�/����f���o�KKyf���Af�����<3�2��+Y�2�f�2����j6k�f�٬��*:vѱ�R�tl5�5tl�c+n�ԩ�Y��2e�5f�2���5��J�[lv��n��}@�v3�c�);�Ӳ�4�Yru6����f�P%Xj�k�,쐥=N����Ϊ6�龉�����W����\\�4��$|r����Ok�\\g���c��\"�O����O;�>G�I�3��^3����̤�,���\\�ͷ;-ߎ.V����ms|[�ȩ}j@N���p����Y����_k����1��FJ�]u�i7�e������F�X�������P��4�=��g�_�]�\rG\Zq��^#I�H�EGY{����kG��@Z�K�9�q����Ǣ�1��c�/i9�\ngY�l���N<׉�r���j��w��~+��뚸�I�s��옳1\'|ʊ>�&+겒�?���^�����w����b����ڛ���#�w�6�v�Z۴M�=O�]�M�}�sj��J�}��7Wjm]��֩�ujm�Z[G�c)*�O���j�8��Z��N����jm�Z[\'*���)��jm�Z[\':���)jm�Z[\'J?Pk�]ּH�[�|�o�3���jm�Z[\'�nUk���:�t�Z[��֩��&§��u�\\����*��Q��Uk�Tk�Tk��/���/E�J�{Y�F��H�[*zK�Ul�L���5\"�T�E�*�k�F�k�F�k�{D�Q���FQk�FQ�7Q{M�\ZE�Q��FQk��E�uQk�FQ�,j�ԟ���-b)k�F�j�F�j�F�Z,Z��V�h5�֣��(Zo��њ\"ZSDk�hM���=�u�h�#Zo��њ\"ZSD�\"њ\"ZSD�BѺP�&��њ\"Zw���5E����xњ-Zݢ�.Z���.Z��њ\"ZS�g��z<��x���v�9|����\"R?�wD����o�΢�\0�yVt^P)�դu��P���gE&+3_���d�2�Qʨ��K��U5^S5^��Eg�����\"0��	���I*w���T�����)5gQ�EJ�H�Ͳ􎅳K{v�?�,��<��5r,�Ĵ]L��r�Q>0J�Q���h�]��;�*:m�jԩZ��4�=�O�M�i�F�6Z�O�N:/��:/�smߗ	Z.q^�������G������az�B�Rh�y�L���5���ͫ���*�I�4ɜ&�#���r�������o�z�ӓ��q�\'�\n-r��Zl�_>|Ε��=�^��\\=Ѻ7h1Q����IW�R\n�R�\'��ʪ�>W-p�;dR.���]��NW��tnr�FW6�������H#�k��]�flQ�?�[W�˴j�g�s\n׵r]ioz��J�ҫ�J��Y��Q+�U�_����I%�������﮼��p�G�W[�-eU��ҧ��Ү��^�z�@/9�����z��˛T�yv-���>,�W>�Wٷ*�~�Mx��_�k�u��9���y��˵�К�i�\\��A�JK?��^2aWK�g����`�Ow�K�c�X�+���U����ڳ����z|5V�����������|SˮO�ZJ�l[�h�&����?ݓ��C����Y��\Zm�T�rF��.�]���Fy�s�ɵ�V���rn��?������2���R�ʵ ��*�N��U}s�c�th����Ϻi}A���h�R�7�p�:�L/o���mr�Jf��F��R:w�����׷�z��&�������g߼����*c˵�h��������D[ԃ�N�U�q��o��o�!�y3*�{���^N��c�x�A8*ܬN���e�O�h��{���A8��^���\'qWg]���YWg]Yteѕ���m�*�6�j$\ZΉ�P��P���; ���5~�;����T�5��\Z�o�&a�\n�U{U�^�[]�R��%Kɧ(�T�տ�W��rvwutcl79��U\r��8H���p��rґ���wT��:Z�w��{F;5����[��ݜ�r�ܗo����Bl�������E�\ZZոz�\r���?�}�1�u��T�A߹���uN�=s$�(c���e?W����c�gyvQe���x_��g��R4>�B�Q�#o�V��n{��Oi>�A������Z_�>n�Y�ϚV�׵{����D$c-k�#+\"��D>/\"ϋ�.\"R�Y|\"�YO/�Cl��i��6�i��6�i��6Tb�YO��4����Xm��Z����Z*w~�z��:��!O�=��`O��q���w�5Y���[������o����o	O��_c�o�����~�K02|\"���7����H������g��l�����F\n�\"��o½b�[8G` �� �Q�6����]�cq��	8���q~���C���T�����1����	�\"�oG�\r߈��L��l�	ߊ��<4`�\n�_�K�0�\\�=0\0� �Cp(NǏq��Op��l���p.��c�⣃��?W�\Z\\��p��č�5Fa4�s��A<��1�`\"��sh�|4bb���؂%X�$�\n_�W����\'n��ۃ<\n(bs8Y�\'��d��,���AU�s���=�a��5�Ŏ8&�#8�7��F:�H���p.��et�����ᆰ�u���E-�1�N�X܆q����w�nL	�\Z��Tx���`e7XكV6��&Z�D+�he�Mf�9eu��n�Ս��Q�߇-�?�1�	��	<�?�)<��`��D<���<^�����x	/���հ%z�}|�{��Oĩ���ܹ��!�=�=�e���0�W~|U���WŮr�t����`���`�ؒ����e*w��C=��uy�.}���5�P4���))}UzGɀ /�5\"Z#�5\"Z#�5���\Z�)�W��K�&S�dJ�Li�)m2�M��ɔ6��&S�dJ���*��~�Ϯ�8��S.�K���L5�a����\\�+p%F�C��r����.�˹�r�:��N樓9�d�:����8G�9*�Qq��sT���U���r�]���v9�.��`�l���r�]�s�^ܷ�\\��Ŭ\\��Ŭ\\��Ŭ\\��Ŭ\\��Ŭ\\��Ŭ\\,���+8�\n���~v�#�=��\'p����8�zξ������9�z5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N��	5;�f\'�섚�P�jvB�N�ى�Y��!8�����<�w�z{�4{�4{�4{�4{�4{E����^Qo���W�G\Z�x�=]d!�^#�;�Qz5ǉ����&}��>������Ce�6��+���x�}��>^v_��qOl�;�����`�ػ*�\"g��NK�2�O��b��2[�};پ_������\Z�pFP�4�������\Z�bG�+��ep�n���2�=8�����������#����d�ո��R�\rnį1\n�1&�a0�an�op��]��\r������3�&e�T�&\Z���G#`!�	�ь%X�$�\n�:Љ�����q#�(������|���q�������X��a������X��a������X�R�ddg�]�v��=��>�j�ld|\r_�7�/���8\0�pRd��9�)�oD����#r.\nΈ�\"8\'���u��~�������\"��7#�qn�-�c0�an�op���\rG���x\0�!<�G܁��c���=������ӂC��cHx�,IɒTthp^����0G��U^�l}����co�b��3b�p�}l�X�S|����d��ޱ>�㚰�+��ۦ`;Tc{����?jP���ߚ�q��q��q��q��q��q�dH���!�2�^��ː�2d���!�2�^��ːzR/C�eH���!�2�^��$Cv�!;ɄZ�P+jeB�L��	�\'܆q����w�n��o3�{�f�0L6�\r�d�0�0L6�ܣ���\'<�\'�$����4��	Nb�`\"��sx��_�$L�Kx����5��7�WL	�Ⱥ1�T_O�[����f`&fa6����<4w>\Z�\0�MX�f,�R�`�6�H��}�mX�v��Vb>�j$��Ig>�G�8�\'s���a2w��&s���a2w��&s���a2w��.s����2w��.s����2w��.s���2w��!sG��2w��!sG��2w��!sG�ܑ2w��)sG��2w��!sG���3׋�*S�۲�P�{���^�pId(�_��\Z\\��p=n��1ʼF�&܌[p+�`,n�8܎����k!GD��8��=�7#����1�~��#����1�~L�5׼�7�WL����ix��6�	;�Ý��N�p�}�3�pQk���:�Ҥ�����b�-\n�5�RE �%D�cK���5��P�Qc��\Z�X� d1*�E��u��9�k�7�3ɽ����o��3���<��.W���2=\"��R��堜D9��\"��!��!��B��C�م��{+Yf#��Fd�E4��h�Ѥ?�I0�ID��b��[d��5����6���A��8�~�(3\r摸\n_�>א��#��P�\"�h��=5^\n�\r�׆�kCᵡ��Pxm(�6^\no͆�f�[�����lxk6<o\'<o\'<o\'<o\'<o\'��(��(�!ސ	oȄ7d�2�\r���LxC&�!ސ	oȄ7d�2a�Ű�bX}1��V_�/\'�U�4b$��8�F�s�N��ݝW�(����4��Q���@��2e6�(��Q��Mo�7v������nz#��{�=z�=b��G�أG��#��{�=z�=b�\Z� �0h \ZC��#��{�=z�=b��G�أG��#��{�=z�=��� ��{�=z�=b��G�أG��#��{�=z�=b��Gm�C���v8�m�C���v8�m�C���v8��أG��C��=z�=b��G�S��)d�2p\n8��B0�v`����ہ�W�g�g�g�g�g���6X>X>X>X>���2R�e�P��\'���I����;�шS���\rXqNv<Nv1���\0��\0��\0r�@��\0��\0\"�\0��\0��@��\0��@nj�Lx��*2�Ud«ȄW�	�\"�]��E��R%������	�	�	�	�	�	�	�	�	�	�	���ڃ���k�g\0�3����`{�=؞l�\0�g\0�3����ڃ�\0��7lo���_���W��._]0��`|�`|�`|�`|�`|�`|�`|�`|�`|�`|��15�E_�E_�E_�E_�E_�E_��o�n����ɇ���b�a1���|XL>,&��ɇ���b�a)���a��a��a`}E`}E`}E`}E`}E`}E`}E`}E`}E`}E`}E���a-q��8XK�%�G����M`-M`-M`-M`-M\'K&PK+k[;�3V�*�Q\"P���5��倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅倅� �OB����?	���$D�I�������������<�ª��y �烅y �烅uk֊�3�M�����`b�`b�`b�`b��\n�<�_OU�&��[�;Q���au?�rT]ȿW�x5����V�<W�r���\"P�(�P���T7�=d���kx�Qq\ZY�,Y�3����g\Z�]r���139a~�F ˔���07p��z\\JAV�@�D�B�F�A�E�C�Gq@����>->-Dv�Bv�Bv�Bv�Bv�Bv�Bv�Bv�Bv�Bv��:�����g�\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n��\n���A� p�8�\0�b\0f1\0��Y�,`0���\0�b\0f1\0��Y�&�M.\0�\\\06�\0lr����`��Y�Y�\nY`�\0�U�É�!�?C���)�!ׇ#�?��D�#�J<6V�\'�B�T�ό��\Z*�������b�vP�T+��X��[�R�3�*�j����Tp��,D�\"�\Z	��vE[��l	\"�D�%��xv<�\0�]\0�.���;������_(�������e��2x�Bx�Bx�9x�9x�9�J�&#����Y��Q��%�UG~�	^�!q��F��lx�.j%v������䎶;�A��CTG��0�g�=g��8GN\"��0�Ex�Y�˸{������o��5�q��/�����~��3�F�+wS%�;��S2f��!X<��dOQ N53��t�|�;���\n��\0��\r�!���&1�r��q�V�?[mka>����PC�h��S�ݸ����}�g��#�(k=��A����G�l�\0,[�+��WOp�9\r�\r�\r�\r�\r�\r�\r�\r�b�P��P��Pя\\� `��(	��n�����+�帻���k��%b4��t@�}�L��wa�l��ʰNrb��&;C:�b(��QB+��C4�����>\"Ʃ��|j.P�s\'P^�IiEAJ0鰳7�=|0OSh>�|1�-m~9�f������=�#QG�N�ɟV/\07�3=��z���9=��nh醖6hy-ʡ�+�T�d�gڧ��������pB���3r�\\h;�0��1f?���{��Qj%[����^s0�>e֞�rJ���˱��8}W��\0��`\\;���t4%\rV~\Z?����3��Y�=#�V���w����k�՟�\'i䁞6X�%z>D�g�逹�ڮ����+ԅ�Q��<�:`�u���A��������:1^8���H�Q�ǀw�`=�ԕb\"�u>��y�@c�1c���Y�9[�z�����|�A�A?�a t:e��M���P��\'֭y�5�k������<�=�q=���=���=Z�ue�Y\"O����>B�b�+W~���SM��O5���������h��၈Qq`lΤ���S=��O�m�o:�8��i%X�5�x]�-��\'�+F?[�n��9�`�1�]��@�w�x��߰��V���r	4U�5]濁Qn�e�ߪ�O����u\rEIŊ�\"�]������a�r\'�Gװ���	�=39�S��s?5����Lc�Q�a����1���d����a\'1ԃbQ�Pҩ��2e�d�Q1j����6�ho��W��h*vrv�\rv�C�W��u�hX�4#�6�5�\06	V�\0W[c�����R_�N�k�lD�M�{������澍�A��_����H0B�����r�-�\0�U�w��6��N���Ũ	�\"��x����_�Փ��Z���H�S��I��,���3�swle���	�{��=W�!�\n�9�\Z�*X������c	f1������c�O1�3X���3�j����)֨m�\n;�7��;x\0�H\0n� �Q�1���B�\r3mnKb�]��F�V��y\ru5=�`\r�ѻ&z��C�*W����aD^S��X�e�V�b�����+we��+�TH�F~�5ej�D���aF���s����ZO�E)��4U��S�R�\0���y����ޯ8�V�ھ�<����������a�c��o��w�L��Q\\�>w�U<1��x#oV��>xV����׵�6��A\\Q7������k�L�\\�������3xa&m,ܯ��5p��k�>��)h�����-������.��W7ܩ��N>X�Z^Ř>X��8z]U|�����M-ܫ���`�0�k�v��Փ,̣h�\rX��C���3<3��د�+l�\rkvǸ�؋N�sU������������j�ym<���a8W�놻UQ���X�ڹ�x�,�a�>hSm|����D���6u�]�s��zu\'�C��#����:�n�p�/5�kp�\Z�S!!��iֳi����ܷ�G�y՜��M�koC��x{cr����^:��#���Z������\0���v��T�ߵ��J���^p��9�-�����ڍ�����I#q��z�W�#��^}�\'Q�Q-��:\"j$��7�ZO��rD����o 2� ��\"�+.Ƈ�HCh�.4RWqǵ��\0\Z��UB+���Z��WG;_�����h�v�Ю6�Ձ�؀�؃w��e:�]:q�\0m�U�V8��/VՐ�����Q{�t�:��@�Op�\r�\ZIRw��6Rm��i�����/��������J�+�g^̋ʙkHwX֓g}g��f͆�f���rb	,�9��l!sc��\nf��՚-�+��c�Y���b�\\ǃX8o�[�̃Yޖ���#�����yg�&��_g�yOޓE�޼����@���o�|�F����>����<�%�>���	|�g���	��>��\"�_ſf��V~���G�y����+�(��o�s���a?�{��]���Sv����e��`��J8��(��-�\"\\�]�&<�=Q]Tg���c����Ş�:�.{&\Z��L�Ec�D��\\4͹\"�Ekn%ڈ��F����� :p{�It����D_1�W�D4�c��H㹟�(&�\01YL�u�|�����&�@|#��\r���7;�!�X�?�`qY���C��0�B��*.J\0��Q����b˂-���~;%�\\F�Ď�Ą��DZ.��Dt��!U��]gI^T�,�),�#�S?�эޤ(\Zan�\0F�M~�L�a{ͨ5Pw/� ��\r��@}Lm+!�T���B\r0Os��k���a�C(�⑷yDxO_\n��/����a�6����O���Ԇ�Qg� pp�4��Q;�NT�ܨ5�������V@=i��h���o��\'��iL��K�+�%p�Ka	/J�1�A��|����\\%�&)���`tTB\Z?!e��?JY,e�����Rc�3M\n.�����t��3:zL�𕲶�\r�����mc�G�NRv��WLb��_��R�r���R�ťDE�t)�I����\\!�F%�K�Gʃ	�cǈ�<)e��R�$eIBRt�(��O4��(�R�K�$���>R�\'�R�I�����!Rv��kRJL�&e_)%k�#���2A�)\'H99:W�I9[�O�\\(�R)פ�\'�)��\"�R���S�D\'+��,��L�\'�����-u��T)�I�����!RvH��j�U�0)�J9H�H)�Ұr�)S�� �d)�I9�$��U��\'�}2�/���j��	��i�J)3l���\'��kY�OH.w�1�v�̱S��B:�	��Y�O�*r]B��%����{����}.��&������Wf^���j��\n���3�9���d�d3Xf\rP�v =��)��M��,Y%�V�5b�Y[֙��ΕU6מ���\\7��ku��������iS-<M�����e��n��듦\Z��T��+��u���hj��V�Se6?��m���v�yl���g��g��>��k�?�jGK�}Ǒ�����5��yb>[�h6Oz�p��5v�D��@㪤��D�Ut���;q\'�w�=�VT��\n�(��0���\0��=������b�	{B��L%�-�)܎ۑ��+�%w�d�=9X\n��~d�x\0يn��cU��2�e3Gz�y�j4��\0��:��:C3YK���-�F��l6}����\0���Oy\ZK[�x`�m<���v>�O�|\Z�F;�>�v���g��/�h���-�ǻ@wM�g`�Nt�i@�|��!�E�!F��\"U����b��)f�����H|�i�/�K�^�CSa\"����$�HO�~)d%�D\ZY�qb��1;\Z$;������%Ь���:��N�����X�@��i�a7�o�\'!<���;A��yw��`���Я�7�-ѻ#���y�:����Qx���s�\\�\'���(�_����T��ZJm�ޙ�VCr��/���������^S�Z���k�Ǆ֤hl�)J��m^�UqS�*�x)�\Z+�e^�8)��Ȗ��b��(���b�8(�G��Rmh�],A�Á�ۂ��W��8p��X#֊�b�8,��8*���q�8!rD��%n�rqG�����x ��Z-Vcį�WX���<�}hs(\Zz�e��h�Ow��b��{�>�_�!��\"��UQ\"J�5q]�@?m�5b\rF_+�b�b#F�,6c��\"��a\r���%o��ه��e�#s�ߙ����:G��J���`Y6���c�d>����:�E�9���F�;�NÖ�x\Zli��}���F���X(�4\rڋ�����=�G�M���f�L�E���ޏ�>�9�����g4�a��\"p�%�9��RZF��KZA+i�F�����:ZO��3�I6S}\rn����m�+;�[�	���P6��>��t<�0A�9J��1:N��	�A:E����s�Ky�G?�k_�*�ɀ�t�~�Kt��P18x	��5�N7�&��-d�r�Cw���(�\0y�{}LO�)=��d$U��������3��|x�`>�s��Q|8���3�{	�<���	|O�I<��^|��B�#7�\"~���/���\n/�Wy	/c��o�L��[�����3���3������?�~�g�97j\\Z0�KEXK�ika#z��|w�\"\"E�#����b��!�E�s��s�\"���~n{R���qV��\"O�?(��X��)��H�����EwD�\\p�0:6�&勡b�8�H�d�WO�\"���.Kk�\"ci��ͫҲJ`��Tz�5���v��nH?-SZ)�8	����;v��V�߲9���~kw/,��m�֧��?-p����+\\����Q���EF��9��,���h�D{������̀%ҩ%�tԉ-b_�P����h���4����3��W{�Dk�w�(S��z�I4��Z8*���,��	Їj?4ŚV�I���&y�m��ƕ/�����X{#�ђ��5va]�����\0�,27��Mx�!,�|g�Kw~� jH1���\"�G������� < ���X���|4r�[�-� ���f��V�Ɗ�y\'k��/`	mf+9����F�l+g��3�˙��;����s,������.�V�~dV�.���%v�]a��*+a��\Z��n���L�\"�\n�H<O�S�L<F��;�(_�x�\'��KtZYc����5�j{�.ao��\n����fi6@�	ȇ\Zj�cc�8 �Il2�,6���C���9䤽�Jΰ�m����\0�YώRUv�� �]<e��\\\'L\'�`:c}�X��Й�o�w˩\'1� xͫ�	D�|D�bĶ;�cϰvk�@��L����e�XwV���\Z�z|J���V�ʂe=���u$X�VG�6����:���:旺���X\'YǳβN��ju�Ot�7s\\5 �}�F�7Ce:�a,2�AF�&����j��Y,k�:@Ƴ����k�	�\n�t�Lf��B�!SX�����-a=!?��QKjG]�\r�H\ZI�4�� �}[����i��^d��l=v��� �!l����LYc�dɾ�u�,��,K��l��c�VYǲodǖJ],�ZX.����\n���R+�VI-��Z�Jja���:mo2��:X�P����*��ܤ��J���+�㗟Fj���ٳ�RWRj̀U��sE�`�ƹ�\\!Ş�e�SKnϫp7��k�/�\'�/\"��h�d|�\Z��C�<���1�\'����G�&��J���ܑ���_�\r����t�+X����Ҧ����+�_��U�jr��t6��+	�iA�(K���La-8S�����5x��\n�)�8$�N�)��(�b)\r�����xi0ťݕ1�ˣ����_i�g���}0yy��E]�8��p�@�╻��w��+\n�tu\\�s�e������\\��X:�A�]u�څ�����ԴؔDߎQɱ�.:\'����]��)ã��\'$�:b4ܵu��;2j|Zl`5��v����t÷clJZ|\\|tTZ|Rb`u]5��pv3?�?�D�I�O�۱�Χ���I`���N�T�!P�lԤY�f������~}��\\M�W���\'~Db�n�э���&�{�@N����\\}bS��GǦj�f0����,Hd0G�}[���;�eՉ�Ͷ�fm�1��7aw/p�7\"*{e�w���Ǜl���5p򇅣\r͗:�;S6���5��B����k���ώgG4�е̓�yC�y�eO\Z��YU�r�\Z����w{D\\�Y��{�N��У�\\��=,}T`#�h���.�\'S4̙д�<�EN;�F6^_r������ƌ���H\Z�/d}�C�Wv\rY6�F�����G�vZUY�7��m�3>ʖ�[��Qxxk���=�-��S<���w\'m�>y�Ӯ�_���r6����.���{^X�t��M.���8���ʩ�������ְX+�������ֱ��#�Ғ�7N�NMn4zO��E\'���S͙1U��Y��t��{Օ`]K]��M�Mי�G�$�K��&[y�T:�o�V�R��R�u�/V!�u�����\\\n<�+�u���CW��}g��}���Z6lجɯ�BL�J�G?�1�`\'��Yo/�?_�Fv޻GN�쁉�����ΥJ�Cy�:��eV�a�s���V����8��-gl�vmO���v]���M;���\\�d�C\r���v��.\\\Z���������Y`��u��W�:���ê.������z�;��ug�Y�]<n������uG]˗�q�������i�گ�T{��J���+������i����|��eѵ�6?�X�e�Z�R/���<l���s���{ջկ��|���=MF-7�l���\\��}|O�k6�b�k�qa�LY1���M3�����{|ۯE��\'/�>�����m+�g��V����qYɐQ�ڌ��o�~����J��w�9�w��z��Ϯp�-�O������j�+/]q}�&e]�E[�}�1�J����5�b[RL����nS���1��Jjgn._�gG��}{�17bCݴ��Z���V��n���4�c�SF�]�n�ѿ����$ב��������^�?�1-5�at�t?7�~���Z��S������	�a��͟�>��;�|����С���J������U9� �+�Ӣa��:=񵽽r�+�R����������o�\'��~��w�&����˿ѽ���*vw�w�>m���n.\Z>�@�G���knX��_W|R�����zum_pg��o���/Ȉ�nsj����m�\\x\\�_��QA{�y�;���8�_�	g����i���;Kz���<Q|6�i�n�\\C#�������J�ٶ�����L\\9����w�5����͞�C�_�x}=�w�ݷ~�����!�2u�B�Sp��AH��*g�>�.���e�)�\0�/|��ٯcR��)�#F��D��\rlժ�o��蔤Ԥ�4ߎI)ɍ}tަƮ��$)Ŕ�k誛�����#���|ۏM�����Z���t-��!H�$�|���W�r�} ����0��e&��X��Z���X����\n߶{�X��Ƞ�g:ļ}{�c}���|��\'˦�m=2:}x���B�٧����0n�⑵�n��~���:�ڶm9����Vk˺����4�݋�Em̘�ed��=�/�&���^ށ��.�֕���{I���.�-b�Uk1���ϸ��ܾ~�m�5e_pY���6=�*}LZ�f��mjЀ9��-v��d�_}��8[�5g��P���P��㕂�{7M�g��y��W�)�C��c��O����c[}�;��7�ꦮ�M]��%S�.�M]0�򛧓��S���=�eKϏ��L��?��Wظ�\n��������n}����W�ypdв�v߷����O��Ըwg��ۖw�nx��N�n=h]��F�1��N�/��h��Ͳ�ɣv�����?;��J�A��7���y��w�[�j�7�K�ٵ�WV��~\\��yן#6&v�z�Q���	�fߍ8�]zX��7�ff�yu={�U��N�I|����\r�\r���hD��߈\0\'u��;֟L�v��\r-\Z��e�r:=*����jﴶ�(�Q��.�z+�k_S�ԤebOo��;lW|x.�oh��~k���g��쫳�l6�Qv���S�\rU\n�/���zA��_�]s����-�6\rl�x����/B��5�\n�uULt�v@T�H@�4�SY��\r��ؘ1I�1/Vf�G+��ma��l����i�/?����CC#�$)��m$q�\"���$�N�~��ڶ������;YCͩ�?��Uk��P}kx��Q��\Z�=Lf��-��Fni\Z��`$$fȭRhʥdh��ɥPFQʏr���$�\Z�r6u����~�y�gｾ���������}�����\n��ojn�J�S�X���s��V�\n�Ь����*��ު\Z����,��=�b��Es�N\ZM\n��9D�W��wٸ�>�uۼ���\'<rM&}d��X�X%���׉�z���9|�jH<$W��~I3\Z,�V-��`�%�|#`���O�����o����*��?�c|ӽ����ځ�q5\'���3��E�\'W��q��AS�^Z*7]��6�S�KB\0kJ������F[o��O�����^N���z���a�E ~��ĂE�^�E�6L��9�{�䰧R�׊rX3�TP���_f%`\r�Bv����g�w��?7�NK���߼\Z�.�B\"��h����m�7g\\H���xS���c���ojm�o�?i\ZM��-1��}=;S�;�)�\0���ü�Eg.�=G(�j���/�O���E&;����Do����}	r��-���J����G��O�It��}��>t�z�����:���Ʈ,��n���[S��|	����,�����̼^�+�e�\Z�2������lP��0��T޾���\0�{NZ���xV\\�9b?�ã����bO*r�x2/�\n��@\Z�:De��il��I��r�\nşB�ܧ�U�j̻%�����&H�[��G?�7��S5S/�s��X}�-Y���Z�d�>t�����{2+;�Hqg�B ���i� �nfrݵ�	��Gnh=���s��*�QGg���3NxF�[<{]~�R���=r4�qY4�#��ȕ�e���������F �n\n����� \"��ڭ�6�$�9��-8��jo��l�Yf�ꜸȉǼ�Id���Ç�:z\\����?[g�C�EB�����|^n��s�g<��u6nz5����$� �W����ɏdp�j?�.�h�8����]�`��#�׺yψ��8�L�լ������2��THM	Y�E����U,�}7~F�������u��;��y����|T��}��/��:���a_m��Y�D\rA}P���\nW�1����r�����\'�w|��P�6������qZ�w�f۬�T+�>2��#/��t�C?�0fX�L\n���<ECM���H����E~�>���\nŌ�*�g41|��ziKV����a�N\'uN��\0����Ę�D�^���X�0�o��8&B�c/D��CZ�0��+;X�ZxE6��싒zf�����v�p&N����ܨq���w�{����؎�A\"�礧Ŝiy�������!�v���g��d���(����Tda_W�G d=o~��j>v珡!\Z ڬ��@j�C��A��e�T�\0���P�`�p�O���W���/��CK_l!1����\"�Ł�o�`�=V�螖��P�Vb�?N�K��c�R5B�Pw���l�\r�\0�8�	P\0�� AQ(>�0�f\0����E6ş|��ۅ����ZA��ZeuP��a�~gg%�]����<���;����r3*�W��)ۉ�G�\'=�NǗ�P@r�.W���NQ����[Ef��o������>65�AU�����>�rU�9�^�];\"��B�ߖSS�Ra����i�����C��Lw�f5����@�g#��c��	�\ZT��1\nW}i�#�mP���ݻ�����Oa��<巉�~*{\ro���c��8��J���biV��gm��藍z����W*y~r��u*t�CգE�K4H�`���Ń������<������2�T~����8&�[�<����=���l���`41j�-�!�]<!ĚDq��z]��K-:���$,���j��tň��\"N����P����?�Z+/��拊��S�6Y�6�`7���S�z�����mg�!H�\\Ƕ���6=���5,��}M�cy�o7\r\r<u����4}���\Z6H9�E@_�H=���#����5��-�\ZFJe���!�n}�7�IK��<�ov�J$���{7첃A�:.6~l�_6��p������\r��5�Q��2�-V�,�UY9<ep����[o`e��iu	�k�C���i�9%[��Zh7�n���������\0�/	�.F\r\nendstream\r\nendobj\r\n73 0 obj\r\n<</Type/XRef/Size 73/W[ 1 4 2] /Root 1 0 R/Info 13 0 R/ID[<6E249F90F18B724493526401E1432DE3><6E249F90F18B724493526401E1432DE3>] /Filter/FlateDecode/Length 182>>\r\nstream\r\nx�5ѷ\rQ�a���sN�0	;P\"1\0%\r5��A��,[.l�erB����uT�	<��]����EqNJq���q�e)��f��-�d���,p�<��!\0A�\ra�@b�$!i�@V��P�\"���B\r�Ѐ&��\r�B�0�!�`\rc���\\�v�w�oʎ��\"�3�\r\nendstream\r\nendobj\r\nxref\r\n0 74\r\n0000000014 65535 f\r\n0000000017 00000 n\r\n0000000125 00000 n\r\n0000000193 00000 n\r\n0000000423 00000 n\r\n0000002862 00000 n\r\n0000003036 00000 n\r\n0000003278 00000 n\r\n0000003508 00000 n\r\n0000006078 00000 n\r\n0000006319 00000 n\r\n0000007007 00000 n\r\n0000007176 00000 n\r\n0000007416 00000 n\r\n0000000015 65535 f\r\n0000000016 65535 f\r\n0000000017 65535 f\r\n0000000018 65535 f\r\n0000000019 65535 f\r\n0000000020 65535 f\r\n0000000021 65535 f\r\n0000000022 65535 f\r\n0000000023 65535 f\r\n0000000024 65535 f\r\n0000000025 65535 f\r\n0000000026 65535 f\r\n0000000027 65535 f\r\n0000000028 65535 f\r\n0000000029 65535 f\r\n0000000030 65535 f\r\n0000000031 65535 f\r\n0000000032 65535 f\r\n0000000033 65535 f\r\n0000000034 65535 f\r\n0000000035 65535 f\r\n0000000036 65535 f\r\n0000000037 65535 f\r\n0000000038 65535 f\r\n0000000039 65535 f\r\n0000000040 65535 f\r\n0000000041 65535 f\r\n0000000042 65535 f\r\n0000000043 65535 f\r\n0000000044 65535 f\r\n0000000045 65535 f\r\n0000000046 65535 f\r\n0000000047 65535 f\r\n0000000048 65535 f\r\n0000000049 65535 f\r\n0000000050 65535 f\r\n0000000051 65535 f\r\n0000000052 65535 f\r\n0000000053 65535 f\r\n0000000054 65535 f\r\n0000000055 65535 f\r\n0000000056 65535 f\r\n0000000057 65535 f\r\n0000000058 65535 f\r\n0000000059 65535 f\r\n0000000060 65535 f\r\n0000000061 65535 f\r\n0000000062 65535 f\r\n0000000063 65535 f\r\n0000000064 65535 f\r\n0000000065 65535 f\r\n0000000066 65535 f\r\n0000000067 65535 f\r\n0000000068 65535 f\r\n0000000000 65535 f\r\n0000008347 00000 n\r\n0000008642 00000 n\r\n0000036989 00000 n\r\n0000037016 00000 n\r\n0000078876 00000 n\r\ntrailer\r\n<</Size 74/Root 1 0 R/Info 13 0 R/ID[<6E249F90F18B724493526401E1432DE3><6E249F90F18B724493526401E1432DE3>] >>\r\nstartxref\r\n79259\r\n%%EOF\r\nxref\r\n0 0\r\ntrailer\r\n<</Size 74/Root 1 0 R/Info 13 0 R/ID[<6E249F90F18B724493526401E1432DE3><6E249F90F18B724493526401E1432DE3>] /Prev 79259/XRefStm 78876>>\r\nstartxref\r\n80896\r\n%%EOF'),(60,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0\0}\0\0\0��#d\0\0\0�PLTE\0\0\0TTTTTTTTTTTTvvv���TTT���eee\\\\\\TTTTTTTTT���TTTmmmTTT���TTT������TTTTTT���TTT^^^���������eee���������������������TTTTTT��������������������ʖ�����������������ooo�����ʮ��yyyccc������ggg���vvv������```������������������jjjjjj~~~{{{�����������ƓP�F\0\0\0StRNS\0��`0�k$	�������H�k<���w��6P]�}*���HT\\n���b\'t��t�-�$N��hKQ���w���b\\���}E�n�EB?k`�y�\0\0\nIDATx^��Ws�0�a�r���B��Z6���{��?f--B2�x/3����0���0p���{\0�n1:/�6�u���=��u�cX���i���9?e��ZE��Xip��JŅO�?:|�ek��P*�9����H�d���3[�-��-����O?i��\0�o=�_Lw�3*��hb�T�7Y��F7��\nNS�O*��W�T0緃���⏟�����\0��|�z�3�p���\'ɤ�n8�\0ܩ�F��+ya�9:1U���������.�|��Y�p�`���Bi�e��v;Y��P��8��B�g��G>𘌓׽]���u@m[����&o��\r�#r���۩-�Z��g�G�v�cs�U�f{\'�=��X�G��\r���v�.��B�+��L���`o�ߨ��%L�M��o�.����1��{�A�n�C���_%Ɉ5�} �3݂�֚�����i�,d��@��W|�ʮ%�SW��?&��g��/��1���~����)���L�s��{I�ס��B�$��&��\0\0\0\0IEND�B`�');
/*!40000 ALTER TABLE `filecontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filemodel`
--

DROP TABLE IF EXISTS `filemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filemodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `filecontent_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_id` int(11) unsigned DEFAULT NULL,
  `relatedmodel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filemodel`
--

LOCK TABLES `filemodel` WRITE;
/*!40000 ALTER TABLE `filemodel` DISABLE KEYS */;
INSERT INTO `filemodel` VALUES (1,'200x50.gif',449,'image/gif',3,1,NULL,NULL),(2,'200x200.gif',712,'image/gif',4,2,NULL,NULL),(3,'580x180.gif',1898,'image/gif',5,3,NULL,NULL),(4,'googleMaps.png',39873,'image/png',6,4,NULL,NULL),(5,'testImage.png',935,'image/png',57,5,1,'autoresponder'),(6,'testZip.zip',1027,'application/zip',59,6,2,'autoresponder'),(7,'testZip.zip',1027,'application/zip',60,7,2,'autoresponder'),(8,'testDocument.docx',14166,'application/msword',62,8,3,'autoresponder'),(9,'testLogo.jpg',2238,'image/jpeg',63,9,3,'autoresponder'),(10,'testPDF.pdf',81075,'application/pdf',64,10,3,'autoresponder'),(11,'testPDF.pdf',81075,'application/pdf',66,11,4,'autoresponder'),(12,'testPDF.pdf',81075,'application/pdf',67,12,4,'autoresponder'),(13,'testPDF.pdf',81075,'application/pdf',114,13,1,'campaign'),(14,'testLogo.jpg',2238,'image/jpeg',115,14,1,'campaign'),(15,'testLogo.jpg',2238,'image/jpeg',116,15,1,'campaign'),(16,'testNote.txt',6495,'text/plain',118,16,2,'campaign'),(17,'testZip.zip',1027,'application/zip',120,17,3,'campaign'),(18,'testPDF.pdf',81075,'application/pdf',121,18,3,'campaign'),(19,'testZip.zip',1027,'application/zip',122,19,3,'campaign'),(20,'testImage.png',935,'image/png',124,20,4,'campaign'),(21,'testNote.txt',6495,'text/plain',125,21,4,'campaign'),(22,'testNote.txt',6495,'text/plain',126,22,4,'campaign'),(23,'testNote.txt',6495,'text/plain',127,23,4,'campaign'),(24,'testLogo.jpg',2238,'image/jpeg',129,24,5,'campaign'),(25,'testLogo.jpg',2238,'image/jpeg',130,25,5,'campaign'),(26,'testLogo.jpg',2238,'image/jpeg',132,26,6,'campaign'),(27,'testImage.png',935,'image/png',134,27,7,'campaign'),(28,'testLogo.jpg',2238,'image/jpeg',135,28,7,'campaign'),(29,'testPDF.pdf',81075,'application/pdf',136,29,7,'campaign'),(30,'testImage.png',935,'image/png',137,30,7,'campaign'),(31,'testLogo.jpg',2238,'image/jpeg',139,31,8,'campaign'),(32,'testLogo.jpg',2238,'image/jpeg',140,32,8,'campaign'),(33,'testImage.png',935,'image/png',141,33,8,'campaign'),(34,'testPDF.pdf',81075,'application/pdf',142,34,8,'campaign'),(35,'testPDF.pdf',81075,'application/pdf',144,35,9,'campaign'),(36,'testNote.txt',6495,'text/plain',145,36,9,'campaign'),(37,'testZip.zip',1027,'application/zip',146,37,9,'campaign'),(38,'testZip.zip',1027,'application/zip',148,38,10,'campaign'),(39,'testPDF.pdf',81075,'application/pdf',149,39,10,'campaign'),(40,'testImage.png',935,'image/png',205,40,7,'emailtemplate'),(41,'testLogo.jpg',2238,'image/jpeg',207,41,8,'emailtemplate'),(42,'testDocument.docx',14166,'application/msword',208,42,8,'emailtemplate'),(43,'testImage.png',935,'image/png',209,43,8,'emailtemplate'),(44,'testImage.png',935,'image/png',210,44,8,'emailtemplate'),(45,'testLogo.jpg',2238,'image/jpeg',211,45,8,'emailtemplate'),(46,'testLogo.jpg',2238,'image/jpeg',213,46,9,'emailtemplate'),(47,'testPDF.pdf',81075,'application/pdf',215,47,10,'emailtemplate'),(48,'testImage.png',935,'image/png',216,48,10,'emailtemplate'),(49,'testNote.txt',6495,'text/plain',217,49,10,'emailtemplate'),(50,'testLogo.jpg',2238,'image/jpeg',218,50,10,'emailtemplate'),(51,'testNote.txt',6495,'text/plain',219,51,10,'emailtemplate'),(52,'testZip.zip',1027,'application/zip',221,52,11,'emailtemplate'),(53,'testDocument.docx',14166,'application/msword',222,53,11,'emailtemplate'),(54,'testNote.txt',6495,'text/plain',223,54,11,'emailtemplate'),(55,'testLogo.jpg',2238,'image/jpeg',225,55,12,'emailtemplate'),(56,'testZip.zip',1027,'application/zip',226,56,12,'emailtemplate'),(57,'testImage.png',935,'image/png',228,57,13,'emailtemplate'),(58,'testPDF.pdf',81075,'application/pdf',229,58,13,'emailtemplate'),(59,'testPDF.pdf',81075,'application/pdf',230,59,13,'emailtemplate'),(60,'testImage.png',935,'image/png',231,60,13,'emailtemplate');
/*!40000 ALTER TABLE `filemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamebadge`
--

DROP TABLE IF EXISTS `gamebadge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamebadge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamebadge`
--

LOCK TABLES `gamebadge` WRITE;
/*!40000 ALTER TABLE `gamebadge` DISABLE KEYS */;
INSERT INTO `gamebadge` VALUES (1,'LoginUser',2,247,1),(2,'CreateAccount',3,248,1),(3,'LoginUser',2,255,14),(4,'CreateAccount',3,256,14),(5,'LoginUser',2,263,26),(6,'CreateAccount',3,264,26),(7,'LoginUser',2,271,27),(8,'CreateAccount',3,272,27),(9,'LoginUser',2,279,28),(10,'CreateAccount',3,280,28),(11,'LoginUser',2,287,29),(12,'CreateAccount',3,288,29),(13,'LoginUser',2,295,30),(14,'CreateAccount',3,296,30),(15,'LoginUser',2,303,31),(16,'CreateAccount',3,304,31),(17,'LoginUser',2,311,32),(18,'CreateAccount',3,312,32),(19,'LoginUser',2,319,33),(20,'CreateAccount',3,320,33);
/*!40000 ALTER TABLE `gamebadge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamecoin`
--

DROP TABLE IF EXISTS `gamecoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamecoin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamecoin`
--

LOCK TABLES `gamecoin` WRITE;
/*!40000 ALTER TABLE `gamecoin` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamecoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamecollection`
--

DROP TABLE IF EXISTS `gamecollection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamecollection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamecollection`
--

LOCK TABLES `gamecollection` WRITE;
/*!40000 ALTER TABLE `gamecollection` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamecollection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamelevel`
--

DROP TABLE IF EXISTS `gamelevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamelevel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamelevel`
--

LOCK TABLES `gamelevel` WRITE;
/*!40000 ALTER TABLE `gamelevel` DISABLE KEYS */;
INSERT INTO `gamelevel` VALUES (1,'General',1,249,1),(2,'NewBusiness',1,250,1),(3,'General',1,257,14),(4,'NewBusiness',1,258,14),(5,'General',1,265,26),(6,'NewBusiness',1,266,26),(7,'General',1,273,27),(8,'NewBusiness',1,274,27),(9,'General',1,281,28),(10,'NewBusiness',1,282,28),(11,'General',1,289,29),(12,'NewBusiness',1,290,29),(13,'General',1,297,30),(14,'NewBusiness',1,298,30),(15,'General',1,305,31),(16,'NewBusiness',1,306,31),(17,'General',1,313,32),(18,'NewBusiness',1,314,32),(19,'General',1,321,33),(20,'NewBusiness',1,322,33);
/*!40000 ALTER TABLE `gamelevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamenotification`
--

DROP TABLE IF EXISTS `gamenotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamenotification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamenotification`
--

LOCK TABLES `gamenotification` WRITE;
/*!40000 ALTER TABLE `gamenotification` DISABLE KEYS */;
/*!40000 ALTER TABLE `gamenotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamepoint`
--

DROP TABLE IF EXISTS `gamepoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamepoint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamepoint`
--

LOCK TABLES `gamepoint` WRITE;
/*!40000 ALTER TABLE `gamepoint` DISABLE KEYS */;
INSERT INTO `gamepoint` VALUES (1,'UserAdoption',242,244,1),(2,'NewBusiness',100,246,1),(3,'UserAdoption',135,252,14),(4,'NewBusiness',100,254,14),(5,'UserAdoption',297,260,26),(6,'NewBusiness',100,262,26),(7,'UserAdoption',259,268,27),(8,'NewBusiness',100,270,27),(9,'UserAdoption',252,276,28),(10,'NewBusiness',100,278,28),(11,'UserAdoption',130,284,29),(12,'NewBusiness',100,286,29),(13,'UserAdoption',202,292,30),(14,'NewBusiness',100,294,30),(15,'UserAdoption',193,300,31),(16,'NewBusiness',100,302,31),(17,'UserAdoption',241,308,32),(18,'NewBusiness',100,310,32),(19,'UserAdoption',132,316,33),(20,'NewBusiness',100,318,33);
/*!40000 ALTER TABLE `gamepoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamepointtransaction`
--

DROP TABLE IF EXISTS `gamepointtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamepointtransaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(11) DEFAULT NULL,
  `createddatetime` datetime DEFAULT NULL,
  `gamepoint_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gamepoint_id` (`gamepoint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamepointtransaction`
--

LOCK TABLES `gamepointtransaction` WRITE;
/*!40000 ALTER TABLE `gamepointtransaction` DISABLE KEYS */;
INSERT INTO `gamepointtransaction` VALUES (1,242,'2015-02-10 16:12:37',1),(2,100,'2015-02-10 16:12:37',2),(3,135,'2015-02-10 16:12:37',3),(4,100,'2015-02-10 16:12:37',4),(5,297,'2015-02-10 16:12:37',5),(6,100,'2015-02-10 16:12:37',6),(7,259,'2015-02-10 16:12:37',7),(8,100,'2015-02-10 16:12:37',8),(9,252,'2015-02-10 16:12:37',9),(10,100,'2015-02-10 16:12:37',10),(11,130,'2015-02-10 16:12:37',11),(12,100,'2015-02-10 16:12:37',12),(13,202,'2015-02-10 16:12:38',13),(14,100,'2015-02-10 16:12:38',14),(15,193,'2015-02-10 16:12:38',15),(16,100,'2015-02-10 16:12:38',16),(17,241,'2015-02-10 16:12:38',17),(18,100,'2015-02-10 16:12:38',18),(19,132,'2015-02-10 16:12:38',19),(20,100,'2015-02-10 16:12:38',20);
/*!40000 ALTER TABLE `gamepointtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamereward`
--

DROP TABLE IF EXISTS `gamereward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamereward` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cost` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `expirationdatetime` datetime DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamereward`
--

LOCK TABLES `gamereward` WRITE;
/*!40000 ALTER TABLE `gamereward` DISABLE KEYS */;
INSERT INTO `gamereward` VALUES (1,5,NULL,NULL,'Coffeeshop $10 Gift card',2,86),(2,10,NULL,NULL,'1 extra vacation day',20,87),(3,5,NULL,NULL,'Lunch from Marianos',9,88),(4,3,NULL,NULL,'Dinner with the boss',16,89),(5,6,NULL,NULL,'Riverboat cruise',16,90),(6,3,NULL,NULL,'4 hours of Yacht time',10,91),(7,6,NULL,NULL,'First class flight upgrade',19,92),(8,8,NULL,NULL,'$500 gift card',6,93),(9,10,NULL,NULL,'2 Tickets to the basketball game',14,94),(10,2,NULL,NULL,'50 inch Flat-screen TV',9,95);
/*!40000 ALTER TABLE `gamereward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamereward_read`
--

DROP TABLE IF EXISTS `gamereward_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamereward_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `gamereward_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamereward_read`
--

LOCK TABLES `gamereward_read` WRITE;
/*!40000 ALTER TABLE `gamereward_read` DISABLE KEYS */;
INSERT INTO `gamereward_read` VALUES (1,86,'R1',1),(2,86,'G2',1),(3,87,'R1',1),(4,87,'G2',1),(5,88,'R1',1),(6,88,'G2',1),(7,89,'G2',1),(8,90,'R1',1),(9,90,'G2',1),(10,91,'R1',1),(11,91,'G2',1),(12,92,'R1',1),(13,92,'G2',1),(14,93,'R1',1),(15,93,'G2',1),(16,94,'R1',1),(17,94,'G2',1),(18,95,'R1',1),(19,95,'G2',1);
/*!40000 ALTER TABLE `gamereward_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamerewardtransaction`
--

DROP TABLE IF EXISTS `gamerewardtransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamerewardtransaction` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `redemptiondatetime` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `transactions_gamereward_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamerewardtransaction`
--

LOCK TABLES `gamerewardtransaction` WRITE;
/*!40000 ALTER TABLE `gamerewardtransaction` DISABLE KEYS */;
INSERT INTO `gamerewardtransaction` VALUES (1,'2015-02-10 16:12:35',2,26,1),(2,'2015-02-10 16:12:35',1,31,1),(3,'2015-02-10 16:12:35',3,32,1),(4,'2015-02-10 16:12:35',3,33,1),(5,'2015-02-10 16:12:35',3,31,1),(6,'2015-02-10 16:12:36',1,26,2),(7,'2015-02-10 16:12:36',2,31,2),(8,'2015-02-10 16:12:36',1,30,2),(9,'2015-02-10 16:12:36',2,28,2),(10,'2015-02-10 16:12:36',2,30,2),(11,'2015-02-10 16:12:36',3,30,3),(12,'2015-02-10 16:12:36',3,28,3),(13,'2015-02-10 16:12:36',2,32,3),(14,'2015-02-10 16:12:36',1,32,3),(15,'2015-02-10 16:12:36',2,31,3),(16,'2015-02-10 16:12:36',3,28,4),(17,'2015-02-10 16:12:36',3,32,4),(18,'2015-02-10 16:12:36',1,26,4),(19,'2015-02-10 16:12:36',2,28,4),(20,'2015-02-10 16:12:36',1,32,4),(21,'2015-02-10 16:12:36',3,27,5),(22,'2015-02-10 16:12:36',1,31,5),(23,'2015-02-10 16:12:36',1,32,5),(24,'2015-02-10 16:12:36',1,26,5),(25,'2015-02-10 16:12:36',1,31,5),(26,'2015-02-10 16:12:36',3,29,6),(27,'2015-02-10 16:12:36',1,32,6),(28,'2015-02-10 16:12:36',1,29,6),(29,'2015-02-10 16:12:36',1,29,6),(30,'2015-02-10 16:12:36',3,26,6),(31,'2015-02-10 16:12:36',1,31,7),(32,'2015-02-10 16:12:36',1,26,7),(33,'2015-02-10 16:12:36',2,27,7),(34,'2015-02-10 16:12:36',1,30,7),(35,'2015-02-10 16:12:36',3,31,7),(36,'2015-02-10 16:12:36',2,32,8),(37,'2015-02-10 16:12:36',3,29,8),(38,'2015-02-10 16:12:36',3,27,8),(39,'2015-02-10 16:12:36',2,33,8),(40,'2015-02-10 16:12:36',2,30,8),(41,'2015-02-10 16:12:36',1,29,9),(42,'2015-02-10 16:12:36',1,32,9),(43,'2015-02-10 16:12:36',2,32,9),(44,'2015-02-10 16:12:36',1,28,9),(45,'2015-02-10 16:12:36',1,33,9),(46,'2015-02-10 16:12:37',1,32,10),(47,'2015-02-10 16:12:37',3,28,10),(48,'2015-02-10 16:12:37',2,28,10),(49,'2015-02-10 16:12:37',1,31,10),(50,'2015-02-10 16:12:37',3,28,10);
/*!40000 ALTER TABLE `gamerewardtransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamescore`
--

DROP TABLE IF EXISTS `gamescore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamescore` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamescore`
--

LOCK TABLES `gamescore` WRITE;
/*!40000 ALTER TABLE `gamescore` DISABLE KEYS */;
INSERT INTO `gamescore` VALUES (1,'LoginUser',10,243,1),(2,'CreateAccount',10,245,1),(3,'LoginUser',10,251,14),(4,'CreateAccount',10,253,14),(5,'LoginUser',10,259,26),(6,'CreateAccount',10,261,26),(7,'LoginUser',10,267,27),(8,'CreateAccount',10,269,27),(9,'LoginUser',10,275,28),(10,'CreateAccount',10,277,28),(11,'LoginUser',10,283,29),(12,'CreateAccount',10,285,29),(13,'LoginUser',10,291,30),(14,'CreateAccount',10,293,30),(15,'LoginUser',10,299,31),(16,'CreateAccount',10,301,31),(17,'LoginUser',10,307,32),(18,'CreateAccount',10,309,32),(19,'LoginUser',10,315,33),(20,'CreateAccount',10,317,33);
/*!40000 ALTER TABLE `gamescore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalmetadata`
--

DROP TABLE IF EXISTS `globalmetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalmetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedmetadata` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_emaNssalc` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalmetadata`
--

LOCK TABLES `globalmetadata` WRITE;
/*!40000 ALTER TABLE `globalmetadata` DISABLE KEYS */;
INSERT INTO `globalmetadata` VALUES (1,'ContactsModule','a:10:{s:17:\"designerMenuItems\";a:4:{s:14:\"showFieldsLink\";b:1;s:15:\"showGeneralLink\";b:1;s:15:\"showLayoutsLink\";b:1;s:13:\"showMenusLink\";b:1;}s:26:\"globalSearchAttributeNames\";a:4:{i:0;s:8:\"fullName\";i:1;s:8:\"anyEmail\";i:2;s:11:\"officePhone\";i:3;s:11:\"mobilePhone\";}s:13:\"startingState\";i:1;s:12:\"tabMenuItems\";a:1:{i:0;a:4:{s:5:\"label\";s:80:\"eval:Zurmo::t(\'ContactsModule\', \'ContactsModulePluralLabel\', $translationParams)\";s:3:\"url\";a:1:{i:0;s:17:\"/contacts/default\";}s:5:\"right\";s:19:\"Access Contacts Tab\";s:6:\"mobile\";b:1;}}s:24:\"shortcutsCreateMenuItems\";a:1:{i:0;a:4:{s:5:\"label\";s:82:\"eval:Zurmo::t(\'ContactsModule\', \'ContactsModuleSingularLabel\', $translationParams)\";s:3:\"url\";a:1:{i:0;s:24:\"/contacts/default/create\";}s:5:\"right\";s:15:\"Create Contacts\";s:6:\"mobile\";b:1;}}s:48:\"updateLatestActivityDateTimeWhenATaskIsCompleted\";b:1;s:46:\"updateLatestActivityDateTimeWhenANoteIsCreated\";b:1;s:55:\"updateLatestActivityDateTimeWhenAnEmailIsSentOrArchived\";b:1;s:51:\"updateLatestActivityDateTimeWhenAMeetingIsInThePast\";b:1;s:15:\"startingStateId\";i:5;}'),(2,'ZurmoModule','a:6:{s:18:\"configureMenuItems\";a:8:{i:0;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:52:\"eval:Zurmo::t(\'ZurmoModule\', \'Global Configuration\')\";s:16:\"descriptionLabel\";s:59:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage Global Configuration\')\";s:5:\"route\";s:32:\"/zurmo/default/configurationEdit\";s:5:\"right\";s:27:\"Access Global Configuration\";}i:1;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:54:\"eval:Zurmo::t(\'ZurmoModule\', \'Currency Configuration\')\";s:16:\"descriptionLabel\";s:61:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage Currency Configuration\')\";s:5:\"route\";s:33:\"/zurmo/currency/configurationList\";s:5:\"right\";s:29:\"Access Currency Configuration\";}i:2;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:34:\"eval:Zurmo::t(\'Core\', \'Languages\')\";s:16:\"descriptionLabel\";s:55:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage Active Languages\')\";s:5:\"route\";s:33:\"/zurmo/language/configurationList\";s:5:\"right\";s:27:\"Access Global Configuration\";}i:3;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:47:\"eval:Zurmo::t(\'ZurmoModule\', \'Developer Tools\')\";s:16:\"descriptionLabel\";s:54:\"eval:Zurmo::t(\'ZurmoModule\', \'Access Developer Tools\')\";s:5:\"route\";s:19:\"/zurmo/development/\";s:5:\"right\";s:27:\"Access Global Configuration\";}i:4;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:60:\"eval:Zurmo::t(\'ZurmoModule\', \'Authentication Configuration\')\";s:16:\"descriptionLabel\";s:67:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage Authentication Configuration\')\";s:5:\"route\";s:39:\"/zurmo/authentication/configurationEdit\";s:5:\"right\";s:27:\"Access Global Configuration\";}i:5;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:39:\"eval:Zurmo::t(\'ZurmoModule\', \'Plugins\')\";s:16:\"descriptionLabel\";s:63:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage Plugins and Integrations\')\";s:5:\"route\";s:32:\"/zurmo/plugins/configurationEdit\";s:5:\"right\";s:27:\"Access Global Configuration\";}i:6;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:60:\"eval:Zurmo::t(\'ZurmoModule\', \'User Interface Configuration\')\";s:16:\"descriptionLabel\";s:67:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage User Interface Configuration\')\";s:5:\"route\";s:45:\"/zurmo/default/userInterfaceConfigurationEdit\";s:5:\"right\";s:27:\"Access Global Configuration\";}i:7;a:5:{s:8:\"category\";i:1;s:10:\"titleLabel\";s:52:\"eval:Zurmo::t(\'ZurmoModule\', \'System Configuration\')\";s:16:\"descriptionLabel\";s:59:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage System Configuration\')\";s:5:\"route\";s:38:\"/zurmo/default/systemConfigurationEdit\";s:5:\"right\";s:27:\"Access Global Configuration\";}}s:15:\"headerMenuItems\";a:3:{i:0;a:5:{s:5:\"label\";s:46:\"eval:Zurmo::t(\'ZurmoModule\', \'Administration\')\";s:3:\"url\";a:1:{i:0;s:14:\"/configuration\";}s:5:\"right\";s:25:\"Access Administration Tab\";s:5:\"order\";i:1;s:6:\"mobile\";b:0;}i:1;a:4:{s:5:\"label\";s:45:\"eval:Zurmo::t(\'ZurmoModule\', \'Need Support?\')\";s:3:\"url\";s:36:\"http://www.zurmo.com/needSupport.php\";s:5:\"order\";i:9;s:6:\"mobile\";b:1;}i:2;a:4:{s:5:\"label\";s:43:\"eval:Zurmo::t(\'ZurmoModule\', \'About Zurmo\')\";s:3:\"url\";a:1:{i:0;s:20:\"/zurmo/default/about\";}s:5:\"order\";i:10;s:6:\"mobile\";b:1;}}s:21:\"configureSubMenuItems\";a:1:{i:0;a:5:{s:8:\"category\";i:2;s:10:\"titleLabel\";s:50:\"eval:Zurmo::t(\'ZurmoModule\', \'LDAP Configuration\')\";s:16:\"descriptionLabel\";s:58:\"eval:Zurmo::t(\'ZurmoModule\', \'Manage LDAP Authentication\')\";s:5:\"route\";s:33:\"/zurmo/ldap/configurationEditLdap\";s:5:\"right\";s:27:\"Access Global Configuration\";}}s:31:\"adminTabMenuItemsModuleOrdering\";a:9:{i:0;s:4:\"home\";i:1;s:13:\"configuration\";i:2;s:8:\"designer\";i:3;s:6:\"import\";i:4;s:6:\"groups\";i:5;s:5:\"users\";i:6;s:5:\"roles\";i:7;s:9:\"workflows\";i:8;s:15:\"contactWebForms\";}s:26:\"tabMenuItemsModuleOrdering\";a:10:{i:0;s:4:\"home\";i:1;s:13:\"mashableInbox\";i:2;s:8:\"accounts\";i:3;s:5:\"leads\";i:4;s:8:\"contacts\";i:5;s:13:\"opportunities\";i:6;s:9:\"marketing\";i:7;s:8:\"projects\";i:8;s:8:\"products\";i:9;s:7:\"reports\";}s:15:\"applicationName\";s:17:\"Demo Company Inc.\";}'),(3,'Currency','a:4:{s:7:\"members\";a:3:{i:0;s:6:\"active\";i:1;s:4:\"code\";i:2;s:10:\"rateToBase\";}s:5:\"rules\";a:9:{i:0;a:2:{i:0;s:6:\"active\";i:1;s:7:\"boolean\";}i:1;a:3:{i:0;s:6:\"active\";i:1;s:7:\"default\";s:5:\"value\";b:1;}i:2;a:2:{i:0;s:4:\"code\";i:1;s:8:\"required\";}i:3;a:2:{i:0;s:4:\"code\";i:1;s:6:\"unique\";}i:4;a:3:{i:0;s:4:\"code\";i:1;s:4:\"type\";s:4:\"type\";s:6:\"string\";}i:5;a:4:{i:0;s:4:\"code\";i:1;s:6:\"length\";s:3:\"min\";i:3;s:3:\"max\";i:3;}i:6;a:4:{i:0;s:4:\"code\";i:1;s:5:\"match\";s:7:\"pattern\";s:19:\"/^[A-Z][A-Z][A-Z]$/\";s:7:\"message\";s:35:\"Code must be a valid currency code.\";}i:7;a:2:{i:0;s:10:\"rateToBase\";i:1;s:8:\"required\";}i:8;a:3:{i:0;s:10:\"rateToBase\";i:1;s:4:\"type\";s:4:\"type\";s:5:\"float\";}}s:20:\"defaultSortAttribute\";s:4:\"code\";s:32:\"lastAttemptedRateUpdateTimeStamp\";i:1423584813;}');
/*!40000 ALTER TABLE `globalmetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagefilemodel`
--

DROP TABLE IF EXISTS `imagefilemodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagefilemodel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isshared` tinyint(1) unsigned DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `inactive` tinyint(1) unsigned DEFAULT NULL,
  `filemodel_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagefilemodel`
--

LOCK TABLES `imagefilemodel` WRITE;
/*!40000 ALTER TABLE `imagefilemodel` DISABLE KEYS */;
INSERT INTO `imagefilemodel` VALUES (1,0,200,50,0,1),(2,0,200,200,0,2),(3,0,580,180,0,3),(4,0,580,180,0,4);
/*!40000 ALTER TABLE `imagefilemodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createddatetime` datetime DEFAULT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `createdbyuser__user_id` int(11) unsigned DEFAULT NULL,
  `modifiedbyuser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=846 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'2015-02-10 16:12:08','2015-02-10 16:12:11',NULL,1),(2,'2015-02-10 16:12:08','2015-02-10 16:12:09',1,1),(3,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(4,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(5,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(6,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(7,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(8,'2015-02-10 16:12:08','2015-02-10 16:12:09',1,1),(9,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(10,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(11,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(12,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(13,'2015-02-10 16:12:08','2015-02-10 16:12:08',1,1),(14,'2015-02-10 16:12:09','2015-02-10 16:12:09',1,1),(15,'2015-02-10 16:12:09','2015-02-10 16:12:09',1,1),(16,'2015-02-10 16:12:09','2015-02-10 16:12:09',1,1),(17,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(18,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(19,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(20,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(21,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(22,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(23,'2015-02-10 16:12:11','2015-02-10 16:12:12',1,1),(24,'2015-02-10 16:12:11','2015-02-10 16:12:15',1,1),(25,'2015-02-10 16:12:11','2015-02-10 16:12:11',1,1),(26,'2015-02-10 16:12:11','2015-02-10 16:12:12',1,1),(27,'2015-02-10 16:12:12','2015-02-10 16:12:12',1,1),(28,'2015-02-10 16:12:12','2015-02-10 16:12:13',1,1),(29,'2015-02-10 16:12:13','2015-02-10 16:12:13',1,1),(30,'2015-02-10 16:12:13','2015-02-10 16:12:14',1,1),(31,'2015-02-10 16:12:14','2015-02-10 16:12:14',1,1),(32,'2015-02-10 16:12:14','2015-02-10 16:12:15',1,1),(33,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(34,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(35,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(36,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(37,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(38,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(39,'2015-02-10 16:12:15','2015-02-10 16:12:15',1,1),(40,'2015-02-10 16:12:15','2015-02-10 16:12:16',1,1),(41,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(42,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(43,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(44,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(45,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(46,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(47,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(48,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(49,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(50,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(51,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(52,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(53,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(54,'2015-02-10 16:12:16','2015-02-10 16:12:16',1,1),(55,'2015-02-10 16:12:17','2015-02-10 16:12:17',1,1),(56,'2015-02-10 16:12:17','2015-02-10 16:12:17',1,1),(57,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(58,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(59,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(60,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(61,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(62,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(63,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(64,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(65,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(66,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(67,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(68,'2015-02-10 16:12:19','2015-02-10 16:12:19',1,1),(69,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(70,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(71,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(72,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(73,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(74,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(75,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(76,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(77,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(78,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(79,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(80,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(81,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(82,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(83,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(84,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(85,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(86,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(87,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(88,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(89,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(90,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(91,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(92,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(93,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(94,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(95,'2015-02-10 16:12:20','2015-02-10 16:12:20',1,1),(96,'2015-01-20 16:12:20','2015-02-10 16:12:21',1,1),(97,'2015-02-03 16:12:21','2015-02-10 16:12:21',1,1),(98,'2015-01-18 16:12:21','2015-02-10 16:12:22',1,1),(99,'2015-01-23 16:12:22','2015-02-10 16:12:22',1,1),(100,'2015-01-28 16:12:22','2015-02-10 16:12:23',1,1),(101,'2015-01-21 16:12:23','2015-02-10 16:12:23',1,1),(102,'2015-01-10 16:12:23','2015-02-10 16:12:24',1,1),(103,'2015-01-07 16:12:24','2015-02-10 16:12:24',1,1),(104,'2015-01-11 16:12:24','2015-02-10 16:12:25',1,1),(105,'2015-01-18 16:12:25','2015-02-10 16:12:25',1,1),(106,'2015-01-17 16:12:25','2015-02-10 16:12:26',1,1),(107,'2015-01-27 16:12:26','2015-02-10 16:12:26',1,1),(108,'2015-01-17 16:12:26','2015-02-10 16:12:27',1,1),(109,'2015-01-28 16:12:27','2015-02-10 16:12:27',1,1),(110,'2015-01-09 16:12:27','2015-02-10 16:12:28',1,1),(111,'2015-01-15 16:12:28','2015-02-10 16:12:28',1,1),(112,'2015-02-04 16:12:28','2015-02-10 16:12:29',1,1),(113,'2015-01-29 16:12:29','2015-02-10 16:12:29',1,1),(114,'2015-02-10 16:12:29','2015-02-10 16:12:29',1,1),(115,'2015-02-10 16:12:29','2015-02-10 16:12:29',1,1),(116,'2015-02-10 16:12:29','2015-02-10 16:12:29',1,1),(117,'2015-02-10 16:12:29','2015-02-10 16:12:29',1,1),(118,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(119,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(120,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(121,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(122,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(123,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(124,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(125,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(126,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(127,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(128,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(129,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(130,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(131,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(132,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(133,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(134,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(135,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(136,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(137,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(138,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(139,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(140,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(141,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(142,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(143,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(144,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(145,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(146,'2015-02-10 16:12:30','2015-02-10 16:12:30',1,1),(147,'2015-02-10 16:12:30','2015-02-10 16:12:31',1,1),(148,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(149,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(150,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(151,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(152,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(153,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(154,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(155,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(156,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(157,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(158,'2015-02-10 16:12:31','2015-02-10 16:12:31',1,1),(159,'2015-02-10 16:12:31','2015-02-10 16:12:32',1,1),(160,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(161,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(162,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(163,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(164,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(165,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(166,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(167,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(168,'2015-02-10 16:12:32','2015-02-10 16:12:32',1,1),(169,'2015-01-22 16:12:32','2015-02-10 16:12:32',1,1),(170,'2015-02-06 16:12:32','2015-02-10 16:12:32',1,1),(171,'2015-02-03 16:12:32','2015-02-10 16:12:32',1,1),(172,'2015-01-11 16:12:32','2015-02-10 16:12:32',1,1),(173,'2015-01-23 16:12:32','2015-02-10 16:12:32',1,1),(174,'2015-01-14 16:12:32','2015-02-10 16:12:32',1,1),(175,'2015-02-04 16:12:32','2015-02-10 16:12:32',1,1),(176,'2015-01-18 16:12:32','2015-02-10 16:12:33',1,1),(177,'2015-01-23 16:12:33','2015-02-10 16:12:33',1,1),(178,'2015-01-19 16:12:33','2015-02-10 16:12:33',1,1),(179,'2015-02-01 16:12:33','2015-02-10 16:12:33',1,1),(180,'2015-01-10 16:12:33','2015-02-10 16:12:33',1,1),(181,'2015-01-31 16:12:33','2015-02-10 16:12:33',1,1),(182,'2015-01-25 16:12:33','2015-02-10 16:12:33',1,1),(183,'2015-01-23 16:12:33','2015-02-10 16:12:33',1,1),(184,'2015-01-10 16:12:33','2015-02-10 16:12:33',1,1),(185,'2015-01-22 16:12:33','2015-02-10 16:12:34',1,1),(186,'2015-01-18 16:12:34','2015-02-10 16:12:34',1,1),(187,'2015-02-10 16:12:34','2015-02-10 16:12:34',7,1),(188,'2015-02-10 16:12:34','2015-02-10 16:12:34',10,1),(189,'2015-02-10 16:12:34','2015-02-10 16:12:34',3,1),(190,'2015-02-10 16:12:34','2015-02-10 16:12:34',6,1),(191,'2015-02-10 16:12:34','2015-02-10 16:12:34',4,1),(192,'2015-02-10 16:12:34','2015-02-10 16:12:34',1,1),(193,'2015-02-10 16:12:34','2015-02-10 16:12:34',10,1),(194,'2015-02-10 16:12:34','2015-02-10 16:12:34',10,1),(195,'2015-02-10 16:12:34','2015-02-10 16:12:34',7,1),(196,'2015-02-10 16:12:34','2015-02-10 16:12:34',6,1),(197,'2015-02-10 16:12:34','2015-02-10 16:12:34',1,1),(198,'2015-02-10 16:12:34','2015-02-10 16:12:34',9,1),(199,'2015-02-10 16:12:34','2015-02-10 16:12:34',9,1),(200,'2015-02-10 16:12:34','2015-02-10 16:12:34',5,1),(201,'2015-02-10 16:12:34','2015-02-10 16:12:34',10,1),(202,'2015-02-10 16:12:34','2015-02-10 16:12:34',3,1),(203,'2015-02-10 16:12:34','2015-02-10 16:12:34',7,1),(204,'2015-02-10 16:12:34','2015-02-10 16:12:34',1,1),(205,'2015-02-10 16:12:34','2015-02-10 16:12:34',1,1),(206,'2015-02-10 16:12:34','2015-02-10 16:12:35',1,1),(207,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(208,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(209,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(210,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(211,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(212,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(213,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(214,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(215,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(216,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(217,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(218,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(219,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(220,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(221,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(222,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(223,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(224,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(225,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(226,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(227,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(228,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(229,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(230,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(231,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(232,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(233,'2015-02-10 16:12:35','2015-02-10 16:12:35',1,1),(234,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(235,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(236,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(237,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(238,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(239,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(240,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(241,'2015-02-10 16:12:36','2015-02-10 16:12:36',1,1),(242,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(243,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(244,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(245,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(246,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(247,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(248,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(249,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(250,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(251,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(252,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(253,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(254,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(255,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(256,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(257,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(258,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(259,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(260,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(261,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(262,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(263,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(264,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(265,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(266,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(267,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(268,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(269,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(270,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(271,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(272,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(273,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(274,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(275,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(276,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(277,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(278,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(279,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(280,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(281,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(282,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(283,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(284,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(285,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(286,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(287,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(288,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(289,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(290,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(291,'2015-02-10 16:12:37','2015-02-10 16:12:37',1,1),(292,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(293,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(294,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(295,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(296,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(297,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(298,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(299,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(300,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(301,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(302,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(303,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(304,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(305,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(306,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(307,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(308,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(309,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(310,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(311,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(312,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(313,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(314,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(315,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(316,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(317,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(318,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(319,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(320,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(321,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(322,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(323,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(324,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(325,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(326,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(327,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(328,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(329,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(330,'2015-02-10 16:12:38','2015-02-10 16:12:38',1,1),(331,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(332,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(333,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(334,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(335,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(336,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(337,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(338,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(339,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(340,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(341,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(342,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(343,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(344,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(345,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(346,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(347,'2015-02-10 16:12:39','2015-02-10 16:12:39',1,1),(348,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(349,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(350,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(351,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(352,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(353,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(354,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(355,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(356,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(357,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(358,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(359,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(360,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(361,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(362,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(363,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(364,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(365,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(366,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(367,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(368,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(369,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(370,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(371,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(372,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(373,'2015-02-10 16:12:40','2015-02-10 16:12:40',1,1),(374,'2015-02-10 16:12:40','2015-02-10 16:12:41',1,1),(375,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(376,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(377,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(378,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(379,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(380,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(381,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(382,'2015-02-10 16:12:41','2015-02-10 16:12:41',1,1),(383,'2015-02-10 16:12:41','2015-02-10 16:12:41',6,1),(384,'2015-02-10 16:12:41','2015-02-10 16:12:41',7,1),(385,'2015-02-10 16:12:41','2015-02-10 16:12:41',9,1),(386,'2015-02-10 16:12:41','2015-02-10 16:12:41',5,1),(387,'2015-02-10 16:12:41','2015-02-10 16:12:41',8,1),(388,'2015-02-10 16:12:41','2015-02-10 16:12:41',7,1),(389,'2015-02-10 16:12:41','2015-02-10 16:12:41',10,1),(390,'2015-02-10 16:12:41','2015-02-10 16:12:41',5,1),(391,'2015-02-10 16:12:41','2015-02-10 16:12:41',5,1),(392,'2015-02-10 16:12:41','2015-02-10 16:12:41',10,1),(393,'2015-02-10 16:12:42','2015-02-10 16:12:42',10,1),(394,'2015-02-10 16:12:42','2015-02-10 16:12:42',4,1),(395,'2015-02-10 16:12:42','2015-02-10 16:12:42',6,1),(396,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(397,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(398,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(399,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(400,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(401,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(402,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(403,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(404,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(405,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(406,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(407,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(408,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(409,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(410,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(411,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(412,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(413,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(414,'2015-02-10 16:12:42','2015-02-10 16:12:42',1,1),(415,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(416,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(417,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(418,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(419,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(420,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(421,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(422,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(423,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(424,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(425,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(426,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(427,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(428,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(429,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(430,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(431,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(432,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(433,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(434,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(435,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(436,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(437,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(438,'2015-02-10 16:12:43','2015-02-10 16:12:43',1,1),(439,'2015-02-10 16:12:43','2015-02-10 16:12:44',1,1),(440,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(441,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(442,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(443,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(444,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(445,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(446,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(447,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(448,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(449,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(450,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(451,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(452,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(453,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(454,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(455,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(456,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(457,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(458,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(459,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(460,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(461,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(462,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(463,'2015-02-10 16:12:44','2015-02-10 16:12:44',1,1),(464,'2015-02-10 16:12:44','2015-02-10 16:12:45',1,1),(465,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(466,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(467,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(468,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(469,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(470,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(471,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(472,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(473,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(474,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(475,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(476,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(477,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(478,'2015-02-10 16:12:45','2015-02-10 16:12:45',1,1),(479,'2015-02-10 16:12:45','2015-02-10 16:12:46',1,1),(480,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(481,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(482,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(483,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(484,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(485,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(486,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(487,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(488,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(489,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(490,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(491,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(492,'2015-02-10 16:12:46','2015-02-10 16:12:46',1,1),(493,'2015-02-10 16:12:46','2015-02-10 16:12:47',1,1),(494,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(495,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(496,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(497,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(498,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(499,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(500,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(501,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(502,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(503,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(504,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(505,'2015-02-10 16:12:47','2015-02-10 16:12:47',1,1),(506,'2015-02-10 16:12:47','2015-02-10 16:12:48',1,1),(507,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(508,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(509,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(510,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(511,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(512,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(513,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(514,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(515,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(516,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(517,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(518,'2015-02-10 16:12:48','2015-02-10 16:12:48',1,1),(519,'2015-02-10 16:12:48','2015-02-10 16:12:48',3,1),(520,'2015-02-10 16:12:48','2015-02-10 16:12:48',10,1),(521,'2015-02-10 16:12:48','2015-02-10 16:12:48',10,1),(522,'2015-02-10 16:12:48','2015-02-10 16:12:48',9,1),(523,'2015-02-10 16:12:48','2015-02-10 16:12:49',9,1),(524,'2015-02-10 16:12:49','2015-02-10 16:12:49',9,1),(525,'2015-02-10 16:12:49','2015-02-10 16:12:49',7,1),(526,'2015-02-10 16:12:49','2015-02-10 16:12:49',4,1),(527,'2015-02-10 16:12:49','2015-02-10 16:12:49',7,1),(528,'2015-02-10 16:12:49','2015-02-10 16:12:49',9,1),(529,'2015-02-10 16:12:49','2015-02-10 16:12:49',8,1),(530,'2015-02-10 16:12:49','2015-02-10 16:12:49',7,1),(531,'2015-02-10 16:12:49','2015-02-10 16:12:49',10,1),(532,'2015-02-10 16:12:49','2015-02-10 16:12:49',6,1),(533,'2015-02-10 16:12:49','2015-02-10 16:12:49',10,1),(534,'2015-02-10 16:12:49','2015-02-10 16:12:49',4,1),(535,'2015-02-10 16:12:49','2015-02-10 16:12:49',5,1),(536,'2015-02-10 16:12:49','2015-02-10 16:12:49',1,1),(537,'2015-02-10 16:12:49','2015-02-10 16:12:49',5,1),(538,'2015-02-10 16:12:49','2015-02-10 16:12:49',8,1),(539,'2015-02-10 16:12:49','2015-02-10 16:12:49',3,1),(540,'2015-02-10 16:12:49','2015-02-10 16:12:49',6,1),(541,'2015-02-10 16:12:49','2015-02-10 16:12:49',8,1),(542,'2015-02-10 16:12:49','2015-02-10 16:12:49',8,1),(543,'2015-02-10 16:12:49','2015-02-10 16:12:49',7,1),(544,'2015-02-10 16:12:49','2015-02-10 16:12:49',3,1),(545,'2015-02-10 16:12:49','2015-02-10 16:12:49',9,1),(546,'2015-02-10 16:12:49','2015-02-10 16:12:49',1,1),(547,'2015-02-10 16:12:49','2015-02-10 16:12:49',7,1),(548,'2015-02-10 16:12:49','2015-02-10 16:12:49',7,1),(549,'2015-02-10 16:12:49','2015-02-10 16:12:49',9,1),(550,'2015-02-10 16:12:49','2015-02-10 16:12:49',3,1),(551,'2015-02-10 16:12:49','2015-02-10 16:12:49',3,1),(552,'2015-02-10 16:12:49','2015-02-10 16:12:49',5,1),(553,'2015-02-10 16:12:49','2015-02-10 16:12:49',8,1),(554,'2015-02-10 16:12:49','2015-02-10 16:12:49',8,1),(555,'2015-02-10 16:12:49','2015-02-10 16:12:49',5,1),(556,'2015-02-10 16:12:49','2015-02-10 16:12:49',1,1),(557,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(558,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(559,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(560,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(561,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(562,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(563,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(564,'2015-02-10 16:12:50','2015-02-10 16:12:50',1,1),(565,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(566,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(567,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(568,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(569,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(570,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(571,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(572,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(573,'2015-02-10 16:12:51','2015-02-10 16:12:51',1,1),(574,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(575,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(576,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(577,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(578,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(579,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(580,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(581,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(582,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(583,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(584,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(585,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(586,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(587,'2015-02-10 16:12:52','2015-02-10 16:12:52',1,1),(588,'2015-02-10 16:12:52','2015-02-10 16:12:58',1,1),(589,'2015-02-10 16:12:52','2015-02-10 16:12:53',1,1),(590,'2015-02-10 16:12:53','2015-02-10 16:12:53',6,1),(591,'2015-02-10 16:12:53','2015-02-10 16:12:53',10,1),(592,'2015-02-10 16:12:53','2015-02-10 16:12:53',1,1),(593,'2015-02-10 16:12:53','2015-02-10 16:12:53',1,1),(594,'2015-02-10 16:12:53','2015-02-10 16:12:53',9,1),(595,'2015-02-10 16:12:53','2015-02-10 16:12:53',8,1),(596,'2015-02-10 16:12:53','2015-02-10 16:12:53',1,1),(597,'2015-02-10 16:12:54','2015-02-10 16:12:56',1,1),(598,'2015-02-10 16:12:54','2015-02-10 16:12:54',8,1),(599,'2015-02-10 16:12:54','2015-02-10 16:12:54',10,1),(600,'2015-02-10 16:12:54','2015-02-10 16:12:54',1,1),(601,'2015-02-10 16:12:54','2015-02-10 16:12:56',1,1),(602,'2015-02-10 16:12:54','2015-02-10 16:12:54',3,1),(603,'2015-02-10 16:12:54','2015-02-10 16:12:54',6,1),(604,'2015-02-10 16:12:54','2015-02-10 16:12:54',3,1),(605,'2015-02-10 16:12:54','2015-02-10 16:12:54',1,1),(606,'2015-02-10 16:12:54','2015-02-10 16:12:55',1,1),(607,'2015-02-10 16:12:55','2015-02-10 16:12:55',4,1),(608,'2015-02-10 16:12:55','2015-02-10 16:12:55',4,1),(609,'2015-02-10 16:12:55','2015-02-10 16:12:55',1,1),(610,'2015-02-10 16:12:55','2015-02-10 16:12:56',1,1),(611,'2015-02-10 16:12:55','2015-02-10 16:12:55',7,1),(612,'2015-02-10 16:12:55','2015-02-10 16:12:55',8,1),(613,'2015-02-10 16:12:55','2015-02-10 16:12:55',1,1),(614,'2015-02-10 16:12:56','2015-02-10 16:12:57',1,1),(615,'2015-02-10 16:12:56','2015-02-10 16:12:56',7,1),(616,'2015-02-10 16:12:56','2015-02-10 16:12:56',7,1),(617,'2015-02-10 16:12:56','2015-02-10 16:12:56',1,1),(618,'2015-02-10 16:12:57','2015-02-10 16:12:58',1,1),(619,'2015-02-10 16:12:57','2015-02-10 16:12:57',9,1),(620,'2015-02-10 16:12:57','2015-02-10 16:12:57',10,1),(621,'2015-02-10 16:12:57','2015-02-10 16:12:57',1,1),(622,'2015-02-10 16:12:57','2015-02-10 16:12:58',1,1),(623,'2015-02-10 16:12:57','2015-02-10 16:12:57',10,1),(624,'2015-02-10 16:12:57','2015-02-10 16:12:57',7,1),(625,'2015-02-10 16:12:57','2015-02-10 16:12:57',4,1),(626,'2015-02-10 16:12:57','2015-02-10 16:12:57',1,1),(627,'2015-02-10 16:12:58','2015-02-10 16:12:58',1,1),(628,'2015-02-10 16:12:58','2015-02-10 16:12:58',4,1),(629,'2015-02-10 16:12:58','2015-02-10 16:12:58',9,1),(630,'2015-02-10 16:12:58','2015-02-10 16:12:58',1,1),(631,'2015-02-10 16:12:58','2015-02-10 16:13:04',1,1),(632,'2015-02-10 16:12:58','2015-02-10 16:12:59',1,1),(633,'2015-02-10 16:12:59','2015-02-10 16:12:59',6,1),(634,'2015-02-10 16:12:59','2015-02-10 16:12:59',9,1),(635,'2015-02-10 16:12:59','2015-02-10 16:12:59',1,1),(636,'2015-02-10 16:12:59','2015-02-10 16:12:59',1,1),(637,'2015-02-10 16:12:59','2015-02-10 16:12:59',3,1),(638,'2015-02-10 16:12:59','2015-02-10 16:12:59',7,1),(639,'2015-02-10 16:12:59','2015-02-10 16:12:59',1,1),(640,'2015-02-10 16:13:00','2015-02-10 16:13:02',1,1),(641,'2015-02-10 16:13:00','2015-02-10 16:13:00',4,1),(642,'2015-02-10 16:13:00','2015-02-10 16:13:00',5,1),(643,'2015-02-10 16:13:00','2015-02-10 16:13:00',1,1),(644,'2015-02-10 16:13:00','2015-02-10 16:13:01',1,1),(645,'2015-02-10 16:13:00','2015-02-10 16:13:00',9,1),(646,'2015-02-10 16:13:00','2015-02-10 16:13:00',9,1),(647,'2015-02-10 16:13:00','2015-02-10 16:13:00',6,1),(648,'2015-02-10 16:13:00','2015-02-10 16:13:00',1,1),(649,'2015-02-10 16:13:01','2015-02-10 16:13:03',1,1),(650,'2015-02-10 16:13:01','2015-02-10 16:13:01',9,1),(651,'2015-02-10 16:13:01','2015-02-10 16:13:01',5,1),(652,'2015-02-10 16:13:01','2015-02-10 16:13:01',1,1),(653,'2015-02-10 16:13:01','2015-02-10 16:13:02',1,1),(654,'2015-02-10 16:13:01','2015-02-10 16:13:01',8,1),(655,'2015-02-10 16:13:01','2015-02-10 16:13:01',9,1),(656,'2015-02-10 16:13:01','2015-02-10 16:13:01',1,1),(657,'2015-02-10 16:13:02','2015-02-10 16:13:02',1,1),(658,'2015-02-10 16:13:02','2015-02-10 16:13:02',9,1),(659,'2015-02-10 16:13:02','2015-02-10 16:13:02',3,1),(660,'2015-02-10 16:13:02','2015-02-10 16:13:02',1,1),(661,'2015-02-10 16:13:03','2015-02-10 16:13:03',1,1),(662,'2015-02-10 16:13:03','2015-02-10 16:13:03',5,1),(663,'2015-02-10 16:13:03','2015-02-10 16:13:03',7,1),(664,'2015-02-10 16:13:03','2015-02-10 16:13:03',1,1),(665,'2015-02-10 16:13:03','2015-02-10 16:13:04',1,1),(666,'2015-02-10 16:13:03','2015-02-10 16:13:04',3,1),(667,'2015-02-10 16:13:03','2015-02-10 16:13:04',10,1),(668,'2015-02-10 16:13:03','2015-02-10 16:13:04',8,1),(669,'2015-02-10 16:13:03','2015-02-10 16:13:04',1,1),(670,'2015-02-10 16:13:04','2015-02-10 16:13:04',1,1),(671,'2015-02-10 16:13:04','2015-02-10 16:13:04',5,1),(672,'2015-02-10 16:13:04','2015-02-10 16:13:04',6,1),(673,'2015-02-10 16:13:04','2015-02-10 16:13:04',1,1),(674,'2015-02-10 16:13:04','2015-02-10 16:13:10',1,1),(675,'2015-02-10 16:13:04','2015-02-10 16:13:05',1,1),(676,'2015-02-10 16:13:05','2015-02-10 16:13:05',3,1),(677,'2015-02-10 16:13:05','2015-02-10 16:13:05',10,1),(678,'2015-02-10 16:13:05','2015-02-10 16:13:05',1,1),(679,'2015-02-10 16:13:05','2015-02-10 16:13:05',1,1),(680,'2015-02-10 16:13:05','2015-02-10 16:13:05',9,1),(681,'2015-02-10 16:13:05','2015-02-10 16:13:05',10,1),(682,'2015-02-10 16:13:05','2015-02-10 16:13:05',1,1),(683,'2015-02-10 16:13:06','2015-02-10 16:13:06',1,1),(684,'2015-02-10 16:13:06','2015-02-10 16:13:06',5,1),(685,'2015-02-10 16:13:06','2015-02-10 16:13:06',7,1),(686,'2015-02-10 16:13:06','2015-02-10 16:13:06',1,1),(687,'2015-02-10 16:13:06','2015-02-10 16:13:07',1,1),(688,'2015-02-10 16:13:06','2015-02-10 16:13:06',8,1),(689,'2015-02-10 16:13:06','2015-02-10 16:13:06',9,1),(690,'2015-02-10 16:13:06','2015-02-10 16:13:06',5,1),(691,'2015-02-10 16:13:06','2015-02-10 16:13:06',1,1),(692,'2015-02-10 16:13:07','2015-02-10 16:13:07',1,1),(693,'2015-02-10 16:13:07','2015-02-10 16:13:07',9,1),(694,'2015-02-10 16:13:07','2015-02-10 16:13:07',5,1),(695,'2015-02-10 16:13:07','2015-02-10 16:13:07',1,1),(696,'2015-02-10 16:13:07','2015-02-10 16:13:08',1,1),(697,'2015-02-10 16:13:07','2015-02-10 16:13:08',3,1),(698,'2015-02-10 16:13:07','2015-02-10 16:13:08',7,1),(699,'2015-02-10 16:13:07','2015-02-10 16:13:08',1,1),(700,'2015-02-10 16:13:08','2015-02-10 16:13:10',1,1),(701,'2015-02-10 16:13:08','2015-02-10 16:13:08',10,1),(702,'2015-02-10 16:13:08','2015-02-10 16:13:08',5,1),(703,'2015-02-10 16:13:08','2015-02-10 16:13:08',1,1),(704,'2015-02-10 16:13:08','2015-02-10 16:13:09',1,1),(705,'2015-02-10 16:13:08','2015-02-10 16:13:09',5,1),(706,'2015-02-10 16:13:08','2015-02-10 16:13:09',6,1),(707,'2015-02-10 16:13:08','2015-02-10 16:13:09',1,1),(708,'2015-02-10 16:13:09','2015-02-10 16:13:09',1,1),(709,'2015-02-10 16:13:09','2015-02-10 16:13:09',7,1),(710,'2015-02-10 16:13:09','2015-02-10 16:13:09',6,1),(711,'2015-02-10 16:13:09','2015-02-10 16:13:09',3,1),(712,'2015-02-10 16:13:09','2015-02-10 16:13:09',1,1),(713,'2015-02-10 16:13:10','2015-02-10 16:13:10',1,1),(714,'2015-02-10 16:13:10','2015-02-10 16:13:10',10,1),(715,'2015-02-10 16:13:10','2015-02-10 16:13:10',8,1),(716,'2015-02-10 16:13:10','2015-02-10 16:13:10',1,1),(717,'2015-02-10 16:13:10','2015-02-10 16:13:16',1,1),(718,'2015-02-10 16:13:10','2015-02-10 16:13:11',1,1),(719,'2015-02-10 16:13:11','2015-02-10 16:13:11',9,1),(720,'2015-02-10 16:13:11','2015-02-10 16:13:11',6,1),(721,'2015-02-10 16:13:11','2015-02-10 16:13:11',1,1),(722,'2015-02-10 16:13:11','2015-02-10 16:13:11',1,1),(723,'2015-02-10 16:13:11','2015-02-10 16:13:11',4,1),(724,'2015-02-10 16:13:11','2015-02-10 16:13:11',6,1),(725,'2015-02-10 16:13:11','2015-02-10 16:13:11',1,1),(726,'2015-02-10 16:13:11','2015-02-10 16:13:12',1,1),(727,'2015-02-10 16:13:12','2015-02-10 16:13:12',5,1),(728,'2015-02-10 16:13:12','2015-02-10 16:13:12',5,1),(729,'2015-02-10 16:13:12','2015-02-10 16:13:12',1,1),(730,'2015-02-10 16:13:12','2015-02-10 16:13:12',1,1),(731,'2015-02-10 16:13:12','2015-02-10 16:13:12',3,1),(732,'2015-02-10 16:13:12','2015-02-10 16:13:12',7,1),(733,'2015-02-10 16:13:12','2015-02-10 16:13:12',3,1),(734,'2015-02-10 16:13:12','2015-02-10 16:13:12',1,1),(735,'2015-02-10 16:13:12','2015-02-10 16:13:13',1,1),(736,'2015-02-10 16:13:13','2015-02-10 16:13:13',4,1),(737,'2015-02-10 16:13:13','2015-02-10 16:13:13',8,1),(738,'2015-02-10 16:13:13','2015-02-10 16:13:13',1,1),(739,'2015-02-10 16:13:13','2015-02-10 16:13:16',1,1),(740,'2015-02-10 16:13:13','2015-02-10 16:13:13',3,1),(741,'2015-02-10 16:13:13','2015-02-10 16:13:13',8,1),(742,'2015-02-10 16:13:13','2015-02-10 16:13:13',1,1),(743,'2015-02-10 16:13:13','2015-02-10 16:13:14',1,1),(744,'2015-02-10 16:13:14','2015-02-10 16:13:14',3,1),(745,'2015-02-10 16:13:14','2015-02-10 16:13:14',6,1),(746,'2015-02-10 16:13:14','2015-02-10 16:13:14',1,1),(747,'2015-02-10 16:13:14','2015-02-10 16:13:15',1,1),(748,'2015-02-10 16:13:14','2015-02-10 16:13:14',10,1),(749,'2015-02-10 16:13:14','2015-02-10 16:13:14',3,1),(750,'2015-02-10 16:13:14','2015-02-10 16:13:14',1,1),(751,'2015-02-10 16:13:15','2015-02-10 16:13:15',1,1),(752,'2015-02-10 16:13:15','2015-02-10 16:13:15',5,1),(753,'2015-02-10 16:13:15','2015-02-10 16:13:15',8,1),(754,'2015-02-10 16:13:15','2015-02-10 16:13:15',8,1),(755,'2015-02-10 16:13:15','2015-02-10 16:13:15',1,1),(756,'2015-02-10 16:13:15','2015-02-10 16:13:16',1,1),(757,'2015-02-10 16:13:16','2015-02-10 16:13:16',3,1),(758,'2015-02-10 16:13:16','2015-02-10 16:13:16',9,1),(759,'2015-02-10 16:13:16','2015-02-10 16:13:16',1,1),(760,'2015-02-10 16:13:16','2015-02-10 16:13:22',1,1),(761,'2015-02-10 16:13:16','2015-02-10 16:13:17',1,1),(762,'2015-02-10 16:13:16','2015-02-10 16:13:16',3,1),(763,'2015-02-10 16:13:16','2015-02-10 16:13:16',6,1),(764,'2015-02-10 16:13:16','2015-02-10 16:13:16',1,1),(765,'2015-02-10 16:13:17','2015-02-10 16:13:19',1,1),(766,'2015-02-10 16:13:17','2015-02-10 16:13:17',7,1),(767,'2015-02-10 16:13:17','2015-02-10 16:13:17',9,1),(768,'2015-02-10 16:13:17','2015-02-10 16:13:17',1,1),(769,'2015-02-10 16:13:17','2015-02-10 16:13:18',1,1),(770,'2015-02-10 16:13:17','2015-02-10 16:13:17',6,1),(771,'2015-02-10 16:13:17','2015-02-10 16:13:17',3,1),(772,'2015-02-10 16:13:17','2015-02-10 16:13:17',1,1),(773,'2015-02-10 16:13:18','2015-02-10 16:13:20',1,1),(774,'2015-02-10 16:13:18','2015-02-10 16:13:18',8,1),(775,'2015-02-10 16:13:18','2015-02-10 16:13:18',3,1),(776,'2015-02-10 16:13:18','2015-02-10 16:13:18',4,1),(777,'2015-02-10 16:13:18','2015-02-10 16:13:18',1,1),(778,'2015-02-10 16:13:18','2015-02-10 16:13:19',1,1),(779,'2015-02-10 16:13:18','2015-02-10 16:13:18',10,1),(780,'2015-02-10 16:13:18','2015-02-10 16:13:18',10,1),(781,'2015-02-10 16:13:18','2015-02-10 16:13:18',1,1),(782,'2015-02-10 16:13:19','2015-02-10 16:13:22',1,1),(783,'2015-02-10 16:13:19','2015-02-10 16:13:19',8,1),(784,'2015-02-10 16:13:19','2015-02-10 16:13:19',7,1),(785,'2015-02-10 16:13:19','2015-02-10 16:13:19',1,1),(786,'2015-02-10 16:13:20','2015-02-10 16:13:20',1,1),(787,'2015-02-10 16:13:20','2015-02-10 16:13:20',7,1),(788,'2015-02-10 16:13:20','2015-02-10 16:13:20',7,1),(789,'2015-02-10 16:13:20','2015-02-10 16:13:20',1,1),(790,'2015-02-10 16:13:20','2015-02-10 16:13:22',1,1),(791,'2015-02-10 16:13:20','2015-02-10 16:13:21',6,1),(792,'2015-02-10 16:13:20','2015-02-10 16:13:21',10,1),(793,'2015-02-10 16:13:20','2015-02-10 16:13:21',1,1),(794,'2015-02-10 16:13:21','2015-02-10 16:13:21',1,1),(795,'2015-02-10 16:13:21','2015-02-10 16:13:21',8,1),(796,'2015-02-10 16:13:21','2015-02-10 16:13:21',5,1),(797,'2015-02-10 16:13:21','2015-02-10 16:13:21',9,1),(798,'2015-02-10 16:13:21','2015-02-10 16:13:21',1,1),(799,'2015-02-10 16:13:21','2015-02-10 16:13:22',1,1),(800,'2015-02-10 16:13:22','2015-02-10 16:13:22',7,1),(801,'2015-02-10 16:13:22','2015-02-10 16:13:22',3,1),(802,'2015-02-10 16:13:22','2015-02-10 16:13:22',1,1),(803,'2015-02-10 16:13:22','2015-02-10 16:13:28',1,1),(804,'2015-02-10 16:13:22','2015-02-10 16:13:23',1,1),(805,'2015-02-10 16:13:22','2015-02-10 16:13:22',9,1),(806,'2015-02-10 16:13:22','2015-02-10 16:13:22',8,1),(807,'2015-02-10 16:13:22','2015-02-10 16:13:22',1,1),(808,'2015-02-10 16:13:23','2015-02-10 16:13:23',1,1),(809,'2015-02-10 16:13:23','2015-02-10 16:13:23',6,1),(810,'2015-02-10 16:13:23','2015-02-10 16:13:23',4,1),(811,'2015-02-10 16:13:23','2015-02-10 16:13:23',1,1),(812,'2015-02-10 16:13:23','2015-02-10 16:13:24',1,1),(813,'2015-02-10 16:13:23','2015-02-10 16:13:24',10,1),(814,'2015-02-10 16:13:23','2015-02-10 16:13:24',10,1),(815,'2015-02-10 16:13:23','2015-02-10 16:13:24',1,1),(816,'2015-02-10 16:13:24','2015-02-10 16:13:24',1,1),(817,'2015-02-10 16:13:24','2015-02-10 16:13:24',6,1),(818,'2015-02-10 16:13:24','2015-02-10 16:13:24',9,1),(819,'2015-02-10 16:13:24','2015-02-10 16:13:24',4,1),(820,'2015-02-10 16:13:24','2015-02-10 16:13:24',1,1),(821,'2015-02-10 16:13:24','2015-02-10 16:13:25',1,1),(822,'2015-02-10 16:13:25','2015-02-10 16:13:25',6,1),(823,'2015-02-10 16:13:25','2015-02-10 16:13:25',4,1),(824,'2015-02-10 16:13:25','2015-02-10 16:13:25',1,1),(825,'2015-02-10 16:13:25','2015-02-10 16:13:26',1,1),(826,'2015-02-10 16:13:25','2015-02-10 16:13:25',9,1),(827,'2015-02-10 16:13:25','2015-02-10 16:13:25',3,1),(828,'2015-02-10 16:13:25','2015-02-10 16:13:25',1,1),(829,'2015-02-10 16:13:26','2015-02-10 16:13:28',1,1),(830,'2015-02-10 16:13:26','2015-02-10 16:13:26',10,1),(831,'2015-02-10 16:13:26','2015-02-10 16:13:26',3,1),(832,'2015-02-10 16:13:26','2015-02-10 16:13:26',1,1),(833,'2015-02-10 16:13:26','2015-02-10 16:13:28',1,1),(834,'2015-02-10 16:13:26','2015-02-10 16:13:26',4,1),(835,'2015-02-10 16:13:26','2015-02-10 16:13:26',5,1),(836,'2015-02-10 16:13:26','2015-02-10 16:13:26',1,1),(837,'2015-02-10 16:13:26','2015-02-10 16:13:27',1,1),(838,'2015-02-10 16:13:27','2015-02-10 16:13:27',6,1),(839,'2015-02-10 16:13:27','2015-02-10 16:13:27',10,1),(840,'2015-02-10 16:13:27','2015-02-10 16:13:27',9,1),(841,'2015-02-10 16:13:27','2015-02-10 16:13:27',1,1),(842,'2015-02-10 16:13:27','2015-02-10 16:13:28',1,1),(843,'2015-02-10 16:13:27','2015-02-10 16:13:27',3,1),(844,'2015-02-10 16:13:27','2015-02-10 16:13:28',4,1),(845,'2015-02-10 16:13:27','2015-02-10 16:13:28',1,1);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobinprocess`
--

DROP TABLE IF EXISTS `jobinprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobinprocess` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobinprocess`
--

LOCK TABLES `jobinprocess` WRITE;
/*!40000 ALTER TABLE `jobinprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobinprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joblog`
--

DROP TABLE IF EXISTS `joblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joblog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `enddatetime` datetime DEFAULT NULL,
  `isprocessed` tinyint(1) unsigned DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `startdatetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joblog`
--

LOCK TABLES `joblog` WRITE;
/*!40000 ALTER TABLE `joblog` DISABLE KEYS */;
/*!40000 ALTER TABLE `joblog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kanbanitem`
--

DROP TABLE IF EXISTS `kanbanitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kanbanitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `kanbanrelateditem_item_id` int(11) unsigned DEFAULT NULL,
  `task_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kanbanitem`
--

LOCK TABLES `kanbanitem` WRITE;
/*!40000 ALTER TABLE `kanbanitem` DISABLE KEYS */;
INSERT INTO `kanbanitem` VALUES (1,1,1,339,1),(2,1,1,335,2),(3,1,2,339,3),(4,3,1,339,4),(5,1,1,337,5),(6,4,1,344,6),(7,1,1,346,7),(8,1,1,345,8),(9,1,3,339,9),(10,3,2,339,10),(11,1,1,340,11),(12,1,2,346,12),(13,1,1,342,13),(14,1,2,337,14),(15,1,3,337,15),(16,3,1,336,16),(17,1,1,343,17),(18,1,1,338,18),(19,4,1,588,19),(20,4,2,588,20),(21,1,1,588,21),(22,1,2,588,22),(23,3,1,588,23),(24,4,3,588,24),(25,3,2,588,25),(26,1,3,588,26),(27,3,3,588,27),(28,3,4,588,28),(29,3,1,631,29),(30,4,1,631,30),(31,1,1,631,31),(32,3,2,631,32),(33,1,2,631,33),(34,3,3,631,34),(35,4,2,631,35),(36,4,3,631,36),(37,4,4,631,37),(38,3,4,631,38),(39,3,1,674,39),(40,4,1,674,40),(41,3,2,674,41),(42,3,3,674,42),(43,3,4,674,43),(44,3,5,674,44),(45,1,1,674,45),(46,3,6,674,46),(47,4,2,674,47),(48,3,7,674,48),(49,3,1,717,49),(50,3,2,717,50),(51,3,3,717,51),(52,3,4,717,52),(53,3,5,717,53),(54,1,1,717,54),(55,3,6,717,55),(56,3,7,717,56),(57,3,8,717,57),(58,4,1,717,58),(59,3,1,760,59),(60,1,1,760,60),(61,3,2,760,61),(62,1,2,760,62),(63,3,3,760,63),(64,1,3,760,64),(65,3,4,760,65),(66,1,4,760,66),(67,3,5,760,67),(68,3,6,760,68),(69,3,1,803,69),(70,4,1,803,70),(71,3,2,803,71),(72,3,3,803,72),(73,3,4,803,73),(74,4,2,803,74),(75,1,1,803,75),(76,1,2,803,76),(77,4,3,803,77),(78,4,4,803,78);
/*!40000 ALTER TABLE `kanbanitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinglist`
--

DROP TABLE IF EXISTS `marketinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fromname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromaddress` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anyonecansubscribe` tinyint(1) unsigned DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinglist`
--

LOCK TABLES `marketinglist` WRITE;
/*!40000 ALTER TABLE `marketinglist` DISABLE KEYS */;
INSERT INTO `marketinglist` VALUES (1,'Prospects','Lorem ipsum dolor sit amet, consectetur adipiscing elit.Mauris gravida erat nec nulla pharetra et lacinia dolor eleifend.','Marketing Team','marketing@company.com',1,13),(2,'Sales','Vivamus varius sagittis est in porta. Aenean ac elit eu metus accumsan elementum nec vel leo.','Sales Team','sales@company.com',1,14),(3,'Clients','Cras tempus lectus sit amet elit pretium mollis. Morbi interdum posuere lorem et gravida.','Development Team','development@company.com',0,15),(4,'Companies','Nulla tempor pretium eros, ut aliquet tellus faucibus et. Donec mattis justo sed ipsum ultrices venenatis.','Special Offers','offers@company.com',0,16),(5,'New Offers','Mauris ac laoreet dui. Phasellus placerat tincidunt varius.','Support Team','support@company.com',1,17);
/*!40000 ALTER TABLE `marketinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinglist_read`
--

DROP TABLE IF EXISTS `marketinglist_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinglist_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `marketinglist_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinglist_read`
--

LOCK TABLES `marketinglist_read` WRITE;
/*!40000 ALTER TABLE `marketinglist_read` DISABLE KEYS */;
INSERT INTO `marketinglist_read` VALUES (1,13,'R1',1),(2,13,'G2',1),(3,14,'R1',1),(4,14,'G2',1),(5,15,'R1',1),(6,15,'G2',1),(7,16,'G2',1),(8,17,'R1',1),(9,17,'G2',1);
/*!40000 ALTER TABLE `marketinglist_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketinglistmember`
--

DROP TABLE IF EXISTS `marketinglistmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketinglistmember` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `createddatetime` datetime DEFAULT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `unsubscribed` tinyint(1) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `marketinglist_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketinglistmember`
--

LOCK TABLES `marketinglistmember` WRITE;
/*!40000 ALTER TABLE `marketinglistmember` DISABLE KEYS */;
INSERT INTO `marketinglistmember` VALUES (1,'2015-01-30 16:12:17','2015-02-10 16:12:17',0,1,1),(2,'2015-01-19 16:12:17','2015-02-10 16:12:17',1,2,1),(3,'2015-01-15 16:12:17','2015-02-10 16:12:17',1,3,1),(4,'2015-02-07 16:12:17','2015-02-10 16:12:17',0,4,1),(5,'2015-01-28 16:12:17','2015-02-10 16:12:17',1,5,1),(6,'2015-01-13 16:12:17','2015-02-10 16:12:17',0,6,1),(7,'2015-01-31 16:12:17','2015-02-10 16:12:17',0,7,1),(8,'2015-01-15 16:12:17','2015-02-10 16:12:17',1,8,1),(9,'2015-02-02 16:12:17','2015-02-10 16:12:17',1,9,1),(10,'2015-01-14 16:12:17','2015-02-10 16:12:17',0,10,1),(11,'2015-02-08 16:12:17','2015-02-10 16:12:17',0,11,1),(12,'2015-01-13 16:12:17','2015-02-10 16:12:17',1,12,1),(13,'2015-01-24 16:12:17','2015-02-10 16:12:17',1,1,2),(14,'2015-01-16 16:12:17','2015-02-10 16:12:17',0,2,2),(15,'2015-01-31 16:12:17','2015-02-10 16:12:17',1,3,2),(16,'2015-02-04 16:12:17','2015-02-10 16:12:17',1,4,2),(17,'2015-01-27 16:12:17','2015-02-10 16:12:17',0,5,2),(18,'2015-01-25 16:12:17','2015-02-10 16:12:17',1,6,2),(19,'2015-02-02 16:12:17','2015-02-10 16:12:17',0,7,2),(20,'2015-01-29 16:12:17','2015-02-10 16:12:17',1,8,2),(21,'2015-01-23 16:12:17','2015-02-10 16:12:17',1,9,2),(22,'2015-01-19 16:12:17','2015-02-10 16:12:17',1,10,2),(23,'2015-01-11 16:12:17','2015-02-10 16:12:17',1,11,2),(24,'2015-01-11 16:12:17','2015-02-10 16:12:18',0,12,2),(25,'2015-01-24 16:12:18','2015-02-10 16:12:18',1,1,3),(26,'2015-01-18 16:12:18','2015-02-10 16:12:18',1,2,3),(27,'2015-02-04 16:12:18','2015-02-10 16:12:18',1,3,3),(28,'2015-01-23 16:12:18','2015-02-10 16:12:18',0,4,3),(29,'2015-01-20 16:12:18','2015-02-10 16:12:18',0,5,3),(30,'2015-01-23 16:12:18','2015-02-10 16:12:18',0,6,3),(31,'2015-01-13 16:12:18','2015-02-10 16:12:18',1,7,3),(32,'2015-01-13 16:12:18','2015-02-10 16:12:18',0,8,3),(33,'2015-02-02 16:12:18','2015-02-10 16:12:18',1,9,3),(34,'2015-01-13 16:12:18','2015-02-10 16:12:18',0,10,3),(35,'2015-01-11 16:12:18','2015-02-10 16:12:18',0,11,3),(36,'2015-02-04 16:12:18','2015-02-10 16:12:18',0,12,3),(37,'2015-01-20 16:12:18','2015-02-10 16:12:18',0,1,4),(38,'2015-01-26 16:12:18','2015-02-10 16:12:18',1,2,4),(39,'2015-01-12 16:12:18','2015-02-10 16:12:18',0,3,4),(40,'2015-02-05 16:12:18','2015-02-10 16:12:18',0,4,4),(41,'2015-02-09 16:12:18','2015-02-10 16:12:18',1,5,4),(42,'2015-02-08 16:12:18','2015-02-10 16:12:18',0,6,4),(43,'2015-01-30 16:12:18','2015-02-10 16:12:18',1,7,4),(44,'2015-01-11 16:12:18','2015-02-10 16:12:18',0,8,4),(45,'2015-02-03 16:12:18','2015-02-10 16:12:18',0,9,4),(46,'2015-01-25 16:12:18','2015-02-10 16:12:18',0,10,4),(47,'2015-01-29 16:12:18','2015-02-10 16:12:19',0,11,4),(48,'2015-01-21 16:12:19','2015-02-10 16:12:19',0,12,4),(49,'2015-01-19 16:12:19','2015-02-10 16:12:19',1,1,5),(50,'2015-01-21 16:12:19','2015-02-10 16:12:19',0,2,5),(51,'2015-02-03 16:12:19','2015-02-10 16:12:19',1,3,5),(52,'2015-01-19 16:12:19','2015-02-10 16:12:19',0,4,5),(53,'2015-01-28 16:12:19','2015-02-10 16:12:19',0,5,5),(54,'2015-02-02 16:12:19','2015-02-10 16:12:19',0,6,5),(55,'2015-01-14 16:12:19','2015-02-10 16:12:19',1,7,5),(56,'2015-01-12 16:12:19','2015-02-10 16:12:19',1,8,5),(57,'2015-02-06 16:12:19','2015-02-10 16:12:19',0,9,5),(58,'2015-01-18 16:12:19','2015-02-10 16:12:19',0,10,5),(59,'2015-01-30 16:12:19','2015-02-10 16:12:19',1,11,5),(60,'2015-02-04 16:12:19','2015-02-10 16:12:19',0,12,5);
/*!40000 ALTER TABLE `marketinglistmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `enddatetime` datetime DEFAULT NULL,
  `processedforlatestactivity` tinyint(1) unsigned DEFAULT NULL,
  `location` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logged` tinyint(1) unsigned DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startdatetime` datetime DEFAULT NULL,
  `activity_id` int(11) unsigned DEFAULT NULL,
  `category_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
INSERT INTO `meeting` VALUES (1,NULL,'2015-02-28 16:14:09',NULL,'Telephone',NULL,'Follow-up call','2015-02-28 16:12:39',1,117),(2,NULL,'2015-03-31 16:15:40',NULL,'Meeting Room 1',NULL,'Proposal review','2015-03-31 16:12:40',2,118),(3,NULL,'2015-03-17 16:13:25',NULL,'Meeting Room 1',NULL,'Proposal review','2015-03-17 16:12:40',3,119),(4,NULL,'2015-03-16 16:17:55',NULL,'Meeting Room 1',NULL,'Project kick-off','2015-03-16 16:12:40',4,120),(5,NULL,'2015-02-19 16:15:10',NULL,'Hotel Lobby',NULL,'Follow-up call','2015-02-19 16:12:40',5,121),(6,NULL,'2015-03-27 16:15:55',NULL,'Telephone',NULL,'Call follow up','2015-03-27 16:12:40',6,122),(7,NULL,'2015-03-08 16:17:40',NULL,'Telephone',NULL,'Tradeshow preparation meeting','2015-03-08 16:12:40',7,123),(8,NULL,'2015-03-06 16:16:10',NULL,'Conference Room',NULL,'Circle back on proposal','2015-03-06 16:12:40',8,124),(9,NULL,'2015-03-03 16:15:25',NULL,'Meeting Room 1',NULL,'Technical requirements discussion','2015-03-03 16:12:40',9,125),(10,NULL,'2015-02-19 16:16:25',NULL,'Conference Room',NULL,'Proposal review','2015-02-19 16:12:40',10,126),(11,NULL,'2015-02-28 16:18:25',NULL,'Hotel Lobby',NULL,'Tradeshow preparation meeting','2015-02-28 16:12:40',11,127),(12,NULL,'2015-02-18 16:12:55',NULL,'Telephone',NULL,'Call follow up','2015-02-18 16:12:40',12,128),(13,NULL,'2015-03-06 16:13:10',NULL,'Telephone',NULL,'Circle back on proposal','2015-03-06 16:12:40',13,129),(14,NULL,'2015-03-31 16:17:40',NULL,'Telephone',NULL,'Phase 2 discussion','2015-03-31 16:12:40',14,130),(15,NULL,'2015-04-07 16:18:25',NULL,'Meeting Room 1',NULL,'Call follow up','2015-04-07 16:12:40',15,131),(16,NULL,'2015-02-14 16:12:55',NULL,'Conference Room',NULL,'Call follow up','2015-02-14 16:12:40',16,132),(17,NULL,'2015-04-05 16:18:25',NULL,'Meeting Room 1',NULL,'Project kick-off','2015-04-05 16:12:40',17,133),(18,NULL,'2015-03-14 16:17:10',NULL,'Meeting Room 1',NULL,'Discuss new pricing','2015-03-14 16:12:40',18,134),(19,NULL,'2015-01-24 16:17:25',NULL,'Telephone',NULL,'Project kick-off','2015-01-24 16:12:40',19,135),(20,NULL,'2015-02-08 16:17:25',NULL,'Meeting Room 1',NULL,'Circle back on proposal','2015-02-08 16:12:40',20,136),(21,NULL,'2015-01-30 16:17:55',NULL,'Telephone',NULL,'Client service review','2015-01-30 16:12:40',21,137),(22,NULL,'2015-02-01 16:16:25',NULL,'Meeting Room 1',NULL,'Tradeshow preparation meeting','2015-02-01 16:12:40',22,138),(23,NULL,'2015-02-03 16:14:55',NULL,'Hotel Lobby',NULL,'Phase 2 discussion','2015-02-03 16:12:40',23,139),(24,NULL,'2015-01-17 16:13:40',NULL,'Conference Room',NULL,'Project kick-off','2015-01-17 16:12:40',24,140),(25,NULL,'2015-02-02 16:18:10',NULL,'Hotel Lobby',NULL,'Tradeshow preparation meeting','2015-02-02 16:12:40',25,141),(26,NULL,'2015-01-30 16:15:25',NULL,'Conference Room',NULL,'Discuss new pricing','2015-01-30 16:12:40',26,142),(27,NULL,'2015-01-18 16:13:55',NULL,'Telephone',NULL,'Discuss new pricing','2015-01-18 16:12:40',27,143),(28,NULL,'2015-02-06 16:13:10',NULL,'Telephone',NULL,'Discuss new pricing','2015-02-06 16:12:40',28,144),(29,NULL,'2015-02-06 16:15:56',NULL,'Meeting Room 1',NULL,'Follow-up call','2015-02-06 16:12:41',29,145),(30,NULL,'2015-02-05 16:13:11',NULL,'Conference Room',NULL,'Client service review','2015-02-05 16:12:41',30,146),(31,NULL,'2015-02-04 16:13:11',NULL,'Conference Room',NULL,'Discuss new pricing','2015-02-04 16:12:41',31,147),(32,NULL,'2015-01-22 16:16:26',NULL,'Meeting Room 1',NULL,'Circle back on proposal','2015-01-22 16:12:41',32,148),(33,NULL,'2015-02-07 16:17:41',NULL,'Telephone',NULL,'Circle back on proposal','2015-02-07 16:12:41',33,149),(34,NULL,'2015-02-05 16:16:56',NULL,'Telephone',NULL,'Client service review','2015-02-05 16:12:41',34,150),(35,NULL,'2015-02-05 16:15:26',NULL,'Hotel Lobby',NULL,'Project kick-off','2015-02-05 16:12:41',35,151),(36,NULL,'2015-01-13 16:14:26',NULL,'Hotel Lobby',NULL,'Project kick-off','2015-01-13 16:12:41',36,152);
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_read`
--

DROP TABLE IF EXISTS `meeting_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `meeting_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_read`
--

LOCK TABLES `meeting_read` WRITE;
/*!40000 ALTER TABLE `meeting_read` DISABLE KEYS */;
INSERT INTO `meeting_read` VALUES (1,120,'R1',1),(2,121,'R1',1),(3,122,'R1',1),(4,123,'R1',1),(5,124,'R1',1),(6,125,'R1',1),(7,126,'R1',1),(8,127,'R1',1),(9,128,'R1',1),(10,129,'R1',1),(11,130,'R1',1),(12,131,'R1',1),(13,132,'R1',1),(14,133,'R1',1),(15,134,'R1',1),(16,135,'R1',1),(17,136,'R1',1),(18,137,'R1',1),(19,138,'R1',1),(20,139,'R1',1),(21,140,'R1',1),(22,141,'R1',1),(23,142,'R1',1),(24,143,'R1',1),(25,144,'R1',1),(26,145,'R1',1),(27,146,'R1',1),(28,147,'R1',1),(29,148,'R1',1),(30,149,'R1',1),(31,150,'R1',1),(32,151,'R1',1),(33,152,'R1',1),(34,153,'R1',1),(35,154,'R1',1),(36,155,'R1',1);
/*!40000 ALTER TABLE `meeting_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_read_subscription`
--

DROP TABLE IF EXISTS `meeting_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_read_subscription`
--

LOCK TABLES `meeting_read_subscription` WRITE;
/*!40000 ALTER TABLE `meeting_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagesource`
--

DROP TABLE IF EXISTS `messagesource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagesource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sourceCategory` (`category`,`source`(767))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagesource`
--

LOCK TABLES `messagesource` WRITE;
/*!40000 ALTER TABLE `messagesource` DISABLE KEYS */;
/*!40000 ALTER TABLE `messagesource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messagetranslation`
--

DROP TABLE IF EXISTS `messagetranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messagetranslation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `translation` blob,
  `language` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messagesource_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sourceLanguageTranslation` (`messagesource_id`,`language`,`translation`(767))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messagetranslation`
--

LOCK TABLES `messagetranslation` WRITE;
/*!40000 ALTER TABLE `messagetranslation` DISABLE KEYS */;
/*!40000 ALTER TABLE `messagetranslation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission`
--

DROP TABLE IF EXISTS `mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `duedatetime` datetime DEFAULT NULL,
  `latestdatetime` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `reward` text COLLATE utf8_unicode_ci,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `takenbyuser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission`
--

LOCK TABLES `mission` WRITE;
/*!40000 ALTER TABLE `mission` DISABLE KEYS */;
INSERT INTO `mission` VALUES (1,'Can someone figure out a good location for the company party this year?',NULL,'2015-02-10 16:12:41',1,'Lunch on me',156,NULL),(2,'Analyze server infrastructure, look for ways to save money',NULL,'2015-02-10 16:12:41',1,'Knowing you are an awesome person',157,NULL),(3,'Get tax document notarized ',NULL,'2015-02-10 16:12:41',1,'I will buy you dinner',158,NULL),(4,'Organize the new marketing initiative for summer sales',NULL,'2015-02-10 16:12:42',1,'Starbucks 25 dollar gift card',159,NULL);
/*!40000 ALTER TABLE `mission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mission_read`
--

DROP TABLE IF EXISTS `mission_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mission_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `mission_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mission_read`
--

LOCK TABLES `mission_read` WRITE;
/*!40000 ALTER TABLE `mission_read` DISABLE KEYS */;
INSERT INTO `mission_read` VALUES (1,156,'R1',1),(2,156,'G2',1),(3,157,'R1',1),(4,157,'G2',1),(5,158,'R1',1),(6,158,'G2',1),(7,159,'R1',1),(8,159,'G2',1);
/*!40000 ALTER TABLE `mission_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelcreationapisync`
--

DROP TABLE IF EXISTS `modelcreationapisync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modelcreationapisync` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `servicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modelclassname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createddatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelcreationapisync`
--

LOCK TABLES `modelcreationapisync` WRITE;
/*!40000 ALTER TABLE `modelcreationapisync` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelcreationapisync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multiplevaluescustomfield`
--

DROP TABLE IF EXISTS `multiplevaluescustomfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `multiplevaluescustomfield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basecustomfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `basecustomfield_id` (`basecustomfield_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multiplevaluescustomfield`
--

LOCK TABLES `multiplevaluescustomfield` WRITE;
/*!40000 ALTER TABLE `multiplevaluescustomfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `multiplevaluescustomfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `named_securable_actual_permissions_cache`
--

DROP TABLE IF EXISTS `named_securable_actual_permissions_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `named_securable_actual_permissions_cache` (
  `securableitem_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `permitable_id` int(11) unsigned NOT NULL,
  `allow_permissions` tinyint(3) unsigned NOT NULL,
  `deny_permissions` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`securableitem_name`,`permitable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `named_securable_actual_permissions_cache`
--

LOCK TABLES `named_securable_actual_permissions_cache` WRITE;
/*!40000 ALTER TABLE `named_securable_actual_permissions_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `named_securable_actual_permissions_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `namedsecurableitem`
--

DROP TABLE IF EXISTS `namedsecurableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `namedsecurableitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `securableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `namedsecurableitem`
--

LOCK TABLES `namedsecurableitem` WRITE;
/*!40000 ALTER TABLE `namedsecurableitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `namedsecurableitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `occurredondatetime` datetime DEFAULT NULL,
  `activity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'E-mail: Re: Product changes.','2014-12-30 16:12:42',37),(2,'Accouting information regarding wire payment','2014-08-12 16:12:42',38),(3,'E-mail: Re: Follow up call.','2014-07-26 16:12:42',39),(4,'E-mail: Re: Product changes.','2014-10-08 16:12:42',40),(5,'E-mail: Re: Follow up call.','2014-08-28 16:12:42',41),(6,'Accouting information regarding wire payment','2014-08-12 16:12:42',42),(7,'System integration - jumpstart proposal','2015-01-07 16:12:42',43),(8,'Accouting information regarding wire payment','2014-10-10 16:12:42',44),(9,'System integration - jumpstart proposal','2014-09-06 16:12:42',45),(10,'System integration - jumpstart proposal','2015-01-03 16:12:42',46),(11,'System integration - jumpstart proposal','2014-10-06 16:12:42',47),(12,'E-mail: Re: Follow up call.','2014-09-21 16:12:42',48),(13,'Competitive landscape notes.','2014-11-11 16:12:42',49),(14,'E-mail: Re: Follow up call.','2014-10-26 16:12:42',50),(15,'E-mail: Re: Follow up call.','2014-12-17 16:12:42',51),(16,'E-mail: Re: Product changes.','2014-09-01 16:12:42',52),(17,'E-mail: Re: Follow up call.','2014-12-12 16:12:42',53),(18,'Competitive landscape notes.','2014-10-04 16:12:42',54),(19,'This account is heating up!','2015-02-10 16:12:48',55),(20,'Why is this customer having so many problems. Sigh','2015-02-10 16:12:49',56),(21,'Bam. Closed another deal!','2015-02-10 16:12:49',57);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_read`
--

DROP TABLE IF EXISTS `note_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `note_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_read`
--

LOCK TABLES `note_read` WRITE;
/*!40000 ALTER TABLE `note_read` DISABLE KEYS */;
INSERT INTO `note_read` VALUES (1,160,'R1',1),(2,161,'R1',1),(3,162,'R1',1),(4,163,'R1',1),(5,164,'R1',1),(6,165,'R1',1),(7,166,'R1',1),(8,167,'R1',1),(9,168,'R1',1),(10,169,'R1',1),(11,170,'R1',1),(12,171,'R1',1),(13,172,'R1',1),(14,173,'R1',1),(15,174,'R1',1),(16,175,'R1',1),(17,176,'R1',1),(18,177,'R1',1),(19,253,'R1',1),(20,256,'R1',1);
/*!40000 ALTER TABLE `note_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownerhasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `notificationmessage_id` int(11) unsigned DEFAULT NULL,
  `owner__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'RemoveApiTestEntryScriptFile',NULL,15,1,1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationmessage`
--

DROP TABLE IF EXISTS `notificationmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationmessage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `htmlcontent` text COLLATE utf8_unicode_ci,
  `textcontent` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationmessage`
--

LOCK TABLES `notificationmessage` WRITE;
/*!40000 ALTER TABLE `notificationmessage` DISABLE KEYS */;
INSERT INTO `notificationmessage` VALUES (1,NULL,'If this website is in production mode, please remove the app/test.php file.',16);
/*!40000 ALTER TABLE `notificationmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificationsubscriber`
--

DROP TABLE IF EXISTS `notificationsubscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificationsubscriber` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hasreadlatest` tinyint(1) unsigned DEFAULT NULL,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `task_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificationsubscriber`
--

LOCK TABLES `notificationsubscriber` WRITE;
/*!40000 ALTER TABLE `notificationsubscriber` DISABLE KEYS */;
INSERT INTO `notificationsubscriber` VALUES (1,0,28,1),(2,0,1,1),(3,0,30,1),(4,0,28,2),(5,0,1,2),(6,0,29,3),(7,0,1,3),(8,0,30,3),(9,0,30,4),(10,0,1,4),(11,0,26,5),(12,0,1,5),(13,0,28,5),(14,0,27,6),(15,0,1,6),(16,0,33,6),(17,0,27,7),(18,0,1,7),(19,0,32,8),(20,0,1,8),(21,0,28,8),(22,0,26,9),(23,0,1,9),(24,0,30,9),(25,0,31,10),(26,0,1,10),(27,0,30,10),(28,0,26,11),(29,0,1,11),(30,0,27,11),(31,0,31,12),(32,0,1,12),(33,0,27,12),(34,0,33,13),(35,0,1,13),(36,0,27,13),(37,0,30,14),(38,0,1,14),(39,0,28,14),(40,0,30,15),(41,0,1,15),(42,0,28,15),(43,0,26,16),(44,0,1,16),(45,0,28,16),(46,0,33,17),(47,0,1,17),(48,0,28,17),(49,0,27,18),(50,0,1,18),(51,0,28,18),(52,0,33,19),(53,0,27,19),(54,0,31,19),(55,0,33,20),(56,0,30,20),(57,0,31,20),(58,0,28,21),(59,0,28,21),(60,0,26,22),(61,0,30,22),(62,0,31,22),(63,0,32,23),(64,0,30,23),(65,0,33,23),(66,0,33,24),(67,0,31,24),(68,0,29,24),(69,0,28,25),(70,0,33,25),(71,0,29,25),(72,0,32,26),(73,0,28,26),(74,0,31,26),(75,0,28,27),(76,0,31,27),(77,0,30,27),(78,0,29,28),(79,0,33,28),(80,0,26,29),(81,0,27,29),(82,0,29,29),(83,0,28,30),(84,0,31,30),(85,0,33,30),(86,0,27,31),(87,0,28,31),(88,0,32,31),(89,0,27,32),(90,0,27,32),(91,0,33,33),(92,0,30,33),(93,0,29,33),(94,0,32,34),(95,0,26,34),(96,0,27,35),(97,0,32,35),(98,0,27,35),(99,0,31,36),(100,0,26,36),(101,0,27,36),(102,0,26,37),(103,0,31,37),(104,0,29,37),(105,0,29,38),(106,0,31,38),(107,0,33,38),(108,0,32,39),(109,0,29,39),(110,0,33,39),(111,0,33,40),(112,0,27,40),(113,0,28,40),(114,0,27,41),(115,0,28,41),(116,0,30,41),(117,0,26,42),(118,0,28,42),(119,0,31,42),(120,0,32,43),(121,0,30,43),(122,0,27,43),(123,0,27,44),(124,0,31,44),(125,0,27,44),(126,0,33,45),(127,0,31,45),(128,0,28,45),(129,0,28,46),(130,0,27,46),(131,0,30,46),(132,0,32,47),(133,0,33,47),(134,0,27,47),(135,0,29,48),(136,0,26,48),(137,0,33,48),(138,0,30,49),(139,0,26,49),(140,0,32,49),(141,0,32,50),(142,0,30,50),(143,0,28,50),(144,0,26,51),(145,0,27,51),(146,0,26,51),(147,0,26,52),(148,0,31,52),(149,0,29,53),(150,0,33,53),(151,0,31,53),(152,0,33,54),(153,0,32,54),(154,0,29,54),(155,0,26,55),(156,0,28,55),(157,0,26,55),(158,0,33,56),(159,0,29,56),(160,0,28,56),(161,0,33,57),(162,0,26,57),(163,0,30,57),(164,0,29,58),(165,0,30,58),(166,0,28,58),(167,0,30,59),(168,0,33,59),(169,0,31,60),(170,0,33,60),(171,0,28,60),(172,0,28,61),(173,0,26,61),(174,0,32,62),(175,0,29,62),(176,0,30,62),(177,0,33,63),(178,0,28,63),(179,0,32,63),(180,0,32,64),(181,0,27,64),(182,0,26,64),(183,0,32,65),(184,0,26,65),(185,0,30,65),(186,0,28,66),(187,0,30,66),(188,0,27,67),(189,0,30,67),(190,0,31,67),(191,0,32,68),(192,0,30,68),(193,0,26,68),(194,0,33,69),(195,0,28,69),(196,0,31,69),(197,0,32,70),(198,0,29,70),(199,0,29,70),(200,0,28,71),(201,0,32,71),(202,0,26,71),(203,0,29,72),(204,0,30,72),(205,0,27,72),(206,0,32,73),(207,0,29,73),(208,0,33,73),(209,0,33,74),(210,0,29,74),(211,0,26,74),(212,0,28,75),(213,0,29,75),(214,0,31,75),(215,0,29,76),(216,0,33,76),(217,0,26,76),(218,0,27,77),(219,0,30,77),(220,0,28,77),(221,0,29,78),(222,0,33,78),(223,0,28,78);
/*!40000 ALTER TABLE `notificationsubscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity`
--

DROP TABLE IF EXISTS `opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `closedate` date DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `probability` tinyint(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `amount_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  `stage_customfield_id` int(11) unsigned DEFAULT NULL,
  `source_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity`
--

LOCK TABLES `opportunity` WRITE;
/*!40000 ALTER TABLE `opportunity` DISABLE KEYS */;
INSERT INTO `opportunity` VALUES (1,'2015-02-17',NULL,'Expensive Software Product',0,108,6,1,93,94),(2,'2015-08-26',NULL,'Open Source Consulting',75,109,2,2,95,96),(3,'2015-07-22',NULL,'Training Services',10,110,2,3,97,98),(4,'2015-03-08',NULL,'Consulting Services',0,111,6,4,99,100),(5,'2015-08-05',NULL,'Open Source Consulting',100,112,1,5,101,102),(6,'2015-07-03',NULL,'Open Source Consulting',100,113,4,6,103,104),(7,'2015-03-22',NULL,'Wonder Widgets',10,114,2,7,105,106),(8,'2015-08-09',NULL,'Enterprise Software',25,115,4,8,107,108),(9,'2015-06-07',NULL,'Expensive Software Product',10,116,2,9,109,110),(10,'2015-02-12',NULL,'Wonder Widgets',100,117,5,10,111,112),(11,'2015-07-10',NULL,'Design Review Service',100,118,2,11,113,114),(12,'2015-07-17',NULL,'Wonder Widgets',0,119,4,12,115,116);
/*!40000 ALTER TABLE `opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity_project`
--

DROP TABLE IF EXISTS `opportunity_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_tcejorp_di_ytinutroppo` (`opportunity_id`,`project_id`),
  KEY `di_ytinutroppo` (`opportunity_id`),
  KEY `di_tcejorp` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity_project`
--

LOCK TABLES `opportunity_project` WRITE;
/*!40000 ALTER TABLE `opportunity_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunity_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunity_read`
--

DROP TABLE IF EXISTS `opportunity_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunity_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `opportunity_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunity_read`
--

LOCK TABLES `opportunity_read` WRITE;
/*!40000 ALTER TABLE `opportunity_read` DISABLE KEYS */;
INSERT INTO `opportunity_read` VALUES (1,108,'R1',1),(2,109,'R1',1),(3,110,'R1',1),(4,111,'R1',1),(5,112,'R1',1),(6,113,'R1',1),(7,114,'R1',1),(8,115,'R1',1),(9,116,'R1',1),(10,117,'R1',1),(11,118,'R1',1),(12,119,'R1',1);
/*!40000 ALTER TABLE `opportunity_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunitystarred`
--

DROP TABLE IF EXISTS `opportunitystarred`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunitystarred` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `basestarredmodel_id` int(11) unsigned DEFAULT NULL,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basestarredmodel_id_opportunity_id` (`basestarredmodel_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunitystarred`
--

LOCK TABLES `opportunitystarred` WRITE;
/*!40000 ALTER TABLE `opportunitystarred` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunitystarred` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ownedsecurableitem`
--

DROP TABLE IF EXISTS `ownedsecurableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ownedsecurableitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned DEFAULT NULL,
  `owner__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner__user_id` (`owner__user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownedsecurableitem`
--

LOCK TABLES `ownedsecurableitem` WRITE;
/*!40000 ALTER TABLE `ownedsecurableitem` DISABLE KEYS */;
INSERT INTO `ownedsecurableitem` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,7),(8,8,5),(9,9,5),(10,10,4),(11,11,10),(12,12,5),(13,13,5),(14,14,9),(15,15,10),(16,16,3),(17,17,6),(18,18,5),(19,19,5),(20,20,5),(21,21,7),(22,22,5),(23,23,10),(24,24,5),(25,25,4),(26,26,4),(27,27,7),(28,28,10),(29,29,5),(30,30,5),(31,31,5),(32,32,10),(33,33,5),(34,34,5),(35,35,5),(36,36,4),(37,37,5),(38,38,5),(39,39,7),(40,40,4),(41,41,5),(42,42,5),(43,43,7),(44,44,5),(45,45,5),(46,46,7),(47,47,5),(48,48,1),(49,49,1),(50,50,1),(51,51,1),(52,52,1),(53,53,1),(54,54,1),(55,55,1),(56,56,1),(57,57,1),(58,58,7),(59,59,7),(60,60,10),(61,61,5),(62,62,5),(63,63,7),(64,64,10),(65,65,5),(66,66,10),(67,67,5),(68,68,5),(69,69,10),(70,70,5),(71,71,5),(72,72,5),(73,73,5),(74,74,5),(75,75,7),(76,76,7),(77,77,10),(78,78,9),(79,79,6),(80,80,8),(81,81,9),(82,82,6),(83,83,3),(84,84,8),(85,85,3),(86,86,9),(87,87,7),(88,88,6),(89,89,3),(90,90,9),(91,91,5),(92,92,5),(93,93,8),(94,94,5),(95,95,10),(96,96,9),(97,97,4),(98,98,4),(99,99,5),(100,100,5),(101,101,7),(102,102,5),(103,103,9),(104,104,6),(105,105,6),(106,106,8),(107,107,5),(108,108,5),(109,109,5),(110,110,5),(111,111,5),(112,112,7),(113,113,4),(114,114,5),(115,115,4),(116,116,5),(117,117,10),(118,118,5),(119,119,4),(120,120,4),(121,121,4),(122,122,4),(123,123,7),(124,124,5),(125,125,7),(126,126,4),(127,127,5),(128,128,7),(129,129,5),(130,130,5),(131,131,5),(132,132,5),(133,133,4),(134,134,4),(135,135,4),(136,136,5),(137,137,7),(138,138,5),(139,139,4),(140,140,4),(141,141,4),(142,142,10),(143,143,5),(144,144,4),(145,145,4),(146,146,4),(147,147,5),(148,148,4),(149,149,7),(150,150,4),(151,151,5),(152,152,4),(153,153,10),(154,154,5),(155,155,5),(156,156,6),(157,157,8),(158,158,5),(159,159,10),(160,160,5),(161,161,5),(162,162,5),(163,163,4),(164,164,4),(165,165,4),(166,166,5),(167,167,10),(168,168,5),(169,169,7),(170,170,7),(171,171,5),(172,172,7),(173,173,5),(174,174,10),(175,175,4),(176,176,5),(177,177,4),(178,178,1),(179,179,1),(180,180,1),(181,181,1),(182,182,1),(183,183,1),(184,184,3),(185,185,10),(186,186,6),(187,187,8),(188,188,10),(189,189,4),(190,190,8),(191,191,6),(192,192,10),(193,193,8),(194,194,8),(195,195,3),(196,196,3),(197,197,6),(198,198,3),(199,199,10),(200,200,6),(201,201,8),(202,202,6),(203,203,8),(204,204,10),(205,205,7),(206,206,9),(207,207,6),(208,208,6),(209,209,7),(210,210,7),(211,211,3),(212,212,4),(213,213,7),(214,214,10),(215,215,5),(216,216,4),(217,217,5),(218,218,8),(219,219,5),(220,220,7),(221,221,8),(222,222,8),(223,223,3),(224,224,9),(225,225,7),(226,226,6),(227,227,4),(228,228,6),(229,229,3),(230,230,8),(231,231,4),(232,232,7),(233,233,7),(234,234,4),(235,235,7),(236,236,8),(237,237,6),(238,238,5),(239,239,9),(240,240,3),(241,241,5),(242,242,3),(243,243,3),(244,244,3),(245,245,9),(246,246,9),(247,247,7),(248,248,8),(249,249,7),(250,250,10),(251,251,6),(252,252,5),(253,253,5),(254,254,5),(255,255,8),(256,256,7),(257,257,7),(258,258,3),(259,259,5),(260,260,8),(261,261,8),(262,262,5),(263,263,7),(264,264,5),(265,265,7),(266,266,7),(267,267,5),(268,268,10),(269,269,4),(270,270,5),(271,271,7),(272,272,7),(273,273,4),(274,274,4),(275,275,4),(276,276,5),(277,277,5),(278,278,5),(279,279,5),(280,280,5),(281,281,7),(282,282,5),(283,283,6),(284,284,9),(285,285,8),(286,286,5),(287,287,6),(288,288,5),(289,289,8),(290,290,7),(291,291,4),(292,292,7),(293,293,5),(294,294,7),(295,295,7),(296,296,8),(297,297,10),(298,298,5),(299,299,8),(300,300,6),(301,301,6),(302,302,4),(303,303,8),(304,304,5),(305,305,4),(306,306,7),(307,307,9),(308,308,9),(309,309,3),(310,310,8),(311,311,8),(312,312,10),(313,313,6),(314,314,4),(315,315,5),(316,316,5),(317,317,7),(318,318,8),(319,319,8),(320,320,4),(321,321,10),(322,322,3),(323,323,10),(324,324,3),(325,325,7),(326,326,4),(327,327,3),(328,328,10),(329,329,9),(330,330,5),(331,331,6),(332,332,3),(333,333,7),(334,334,4),(335,335,7),(336,336,10),(337,337,5),(338,338,6),(339,339,5),(340,340,4),(341,341,3),(342,342,5),(343,343,7),(344,344,7),(345,345,9),(346,346,5),(347,347,6),(348,348,9),(349,349,7),(350,350,6),(351,351,6),(352,352,6),(353,353,10),(354,354,7),(355,355,10);
/*!40000 ALTER TABLE `ownedsecurableitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permissions` tinyint(11) DEFAULT NULL,
  `type` tinyint(11) DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  `securableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,27,1,3,1),(2,27,1,3,2),(3,27,1,3,3),(4,27,1,3,4),(5,27,1,3,5),(6,27,1,3,6),(7,27,1,3,13),(8,27,1,3,14),(9,27,1,3,15),(10,27,1,3,16),(11,27,1,3,17),(12,27,1,3,30),(13,27,1,3,31),(14,27,1,3,32),(15,27,1,3,33),(16,27,1,3,34),(17,27,1,3,35),(18,27,1,3,36),(19,27,1,3,37),(20,27,1,3,38),(21,27,1,3,39),(22,27,1,3,40),(23,27,1,3,41),(24,27,1,3,42),(25,27,1,3,43),(26,27,1,3,44),(27,27,1,3,45),(28,27,1,3,46),(29,27,1,3,47),(30,27,1,3,48),(31,27,1,3,49),(32,27,1,3,50),(33,27,1,3,51),(34,27,1,3,52),(35,27,1,3,53),(36,27,1,3,54),(37,27,1,3,55),(38,27,1,3,56),(39,27,1,3,57),(40,27,1,3,58),(41,27,1,3,59),(42,27,1,3,60),(43,27,1,3,61),(44,27,1,3,62),(45,27,1,3,63),(46,27,1,3,64),(47,27,1,3,65),(48,27,1,3,66),(49,27,1,3,67),(50,27,1,3,68),(51,27,1,3,69),(52,27,1,3,70),(53,27,1,3,71),(54,27,1,3,72),(55,27,1,3,73),(56,27,1,3,74),(57,27,1,3,75),(58,27,1,18,76),(59,27,1,11,76),(60,27,1,14,76),(61,27,1,12,76),(62,27,1,1,76),(63,27,1,15,77),(64,27,1,14,77),(65,27,1,1,77),(66,27,1,13,78),(67,27,1,18,78),(68,27,1,11,78),(69,27,1,15,78),(70,27,1,1,78),(71,27,1,3,79),(72,27,1,3,80),(73,27,1,3,81),(74,27,1,3,82),(75,27,1,3,83),(76,27,1,3,84),(77,27,1,3,85),(78,27,1,3,86),(79,27,1,3,87),(80,27,1,3,88),(81,27,1,3,89),(82,27,1,3,90),(83,27,1,3,91),(84,27,1,3,92),(85,27,1,3,93),(86,27,1,3,94),(87,27,1,3,95),(88,27,1,3,156),(89,27,1,3,157),(90,27,1,3,158),(91,27,1,3,159),(92,27,1,3,178),(93,27,1,3,179),(94,27,1,3,180),(95,27,1,3,181),(96,27,1,3,182),(97,27,1,3,183),(98,27,1,3,244),(99,27,1,3,245),(100,27,1,3,246),(101,27,1,3,247),(102,27,1,3,248),(103,27,1,3,249),(104,27,1,3,250),(105,27,1,3,251),(106,27,1,3,252),(107,27,1,3,254),(108,27,1,3,255),(109,27,1,3,257),(110,27,1,3,258),(111,27,1,3,259),(112,27,1,3,260),(113,27,1,3,261),(114,27,1,3,262),(115,27,1,3,281),(116,27,1,3,282),(117,27,1,3,283),(118,27,1,3,284),(119,27,1,3,285),(120,27,1,3,290),(121,27,1,3,291),(122,27,1,3,292),(123,27,1,3,293),(124,27,1,3,294),(125,27,1,3,295),(126,27,1,3,296),(127,27,1,3,297),(128,27,1,3,298),(129,27,1,3,299),(130,27,1,3,300),(131,27,1,3,301),(132,27,1,3,302),(133,27,1,3,303),(134,27,1,3,304),(135,27,1,3,305),(136,27,1,3,306),(137,27,1,3,307),(138,27,1,3,308),(139,27,1,3,309),(140,27,1,3,310),(141,27,1,3,311),(142,27,1,3,312),(143,27,1,3,313),(144,27,1,3,314),(145,27,1,3,315),(146,27,1,3,316),(147,27,1,3,317),(148,27,1,3,318),(149,27,1,3,319),(150,27,1,3,320),(151,27,1,3,321),(152,27,1,3,322),(153,27,1,3,323),(154,27,1,3,324),(155,27,1,3,325),(156,27,1,3,326),(157,27,1,3,327),(158,27,1,3,328),(159,27,1,3,329),(160,27,1,3,330),(161,27,1,3,331),(162,27,1,3,332),(163,27,1,3,333),(164,27,1,3,334),(165,27,1,3,335),(166,27,1,3,336),(167,27,1,3,337),(168,27,1,3,338),(169,27,1,3,339),(170,27,1,3,340),(171,27,1,3,341),(172,27,1,3,342),(173,27,1,3,343),(174,27,1,3,344),(175,27,1,3,345),(176,27,1,3,346),(177,27,1,3,347),(178,27,1,3,348),(179,27,1,3,349),(180,27,1,3,350),(181,27,1,3,351),(182,27,1,3,352),(183,27,1,3,353),(184,27,1,3,354),(185,27,1,3,355);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permitable`
--

DROP TABLE IF EXISTS `permitable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permitable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permitable`
--

LOCK TABLES `permitable` WRITE;
/*!40000 ALTER TABLE `permitable` DISABLE KEYS */;
INSERT INTO `permitable` VALUES (1,1),(2,2),(3,8),(4,14),(5,17),(6,18),(7,19),(8,20),(9,21),(10,22),(11,26),(12,27),(13,28),(14,29),(15,30),(16,31),(17,32),(18,33);
/*!40000 ALTER TABLE `permitable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobtitle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officephone` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officefax` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `primaryaddress_address_id` int(11) unsigned DEFAULT NULL,
  `primaryemail_email_id` int(11) unsigned DEFAULT NULL,
  `title_customfield_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ownedsecurableitem_id` (`ownedsecurableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,NULL,'Super',NULL,'User',NULL,NULL,NULL,NULL,NULL,1,NULL),(2,NULL,'System',NULL,'User',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Sales','Jason','Sales Director','Blue','724-540-1088','526-289-1371','212-345-6655',NULL,1,2,1),(4,'Information Technology','Jim','IT Director','Smith','582-663-6915','329-303-8982','553-486-3400',NULL,2,3,2),(5,'Sales','John','Sales Manager','Smith','303-402-8194','680-328-5966','730-538-8475',NULL,3,4,3),(6,'Information Technology','Sally','IT Director','Smith','534-700-1902','464-374-9259','463-712-5083',NULL,4,5,4),(7,'Sales','Mary','Sales Manager','Smith','279-579-2157','373-559-2542','244-316-4620',NULL,5,6,5),(8,'Sales','Katie','Sales Director','Smith','719-371-2820','491-743-3822','214-346-3316',NULL,6,7,6),(9,'Sales','Jill','Sales Manager','Smith','834-747-7641','440-310-5213','379-552-5782',NULL,7,8,7),(10,'Information Technology','Sam','IT Manager','Smith','208-323-4867','250-610-3658','673-251-9424',NULL,8,9,8),(11,'Information Technology','Lisa','IT Director','Moore','397-534-6796','420-312-7792','852-621-4879',18,15,16,21),(12,'Sales','Gail','Sales Manager','Martinez','600-459-9542','346-854-1690','274-835-8682',19,16,17,24),(13,'Sales','Stafford','Sales Director','Walker','212-585-2560','442-513-3878','456-397-1604',20,17,18,27),(14,'Sales','Ray','Sales Director','Jones','227-813-5899','864-724-4369','815-638-2526',21,18,19,30),(15,'Sales','Alex','Sales Director','Clark','758-324-4618','244-322-4224','785-497-4829',22,19,20,33),(16,'Information Technology','Sarah','Vice President','Robinson','760-711-9008','778-884-2310','808-554-2061',23,20,21,36),(17,'Information Technology','Ruth','Vice President','Clark','300-875-4873','200-564-3129','689-470-3690',24,21,22,39),(18,'Sales','Alex','Sales Director','Williams','249-669-8607','779-867-2269','669-542-6931',25,22,23,42),(19,'Sales','Nev','Sales Director','Brown','525-525-4513','339-756-3619','639-822-1459',26,23,24,45),(20,'Sales','Betty','Sales Director','Moore','221-344-7908','728-585-4209','628-284-1822',27,24,25,48),(21,'Sales','Walter','Sales Director','Miller','597-765-3296','702-670-8859','426-643-9548',28,25,26,51),(22,'Sales','Sophie','Sales Director','Allen','363-268-6999','796-277-2603','412-277-8188',29,26,27,54),(23,'Information Technology','Raymond','Vice President','Johnson','670-861-4814','246-371-2896','391-456-2837',96,27,28,57),(24,'Information Technology','Ester','IT Director','Thompson','201-447-9400','738-889-3723','843-338-7108',97,28,29,60),(25,'Sales','Ignacio','Vice President','Brown','383-418-8028','457-652-5943','875-771-5719',98,29,30,63),(26,'Sales','Jake','Sales Director','Robinson','787-512-5663','520-531-5151','884-650-4147',99,30,31,66),(27,'Sales','David','Sales Manager','Miller','275-267-2234','833-319-3352','445-536-6783',100,31,32,69),(28,'Information Technology','Gail','IT Director','Walker','572-732-1832','416-659-5651','679-846-2869',101,32,33,72),(29,'Information Technology','Katie','IT Director','Williams','673-566-1608','722-779-3801','793-384-2314',102,33,34,75),(30,'Sales','Walter','Vice President','Moore','382-763-3190','751-890-6068','703-480-3025',103,34,35,78),(31,'Sales','Kirby','Sales Manager','Harris','832-628-4064','615-543-6477','424-755-6794',104,35,36,81),(32,'Information Technology','Jake','IT Director','Johnson','393-763-7258','852-248-9172','356-504-2179',105,36,37,84),(33,'Information Technology','Rosina','IT Director','Thompson','623-666-3563','830-407-2361','614-429-5799',106,37,38,87),(34,'Information Technology','Kirby','IT Director','Walker','681-223-5055','450-378-3639','346-667-3383',107,38,39,90),(35,NULL,'Alice','Sales Manager','Brown',NULL,NULL,NULL,286,NULL,NULL,NULL),(36,NULL,'Jim','Sales Director','Smith',NULL,NULL,NULL,287,NULL,NULL,NULL),(37,NULL,'Keith','IT Manager','Cooper',NULL,NULL,NULL,288,NULL,NULL,NULL),(38,NULL,'Sarah','Vice President','Lee',NULL,NULL,NULL,289,NULL,NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personwhohavenotreadlatest`
--

DROP TABLE IF EXISTS `personwhohavenotreadlatest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personwhohavenotreadlatest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `person_item_id` int(11) unsigned DEFAULT NULL,
  `mission_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personwhohavenotreadlatest`
--

LOCK TABLES `personwhohavenotreadlatest` WRITE;
/*!40000 ALTER TABLE `personwhohavenotreadlatest` DISABLE KEYS */;
INSERT INTO `personwhohavenotreadlatest` VALUES (1,1,1),(2,26,1),(3,27,1),(4,28,1),(5,30,1),(6,31,1),(7,32,1),(8,33,1),(9,14,1),(10,29,1),(11,1,2),(12,26,2),(13,27,2),(14,28,2),(15,29,2),(16,30,2),(17,32,2),(18,33,2),(19,14,2),(20,31,2),(21,1,3),(22,26,3),(23,27,3),(24,29,3),(25,30,3),(26,31,3),(27,32,3),(28,33,3),(29,14,3),(30,28,3),(31,1,4),(32,26,4),(33,27,4),(34,28,4),(35,29,4),(36,30,4),(37,31,4),(38,32,4),(39,14,4),(40,33,4);
/*!40000 ALTER TABLE `personwhohavenotreadlatest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusermetadata`
--

DROP TABLE IF EXISTS `perusermetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perusermetadata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializedmetadata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusermetadata`
--

LOCK TABLES `perusermetadata` WRITE;
/*!40000 ALTER TABLE `perusermetadata` DISABLE KEYS */;
INSERT INTO `perusermetadata` VALUES (1,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',1),(2,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',3),(3,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',4),(4,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',5),(5,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',6),(6,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',7),(7,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',8),(8,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',9),(9,'ZurmoModule','a:1:{s:25:\"turnOffEmailNotifications\";b:1;}',10);
/*!40000 ALTER TABLE `perusermetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `policy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modulename` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permitable_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `column` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `layoutid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `viewtype` text COLLATE utf8_unicode_ci,
  `serializedviewdata` text COLLATE utf8_unicode_ci,
  `collapsed` tinyint(1) unsigned DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet`
--

LOCK TABLES `portlet` WRITE;
/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `pricefrequency` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `contact_id` int(11) unsigned DEFAULT NULL,
  `opportunity_id` int(11) unsigned DEFAULT NULL,
  `producttemplate_id` int(11) unsigned DEFAULT NULL,
  `stage_customfield_id` int(11) unsigned DEFAULT NULL,
  `sellprice_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Amazing Kid Sample',NULL,85,1,2,184,4,2,8,1,153,109),(2,'You Can Do Anything Sample',NULL,74,1,2,185,1,7,5,2,154,110),(3,'A Bend in the River November Issue',NULL,34,1,2,186,6,7,6,3,155,111),(4,'A Gift of Monotheists October Issue',NULL,30,1,2,187,5,4,7,4,156,112),(5,'Enjoy Once in a Lifetime Music',NULL,84,1,2,188,5,6,2,5,157,113),(6,'Laptop Inc - Model A4rxVE-PgW',NULL,62,1,2,189,5,2,5,6,158,114),(7,'Laptop Inc - Model A4rxVE-PGo',NULL,36,1,2,190,1,10,8,6,159,115),(8,'Laptop Inc - Model Ig641C-PHE',NULL,43,1,2,191,2,5,9,7,160,116),(9,'Laptop Inc - Model Ig641C-PeN',NULL,70,1,2,192,2,8,5,7,161,117),(10,'Laptop Inc - Model WPwdgE-PaG',NULL,57,1,2,193,2,8,6,8,162,118),(11,'Laptop Inc - Model WPwdgE-PCc',NULL,84,1,2,194,6,2,1,8,163,119),(12,'Laptop Inc - Model ILQm6S-Pny',NULL,51,1,2,195,1,12,12,9,164,120),(13,'Laptop Inc - Model ILQm6S-P5u',NULL,18,1,2,196,6,5,7,9,165,121),(14,'Laptop Inc - Model txZLAV-PUu',NULL,65,1,2,197,3,11,5,10,166,122),(15,'Laptop Inc - Model txZLAV-PHD',NULL,78,1,2,198,2,5,5,10,167,123),(16,'Laptop Inc - Model LxIiYe-PUk',NULL,88,1,2,199,4,7,6,11,168,124),(17,'Laptop Inc - Model LxIiYe-PJ0',NULL,81,1,2,200,5,12,3,11,169,125),(18,'Laptop Inc - Model lJR8BE-P7X',NULL,89,1,2,201,6,10,9,12,170,126),(19,'Laptop Inc - Model lJR8BE-PBi',NULL,36,1,2,202,2,5,3,12,171,127),(20,'Laptop Inc - Model RUsXHJ-Pey',NULL,37,1,2,203,3,8,6,13,172,128),(21,'Laptop Inc - Model RUsXHJ-Pp7',NULL,70,1,2,204,3,7,5,13,173,129),(22,'Laptop Inc - Model sF19vH-Pl6',NULL,91,1,2,205,4,7,12,14,174,130),(23,'Laptop Inc - Model sF19vH-P5T',NULL,20,1,2,206,5,7,6,14,175,131),(24,'Camera Inc 2 MegaPixel - Model U7DLoa-PYE',NULL,49,1,2,207,4,4,6,15,176,132),(25,'Camera Inc 2 MegaPixel - Model U7DLoa-PGD',NULL,33,1,2,208,1,6,8,15,177,133),(26,'Camera Inc 2 MegaPixel - Model yQAc6z-PLw',NULL,19,1,2,209,6,6,10,16,178,134),(27,'Camera Inc 2 MegaPixel - Model yQAc6z-PKJ',NULL,10,1,2,210,6,10,5,16,179,135),(28,'Camera Inc 2 MegaPixel - Model GD295B-PJA',NULL,31,1,2,211,6,8,12,17,180,136),(29,'Camera Inc 2 MegaPixel - Model GD295B-PU2',NULL,16,1,2,212,1,10,11,17,181,137),(30,'Camera Inc 2 MegaPixel - Model 1m3ifE-PVW',NULL,72,1,2,213,4,8,1,18,182,138),(31,'Camera Inc 2 MegaPixel - Model 1m3ifE-PHG',NULL,15,1,2,214,5,4,8,18,183,139),(32,'Camera Inc 2 MegaPixel - Model tg0IJn-PMw',NULL,80,1,2,215,6,10,1,19,184,140),(33,'Camera Inc 2 MegaPixel - Model tg0IJn-PJY',NULL,52,1,2,216,1,7,3,19,185,141),(34,'Camera Inc 2 MegaPixel - Model sqfXlL-P7Q',NULL,93,1,2,217,3,2,12,20,186,142),(35,'Camera Inc 2 MegaPixel - Model sqfXlL-PuP',NULL,92,1,2,218,3,3,3,20,187,143),(36,'Camera Inc 2 MegaPixel - Model WXZJcY-P67',NULL,68,1,2,219,6,7,3,21,188,144),(37,'Camera Inc 2 MegaPixel - Model WXZJcY-PvE',NULL,19,1,2,220,5,10,3,21,189,145),(38,'Camera Inc 2 MegaPixel - Model BjHkLq-Pxv',NULL,63,1,2,221,1,2,8,22,190,146),(39,'Camera Inc 2 MegaPixel - Model BjHkLq-POe',NULL,79,1,2,222,4,10,7,22,191,147),(40,'Camera Inc 2 MegaPixel - Model WwhQrf-Pw1',NULL,59,1,2,223,5,9,12,23,192,148),(41,'Camera Inc 2 MegaPixel - Model WwhQrf-P9A',NULL,54,1,2,224,4,1,12,23,193,149),(42,'Handycam Inc - Model OlTA7P-PwY',NULL,16,1,2,225,2,10,10,24,194,150),(43,'Handycam Inc - Model OlTA7P-P9v',NULL,77,1,2,226,1,7,4,24,195,151),(44,'Handycam Inc - Model DyCFrT-PIT',NULL,13,1,2,227,2,5,3,25,196,152),(45,'Handycam Inc - Model DyCFrT-Plg',NULL,7,1,2,228,4,6,9,25,197,153),(46,'Handycam Inc - Model dZthjI-PLH',NULL,33,1,2,229,2,8,8,26,198,154),(47,'Handycam Inc - Model dZthjI-PTh',NULL,31,1,2,230,4,11,12,26,199,155),(48,'Handycam Inc - Model YbDF1E-PPK',NULL,90,1,2,231,6,9,3,27,200,156),(49,'Handycam Inc - Model YbDF1E-P3w',NULL,83,1,2,232,5,2,4,27,201,157),(50,'Handycam Inc - Model zWZfJI-PWY',NULL,29,1,2,233,1,8,7,28,202,158),(51,'Handycam Inc - Model zWZfJI-PAB',NULL,72,1,2,234,2,8,3,28,203,159),(52,'Handycam Inc - Model kfhOgW-Ppt',NULL,20,1,2,235,4,12,2,29,204,160),(53,'Handycam Inc - Model kfhOgW-Piu',NULL,46,1,2,236,6,9,10,29,205,161),(54,'Handycam Inc - Model HqQVW7-Poq',NULL,58,1,2,237,1,3,4,30,206,162),(55,'Handycam Inc - Model HqQVW7-PE7',NULL,34,1,2,238,1,11,11,30,207,163),(56,'Handycam Inc - Model fXwxBP-PKd',NULL,35,1,2,239,1,3,10,31,208,164),(57,'Handycam Inc - Model fXwxBP-PaM',NULL,17,1,2,240,2,6,2,31,209,165),(58,'Handycam Inc - Model xpXevG-PBF',NULL,25,1,2,241,2,7,9,32,210,166),(59,'Handycam Inc - Model xpXevG-PN5',NULL,16,1,2,242,6,3,10,32,211,167);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productcategory`
--

DROP TABLE IF EXISTS `product_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_productcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned DEFAULT NULL,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_yrogetactcudorp_di_tcudorp` (`product_id`,`productcategory_id`),
  KEY `di_tcudorp` (`product_id`),
  KEY `di_yrogetactcudorp` (`productcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productcategory`
--

LOCK TABLES `product_productcategory` WRITE;
/*!40000 ALTER TABLE `product_productcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_read`
--

DROP TABLE IF EXISTS `product_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `product_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_read`
--

LOCK TABLES `product_read` WRITE;
/*!40000 ALTER TABLE `product_read` DISABLE KEYS */;
INSERT INTO `product_read` VALUES (1,185,'R1',1),(2,186,'R1',1),(3,187,'R1',1),(4,188,'R1',1),(5,189,'R1',1),(6,190,'R1',1),(7,191,'R1',1),(8,192,'R1',1),(9,193,'R1',1),(10,194,'R1',1),(11,197,'R1',1),(12,199,'R1',1),(13,200,'R1',1),(14,201,'R1',1),(15,202,'R1',1),(16,203,'R1',1),(17,204,'R1',1),(18,205,'R1',1),(19,206,'R1',1),(20,207,'R1',1),(21,208,'R1',1),(22,209,'R1',1),(23,210,'R1',1),(24,212,'R1',1),(25,213,'R1',1),(26,214,'R1',1),(27,215,'R1',1),(28,216,'R1',1),(29,217,'R1',1),(30,218,'R1',1),(31,219,'R1',1),(32,220,'R1',1),(33,221,'R1',1),(34,222,'R1',1),(35,224,'R1',1),(36,225,'R1',1),(37,226,'R1',1),(38,227,'R1',1),(39,228,'R1',1),(40,230,'R1',1),(41,231,'R1',1),(42,232,'R1',1),(43,233,'R1',1),(44,234,'R1',1),(45,235,'R1',1),(46,236,'R1',1),(47,237,'R1',1),(48,238,'R1',1),(49,239,'R1',1),(50,241,'R1',1);
/*!40000 ALTER TABLE `product_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcatalog`
--

DROP TABLE IF EXISTS `productcatalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcatalog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcatalog`
--

LOCK TABLES `productcatalog` WRITE;
/*!40000 ALTER TABLE `productcatalog` DISABLE KEYS */;
INSERT INTO `productcatalog` VALUES (1,'Default',420);
/*!40000 ALTER TABLE `productcatalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcatalog_productcategory`
--

DROP TABLE IF EXISTS `productcatalog_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcatalog_productcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productcatalog_id` int(11) unsigned DEFAULT NULL,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_yrogetactcudorp_di_golatactcudorp` (`productcatalog_id`,`productcategory_id`),
  KEY `di_golatactcudorp` (`productcatalog_id`),
  KEY `di_yrogetactcudorp` (`productcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcatalog_productcategory`
--

LOCK TABLES `productcatalog_productcategory` WRITE;
/*!40000 ALTER TABLE `productcatalog_productcategory` DISABLE KEYS */;
INSERT INTO `productcatalog_productcategory` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6);
/*!40000 ALTER TABLE `productcatalog_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory`
--

DROP TABLE IF EXISTS `productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory`
--

LOCK TABLES `productcategory` WRITE;
/*!40000 ALTER TABLE `productcategory` DISABLE KEYS */;
INSERT INTO `productcategory` VALUES (1,'CD-DVD',421,NULL),(2,'Books',422,NULL),(3,'Music',423,NULL),(4,'Laptops',424,NULL),(5,'Camera',425,NULL),(6,'Handycam',426,NULL);
/*!40000 ALTER TABLE `productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcategory_producttemplate`
--

DROP TABLE IF EXISTS `productcategory_producttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productcategory_producttemplate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productcategory_id` int(11) unsigned DEFAULT NULL,
  `producttemplate_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_di_etalpmettcudorp_di_yrogetactcudorp` (`productcategory_id`,`producttemplate_id`),
  KEY `di_yrogetactcudorp` (`productcategory_id`),
  KEY `di_etalpmettcudorp` (`producttemplate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcategory_producttemplate`
--

LOCK TABLES `productcategory_producttemplate` WRITE;
/*!40000 ALTER TABLE `productcategory_producttemplate` DISABLE KEYS */;
INSERT INTO `productcategory_producttemplate` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,3,5),(6,4,6),(7,4,7),(8,4,8),(9,4,9),(10,4,10),(11,4,11),(12,4,12),(13,4,13),(14,4,14),(15,5,15),(16,5,16),(17,5,17),(18,5,18),(19,5,19),(20,5,20),(21,5,21),(22,5,22),(23,5,23),(24,6,24),(25,6,25),(26,6,26),(27,6,27),(28,6,28),(29,6,29),(30,6,30),(31,6,31),(32,6,32);
/*!40000 ALTER TABLE `productcategory_producttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttemplate`
--

DROP TABLE IF EXISTS `producttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttemplate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `pricefrequency` int(11) DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `sellpriceformula_id` int(11) unsigned DEFAULT NULL,
  `cost_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  `listprice_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  `sellprice_currencyvalue_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttemplate`
--

LOCK TABLES `producttemplate` WRITE;
/*!40000 ALTER TABLE `producttemplate` DISABLE KEYS */;
INSERT INTO `producttemplate` VALUES (1,'Amazing Kid',NULL,2,1,2,427,1,13,14,15),(2,'You Can Do Anything',NULL,2,1,2,428,2,16,17,18),(3,'A Bend in the River',NULL,2,1,2,429,3,19,20,21),(4,'A Gift of Monotheists',NULL,2,1,2,430,4,22,23,24),(5,'Once in a Lifetime',NULL,2,1,2,431,5,25,26,27),(6,'Laptop Inc - Model A4rxVE',NULL,2,1,2,432,6,28,29,30),(7,'Laptop Inc - Model Ig641C',NULL,2,1,2,433,7,31,32,33),(8,'Laptop Inc - Model WPwdgE',NULL,2,1,2,434,8,34,35,36),(9,'Laptop Inc - Model ILQm6S',NULL,2,1,2,435,9,37,38,39),(10,'Laptop Inc - Model txZLAV',NULL,2,1,2,436,10,40,41,42),(11,'Laptop Inc - Model LxIiYe',NULL,2,1,2,437,11,43,44,45),(12,'Laptop Inc - Model lJR8BE',NULL,2,1,2,438,12,46,47,48),(13,'Laptop Inc - Model RUsXHJ',NULL,2,1,2,439,13,49,50,51),(14,'Laptop Inc - Model sF19vH',NULL,2,1,2,440,14,52,53,54),(15,'Camera Inc 2 MegaPixel - Model U7DLoa',NULL,2,1,2,441,15,55,56,57),(16,'Camera Inc 2 MegaPixel - Model yQAc6z',NULL,2,1,2,442,16,58,59,60),(17,'Camera Inc 2 MegaPixel - Model GD295B',NULL,2,1,2,443,17,61,62,63),(18,'Camera Inc 2 MegaPixel - Model 1m3ifE',NULL,2,1,2,444,18,64,65,66),(19,'Camera Inc 2 MegaPixel - Model tg0IJn',NULL,2,1,2,445,19,67,68,69),(20,'Camera Inc 2 MegaPixel - Model sqfXlL',NULL,2,1,2,446,20,70,71,72),(21,'Camera Inc 2 MegaPixel - Model WXZJcY',NULL,2,1,2,447,21,73,74,75),(22,'Camera Inc 2 MegaPixel - Model BjHkLq',NULL,2,1,2,448,22,76,77,78),(23,'Camera Inc 2 MegaPixel - Model WwhQrf',NULL,2,1,2,449,23,79,80,81),(24,'Handycam Inc - Model OlTA7P',NULL,2,1,2,450,24,82,83,84),(25,'Handycam Inc - Model DyCFrT',NULL,2,1,2,451,25,85,86,87),(26,'Handycam Inc - Model dZthjI',NULL,2,1,2,452,26,88,89,90),(27,'Handycam Inc - Model YbDF1E',NULL,2,1,2,453,27,91,92,93),(28,'Handycam Inc - Model zWZfJI',NULL,2,1,2,454,28,94,95,96),(29,'Handycam Inc - Model kfhOgW',NULL,2,1,2,455,29,97,98,99),(30,'Handycam Inc - Model HqQVW7',NULL,2,1,2,456,30,100,101,102),(31,'Handycam Inc - Model fXwxBP',NULL,2,1,2,457,31,103,104,105),(32,'Handycam Inc - Model xpXevG',NULL,2,1,2,458,32,106,107,108);
/*!40000 ALTER TABLE `producttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Wentworth Industries Project','Wentworth Industries Project Description',1,290),(2,'Cogswell Cogs Project','Cogswell Cogs Project Description',1,301),(3,'Klimpys Project','Klimpys Project Description',1,312),(4,'Fake Brothers Project','Fake Brothers Project Description',1,323),(5,'Sto Plains Holdings Project','Sto Plains Holdings Project Description',1,334),(6,'Rouster and Sideways Project','Rouster and Sideways Project Description',1,345);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_read`
--

DROP TABLE IF EXISTS `project_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `project_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_read`
--

LOCK TABLES `project_read` WRITE;
/*!40000 ALTER TABLE `project_read` DISABLE KEYS */;
INSERT INTO `project_read` VALUES (1,290,'R1',1),(2,290,'G2',1),(3,301,'R1',1),(4,301,'G2',1),(5,312,'R1',1),(6,312,'G2',1),(7,323,'R1',1),(8,323,'G2',1),(9,334,'R1',1),(10,334,'G2',1),(11,345,'R1',1),(12,345,'G2',1);
/*!40000 ALTER TABLE `project_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectauditevent`
--

DROP TABLE IF EXISTS `projectauditevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectauditevent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `eventname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `_user_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectauditevent`
--

LOCK TABLES `projectauditevent` WRITE;
/*!40000 ALTER TABLE `projectauditevent` DISABLE KEYS */;
INSERT INTO `projectauditevent` VALUES (1,'2015-02-10 16:12:52','Project Created','s:28:\"Wentworth Industries Project\";',1,1),(2,'2015-02-10 16:12:52','Project Created','s:28:\"Wentworth Industries Project\";',1,1),(3,'2015-02-10 16:12:53','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,1),(4,'2015-02-10 16:12:53','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,1),(5,'2015-02-10 16:12:53','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,1),(6,'2015-02-10 16:12:53','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,1),(7,'2015-02-10 16:12:53','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";}',1,1),(8,'2015-02-10 16:12:53','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,1),(9,'2015-02-10 16:12:53','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,1),(10,'2015-02-10 16:12:53','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,1),(11,'2015-02-10 16:12:53','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,1),(12,'2015-02-10 16:12:53','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,1),(13,'2015-02-10 16:12:53','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";}',1,1),(14,'2015-02-10 16:12:54','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,1),(15,'2015-02-10 16:12:54','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,1),(16,'2015-02-10 16:12:54','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,1),(17,'2015-02-10 16:12:54','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,1),(18,'2015-02-10 16:12:54','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,1),(19,'2015-02-10 16:12:54','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";}',1,1),(20,'2015-02-10 16:12:54','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,1),(21,'2015-02-10 16:12:54','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,1),(22,'2015-02-10 16:12:54','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,1),(23,'2015-02-10 16:12:54','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,1),(24,'2015-02-10 16:12:54','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,1),(25,'2015-02-10 16:12:54','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";}',1,1),(26,'2015-02-10 16:12:55','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,1),(27,'2015-02-10 16:12:55','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,1),(28,'2015-02-10 16:12:55','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,1),(29,'2015-02-10 16:12:55','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,1),(30,'2015-02-10 16:12:55','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";}',1,1),(31,'2015-02-10 16:12:55','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,1),(32,'2015-02-10 16:12:55','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,1),(33,'2015-02-10 16:12:55','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,1),(34,'2015-02-10 16:12:55','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,1),(35,'2015-02-10 16:12:55','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,1),(36,'2015-02-10 16:12:55','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";}',1,1),(37,'2015-02-10 16:12:56','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,1),(38,'2015-02-10 16:12:56','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,1),(39,'2015-02-10 16:12:56','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,1),(40,'2015-02-10 16:12:56','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,1),(41,'2015-02-10 16:12:56','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,1),(42,'2015-02-10 16:12:56','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";}',1,1),(43,'2015-02-10 16:12:57','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,1),(44,'2015-02-10 16:12:57','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,1),(45,'2015-02-10 16:12:57','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,1),(46,'2015-02-10 16:12:57','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,1),(47,'2015-02-10 16:12:57','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,1),(48,'2015-02-10 16:12:57','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";}',1,1),(49,'2015-02-10 16:12:57','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,1),(50,'2015-02-10 16:12:57','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,1),(51,'2015-02-10 16:12:57','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,1),(52,'2015-02-10 16:12:57','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,1),(53,'2015-02-10 16:12:57','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,1),(54,'2015-02-10 16:12:57','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";}',1,1),(55,'2015-02-10 16:12:58','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,1),(56,'2015-02-10 16:12:58','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,1),(57,'2015-02-10 16:12:58','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,1),(58,'2015-02-10 16:12:58','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,1),(59,'2015-02-10 16:12:58','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,1),(60,'2015-02-10 16:12:58','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";}',1,1),(61,'2015-02-10 16:12:58','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,1),(62,'2015-02-10 16:12:58','Project Created','s:21:\"Cogswell Cogs Project\";',1,2),(63,'2015-02-10 16:12:58','Project Created','s:21:\"Cogswell Cogs Project\";',1,2),(64,'2015-02-10 16:12:59','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,2),(65,'2015-02-10 16:12:59','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,2),(66,'2015-02-10 16:12:59','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,2),(67,'2015-02-10 16:12:59','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,2),(68,'2015-02-10 16:12:59','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";}',1,2),(69,'2015-02-10 16:12:59','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,2),(70,'2015-02-10 16:12:59','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,2),(71,'2015-02-10 16:12:59','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,2),(72,'2015-02-10 16:12:59','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,2),(73,'2015-02-10 16:12:59','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,2),(74,'2015-02-10 16:12:59','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";}',1,2),(75,'2015-02-10 16:13:00','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,2),(76,'2015-02-10 16:13:00','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,2),(77,'2015-02-10 16:13:00','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,2),(78,'2015-02-10 16:13:00','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,2),(79,'2015-02-10 16:13:00','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,2),(80,'2015-02-10 16:13:00','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";}',1,2),(81,'2015-02-10 16:13:00','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,2),(82,'2015-02-10 16:13:00','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,2),(83,'2015-02-10 16:13:00','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,2),(84,'2015-02-10 16:13:00','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,2),(85,'2015-02-10 16:13:00','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,2),(86,'2015-02-10 16:13:00','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";}',1,2),(87,'2015-02-10 16:13:01','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,2),(88,'2015-02-10 16:13:01','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,2),(89,'2015-02-10 16:13:01','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,2),(90,'2015-02-10 16:13:01','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,2),(91,'2015-02-10 16:13:01','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,2),(92,'2015-02-10 16:13:01','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";}',1,2),(93,'2015-02-10 16:13:01','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,2),(94,'2015-02-10 16:13:01','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,2),(95,'2015-02-10 16:13:01','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,2),(96,'2015-02-10 16:13:01','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,2),(97,'2015-02-10 16:13:01','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";}',1,2),(98,'2015-02-10 16:13:02','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,2),(99,'2015-02-10 16:13:02','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,2),(100,'2015-02-10 16:13:02','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,2),(101,'2015-02-10 16:13:02','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,2),(102,'2015-02-10 16:13:02','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,2),(103,'2015-02-10 16:13:02','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";}',1,2),(104,'2015-02-10 16:13:03','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,2),(105,'2015-02-10 16:13:03','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,2),(106,'2015-02-10 16:13:03','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,2),(107,'2015-02-10 16:13:03','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,2),(108,'2015-02-10 16:13:03','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,2),(109,'2015-02-10 16:13:03','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";}',1,2),(110,'2015-02-10 16:13:03','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,2),(111,'2015-02-10 16:13:03','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,2),(112,'2015-02-10 16:13:03','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,2),(113,'2015-02-10 16:13:03','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,2),(114,'2015-02-10 16:13:03','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,2),(115,'2015-02-10 16:13:03','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,2),(116,'2015-02-10 16:13:04','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";}',1,2),(117,'2015-02-10 16:13:04','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,2),(118,'2015-02-10 16:13:04','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,2),(119,'2015-02-10 16:13:04','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,2),(120,'2015-02-10 16:13:04','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,2),(121,'2015-02-10 16:13:04','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,2),(122,'2015-02-10 16:13:04','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";}',1,2),(123,'2015-02-10 16:13:04','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,2),(124,'2015-02-10 16:13:04','Project Created','s:15:\"Klimpys Project\";',1,3),(125,'2015-02-10 16:13:04','Project Created','s:15:\"Klimpys Project\";',1,3),(126,'2015-02-10 16:13:05','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,3),(127,'2015-02-10 16:13:05','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,3),(128,'2015-02-10 16:13:05','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,3),(129,'2015-02-10 16:13:05','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,3),(130,'2015-02-10 16:13:05','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";}',1,3),(131,'2015-02-10 16:13:05','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,3),(132,'2015-02-10 16:13:05','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,3),(133,'2015-02-10 16:13:05','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,3),(134,'2015-02-10 16:13:05','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,3),(135,'2015-02-10 16:13:05','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,3),(136,'2015-02-10 16:13:05','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";}',1,3),(137,'2015-02-10 16:13:06','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,3),(138,'2015-02-10 16:13:06','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,3),(139,'2015-02-10 16:13:06','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,3),(140,'2015-02-10 16:13:06','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,3),(141,'2015-02-10 16:13:06','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,3),(142,'2015-02-10 16:13:06','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";}',1,3),(143,'2015-02-10 16:13:06','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,3),(144,'2015-02-10 16:13:06','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,3),(145,'2015-02-10 16:13:06','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,3),(146,'2015-02-10 16:13:06','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,3),(147,'2015-02-10 16:13:06','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,3),(148,'2015-02-10 16:13:06','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,3),(149,'2015-02-10 16:13:06','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";}',1,3),(150,'2015-02-10 16:13:07','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,3),(151,'2015-02-10 16:13:07','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,3),(152,'2015-02-10 16:13:07','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,3),(153,'2015-02-10 16:13:07','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,3),(154,'2015-02-10 16:13:07','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,3),(155,'2015-02-10 16:13:07','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";}',1,3),(156,'2015-02-10 16:13:07','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,3),(157,'2015-02-10 16:13:07','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,3),(158,'2015-02-10 16:13:07','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,3),(159,'2015-02-10 16:13:07','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,3),(160,'2015-02-10 16:13:07','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,3),(161,'2015-02-10 16:13:08','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";}',1,3),(162,'2015-02-10 16:13:08','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,3),(163,'2015-02-10 16:13:08','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,3),(164,'2015-02-10 16:13:08','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,3),(165,'2015-02-10 16:13:08','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,3),(166,'2015-02-10 16:13:08','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,3),(167,'2015-02-10 16:13:08','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";}',1,3),(168,'2015-02-10 16:13:08','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,3),(169,'2015-02-10 16:13:08','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,3),(170,'2015-02-10 16:13:08','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,3),(171,'2015-02-10 16:13:08','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,3),(172,'2015-02-10 16:13:09','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";}',1,3),(173,'2015-02-10 16:13:09','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,3),(174,'2015-02-10 16:13:09','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,3),(175,'2015-02-10 16:13:09','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,3),(176,'2015-02-10 16:13:09','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,3),(177,'2015-02-10 16:13:09','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,3),(178,'2015-02-10 16:13:09','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,3),(179,'2015-02-10 16:13:09','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";}',1,3),(180,'2015-02-10 16:13:10','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,3),(181,'2015-02-10 16:13:10','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,3),(182,'2015-02-10 16:13:10','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,3),(183,'2015-02-10 16:13:10','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,3),(184,'2015-02-10 16:13:10','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,3),(185,'2015-02-10 16:13:10','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";}',1,3),(186,'2015-02-10 16:13:10','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,3),(187,'2015-02-10 16:13:10','Project Created','s:21:\"Fake Brothers Project\";',1,4),(188,'2015-02-10 16:13:10','Project Created','s:21:\"Fake Brothers Project\";',1,4),(189,'2015-02-10 16:13:10','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,4),(190,'2015-02-10 16:13:11','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,4),(191,'2015-02-10 16:13:11','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,4),(192,'2015-02-10 16:13:11','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,4),(193,'2015-02-10 16:13:11','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";}',1,4),(194,'2015-02-10 16:13:11','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,4),(195,'2015-02-10 16:13:11','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,4),(196,'2015-02-10 16:13:11','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,4),(197,'2015-02-10 16:13:11','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,4),(198,'2015-02-10 16:13:11','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,4),(199,'2015-02-10 16:13:11','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";}',1,4),(200,'2015-02-10 16:13:11','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,4),(201,'2015-02-10 16:13:12','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,4),(202,'2015-02-10 16:13:12','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,4),(203,'2015-02-10 16:13:12','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,4),(204,'2015-02-10 16:13:12','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,4),(205,'2015-02-10 16:13:12','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";}',1,4),(206,'2015-02-10 16:13:12','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,4),(207,'2015-02-10 16:13:12','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,4),(208,'2015-02-10 16:13:12','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,4),(209,'2015-02-10 16:13:12','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,4),(210,'2015-02-10 16:13:12','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,4),(211,'2015-02-10 16:13:12','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,4),(212,'2015-02-10 16:13:12','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";}',1,4),(213,'2015-02-10 16:13:12','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,4),(214,'2015-02-10 16:13:13','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,4),(215,'2015-02-10 16:13:13','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,4),(216,'2015-02-10 16:13:13','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,4),(217,'2015-02-10 16:13:13','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,4),(218,'2015-02-10 16:13:13','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";}',1,4),(219,'2015-02-10 16:13:13','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,4),(220,'2015-02-10 16:13:13','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,4),(221,'2015-02-10 16:13:13','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,4),(222,'2015-02-10 16:13:13','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,4),(223,'2015-02-10 16:13:13','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,4),(224,'2015-02-10 16:13:13','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";}',1,4),(225,'2015-02-10 16:13:14','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,4),(226,'2015-02-10 16:13:14','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,4),(227,'2015-02-10 16:13:14','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,4),(228,'2015-02-10 16:13:14','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,4),(229,'2015-02-10 16:13:14','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";}',1,4),(230,'2015-02-10 16:13:14','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,4),(231,'2015-02-10 16:13:14','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,4),(232,'2015-02-10 16:13:14','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,4),(233,'2015-02-10 16:13:14','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,4),(234,'2015-02-10 16:13:14','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,4),(235,'2015-02-10 16:13:15','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";}',1,4),(236,'2015-02-10 16:13:15','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,4),(237,'2015-02-10 16:13:15','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,4),(238,'2015-02-10 16:13:15','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,4),(239,'2015-02-10 16:13:15','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,4),(240,'2015-02-10 16:13:15','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,4),(241,'2015-02-10 16:13:15','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,4),(242,'2015-02-10 16:13:15','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";}',1,4),(243,'2015-02-10 16:13:15','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,4),(244,'2015-02-10 16:13:16','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,4),(245,'2015-02-10 16:13:16','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,4),(246,'2015-02-10 16:13:16','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,4),(247,'2015-02-10 16:13:16','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,4),(248,'2015-02-10 16:13:16','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";}',1,4),(249,'2015-02-10 16:13:16','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,4),(250,'2015-02-10 16:13:16','Project Created','s:27:\"Sto Plains Holdings Project\";',1,5),(251,'2015-02-10 16:13:16','Project Created','s:27:\"Sto Plains Holdings Project\";',1,5),(252,'2015-02-10 16:13:16','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,5),(253,'2015-02-10 16:13:16','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,5),(254,'2015-02-10 16:13:16','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,5),(255,'2015-02-10 16:13:16','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,5),(256,'2015-02-10 16:13:16','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";}',1,5),(257,'2015-02-10 16:13:17','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,5),(258,'2015-02-10 16:13:17','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,5),(259,'2015-02-10 16:13:17','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,5),(260,'2015-02-10 16:13:17','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,5),(261,'2015-02-10 16:13:17','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,5),(262,'2015-02-10 16:13:17','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";}',1,5),(263,'2015-02-10 16:13:17','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,5),(264,'2015-02-10 16:13:17','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,5),(265,'2015-02-10 16:13:17','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,5),(266,'2015-02-10 16:13:17','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,5),(267,'2015-02-10 16:13:17','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";}',1,5),(268,'2015-02-10 16:13:18','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,5),(269,'2015-02-10 16:13:18','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,5),(270,'2015-02-10 16:13:18','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,5),(271,'2015-02-10 16:13:18','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,5),(272,'2015-02-10 16:13:18','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,5),(273,'2015-02-10 16:13:18','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,5),(274,'2015-02-10 16:13:18','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";}',1,5),(275,'2015-02-10 16:13:18','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,5),(276,'2015-02-10 16:13:18','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,5),(277,'2015-02-10 16:13:18','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,5),(278,'2015-02-10 16:13:18','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,5),(279,'2015-02-10 16:13:19','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";}',1,5),(280,'2015-02-10 16:13:19','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,5),(281,'2015-02-10 16:13:19','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,5),(282,'2015-02-10 16:13:19','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,5),(283,'2015-02-10 16:13:19','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,5),(284,'2015-02-10 16:13:19','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,5),(285,'2015-02-10 16:13:19','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";}',1,5),(286,'2015-02-10 16:13:20','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,5),(287,'2015-02-10 16:13:20','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,5),(288,'2015-02-10 16:13:20','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,5),(289,'2015-02-10 16:13:20','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,5),(290,'2015-02-10 16:13:20','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";}',1,5),(291,'2015-02-10 16:13:20','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,5),(292,'2015-02-10 16:13:20','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,5),(293,'2015-02-10 16:13:20','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,5),(294,'2015-02-10 16:13:20','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,5),(295,'2015-02-10 16:13:20','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,5),(296,'2015-02-10 16:13:21','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";}',1,5),(297,'2015-02-10 16:13:21','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,5),(298,'2015-02-10 16:13:21','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,5),(299,'2015-02-10 16:13:21','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,5),(300,'2015-02-10 16:13:21','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,5),(301,'2015-02-10 16:13:21','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,5),(302,'2015-02-10 16:13:21','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";}',1,5),(303,'2015-02-10 16:13:21','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,5),(304,'2015-02-10 16:13:22','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,5),(305,'2015-02-10 16:13:22','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,5),(306,'2015-02-10 16:13:22','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,5),(307,'2015-02-10 16:13:22','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,5),(308,'2015-02-10 16:13:22','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";}',1,5),(309,'2015-02-10 16:13:22','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,5),(310,'2015-02-10 16:13:22','Project Created','s:28:\"Rouster and Sideways Project\";',1,6),(311,'2015-02-10 16:13:22','Project Created','s:28:\"Rouster and Sideways Project\";',1,6),(312,'2015-02-10 16:13:22','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,6),(313,'2015-02-10 16:13:22','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,6),(314,'2015-02-10 16:13:22','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,6),(315,'2015-02-10 16:13:22','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,6),(316,'2015-02-10 16:13:23','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v1\";}',1,6),(317,'2015-02-10 16:13:23','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:11:\"In Progress\";}',1,6),(318,'2015-02-10 16:13:23','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,6),(319,'2015-02-10 16:13:23','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,6),(320,'2015-02-10 16:13:23','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,6),(321,'2015-02-10 16:13:23','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,6),(322,'2015-02-10 16:13:23','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v1\";}',1,6),(323,'2015-02-10 16:13:23','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,6),(324,'2015-02-10 16:13:23','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,6),(325,'2015-02-10 16:13:23','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,6),(326,'2015-02-10 16:13:23','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,6),(327,'2015-02-10 16:13:23','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,6),(328,'2015-02-10 16:13:24','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v1\";}',1,6),(329,'2015-02-10 16:13:24','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,6),(330,'2015-02-10 16:13:24','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,6),(331,'2015-02-10 16:13:24','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,6),(332,'2015-02-10 16:13:24','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,6),(333,'2015-02-10 16:13:24','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,6),(334,'2015-02-10 16:13:24','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,6),(335,'2015-02-10 16:13:24','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v1\";}',1,6),(336,'2015-02-10 16:13:24','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:8:\"Rejected\";}',1,6),(337,'2015-02-10 16:13:25','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,6),(338,'2015-02-10 16:13:25','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,6),(339,'2015-02-10 16:13:25','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,6),(340,'2015-02-10 16:13:25','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,6),(341,'2015-02-10 16:13:25','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v1\";}',1,6),(342,'2015-02-10 16:13:25','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:19:\"Awaiting Acceptance\";}',1,6),(343,'2015-02-10 16:13:25','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:20:\"Get the requirements\";}',1,6),(344,'2015-02-10 16:13:25','Check List Item Added','a:2:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";s:19:\"{taskcheckitemname}\";s:24:\"Analysis of requirements\";}',1,6),(345,'2015-02-10 16:13:25','Comment Added','a:1:{s:9:\"{comment}\";s:27:\"Quite useful moving forward\";}',1,6),(346,'2015-02-10 16:13:25','Comment Added','a:1:{s:9:\"{comment}\";s:32:\"Would be helful for other people\";}',1,6),(347,'2015-02-10 16:13:25','Task Added','a:1:{s:10:\"{taskname}\";s:23:\"Create Demo Proposal v2\";}',1,6),(348,'2015-02-10 16:13:26','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,6),(349,'2015-02-10 16:13:26','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:17:\"Call the contacts\";}',1,6),(350,'2015-02-10 16:13:26','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,6),(351,'2015-02-10 16:13:26','Comment Added','a:1:{s:9:\"{comment}\";s:31:\"Very beneficial for the company\";}',1,6),(352,'2015-02-10 16:13:26','Comment Added','a:1:{s:9:\"{comment}\";s:26:\"Helpful for the sales team\";}',1,6),(353,'2015-02-10 16:13:26','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Come up with a contacts list for the client v2\";}',1,6),(354,'2015-02-10 16:13:26','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:55:\"Gather the list of employees with there contact details\";}',1,6),(355,'2015-02-10 16:13:26','Check List Item Added','a:2:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";s:19:\"{taskcheckitemname}\";s:25:\"Enter the data into excel\";}',1,6),(356,'2015-02-10 16:13:26','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Very helpful for the employees\";}',1,6),(357,'2015-02-10 16:13:26','Comment Added','a:1:{s:9:\"{comment}\";s:23:\"Can easily track people\";}',1,6),(358,'2015-02-10 16:13:26','Task Added','a:1:{s:10:\"{taskname}\";s:46:\"Prepare telephone directory for the company v2\";}',1,6),(359,'2015-02-10 16:13:27','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:32:\"Research the available softwares\";}',1,6),(360,'2015-02-10 16:13:27','Check List Item Added','a:2:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";s:19:\"{taskcheckitemname}\";s:21:\"Discuss with the team\";}',1,6),(361,'2015-02-10 16:13:27','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Helpful for finance department\";}',1,6),(362,'2015-02-10 16:13:27','Comment Added','a:1:{s:9:\"{comment}\";s:17:\"Reduced work load\";}',1,6),(363,'2015-02-10 16:13:27','Comment Added','a:1:{s:9:\"{comment}\";s:30:\"Less number of people required\";}',1,6),(364,'2015-02-10 16:13:27','Task Added','a:1:{s:10:\"{taskname}\";s:29:\"Get an accounting software v2\";}',1,6),(365,'2015-02-10 16:13:27','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,6),(366,'2015-02-10 16:13:27','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:17:\"Explore the usage\";}',1,6),(367,'2015-02-10 16:13:27','Check List Item Added','a:2:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";s:19:\"{taskcheckitemname}\";s:26:\"Implement into the website\";}',1,6),(368,'2015-02-10 16:13:27','Comment Added','a:1:{s:9:\"{comment}\";s:21:\"Aids in site analysis\";}',1,6),(369,'2015-02-10 16:13:27','Comment Added','a:1:{s:9:\"{comment}\";s:37:\"Would be helpful from SEO perspective\";}',1,6),(370,'2015-02-10 16:13:28','Task Added','a:1:{s:10:\"{taskname}\";s:47:\"Usage of google analytics on company website v2\";}',1,6),(371,'2015-02-10 16:13:28','Task Status Changed','a:2:{s:12:\"{fromstatus}\";s:3:\"New\";s:10:\"{tostatus}\";s:9:\"Completed\";}',1,6);
/*!40000 ALTER TABLE `projectauditevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  `role_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_eman` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Executive',23,NULL),(2,'Manager',24,1),(3,'Associate',25,2);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedcalendar`
--

DROP TABLE IF EXISTS `savedcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedcalendar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `moduleclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startattributename` text COLLATE utf8_unicode_ci,
  `endattributename` text COLLATE utf8_unicode_ci,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `timezone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedcalendar`
--

LOCK TABLES `savedcalendar` WRITE;
/*!40000 ALTER TABLE `savedcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedcalendar_read`
--

DROP TABLE IF EXISTS `savedcalendar_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedcalendar_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `savedcalendar_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedcalendar_read`
--

LOCK TABLES `savedcalendar_read` WRITE;
/*!40000 ALTER TABLE `savedcalendar_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedcalendar_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedcalendarsubscription`
--

DROP TABLE IF EXISTS `savedcalendarsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedcalendarsubscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_user_id` int(11) unsigned DEFAULT NULL,
  `savedcalendar_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedcalendarsubscription`
--

LOCK TABLES `savedcalendarsubscription` WRITE;
/*!40000 ALTER TABLE `savedcalendarsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedcalendarsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedreport`
--

DROP TABLE IF EXISTS `savedreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedreport` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `moduleclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedreport`
--

LOCK TABLES `savedreport` WRITE;
/*!40000 ALTER TABLE `savedreport` DISABLE KEYS */;
INSERT INTO `savedreport` VALUES (1,'A report showing new leads','ContactsModule','New Leads Report','a:8:{s:16:\"filtersStructure\";s:7:\"1 AND 2\";s:22:\"currencyConversionType\";i:2;s:26:\"spotConversionCurrencyCode\";N;s:7:\"Filters\";a:2:{i:0;a:8:{s:18:\"availableAtRunTime\";b:1;s:18:\"currencyIdForValue\";N;s:5:\"value\";N;s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";s:11:\"Last 7 Days\";s:27:\"attributeIndexOrDerivedType\";s:15:\"createdDateTime\";s:8:\"operator\";N;}i:1;a:8:{s:18:\"availableAtRunTime\";b:0;s:18:\"currencyIdForValue\";N;s:5:\"value\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";N;s:27:\"attributeIndexOrDerivedType\";s:5:\"state\";s:8:\"operator\";s:5:\"oneOf\";}}s:8:\"OrderBys\";a:0:{}s:8:\"GroupBys\";a:0:{}s:17:\"DisplayAttributes\";a:4:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:8:\"FullName\";s:5:\"label\";s:9:\"Full Name\";s:15:\"columnAliasName\";s:4:\"col0\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:1;a:6:{s:27:\"attributeIndexOrDerivedType\";s:6:\"source\";s:5:\"label\";s:6:\"Source\";s:15:\"columnAliasName\";s:4:\"col1\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:2;a:6:{s:27:\"attributeIndexOrDerivedType\";s:11:\"officePhone\";s:5:\"label\";s:12:\"Office Phone\";s:15:\"columnAliasName\";s:4:\"col2\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:3;a:6:{s:27:\"attributeIndexOrDerivedType\";s:27:\"primaryEmail___emailAddress\";s:5:\"label\";s:30:\"Primary Email >> Email Address\";s:15:\"columnAliasName\";s:4:\"col3\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:26:\"DrillDownDisplayAttributes\";a:0:{}}','RowsAndColumns',178),(2,'A report showing active customers who have not opted out of receiving emails','ContactsModule','Active Customer Email List','a:8:{s:16:\"filtersStructure\";s:13:\"1 AND 2 AND 3\";s:22:\"currencyConversionType\";i:2;s:26:\"spotConversionCurrencyCode\";N;s:7:\"Filters\";a:3:{i:0;a:8:{s:18:\"availableAtRunTime\";b:0;s:18:\"currencyIdForValue\";N;s:5:\"value\";s:8:\"Customer\";s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";N;s:27:\"attributeIndexOrDerivedType\";s:14:\"account___type\";s:8:\"operator\";s:6:\"equals\";}i:1;a:8:{s:18:\"availableAtRunTime\";b:0;s:18:\"currencyIdForValue\";N;s:5:\"value\";a:2:{i:0;i:5;i:1;i:6;}s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";N;s:27:\"attributeIndexOrDerivedType\";s:5:\"state\";s:8:\"operator\";s:5:\"oneOf\";}i:2;a:8:{s:18:\"availableAtRunTime\";b:0;s:18:\"currencyIdForValue\";N;s:5:\"value\";b:0;s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";N;s:27:\"attributeIndexOrDerivedType\";s:21:\"primaryEmail___optOut\";s:8:\"operator\";s:6:\"equals\";}}s:8:\"OrderBys\";a:0:{}s:8:\"GroupBys\";a:0:{}s:17:\"DisplayAttributes\";a:3:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:8:\"FullName\";s:5:\"label\";s:9:\"Full Name\";s:15:\"columnAliasName\";s:4:\"col4\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:1;a:6:{s:27:\"attributeIndexOrDerivedType\";s:14:\"account___name\";s:5:\"label\";s:12:\"Account Name\";s:15:\"columnAliasName\";s:4:\"col5\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:2;a:6:{s:27:\"attributeIndexOrDerivedType\";s:27:\"primaryEmail___emailAddress\";s:5:\"label\";s:30:\"Primary Email >> Email Address\";s:15:\"columnAliasName\";s:4:\"col6\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:26:\"DrillDownDisplayAttributes\";a:0:{}}','RowsAndColumns',179),(3,'A report showing closed won opportunties by owner','OpportunitiesModule','Opportunities By Owner','a:9:{s:16:\"filtersStructure\";s:1:\"1\";s:22:\"currencyConversionType\";i:2;s:26:\"spotConversionCurrencyCode\";N;s:7:\"Filters\";a:1:{i:0;a:8:{s:18:\"availableAtRunTime\";b:0;s:18:\"currencyIdForValue\";N;s:5:\"value\";s:10:\"Closed Won\";s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";N;s:27:\"attributeIndexOrDerivedType\";s:5:\"stage\";s:8:\"operator\";s:6:\"equals\";}}s:8:\"OrderBys\";a:0:{}s:8:\"GroupBys\";a:1:{i:0;a:2:{s:4:\"axis\";s:1:\"x\";s:27:\"attributeIndexOrDerivedType\";s:11:\"owner__User\";}}s:17:\"DisplayAttributes\";a:3:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:11:\"owner__User\";s:5:\"label\";s:5:\"Owner\";s:15:\"columnAliasName\";s:4:\"col7\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:1;a:6:{s:27:\"attributeIndexOrDerivedType\";s:5:\"Count\";s:5:\"label\";s:5:\"Count\";s:15:\"columnAliasName\";s:4:\"col8\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:2;a:6:{s:27:\"attributeIndexOrDerivedType\";s:17:\"amount__Summation\";s:5:\"label\";s:13:\"Amount -(Sum)\";s:15:\"columnAliasName\";s:4:\"col9\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:26:\"DrillDownDisplayAttributes\";a:4:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:4:\"name\";s:5:\"label\";s:4:\"Name\";s:15:\"columnAliasName\";s:4:\"col0\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:1;a:6:{s:27:\"attributeIndexOrDerivedType\";s:14:\"account___name\";s:5:\"label\";s:12:\"Account Name\";s:15:\"columnAliasName\";s:4:\"col1\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:2;a:6:{s:27:\"attributeIndexOrDerivedType\";s:6:\"amount\";s:5:\"label\";s:6:\"Amount\";s:15:\"columnAliasName\";s:4:\"col2\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:3;a:6:{s:27:\"attributeIndexOrDerivedType\";s:9:\"closeDate\";s:5:\"label\";s:10:\"Close Date\";s:15:\"columnAliasName\";s:4:\"col3\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:5:\"chart\";a:5:{s:4:\"type\";s:5:\"Pie2D\";s:11:\"firstSeries\";s:11:\"owner__User\";s:10:\"firstRange\";s:17:\"amount__Summation\";s:12:\"secondSeries\";N;s:11:\"secondRange\";N;}}','Summation',180),(4,'A report showing closed won opportunities by month','OpportunitiesModule','Closed won opportunities by month','a:9:{s:16:\"filtersStructure\";s:1:\"1\";s:22:\"currencyConversionType\";i:2;s:26:\"spotConversionCurrencyCode\";N;s:7:\"Filters\";a:1:{i:0;a:8:{s:18:\"availableAtRunTime\";b:0;s:18:\"currencyIdForValue\";N;s:5:\"value\";s:10:\"Closed Won\";s:11:\"secondValue\";N;s:24:\"stringifiedModelForValue\";N;s:9:\"valueType\";N;s:27:\"attributeIndexOrDerivedType\";s:5:\"stage\";s:8:\"operator\";s:6:\"equals\";}}s:8:\"OrderBys\";a:0:{}s:8:\"GroupBys\";a:1:{i:0;a:2:{s:4:\"axis\";s:1:\"x\";s:27:\"attributeIndexOrDerivedType\";s:16:\"closeDate__Month\";}}s:17:\"DisplayAttributes\";a:3:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:16:\"closeDate__Month\";s:5:\"label\";s:19:\"Close Date -(Month)\";s:15:\"columnAliasName\";s:5:\"col10\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:1;a:6:{s:27:\"attributeIndexOrDerivedType\";s:5:\"Count\";s:5:\"label\";s:5:\"Count\";s:15:\"columnAliasName\";s:5:\"col11\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:2;a:6:{s:27:\"attributeIndexOrDerivedType\";s:17:\"amount__Summation\";s:5:\"label\";s:13:\"Amount -(Sum)\";s:15:\"columnAliasName\";s:5:\"col12\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:26:\"DrillDownDisplayAttributes\";a:0:{}s:5:\"chart\";a:5:{s:4:\"type\";s:5:\"Bar2D\";s:11:\"firstSeries\";s:16:\"closeDate__Month\";s:10:\"firstRange\";s:17:\"amount__Summation\";s:12:\"secondSeries\";N;s:11:\"secondRange\";N;}}','Summation',181),(5,NULL,'OpportunitiesModule','Opportunities by Stage','a:9:{s:16:\"filtersStructure\";s:0:\"\";s:22:\"currencyConversionType\";i:2;s:26:\"spotConversionCurrencyCode\";N;s:7:\"Filters\";a:0:{}s:8:\"OrderBys\";a:0:{}s:8:\"GroupBys\";a:1:{i:0;a:2:{s:4:\"axis\";s:1:\"x\";s:27:\"attributeIndexOrDerivedType\";s:5:\"stage\";}}s:17:\"DisplayAttributes\";a:3:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:5:\"stage\";s:5:\"label\";s:5:\"Stage\";s:15:\"columnAliasName\";s:5:\"col13\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:1;a:6:{s:27:\"attributeIndexOrDerivedType\";s:5:\"Count\";s:5:\"label\";s:5:\"Count\";s:15:\"columnAliasName\";s:5:\"col14\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}i:2;a:6:{s:27:\"attributeIndexOrDerivedType\";s:17:\"amount__Summation\";s:5:\"label\";s:13:\"Amount -(Sum)\";s:15:\"columnAliasName\";s:5:\"col15\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:26:\"DrillDownDisplayAttributes\";a:0:{}s:5:\"chart\";a:5:{s:4:\"type\";s:8:\"Column2D\";s:11:\"firstSeries\";s:5:\"stage\";s:10:\"firstRange\";s:17:\"amount__Summation\";s:12:\"secondSeries\";N;s:11:\"secondRange\";N;}}','Summation',182),(6,NULL,'MeetingsModule','Meettings Category And Month Start Time By Owner','a:8:{s:16:\"filtersStructure\";s:0:\"\";s:22:\"currencyConversionType\";i:2;s:26:\"spotConversionCurrencyCode\";N;s:7:\"Filters\";a:0:{}s:8:\"OrderBys\";a:0:{}s:8:\"GroupBys\";a:3:{i:0;a:2:{s:4:\"axis\";s:1:\"x\";s:27:\"attributeIndexOrDerivedType\";s:20:\"startDateTime__Month\";}i:1;a:2:{s:4:\"axis\";s:1:\"x\";s:27:\"attributeIndexOrDerivedType\";s:8:\"category\";}i:2;a:2:{s:4:\"axis\";s:1:\"y\";s:27:\"attributeIndexOrDerivedType\";s:11:\"owner__User\";}}s:17:\"DisplayAttributes\";a:1:{i:0;a:6:{s:27:\"attributeIndexOrDerivedType\";s:5:\"Count\";s:5:\"label\";s:5:\"Count\";s:15:\"columnAliasName\";s:5:\"col16\";s:9:\"queryOnly\";b:0;s:26:\"valueUsedAsDrillDownFilter\";b:0;s:30:\"madeViaSelectInsteadOfViaModel\";b:0;}}s:26:\"DrillDownDisplayAttributes\";a:0:{}}','Matrix',183);
/*!40000 ALTER TABLE `savedreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedreport_read`
--

DROP TABLE IF EXISTS `savedreport_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedreport_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `savedreport_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedreport_read`
--

LOCK TABLES `savedreport_read` WRITE;
/*!40000 ALTER TABLE `savedreport_read` DISABLE KEYS */;
INSERT INTO `savedreport_read` VALUES (1,178,'G2',1),(2,179,'G2',1),(3,180,'G2',1),(4,181,'G2',1),(5,182,'G2',1),(6,183,'G2',1);
/*!40000 ALTER TABLE `savedreport_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedsearch`
--

DROP TABLE IF EXISTS `savedsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedsearch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `viewclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedsearch`
--

LOCK TABLES `savedsearch` WRITE;
/*!40000 ALTER TABLE `savedsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savedworkflow`
--

DROP TABLE IF EXISTS `savedworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `savedworkflow` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `isactive` tinyint(1) unsigned DEFAULT NULL,
  `moduleclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `triggeron` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savedworkflow`
--

LOCK TABLES `savedworkflow` WRITE;
/*!40000 ALTER TABLE `savedworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `savedworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securableitem`
--

DROP TABLE IF EXISTS `securableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securableitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securableitem`
--

LOCK TABLES `securableitem` WRITE;
/*!40000 ALTER TABLE `securableitem` DISABLE KEYS */;
INSERT INTO `securableitem` VALUES (1,7),(2,9),(3,10),(4,11),(5,12),(6,13),(7,34),(8,35),(9,36),(10,37),(11,38),(12,39),(13,40),(14,41),(15,42),(16,43),(17,44),(18,45),(19,46),(20,47),(21,48),(22,49),(23,50),(24,51),(25,52),(26,53),(27,54),(28,55),(29,56),(30,96),(31,97),(32,98),(33,99),(34,100),(35,101),(36,102),(37,103),(38,104),(39,105),(40,106),(41,107),(42,108),(43,109),(44,110),(45,111),(46,112),(47,113),(48,117),(49,119),(50,123),(51,128),(52,131),(53,133),(54,138),(55,143),(56,147),(57,150),(58,169),(59,170),(60,171),(61,172),(62,173),(63,174),(64,175),(65,176),(66,177),(67,178),(68,179),(69,180),(70,181),(71,182),(72,183),(73,184),(74,185),(75,186),(76,187),(77,193),(78,198),(79,206),(80,212),(81,214),(82,220),(83,224),(84,227),(85,232),(86,233),(87,234),(88,235),(89,236),(90,237),(91,238),(92,239),(93,240),(94,241),(95,242),(96,323),(97,324),(98,325),(99,326),(100,327),(101,328),(102,329),(103,330),(104,331),(105,332),(106,333),(107,334),(108,335),(109,336),(110,337),(111,338),(112,339),(113,340),(114,341),(115,342),(116,343),(117,344),(118,345),(119,346),(120,347),(121,348),(122,349),(123,350),(124,351),(125,352),(126,353),(127,354),(128,355),(129,356),(130,357),(131,358),(132,359),(133,360),(134,361),(135,362),(136,363),(137,364),(138,365),(139,366),(140,367),(141,368),(142,369),(143,370),(144,371),(145,372),(146,373),(147,374),(148,375),(149,376),(150,377),(151,378),(152,379),(153,380),(154,381),(155,382),(156,383),(157,387),(158,390),(159,393),(160,396),(161,397),(162,398),(163,399),(164,400),(165,401),(166,402),(167,403),(168,404),(169,405),(170,406),(171,407),(172,408),(173,409),(174,410),(175,411),(176,412),(177,413),(178,414),(179,415),(180,416),(181,417),(182,418),(183,419),(184,459),(185,460),(186,461),(187,462),(188,463),(189,464),(190,465),(191,466),(192,467),(193,468),(194,469),(195,470),(196,471),(197,472),(198,473),(199,474),(200,475),(201,476),(202,477),(203,478),(204,479),(205,480),(206,481),(207,482),(208,483),(209,484),(210,485),(211,486),(212,487),(213,488),(214,489),(215,490),(216,491),(217,492),(218,493),(219,494),(220,495),(221,496),(222,497),(223,498),(224,499),(225,500),(226,501),(227,502),(228,503),(229,504),(230,505),(231,506),(232,507),(233,508),(234,509),(235,510),(236,511),(237,512),(238,513),(239,514),(240,515),(241,516),(242,517),(243,518),(244,519),(245,523),(246,524),(247,525),(248,529),(249,530),(250,531),(251,532),(252,535),(253,536),(254,537),(255,541),(256,546),(257,547),(258,551),(259,552),(260,553),(261,554),(262,555),(263,556),(264,557),(265,558),(266,559),(267,560),(268,561),(269,562),(270,563),(271,564),(272,565),(273,566),(274,567),(275,568),(276,569),(277,570),(278,571),(279,572),(280,573),(281,574),(282,575),(283,576),(284,577),(285,578),(286,579),(287,581),(288,584),(289,586),(290,588),(291,589),(292,593),(293,597),(294,601),(295,606),(296,610),(297,614),(298,618),(299,622),(300,627),(301,631),(302,632),(303,636),(304,640),(305,644),(306,649),(307,653),(308,657),(309,661),(310,665),(311,670),(312,674),(313,675),(314,679),(315,683),(316,687),(317,692),(318,696),(319,700),(320,704),(321,708),(322,713),(323,717),(324,718),(325,722),(326,726),(327,730),(328,735),(329,739),(330,743),(331,747),(332,751),(333,756),(334,760),(335,761),(336,765),(337,769),(338,773),(339,778),(340,782),(341,786),(342,790),(343,794),(344,799),(345,803),(346,804),(347,808),(348,812),(349,816),(350,821),(351,825),(352,829),(353,833),(354,837),(355,842);
/*!40000 ALTER TABLE `securableitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellpriceformula`
--

DROP TABLE IF EXISTS `sellpriceformula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellpriceformula` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `discountormarkuppercentage` double DEFAULT NULL,
  `producttemplate_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellpriceformula`
--

LOCK TABLES `sellpriceformula` WRITE;
/*!40000 ALTER TABLE `sellpriceformula` DISABLE KEYS */;
INSERT INTO `sellpriceformula` VALUES (1,1,NULL,NULL),(2,1,NULL,NULL),(3,1,NULL,NULL),(4,1,NULL,NULL),(5,1,NULL,NULL),(6,1,NULL,NULL),(7,1,NULL,NULL),(8,1,NULL,NULL),(9,1,NULL,NULL),(10,1,NULL,NULL),(11,1,NULL,NULL),(12,1,NULL,NULL),(13,1,NULL,NULL),(14,1,NULL,NULL),(15,1,NULL,NULL),(16,1,NULL,NULL),(17,1,NULL,NULL),(18,1,NULL,NULL),(19,1,NULL,NULL),(20,1,NULL,NULL),(21,1,NULL,NULL),(22,1,NULL,NULL),(23,1,NULL,NULL),(24,1,NULL,NULL),(25,1,NULL,NULL),(26,1,NULL,NULL),(27,1,NULL,NULL),(28,1,NULL,NULL),(29,1,NULL,NULL),(30,1,NULL,NULL),(31,1,NULL,NULL),(32,1,NULL,NULL);
/*!40000 ALTER TABLE `sellpriceformula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shorturl`
--

DROP TABLE IF EXISTS `shorturl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shorturl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `createddatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shorturl`
--

LOCK TABLES `shorturl` WRITE;
/*!40000 ALTER TABLE `shorturl` DISABLE KEYS */;
/*!40000 ALTER TABLE `shorturl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialitem`
--

DROP TABLE IF EXISTS `socialitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `latestdatetime` datetime DEFAULT NULL,
  `ownedsecurableitem_id` int(11) unsigned DEFAULT NULL,
  `note_id` int(11) unsigned DEFAULT NULL,
  `touser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialitem`
--

LOCK TABLES `socialitem` WRITE;
/*!40000 ALTER TABLE `socialitem` DISABLE KEYS */;
INSERT INTO `socialitem` VALUES (1,NULL,'2015-02-10 16:12:48',244,19,NULL),(2,'Game on! I reached level 5','2015-02-10 16:12:49',245,NULL,NULL),(3,'Game on! I reached level 4','2015-02-10 16:12:49',246,NULL,NULL),(4,'Where should we have the Christmas party?','2015-02-10 16:12:49',247,NULL,NULL),(5,'Game on! I received a new badge: 15 accounts created','2015-02-10 16:12:49',248,NULL,NULL),(6,'Ask Barry why we can\'t use our cell phones in the conference room','2015-02-10 16:12:49',249,NULL,NULL),(7,'Game on! I received a new badge: Logged in 5 times at night','2015-02-10 16:12:49',250,NULL,NULL),(8,'I love fridays!','2015-02-10 16:12:49',251,NULL,NULL),(9,'Game on! I reached level 3','2015-02-10 16:12:49',252,NULL,NULL),(10,NULL,'2015-02-10 16:12:49',254,20,NULL),(11,'Golf time','2015-02-10 16:12:49',255,NULL,NULL),(12,NULL,'2015-02-10 16:12:49',257,21,NULL),(13,'Anyone interested in going to San Diego for the trade show?','2015-02-10 16:12:49',258,NULL,NULL),(14,'Just stubbed my toe. Ouch!','2015-02-10 16:12:49',259,NULL,NULL),(15,'Game on! I reached level 2','2015-02-10 16:12:49',260,NULL,NULL),(16,'Game on! I received a new badge: For being awesome','2015-02-10 16:12:49',261,NULL,NULL),(17,'Game on! I received a new badge: 5 opportunities searched','2015-02-10 16:12:49',262,NULL,NULL);
/*!40000 ALTER TABLE `socialitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialitem_read`
--

DROP TABLE IF EXISTS `socialitem_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialitem_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `socialitem_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialitem_read`
--

LOCK TABLES `socialitem_read` WRITE;
/*!40000 ALTER TABLE `socialitem_read` DISABLE KEYS */;
INSERT INTO `socialitem_read` VALUES (1,245,'R1',1),(2,246,'R1',1),(3,247,'R1',1),(4,248,'R1',1),(5,249,'R1',1),(6,250,'R1',1),(7,251,'R1',1),(8,252,'R1',1),(9,254,'R1',1),(10,255,'R1',1),(11,257,'R1',1),(12,259,'R1',1),(13,260,'R1',1),(14,261,'R1',1),(15,262,'R1',1);
/*!40000 ALTER TABLE `socialitem_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stuckjob`
--

DROP TABLE IF EXISTS `stuckjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stuckjob` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stuckjob`
--

LOCK TABLES `stuckjob` WRITE;
/*!40000 ALTER TABLE `stuckjob` DISABLE KEYS */;
/*!40000 ALTER TABLE `stuckjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `completeddatetime` datetime DEFAULT NULL,
  `completed` tinyint(1) unsigned DEFAULT NULL,
  `duedatetime` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `activity_id` int(11) unsigned DEFAULT NULL,
  `requestedbyuser__user_id` int(11) unsigned DEFAULT NULL,
  `project_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,NULL,0,'2015-02-22 16:12:49',NULL,'Send follow up email',1,58,1,NULL),(2,NULL,0,'2015-03-10 16:12:50',NULL,'Document changes to proposal',1,59,1,NULL),(3,NULL,0,'2015-06-29 16:12:50',NULL,'Build prototype',1,60,1,NULL),(4,NULL,0,'2015-07-17 16:12:50',NULL,'Make courtesy call',2,61,1,NULL),(5,NULL,0,'2015-04-21 16:12:50',NULL,'Review contract with legal',1,62,1,NULL),(6,'2015-01-25 16:16:50',1,'2015-01-25 16:12:50',NULL,'Document changes to proposal',5,63,1,NULL),(7,NULL,0,'2015-02-20 16:12:50',NULL,'Make courtesy call',1,64,1,NULL),(8,NULL,0,'2015-03-06 16:12:50',NULL,'Follow up with renewal',1,65,1,NULL),(9,NULL,0,'2015-05-18 16:12:50',NULL,'Research position changes',1,66,1,NULL),(10,NULL,0,'2015-05-04 16:12:51',NULL,'Research position changes',2,67,1,NULL),(11,NULL,0,'2015-06-27 16:12:51',NULL,'Send follow up email',1,68,1,NULL),(12,NULL,0,'2015-04-02 16:12:51',NULL,'Review contract with legal',1,69,1,NULL),(13,NULL,0,'2015-05-13 16:12:51',NULL,'Send product catalog',1,70,1,NULL),(14,NULL,0,'2015-05-29 16:12:51',NULL,'Review contract with legal',1,71,1,NULL),(15,NULL,0,'2015-03-06 16:12:51',NULL,'Research position changes',1,72,1,NULL),(16,NULL,0,'2015-05-05 16:12:51',NULL,'Send follow up email',2,73,1,NULL),(17,NULL,0,'2015-04-17 16:12:51',NULL,'Follow up with renewal',1,74,1,NULL),(18,NULL,0,'2015-07-03 16:12:51',NULL,'Review contract with legal',1,75,1,NULL),(19,'0000-00-00 00:00:00',1,NULL,NULL,'Create Demo Proposal v1',5,76,10,1),(20,'0000-00-00 00:00:00',1,NULL,NULL,'Come up with a contacts list for the client v1',5,77,10,1),(21,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v1',1,78,5,1),(22,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v1',1,79,3,1),(23,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v1',4,80,9,1),(24,'0000-00-00 00:00:00',1,NULL,NULL,'Create Demo Proposal v2',5,81,10,1),(25,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v2',3,82,5,1),(26,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v2',1,83,9,1),(27,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v2',4,84,5,1),(28,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v2',4,85,6,1),(29,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v1',2,86,3,2),(30,'0000-00-00 00:00:00',1,NULL,NULL,'Come up with a contacts list for the client v1',5,87,5,2),(31,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v1',1,88,4,2),(32,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v1',3,89,4,2),(33,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v1',1,90,10,2),(34,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v2',3,91,9,2),(35,'0000-00-00 00:00:00',1,NULL,NULL,'Come up with a contacts list for the client v2',5,92,4,2),(36,'0000-00-00 00:00:00',1,NULL,NULL,'Prepare telephone directory for the company v2',5,93,8,2),(37,'0000-00-00 00:00:00',1,NULL,NULL,'Get an accounting software v2',5,94,3,2),(38,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v2',4,95,6,2),(39,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v1',2,96,9,3),(40,'0000-00-00 00:00:00',1,NULL,NULL,'Come up with a contacts list for the client v1',5,97,10,3),(41,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v1',2,98,4,3),(42,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v1',3,99,3,3),(43,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v1',2,100,9,3),(44,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v2',3,101,4,3),(45,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v2',1,102,10,3),(46,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v2',3,103,5,3),(47,'0000-00-00 00:00:00',1,NULL,NULL,'Get an accounting software v2',5,104,9,3),(48,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v2',3,105,6,3),(49,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v1',4,106,7,4),(50,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v1',2,107,9,4),(51,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v1',3,108,3,4),(52,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v1',4,109,3,4),(53,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v1',4,110,6,4),(54,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v2',1,111,10,4),(55,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v2',3,112,3,4),(56,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v2',2,113,10,4),(57,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v2',3,114,10,4),(58,'0000-00-00 00:00:00',1,NULL,NULL,'Usage of google analytics on company website v2',5,115,6,4),(59,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v1',2,116,7,5),(60,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v1',1,117,8,5),(61,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v1',3,118,5,5),(62,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v1',1,119,9,5),(63,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v1',4,120,10,5),(64,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v2',1,121,9,5),(65,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v2',2,122,9,5),(66,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v2',1,123,5,5),(67,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v2',2,124,4,5),(68,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v2',4,125,9,5),(69,'0000-00-00 00:00:00',0,NULL,NULL,'Create Demo Proposal v1',2,126,10,6),(70,'0000-00-00 00:00:00',1,NULL,NULL,'Come up with a contacts list for the client v1',5,127,9,6),(71,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v1',4,128,5,6),(72,'0000-00-00 00:00:00',0,NULL,NULL,'Get an accounting software v1',4,129,6,6),(73,'0000-00-00 00:00:00',0,NULL,NULL,'Usage of google analytics on company website v1',3,130,9,6),(74,'0000-00-00 00:00:00',1,NULL,NULL,'Create Demo Proposal v2',5,131,10,6),(75,'0000-00-00 00:00:00',0,NULL,NULL,'Come up with a contacts list for the client v2',1,132,5,6),(76,'0000-00-00 00:00:00',0,NULL,NULL,'Prepare telephone directory for the company v2',1,133,6,6),(77,'0000-00-00 00:00:00',1,NULL,NULL,'Get an accounting software v2',5,134,4,6),(78,'0000-00-00 00:00:00',1,NULL,NULL,'Usage of google analytics on company website v2',5,135,6,6);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_read`
--

DROP TABLE IF EXISTS `task_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_read` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `securableitem_id` int(11) unsigned NOT NULL,
  `munge_id` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `securableitem_id_munge_id` (`securableitem_id`,`munge_id`),
  KEY `task_read_securableitem_id` (`securableitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_read`
--

LOCK TABLES `task_read` WRITE;
/*!40000 ALTER TABLE `task_read` DISABLE KEYS */;
INSERT INTO `task_read` VALUES (1,263,'R1',1),(2,264,'R1',1),(3,265,'R1',1),(4,266,'R1',1),(5,267,'R1',1),(6,268,'R1',1),(7,269,'R1',1),(8,270,'R1',1),(9,271,'R1',1),(10,272,'R1',1),(11,273,'R1',1),(12,274,'R1',1),(13,275,'R1',1),(14,276,'R1',1),(15,277,'R1',1),(16,278,'R1',1),(17,279,'R1',1),(18,280,'R1',1),(19,291,'R1',1),(20,291,'G2',1),(21,292,'R1',1),(22,292,'G2',1),(23,293,'R1',1),(24,293,'G2',1),(25,294,'R1',1),(26,294,'G2',1),(27,295,'R1',1),(28,295,'G2',1),(29,296,'R1',1),(30,296,'G2',1),(31,297,'R1',1),(32,297,'G2',1),(33,298,'R1',1),(34,298,'G2',1),(35,299,'R1',1),(36,299,'G2',1),(37,300,'R1',1),(38,300,'G2',1),(39,302,'R1',1),(40,302,'G2',1),(41,303,'R1',1),(42,303,'G2',1),(43,304,'R1',1),(44,304,'G2',1),(45,305,'R1',1),(46,305,'G2',1),(47,306,'R1',1),(48,306,'G2',1),(49,307,'R1',1),(50,307,'G2',1),(51,308,'R1',1),(52,308,'G2',1),(53,309,'G2',1),(54,310,'R1',1),(55,310,'G2',1),(56,311,'R1',1),(57,311,'G2',1),(58,313,'R1',1),(59,313,'G2',1),(60,314,'R1',1),(61,314,'G2',1),(62,315,'R1',1),(63,315,'G2',1),(64,316,'R1',1),(65,316,'G2',1),(66,317,'R1',1),(67,317,'G2',1),(68,318,'R1',1),(69,318,'G2',1),(70,319,'R1',1),(71,319,'G2',1),(72,320,'R1',1),(73,320,'G2',1),(74,321,'R1',1),(75,321,'G2',1),(76,322,'G2',1),(77,324,'G2',1),(78,325,'R1',1),(79,325,'G2',1),(80,326,'R1',1),(81,326,'G2',1),(82,327,'G2',1),(83,328,'R1',1),(84,328,'G2',1),(85,329,'R1',1),(86,329,'G2',1),(87,330,'R1',1),(88,330,'G2',1),(89,331,'R1',1),(90,331,'G2',1),(91,332,'G2',1),(92,333,'R1',1),(93,333,'G2',1),(94,335,'R1',1),(95,335,'G2',1),(96,336,'R1',1),(97,336,'G2',1),(98,337,'R1',1),(99,337,'G2',1),(100,338,'R1',1),(101,338,'G2',1),(102,339,'R1',1),(103,339,'G2',1),(104,340,'R1',1),(105,340,'G2',1),(106,341,'G2',1),(107,342,'R1',1),(108,342,'G2',1),(109,343,'R1',1),(110,343,'G2',1),(111,344,'R1',1),(112,344,'G2',1),(113,346,'R1',1),(114,346,'G2',1),(115,347,'R1',1),(116,347,'G2',1),(117,348,'R1',1),(118,348,'G2',1),(119,349,'R1',1),(120,349,'G2',1),(121,350,'R1',1),(122,350,'G2',1),(123,351,'R1',1),(124,351,'G2',1),(125,352,'R1',1),(126,352,'G2',1),(127,353,'R1',1),(128,353,'G2',1),(129,354,'R1',1),(130,354,'G2',1),(131,355,'R1',1),(132,355,'G2',1);
/*!40000 ALTER TABLE `task_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_read_subscription`
--

DROP TABLE IF EXISTS `task_read_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_read_subscription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `modelid` int(11) unsigned NOT NULL,
  `modifieddatetime` datetime DEFAULT NULL,
  `subscriptiontype` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_modelid` (`userid`,`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_read_subscription`
--

LOCK TABLES `task_read_subscription` WRITE;
/*!40000 ALTER TABLE `task_read_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_read_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taskchecklistitem`
--

DROP TABLE IF EXISTS `taskchecklistitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taskchecklistitem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `sortorder` int(11) DEFAULT NULL,
  `completed` tinyint(1) unsigned DEFAULT NULL,
  `task_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taskchecklistitem`
--

LOCK TABLES `taskchecklistitem` WRITE;
/*!40000 ALTER TABLE `taskchecklistitem` DISABLE KEYS */;
INSERT INTO `taskchecklistitem` VALUES (1,'Get the requirements',NULL,1,19),(2,'Analysis of requirements',NULL,1,19),(3,'Call the contacts',NULL,1,20),(4,'Enter the data into excel',NULL,1,20),(5,'Gather the list of employees with there contact details',NULL,1,21),(6,'Enter the data into excel',NULL,1,21),(7,'Research the available softwares',NULL,1,22),(8,'Discuss with the team',NULL,1,22),(9,'Explore the usage',NULL,1,23),(10,'Implement into the website',NULL,NULL,23),(11,'Get the requirements',NULL,1,24),(12,'Analysis of requirements',NULL,1,24),(13,'Call the contacts',NULL,1,25),(14,'Enter the data into excel',NULL,1,25),(15,'Gather the list of employees with there contact details',NULL,1,26),(16,'Enter the data into excel',NULL,NULL,26),(17,'Research the available softwares',NULL,1,27),(18,'Discuss with the team',NULL,NULL,27),(19,'Explore the usage',NULL,1,28),(20,'Implement into the website',NULL,1,28),(21,'Get the requirements',NULL,1,29),(22,'Analysis of requirements',NULL,1,29),(23,'Call the contacts',NULL,1,30),(24,'Enter the data into excel',NULL,NULL,30),(25,'Gather the list of employees with there contact details',NULL,1,31),(26,'Enter the data into excel',NULL,NULL,31),(27,'Research the available softwares',NULL,1,32),(28,'Discuss with the team',NULL,1,32),(29,'Explore the usage',NULL,1,33),(30,'Implement into the website',NULL,NULL,33),(31,'Get the requirements',NULL,1,34),(32,'Analysis of requirements',NULL,1,34),(33,'Call the contacts',NULL,1,35),(34,'Enter the data into excel',NULL,1,35),(35,'Gather the list of employees with there contact details',NULL,1,36),(36,'Enter the data into excel',NULL,1,36),(37,'Research the available softwares',NULL,1,37),(38,'Discuss with the team',NULL,1,37),(39,'Explore the usage',NULL,1,38),(40,'Implement into the website',NULL,1,38),(41,'Get the requirements',NULL,1,39),(42,'Analysis of requirements',NULL,1,39),(43,'Call the contacts',NULL,1,40),(44,'Enter the data into excel',NULL,1,40),(45,'Gather the list of employees with there contact details',NULL,1,41),(46,'Enter the data into excel',NULL,NULL,41),(47,'Research the available softwares',NULL,1,42),(48,'Discuss with the team',NULL,1,42),(49,'Explore the usage',NULL,1,43),(50,'Implement into the website',NULL,NULL,43),(51,'Get the requirements',NULL,1,44),(52,'Analysis of requirements',NULL,NULL,44),(53,'Call the contacts',NULL,1,45),(54,'Enter the data into excel',NULL,1,45),(55,'Gather the list of employees with there contact details',NULL,1,46),(56,'Enter the data into excel',NULL,NULL,46),(57,'Research the available softwares',NULL,1,47),(58,'Discuss with the team',NULL,1,47),(59,'Explore the usage',NULL,1,48),(60,'Implement into the website',NULL,1,48),(61,'Get the requirements',NULL,1,49),(62,'Analysis of requirements',NULL,1,49),(63,'Call the contacts',NULL,1,50),(64,'Enter the data into excel',NULL,NULL,50),(65,'Gather the list of employees with there contact details',NULL,1,51),(66,'Enter the data into excel',NULL,1,51),(67,'Research the available softwares',NULL,1,52),(68,'Discuss with the team',NULL,1,52),(69,'Explore the usage',NULL,1,53),(70,'Implement into the website',NULL,NULL,53),(71,'Get the requirements',NULL,1,54),(72,'Analysis of requirements',NULL,NULL,54),(73,'Call the contacts',NULL,1,55),(74,'Enter the data into excel',NULL,1,55),(75,'Gather the list of employees with there contact details',NULL,1,56),(76,'Enter the data into excel',NULL,NULL,56),(77,'Research the available softwares',NULL,1,57),(78,'Discuss with the team',NULL,NULL,57),(79,'Explore the usage',NULL,1,58),(80,'Implement into the website',NULL,1,58),(81,'Get the requirements',NULL,1,59),(82,'Analysis of requirements',NULL,1,59),(83,'Call the contacts',NULL,1,60),(84,'Enter the data into excel',NULL,NULL,60),(85,'Gather the list of employees with there contact details',NULL,1,61),(86,'Enter the data into excel',NULL,1,61),(87,'Research the available softwares',NULL,1,62),(88,'Discuss with the team',NULL,1,62),(89,'Explore the usage',NULL,1,63),(90,'Implement into the website',NULL,NULL,63),(91,'Get the requirements',NULL,1,64),(92,'Analysis of requirements',NULL,NULL,64),(93,'Call the contacts',NULL,1,65),(94,'Enter the data into excel',NULL,1,65),(95,'Gather the list of employees with there contact details',NULL,1,66),(96,'Enter the data into excel',NULL,NULL,66),(97,'Research the available softwares',NULL,1,67),(98,'Discuss with the team',NULL,1,67),(99,'Explore the usage',NULL,1,68),(100,'Implement into the website',NULL,1,68),(101,'Get the requirements',NULL,1,69),(102,'Analysis of requirements',NULL,1,69),(103,'Call the contacts',NULL,1,70),(104,'Enter the data into excel',NULL,NULL,70),(105,'Gather the list of employees with there contact details',NULL,1,71),(106,'Enter the data into excel',NULL,NULL,71),(107,'Research the available softwares',NULL,1,72),(108,'Discuss with the team',NULL,1,72),(109,'Explore the usage',NULL,1,73),(110,'Implement into the website',NULL,1,73),(111,'Get the requirements',NULL,1,74),(112,'Analysis of requirements',NULL,NULL,74),(113,'Call the contacts',NULL,1,75),(114,'Enter the data into excel',NULL,1,75),(115,'Gather the list of employees with there contact details',NULL,1,76),(116,'Enter the data into excel',NULL,NULL,76),(117,'Research the available softwares',NULL,1,77),(118,'Discuss with the team',NULL,NULL,77),(119,'Explore the usage',NULL,1,78),(120,'Implement into the website',NULL,1,78);
/*!40000 ALTER TABLE `taskchecklistitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowmessageinqueue`
--

DROP TABLE IF EXISTS `workflowmessageinqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowmessageinqueue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `modelclassname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processdatetime` datetime DEFAULT NULL,
  `serializeddata` text COLLATE utf8_unicode_ci,
  `item_id` int(11) unsigned DEFAULT NULL,
  `modelitem_item_id` int(11) unsigned DEFAULT NULL,
  `savedworkflow_id` int(11) unsigned DEFAULT NULL,
  `triggeredbyuser__user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowmessageinqueue`
--

LOCK TABLES `workflowmessageinqueue` WRITE;
/*!40000 ALTER TABLE `workflowmessageinqueue` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowmessageinqueue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-10 16:21:36