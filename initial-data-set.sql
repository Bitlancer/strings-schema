-- MySQL dump 10.13  Distrib 5.6.10, for Linux (x86_64)
--
-- Host: localhost    Database: strings
-- ------------------------------------------------------
-- Server version	5.6.10-log

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
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `application_formation`
--

LOCK TABLES `application_formation` WRITE;
/*!40000 ALTER TABLE `application_formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `application_formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `audit_delta`
--

LOCK TABLES `audit_delta` WRITE;
/*!40000 ALTER TABLE `audit_delta` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_delta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blueprint`
--

LOCK TABLES `blueprint` WRITE;
/*!40000 ALTER TABLE `blueprint` DISABLE KEYS */;
INSERT INTO `blueprint` VALUES (1,1,'base node','base node','base node','2014-01-08 03:58:22','2014-01-08 03:58:22');
INSERT INTO `blueprint` VALUES (2,1,'php app server','php app server','php app server','2014-01-08 03:58:47','2014-01-08 03:58:47');
/*!40000 ALTER TABLE `blueprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `blueprint_part`
--

LOCK TABLES `blueprint_part` WRITE;
/*!40000 ALTER TABLE `blueprint_part` DISABLE KEYS */;
INSERT INTO `blueprint_part` VALUES (1,1,1,1,1,'base node',NULL,1,9,'2014-01-08 04:06:07','2014-01-08 04:06:07');
INSERT INTO `blueprint_part` VALUES (2,1,1,2,2,'php-app-server',NULL,1,9,'2014-01-08 04:07:04','2014-01-08 04:07:04');
INSERT INTO `blueprint_part` VALUES (3,1,2,2,3,'load-balancer',NULL,1,9,'2014-01-08 04:15:29','2014-01-08 04:10:04');
/*!40000 ALTER TABLE `blueprint_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,1,'dns.external.domain','bitlancer-infra.net','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (2,1,'dns.external.implementation_id','1','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (3,1,'dns.external.region_id','DFW','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (4,1,'dns.external.domain_id','3947930','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (5,1,'dns.external.record_ttl','300','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (6,1,'dns.internal.domain','int.bitlancer-infra.net','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (7,1,'dns.internal.network_attribute','implementation.adress.private.4','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (8,1,'posix.default_shell','/bin/bash','2014-01-08 02:18:37','2014-01-08 02:18:37');
INSERT INTO `config` VALUES (9,1,'implementation.image_schedule.retention','0','2014-01-08 02:18:37','2014-01-08 02:18:37');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `device_attribute`
--

LOCK TABLES `device_attribute` WRITE;
/*!40000 ALTER TABLE `device_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `device_dns`
--

LOCK TABLES `device_dns` WRITE;
/*!40000 ALTER TABLE `device_dns` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_dns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `device_type`
--

LOCK TABLES `device_type` WRITE;
/*!40000 ALTER TABLE `device_type` DISABLE KEYS */;
INSERT INTO `device_type` VALUES (1,'instance','2014-01-08 03:52:46','2014-01-08 03:52:46');
INSERT INTO `device_type` VALUES (2,'load-balancer','2014-01-08 03:52:46','2014-01-08 03:52:46');
/*!40000 ALTER TABLE `device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dictionary`
--

LOCK TABLES `dictionary` WRITE;
/*!40000 ALTER TABLE `dictionary` DISABLE KEYS */;
INSERT INTO `dictionary` VALUES (1,1,'default','2014-01-08 03:19:12','2014-01-08 03:19:12');
/*!40000 ALTER TABLE `dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `dictionary_word`
--

LOCK TABLES `dictionary_word` WRITE;
/*!40000 ALTER TABLE `dictionary_word` DISABLE KEYS */;
INSERT INTO `dictionary_word` VALUES (1,1,1,'rosmarine',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (2,1,1,'gonotyl',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (3,1,1,'unsimmered',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (4,1,1,'skeletonless',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (5,1,1,'bradmaker',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (6,1,1,'ludicrosplenetic',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (7,1,1,'stipate',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (8,1,1,'cresylene',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (9,1,1,'zappier',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (10,1,1,'mastic',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (11,1,1,'filaricidal',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (12,1,1,'outluster',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (13,1,1,'governessy',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (14,1,1,'skiddingly',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (15,1,1,'subparty',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (16,1,1,'cestraction',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (17,1,1,'phagedaenous',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (18,1,1,'puddee',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (19,1,1,'spritzes',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (20,1,1,'lindly',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (21,1,1,'counterruin',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (22,1,1,'spinages',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (23,1,1,'umiacs',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (24,1,1,'bubos',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (25,1,1,'thanatist',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (26,1,1,'echoized',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (27,1,1,'terrain',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (28,1,1,'pollinodium',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (29,1,1,'sarigue',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (30,1,1,'enravishes',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (31,1,1,'jibbs',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (32,1,1,'countersued',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (33,1,1,'categorem',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (34,1,1,'kaoline',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (35,1,1,'mappah',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (36,1,1,'antidemocrat',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (37,1,1,'matina',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (38,1,1,'dustman',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (39,1,1,'redisputing',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (40,1,1,'northamptonshire',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (41,1,1,'arachnoiditis',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (42,1,1,'quadrateness',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (43,1,1,'uppop',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (44,1,1,'revenging',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (45,1,1,'whimsicalities',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (46,1,1,'odin',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (47,1,1,'trichonotid',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (48,1,1,'aladdin',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (49,1,1,'kip',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (50,1,1,'copybooks',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (51,1,1,'fountains',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (52,1,1,'cypro',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (53,1,1,'preteritness',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (54,1,1,'salema',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (55,1,1,'uniovular',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (56,1,1,'unwriteable',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (57,1,1,'salvably',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (58,1,1,'chusite',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (59,1,1,'quatercentenary',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (60,1,1,'racemes',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (61,1,1,'antiganting',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (62,1,1,'bichloride',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (63,1,1,'cynotherapy',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (64,1,1,'uromyces',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (65,1,1,'muscalonge',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (66,1,1,'blaeu',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (67,1,1,'aind',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (68,1,1,'muse',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (69,1,1,'mechlin',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (70,1,1,'pinot',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (71,1,1,'decocainize',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (72,1,1,'aortoclasia',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (73,1,1,'reject',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (74,1,1,'bumelia',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (75,1,1,'whatreck',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (76,1,1,'proseminar',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (77,1,1,'leviers',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (78,1,1,'sposhy',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (79,1,1,'admixes',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (80,1,1,'dependency',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (81,1,1,'biatomic',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (82,1,1,'lexicographically',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (83,1,1,'tete',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (84,1,1,'granbury',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (85,1,1,'laryngoscopies',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (86,1,1,'concordances',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (87,1,1,'septembrize',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (88,1,1,'chrysotis',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (89,1,1,'krissy',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (90,1,1,'qualmy',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (91,1,1,'overdarken',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (92,1,1,'undoers',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (93,1,1,'zephiran',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (94,1,1,'rhus',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (95,1,1,'subtractive',1,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (96,1,1,'narica',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (97,1,1,'philanthropising',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (98,1,1,'mallein',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (99,1,1,'transpersonally',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (100,1,1,'admonished',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (101,1,1,'bsge',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (102,1,1,'alias',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (103,1,1,'reassail',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (104,1,1,'takedowns',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (105,1,1,'nontyphoidal',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (106,1,1,'impressment',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (107,1,1,'bioblastic',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (108,1,1,'gasconader',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (109,1,1,'sabelli',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (110,1,1,'myzodendron',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (111,1,1,'candler',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (112,1,1,'fesswise',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (113,1,1,'mongolia',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (114,1,1,'jehoshaphat',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (115,1,1,'candareen',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (116,1,1,'nontubercularly',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (117,1,1,'headships',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (118,1,1,'octamerism',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (119,1,1,'nonbodily',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (120,1,1,'postcornu',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (121,1,1,'villars',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (122,1,1,'jackanapeses',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (123,1,1,'chemoprophylactic',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (124,1,1,'redisembark',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (125,1,1,'esophagectasia',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (126,1,1,'amyloplastid',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (127,1,1,'fiduciary',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (128,1,1,'primrosy',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (129,1,1,'lockatong',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (130,1,1,'amability',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (131,1,1,'shedded',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (132,1,1,'meroplanktonic',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (133,1,1,'sherbetzide',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (134,1,1,'sickos',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (135,1,1,'moonlitten',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (136,1,1,'collide',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (137,1,1,'send',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (138,1,1,'metanotum',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (139,1,1,'quadrumanous',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (140,1,1,'leocadia',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (141,1,1,'monkeys',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (142,1,1,'micropathology',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (143,1,1,'punishers',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (144,1,1,'unshaved',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (145,1,1,'veneers',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (146,1,1,'electromagnetical',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (147,1,1,'bertle',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (148,1,1,'lenticulation',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (149,1,1,'aperulosid',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (150,1,1,'fanums',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (151,1,1,'rebilling',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (152,1,1,'superintendencies',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (153,1,1,'bottlebird',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (154,1,1,'rabbonis',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (155,1,1,'unnucleated',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (156,1,1,'ordurousness',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (157,1,1,'denyse',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (158,1,1,'nonatomical',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (159,1,1,'flummer',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (160,1,1,'idiotism',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (161,1,1,'nidulation',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (162,1,1,'mallender',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (163,1,1,'tuboovarian',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (164,1,1,'ambon',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (165,1,1,'prussianization',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (166,1,1,'digitalize',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
INSERT INTO `dictionary_word` VALUES (167,1,1,'carville',0,'2014-01-08 03:39:24','2014-01-08 03:39:24');
/*!40000 ALTER TABLE `dictionary_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `formation`
--

LOCK TABLES `formation` WRITE;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hiera`
--

LOCK TABLES `hiera` WRITE;
/*!40000 ALTER TABLE `hiera` DISABLE KEYS */;
/*!40000 ALTER TABLE `hiera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `implementation`
--

LOCK TABLES `implementation` WRITE;
/*!40000 ALTER TABLE `implementation` DISABLE KEYS */;
INSERT INTO `implementation` VALUES (1,1,1,'Rackspace','2014-01-08 03:12:04','2014-01-08 03:12:04');
/*!40000 ALTER TABLE `implementation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `implementation_attribute`
--

LOCK TABLES `implementation_attribute` WRITE;
/*!40000 ALTER TABLE `implementation_attribute` DISABLE KEYS */;
INSERT INTO `implementation_attribute` VALUES (1,1,1,'username','bitlancer3','2014-01-08 03:15:47','2014-01-08 03:15:47');
INSERT INTO `implementation_attribute` VALUES (2,1,1,'api_key','','2014-01-08 03:15:47','2014-01-08 03:15:47');
INSERT INTO `implementation_attribute` VALUES (3,1,1,'identity_api_endpoint','https://identity.api.rackspacecloud.com/v2.0/','2014-01-08 03:15:47','2014-01-08 03:15:47');
INSERT INTO `implementation_attribute` VALUES (4,1,1,'default_image','da1f0392-8c64-468f-a839-a9e56caebf07','2014-01-08 03:15:47','2014-01-08 03:15:47');
/*!40000 ALTER TABLE `implementation_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jump_server`
--

LOCK TABLES `jump_server` WRITE;
/*!40000 ALTER TABLE `jump_server` DISABLE KEYS */;
/*!40000 ALTER TABLE `jump_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `module_source`
--

LOCK TABLES `module_source` WRITE;
/*!40000 ALTER TABLE `module_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `module_variable`
--

LOCK TABLES `module_variable` WRITE;
/*!40000 ALTER TABLE `module_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Bitlancer LLC','bitlancer',0,0,'2014-01-08 02:16:50','2014-01-08 02:16:50');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,1,'base node','2014-01-08 03:51:36','2014-01-08 03:51:36');
INSERT INTO `profile` VALUES (2,1,'php-app-server','2014-01-08 03:51:50','2014-01-08 03:51:50');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profile_module`
--

LOCK TABLES `profile_module` WRITE;
/*!40000 ALTER TABLE `profile_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,NULL,'Rackspace','2014-01-08 02:16:50','2014-01-08 02:16:50');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `provider_attribute`
--

LOCK TABLES `provider_attribute` WRITE;
/*!40000 ALTER TABLE `provider_attribute` DISABLE KEYS */;
INSERT INTO `provider_attribute` VALUES (1,NULL,1,'flavors','[{\"id\":2,\"description\":\"512MB Standard Instance (1vCPU/512MB/20GB)\"},{\"id\":3,\"description\":\"1GB Standard Instance (1vCPU/1GB/40GB)\"},{\"id\":4,\"description\":\"2GB Standard Instance (2vCPU/2GB/80GB)\"},{\"id\":5,\"description\":\"4GB Standard Instance (2vCPU/4GB/160GB)\"},{\"id\":6,\"description\":\"8GB Standard Instance (4vCPU/8GB/320GB)\"},{\"id\":7,\"description\":\"15GB Standard Instance (6vCPU/15GB/620GB)\"},{\"id\":8,\"description\":\"30GB Standard Instance (8vCPU/30GB/1200GB)\"},{\"id\":\"performance1-1\",\"description\":\"1 GB Performance Instance (1vCPU/1GB/20GB)\"},{\"id\":\"performance1-2\",\"description\":\"2 GB Performance Instance (2vCPU/2GB/40GB,20GB)\"},{\"id\":\"performance1-4\",\"description\":\"4 GB Performance Instance (4vCPU/4GB/40GB,40GB)\"},{\"id\":\"performance1-8\",\"description\":\"8 GB Performance Instance (8vCPU/8GB/40GB,80GB)\"},{\"id\":\"performance2-15\",\"description\":\"15 GB Performance Instance (4vCPU/15GB/40GB,150GB)\"},{\"id\":\"performance2-30\",\"description\":\"30 GB Performance Instance (8vCPU/30GB/40GB,300GB)\"},{\"id\":\"performance2-60\",\"description\":\"60 GB Performance Instance (16vCPU/60GB/40GB,2x300GB)\"},{\"id\":\"performance2-90\",\"description\":\"90 GB Performance Instance (24vCPU/90GB/40GB,3x300GB)\"},{\"id\":\"performance2-120\",\"description\":\"120 GB Performance Instance (32vCPU/120GB/40GB,4x300GB)\"}]','2014-01-08 02:16:50','2014-01-08 02:16:50');
INSERT INTO `provider_attribute` VALUES (2,NULL,1,'regions','[{\"id\":\"dfw\",\"name\":\"dfw01\",\"description\":\"Dallas\"},{\"id\":\"ord\",\"name\":\"ord01\",\"description\":\"Chicago\"},{\"id\":\"iad\",\"name\":\"iad01\",\"description\":\"Northern Virginia\"},{\"id\":\"syd\",\"name\":\"syd01\",\"description\":\"Sydney\"},{\"id\":\"hkg\",\"name\":\"hkg01\",\"description\":\"Hong Kong\"}]','2014-01-08 02:16:50','2014-01-08 02:16:50');
/*!40000 ALTER TABLE `provider_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `queued_job`
--

LOCK TABLES `queued_job` WRITE;
/*!40000 ALTER TABLE `queued_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `queued_job_log`
--

LOCK TABLES `queued_job_log` WRITE;
/*!40000 ALTER TABLE `queued_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,1,'base node','2014-01-08 03:46:25','2014-01-08 03:46:25');
INSERT INTO `role` VALUES (2,1,'php-app-server','2014-01-08 03:46:41','2014-01-08 03:46:41');
INSERT INTO `role` VALUES (3,1,'load-balancer','2014-01-08 03:48:53','2014-01-08 03:48:53');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role_profile`
--

LOCK TABLES `role_profile` WRITE;
/*!40000 ALTER TABLE `role_profile` DISABLE KEYS */;
INSERT INTO `role_profile` VALUES (1,1,1,1,'2014-01-08 04:18:27','2014-01-08 03:53:51');
INSERT INTO `role_profile` VALUES (2,1,2,2,'2014-01-08 04:18:27','2014-01-08 03:54:01');
/*!40000 ALTER TABLE `role_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `script`
--

LOCK TABLES `script` WRITE;
/*!40000 ALTER TABLE `script` DISABLE KEYS */;
/*!40000 ALTER TABLE `script` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,NULL,'infrastructure','2014-01-08 02:16:50','2014-01-08 02:16:50');
INSERT INTO `service` VALUES (2,NULL,'dns','2014-01-08 02:16:50','2014-01-08 02:16:50');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `service_provider`
--

LOCK TABLES `service_provider` WRITE;
/*!40000 ALTER TABLE `service_provider` DISABLE KEYS */;
INSERT INTO `service_provider` VALUES (1,NULL,1,1,'2014-01-08 02:16:50','2014-01-08 02:16:50');
INSERT INTO `service_provider` VALUES (2,NULL,2,1,'2014-01-08 02:16:50','2014-01-08 02:16:50');
/*!40000 ALTER TABLE `service_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sudo`
--

LOCK TABLES `sudo` WRITE;
/*!40000 ALTER TABLE `sudo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sudo_attribute`
--

LOCK TABLES `sudo_attribute` WRITE;
/*!40000 ALTER TABLE `sudo_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `sudo_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_application`
--

LOCK TABLES `team_application` WRITE;
/*!40000 ALTER TABLE `team_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_application_sudo`
--

LOCK TABLES `team_application_sudo` WRITE;
/*!40000 ALTER TABLE `team_application_sudo` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_application_sudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_device`
--

LOCK TABLES `team_device` WRITE;
/*!40000 ALTER TABLE `team_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_device_sudo`
--

LOCK TABLES `team_device_sudo` WRITE;
/*!40000 ALTER TABLE `team_device_sudo` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_device_sudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_formation`
--

LOCK TABLES `team_formation` WRITE;
/*!40000 ALTER TABLE `team_formation` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_formation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_formation_sudo`
--

LOCK TABLES `team_formation_sudo` WRITE;
/*!40000 ALTER TABLE `team_formation_sudo` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_formation_sudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_role`
--

LOCK TABLES `team_role` WRITE;
/*!40000 ALTER TABLE `team_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `team_role_sudo`
--

LOCK TABLES `team_role_sudo` WRITE;
/*!40000 ALTER TABLE `team_role_sudo` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_role_sudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin','','Admin','','jcotton@bitlancer.com',1,0,0,'2014-01-08 04:13:11','2014-01-08 02:17:54');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_attribute`
--

LOCK TABLES `user_attribute` WRITE;
/*!40000 ALTER TABLE `user_attribute` DISABLE KEYS */;
INSERT INTO `user_attribute` VALUES (1,1,1,'posix.uid','1000','2014-01-08 02:16:50','2014-01-08 02:16:50');
INSERT INTO `user_attribute` VALUES (2,1,1,'posix.gid','1000','2014-01-08 02:16:50','2014-01-08 02:16:50');
INSERT INTO `user_attribute` VALUES (3,1,1,'posix.shell','/bin/bash','2014-01-08 02:16:50','2014-01-08 02:16:50');
INSERT INTO `user_attribute` VALUES (5,1,1,'strings.failed_login_attempts','0','2014-01-08 04:11:14','2014-01-08 04:11:14');
/*!40000 ALTER TABLE `user_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_key`
--

LOCK TABLES `user_key` WRITE;
/*!40000 ALTER TABLE `user_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_team`
--

LOCK TABLES `user_team` WRITE;
/*!40000 ALTER TABLE `user_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-08  4:29:07
