CREATE DATABASE  IF NOT EXISTS `digimarket_sprint_4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digimarket_sprint_4`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: digimarket_sprint_4
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `admin_type_id` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_us` (
  `contact_us_id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `emailAddress` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `contact_us_organization_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`contact_us_id`),
  KEY `contact_us_organization_id_idx` (`contact_us_organization_id`),
  KEY `contact_us_created_by_idx` (`created_by`),
  CONSTRAINT `contact_us_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `contact_us_organization_id` FOREIGN KEY (`contact_us_organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_description` varchar(1000) DEFAULT NULL,
  `organization_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_organization_id_idx` (`organization_id`),
  KEY `course_created_by_idx` (`created_by`),
  CONSTRAINT `course_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `course_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (121,'dasdad','{\"blocks\":[{\"key\":\"fl8ls\",\"text\":\"dadasda\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}',1263,440,'05/25/2023 1:28:16 PM');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lesson`
--

DROP TABLE IF EXISTS `course_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_lesson` (
  `course_lesson_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `user_content_id` int NOT NULL,
  PRIMARY KEY (`course_lesson_id`),
  KEY `course_lesson_course_id_idx` (`course_id`),
  KEY `course_lesson_user_content_id_idx` (`user_content_id`),
  CONSTRAINT `course_lesson_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `course_lesson_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lesson`
--

LOCK TABLES `course_lesson` WRITE;
/*!40000 ALTER TABLE `course_lesson` DISABLE KEYS */;
INSERT INTO `course_lesson` VALUES (3,121,235);
/*!40000 ALTER TABLE `course_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_location`
--

DROP TABLE IF EXISTS `course_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_location` (
  `course_location_id` int NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `organization_id` int NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `created_by` int NOT NULL,
  PRIMARY KEY (`course_location_id`),
  KEY `course_location_organization_id_idx` (`organization_id`),
  KEY `course_location_created_by_idx` (`created_by`),
  CONSTRAINT `course_location_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `course_location_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_location`
--

LOCK TABLES `course_location` WRITE;
/*!40000 ALTER TABLE `course_location` DISABLE KEYS */;
INSERT INTO `course_location` VALUES (108,'Dubai - United Arab Emirates','sadas',1263,'5/25/2023 1:28:05 PM',440);
/*!40000 ALTER TABLE `course_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_schedule`
--

DROP TABLE IF EXISTS `course_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_schedule` (
  `course_schedule_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `organization_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`course_schedule_id`),
  KEY `course_schedule_course_id_idx` (`course_id`),
  KEY `course_schedule_organization_id_idx` (`organization_id`),
  KEY `course_schedule_created_by_idx` (`created_by`),
  CONSTRAINT `course_schedule_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `course_schedule_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `course_schedule_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_schedule`
--

LOCK TABLES `course_schedule` WRITE;
/*!40000 ALTER TABLE `course_schedule` DISABLE KEYS */;
INSERT INTO `course_schedule` VALUES (268,121,1263,440,'5/25/2023 1:30:13 PM');
/*!40000 ALTER TABLE `course_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_schedule_attendance`
--

DROP TABLE IF EXISTS `course_schedule_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_schedule_attendance` (
  `course_schedule_attendance_id` int NOT NULL AUTO_INCREMENT,
  `course_schedule_course_details_id` int NOT NULL,
  `user_id` int NOT NULL,
  `is_present` bit(1) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`course_schedule_attendance_id`),
  KEY `course_schedule_course_details_id_idx` (`course_schedule_course_details_id`),
  KEY `course_schedule_attendance_user_id_idx` (`user_id`),
  KEY `course_schedule_attendance_created_by_idx` (`created_by`),
  CONSTRAINT `course_schedule_attendance_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `course_schedule_attendance_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `course_schedule_course_details_id` FOREIGN KEY (`course_schedule_course_details_id`) REFERENCES `course_schedule_course_details` (`course_schedule_course_details_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_schedule_attendance`
--

LOCK TABLES `course_schedule_attendance` WRITE;
/*!40000 ALTER TABLE `course_schedule_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_schedule_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_schedule_course_details`
--

DROP TABLE IF EXISTS `course_schedule_course_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_schedule_course_details` (
  `course_schedule_course_details_id` int NOT NULL AUTO_INCREMENT,
  `course_schedule_id` int NOT NULL,
  `user_content_id` int NOT NULL,
  `location_id` int DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `max_participants_count` int DEFAULT NULL,
  `participant_notification_threshold` int DEFAULT NULL,
  PRIMARY KEY (`course_schedule_course_details_id`),
  KEY `course_schedule_course_details_course_schedule_id_idx` (`course_schedule_id`),
  KEY `course_schedule_course_details_user_content_id_idx` (`user_content_id`),
  KEY `course_schedule_course_details_location_id_idx` (`location_id`),
  KEY `course_schedule_course_details_teacher_id_idx` (`teacher_id`),
  CONSTRAINT `course_schedule_course_details_course_schedule_id` FOREIGN KEY (`course_schedule_id`) REFERENCES `course_schedule` (`course_schedule_id`),
  CONSTRAINT `course_schedule_course_details_location_id` FOREIGN KEY (`location_id`) REFERENCES `course_location` (`course_location_id`),
  CONSTRAINT `course_schedule_course_details_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `course_schedule_course_details_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_schedule_course_details`
--

LOCK TABLES `course_schedule_course_details` WRITE;
/*!40000 ALTER TABLE `course_schedule_course_details` DISABLE KEYS */;
INSERT INTO `course_schedule_course_details` VALUES (320,268,235,108,'05/25/2023 1:30:13 PM',440,2,3);
/*!40000 ALTER TABLE `course_schedule_course_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_schedule_members`
--

DROP TABLE IF EXISTS `course_schedule_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_schedule_members` (
  `course_schedule_members_id` int NOT NULL AUTO_INCREMENT,
  `course_schedule_course_details` int NOT NULL,
  `user_id` int NOT NULL,
  `member_type` int NOT NULL,
  PRIMARY KEY (`course_schedule_members_id`),
  KEY `course_schedule_details_idx` (`course_schedule_course_details`),
  KEY `course_schedule_member_user_id_idx` (`user_id`),
  CONSTRAINT `course_schedule_details` FOREIGN KEY (`course_schedule_course_details`) REFERENCES `course_schedule_course_details` (`course_schedule_course_details_id`),
  CONSTRAINT `course_schedule_member_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_schedule_members`
--

LOCK TABLES `course_schedule_members` WRITE;
/*!40000 ALTER TABLE `course_schedule_members` DISABLE KEYS */;
INSERT INTO `course_schedule_members` VALUES (6,320,441,1);
/*!40000 ALTER TABLE `course_schedule_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `on_going_class_for_user`
--

DROP TABLE IF EXISTS `on_going_class_for_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `on_going_class_for_user` (
  `on_going_class_for_user_id` int NOT NULL AUTO_INCREMENT,
  `course_schedule_course_details_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`on_going_class_for_user_id`),
  KEY `on_going_class_for_user_course_schedule_course_details_id_idx` (`course_schedule_course_details_id`),
  KEY `on_going_class_for_user_user_id_idx` (`user_id`),
  CONSTRAINT `on_going_class_for_user_course_schedule_course_details_id` FOREIGN KEY (`course_schedule_course_details_id`) REFERENCES `course_schedule_course_details` (`course_schedule_course_details_id`),
  CONSTRAINT `on_going_class_for_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `on_going_class_for_user`
--

LOCK TABLES `on_going_class_for_user` WRITE;
/*!40000 ALTER TABLE `on_going_class_for_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `on_going_class_for_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `organization_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `end_point` varchar(45) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `about_organziation` varchar(1000) DEFAULT NULL,
  `logo` varchar(1000) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `type_of_organization` int DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `is_rejected` bit(1) DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `rejected_by` int DEFAULT NULL,
  `reason` varchar(2000) DEFAULT NULL,
  `creator` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`organization_id`),
  KEY `approved_by_idx` (`approved_by`),
  KEY `rejected_by_idx` (`rejected_by`),
  KEY `organization_creator_idx` (`creator`),
  CONSTRAINT `approved_by` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `creator` FOREIGN KEY (`creator`) REFERENCES `user` (`user_id`),
  CONSTRAINT `rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1264 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1262,'Test Org','test-org',NULL,'digiuser1@mailinator.com','','','Pakistan','Pakistan','',1,_binary '',NULL,1,NULL,NULL,438,'5/16/2023 11:03:55 AM',NULL,NULL),(1263,'my new org','my-new-org',NULL,'kiyav21814@cutefier.com','dasdas','2SGN2BVzrcXgvkv13zSLwu-Screenshot 2023_03-21 161136.png','Armenia','dasdadas','23213243242',2,NULL,NULL,NULL,NULL,NULL,440,'5/25/2023 11:33:50 AM',NULL,NULL);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_owner`
--

DROP TABLE IF EXISTS `organization_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_owner` (
  `organization_user_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `email_address` varchar(65) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `Profile_info` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`organization_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_owner`
--

LOCK TABLES `organization_owner` WRITE;
/*!40000 ALTER TABLE `organization_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_request`
--

DROP TABLE IF EXISTS `organization_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_request` (
  `organization_request_id` int NOT NULL AUTO_INCREMENT,
  `email_address` varchar(45) DEFAULT NULL,
  `organization_name` varchar(45) DEFAULT NULL,
  `organization_id` int DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `organization_is_approved` bit(1) DEFAULT NULL,
  `organization_approved_by` int DEFAULT NULL,
  `organization_is_rejected` bit(1) DEFAULT NULL,
  `organization_rejected_by` int DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(200) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_edit_request` bit(1) DEFAULT NULL,
  `organization_type` int DEFAULT NULL,
  PRIMARY KEY (`organization_request_id`),
  KEY `organization_approved_by_id` (`organization_approved_by`),
  KEY `organization_rejected_by_id` (`organization_rejected_by`),
  CONSTRAINT `organization_approved_by` FOREIGN KEY (`organization_approved_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `organization_rejected_by` FOREIGN KEY (`organization_rejected_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_request`
--

LOCK TABLES `organization_request` WRITE;
/*!40000 ALTER TABLE `organization_request` DISABLE KEYS */;
INSERT INTO `organization_request` VALUES (5,'digiuser1@mailinator.com','Test Org',1262,'abc','Org Owner',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5/16/2023 10:57:36 AM',NULL,NULL),(6,'giyoh67568@asuflex.com','new org',NULL,'Siraj','Munir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5/16/2023 11:00:09 AM',NULL,NULL),(7,'boceson691@favilu.com','my org',NULL,'Siraj','Munir',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5/25/2023 11:30:18 AM',NULL,NULL),(8,'kiyav21814@cutefier.com','my new org',1263,'bawa','ji',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5/25/2023 11:31:10 AM',NULL,NULL);
/*!40000 ALTER TABLE `organization_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent` (
  `parent_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_student` (
  `Parent_student_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` varchar(45) DEFAULT NULL,
  `student_id` varchar(45) DEFAULT NULL,
  `relation_type` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Parent_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_student`
--

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `permission_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (2,'view_of_team_information','This permission will allow the user to have view access to all of the organization\'s members details and the role(s) they are assigned','View of team information'),(3,'edit_all_curriculum_owned_by_the_organization','This permission will allow the user to have access to all of the organization\'s owned curriculum and the capability to edit it','Edit all curriculum owned by the organization'),(5,'define_or_create_user_types_for_the_organizat','This permission will allow the user, in “User Management” to create and delete user types for the organization and define the permissions each user type in the organization will have.','Create, delete and define user types for the organization'),(6,'change_or_add_type_to_a_user','This permission will allow the user, in “User Roles” to change / add types to a user','Change / add type to a user'),(7,'approve_requests_to_join_the_workspace','This permission will allow the user to see and approve requests to join the organization (User Invitation Approval)','Approve requests to join the workspace'),(8,'lessons_creation','This permission will allow the user to create lessons (Content Page)','Lessons creation'),(9,'lessons_sharing','This permission will allow the user to Share lessons (Content Page)','Lessons sharing'),(10,'assignee_a_user_to_becoming_an_owner_or_co_ow','This permission will allow the owner to make any user an owner in the organization, the user type that have this permission will be able to do anything for the organization, same as the owner','Assignee a user to becoming an owner or co-owner'),(22,'manage_lessons_scheduling_and_assign_students_to_classes','This permission will allow the user to view the ‘Schedule Course’ page, schedule courses and edit all courses schedule','Manage lessons scheduling and assign students to classes'),(23,'create_courses_types','This permission will allow the user to see and do all actions in ‘Course Type’ for the organization','Create courses types'),(24,'invite_users_to_join','This permission will allow the user to view and invite users to the organization from the User Roles page','Invite users to join'),(25,'create_and_approve_a_userName_user_as_a_parent','This permission will allow the user to see and add students to their profile from the ‘Parent Student Invite’ page','Create and approve a UserName user (student) as a parent'),(26,'create_a_userName_user_as_an_admin','This permission will allow the user to see page ‘Admin Student Invite’ and do all actions in this page','Create a UserName user (student) as an admin'),(29,'deliver_class_as_a_teacher','This permission will allow the user to lead a class as a lead teacher and have access to pages ‘Classroom’ and ‘Lessons schedule - Teacher','Deliver class (as a teacher)'),(30,'access_to_edit_the_workspace_page','This permission will allow the user to edit the organization page','Access to edit the workspace page'),(31,'have_access_to_contact_us_log','This permission will allow the user to view the ‘Contact us Log’ page and see all messages sent to the organization','Have access to contact us log'),(32,'get_email_notification_for_contact_us_form_submission','This permission will add the user to get an email notification for all messages sent to the organization','Get email notification for contact us form submission'),(33,'Deactivate_activate_accounts','This permission will allow the user to deactivate / activate users in ‘User Roles’','Deactivate /activate accounts (users)'),(34,'Delete_the_organization','This permission will allow the user to delete the organization - this is a “Danger zone” !! This permission can only be given to owners!','Delete the organization [DANGER ZONE!!]'),(35,'Lesson_schedule_view_teacher','This permission will allow the user access to “Lesson schedule view - Teacher\"','Lesson schedule view - Teacher'),(36,'Lesson_schedule_view_parent','This permission will allow the user access to “Lesson schedule view - Parent”','Lesson schedule view - Parent'),(37,'Lesson_schedule_view_student','This permission will allow the user access to “Lesson schedule view - Student”','Lesson schedule view - Student'),(38,'Lesson_schedule_view_additional_participants','This permission will allow the user access to “Lesson schedule view - Additional Participants”','Lesson schedule view - Additional Participants');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privillage`
--

DROP TABLE IF EXISTS `privillage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privillage` (
  `privillage_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `details` varchar(45) DEFAULT NULL,
  `is_mandatory` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`privillage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privillage`
--

LOCK TABLES `privillage` WRITE;
/*!40000 ALTER TABLE `privillage` DISABLE KEYS */;
/*!40000 ALTER TABLE `privillage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privillage_permission`
--

DROP TABLE IF EXISTS `privillage_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privillage_permission` (
  `role_permission_id` int NOT NULL,
  `role_id` varchar(45) DEFAULT NULL,
  `permission_id` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privillage_permission`
--

LOCK TABLES `privillage_permission` WRITE;
/*!40000 ALTER TABLE `privillage_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `privillage_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `is_mandatory` bit(1) DEFAULT NULL,
  `organization_id` int NOT NULL,
  `display_name` varchar(45) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `role_organization_id_idx` (`organization_id`),
  KEY `role_created_by_idx` (`created_by`),
  CONSTRAINT `role_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `role_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=973 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (961,'Owner','This role has all the privileges for this organization',_binary '',1262,'Owner',438,'5/16/2023 11:03:55 AM'),(962,'Admin','This role has Admin privileges for this organization',_binary '',1262,'Admin',438,'5/16/2023 11:03:55 AM'),(963,'Parent','This role has Parent privileges for this organization',_binary '',1262,'Parent',438,'5/16/2023 11:03:55 AM'),(964,'Teacher','This role has Teacher privileges for this organization',_binary '',1262,'Teacher',438,'5/16/2023 11:03:55 AM'),(965,'Student','This role has Student privileges for this organization',_binary '',1262,'Student',438,'5/16/2023 11:03:55 AM'),(966,'UsernameLoginStudent','This role has Username login Student privileges for this organization',_binary '',1262,'Username Login Student',438,'5/16/2023 11:03:55 AM'),(967,'Owner','This role has all the privileges for this organization',_binary '',1263,'Owner',440,'5/25/2023 11:33:51 AM'),(968,'Admin','This role has Admin privileges for this organization',_binary '',1263,'Admin',440,'5/25/2023 11:33:51 AM'),(969,'Parent','This role has Parent privileges for this organization',_binary '',1263,'Parent',440,'5/25/2023 11:33:51 AM'),(970,'Teacher','This role has Teacher privileges for this organization',_binary '',1263,'Teacher',440,'5/25/2023 11:33:51 AM'),(971,'Student','This role has Student privileges for this organization',_binary '',1263,'Student',440,'5/25/2023 11:33:51 AM'),(972,'UsernameLoginStudent','This role has Username login Student privileges for this organization',_binary '',1263,'Username Login Student',440,'5/25/2023 11:33:51 AM');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permission` (
  `role_permission_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_permission_id`),
  KEY `role_id_idx` (`role_id`),
  KEY `permission_id_idx` (`permission_id`),
  KEY `role_permission_created_by_idx` (`created_by`),
  CONSTRAINT `permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `role_permission_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,961,2,438,'5/16/2023 11:03:55 AM'),(2,961,36,438,'5/16/2023 11:03:55 AM'),(3,961,35,438,'5/16/2023 11:03:55 AM'),(4,961,34,438,'5/16/2023 11:03:55 AM'),(5,961,33,438,'5/16/2023 11:03:55 AM'),(6,961,32,438,'5/16/2023 11:03:55 AM'),(7,961,31,438,'5/16/2023 11:03:55 AM'),(8,961,30,438,'5/16/2023 11:03:55 AM'),(9,961,29,438,'5/16/2023 11:03:55 AM'),(10,961,26,438,'5/16/2023 11:03:55 AM'),(11,961,37,438,'5/16/2023 11:03:55 AM'),(12,961,25,438,'5/16/2023 11:03:55 AM'),(13,961,23,438,'5/16/2023 11:03:55 AM'),(14,961,22,438,'5/16/2023 11:03:55 AM'),(15,961,10,438,'5/16/2023 11:03:55 AM'),(16,961,9,438,'5/16/2023 11:03:55 AM'),(17,961,8,438,'5/16/2023 11:03:55 AM'),(18,961,7,438,'5/16/2023 11:03:55 AM'),(19,961,6,438,'5/16/2023 11:03:55 AM'),(20,961,5,438,'5/16/2023 11:03:55 AM'),(21,961,3,438,'5/16/2023 11:03:55 AM'),(22,961,24,438,'5/16/2023 11:03:55 AM'),(23,961,38,438,'5/16/2023 11:03:55 AM'),(24,962,38,438,'5/16/2023 11:03:55 AM'),(25,962,33,438,'5/16/2023 11:03:55 AM'),(26,962,32,438,'5/16/2023 11:03:55 AM'),(27,962,31,438,'5/16/2023 11:03:55 AM'),(28,962,29,438,'5/16/2023 11:03:55 AM'),(29,962,26,438,'5/16/2023 11:03:55 AM'),(30,962,24,438,'5/16/2023 11:03:55 AM'),(31,962,23,438,'5/16/2023 11:03:55 AM'),(32,962,22,438,'5/16/2023 11:03:55 AM'),(33,962,9,438,'5/16/2023 11:03:55 AM'),(34,962,8,438,'5/16/2023 11:03:55 AM'),(35,962,7,438,'5/16/2023 11:03:55 AM'),(36,962,6,438,'5/16/2023 11:03:55 AM'),(37,962,2,438,'5/16/2023 11:03:55 AM'),(38,963,38,438,'5/16/2023 11:03:55 AM'),(39,963,36,438,'5/16/2023 11:03:55 AM'),(40,963,25,438,'5/16/2023 11:03:55 AM'),(41,964,38,438,'5/16/2023 11:03:55 AM'),(42,964,35,438,'5/16/2023 11:03:55 AM'),(43,964,29,438,'5/16/2023 11:03:55 AM'),(44,964,9,438,'5/16/2023 11:03:55 AM'),(45,964,8,438,'5/16/2023 11:03:55 AM'),(46,965,37,438,'5/16/2023 11:03:55 AM'),(47,966,37,438,'5/16/2023 11:03:55 AM'),(48,967,2,440,'5/25/2023 11:33:51 AM'),(49,967,36,440,'5/25/2023 11:33:51 AM'),(50,967,35,440,'5/25/2023 11:33:51 AM'),(51,967,34,440,'5/25/2023 11:33:51 AM'),(52,967,33,440,'5/25/2023 11:33:51 AM'),(53,967,32,440,'5/25/2023 11:33:51 AM'),(54,967,31,440,'5/25/2023 11:33:51 AM'),(55,967,30,440,'5/25/2023 11:33:51 AM'),(56,967,29,440,'5/25/2023 11:33:51 AM'),(57,967,26,440,'5/25/2023 11:33:51 AM'),(58,967,37,440,'5/25/2023 11:33:51 AM'),(59,967,25,440,'5/25/2023 11:33:51 AM'),(60,967,23,440,'5/25/2023 11:33:51 AM'),(61,967,22,440,'5/25/2023 11:33:51 AM'),(62,967,10,440,'5/25/2023 11:33:51 AM'),(63,967,9,440,'5/25/2023 11:33:51 AM'),(64,967,8,440,'5/25/2023 11:33:51 AM'),(65,967,7,440,'5/25/2023 11:33:51 AM'),(66,967,6,440,'5/25/2023 11:33:51 AM'),(67,967,5,440,'5/25/2023 11:33:51 AM'),(68,967,3,440,'5/25/2023 11:33:51 AM'),(69,967,24,440,'5/25/2023 11:33:51 AM'),(70,967,38,440,'5/25/2023 11:33:51 AM'),(71,968,38,440,'5/25/2023 11:33:51 AM'),(72,968,33,440,'5/25/2023 11:33:51 AM'),(73,968,32,440,'5/25/2023 11:33:51 AM'),(74,968,31,440,'5/25/2023 11:33:51 AM'),(75,968,29,440,'5/25/2023 11:33:51 AM'),(76,968,26,440,'5/25/2023 11:33:51 AM'),(77,968,24,440,'5/25/2023 11:33:51 AM'),(78,968,23,440,'5/25/2023 11:33:51 AM'),(79,968,22,440,'5/25/2023 11:33:51 AM'),(80,968,9,440,'5/25/2023 11:33:51 AM'),(81,968,8,440,'5/25/2023 11:33:51 AM'),(82,968,7,440,'5/25/2023 11:33:51 AM'),(83,968,6,440,'5/25/2023 11:33:51 AM'),(84,968,2,440,'5/25/2023 11:33:51 AM'),(85,969,38,440,'5/25/2023 11:33:51 AM'),(86,969,36,440,'5/25/2023 11:33:51 AM'),(87,969,25,440,'5/25/2023 11:33:51 AM'),(88,970,38,440,'5/25/2023 11:33:51 AM'),(89,970,35,440,'5/25/2023 11:33:51 AM'),(90,970,29,440,'5/25/2023 11:33:51 AM'),(91,970,9,440,'5/25/2023 11:33:51 AM'),(92,970,8,440,'5/25/2023 11:33:51 AM'),(93,971,37,440,'5/25/2023 11:33:51 AM'),(94,972,37,440,'5/25/2023 11:33:51 AM');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specific_user_prmission`
--

DROP TABLE IF EXISTS `specific_user_prmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specific_user_prmission` (
  `specific_user_prmission_id` int NOT NULL AUTO_INCREMENT,
  `content_id` int DEFAULT NULL,
  `is_requested` bit(1) DEFAULT NULL,
  `request_by` int DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`specific_user_prmission_id`),
  KEY `specific_user_prmission_content_id_idx` (`content_id`) /*!80000 INVISIBLE */,
  KEY `specific_user_prmission_request_by_idx` (`request_by`),
  KEY `specific_user_prmission_approved_by_idx` (`approved_by`),
  CONSTRAINT `specific_user_prmission_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `specific_user_prmission_content_id` FOREIGN KEY (`content_id`) REFERENCES `user_content` (`content_id`),
  CONSTRAINT `specific_user_prmission_request_by` FOREIGN KEY (`request_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specific_user_prmission`
--

LOCK TABLES `specific_user_prmission` WRITE;
/*!40000 ALTER TABLE `specific_user_prmission` DISABLE KEYS */;
/*!40000 ALTER TABLE `specific_user_prmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `modified_date` varchar(45) DEFAULT NULL,
  `created_ip` varchar(45) DEFAULT NULL,
  `modified_id` varchar(45) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `modified_by` int DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `has_email` bit(1) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_Active` bit(1) DEFAULT NULL,
  `is_root` bit(1) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `is_platform_admin` bit(1) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Digimarket','Platform','support.digimarket@kidslifeskills.org','4J9p8IeFNr/esus3nveXwg==',NULL,_binary '',NULL,NULL,NULL,NULL,_binary '',NULL),(438,'abc','Org Owner',NULL,'ZyRBkaTGf7exEU8q+YpE+A==','5/16/2023 11:03:55 AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(439,'xyz','User Admin',NULL,'ZyRBkaTGf7exEU8q+YpE+A==','5/16/2023 11:05:43 AM',_binary '',NULL,NULL,NULL,NULL,NULL,NULL),(440,'bawa','ji',NULL,'ZyRBkaTGf7exEU8q+YpE+A==','5/25/2023 11:33:50 AM',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(441,'siraj','Munir',NULL,'ZyRBkaTGf7exEU8q+YpE+A==','5/25/2023 1:29:41 PM',_binary '',NULL,NULL,'December 31, 2002',NULL,NULL,'dRhBxSecw3EfbFV1d2KzuN-Screenshot 2023_03-21 161615.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content`
--

DROP TABLE IF EXISTS `user_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content` (
  `content_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `is_duplicate` bit(1) NOT NULL,
  `organization_id` int NOT NULL,
  `created_by` int NOT NULL,
  `short_description` longtext,
  `long_description` longtext,
  `duplicated_from` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `user_content_guid` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`content_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `organization_id_idx` (`organization_id`),
  KEY `created_by_idx` (`created_by`),
  KEY `duplicated_from_idx` (`duplicated_from`),
  CONSTRAINT `created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `duplicated_from` FOREIGN KEY (`duplicated_from`) REFERENCES `user_content` (`content_id`),
  CONSTRAINT `organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content`
--

LOCK TABLES `user_content` WRITE;
/*!40000 ALTER TABLE `user_content` DISABLE KEYS */;
INSERT INTO `user_content` VALUES (235,440,'das',_binary '\0',1263,440,'{\"blocks\":[{\"key\":\"dcrsu\",\"text\":\"dasdasdadasd\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}','{\"blocks\":[{\"key\":\"5c8nf\",\"text\":\"dadasdada\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}',NULL,'5/25/2023 1:13:27 PM','9f35cabb-9a86-47dd-aa13-23c2ec13b02f');
/*!40000 ALTER TABLE `user_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_access_request`
--

DROP TABLE IF EXISTS `user_content_access_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content_access_request` (
  `user_content_access_request_id` int NOT NULL AUTO_INCREMENT,
  `content_id` int NOT NULL,
  `request_by` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `requested_date` varchar(100) DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL,
  `approved_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_content_access_request_id`),
  KEY `user_content_access_request_content_id_idx` (`content_id`),
  KEY `user_content_access_request_requested_by_idx` (`request_by`),
  CONSTRAINT `user_content_access_request_content_id` FOREIGN KEY (`content_id`) REFERENCES `user_content` (`content_id`),
  CONSTRAINT `user_content_access_request_requested_by` FOREIGN KEY (`request_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_access_request`
--

LOCK TABLES `user_content_access_request` WRITE;
/*!40000 ALTER TABLE `user_content_access_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_content_access_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_attachments`
--

DROP TABLE IF EXISTS `user_content_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content_attachments` (
  `attachments_id` int NOT NULL AUTO_INCREMENT,
  `user_content_id` int NOT NULL,
  `attachment_key` varchar(100) NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`attachments_id`),
  KEY `user_content_id_idx` (`user_content_id`),
  KEY `attachments_created_by_idx` (`created_by`),
  CONSTRAINT `attachments_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `attachments_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_attachments`
--

LOCK TABLES `user_content_attachments` WRITE;
/*!40000 ALTER TABLE `user_content_attachments` DISABLE KEYS */;
INSERT INTO `user_content_attachments` VALUES (1,235,'1iNWTSFzcPQpa4yFdEz2Zn-Screenshot 2023_03-21 161615.png',440,'5/25/2023 1:13:27 PM');
/*!40000 ALTER TABLE `user_content_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_meta`
--

DROP TABLE IF EXISTS `user_content_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content_meta` (
  `user_content_meta_id` int NOT NULL AUTO_INCREMENT,
  `content_id` int NOT NULL,
  `key` varchar(100) DEFAULT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `meta_type` int DEFAULT NULL,
  PRIMARY KEY (`user_content_meta_id`),
  KEY `user_content_id_idx` (`content_id`),
  CONSTRAINT `user_content_id` FOREIGN KEY (`content_id`) REFERENCES `user_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_meta`
--

LOCK TABLES `user_content_meta` WRITE;
/*!40000 ALTER TABLE `user_content_meta` DISABLE KEYS */;
INSERT INTO `user_content_meta` VALUES (1,235,'dasas','https://temp-mail.org/en/',2),(2,235,'Main Topic','dasd',1),(3,235,'Language','Dutch',1),(4,235,'Target Audience Minimal Age','2',1),(5,235,'Target Audience Maximal Age','3',1),(6,235,'Keywords','dasd',1),(7,235,'Duration in minutes','1',1);
/*!40000 ALTER TABLE `user_content_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_question`
--

DROP TABLE IF EXISTS `user_content_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content_question` (
  `user_content_question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(2000) DEFAULT NULL,
  `question_description` varchar(2000) DEFAULT NULL,
  `answers` varchar(2000) DEFAULT NULL,
  `is_multiselect` bit(1) DEFAULT NULL,
  `user_content_id` int NOT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_content_question_id`),
  KEY `user_content_question_user_content_id_idx` (`user_content_id`),
  KEY `user_content_question_created_by_idx` (`created_by`),
  CONSTRAINT `user_content_question_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_content_question_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_question`
--

LOCK TABLES `user_content_question` WRITE;
/*!40000 ALTER TABLE `user_content_question` DISABLE KEYS */;
INSERT INTO `user_content_question` VALUES (1,'dadad','ddasdasd','[\"dadasda\",\"dqdqwd\"]',NULL,235,440,'5/25/2023 1:13:27 PM');
/*!40000 ALTER TABLE `user_content_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_scratch_project`
--

DROP TABLE IF EXISTS `user_content_scratch_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content_scratch_project` (
  `user_content_scratch_project_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `link` varchar(2000) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `user_content_id` int NOT NULL,
  PRIMARY KEY (`user_content_scratch_project_id`),
  KEY `user_content_scratch_project_created_by_idx` (`created_by`),
  KEY `user_content_scratch_project_content_id_idx` (`user_content_id`),
  CONSTRAINT `user_content_scratch_project_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`),
  CONSTRAINT `user_content_scratch_project_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_scratch_project`
--

LOCK TABLES `user_content_scratch_project` WRITE;
/*!40000 ALTER TABLE `user_content_scratch_project` DISABLE KEYS */;
INSERT INTO `user_content_scratch_project` VALUES (1,'dasdsa','https://scratch.mit.edu/projects/848776483',440,'5/25/2023 1:13:27 PM',235);
/*!40000 ALTER TABLE `user_content_scratch_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_content_sharing_permissions`
--

DROP TABLE IF EXISTS `user_content_sharing_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_content_sharing_permissions` (
  `user_content_sharing_permissions_id` int NOT NULL AUTO_INCREMENT,
  `is_private` bit(1) DEFAULT NULL,
  `share_also_with_students_of_all_ogranizations` bit(1) DEFAULT NULL,
  `share_also_with_students_of_my_ogranizations` bit(1) DEFAULT NULL,
  `share_to_all_ogranizations` bit(1) DEFAULT NULL,
  `share_to_my_ogranizations` bit(1) DEFAULT NULL,
  `shared_with_specific_people` bit(1) DEFAULT NULL,
  `permissions_user_content_id` int DEFAULT NULL,
  `shared_to_all` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_content_sharing_permissions_id`),
  KEY `permissions_user_content_id_idx` (`permissions_user_content_id`),
  CONSTRAINT `permissions_user_content_id` FOREIGN KEY (`permissions_user_content_id`) REFERENCES `user_content` (`content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_content_sharing_permissions`
--

LOCK TABLES `user_content_sharing_permissions` WRITE;
/*!40000 ALTER TABLE `user_content_sharing_permissions` DISABLE KEYS */;
INSERT INTO `user_content_sharing_permissions` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,235,_binary '');
/*!40000 ALTER TABLE `user_content_sharing_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invite`
--

DROP TABLE IF EXISTS `user_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_invite` (
  `user_invite_id` int NOT NULL AUTO_INCREMENT,
  `email_address` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `registered_user_id` int DEFAULT NULL,
  `role_id` int NOT NULL,
  `organization_id` int NOT NULL,
  `accepted` bit(1) DEFAULT NULL,
  `rejected` bit(1) DEFAULT NULL,
  `is_invitation_sent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_invite_id`),
  KEY `user_invite_created_by_idx` (`created_by`),
  KEY `user_invite_registered_user_id_idx` (`registered_user_id`),
  KEY `user_invite_role_id_idx` (`role_id`),
  KEY `user_invite_organization_id_idx` (`organization_id`),
  CONSTRAINT `user_invite_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_invite_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  CONSTRAINT `user_invite_registered_user_id` FOREIGN KEY (`registered_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_invite_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invite`
--

LOCK TABLES `user_invite` WRITE;
/*!40000 ALTER TABLE `user_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_organization`
--

DROP TABLE IF EXISTS `user_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_organization` (
  `user_organization_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `organization_id` int NOT NULL,
  `is_selected` bit(1) DEFAULT NULL,
  `cretaed_by` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_linked` bit(1) DEFAULT NULL,
  `linked_user_organization_id` int DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_organization_id`),
  KEY `user_organization_user_id_idx` (`user_id`),
  KEY `user_organization_organization_id_idx` (`organization_id`),
  KEY `user_organization_created_by_idx` (`cretaed_by`),
  CONSTRAINT `user_organization_created_by` FOREIGN KEY (`cretaed_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_organization_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  CONSTRAINT `user_organization_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=720 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_organization`
--

LOCK TABLES `user_organization` WRITE;
/*!40000 ALTER TABLE `user_organization` DISABLE KEYS */;
INSERT INTO `user_organization` VALUES (716,438,1262,NULL,NULL,NULL,NULL,NULL,_binary ''),(717,439,1262,NULL,NULL,NULL,NULL,NULL,_binary ''),(718,440,1263,NULL,NULL,NULL,NULL,NULL,_binary ''),(719,441,1263,NULL,440,'5/25/2023 1:29:41 PM',NULL,NULL,_binary '');
/*!40000 ALTER TABLE `user_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_organization_emails`
--

DROP TABLE IF EXISTS `user_organization_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_organization_emails` (
  `user_organization_email_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `organization_id` int DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pin` int DEFAULT NULL,
  `pin_generated_at` varchar(45) DEFAULT NULL,
  `is_verified` bit(1) NOT NULL,
  `is_notification_on` bit(1) NOT NULL,
  `is_primary` bit(1) NOT NULL,
  PRIMARY KEY (`user_organization_email_id`),
  KEY `user_organization_email_user_id_idx` (`user_id`),
  KEY `user_organization_email_organization_id_idx` (`organization_id`),
  CONSTRAINT `user_organization_email_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  CONSTRAINT `user_organization_email_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_organization_emails`
--

LOCK TABLES `user_organization_emails` WRITE;
/*!40000 ALTER TABLE `user_organization_emails` DISABLE KEYS */;
INSERT INTO `user_organization_emails` VALUES (16,1,NULL,'support.digimarket@kidslifeskills.org',NULL,NULL,_binary '',_binary '',_binary ''),(182,438,1262,'digiuser1@mailinator.com',NULL,NULL,_binary '',_binary '',_binary ''),(183,439,1262,'digiuser2@mailinator.com',NULL,NULL,_binary '',_binary '',_binary ''),(184,440,1263,'kiyav21814@cutefier.com',NULL,NULL,_binary '',_binary '',_binary ''),(185,441,1263,'asif',NULL,NULL,_binary '',_binary '',_binary '');
/*!40000 ALTER TABLE `user_organization_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_organization_role`
--

DROP TABLE IF EXISTS `user_organization_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_organization_role` (
  `user_organization_role_id` int NOT NULL AUTO_INCREMENT,
  `user_organization_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_organization_role_id`),
  KEY `role_id_idx` (`role_id`),
  KEY `user_organization_id_idx` (`user_organization_id`),
  KEY `user_organization_role_created_by_idx` (`created_by`),
  CONSTRAINT `user_oganization_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `user_organization_id` FOREIGN KEY (`user_organization_id`) REFERENCES `user_organization` (`user_organization_id`),
  CONSTRAINT `user_organization_role_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_organization_role`
--

LOCK TABLES `user_organization_role` WRITE;
/*!40000 ALTER TABLE `user_organization_role` DISABLE KEYS */;
INSERT INTO `user_organization_role` VALUES (1,716,961,438,'5/16/2023 11:03:55 AM'),(2,717,962,439,'5/16/2023 11:05:43 AM'),(3,718,967,440,'5/25/2023 11:33:51 AM'),(4,719,972,440,'5/25/2023 1:29:41 PM');
/*!40000 ALTER TABLE `user_organization_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_privillage`
--

DROP TABLE IF EXISTS `user_privillage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_privillage` (
  `user_privillage_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) DEFAULT NULL,
  `privillage_id` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_privillage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_privillage`
--

LOCK TABLES `user_privillage` WRITE;
/*!40000 ALTER TABLE `user_privillage` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_privillage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_registration` (
  `user_registration_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `user_type` varchar(45) DEFAULT NULL,
  `is_approved` varchar(45) DEFAULT NULL,
  `converted_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_request`
--

DROP TABLE IF EXISTS `user_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_request` (
  `user_request_id` int NOT NULL AUTO_INCREMENT,
  `organization_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `is_rejected` bit(1) DEFAULT NULL,
  `rejected_by` int DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_request_id`),
  KEY `user_request_organization_id_idx` (`organization_id`),
  KEY `user_request_rejected_by_idx` (`rejected_by`),
  KEY `user_request_approved_by_idx` (`approved_by`),
  KEY `user_request_role_id_idx` (`role_id`),
  KEY `user_request_user_id_idx` (`user_id`),
  CONSTRAINT `user_request_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_request_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  CONSTRAINT `user_request_rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `user_request_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `user_request_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_request`
--

LOCK TABLES `user_request` WRITE;
/*!40000 ALTER TABLE `user_request` DISABLE KEYS */;
INSERT INTO `user_request` VALUES (1,1262,'xyz','User Admin','digiuser2@mailinator.com',_binary '',438,NULL,NULL,NULL,'','',962,439,'5/16/2023 11:04:57 AM');
/*!40000 ALTER TABLE `user_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `username_login_student`
--

DROP TABLE IF EXISTS `username_login_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `username_login_student` (
  `username_login_student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `link_parent_id` int NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `status_id` int DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `is_share_info` bit(1) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  PRIMARY KEY (`username_login_student_id`),
  KEY `username_login_student_link_parent_id_idx` (`link_parent_id`),
  KEY `username_login_student_created_by_idx` (`created_by`),
  KEY `username_login_student_user_id_idx` (`user_id`),
  CONSTRAINT `username_login_student_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  CONSTRAINT `username_login_student_link_parent_id` FOREIGN KEY (`link_parent_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `username_login_student_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username_login_student`
--

LOCK TABLES `username_login_student` WRITE;
/*!40000 ALTER TABLE `username_login_student` DISABLE KEYS */;
INSERT INTO `username_login_student` VALUES (179,'siraj','Munir','December 31, 2002',440,'asif',2,'Approved',440,'5/25/2023 1:29:41 PM',_binary '',NULL,441,'dRhBxSecw3EfbFV1d2KzuN-Screenshot 2023_03-21 161615.png',NULL);
/*!40000 ALTER TABLE `username_login_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `username_login_student_organization`
--

DROP TABLE IF EXISTS `username_login_student_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `username_login_student_organization` (
  `username_login_student_organization_id` int NOT NULL AUTO_INCREMENT,
  `username_login_student_id` int NOT NULL,
  `organization_id` int NOT NULL,
  PRIMARY KEY (`username_login_student_organization_id`),
  KEY `username_login_student_id_idx` (`username_login_student_id`),
  KEY `username_login_student_organization_organization_id_idx` (`organization_id`),
  CONSTRAINT `username_login_student_id` FOREIGN KEY (`username_login_student_id`) REFERENCES `username_login_student` (`username_login_student_id`),
  CONSTRAINT `username_login_student_organization_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `username_login_student_organization`
--

LOCK TABLES `username_login_student_organization` WRITE;
/*!40000 ALTER TABLE `username_login_student_organization` DISABLE KEYS */;
INSERT INTO `username_login_student_organization` VALUES (1,179,1263);
/*!40000 ALTER TABLE `username_login_student_organization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 19:54:59
