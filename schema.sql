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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the application',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The name of the application',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `application_formation`
--

DROP TABLE IF EXISTS `application_formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application_formation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `application_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the application',
  `formation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the formation',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the audit record',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the user that this record belongs to',
  `event` enum('create','update','delete') NOT NULL DEFAULT 'create' COMMENT 'The CRUD operation',
  `model` varchar(255) NOT NULL COMMENT 'The model which was modified',
  `entity_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the record that was modified',
  `json_object` text NOT NULL COMMENT 'Json representation of the object that was modified',
  `description` text COMMENT 'A more user friendly description of the modification',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit_delta`
--

DROP TABLE IF EXISTS `audit_delta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_delta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the audit delta record',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `audit_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the audit record this record belongs to',
  `property_name` varchar(255) NOT NULL COMMENT 'The property that was modified',
  `old_value` text COMMENT 'The original value of the property',
  `new_value` text COMMENT 'The new value of the property',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blueprint`
--

DROP TABLE IF EXISTS `blueprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blueprint` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the blueprint',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The name of the blueprint',
  `short_description` varchar(255) DEFAULT NULL COMMENT 'The short description of the blueprint',
  `description` text COMMENT 'The full description of the blueprint',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `blueprint_part`
--

DROP TABLE IF EXISTS `blueprint_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blueprint_part` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the blueprint part',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `device_type_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the device_type that this device belongs to',
  `blueprint_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the blueprint',
  `role_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the role this part references',
  `name` varchar(64) NOT NULL COMMENT 'The name of the blueprint part',
  `description` varchar(255) DEFAULT NULL COMMENT 'The description of the blueprint part',
  `minimum` tinyint(3) unsigned DEFAULT '1' COMMENT 'The minimum number of devices that will be spun up',
  `maximum` tinyint(3) unsigned DEFAULT '1' COMMENT 'The maximum number of devices that will be spun up',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the config record',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `var` varchar(128) NOT NULL COMMENT 'The config variable',
  `val` longtext NOT NULL COMMENT 'The variable value',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the device',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `device_type_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the device_type that this device belongs to',
  `implementation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the implementation of this device',
  `formation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the formation this device belongs to',
  `blueprint_part_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the blueprint part this record belongs to',
  `role_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the role this device belongs to',
  `name` varchar(128) NOT NULL COMMENT 'The name of the device',
  `status` enum('building','resizing','active','deleting','error') NOT NULL DEFAULT 'building',
  `can_sync_to_ldap` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `device_attribute`
--

DROP TABLE IF EXISTS `device_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the attribute',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `device_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the device',
  `var` varchar(128) NOT NULL COMMENT 'The config variable',
  `val` longtext NOT NULL COMMENT 'The variable value',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `device_dns`
--

