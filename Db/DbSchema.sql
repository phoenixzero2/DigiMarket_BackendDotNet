-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 08:54 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digimarket_sprint_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
CREATE DATABASE  IF NOT EXISTS `digimarket_sprint_4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digimarket_sprint_4`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `admin_type_id` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_us_id` int(11) NOT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `emailAddress` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `topic` varchar(200) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `contact_us_organization_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_archived` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_description` varchar(1000) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `organization_id`, `created_by`, `created_date`) VALUES
(121, 'dasdad', '{\"blocks\":[{\"key\":\"fl8ls\",\"text\":\"dadasda\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}', 1263, 440, '05/25/2023 1:28:16 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course_lesson`
--

CREATE TABLE `course_lesson` (
  `course_lesson_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_lesson`
--

INSERT INTO `course_lesson` (`course_lesson_id`, `course_id`, `user_content_id`) VALUES
(3, 121, 235);

-- --------------------------------------------------------

--
-- Table structure for table `course_location`
--

CREATE TABLE `course_location` (
  `course_location_id` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_location`
--

INSERT INTO `course_location` (`course_location_id`, `location`, `details`, `organization_id`, `created_date`, `created_by`) VALUES
(108, 'Dubai - United Arab Emirates', 'sadas', 1263, '5/25/2023 1:28:05 PM', 440);

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule`
--

CREATE TABLE `course_schedule` (
  `course_schedule_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_schedule`
--

INSERT INTO `course_schedule` (`course_schedule_id`, `course_id`, `organization_id`, `created_by`, `created_date`) VALUES
(268, 121, 1263, 440, '5/25/2023 1:30:13 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule_attendance`
--

CREATE TABLE `course_schedule_attendance` (
  `course_schedule_attendance_id` int(11) NOT NULL,
  `course_schedule_course_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_present` bit(1) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_schedule_attendance`
--

INSERT INTO `course_schedule_attendance` (`course_schedule_attendance_id`, `course_schedule_course_details_id`, `user_id`, `is_present`, `created_by`, `created_date`) VALUES
(1, 320, 441, b'1', 440, '6/22/2023 4:59:36 AM');

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule_course_details`
--

CREATE TABLE `course_schedule_course_details` (
  `course_schedule_course_details_id` int(11) NOT NULL,
  `course_schedule_id` int(11) NOT NULL,
  `user_content_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date_time` varchar(100) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `max_participants_count` int(11) DEFAULT NULL,
  `participant_notification_threshold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_schedule_course_details`
--

INSERT INTO `course_schedule_course_details` (`course_schedule_course_details_id`, `course_schedule_id`, `user_content_id`, `location_id`, `date_time`, `teacher_id`, `max_participants_count`, `participant_notification_threshold`) VALUES
(320, 268, 235, 108, '05/25/2023 1:30:13 PM', 440, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `course_schedule_members`
--

CREATE TABLE `course_schedule_members` (
  `course_schedule_members_id` int(11) NOT NULL,
  `course_schedule_course_details` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_schedule_members`
--

INSERT INTO `course_schedule_members` (`course_schedule_members_id`, `course_schedule_course_details`, `user_id`, `member_type`) VALUES
(6, 320, 441, 1);

-- --------------------------------------------------------

--
-- Table structure for table `on_going_class_for_user`
--

CREATE TABLE `on_going_class_for_user` (
  `on_going_class_for_user_id` int(11) NOT NULL,
  `course_schedule_course_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `organization_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `end_point` varchar(45) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `about_organziation` varchar(1000) DEFAULT NULL,
  `logo` varchar(1000) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `type_of_organization` int(11) DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `is_rejected` bit(1) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `reason` varchar(2000) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `updated_date` varchar(45) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `name`, `end_point`, `is_active`, `email_address`, `about_organziation`, `logo`, `country`, `address`, `contact_number`, `type_of_organization`, `is_approved`, `is_rejected`, `approved_by`, `rejected_by`, `reason`, `creator`, `created_date`, `updated_date`, `is_deleted`) VALUES
(1262, 'Test Org', 'test-org', NULL, 'digiuser1@mailinator.com', '', 'Daco_51352.png', 'Pakistan', 'Pakistan', '', 1, b'1', NULL, 1, NULL, NULL, 438, '5/16/2023 11:03:55 AM', NULL, NULL),
(1263, 'my new org', 'my-new-org', NULL, 'kiyav21814@cutefier.com', 'dasdas', 'pngkey.com-lion-png-40819.png', 'Armenia', 'dasdadas', '23213243242', 2, b'1', NULL, 1, NULL, NULL, 440, '5/25/2023 11:33:50 AM', NULL, NULL),
(1264, 'Test Org LMOV', 'test-org-lmov', b'0', 'user1@localhost', 'This is a test to create a new organization', 'bF8V9yoDiRvoZWsoyRC8FP-Daco_4151555.png', 'Albania', '3456 master ln apt 5', '16122225568', 3, NULL, NULL, NULL, NULL, NULL, 438, NULL, NULL, NULL),
(1265, 'Final Test Life Kids', 'final-test-life-kids', NULL, 'demo@localhost', 'Non profit school', 'tyTYmYzqzuUCrsY2JHyjDv-school.png', 'United States', '111 South flower st', '15558862256', 4, b'1', NULL, 1, NULL, NULL, 442, '6/22/2023 4:33:17 AM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organization_owner`
--

CREATE TABLE `organization_owner` (
  `organization_user_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email_address` varchar(65) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `Profile_info` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization_request`
--

CREATE TABLE `organization_request` (
  `organization_request_id` int(11) NOT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  `organization_name` varchar(45) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `organization_is_approved` bit(1) DEFAULT NULL,
  `organization_approved_by` int(11) DEFAULT NULL,
  `organization_is_rejected` bit(1) DEFAULT NULL,
  `organization_rejected_by` int(11) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_number` varchar(200) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_edit_request` bit(1) DEFAULT NULL,
  `organization_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `organization_request`
--

INSERT INTO `organization_request` (`organization_request_id`, `email_address`, `organization_name`, `organization_id`, `first_name`, `last_name`, `organization_is_approved`, `organization_approved_by`, `organization_is_rejected`, `organization_rejected_by`, `reason`, `about`, `logo`, `country`, `address`, `contact_number`, `created_date`, `is_edit_request`, `organization_type`) VALUES
(5, 'digiuser1@mailinator.com', 'Test Org', 1262, 'abc', 'Org Owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5/16/2023 10:57:36 AM', NULL, NULL),
(6, 'giyoh67568@asuflex.com', 'new org', NULL, 'Siraj', 'Munir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5/16/2023 11:00:09 AM', NULL, NULL),
(7, 'boceson691@favilu.com', 'my org', NULL, 'Siraj', 'Munir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5/25/2023 11:30:18 AM', NULL, NULL),
(8, 'kiyav21814@cutefier.com', 'my new org', 1263, 'bawa', 'ji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5/25/2023 11:31:10 AM', NULL, NULL),
(9, 'demo@localhost', 'Final Test Life Kids', 1265, 'Martin', 'Olmos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6/22/2023 4:16:14 AM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_student`
--

CREATE TABLE `parent_student` (
  `Parent_student_id` int(11) NOT NULL,
  `parent_id` varchar(45) DEFAULT NULL,
  `student_id` varchar(45) DEFAULT NULL,
  `relation_type` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `description`, `display_name`) VALUES
(2, 'view_of_team_information', 'This permission will allow the user to have view access to all of the organization\'s members details and the role(s) they are assigned', 'View of team information'),
(3, 'edit_all_curriculum_owned_by_the_organization', 'This permission will allow the user to have access to all of the organization\'s owned curriculum and the capability to edit it', 'Edit all curriculum owned by the organization'),
(5, 'define_or_create_user_types_for_the_organizat', 'This permission will allow the user, in “User Management” to create and delete user types for the organization and define the permissions each user type in the organization will have.', 'Create, delete and define user types for the organization'),
(6, 'change_or_add_type_to_a_user', 'This permission will allow the user, in “User Roles” to change / add types to a user', 'Change / add type to a user'),
(7, 'approve_requests_to_join_the_workspace', 'This permission will allow the user to see and approve requests to join the organization (User Invitation Approval)', 'Approve requests to join the workspace'),
(8, 'lessons_creation', 'This permission will allow the user to create lessons (Content Page)', 'Lessons creation'),
(9, 'lessons_sharing', 'This permission will allow the user to Share lessons (Content Page)', 'Lessons sharing'),
(10, 'assignee_a_user_to_becoming_an_owner_or_co_ow', 'This permission will allow the owner to make any user an owner in the organization, the user type that have this permission will be able to do anything for the organization, same as the owner', 'Assignee a user to becoming an owner or co-owner'),
(22, 'manage_lessons_scheduling_and_assign_students_to_classes', 'This permission will allow the user to view the ‘Schedule Course’ page, schedule courses and edit all courses schedule', 'Manage lessons scheduling and assign students to classes'),
(23, 'create_courses_types', 'This permission will allow the user to see and do all actions in ‘Course Type’ for the organization', 'Create courses types'),
(24, 'invite_users_to_join', 'This permission will allow the user to view and invite users to the organization from the User Roles page', 'Invite users to join'),
(25, 'create_and_approve_a_userName_user_as_a_parent', 'This permission will allow the user to see and add students to their profile from the ‘Parent Student Invite’ page', 'Create and approve a UserName user (student) as a parent'),
(26, 'create_a_userName_user_as_an_admin', 'This permission will allow the user to see page ‘Admin Student Invite’ and do all actions in this page', 'Create a UserName user (student) as an admin'),
(29, 'deliver_class_as_a_teacher', 'This permission will allow the user to lead a class as a lead teacher and have access to pages ‘Classroom’ and ‘Lessons schedule - Teacher', 'Deliver class (as a teacher)'),
(30, 'access_to_edit_the_workspace_page', 'This permission will allow the user to edit the organization page', 'Access to edit the workspace page'),
(31, 'have_access_to_contact_us_log', 'This permission will allow the user to view the ‘Contact us Log’ page and see all messages sent to the organization', 'Have access to contact us log'),
(32, 'get_email_notification_for_contact_us_form_submission', 'This permission will add the user to get an email notification for all messages sent to the organization', 'Get email notification for contact us form submission'),
(33, 'Deactivate_activate_accounts', 'This permission will allow the user to deactivate / activate users in ‘User Roles’', 'Deactivate /activate accounts (users)'),
(34, 'Delete_the_organization', 'This permission will allow the user to delete the organization - this is a “Danger zone” !! This permission can only be given to owners!', 'Delete the organization [DANGER ZONE!!]'),
(35, 'Lesson_schedule_view_teacher', 'This permission will allow the user access to “Lesson schedule view - Teacher\"', 'Lesson schedule view - Teacher'),
(36, 'Lesson_schedule_view_parent', 'This permission will allow the user access to “Lesson schedule view - Parent”', 'Lesson schedule view - Parent'),
(37, 'Lesson_schedule_view_student', 'This permission will allow the user access to “Lesson schedule view - Student”', 'Lesson schedule view - Student'),
(38, 'Lesson_schedule_view_additional_participants', 'This permission will allow the user access to “Lesson schedule view - Additional Participants”', 'Lesson schedule view - Additional Participants');

-- --------------------------------------------------------

--
-- Table structure for table `privillage`
--

CREATE TABLE `privillage` (
  `privillage_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `details` varchar(45) DEFAULT NULL,
  `is_mandatory` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privillage_permission`
--

CREATE TABLE `privillage_permission` (
  `role_permission_id` int(11) NOT NULL,
  `role_id` varchar(45) DEFAULT NULL,
  `permission_id` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `details` varchar(1000) DEFAULT NULL,
  `is_mandatory` bit(1) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `display_name` varchar(45) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `details`, `is_mandatory`, `organization_id`, `display_name`, `created_by`, `created_date`) VALUES
(961, 'Owner', 'This role has all the privileges for this organization', b'1', 1262, 'Owner', 438, '5/16/2023 11:03:55 AM'),
(962, 'Admin', 'This role has Admin privileges for this organization', b'1', 1262, 'Admin', 438, '5/16/2023 11:03:55 AM'),
(963, 'Parent', 'This role has Parent privileges for this organization', b'1', 1262, 'Parent', 438, '5/16/2023 11:03:55 AM'),
(964, 'Teacher', 'This role has Teacher privileges for this organization', b'1', 1262, 'Teacher', 438, '5/16/2023 11:03:55 AM'),
(965, 'Student', 'This role has Student privileges for this organization', b'1', 1262, 'Student', 438, '5/16/2023 11:03:55 AM'),
(966, 'UsernameLoginStudent', 'This role has Username login Student privileges for this organization', b'1', 1262, 'Username Login Student', 438, '5/16/2023 11:03:55 AM'),
(967, 'Owner', 'This role has all the privileges for this organization', b'1', 1263, 'Owner', 440, '5/25/2023 11:33:51 AM'),
(968, 'Admin', 'This role has Admin privileges for this organization', b'1', 1263, 'Admin', 440, '5/25/2023 11:33:51 AM'),
(969, 'Parent', 'This role has Parent privileges for this organization', b'1', 1263, 'Parent', 440, '5/25/2023 11:33:51 AM'),
(970, 'Teacher', 'This role has Teacher privileges for this organization', b'1', 1263, 'Teacher', 440, '5/25/2023 11:33:51 AM'),
(971, 'Student', 'This role has Student privileges for this organization', b'1', 1263, 'Student', 440, '5/25/2023 11:33:51 AM'),
(972, 'UsernameLoginStudent', 'This role has Username login Student privileges for this organization', b'1', 1263, 'Username Login Student', 440, '5/25/2023 11:33:51 AM'),
(973, 'Owner', 'This role has all the privileges for this organization', b'1', 1264, 'Owner', 438, '6/22/2023 2:51:13 AM'),
(974, 'Admin', 'This role has Admin privileges for this organization', b'1', 1264, 'Admin', 438, '6/22/2023 2:51:13 AM'),
(975, 'Parent', 'This role has Parent privileges for this organization', b'1', 1264, 'Parent', 438, '6/22/2023 2:51:13 AM'),
(976, 'Teacher', 'This role has Teacher privileges for this organization', b'1', 1264, 'Teacher', 438, '6/22/2023 2:51:14 AM'),
(977, 'Student', 'This role has Student privileges for this organization', b'1', 1264, 'Student', 438, '6/22/2023 2:51:14 AM'),
(978, 'UsernameLoginStudent', 'This role has Username login Student privileges for this organization', b'1', 1264, 'Username Login Student', 438, '6/22/2023 2:51:14 AM'),
(981, 'Owner', 'This role has all the privileges for this organization', b'1', 1265, 'Owner', 442, '6/22/2023 4:33:17 AM'),
(982, 'Admin', 'This role has Admin privileges for this organization', b'1', 1265, 'Admin', 442, '6/22/2023 4:33:17 AM'),
(983, 'Parent', 'This role has Parent privileges for this organization', b'1', 1265, 'Parent', 442, '6/22/2023 4:33:17 AM'),
(984, 'Teacher', 'This role has Teacher privileges for this organization', b'1', 1265, 'Teacher', 442, '6/22/2023 4:33:17 AM'),
(985, 'Student', 'This role has Student privileges for this organization', b'1', 1265, 'Student', 442, '6/22/2023 4:33:17 AM'),
(986, 'UsernameLoginStudent', 'This role has Username login Student privileges for this organization', b'1', 1265, 'Username Login Student', 442, '6/22/2023 4:33:17 AM');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `role_permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`role_permission_id`, `role_id`, `permission_id`, `created_by`, `created_date`) VALUES
(1, 961, 2, 438, '5/16/2023 11:03:55 AM'),
(2, 961, 36, 438, '5/16/2023 11:03:55 AM'),
(3, 961, 35, 438, '5/16/2023 11:03:55 AM'),
(4, 961, 34, 438, '5/16/2023 11:03:55 AM'),
(5, 961, 33, 438, '5/16/2023 11:03:55 AM'),
(6, 961, 32, 438, '5/16/2023 11:03:55 AM'),
(7, 961, 31, 438, '5/16/2023 11:03:55 AM'),
(8, 961, 30, 438, '5/16/2023 11:03:55 AM'),
(9, 961, 29, 438, '5/16/2023 11:03:55 AM'),
(10, 961, 26, 438, '5/16/2023 11:03:55 AM'),
(11, 961, 37, 438, '5/16/2023 11:03:55 AM'),
(12, 961, 25, 438, '5/16/2023 11:03:55 AM'),
(13, 961, 23, 438, '5/16/2023 11:03:55 AM'),
(14, 961, 22, 438, '5/16/2023 11:03:55 AM'),
(15, 961, 10, 438, '5/16/2023 11:03:55 AM'),
(16, 961, 9, 438, '5/16/2023 11:03:55 AM'),
(17, 961, 8, 438, '5/16/2023 11:03:55 AM'),
(18, 961, 7, 438, '5/16/2023 11:03:55 AM'),
(19, 961, 6, 438, '5/16/2023 11:03:55 AM'),
(20, 961, 5, 438, '5/16/2023 11:03:55 AM'),
(21, 961, 3, 438, '5/16/2023 11:03:55 AM'),
(22, 961, 24, 438, '5/16/2023 11:03:55 AM'),
(23, 961, 38, 438, '5/16/2023 11:03:55 AM'),
(24, 962, 38, 438, '5/16/2023 11:03:55 AM'),
(25, 962, 33, 438, '5/16/2023 11:03:55 AM'),
(26, 962, 32, 438, '5/16/2023 11:03:55 AM'),
(27, 962, 31, 438, '5/16/2023 11:03:55 AM'),
(28, 962, 29, 438, '5/16/2023 11:03:55 AM'),
(29, 962, 26, 438, '5/16/2023 11:03:55 AM'),
(30, 962, 24, 438, '5/16/2023 11:03:55 AM'),
(31, 962, 23, 438, '5/16/2023 11:03:55 AM'),
(32, 962, 22, 438, '5/16/2023 11:03:55 AM'),
(33, 962, 9, 438, '5/16/2023 11:03:55 AM'),
(34, 962, 8, 438, '5/16/2023 11:03:55 AM'),
(35, 962, 7, 438, '5/16/2023 11:03:55 AM'),
(36, 962, 6, 438, '5/16/2023 11:03:55 AM'),
(37, 962, 2, 438, '5/16/2023 11:03:55 AM'),
(38, 963, 38, 438, '5/16/2023 11:03:55 AM'),
(39, 963, 36, 438, '5/16/2023 11:03:55 AM'),
(40, 963, 25, 438, '5/16/2023 11:03:55 AM'),
(41, 964, 38, 438, '5/16/2023 11:03:55 AM'),
(42, 964, 35, 438, '5/16/2023 11:03:55 AM'),
(43, 964, 29, 438, '5/16/2023 11:03:55 AM'),
(44, 964, 9, 438, '5/16/2023 11:03:55 AM'),
(45, 964, 8, 438, '5/16/2023 11:03:55 AM'),
(46, 965, 37, 438, '5/16/2023 11:03:55 AM'),
(47, 966, 37, 438, '5/16/2023 11:03:55 AM'),
(48, 967, 2, 440, '5/25/2023 11:33:51 AM'),
(49, 967, 36, 440, '5/25/2023 11:33:51 AM'),
(50, 967, 35, 440, '5/25/2023 11:33:51 AM'),
(51, 967, 34, 440, '5/25/2023 11:33:51 AM'),
(52, 967, 33, 440, '5/25/2023 11:33:51 AM'),
(53, 967, 32, 440, '5/25/2023 11:33:51 AM'),
(54, 967, 31, 440, '5/25/2023 11:33:51 AM'),
(55, 967, 30, 440, '5/25/2023 11:33:51 AM'),
(56, 967, 29, 440, '5/25/2023 11:33:51 AM'),
(57, 967, 26, 440, '5/25/2023 11:33:51 AM'),
(58, 967, 37, 440, '5/25/2023 11:33:51 AM'),
(59, 967, 25, 440, '5/25/2023 11:33:51 AM'),
(60, 967, 23, 440, '5/25/2023 11:33:51 AM'),
(61, 967, 22, 440, '5/25/2023 11:33:51 AM'),
(62, 967, 10, 440, '5/25/2023 11:33:51 AM'),
(63, 967, 9, 440, '5/25/2023 11:33:51 AM'),
(64, 967, 8, 440, '5/25/2023 11:33:51 AM'),
(65, 967, 7, 440, '5/25/2023 11:33:51 AM'),
(66, 967, 6, 440, '5/25/2023 11:33:51 AM'),
(67, 967, 5, 440, '5/25/2023 11:33:51 AM'),
(68, 967, 3, 440, '5/25/2023 11:33:51 AM'),
(69, 967, 24, 440, '5/25/2023 11:33:51 AM'),
(70, 967, 38, 440, '5/25/2023 11:33:51 AM'),
(71, 968, 38, 440, '5/25/2023 11:33:51 AM'),
(72, 968, 33, 440, '5/25/2023 11:33:51 AM'),
(73, 968, 32, 440, '5/25/2023 11:33:51 AM'),
(74, 968, 31, 440, '5/25/2023 11:33:51 AM'),
(75, 968, 29, 440, '5/25/2023 11:33:51 AM'),
(76, 968, 26, 440, '5/25/2023 11:33:51 AM'),
(77, 968, 24, 440, '5/25/2023 11:33:51 AM'),
(78, 968, 23, 440, '5/25/2023 11:33:51 AM'),
(79, 968, 22, 440, '5/25/2023 11:33:51 AM'),
(80, 968, 9, 440, '5/25/2023 11:33:51 AM'),
(81, 968, 8, 440, '5/25/2023 11:33:51 AM'),
(82, 968, 7, 440, '5/25/2023 11:33:51 AM'),
(83, 968, 6, 440, '5/25/2023 11:33:51 AM'),
(84, 968, 2, 440, '5/25/2023 11:33:51 AM'),
(85, 969, 38, 440, '5/25/2023 11:33:51 AM'),
(86, 969, 36, 440, '5/25/2023 11:33:51 AM'),
(87, 969, 25, 440, '5/25/2023 11:33:51 AM'),
(88, 970, 38, 440, '5/25/2023 11:33:51 AM'),
(89, 970, 35, 440, '5/25/2023 11:33:51 AM'),
(90, 970, 29, 440, '5/25/2023 11:33:51 AM'),
(91, 970, 9, 440, '5/25/2023 11:33:51 AM'),
(92, 970, 8, 440, '5/25/2023 11:33:51 AM'),
(93, 971, 37, 440, '5/25/2023 11:33:51 AM'),
(94, 972, 37, 440, '5/25/2023 11:33:51 AM'),
(142, 973, 2, 438, '6/22/2023 3:25:34 AM'),
(143, 974, 31, 438, '6/22/2023 3:25:34 AM'),
(144, 974, 29, 438, '6/22/2023 3:25:34 AM'),
(145, 974, 26, 438, '6/22/2023 3:25:34 AM'),
(146, 974, 24, 438, '6/22/2023 3:25:34 AM'),
(147, 974, 23, 438, '6/22/2023 3:25:34 AM'),
(148, 974, 22, 438, '6/22/2023 3:25:34 AM'),
(149, 974, 9, 438, '6/22/2023 3:25:34 AM'),
(150, 974, 8, 438, '6/22/2023 3:25:34 AM'),
(151, 974, 7, 438, '6/22/2023 3:25:34 AM'),
(152, 974, 32, 438, '6/22/2023 3:25:34 AM'),
(153, 974, 6, 438, '6/22/2023 3:25:34 AM'),
(154, 976, 38, 438, '6/22/2023 3:25:34 AM'),
(155, 976, 35, 438, '6/22/2023 3:25:34 AM'),
(156, 976, 29, 438, '6/22/2023 3:25:34 AM'),
(157, 976, 9, 438, '6/22/2023 3:25:34 AM'),
(158, 976, 8, 438, '6/22/2023 3:25:34 AM'),
(159, 977, 37, 438, '6/22/2023 3:25:34 AM'),
(160, 978, 37, 438, '6/22/2023 3:25:34 AM'),
(161, 975, 38, 438, '6/22/2023 3:25:34 AM'),
(162, 975, 36, 438, '6/22/2023 3:25:34 AM'),
(163, 974, 2, 438, '6/22/2023 3:25:34 AM'),
(164, 974, 33, 438, '6/22/2023 3:25:34 AM'),
(165, 974, 38, 438, '6/22/2023 3:25:34 AM'),
(166, 973, 38, 438, '6/22/2023 3:25:34 AM'),
(167, 973, 36, 438, '6/22/2023 3:25:34 AM'),
(168, 973, 35, 438, '6/22/2023 3:25:34 AM'),
(169, 973, 34, 438, '6/22/2023 3:25:34 AM'),
(170, 973, 33, 438, '6/22/2023 3:25:34 AM'),
(171, 973, 32, 438, '6/22/2023 3:25:34 AM'),
(172, 973, 31, 438, '6/22/2023 3:25:34 AM'),
(173, 973, 30, 438, '6/22/2023 3:25:34 AM'),
(174, 973, 29, 438, '6/22/2023 3:25:34 AM'),
(175, 973, 26, 438, '6/22/2023 3:25:34 AM'),
(176, 973, 37, 438, '6/22/2023 3:25:34 AM'),
(177, 973, 25, 438, '6/22/2023 3:25:34 AM'),
(178, 973, 23, 438, '6/22/2023 3:25:34 AM'),
(179, 973, 22, 438, '6/22/2023 3:25:34 AM'),
(180, 973, 10, 438, '6/22/2023 3:25:34 AM'),
(181, 973, 9, 438, '6/22/2023 3:25:34 AM'),
(182, 973, 8, 438, '6/22/2023 3:25:34 AM'),
(183, 973, 7, 438, '6/22/2023 3:25:34 AM'),
(184, 973, 6, 438, '6/22/2023 3:25:34 AM'),
(185, 973, 5, 438, '6/22/2023 3:25:34 AM'),
(186, 973, 3, 438, '6/22/2023 3:25:34 AM'),
(187, 973, 24, 438, '6/22/2023 3:25:34 AM'),
(188, 975, 25, 438, '6/22/2023 3:25:34 AM'),
(189, 975, 7, 438, '6/22/2023 3:25:34 AM'),
(190, 981, 2, 442, '6/22/2023 4:33:17 AM'),
(191, 981, 36, 442, '6/22/2023 4:33:17 AM'),
(192, 981, 35, 442, '6/22/2023 4:33:17 AM'),
(193, 981, 34, 442, '6/22/2023 4:33:17 AM'),
(194, 981, 33, 442, '6/22/2023 4:33:17 AM'),
(195, 981, 32, 442, '6/22/2023 4:33:17 AM'),
(196, 981, 31, 442, '6/22/2023 4:33:17 AM'),
(197, 981, 30, 442, '6/22/2023 4:33:17 AM'),
(198, 981, 29, 442, '6/22/2023 4:33:17 AM'),
(199, 981, 26, 442, '6/22/2023 4:33:17 AM'),
(200, 981, 37, 442, '6/22/2023 4:33:17 AM'),
(201, 981, 25, 442, '6/22/2023 4:33:17 AM'),
(202, 981, 23, 442, '6/22/2023 4:33:17 AM'),
(203, 981, 22, 442, '6/22/2023 4:33:17 AM'),
(204, 981, 10, 442, '6/22/2023 4:33:17 AM'),
(205, 981, 9, 442, '6/22/2023 4:33:17 AM'),
(206, 981, 8, 442, '6/22/2023 4:33:17 AM'),
(207, 981, 7, 442, '6/22/2023 4:33:17 AM'),
(208, 981, 6, 442, '6/22/2023 4:33:17 AM'),
(209, 981, 5, 442, '6/22/2023 4:33:17 AM'),
(210, 981, 3, 442, '6/22/2023 4:33:17 AM'),
(211, 981, 24, 442, '6/22/2023 4:33:17 AM'),
(212, 981, 38, 442, '6/22/2023 4:33:17 AM'),
(213, 982, 38, 442, '6/22/2023 4:33:17 AM'),
(214, 982, 33, 442, '6/22/2023 4:33:17 AM'),
(215, 982, 32, 442, '6/22/2023 4:33:17 AM'),
(216, 982, 31, 442, '6/22/2023 4:33:17 AM'),
(217, 982, 29, 442, '6/22/2023 4:33:17 AM'),
(218, 982, 26, 442, '6/22/2023 4:33:17 AM'),
(219, 982, 24, 442, '6/22/2023 4:33:17 AM'),
(220, 982, 23, 442, '6/22/2023 4:33:17 AM'),
(221, 982, 22, 442, '6/22/2023 4:33:17 AM'),
(222, 982, 9, 442, '6/22/2023 4:33:17 AM'),
(223, 982, 8, 442, '6/22/2023 4:33:17 AM'),
(224, 982, 7, 442, '6/22/2023 4:33:17 AM'),
(225, 982, 6, 442, '6/22/2023 4:33:17 AM'),
(226, 982, 2, 442, '6/22/2023 4:33:17 AM'),
(227, 983, 38, 442, '6/22/2023 4:33:17 AM'),
(228, 983, 36, 442, '6/22/2023 4:33:17 AM'),
(229, 983, 25, 442, '6/22/2023 4:33:17 AM'),
(230, 984, 38, 442, '6/22/2023 4:33:17 AM'),
(231, 984, 35, 442, '6/22/2023 4:33:17 AM'),
(232, 984, 29, 442, '6/22/2023 4:33:17 AM'),
(233, 984, 9, 442, '6/22/2023 4:33:17 AM'),
(234, 984, 8, 442, '6/22/2023 4:33:17 AM'),
(235, 985, 37, 442, '6/22/2023 4:33:17 AM'),
(236, 986, 37, 442, '6/22/2023 4:33:17 AM');

-- --------------------------------------------------------

--
-- Table structure for table `specific_user_prmission`
--

CREATE TABLE `specific_user_prmission` (
  `specific_user_prmission_id` int(11) NOT NULL,
  `content_id` int(11) DEFAULT NULL,
  `is_requested` bit(1) DEFAULT NULL,
  `request_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `modified_date` varchar(45) DEFAULT NULL,
  `created_ip` varchar(45) DEFAULT NULL,
  `modified_id` varchar(45) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `has_email` bit(1) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_Active` bit(1) DEFAULT NULL,
  `is_root` bit(1) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `is_platform_admin` bit(1) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `created_date`, `is_Active`, `is_root`, `parent_id`, `dob`, `contact_number`, `is_platform_admin`, `image`) VALUES
(1, 'Digimarket', 'Platform', 'newuser@localhost', 'fVSUBeB6Sd84xMUNDEBYlQ==', '5/16/2023 11:03:55 AM', b'1', NULL, NULL, NULL, NULL, b'1', NULL),
(438, 'abc', 'Org Owner', 'user1@localhost', 'fVSUBeB6Sd84xMUNDEBYlQ==', '5/16/2023 11:03:55 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'xyz', 'User Admin', 'user2@localhost', 'fVSUBeB6Sd84xMUNDEBYlQ==', '5/16/2023 11:05:43 AM', b'1', NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'bawa', 'ji', 'user3@localhost', 'fVSUBeB6Sd84xMUNDEBYlQ==', '5/25/2023 11:33:50 AM', NULL, NULL, NULL, 'September 27, 1981', NULL, NULL, 'kZesBbERtKWjb4nuYowvG6-received_1310800432285874.jpeg'),
(441, 'siraj', 'Munir', 'user4@localhost', 'fVSUBeB6Sd84xMUNDEBYlQ==', '5/25/2023 1:29:41 PM', b'1', NULL, NULL, 'December 31, 2002', NULL, NULL, 'dRhBxSecw3EfbFV1d2KzuN-Screenshot 2023_03-21 161615.png'),
(442, 'Martin', 'Olmos', NULL, 'fVSUBeB6Sd84xMUNDEBYlQ==', '6/22/2023 4:33:17 AM', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `username_login_student`
--

CREATE TABLE `username_login_student` (
  `username_login_student_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `link_parent_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `is_share_info` bit(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `username_login_student`
--

INSERT INTO `username_login_student` (`username_login_student_id`, `first_name`, `last_name`, `dob`, `link_parent_id`, `user_name`, `status_id`, `status`, `created_by`, `created_date`, `is_parent`, `is_share_info`, `user_id`, `image`, `is_deleted`) VALUES
(179, 'siraj', 'Munir', 'December 31, 2002', 440, 'asif', 2, 'Approved', 440, '5/25/2023 1:29:41 PM', b'1', NULL, 441, 'dRhBxSecw3EfbFV1d2KzuN-Screenshot 2023_03-21 161615.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `username_login_student_organization`
--

CREATE TABLE `username_login_student_organization` (
  `username_login_student_organization_id` int(11) NOT NULL,
  `username_login_student_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `username_login_student_organization`
--

INSERT INTO `username_login_student_organization` (`username_login_student_organization_id`, `username_login_student_id`, `organization_id`) VALUES
(1, 179, 1263);

-- --------------------------------------------------------

--
-- Table structure for table `user_content`
--

CREATE TABLE `user_content` (
  `content_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `is_duplicate` bit(1) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `short_description` longtext DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `duplicated_from` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `user_content_guid` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_content`
--

INSERT INTO `user_content` (`content_id`, `user_id`, `name`, `is_duplicate`, `organization_id`, `created_by`, `short_description`, `long_description`, `duplicated_from`, `created_date`, `user_content_guid`) VALUES
(235, 440, 'das', b'0', 1263, 440, '{\"blocks\":[{\"key\":\"dcrsu\",\"text\":\"dasdasdadasd\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}', '{\"blocks\":[{\"key\":\"5c8nf\",\"text\":\"dadasdada\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}', NULL, '5/25/2023 1:13:27 PM', '9f35cabb-9a86-47dd-aa13-23c2ec13b02f'),
(236, 438, 'Math class', b'0', 1262, 438, '{\"blocks\":[{\"key\":\"85rki\",\"text\":\"Math class test and review\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[{\"offset\":0,\"length\":26,\"style\":\"fontfamily-Georgia\"},{\"offset\":5,\"length\":6,\"style\":\"BOLD\"}],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}', '{\"blocks\":[{\"key\":\"39gcq\",\"text\":\"This is another description\",\"type\":\"unstyled\",\"depth\":0,\"inlineStyleRanges\":[],\"entityRanges\":[],\"data\":{}}],\"entityMap\":{}}', NULL, '6/22/2023 3:16:26 AM', '7c03f864-3c28-4518-8da6-73a8ec8bdfc6');

-- --------------------------------------------------------

--
-- Table structure for table `user_content_access_request`
--

CREATE TABLE `user_content_access_request` (
  `user_content_access_request_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `request_by` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `requested_date` varchar(100) DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL,
  `approved_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_content_attachments`
--

CREATE TABLE `user_content_attachments` (
  `attachments_id` int(11) NOT NULL,
  `user_content_id` int(11) NOT NULL,
  `attachment_key` varchar(100) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_content_attachments`
--

INSERT INTO `user_content_attachments` (`attachments_id`, `user_content_id`, `attachment_key`, `created_by`, `created_date`) VALUES
(1, 235, '1iNWTSFzcPQpa4yFdEz2Zn-Screenshot 2023_03-21 161615.png', 440, '5/25/2023 1:13:27 PM'),
(2, 236, 'x5FBdZMWXjb1zSn4MKFyMK-01_practice-activity-ioc-xml.pdf', 438, '6/22/2023 3:16:27 AM'),
(3, 236, 'rgRWM1BtvtrQCGg4JARktp-Introduccion OOP.pdf', 438, '6/22/2023 3:16:27 AM'),
(4, 236, 'er91CcNip1bxqyVARESDkM-partes4.pdf', 438, '6/22/2023 3:16:27 AM');

-- --------------------------------------------------------

--
-- Table structure for table `user_content_meta`
--

CREATE TABLE `user_content_meta` (
  `user_content_meta_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `key` varchar(100) DEFAULT NULL,
  `value` varchar(1000) DEFAULT NULL,
  `meta_type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_content_meta`
--

INSERT INTO `user_content_meta` (`user_content_meta_id`, `content_id`, `key`, `value`, `meta_type`) VALUES
(1, 235, 'dasas', 'https://temp-mail.org/en/', 2),
(2, 235, 'Main Topic', 'dasd', 1),
(3, 235, 'Language', 'Dutch', 1),
(4, 235, 'Target Audience Minimal Age', '2', 1),
(5, 235, 'Target Audience Maximal Age', '3', 1),
(6, 235, 'Keywords', 'dasd', 1),
(7, 235, 'Duration in minutes', '1', 1),
(8, 236, 'resource 1', 'http://www.google.com', 2),
(9, 236, 'Resource 2', 'http://www.yahoo.com', 2),
(10, 236, 'Main Topic', 'Math', 1),
(11, 236, 'Language', 'Spanish', 1),
(12, 236, 'Target Audience Minimal Age', '16', 1),
(13, 236, 'Target Audience Maximal Age', '19', 1),
(14, 236, 'Keywords', 'Math,Geometry', 1),
(15, 236, 'Duration in minutes', '200', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_content_question`
--

CREATE TABLE `user_content_question` (
  `user_content_question_id` int(11) NOT NULL,
  `question` varchar(2000) DEFAULT NULL,
  `question_description` varchar(2000) DEFAULT NULL,
  `answers` varchar(2000) DEFAULT NULL,
  `is_multiselect` bit(1) DEFAULT NULL,
  `user_content_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_content_question`
--

INSERT INTO `user_content_question` (`user_content_question_id`, `question`, `question_description`, `answers`, `is_multiselect`, `user_content_id`, `created_by`, `created_date`) VALUES
(1, 'dadad', 'ddasdasd', '[\"dadasda\",\"dqdqwd\"]', NULL, 235, 440, '5/25/2023 1:13:27 PM'),
(2, 'This is question 1', 'Question 1', '[\"answer 1\",\"answer 2\",\"answer 3\"]', b'0', 236, 438, '6/22/2023 3:16:27 AM'),
(3, 'Question 2', 'This is a description', '[\"Answer 1\",\"Answer 2\",\"Answer 3\"]', b'1', 236, 438, '6/22/2023 3:16:27 AM');

-- --------------------------------------------------------

--
-- Table structure for table `user_content_scratch_project`
--

CREATE TABLE `user_content_scratch_project` (
  `user_content_scratch_project_id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `link` varchar(2000) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `user_content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_content_scratch_project`
--

INSERT INTO `user_content_scratch_project` (`user_content_scratch_project_id`, `name`, `link`, `created_by`, `created_date`, `user_content_id`) VALUES
(1, 'dasdsa', 'https://scratch.mit.edu/projects/848776483', 440, '5/25/2023 1:13:27 PM', 235),
(2, 'Project 2', 'http://scratch.mit.edu/test1', 438, '6/22/2023 3:16:27 AM', 236),
(3, 'project 1', 'http://scratch.mit.edu', 438, '6/22/2023 3:16:27 AM', 236);

-- --------------------------------------------------------

--
-- Table structure for table `user_content_sharing_permissions`
--

CREATE TABLE `user_content_sharing_permissions` (
  `user_content_sharing_permissions_id` int(11) NOT NULL,
  `is_private` bit(1) DEFAULT NULL,
  `share_also_with_students_of_all_ogranizations` bit(1) DEFAULT NULL,
  `share_also_with_students_of_my_ogranizations` bit(1) DEFAULT NULL,
  `share_to_all_ogranizations` bit(1) DEFAULT NULL,
  `share_to_my_ogranizations` bit(1) DEFAULT NULL,
  `shared_with_specific_people` bit(1) DEFAULT NULL,
  `permissions_user_content_id` int(11) DEFAULT NULL,
  `shared_to_all` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_content_sharing_permissions`
--

INSERT INTO `user_content_sharing_permissions` (`user_content_sharing_permissions_id`, `is_private`, `share_also_with_students_of_all_ogranizations`, `share_also_with_students_of_my_ogranizations`, `share_to_all_ogranizations`, `share_to_my_ogranizations`, `shared_with_specific_people`, `permissions_user_content_id`, `shared_to_all`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, 235, b'1'),
(2, b'0', NULL, b'1', NULL, b'1', b'0', 236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_invite`
--

CREATE TABLE `user_invite` (
  `user_invite_id` int(11) NOT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` varchar(100) DEFAULT NULL,
  `registered_user_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `accepted` bit(1) DEFAULT NULL,
  `rejected` bit(1) DEFAULT NULL,
  `is_invitation_sent` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_organization`
--

CREATE TABLE `user_organization` (
  `user_organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `is_selected` bit(1) DEFAULT NULL,
  `cretaed_by` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL,
  `is_linked` bit(1) DEFAULT NULL,
  `linked_user_organization_id` int(11) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_organization`
--

INSERT INTO `user_organization` (`user_organization_id`, `user_id`, `organization_id`, `is_selected`, `cretaed_by`, `created_date`, `is_linked`, `linked_user_organization_id`, `is_active`) VALUES
(716, 438, 1262, b'0', NULL, NULL, NULL, NULL, b'1'),
(717, 439, 1262, NULL, NULL, NULL, NULL, NULL, b'1'),
(718, 440, 1263, NULL, NULL, NULL, NULL, NULL, b'1'),
(719, 441, 1263, NULL, 440, '5/25/2023 1:29:41 PM', NULL, NULL, b'1'),
(720, 438, 1264, b'1', 438, '6/22/2023 2:51:13 AM', NULL, NULL, b'1'),
(721, 442, 1265, NULL, NULL, NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `user_organization_emails`
--

CREATE TABLE `user_organization_emails` (
  `user_organization_email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pin` int(11) DEFAULT NULL,
  `pin_generated_at` varchar(45) DEFAULT NULL,
  `is_verified` bit(1) NOT NULL,
  `is_notification_on` bit(1) NOT NULL,
  `is_primary` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_organization_emails`
--

INSERT INTO `user_organization_emails` (`user_organization_email_id`, `user_id`, `organization_id`, `email`, `pin`, `pin_generated_at`, `is_verified`, `is_notification_on`, `is_primary`) VALUES
(16, 1, NULL, 'newuser@localhost', NULL, NULL, b'1', b'1', b'1'),
(182, 438, 1262, 'user1@localhost', NULL, NULL, b'1', b'1', b'1'),
(183, 439, 1262, 'user2@localhost', NULL, NULL, b'1', b'1', b'1'),
(184, 440, 1263, 'user3@localhost', NULL, NULL, b'1', b'1', b'1'),
(185, 441, 1263, 'user4@localhost', NULL, NULL, b'1', b'1', b'1'),
(186, 438, 1264, 'user1@localhost', NULL, NULL, b'1', b'1', b'1'),
(187, 442, 1265, 'demo@localhost', NULL, NULL, b'1', b'1', b'1'),
(188, 440, 1263, 'martin@test.com', 420240, '6/22/2023 5:09:11 AM', b'0', b'0', b'0'),
(189, 440, 1263, 'user6@localhost', 674582, '6/22/2023 5:17:43 AM', b'1', b'1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `user_organization_role`
--

CREATE TABLE `user_organization_role` (
  `user_organization_role_id` int(11) NOT NULL,
  `user_organization_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_organization_role`
--

INSERT INTO `user_organization_role` (`user_organization_role_id`, `user_organization_id`, `role_id`, `created_by`, `created_date`) VALUES
(1, 716, 961, 438, '5/16/2023 11:03:55 AM'),
(2, 717, 962, 439, '5/16/2023 11:05:43 AM'),
(3, 718, 967, 440, '5/25/2023 11:33:51 AM'),
(4, 719, 972, 440, '5/25/2023 1:29:41 PM'),
(5, 720, 973, 438, '6/22/2023 2:51:14 AM'),
(6, 721, 981, 442, '6/22/2023 4:33:17 AM');

-- --------------------------------------------------------

--
-- Table structure for table `user_privillage`
--

CREATE TABLE `user_privillage` (
  `user_privillage_id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `privillage_id` varchar(45) DEFAULT NULL,
  `organization_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `user_registration_id` int(11) NOT NULL,
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
  `converted_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

CREATE TABLE `user_request` (
  `user_request_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `is_approved` bit(1) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `is_rejected` bit(1) DEFAULT NULL,
  `rejected_by` int(11) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_request`
--

INSERT INTO `user_request` (`user_request_id`, `organization_id`, `first_name`, `last_name`, `email`, `is_approved`, `approved_by`, `is_rejected`, `rejected_by`, `reason`, `dob`, `contact_number`, `role_id`, `user_id`, `created_date`) VALUES
(1, 1262, 'xyz', 'User Admin', 'digiuser2@mailinator.com', b'1', 438, NULL, NULL, NULL, '', '', 962, 439, '5/16/2023 11:04:57 AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_us_id`),
  ADD KEY `contact_us_organization_id_idx` (`contact_us_organization_id`),
  ADD KEY `contact_us_created_by_idx` (`created_by`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `course_organization_id_idx` (`organization_id`),
  ADD KEY `course_created_by_idx` (`created_by`);

--
-- Indexes for table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD PRIMARY KEY (`course_lesson_id`),
  ADD KEY `course_lesson_course_id_idx` (`course_id`),
  ADD KEY `course_lesson_user_content_id_idx` (`user_content_id`);

--
-- Indexes for table `course_location`
--
ALTER TABLE `course_location`
  ADD PRIMARY KEY (`course_location_id`),
  ADD KEY `course_location_organization_id_idx` (`organization_id`),
  ADD KEY `course_location_created_by_idx` (`created_by`);

--
-- Indexes for table `course_schedule`
--
ALTER TABLE `course_schedule`
  ADD PRIMARY KEY (`course_schedule_id`),
  ADD KEY `course_schedule_course_id_idx` (`course_id`),
  ADD KEY `course_schedule_organization_id_idx` (`organization_id`),
  ADD KEY `course_schedule_created_by_idx` (`created_by`);

--
-- Indexes for table `course_schedule_attendance`
--
ALTER TABLE `course_schedule_attendance`
  ADD PRIMARY KEY (`course_schedule_attendance_id`),
  ADD KEY `course_schedule_course_details_id_idx` (`course_schedule_course_details_id`),
  ADD KEY `course_schedule_attendance_user_id_idx` (`user_id`),
  ADD KEY `course_schedule_attendance_created_by_idx` (`created_by`);

--
-- Indexes for table `course_schedule_course_details`
--
ALTER TABLE `course_schedule_course_details`
  ADD PRIMARY KEY (`course_schedule_course_details_id`),
  ADD KEY `course_schedule_course_details_course_schedule_id_idx` (`course_schedule_id`),
  ADD KEY `course_schedule_course_details_user_content_id_idx` (`user_content_id`),
  ADD KEY `course_schedule_course_details_location_id_idx` (`location_id`),
  ADD KEY `course_schedule_course_details_teacher_id_idx` (`teacher_id`);

--
-- Indexes for table `course_schedule_members`
--
ALTER TABLE `course_schedule_members`
  ADD PRIMARY KEY (`course_schedule_members_id`),
  ADD KEY `course_schedule_details_idx` (`course_schedule_course_details`),
  ADD KEY `course_schedule_member_user_id_idx` (`user_id`);

--
-- Indexes for table `on_going_class_for_user`
--
ALTER TABLE `on_going_class_for_user`
  ADD PRIMARY KEY (`on_going_class_for_user_id`),
  ADD KEY `on_going_class_for_user_course_schedule_course_details_id_idx` (`course_schedule_course_details_id`),
  ADD KEY `on_going_class_for_user_user_id_idx` (`user_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`organization_id`),
  ADD KEY `approved_by_idx` (`approved_by`),
  ADD KEY `rejected_by_idx` (`rejected_by`),
  ADD KEY `organization_creator_idx` (`creator`);

--
-- Indexes for table `organization_owner`
--
ALTER TABLE `organization_owner`
  ADD PRIMARY KEY (`organization_user_id`);

--
-- Indexes for table `organization_request`
--
ALTER TABLE `organization_request`
  ADD PRIMARY KEY (`organization_request_id`),
  ADD KEY `organization_approved_by_id` (`organization_approved_by`),
  ADD KEY `organization_rejected_by_id` (`organization_rejected_by`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `parent_student`
--
ALTER TABLE `parent_student`
  ADD PRIMARY KEY (`Parent_student_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `privillage`
--
ALTER TABLE `privillage`
  ADD PRIMARY KEY (`privillage_id`);

--
-- Indexes for table `privillage_permission`
--
ALTER TABLE `privillage_permission`
  ADD PRIMARY KEY (`role_permission_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `role_organization_id_idx` (`organization_id`),
  ADD KEY `role_created_by_idx` (`created_by`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`role_permission_id`),
  ADD KEY `role_id_idx` (`role_id`),
  ADD KEY `permission_id_idx` (`permission_id`),
  ADD KEY `role_permission_created_by_idx` (`created_by`);

--
-- Indexes for table `specific_user_prmission`
--
ALTER TABLE `specific_user_prmission`
  ADD PRIMARY KEY (`specific_user_prmission_id`),
  ADD KEY `specific_user_prmission_content_id_idx` (`content_id`),
  ADD KEY `specific_user_prmission_request_by_idx` (`request_by`),
  ADD KEY `specific_user_prmission_approved_by_idx` (`approved_by`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `username_login_student`
--
ALTER TABLE `username_login_student`
  ADD PRIMARY KEY (`username_login_student_id`),
  ADD KEY `username_login_student_link_parent_id_idx` (`link_parent_id`),
  ADD KEY `username_login_student_created_by_idx` (`created_by`),
  ADD KEY `username_login_student_user_id_idx` (`user_id`);

--
-- Indexes for table `username_login_student_organization`
--
ALTER TABLE `username_login_student_organization`
  ADD PRIMARY KEY (`username_login_student_organization_id`),
  ADD KEY `username_login_student_id_idx` (`username_login_student_id`),
  ADD KEY `username_login_student_organization_organization_id_idx` (`organization_id`);

--
-- Indexes for table `user_content`
--
ALTER TABLE `user_content`
  ADD PRIMARY KEY (`content_id`),
  ADD KEY `user_id_idx` (`user_id`),
  ADD KEY `organization_id_idx` (`organization_id`),
  ADD KEY `created_by_idx` (`created_by`),
  ADD KEY `duplicated_from_idx` (`duplicated_from`);

--
-- Indexes for table `user_content_access_request`
--
ALTER TABLE `user_content_access_request`
  ADD PRIMARY KEY (`user_content_access_request_id`),
  ADD KEY `user_content_access_request_content_id_idx` (`content_id`),
  ADD KEY `user_content_access_request_requested_by_idx` (`request_by`);

--
-- Indexes for table `user_content_attachments`
--
ALTER TABLE `user_content_attachments`
  ADD PRIMARY KEY (`attachments_id`),
  ADD KEY `user_content_id_idx` (`user_content_id`),
  ADD KEY `attachments_created_by_idx` (`created_by`);

--
-- Indexes for table `user_content_meta`
--
ALTER TABLE `user_content_meta`
  ADD PRIMARY KEY (`user_content_meta_id`),
  ADD KEY `user_content_id_idx` (`content_id`);

--
-- Indexes for table `user_content_question`
--
ALTER TABLE `user_content_question`
  ADD PRIMARY KEY (`user_content_question_id`),
  ADD KEY `user_content_question_user_content_id_idx` (`user_content_id`),
  ADD KEY `user_content_question_created_by_idx` (`created_by`);

--
-- Indexes for table `user_content_scratch_project`
--
ALTER TABLE `user_content_scratch_project`
  ADD PRIMARY KEY (`user_content_scratch_project_id`),
  ADD KEY `user_content_scratch_project_created_by_idx` (`created_by`),
  ADD KEY `user_content_scratch_project_content_id_idx` (`user_content_id`);

--
-- Indexes for table `user_content_sharing_permissions`
--
ALTER TABLE `user_content_sharing_permissions`
  ADD PRIMARY KEY (`user_content_sharing_permissions_id`),
  ADD KEY `permissions_user_content_id_idx` (`permissions_user_content_id`);

--
-- Indexes for table `user_invite`
--
ALTER TABLE `user_invite`
  ADD PRIMARY KEY (`user_invite_id`),
  ADD KEY `user_invite_created_by_idx` (`created_by`),
  ADD KEY `user_invite_registered_user_id_idx` (`registered_user_id`),
  ADD KEY `user_invite_role_id_idx` (`role_id`),
  ADD KEY `user_invite_organization_id_idx` (`organization_id`);

--
-- Indexes for table `user_organization`
--
ALTER TABLE `user_organization`
  ADD PRIMARY KEY (`user_organization_id`),
  ADD KEY `user_organization_user_id_idx` (`user_id`),
  ADD KEY `user_organization_organization_id_idx` (`organization_id`),
  ADD KEY `user_organization_created_by_idx` (`cretaed_by`);

--
-- Indexes for table `user_organization_emails`
--
ALTER TABLE `user_organization_emails`
  ADD PRIMARY KEY (`user_organization_email_id`),
  ADD KEY `user_organization_email_user_id_idx` (`user_id`),
  ADD KEY `user_organization_email_organization_id_idx` (`organization_id`);

--
-- Indexes for table `user_organization_role`
--
ALTER TABLE `user_organization_role`
  ADD PRIMARY KEY (`user_organization_role_id`),
  ADD KEY `role_id_idx` (`role_id`),
  ADD KEY `user_organization_id_idx` (`user_organization_id`),
  ADD KEY `user_organization_role_created_by_idx` (`created_by`);

--
-- Indexes for table `user_privillage`
--
ALTER TABLE `user_privillage`
  ADD PRIMARY KEY (`user_privillage_id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`user_registration_id`);

--
-- Indexes for table `user_request`
--
ALTER TABLE `user_request`
  ADD PRIMARY KEY (`user_request_id`),
  ADD KEY `user_request_organization_id_idx` (`organization_id`),
  ADD KEY `user_request_rejected_by_idx` (`rejected_by`),
  ADD KEY `user_request_approved_by_idx` (`approved_by`),
  ADD KEY `user_request_role_id_idx` (`role_id`),
  ADD KEY `user_request_user_id_idx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_us_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `course_lesson`
--
ALTER TABLE `course_lesson`
  MODIFY `course_lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_location`
--
ALTER TABLE `course_location`
  MODIFY `course_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `course_schedule`
--
ALTER TABLE `course_schedule`
  MODIFY `course_schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `course_schedule_attendance`
--
ALTER TABLE `course_schedule_attendance`
  MODIFY `course_schedule_attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_schedule_course_details`
--
ALTER TABLE `course_schedule_course_details`
  MODIFY `course_schedule_course_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `course_schedule_members`
--
ALTER TABLE `course_schedule_members`
  MODIFY `course_schedule_members_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `on_going_class_for_user`
--
ALTER TABLE `on_going_class_for_user`
  MODIFY `on_going_class_for_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1266;

--
-- AUTO_INCREMENT for table `organization_owner`
--
ALTER TABLE `organization_owner`
  MODIFY `organization_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `organization_request`
--
ALTER TABLE `organization_request`
  MODIFY `organization_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parent_student`
--
ALTER TABLE `parent_student`
  MODIFY `Parent_student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=987;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `role_permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `specific_user_prmission`
--
ALTER TABLE `specific_user_prmission`
  MODIFY `specific_user_prmission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `username_login_student`
--
ALTER TABLE `username_login_student`
  MODIFY `username_login_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `username_login_student_organization`
--
ALTER TABLE `username_login_student_organization`
  MODIFY `username_login_student_organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_content`
--
ALTER TABLE `user_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `user_content_access_request`
--
ALTER TABLE `user_content_access_request`
  MODIFY `user_content_access_request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_content_attachments`
--
ALTER TABLE `user_content_attachments`
  MODIFY `attachments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_content_meta`
--
ALTER TABLE `user_content_meta`
  MODIFY `user_content_meta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_content_question`
--
ALTER TABLE `user_content_question`
  MODIFY `user_content_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_content_scratch_project`
--
ALTER TABLE `user_content_scratch_project`
  MODIFY `user_content_scratch_project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_content_sharing_permissions`
--
ALTER TABLE `user_content_sharing_permissions`
  MODIFY `user_content_sharing_permissions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_invite`
--
ALTER TABLE `user_invite`
  MODIFY `user_invite_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_organization`
--
ALTER TABLE `user_organization`
  MODIFY `user_organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=722;

--
-- AUTO_INCREMENT for table `user_organization_emails`
--
ALTER TABLE `user_organization_emails`
  MODIFY `user_organization_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `user_organization_role`
--
ALTER TABLE `user_organization_role`
  MODIFY `user_organization_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_privillage`
--
ALTER TABLE `user_privillage`
  MODIFY `user_privillage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_request`
--
ALTER TABLE `user_request`
  MODIFY `user_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD CONSTRAINT `contact_us_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `contact_us_organization_id` FOREIGN KEY (`contact_us_organization_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `course_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD CONSTRAINT `course_lesson_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `course_lesson_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`);

--
-- Constraints for table `course_location`
--
ALTER TABLE `course_location`
  ADD CONSTRAINT `course_location_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `course_location_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `course_schedule`
--
ALTER TABLE `course_schedule`
  ADD CONSTRAINT `course_schedule_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `course_schedule_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `course_schedule_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `course_schedule_attendance`
--
ALTER TABLE `course_schedule_attendance`
  ADD CONSTRAINT `course_schedule_attendance_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `course_schedule_attendance_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `course_schedule_course_details_id` FOREIGN KEY (`course_schedule_course_details_id`) REFERENCES `course_schedule_course_details` (`course_schedule_course_details_id`);

--
-- Constraints for table `course_schedule_course_details`
--
ALTER TABLE `course_schedule_course_details`
  ADD CONSTRAINT `course_schedule_course_details_course_schedule_id` FOREIGN KEY (`course_schedule_id`) REFERENCES `course_schedule` (`course_schedule_id`),
  ADD CONSTRAINT `course_schedule_course_details_location_id` FOREIGN KEY (`location_id`) REFERENCES `course_location` (`course_location_id`),
  ADD CONSTRAINT `course_schedule_course_details_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `course_schedule_course_details_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`);

--
-- Constraints for table `course_schedule_members`
--
ALTER TABLE `course_schedule_members`
  ADD CONSTRAINT `course_schedule_details` FOREIGN KEY (`course_schedule_course_details`) REFERENCES `course_schedule_course_details` (`course_schedule_course_details_id`),
  ADD CONSTRAINT `course_schedule_member_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `on_going_class_for_user`
--
ALTER TABLE `on_going_class_for_user`
  ADD CONSTRAINT `on_going_class_for_user_course_schedule_course_details_id` FOREIGN KEY (`course_schedule_course_details_id`) REFERENCES `course_schedule_course_details` (`course_schedule_course_details_id`),
  ADD CONSTRAINT `on_going_class_for_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `approved_by` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `creator` FOREIGN KEY (`creator`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `organization_request`
--
ALTER TABLE `organization_request`
  ADD CONSTRAINT `organization_approved_by` FOREIGN KEY (`organization_approved_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `organization_rejected_by` FOREIGN KEY (`organization_rejected_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `role_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `permission_id` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `role_permission_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `specific_user_prmission`
--
ALTER TABLE `specific_user_prmission`
  ADD CONSTRAINT `specific_user_prmission_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `specific_user_prmission_content_id` FOREIGN KEY (`content_id`) REFERENCES `user_content` (`content_id`),
  ADD CONSTRAINT `specific_user_prmission_request_by` FOREIGN KEY (`request_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `username_login_student`
--
ALTER TABLE `username_login_student`
  ADD CONSTRAINT `username_login_student_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `username_login_student_link_parent_id` FOREIGN KEY (`link_parent_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `username_login_student_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `username_login_student_organization`
--
ALTER TABLE `username_login_student_organization`
  ADD CONSTRAINT `username_login_student_id` FOREIGN KEY (`username_login_student_id`) REFERENCES `username_login_student` (`username_login_student_id`),
  ADD CONSTRAINT `username_login_student_organization_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`);

--
-- Constraints for table `user_content`
--
ALTER TABLE `user_content`
  ADD CONSTRAINT `created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `duplicated_from` FOREIGN KEY (`duplicated_from`) REFERENCES `user_content` (`content_id`),
  ADD CONSTRAINT `organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_content_access_request`
--
ALTER TABLE `user_content_access_request`
  ADD CONSTRAINT `user_content_access_request_content_id` FOREIGN KEY (`content_id`) REFERENCES `user_content` (`content_id`),
  ADD CONSTRAINT `user_content_access_request_requested_by` FOREIGN KEY (`request_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_content_attachments`
--
ALTER TABLE `user_content_attachments`
  ADD CONSTRAINT `attachments_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `attachments_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`);

--
-- Constraints for table `user_content_meta`
--
ALTER TABLE `user_content_meta`
  ADD CONSTRAINT `user_content_id` FOREIGN KEY (`content_id`) REFERENCES `user_content` (`content_id`);

--
-- Constraints for table `user_content_question`
--
ALTER TABLE `user_content_question`
  ADD CONSTRAINT `user_content_question_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_content_question_user_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`);

--
-- Constraints for table `user_content_scratch_project`
--
ALTER TABLE `user_content_scratch_project`
  ADD CONSTRAINT `user_content_scratch_project_content_id` FOREIGN KEY (`user_content_id`) REFERENCES `user_content` (`content_id`),
  ADD CONSTRAINT `user_content_scratch_project_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_content_sharing_permissions`
--
ALTER TABLE `user_content_sharing_permissions`
  ADD CONSTRAINT `permissions_user_content_id` FOREIGN KEY (`permissions_user_content_id`) REFERENCES `user_content` (`content_id`);

--
-- Constraints for table `user_invite`
--
ALTER TABLE `user_invite`
  ADD CONSTRAINT `user_invite_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_invite_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `user_invite_registered_user_id` FOREIGN KEY (`registered_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_invite_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Constraints for table `user_organization`
--
ALTER TABLE `user_organization`
  ADD CONSTRAINT `user_organization_created_by` FOREIGN KEY (`cretaed_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_organization_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `user_organization_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_organization_emails`
--
ALTER TABLE `user_organization_emails`
  ADD CONSTRAINT `user_organization_email_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `user_organization_email_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_organization_role`
--
ALTER TABLE `user_organization_role`
  ADD CONSTRAINT `user_oganization_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `user_organization_id` FOREIGN KEY (`user_organization_id`) REFERENCES `user_organization` (`user_organization_id`),
  ADD CONSTRAINT `user_organization_role_created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user_request`
--
ALTER TABLE `user_request`
  ADD CONSTRAINT `user_request_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_request_organization_id` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`organization_id`),
  ADD CONSTRAINT `user_request_rejected_by` FOREIGN KEY (`rejected_by`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_request_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `user_request_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