DROP TABLE IF EXISTS `device_dns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_dns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the device dns record',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `application_formation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the application to formation mapping this record belongs to',
  `device_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the device this record belongs to',
  `name` varchar(255) NOT NULL COMMENT 'The name of the dns record',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `device_type`
--

DROP TABLE IF EXISTS `device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the device type record',
  `name` varchar(128) NOT NULL COMMENT 'The name of the device type',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dictionary`
--

DROP TABLE IF EXISTS `dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the record',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The name of the dictionary',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dictionary_word`
--

DROP TABLE IF EXISTS `dictionary_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dictionary_word` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the record',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `dictionary_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the dictionary',
  `word` varchar(64) NOT NULL COMMENT 'The word',
  `status` tinyint(3) unsigned DEFAULT '0' COMMENT 'Status of the word',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formation`
--

DROP TABLE IF EXISTS `formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the formation',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `implementation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the implementation this formation belongs to',
  `blueprint_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the blueprint this record belongs to',
  `dictionary_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the dictionary this record belongs to',
  `name` varchar(128) NOT NULL COMMENT 'The name of the formation',
  `status` enum('building','resizing','active','deleting','error') DEFAULT 'building' COMMENT 'The status of this formation',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hiera`
--

DROP TABLE IF EXISTS `hiera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hiera` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the hiera record',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `device_id` bigint(20) unsigned DEFAULT NULL COMMENT 'The id of the device this record belongs to',
  `hiera_key` varchar(128) NOT NULL COMMENT 'The search key for hiera',
  `var` varchar(128) NOT NULL COMMENT 'The configuration variable',
  `val` longtext NOT NULL COMMENT 'The variable value',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `implementation`
--

DROP TABLE IF EXISTS `implementation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `implementation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the implementation',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `provider_id` bigint(20) unsigned NOT NULL COMMENT 'The provider of this implementation',
  `name` varchar(64) NOT NULL COMMENT 'The name of this implementation',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `implementation_attribute`
--

DROP TABLE IF EXISTS `implementation_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `implementation_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the attribute',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `implementation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the implementation',
  `var` varchar(128) NOT NULL COMMENT 'The config variable',
  `val` longtext NOT NULL COMMENT 'The variable value',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jump_server`
--

DROP TABLE IF EXISTS `jump_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jump_server` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the jump server',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `implementation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the implementation this record belongs to',
  `device_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the device this record belongs to',
  `region` varchar(64) NOT NULL COMMENT 'The region this server lives in',
  `private_key` text NOT NULL COMMENT 'The private key that grants the remoteexec user access to this server',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the module',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `module_source_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the module source',
  `short_name` varchar(128) NOT NULL COMMENT 'The friendly name of the module',
  `name` varchar(255) NOT NULL COMMENT 'The name of the module',
  `reference` varchar(255) DEFAULT NULL COMMENT 'Optional reference to version, revision, branch or tag of module',
  `path` varchar(255) DEFAULT NULL COMMENT 'Optional path to module within the git repository',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_source`
--

DROP TABLE IF EXISTS `module_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_source` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the module source',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(128) NOT NULL COMMENT 'The name of the module source',
  `type` enum('forge','git') NOT NULL DEFAULT 'git' COMMENT 'The module source type',
  `url` varchar(255) NOT NULL COMMENT 'The url of the module source',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_variable`
--

DROP TABLE IF EXISTS `module_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_variable` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the variable',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `module_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the module',
  `var` varchar(128) NOT NULL COMMENT 'The variable name in puppet',
  `name` varchar(255) NOT NULL COMMENT 'The variable name',
  `description` text NOT NULL COMMENT 'Description of the variable (help)',
  `default_value` varchar(255) DEFAULT NULL COMMENT 'Optional default value for this variable',
  `validation_pattern` varchar(255) DEFAULT NULL COMMENT 'Optional regular expression to validate the variable value',
  `is_editable` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Whether or not the default value is editable',
  `is_required` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Whether or not this variable must be defined',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the organization',
  `name` varchar(64) NOT NULL COMMENT 'The name of the organization',
  `short_name` varchar(64) NOT NULL COMMENT 'A short name for the organization',
  `is_disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether or not this organization is disabled',
  `can_sync_to_ldap` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether this organization should be synced to ldap',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the profile',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(128) NOT NULL COMMENT 'The name of the profile',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profile_module`
--

DROP TABLE IF EXISTS `profile_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_module` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `profile_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the profile',
  `module_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the module',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the provider',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The name of the provider',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provider_attribute`
--

DROP TABLE IF EXISTS `provider_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the attribute',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `provider_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the provider',
  `var` varchar(128) NOT NULL COMMENT 'The config variable',
  `val` longtext NOT NULL COMMENT 'The variable value',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queued_job`
--

DROP TABLE IF EXISTS `queued_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queued_job` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the queued job',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `http_method` varchar(10) NOT NULL COMMENT 'The HTTP VERB that will be used to call this job',
  `url` text NOT NULL COMMENT 'The callback url',
  `body` text COMMENT 'Content sent to the callback url in the POST body',
  `timeout_secs` int(11) NOT NULL DEFAULT '60' COMMENT 'Job execution timeout',
  `last_started_at` timestamp NULL DEFAULT NULL COMMENT 'Last time this job was run',
  `last_finished_at` timestamp NULL DEFAULT NULL COMMENT 'Last time this job completed',
  `last_response` text COMMENT 'The body from the last response of the last execution',
  `result_code` int(11) DEFAULT NULL COMMENT 'HTTP status code',
  `remaining_retries` int(11) NOT NULL DEFAULT '10' COMMENT 'Number of remaining retries before the job is marked as failed',
  `retry_delay_secs` int(11) NOT NULL DEFAULT '60' COMMENT 'Do not retry this job for this number of seconds',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queued_job_log`
--

DROP TABLE IF EXISTS `queued_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queued_job_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the log entry',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `job_id` bigint(20) unsigned NOT NULL COMMENT 'The id of job referenced',
  `msg` text NOT NULL COMMENT 'The result returned from the executed job',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the role',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(128) NOT NULL COMMENT 'The name of the role',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role_profile`
--

DROP TABLE IF EXISTS `role_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_profile` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `role_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the role',
  `profile_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the profile',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `script`
--

DROP TABLE IF EXISTS `script`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `script` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the script',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `model` varchar(255) NOT NULL COMMENT 'The model this record is associated with',
  `foreign_key_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the foreign record this record belongs to',
  `name` varchar(128) NOT NULL COMMENT 'The name of the script',
  `type` enum('git') NOT NULL DEFAULT 'git' COMMENT 'The source type of this record',
  `url` varchar(255) NOT NULL COMMENT 'The url of the script source',
  `path` varchar(255) DEFAULT NULL COMMENT 'Optional path to module within the git repository',
  `parameters` text COMMENT 'Optional string of parameters that will be passed to the script during execution',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the service',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The name of the service',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `service_provider`
--

DROP TABLE IF EXISTS `service_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_provider` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned DEFAULT NULL COMMENT 'If applicable, the id of the organization that owns this record',
  `service_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the service',
  `provider_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the provider',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sudo`
--

DROP TABLE IF EXISTS `sudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sudo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the sudo role',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(128) NOT NULL COMMENT 'The name of the sudo role',
  `is_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether or not the sudo role is hidden from the end user',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sudo_attribute`
--

DROP TABLE IF EXISTS `sudo_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sudo_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the sudo attribute',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `sudo_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the sudo role',
  `name` enum('sudoCommand','sudoRunAs','sudoOption') NOT NULL COMMENT 'The name of the sudo attribute',
  `value` varchar(128) NOT NULL COMMENT 'The value of the sudo attribute',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the team',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The name of the team',
  `is_disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether or not the team is disabled',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_application`
--

DROP TABLE IF EXISTS `team_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_application` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team',
  `application_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the application',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_application_sudo`
--

DROP TABLE IF EXISTS `team_application_sudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_application_sudo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_application_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team to application mapping',
  `sudo_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the sudo role',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_device`
--

DROP TABLE IF EXISTS `team_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_device` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team',
  `device_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the device',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_device_sudo`
--

DROP TABLE IF EXISTS `team_device_sudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_device_sudo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_device_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team to device mapping',
  `sudo_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the sudo role',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_formation`
--

DROP TABLE IF EXISTS `team_formation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_formation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team',
  `formation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the formation',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_formation_sudo`
--

DROP TABLE IF EXISTS `team_formation_sudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_formation_sudo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_formation_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team to formation mapping',
  `sudo_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the sudo role',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_role`
--

DROP TABLE IF EXISTS `team_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team',
  `role_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the role',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `team_role_sudo`
--

DROP TABLE IF EXISTS `team_role_sudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_role_sudo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `team_role_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team to role mapping',
  `sudo_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the sudo role',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the user',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `name` varchar(64) NOT NULL COMMENT 'The username of the user',
  `password` varchar(64) NOT NULL COMMENT 'The SHA1 password of the user',
  `first_name` varchar(64) NOT NULL COMMENT 'The first name of the user',
  `last_name` varchar(64) NOT NULL COMMENT 'The last name of the user',
  `email` varchar(128) NOT NULL COMMENT 'The email address of the user',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether or not the user is an admin',
  `can_create_user` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether or not the user can create users',
  `is_disabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Whether or not the user is disabled',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_attribute`
--

DROP TABLE IF EXISTS `user_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the attribute',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the user',
  `var` varchar(128) NOT NULL COMMENT 'The config variable',
  `val` longtext NOT NULL COMMENT 'The variable value',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_key`
--

DROP TABLE IF EXISTS `user_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_key` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the key',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the user',
  `name` varchar(64) NOT NULL COMMENT 'The name of the key',
  `public_key` text NOT NULL COMMENT 'The public key',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_team`
--

DROP TABLE IF EXISTS `user_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_team` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The id of the mapping',
  `organization_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the organization that owns this record',
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the user',
  `team_id` bigint(20) unsigned NOT NULL COMMENT 'The id of the team',
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'The date and time of the last update to this record',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The date and time this record was created',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-17 14:56:10
