-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 01:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `date_log` datetime NOT NULL DEFAULT current_timestamp(),
  `action` text NOT NULL,
  `session_id` varchar(255) NOT NULL DEFAULT '',
  `user_level` varchar(100) NOT NULL DEFAULT '0',
  `system_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `user_id`, `date_log`, `action`, `session_id`, `user_level`, `system_id`) VALUES
(1, 1, '2022-05-16 06:08:22', 'Reset Password Admin Account:SAMPLE_REGS - DETAILS : \r\n({\"ADMIN_ID\":\"2\",\"ADMIN_NO\":\"SAMPLE_REGS\",\"FIRSTNAME\":\"SAMPLE_REGS\",\"LASTNAME\":\"LAST\",\"USERNAME\":\"SAMPLE_REGS\",\"USER_ROLE\":\"2\"})', '7484452f8fe5377df1a67a3a83e6d50bf705662458b4f799a61c6d1fd7948412', '1', 0),
(2, 1, '2022-05-16 06:09:46', 'Delete User/s - DETAILS : \r\n( SAMPLE_REGS::SAMPLE_REGS LAST::dark_devil888@yahoo.com [2] )', '7484452f8fe5377df1a67a3a83e6d50bf705662458b4f799a61c6d1fd7948412', '1', 0),
(3, 1, '2022-06-10 01:49:22', 'Update User ituser USER_ID:1 - FROM Details {\"FIRST_NAME\":\"ALVIN\",\"LAST_NAME\":\"MONTIANO\",\"EMAIL\":\"ammontiano@ccc.edu.ph\"} TO {\"FIRST_NAME\":\"RONNEL\",\"LAST_NAME\":\"MACOMPAS\",\"EMAIL\":\"ronnel.macompas@ccc.edu.ph\"}', '12839537228cb0cdda7a14d75e9e76a04e8797db8495fc718c0517e0e5f1d877', '1', 0),
(4, 1, '2022-06-12 15:15:17', 'Add User nel Details::{\"USER_ID\":3,\"USERNAME\":\"nel\",\"FIRST_NAME\":\"neru\",\"LAST_NAME\":\"tokisaki\",\"USER_ROLE\":\"2\",\"EMAIL\":\"neru@gmail.com\"}', 'fba6fbc650309dbf206dc4f6ffffad412b16c1cbc8a9495d8090b77c9a034b1b', '1', 0),
(5, 1, '2022-06-12 15:15:23', 'Delete User/s - DETAILS : \r\n( nel::neru tokisaki::neru@gmail.com [3] )', 'fba6fbc650309dbf206dc4f6ffffad412b16c1cbc8a9495d8090b77c9a034b1b', '1', 0),
(6, 1, '2022-06-12 21:01:55', 'Add User nel Details::{\"USER_ID\":4,\"USERNAME\":\"nel\",\"FIRST_NAME\":\"neru\",\"LAST_NAME\":\"tokisaki\",\"USER_ROLE\":\"2\",\"EMAIL\":\"neru@gmail.com\"}', 'ad22fbcd797fb17c5643b73ddf1acbc29d9b1b3f5ea38ddddbadbbf886c24547', '1', 0),
(7, 1, '2022-06-12 21:09:25', 'Delete User/s - DETAILS : \r\n( nel::neru tokisaki::neru@gmail.com [4] )', 'ad22fbcd797fb17c5643b73ddf1acbc29d9b1b3f5ea38ddddbadbbf886c24547', '1', 0),
(8, 1, '2022-06-12 21:09:41', 'Add User nel Details::{\"USER_ID\":5,\"USERNAME\":\"nel\",\"FIRST_NAME\":\"neru\",\"LAST_NAME\":\"tokisaki\",\"USER_ROLE\":\"2\",\"EMAIL\":\"neru@gmail.com\"}', 'ad22fbcd797fb17c5643b73ddf1acbc29d9b1b3f5ea38ddddbadbbf886c24547', '1', 0),
(9, 1, '2022-06-12 21:10:27', 'Delete User/s - DETAILS : \r\n( nel::neru tokisaki::neru@gmail.com [5] )', 'ad22fbcd797fb17c5643b73ddf1acbc29d9b1b3f5ea38ddddbadbbf886c24547', '1', 0),
(10, 1, '2022-06-12 21:11:50', 'Update User nel USER_ID:5 - FROM Details {\"USER_NO\":\"\",\"EMAIL\":\"\"} TO {\"USER_NO\":\"nel\",\"EMAIL\":\"neru@gmail.com\"}', 'ad22fbcd797fb17c5643b73ddf1acbc29d9b1b3f5ea38ddddbadbbf886c24547', '1', 0),
(11, 1, '2022-06-13 10:17:17', 'Add User nel Details::{\"USER_ID\":6,\"USERNAME\":\"nel\",\"FIRST_NAME\":\"neru\",\"LAST_NAME\":\"tokisaki\",\"USER_ROLE\":\"2\",\"EMAIL\":\"neru2@gmail.com\"}', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(12, 1, '2022-06-13 10:17:25', 'Delete User/s - DETAILS : \r\n( nel::neru tokisaki::neru2@gmail.com [6] )', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(13, 1, '2022-06-13 10:17:34', 'Add User nel Details::{\"USER_ID\":7,\"USERNAME\":\"nel\",\"FIRST_NAME\":\"neru\",\"LAST_NAME\":\"tokisaki\",\"USER_ROLE\":\"2\",\"EMAIL\":\"neru@gmail.com\"}', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(14, 1, '2022-06-13 10:17:43', 'Update User nell;ll USER_ID:7 - FROM Details {\"USER_NO\":\"nel\"} TO {\"USER_NO\":\"nell;ll\"}', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(15, 1, '2022-06-13 10:21:04', 'Update User nely USER_ID:7 - FROM Details {\"USER_NO\":\"nell;ll\"} TO {\"USER_NO\":\"nely\"}', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(16, 1, '2022-06-13 10:21:14', 'Update User nely USER_ID:7 - FROM Details {\"USER_ROLE\":\"2\"} TO {\"USER_ROLE\":\"3\"}', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(17, 1, '2022-06-13 10:26:22', 'Add User nel Details::{\"USER_ID\":8,\"USERNAME\":\"nel\",\"FIRST_NAME\":\"neru\",\"LAST_NAME\":\"tokisaki\",\"USER_ROLE\":\"2\",\"EMAIL\":\"neru@gmail.com\"}', '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '1', 0),
(18, 1, '2022-06-13 10:29:27', 'Reset Password Admin Account:nel - DETAILS : \r\n({\"ADMIN_ID\":\"8\",\"ADMIN_NO\":\"nel\",\"FIRSTNAME\":\"neru\",\"LASTNAME\":\"tokisaki\",\"USERNAME\":\"nel\",\"USER_ROLE\":\"2\"})', '4d0896c27845ebc40376ef3c310cd08997bba1ecc0870dc60489a38dda14e6ed', '1', 0),
(19, 1, '2022-06-13 11:46:39', 'Update User nel USER_ID:8 - FROM Details {\"USER_ROLE\":\"2\"} TO {\"USER_ROLE\":\"3\"}', '4a882e54b6c2ebf34dec6872faedf296f7b08b5fbd41b05b14550afcfb6a42af', '1', 0),
(20, 1, '2022-06-13 11:47:18', 'Update User nel USER_ID:8 - FROM Details {\"USER_ROLE\":\"3\"} TO {\"USER_ROLE\":\"2\"}', '4a882e54b6c2ebf34dec6872faedf296f7b08b5fbd41b05b14550afcfb6a42af', '1', 0),
(21, 1, '2022-06-21 10:26:56', 'Reset Password Admin Account:ituser - DETAILS : \r\n({\"ADMIN_ID\":\"1\",\"ADMIN_NO\":\"ituser\",\"FIRSTNAME\":\"aaaa\",\"LASTNAME\":\"ddd\",\"USERNAME\":\"ituser\",\"USER_ROLE\":\"1\"})', 'f35a359c06d8c2d6a60267187bc93e6e96a019574ec260ca2206b8e43e5109d9', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `course_id` int(11) NOT NULL,
  `course_long` varchar(255) NOT NULL DEFAULT '',
  `course_short` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`course_id`, `course_long`, `course_short`, `status`) VALUES
(1, 'Bachelor of Science in Information Technology', 'BSIT', 0),
(2, 'Bachelor of Science in Computer Science', 'BSCS', 0),
(3, 'Bachelor of Science in Accountancy and Information System', 'BSAIS', 0),
(4, 'Bachelor of Science in Accountancy', 'BSA', 0),
(5, 'Bachelor of Elementary Education', 'BEEd', 0),
(6, 'Bachelor of Science in Secondary Education - Mathematics', 'BSEdM', 0),
(7, 'Bachelor of Science in Secondary Education - English', 'BSEdE', 0),
(8, 'Bachelor of Science in Secondary Education - Science', 'BSEdS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reset_code`
--

CREATE TABLE `reset_code` (
  `reset_id` int(11) NOT NULL,
  `reset_code` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `email_address` varchar(50) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `expire_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0,
  `user_type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(50) NOT NULL DEFAULT '',
  `sem` varchar(50) NOT NULL DEFAULT '',
  `prelim_date_from` date DEFAULT NULL,
  `prelim_date_to` date DEFAULT NULL,
  `mid_date_from` date DEFAULT NULL,
  `mid_date_to` date DEFAULT NULL,
  `final_date_from` date DEFAULT NULL,
  `final_date_to` date DEFAULT NULL,
  `flag_used` int(11) NOT NULL DEFAULT 1,
  `manual_term` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`, `sem`, `prelim_date_from`, `prelim_date_to`, `mid_date_from`, `mid_date_to`, `final_date_from`, `final_date_to`, `flag_used`, `manual_term`) VALUES
(1, '2021-2022', '1st Semester', '2022-03-31', NULL, '2022-04-21', NULL, '2023-05-19', NULL, 0, 3),
(2, '2021-2022', '1st', '2022-01-27', NULL, '2022-03-24', NULL, '2022-04-08', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL DEFAULT '',
  `subject_title` varchar(100) NOT NULL DEFAULT '',
  `category` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL DEFAULT '',
  `unit` int(11) NOT NULL DEFAULT 0,
  `Pre_req` varchar(100) NOT NULL DEFAULT '',
  `semester` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`, `status`) VALUES
(1, 'ABC 301', 'Accounting for Business Combinations', '', '', 3, '', '', 0),
(2, 'AGNPO 401', 'Accoounting for Government & NGO', '', '', 3, '', '', 0),
(3, 'ALG 101', 'Linear Algebra', '', '', 3, '', '', 0),
(4, 'AR 401', 'Accounting Research 2', '', '', 3, '', '', 0),
(5, 'ARM 301', 'Accounting Research Methods', '', '', 3, '', '', 0),
(6, 'ARTAP 201', 'Art Appreciation', '', '', 3, '', '', 0),
(7, 'ASCA 301', 'Auditing and Assurance Concepts & Ap 1', '', '', 3, '', '', 0),
(8, 'ASP 301', 'Auditing and Assurance Principle', '', '', 3, '', '', 0),
(9, 'AST 301', 'Accounting for Special Transactions', '', '', 3, '', '', 0),
(10, 'BLR 301', 'Business Law and Regulations - 1', '', '', 3, '', '', 0),
(11, 'CAP 401', 'Capstone Project/Research 2', '', '', 3, '', '', 0),
(12, 'CEEL 301A', 'IT Elective 1', '', '', 3, '', '', 0),
(13, 'CEEL 301B', 'IT Elective 2', '', '', 3, '', '', 0),
(14, 'CEEL 401A', 'Security Awareness', '', '', 3, '', '', 0),
(15, 'CEEL 401B', 'Multimedia', '', '', 3, '', '', 0),
(16, 'CEEL 401C', 'Theory of Automata and Formal Languages', '', '', 3, '', '', 0),
(17, 'CFAS 201', 'Conceptual FW & Accounting Standards', '', '', 3, '', '', 0),
(18, 'CS 101', 'Fundamentals of Programming', '', '', 3, '', '', 0),
(19, 'CS 201', 'Database Management System', '', '', 3, '', '', 0),
(20, 'CS 211', 'Web Design and Programming', '', '', 3, '', '', 0),
(21, 'CS 221', 'Programming Languages', '', '', 3, '', '', 0),
(22, 'CS 231', 'Advanced Object-Oriented Programming', '', '', 3, '', '', 0),
(23, 'DIS 201', 'Discrete Mathematics', '', '', 3, '', '', 0),
(24, 'EDUC 101', 'The Child and Adolescent Learning Principles', '', '', 3, '', '', 0),
(25, 'EDUC 201', 'Facilitating Learner-Centered Teaching and Learning', '', '', 3, '', '', 0),
(26, 'EDUC 201A', 'Technology for Teaching and Learning 1', '', '', 3, '', '', 0),
(27, 'EDUC 301', 'Assessment of Learning 1', '', '', 3, '', '', 0),
(28, 'EDUC 301A', 'The Teacher and the School Curriculum', '', '', 3, '', '', 0),
(29, 'EDUC 401', 'Field Study 1 & 2', '', '', 6, '', '', 0),
(30, 'EEDM 201', 'Pagtuturo ng Filipino sa Elementarya 1-Estruktura at Gamit ng Wikang Filipino', '', '', 3, '', '', 0),
(31, 'EEDM 201A', 'Teaching Math in Primary Grades', '', '', 3, '', '', 0),
(32, 'EEDM 201B', 'Good Manners and Right Conduct (Educakasyon sa Pagpapakatao)', '', '', 3, '', '', 0),
(33, 'EEDM 301', 'Teaching Math in the Intermediate Grades', '', '', 3, '', '', 0),
(34, 'EEDM 301A', 'Edukasyong Pantahanan at Pangkabuhayan (1)', '', '', 3, '', '', 0),
(35, 'EEDM 301B', 'Content and Pedagogy in the Mother-Tongue', '', '', 3, '', '', 0),
(36, 'EEDM 301C', 'Teaching Music in the Elementary Grades', '', '', 3, '', '', 0),
(37, 'EEDM 301D', 'Teaching Arts in the Elementary Grades', '', '', 3, '', '', 0),
(38, 'EEDM 301E', 'Teaching English in the Elementary Grades (Language Arts)', '', '', 3, '', '', 0),
(39, 'EEDM 301F', 'Introduction to Research in Education', '', '', 3, '', '', 0),
(40, 'EL 201', 'Accounting', '', '', 3, '', '', 0),
(41, 'ENGM 101', 'Introduction to Linguistics', '', '', 3, '', '', 0),
(42, 'ENGM 201', 'Mythology and Folklore', '', '', 3, '', '', 0),
(43, 'ENGM 201A', 'Principles and Theories of Language Acquisition and Learning', '', '', 3, '', '', 0),
(44, 'ENGM 201B', 'Teaching and Assessment of Literature Studies', '', '', 3, '', '', 0),
(45, 'ENGM 201C', 'Teaching and Assessment of the Macroskills', '', '', 3, '', '', 0),
(46, 'ENGM 301', 'Introduction to Research', '', '', 3, '', '', 0),
(47, 'ENGM 301A', 'Language, Culture , and Society', '', '', 3, '', '', 0),
(48, 'ENGM 301B', 'Mythology and Folklore', '', '', 3, '', '', 0),
(49, 'ENGM 301C', 'Survey of Philippine Literature in English', '', '', 3, '', '', 0),
(50, 'ENGM 301D', 'Survey of Afro-Asian Literature', '', '', 3, '', '', 0),
(51, 'ENGM 301E', 'Technical Writing', '', '', 3, '', '', 0),
(52, 'ENV 201', 'Environmental Sciences', '', '', 3, '', '', 0),
(53, 'ESP 201', 'English for Specific Purposes', '', '', 3, '', '', 0),
(54, 'FAR 101A', 'Financial Accounting and Reporting -A', '', '', 3, '', '', 0),
(55, 'FIL 101', 'Komunikasyon sa Akademikong Filipino', '', '', 3, '', '', 0),
(56, 'FIL 201', 'Masining Na Pagpapahayag', '', '', 3, '', '', 0),
(57, 'FM 201', 'Financial Market', '', '', 3, '', '', 0),
(58, 'GCE 401', 'Glocal Citizenship Education', '', '', 3, '', '', 0),
(59, 'IA 201', 'Intermediate Accounting 2', '', '', 6, '', '', 0),
(60, 'IAS 301', 'Information Assurance and Security 2', '', '', 3, '', '', 0),
(61, 'IAS 301A', 'Information Assurance and Security', '', '', 3, '', '', 0),
(62, 'IE 101', 'Interactive English', '', '', 3, '', '', 0),
(63, 'IT 101', 'Introduction to Computing', '', '', 3, '', '', 0),
(64, 'IT 211', 'Database Management System', '', '', 3, '', '', 0),
(65, 'IT 221', 'Web Design and Programming', '', '', 3, '', '', 0),
(66, 'ITAPP 201', 'IT Application Tools in Business', '', '', 3, '', '', 0),
(67, 'ITE 101', 'Living in the IT Era', '', '', 3, '', '', 0),
(68, 'ITE 301', 'Living in the IT Era', '', '', 3, '', '', 0),
(69, 'MANCO 101', 'Managerial Economics', '', '', 3, '', '', 0),
(70, 'MATH 101', 'Math in the Modern World', '', '', 3, '', '', 0),
(71, 'MEM 101', 'College and Advanced Algebra', '', '', 3, '', '', 0),
(72, 'MEM 201', 'History of Mathematics', '', '', 3, '', '', 0),
(73, 'MEM 201A', 'Calculus 1 w/ Analytic Geometry', '', '', 4, '', '', 0),
(74, 'MEM 201B', 'Elementary Statistics and Probability', '', '', 3, '', '', 0),
(75, 'MEM 201C', 'Mathematics of Investment', '', '', 3, '', '', 0),
(76, 'MEM 301', 'Calculus 3', '', '', 3, '', '', 0),
(77, 'MEM 301A', 'Modern Geometry', '', '', 3, '', '', 0),
(78, 'MEM 301B', 'Principles and Strategies in Teaching Mathematics', '', '', 3, '', '', 0),
(79, 'MEM 301C', 'Number Theory', '', '', 3, '', '', 0),
(80, 'MEM 301D', 'Linear Algebra', '', '', 3, '', '', 0),
(81, 'MEM 301E', 'Introduction to Research Education', '', '', 3, '', '', 0),
(82, 'MMW 101', 'Mathematics in the Modern World', '', '', 3, '', '', 0),
(83, 'MS 301', 'Management Science', '', '', 3, '', '', 0),
(84, 'NC301', 'Networks and Communications', '', '', 3, '', '', 0),
(85, 'NET 201', 'Computer Networking 2', '', '', 3, '', '', 0),
(86, 'NSTP 101', 'National Service Trainig Program 1', '', '', 3, '', '', 0),
(87, 'PAC 101', 'Partnership and Corporation Accounting', '', '', 6, '', '', 0),
(88, 'PE 101', 'Physical Education 1', '', '', 2, '', '', 0),
(89, 'PE 201', 'Physical Education 3', '', '', 2, '', '', 0),
(90, 'PLIT 301', 'Philippine Literature', '', '', 3, '', '', 0),
(91, 'PROG 301', 'Application Development & Emerging Technologies', '', '', 3, '', '', 0),
(92, 'RFLIB 401', 'Regulatory FW and Legal Issues in Business', '', '', 3, '', '', 0),
(93, 'RIZAL 201', 'The Life and Works of Jose Rizal', '', '', 3, '', '', 0),
(94, 'RIZAL 301', 'The Life and Works of Jose Rizal', '', '', 3, '', '', 0),
(95, 'RPH 201', 'Readings in Philippine History', '', '', 3, '', '', 0),
(96, 'SASA 301', 'Statistical Analysis with Software Application', '', '', 3, '', '', 0),
(97, 'SBA 401', 'Strategic Business Analysis', '', '', 3, '', '', 0),
(98, 'SE 301', 'Software Engineering 2', '', '', 3, '', '', 0),
(99, 'SEC 101', 'Security Awareness', '', '', 3, '', '', 0),
(100, 'SEM 101', 'Inorganic Chemistry with Lab', '', '', 5, '', '', 0),
(101, 'SEM 201', 'Organic Chemistry with Lab', '', '', 5, '', '', 0),
(102, 'SEM 201A', 'Fluid Mechanics', '', '', 3, '', '', 0),
(103, 'SEM 201B', 'Electricity and Magnetism with Lab', '', '', 4, '', '', 0),
(104, 'SEM 301', 'Organic Chemistry', '', '', 5, '', '', 0),
(105, 'SEM 301A', 'Analytical Chemistry with Lab', '', '', 5, '', '', 0),
(106, 'SEM 301B', 'Anatomy and Physiology', '', '', 4, '', '', 0),
(107, 'SEM 301C', 'Waves and Optics with Lab', '', '', 4, '', '', 0),
(108, 'SEM 301E', 'Introduction to Research Education', '', '', 3, '', '', 0),
(109, 'SIA 301', 'System Integration and Architecture', '', '', 3, '', '', 0),
(110, 'SM 401', 'Strategic Management', '', '', 3, '', '', 0),
(111, 'TCW 101', 'The Contemporary World', '', '', 3, '', '', 0),
(112, 'TCW 201', 'The Contemporary World', '', '', 3, '', '', 0),
(113, 'TEEC 401', 'Teacher Education Enrichment Course 1', '', '', 3, '', '', 0),
(114, 'TEM 201', 'The Entrepreneurial Mind', '', '', 3, '', '', 0),
(115, 'THESIS 401', 'Thesis 2', '', '', 3, '', '', 0),
(116, 'US 101', 'Understanding the Self', '', '', 3, '', '', 0),
(117, 'WEB 301', 'Web System & Technology', '', '', 3, '', '', 0),
(118, 'WLIT 201', 'World Literature', '', '', 3, '', '', 0),
(119, 'ETHICS 301', 'Professional Ethics', '', '', 3, '', '', 0),
(120, 'EDUC 301B', 'Electricity and Magnetism with Labs', '', '', 4, '', '', 0),
(121, 'CAP302', 'Capstone Project/Research 1', '', '', 3, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surveys_records`
--

CREATE TABLE `tbl_surveys_records` (
  `id` int(11) NOT NULL,
  `survey_name` varchar(255) NOT NULL,
  `date_log` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_surveys_records`
--

INSERT INTO `tbl_surveys_records` (`id`, `survey_name`, `date_log`) VALUES
(1, 'survey 1', '2022-06-10 09:20:22'),
(2, 'survey 2', '2022-05-10 09:20:58'),
(3, 'survey 3', '2022-06-10 09:21:19'),
(4, 'survey 5', '2021-06-10 09:21:29'),
(5, 'survey 6', '2021-06-10 09:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL DEFAULT 0,
  `class_id` int(11) NOT NULL DEFAULT 0,
  `subject_id` int(11) NOT NULL DEFAULT 0,
  `subject_text` varchar(255) NOT NULL DEFAULT '',
  `thumbnails` text NOT NULL DEFAULT '',
  `school_year` varchar(100) NOT NULL DEFAULT '',
  `sem` varchar(20) NOT NULL DEFAULT '',
  `schoolyear_id` int(11) NOT NULL DEFAULT 0,
  `date_added` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `subject_text`, `thumbnails`, `school_year`, `sem`, `schoolyear_id`, `date_added`) VALUES
(546, 12, 32, 6, 'Art Appreciation', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(547, 103, 32, 17, 'Conceptual FW & Accounting Standards', '', '(M)8:30am-10:00am / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(548, 26, 32, 53, 'English for Specific Purposes', '', '(T)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(549, 106, 32, 57, 'Financial Market', '', '(M)2:30pm-4:00pm / (M)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(550, 74, 32, 59, 'Intermediate Accounting 2', '', '(W)1:00pm-4:00pm / (Th)1:00pm-4:00pm', '6', 1, '2021-10-08'),
(551, 43, 32, 66, 'IT Application Tools in Business', '', '(F)8:30am-10:00am / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(552, 119, 32, 89, 'Physical Education 3', '', '(T)5:30pm-6:30pm / (T)6:30pm-7:30pm', '2', 1, '2021-10-08'),
(553, 90, 32, 112, 'The Contemporary World', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(554, 11, 32, 114, 'The Entrepreneurial Mind', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(555, 16, 8, 12, 'Technopreneurship', '', '(W)4:00pm-5:30pm / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(556, 1, 8, 13, 'File Organization', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(557, 34, 8, 60, 'Information Assurance and Security 2', '', '(W)2:30pm-4:00pm / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(558, 73, 8, 68, 'Living in the IT Era', '', 'Modular Learning', '3', 1, '2021-10-08'),
(559, 102, 8, 98, 'Software Engineering 2', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(560, 10, 8, 109, 'System Integration and Architecture', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(561, 45, 8, 117, 'Web System & Technology', '', '(M)10:00am-11:30am / (W)11:30am-1:00pm', '3', 1, '2021-10-08'),
(562, 9, 37, 1, 'Accounting for Business Combinations', '', '(M)7:00pm-8:30pm / (M)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(563, 30, 37, 5, 'Accounting Research Methods', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(564, 87, 37, 7, 'Auditing and Assurance Concepts & Ap 1', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(565, 2, 37, 8, 'Auditing and Assurance Principle', '', '(S)7:00am-8:30am / (S)8:30am-10:00am', '3', 1, '2021-10-08'),
(566, 30, 37, 9, 'Accounting for Special Transactions', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(567, 19, 37, 10, 'Business Law and Regulations - 1', '', '(T)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(568, 57, 37, 68, 'Living in the IT Era', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(569, 64, 37, 83, 'Management Science', '', '(M)8:00am-9:30am / (Th)8:00am-9:30am', '3', 1, '2021-10-08'),
(570, 4, 37, 94, 'The Life and Works of Jose Rizal', '', '(W)4:00pm-5:30pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(571, 33, 37, 96, 'Statistical Analysis with Software Application', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(572, 8, 66, 27, 'Assessment of Learning 1', '', '(F)2:30pm-4:00pm / (F)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(573, 51, 66, 28, 'The Teacher and the School Curriculum', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(574, 96, 66, 46, 'Introduction to Research', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(575, 15, 66, 49, 'Survey of Philippine Literature in English', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(576, 7, 66, 50, 'Survey of Afro-Asian Literature', '', '(F)10:00am-11:30am / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(577, 96, 66, 51, 'Technical Writing', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(578, 67, 66, 90, 'Philippine Literature', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(579, 81, 60, 111, 'The Contemporary World', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(580, 57, 13, 11, 'Capstone Project/Research 2', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(581, 71, 13, 15, 'Multimedia', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(582, 36, 13, 14, 'Security Awareness', '', '(F)4:00pm-5:30pm / (S)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(583, 66, 4, 23, 'Discrete Mathematics', '', '(F)2:30pm-4:00pm / (S)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(584, 6, 4, 40, 'Accounting', '', '(M)1:30pm-3:00pm / (M)3:00pm-4:30pm', '3', 1, '2021-10-08'),
(585, 93, 4, 52, 'Environmental Sciences', '', '(W)2:30am-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(586, 18, 4, 64, 'Database Management System', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(587, 109, 4, 65, 'Web Design and Programming', '', '(T)4:00pm-5:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(588, 16, 4, 85, 'Computer Networking 2', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(589, 24, 4, 89, 'Individual and Dual Sports', '', '(T)5:30pm-6:30pm / (Th)5:30pm-6:30pm', '2', 1, '2021-10-08'),
(590, 63, 4, 93, 'The Life and Works of Jose Rizal', '', '(T)1:00pm-2:30pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(591, 97, 4, 95, 'Readings in Philippine History', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(592, 121, 67, 29, 'Field Study 1 & 2', '', '(M)5:30pm-8:30pm / (T)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(593, 44, 67, 113, 'Teacher Education Enrichment Course 1', '', '(M)1:00pm-2:30pm / (W)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(594, 72, 61, 6, 'Art Appreciation', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(595, 122, 61, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(W)4:00pm-5:30pm / (F)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(596, 50, 61, 26, 'Technology for Teaching and Learning 1', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(597, 38, 61, 42, 'Mythology and Folklore', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(598, 79, 61, 43, 'Principles and Theories of Language Acquisition and Learning', '', '(Th)5:30pm-7:00pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(599, 7, 61, 44, 'Teaching and Assessment of Literature Studies', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(600, 41, 61, 45, 'Teaching and Assessment of the Macroskills', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(601, 82, 61, 56, 'Masining Na Pagpapahayag', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(602, 120, 61, 89, 'Individual and Dual Sports', '', '(T)6:00pm-7:00pm / (T)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(603, 80, 61, 114, 'The Entrepreneurial Mind', '', '(S)8:30am-10:00am / (S)10:00am-11:30am', '3', 1, '2021-10-08'),
(604, 114, 71, 6, 'Art Appreciation', '', '(T)4:00pm-5:30pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(605, 3, 71, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(M)2:30pm-4:00pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(606, 58, 71, 26, 'Technology for Teaching and Learning 1', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(607, 82, 71, 56, 'Masining na Pagpapahayag', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(608, 94, 71, 89, 'Individual and Dual Sports', '', '(W)5:30pm-6:30pm / (Th)5:30pm-6:30pm', '2', 1, '2021-10-08'),
(609, 76, 71, 101, 'Organic Chemistry with Lab', '', '(M)8:30am-11:00am / (T)8:30am-11:00am', '5', 1, '2021-10-08'),
(610, 58, 71, 102, 'Fluid Mechanics', '', '(M)7:00am-8:30am / (T)7:00am-8:30am', '3', 1, '2021-10-08'),
(611, 58, 71, 103, 'Electricity and Magnetism with Lab', '', '(F)1:00pm-3:00pm / (F)3:00pm-5:00pm', '4', 1, '2021-10-08'),
(612, 11, 71, 114, 'The Entrepreneurial Mind', '', '(T)2:30pm-4:00pm / (W)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(613, 67, 71, 118, 'World Literature', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(614, 8, 56, 27, 'Assessment of Learning 1', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(615, 47, 56, 28, 'The Teacher and the School Curriculum', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(616, 42, 56, 76, 'Calculus 3', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(617, 104, 56, 77, 'Modern Geometry', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(618, 48, 56, 78, 'Principles and Strategies in Teaching Mathematics', '', '(M)11:30am-1:00pm / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(619, 52, 56, 79, 'Number Theory', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(620, 118, 56, 80, 'Linear Algebra', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(621, 52, 56, 81, 'Introduction to Research Education', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(622, 111, 56, 90, 'Philippine Literature', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(623, 63, 56, 94, 'The Life and Works of Jose Rizal', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(624, 72, 62, 6, 'Art Appreciation', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(625, 122, 62, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(W)1:00pm-2:30pm / (W)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(626, 50, 62, 26, 'Technology for Teaching and Learning 1', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(627, 38, 62, 42, 'Mythology and Folklore', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(628, 79, 62, 43, 'Principles and Theories of Language Acquisition and Learning', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(629, 7, 62, 44, 'Teaching and Assessment of Literature Studies', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(630, 41, 62, 45, 'Teaching and Assessment of the Macroskills', '', '(T)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(631, 82, 62, 56, 'Masining Na Pagpapahayag', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(632, 120, 62, 89, 'Individual and Dual Sports', '', '(Th)6:00pm-7:00pm / (Th)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(633, 75, 62, 114, 'The Entrepreneurial Mind', '', '(S)8:30am-10:00am / (S)10:00am-11:30am', '3', 1, '2021-10-08'),
(634, 68, 43, 24, 'The Child and Adolescent Learning Principles', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(635, 31, 43, 55, 'Komunikasyon sa Akademikong Filipino', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(636, 99, 43, 62, 'Interactive English', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(637, 35, 43, 67, 'Living in the IT Era', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(638, 95, 43, 82, 'Mathematics in the Modern World', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(639, 77, 43, 86, 'National Service Trainig Program 1', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(640, 23, 43, 88, 'Physical Education 1', '', '(W)1:00pm-2:00pm / (Th)1:00pm-2:00pm', '2', 1, '2021-10-08'),
(641, 27, 43, 111, 'The Contemporary World', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(642, 107, 43, 116, 'Understanding the Self', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(643, 68, 70, 24, 'The Child and Adolescent Learning Principles', '', '(T)8:30am-10:00am / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(644, 31, 70, 55, 'Komunikasyon sa Akademikong Filipino', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(645, 15, 70, 62, 'Interactive English', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(646, 54, 70, 67, 'Living in the IT Era', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(647, 95, 70, 82, 'Mathematics in the Modern World', '', '(Th)8:30am-10:00am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(648, 77, 70, 86, 'National Service Trainig Program 1', '', '(T)2:30pm-4:00pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(649, 22, 70, 88, 'Physical Education 1', '', '(F)10:30am-11:30am / (F)11:30am-12:30pm', '2', 1, '2021-10-08'),
(650, 76, 70, 100, 'Inorganic Chemistry with Lab', '', '(W)2:30pm-5:00pm / (F)2:30pm-5:00pm', '5', 1, '2021-10-08'),
(651, 107, 70, 111, 'The Contemporary World', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(652, 83, 70, 116, 'Understanding the Self', '', '(M)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(653, 8, 72, 27, 'Assessment of Learning 1', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(654, 47, 72, 28, 'The Teacher and the School Curriculum', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(655, 4, 72, 94, 'The Life and Works of Jose Rizal', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(656, 76, 72, 104, 'Organic Chemistry', '', '(M)11:30am-2:00pm / (T)11:30am-2:00pm', '5', 1, '2021-10-08'),
(657, 108, 72, 105, 'Analytical Chemistry with Lab', '', '(W)11:30pm-2:00pm / (Th)11:30pm-2:00pm', '5', 1, '2021-10-08'),
(658, 93, 72, 106, 'Anatomy and Physiology', '', 'Wednesday|4:00pm-6:00pm / Thursday|4:00pm-6:00pm', '4', 1, '2021-10-08'),
(659, 58, 72, 107, 'Waves and Optics with Lab', '', '(M)3:00pm-5:00pm / (T)3:00pm-5:00pm', '4', 1, '2021-10-08'),
(660, 68, 72, 108, 'Introduction to Research Education', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(661, 16, 9, 12, 'Technopreneurship', '', '(T)1:30pm-2:30pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(662, 1, 9, 13, 'File Organization', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(663, 102, 9, 98, 'Software Engineering 2', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(664, 63, 6, 93, 'The Life and Works of Jose Rizal', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(665, 68, 54, 24, 'The Child and Adolescent Learning Principles', '', '(Th)8:30am-10:00am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(666, 31, 54, 55, 'Komunikasyon sa Akademikong Filipino', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(667, 15, 54, 62, 'Interactive English', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(668, 54, 54, 67, 'Living in the IT Era', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(669, 104, 54, 71, 'College and Advanced Algebra', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(670, 52, 54, 82, 'Mathematics in the Modern World', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(671, 77, 54, 86, 'National Service Trainig Program 1', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(672, 23, 54, 88, 'Physical Education 1', '', '(M)2:00pm-3:00pm / (T)2:00pm-3:00pm', '2', 1, '2021-10-08'),
(673, 81, 54, 111, 'The Contemporary World', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(674, 83, 54, 116, 'Understanding the Self', '', '(F)11:30am-1:00pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(675, 1, 10, 12, 'Technopreneurship', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(676, 34, 10, 13, 'File Organization', '', '(F)11:30am-1:00pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(677, 34, 10, 60, 'Information Assurance and Security 2', '', '(M)1:00pm-2:30pm / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(678, 54, 10, 68, 'Living in the IT Era', '', '(M)2:30pm-4:00pm / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(679, 102, 10, 98, 'Software Engineering 2', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(680, 10, 10, 109, 'System Integration and Architecture', '', '(Th)11:30am-1:00pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(681, 39, 10, 117, 'Web System & Technology', '', '(T)7:00am-8:30am / (Th)7:00am-8:30am', '3', 1, '2021-10-08'),
(682, 9, 38, 1, 'Accounting for Business Combinations', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(683, 30, 38, 5, 'Accounting Research Methods', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(684, 87, 38, 7, 'Auditing and Assurance Concepts & Ap 1', '', '(T)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(685, 2, 38, 8, 'Auditing and Assurance Principle', '', '(S)10:00am-11:30am / (S)11:30am-1:00pm', '3', 1, '2021-10-08'),
(686, 30, 38, 9, 'Accounting for Special Transactions', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(687, 40, 38, 10, 'Business Law and Regulations - 1', '', '(M)7:00pm-8:30pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(688, 57, 38, 68, 'Living in the IT Era', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(689, 64, 38, 83, 'Management Science', '', '(M)9:30am-11:00am / (Th)9:30am-11:00am', '3', 1, '2021-10-08'),
(690, 97, 38, 94, 'The Life and Works of Jose Rizal', '', '(W)5:30pm-7:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(691, 33, 38, 96, 'Statistical Analysis with Software Application', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(692, 68, 44, 24, 'The Child and Adolescent Learning Principles', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(693, 31, 44, 55, 'Komunikasyon sa Akademikong Filipino', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(694, 99, 44, 62, 'Interactive English', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(695, 54, 44, 67, 'Living in the IT Era', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(696, 95, 44, 82, 'Mathematics in the Modern World', '', '(Th)1:00pm-2:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(697, 49, 44, 86, 'National Service Trainig Program 1', '', '(F)7:00am-8:30am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(698, 49, 44, 88, 'Physical Education 1', '', '(M)8:30am-9:30am / (T)8:30am-9:30am', '2', 1, '2021-10-08'),
(699, 27, 44, 111, 'The Contemporary World', '', '(W)11:30am-1:00pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(700, 113, 44, 116, 'Understanding the Self', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(701, 66, 5, 23, 'Discrete Mathematics', '', '(F)1:00pm-2:30pm / (S)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(702, 74, 5, 40, 'Accounting', '', '(M)4:30pm-6:00pm / (W)4:30pm-6:00pm', '3', 1, '2021-10-08'),
(703, 93, 5, 52, 'Environmental Sciences', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(704, 18, 5, 64, 'Database Management System', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(705, 109, 5, 65, 'Web Design and Programming', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(706, 16, 5, 85, 'Computer Networking 2', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(707, 24, 5, 89, 'Individual and Dual Sports', '', '(T)6:30pm-7:30pm / (Th)6:30pm-7:30pm', '2', 1, '2021-10-08'),
(708, 63, 5, 93, 'The Life and Works of Jose Rizal', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(709, 22, 5, 95, 'Readings in Philippine History', '', '(W)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(710, 14, 40, 2, 'Accoounting for Government & NGO', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(711, 53, 40, 4, 'Accounting Research 2', '', '(S)11:30am-1:00pm / (S)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(712, 19, 40, 92, 'Regulatory FW and Legal Issues in Business', '', '(M)5:30pm-7:00pm / (W)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(713, 87, 40, 97, 'Strategic Business Analysis', '', '(T)7:00pm-8:30pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(714, 61, 40, 110, 'Strategic Management', '', '(S)8:30am-10:00am / (S)10:00am-11:30am', '3', 1, '2021-10-08'),
(715, 8, 64, 27, 'Assessment of Learning 1', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(716, 51, 64, 28, 'The Teacher and the School Curriculum', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(717, 96, 64, 46, 'Introduction to Research', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(718, 99, 64, 47, 'Language, Culture , and Society', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(719, 105, 64, 48, 'Mythology and Folklore', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(720, 28, 64, 49, 'Survey of Philippine Literature in English', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(721, 7, 64, 50, 'Survey of Afro-Asian Literature', '', '(M)8:30am-10:00am / (M)10:00am-11:30am', '3', 1, '2021-10-08'),
(722, 96, 64, 51, 'Technical Writing', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(723, 111, 64, 90, 'Philippine Literature', '', '(Th)2:30pm-4:00pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(724, 4, 64, 94, 'The Life and Works of Jose Rizal', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(725, 118, 18, 3, 'Linear Algebra', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(726, 29, 18, 18, 'Fundamentals of Programming', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(727, 26, 18, 62, 'Interactive English', '', '(M)1:00pm-2:30pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(728, 59, 18, 63, 'Introduction to Computing', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(729, 52, 18, 70, 'Math in the Modern World', '', '(Th)11:30am-1:00pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(730, 4, 18, 86, 'National Service Trainig Program 1', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(731, 22, 18, 88, 'Physical Education 1', '', '(W)2:30pm-3:30pm / (Th)11:30pm-12:30pm', '2', 1, '2021-10-08'),
(732, 35, 18, 99, 'Security Awareness', '', '(F)10:00am-11:30am / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(733, 83, 18, 116, 'Understanding the Self', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(734, 16, 11, 12, 'Technopreneurship', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(735, 102, 11, 13, 'File Organization', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(736, 34, 11, 60, 'Information Assurance and Security 2', '', '(M)2:30pm-4:00pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(737, 54, 11, 68, 'Living in the IT Era', '', '(M)1:00pm-2:30pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(738, 102, 11, 98, 'Software Engineering 2', '', '(W)11:30am-1:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(739, 36, 11, 109, 'System Integration and Architecture', '', '(S)4:00pm-5:30pm / (S)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(740, 39, 11, 117, 'Web System & Technology', '', '(T)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(741, 70, 51, 29, 'Field Study 1 & 2', '', '(M)7:00am-10:00am / (T)7:00am-10:00am', '6', 1, '2021-10-08'),
(742, 44, 51, 113, 'Teacher Education Enrichment Course 1', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(743, 33, 1, 3, 'Linear Algebra', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(744, 5, 1, 18, 'Fundamentals of Programming', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(745, 26, 1, 62, 'Interactive English', '', '(M)8:30am-10:00am / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(746, 59, 1, 63, 'Introduction to Computing', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(747, 52, 1, 70, 'Math in the Modern World', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(748, 84, 1, 86, 'National Service Trainig Program 1', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(749, 49, 1, 88, 'Physical Education 1', '', '(M)2:30pm-3:30pm / (M)3:30pm-4:30pm', '2', 1, '2021-10-08'),
(750, 35, 1, 99, 'Security Awareness', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(751, 107, 1, 116, 'Understanding the Self', '', '(Th)1:00pm-2:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(752, 18, 20, 19, 'Database Management System', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(753, 109, 20, 20, 'Web Design and Programming', '', '(T)1:00pm-2:30pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(754, 66, 20, 21, 'Programming Languages', '', '(M)4:00pm-5:30pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(755, 39, 20, 22, 'Advanced Object-Oriented Programming', '', '(M)7:00am-8:30am / (W)7:00am-8:30am', '3', 1, '2021-10-08'),
(756, 112, 20, 23, 'Discrete Mathematics', '', '(M)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(757, 75, 20, 52, 'Environmental Sciences', '', '(S)4:00pm-5:30pm / (S)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(758, 24, 20, 89, 'Individual and Dual Sports', '', '(Th)1:00pm-2:00pm / (Th)2:00pm-3:00pm', '2', 1, '2021-10-08'),
(759, 97, 20, 95, 'Readings in Philippine History', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(760, 57, 14, 11, 'Capstone Project/Research 2', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(761, 101, 14, 14, 'Security Awareness', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(762, 71, 14, 15, 'Multimedia', '', '(T)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(763, 32, 21, 19, 'Database Management System', '', '(M)4:00pm-5:30pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(764, 109, 21, 20, 'Web Design and Programming', '', '(W)2:30pm-4:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(765, 86, 21, 21, 'Programming Languages', '', '(Th)7:00pm-8:30pm / (F)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(766, 39, 21, 22, 'Advanced Object-Oriented Programming', '', '(M)8:30am-10:00am / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(767, 112, 21, 23, 'Discrete Mathematics', '', '(T)7:00pm-8:30pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(768, 93, 21, 52, 'Environmental Sciences', '', '(M)10:00am-11:30am / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(769, 24, 21, 89, 'Individual and Dual Sports', '', '(M)5:30pm-6:30pm / (W)1:00pm-2:00pm', '2', 1, '2021-10-08'),
(770, 97, 21, 95, 'Readings in Philippine History', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(771, 12, 33, 6, 'Art Appreciation', '', '(M)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(772, 103, 33, 17, 'Conceptual FW & Accounting Standards', '', '(M)10:00am-11:30am / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(773, 26, 33, 53, 'English for Specific Purposes', '', '(T)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(774, 106, 33, 57, 'Financial Market', '', '(T)2:30pm-4:00pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(775, 56, 33, 59, 'Intermediate Accounting 2', '', '(M)4:00pm-7:00pm / (W)4:00pm-7:00pm', '6', 1, '2021-10-08'),
(776, 14, 33, 66, 'IT Application Tools in Business', '', '(Th)8:30am-10:00am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(777, 119, 33, 89, 'Physical Education 3', '', '(Th)5:30pm-6:30pm / (Th)6:30pm-7:30pm', '2', 1, '2021-10-08'),
(778, 90, 33, 112, 'The Contemporary World', '', '(W)1:00pm-2:30pm / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(779, 11, 33, 114, 'The Entrepreneurial Mind', '', '(T)8:30am-10:00am / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(780, 114, 55, 6, 'Art Appreciation', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(781, 122, 55, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(782, 48, 55, 26, 'Technology for Teaching and Learning 1', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(783, 82, 55, 56, 'Masining Na Pagpapahayag', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(784, 21, 55, 72, 'History of Mathematics', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(785, 42, 55, 73, 'Calculus 1 w/ Analytic Geometry', '', '(F)1:00pm-3:00pm / (F)3:00pm-5:00pm', '4', 1, '2021-10-08'),
(786, 33, 55, 74, 'Elementary Statistics and Probability', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(787, 42, 55, 75, 'Mathematics of Investment', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(788, 94, 55, 89, 'Individual and Dual Sports', '', '(F)6:00pm-7:00pm / (F)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(789, 115, 55, 114, 'The Entrepreneurial Mind', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(790, 8, 65, 27, 'Assessment of Learning 1', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(791, 51, 65, 28, 'The Teacher and the School Curriculum', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(792, 96, 65, 46, 'Introduction to Research', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(793, 99, 65, 47, 'Language, Culture , and Society', '', '(F)8:30am-10:300am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(794, 105, 65, 48, 'Mythology and Folklore', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(795, 15, 65, 49, 'Survey of Philippine Literature in English', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(796, 7, 65, 50, 'Survey of Afro-Asian Literature', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(797, 96, 65, 51, 'Technical Writing', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(798, 67, 65, 90, 'Philippine Literature', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(799, 57, 15, 11, 'Capstone Project/Research 2', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(800, 73, 15, 14, 'Security Awareness', '', '(T)7:00pm-8:30pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(801, 71, 15, 15, 'Multimedia', '', '(M)|5:30pm-7:00pm / (M)|7:00pm-8:30pm', '3', 1, '2021-10-08'),
(802, 112, 6, 23, 'Discrete Mathematics', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(803, 6, 6, 40, 'Accounting', '', '(W)1:30pm-3:00pm / (W)3:00pm-4:30pm', '3', 1, '2021-10-08'),
(804, 93, 6, 52, 'Environmental Sciences', '', '(Th)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(805, 18, 6, 64, 'Database Management System', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(806, 109, 6, 65, 'Web Design and Programming', '', '(Th)11:30am-1:00pm / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(807, 65, 6, 85, 'Computer Networking 2', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(808, 24, 6, 89, 'Individual and Dual Sports', '', '(W)5:30pm-6:30pm / (W)6:30pm-7:30pm', '2', 1, '2021-10-08'),
(809, 22, 6, 95, 'Readings in Philippine History', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(810, 16, 12, 12, 'Technopreneurship', '', '(Th)10:00am-11:00am / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(811, 1, 12, 13, 'File Organization', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(812, 34, 12, 60, 'Information Assurance and Security 2', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(813, 73, 12, 68, 'Living in the IT Era', '', '(M)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(814, 18, 12, 98, 'Software Engineering 2', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(815, 10, 12, 109, 'System Integration and Architecture', '', '(Th)4:00pm-5:30pm / (W)11:30am-1:00pm', '3', 1, '2021-10-08'),
(816, 45, 12, 117, 'Web System & Technology', '', '(M)2:30am-4:00pm / (T)2:30am-4:00pm', '3', 1, '2021-10-08'),
(817, 83, 27, 6, 'Art Appreciation', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(818, 56, 27, 17, 'Conceptual FW & Accounting Standards', '', '(F)4:00pm-5:30pm / (F)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(819, 116, 27, 53, 'English for Specific Purposes', '', '(M)4:00pm-5:30pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(820, 14, 27, 57, 'Financial Market', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(821, 74, 27, 59, 'Intermediate Accounting 2', '', '(M)11:30am-2:30pm / (T)11:30am-2:30pm', '6', 1, '2021-10-08'),
(822, 43, 27, 66, 'IT Application Tools in Business', '', '(W)11:30am-1:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(823, 94, 27, 89, 'Physical Education 3', '', '(M)6:30pm-7:30pm / (T)6:30pm-7:30pm', '2', 1, '2021-10-08'),
(824, 90, 27, 112, 'The Contemporary World', '', '(T)4:00pm-5:30pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(825, 80, 27, 114, 'The Entrepreneurial Mind', '', '(Th)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(826, 29, 16, 11, 'Capstone Project/Research 2', '', '(Th)11:30am-1:00pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(827, 59, 16, 14, 'Security Awareness', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(828, 100, 16, 15, 'Multimedia', '', '(M)4:00pm-5:30pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(829, 9, 29, 54, 'Financial Accounting and Reporting -A', '', '(W)7:00pm-8:30pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(830, 111, 29, 62, 'Interactive English', '', '(W)1:00pm-2:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(831, 98, 29, 67, 'Living in the IT Era', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(832, 92, 29, 69, 'Managerial Economics', '', '(S)7:00am-8:30am / (S)8:30am-10:00am', '3', 1, '2021-10-08'),
(833, 84, 29, 86, 'National Service Trainig Program 1', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(834, 6, 29, 87, 'Partnership and Corporation Accounting', '', '(Th)1:00pm-4:00pm / (F)1:00pm-4:00pm', '6', 1, '2021-10-08'),
(835, 37, 29, 88, 'Physical Education 1', '', '(M)4:00pm-5:00pm / (W)4:00pm-5:00pm', '2', 1, '2021-10-08'),
(836, 113, 29, 116, 'Understanding the Self', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(837, 86, 22, 12, 'Algorithm', '', '(T)7:00pm-8:30pm / (S)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(838, 86, 22, 13, 'Programming Languages', '', '(W)7:00pm-8:30pm / (S)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(839, 36, 22, 61, 'Information Assurance and Security', '', '(Th)5:30pm-7:00pm / (F)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(840, 65, 22, 84, 'Networks and Communications', '', '(M)10:00am-11:30am / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(841, 60, 22, 91, 'Application Development & Emerging Technologies', '', '(S)10:00am-11:30am / (S)11:30am-1:00pm', '3', 1, '2021-10-08'),
(842, 18, 22, 98, 'Software Engineering 2', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(843, 10, 22, 109, 'System Integration and Architecture', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(844, 45, 22, 117, 'Web System & Technology', '', '(M)8:30am-10:00am / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(845, 100, 24, 16, 'Theory of Automata and Formal Languages', '', '(M)2:30pm-4:00pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(846, 113, 24, 58, 'Glocal Citizenship Education', '', '(T)2:30am-4:30pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(847, 29, 24, 115, 'Thesis 2', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(848, 26, 2, 62, 'Interactive English', '', '(M)10:00am-11:30am / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(849, 9, 30, 54, 'Financial Accounting and Reporting -A', '', '(T)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(850, 111, 30, 62, 'Interactive English', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(851, 98, 30, 67, 'Living in the IT Era', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(852, 92, 30, 69, 'Managerial Economics', '', '(S)10:00am-11:30am / (S)11:30am-1:00pm', '3', 1, '2021-10-08'),
(853, 4, 30, 86, 'National Service Trainig Program 1', '', '(T)2:30pm-4:00pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(854, 25, 30, 87, 'Partnership and Corporation Accounting', '', '(M)5:30pm-8:30pm / (Th)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(855, 49, 30, 88, 'Physical Education 1', '', '(W)8:30am-9:30am / (Th)8:30am-9:30am', '2', 1, '2021-10-08'),
(856, 113, 30, 116, 'Understanding the Self', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(857, 34, 9, 60, 'Information Assurance and Security 2', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(858, 73, 9, 68, 'Living in the IT Era', '', '(T)5:30pm-7:00pm / (Th)5:30pm-8:00pm', '3', 1, '2021-10-08'),
(859, 10, 9, 109, 'System Integration and Architecture', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(860, 124, 9, 117, 'Web System & Technology', '', '(M)5:30pm-7:00pm / (W)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(861, 46, 31, 54, 'Financial Accounting and Reporting -A', '', '(M)6:00pm-7:30pm / (W)6:00pm-7:30pm', '3', 1, '2021-10-08'),
(862, 111, 31, 62, 'Interactive English', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(863, 98, 31, 67, 'Living in the IT Era', '', '(Th)5:30pm-7:00pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(864, 92, 31, 69, 'Managerial Economics', '', '(S)1:00pm-2:30pm / (S)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(865, 22, 31, 86, 'National Service Trainig Program 1', '', '(T)8:30am-10:00am / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(866, 25, 31, 87, 'Partnership and Corporation Accounting', '', '(T)5:30pm-8:30pm / (F)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(867, 37, 31, 88, 'Physical Education 1', '', '(T)4:00pm-5:00pm / (Th)4:00pm-5:00pm', '2', 1, '2021-10-08'),
(868, 113, 31, 116, 'Understanding the Self', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(869, 89, 48, 27, 'Assessment of Learning 1', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(870, 47, 48, 28, 'The Teacher and the School Curriculum', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(871, 48, 48, 33, 'Teaching Math in the Intermediate Grades', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(872, 70, 48, 34, 'Edukasyong Pantahanan at Pangkabuhayan (1)', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(873, 13, 48, 35, 'Content and Pedagogy in the Mother-Tongue', '', '(M)7:00am-8:30am / (T)7:00am-8:30am', '3', 1, '2021-10-08'),
(874, 84, 48, 36, 'Teaching Music in the Elementary Grades', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(875, 13, 48, 37, 'Teaching Arts in the Elementary Grades', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(876, 78, 48, 38, 'Teaching English in the Elementary Grades (Language Arts)', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(877, 51, 48, 39, 'Introduction to Research in Education', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(878, 63, 48, 94, 'The Life and Works of Jose Rizal', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(879, 118, 19, 3, 'Linear Algebra', '', '(Th)11:30am-1:00pm / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(880, 29, 19, 18, 'Fundamentals of Programming', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(881, 26, 19, 62, 'Interactive English', '', '(T)1:00pm-2:30pm / (W)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(882, 59, 19, 63, 'Introduction to Computing', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(883, 104, 19, 70, 'Math in the Modern World', '', '(Th)2:30pm-4:00pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(884, 4, 19, 86, 'National Service Trainig Program 1', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(885, 22, 19, 88, 'Physical Education 1', '', '(F)8:30am-9:30am / (F)9:30am-10:30am', '2', 1, '2021-10-08'),
(886, 35, 19, 99, 'Security Awareness', '', '(W)1:00pm-2:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(887, 107, 19, 116, 'Understanding the Self', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(888, 68, 60, 24, 'The Child and Adolescent Learning Principles', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(889, 20, 60, 41, 'Introduction to Linguistics', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(890, 31, 60, 55, 'Komunikasyon sa Akademikong Filipino', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(891, 99, 60, 62, 'Interactive English', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(892, 54, 60, 67, 'Living in the IT Era', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(893, 104, 60, 82, 'Mathematics in the Modern World', '', '(Th)4:00pm-5:30pm / (F)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(894, 77, 60, 86, 'National Service Trainig Program 1', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(895, 23, 60, 88, 'Physical Education 1', '', '(M)1:00pm-2:00pm / (T)1:00pm-2:00pm', '2', 1, '2021-10-08'),
(896, 83, 60, 116, 'Understanding the Self', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(897, 29, 17, 11, 'Capstone Project/Research 2', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(898, 101, 17, 14, 'Security Awareness', '', '(T)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(899, 100, 17, 15, 'Multimedia', '', '(M)5:30pm-7:00pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(900, 112, 7, 23, 'Discrete Mathematics', '', '(T)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(901, 14, 7, 40, 'Accounting', '', '(F)1:30pm-3:00pm / (F)3:00pm-4:30pm', '3', 1, '2021-10-08'),
(902, 93, 7, 52, 'Environmental Sciences', '', '(M)1:00pm-2:30pm / (M)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(903, 32, 7, 64, 'Database Management System', '', '(M)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(904, 109, 7, 65, 'Web Design and Programming', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(905, 65, 7, 85, 'Computer Networking 2', '', '(M)8:30am-10:00am / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(906, 37, 7, 89, 'Individual and Dual Sports', '', '(F)6:00pm-7:00pm / (F)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(907, 97, 7, 93, 'The Life and Works of Jose Rizal', '', '(M)10:00am-11:30pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(908, 22, 7, 95, 'Readings in Philippine History', '', '(T)4:00pm-5:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(909, 33, 2, 3, 'Linear Algebra', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(910, 60, 2, 18, 'Fundamentals of Programming', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(911, 59, 2, 63, 'Introduction to Computing', '', '(W)4:00pm-5:30pm / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(912, 95, 2, 70, 'Math in the Modern World', '', '(T)11:30am-1:00pm / (F)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(913, 49, 2, 86, 'National Service Trainig Program 1', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(914, 49, 2, 88, 'Physical Education 1', '', '(W)11:30am-12:30pm / (Th)11:30am-12:30pm', '2', 1, '2021-10-08'),
(915, 35, 2, 99, 'Security Awareness', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(916, 107, 2, 116, 'Understanding the Self', '', '(T)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(917, 28, 68, 29, 'Field Study 1 & 2', '', '(M)5:30pm-8:30pm / (T)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(918, 44, 68, 113, 'Teacher Education Enrichment Course 1', '', '(T)1:00pm-2:30pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(919, 8, 57, 27, 'Assessment of Learning 1', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(920, 47, 57, 28, 'The Teacher and the School Curriculum', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(921, 42, 57, 76, 'Calculus 3', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(922, 104, 57, 77, 'Modern Geometry', '', '(W)11:30am-1:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(923, 48, 57, 78, 'Principles and Strategies in Teaching Mathematics', '', '(T)8:30am-10:00am / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(924, 52, 57, 79, 'Number Theory', '', '(M)8:30am-10:00am / (Th)8:30am-10:30am', '3', 1, '2021-10-08'),
(925, 118, 57, 80, 'Linear Algebra', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(926, 69, 57, 81, 'Introduction to Research Education', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(927, 111, 57, 90, 'Philippine Literature', '', '(F)11:30am-1:00pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(928, 63, 57, 94, 'The Life and Works of Jose Rizal', '', '(Th)4:00pm-5:30pm / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(929, 46, 26, 54, 'Financial Accounting and Reporting -A', '', '(T)6:00pm-7:30pm / (T)7:30pm-9:00pm', '3', 1, '2021-10-08'),
(930, 15, 26, 62, 'Interactive English', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(931, 98, 26, 67, 'Living in the IT Era', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(932, 92, 26, 69, 'Managerial Economics', '', '(S)4:00pm-5:30pm / (S)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(933, 49, 26, 86, 'National Service Trainig Program 1', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(934, 46, 26, 87, 'Partnership and Corporation Accounting', '', '(Th)6:00pm-9:00pm / (F)6:00pm-9:00pm', '6', 1, '2021-10-08'),
(935, 49, 26, 88, 'Physical Education 1', '', '(W)1:00pm-2:00pm / (Th)1:00pm-2:00pm', '2', 1, '2021-10-08'),
(936, 114, 26, 116, 'Understanding the Self', '', '(Th)4:00pm-5:30pm / (F)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(937, 99, 66, 47, 'Language, Culture , and Society', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(938, 121, 66, 48, 'Mythology and Folklore', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(939, 81, 66, 94, 'The Life and Works of Jose Rizal', '', '(W)11:30am-1:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(940, 70, 53, 29, 'Field Study 1 & 2', '', '(Th)10:00am-1:00pm / (F)10:00am-1:00pm', '6', 1, '2021-10-08'),
(941, 44, 53, 113, 'Teacher Education Enrichment Course 1', '', '(Th)2:30pm-4:00pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(942, 118, 3, 3, 'Linear Algebra', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(943, 60, 3, 18, 'Fundamentals of Programming', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(944, 15, 3, 62, 'Interactive English', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(945, 59, 3, 63, 'Introduction to Computing', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(946, 104, 3, 70, 'Math in the Modern World', '', '(W)2:30pm-4:00pm / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(947, 84, 3, 86, 'National Service Trainig Program 1', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(948, 94, 3, 88, 'Physical Education 1', '', '(M)5:30pm-6:30pm / (T)5:30pm-6:30pm', '2', 1, '2021-10-08'),
(949, 35, 3, 99, 'Security Awareness', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(950, 107, 3, 116, 'Understanding the Self', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(951, 77, 63, 6, 'Art Appreciation', '', '(Th)1:00pm-2:30pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(952, 122, 63, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(953, 50, 63, 26, 'Technology for Teaching and Learning 1', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(954, 105, 63, 42, 'Mythology and Folklore', '', '(Th)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(955, 79, 63, 43, 'Principles and Theories of Language Acquisition and Learning', '', '(T)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(956, 7, 63, 44, 'Teaching and Assessment of Literature Studies', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(957, 41, 63, 45, 'Teaching and Assessment of the Macroskills', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(958, 116, 63, 56, 'Masining Na Pagpapahayag', '', '(W)1:00pm-2:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(959, 119, 63, 89, 'Individual and Dual Sports', '', '(F)5:00pm-6:00pm / (F)6:00pm-7:00pm', '2', 1, '2021-10-08'),
(960, 75, 63, 114, 'The Entrepreneurial Mind', '', '(S)1:00pm-2:30pm / (S)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(961, 20, 69, 29, 'Field Study 1 & 2', '', '(M)5:30pm-8:30pm / (T)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(962, 44, 69, 113, 'Teacher Education Enrichment Course 1', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(963, 21, 58, 29, 'Field Study 1 & 2', '', '(M)5:30pm-8:30pm / (T)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(964, 42, 58, 113, 'Teacher Education Enrichment Course 1', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(965, 12, 34, 6, 'Art Appreciation', '', '(T)4:00pm-5:30pm / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(966, 103, 34, 17, 'Conceptual FW & Accounting Standards', '', '(M)1:00pm-2:30pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(967, 116, 34, 53, 'English for Specific Purposes', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(968, 106, 34, 57, 'Financial Market', '', '(W)2:30pm-4:00pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(969, 74, 34, 59, 'Intermediate Accounting 2', '', '(Th)11:30am-2:30pm / (F)11:30am-2:30pm', '6', 1, '2021-10-08'),
(970, 43, 34, 66, 'IT Application Tools in Business', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(971, 119, 34, 89, 'Physical Education 3', '', '(W)5:30pm-6:30pm / (W)6:30pm-7:30pm', '2', 1, '2021-10-08'),
(972, 90, 34, 112, 'The Contemporary World', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(973, 11, 34, 114, 'The Entrepreneurial Mind', '', '(Th)8:30am-10:00am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(974, 45, 25, 16, 'Theory of Automata and Formal Languages', '', '(W)8:30am-10:00am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(975, 113, 25, 58, 'Glocal Citizenship Education', '', '(F)8:30am-10:00am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(976, 29, 25, 115, 'Thesis 2', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(977, 17, 59, 29, 'Field Study 1 & 2', '', '(M)5:30pm-8:30pm / (T)5:30pm-8:30pm', '6', 1, '2021-10-08'),
(978, 42, 59, 113, 'Teacher Education Enrichment Course 1', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(979, 9, 39, 1, 'Accounting for Business Combinations', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(980, 30, 39, 5, 'Accounting Research Methods', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(981, 2, 39, 7, 'Auditing and Assurance Concepts & Ap 1', '', '(S)4:00pm-5:30pm / (S)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(982, 2, 39, 8, 'Auditing and Assurance Principle', '', '(S)1:00pm-2:30pm / (S)2:30pm-4:00pm', '3', 1, '2021-10-08');
INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `subject_text`, `thumbnails`, `school_year`, `sem`, `schoolyear_id`, `date_added`) VALUES
(983, 30, 39, 9, 'Accounting for Special Transactions', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(984, 110, 39, 10, 'Business Law and Regulations - 1', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(985, 57, 39, 68, 'Living in the IT Era', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(986, 64, 39, 83, 'Management Science', '', '(M)11:00am-12:30am / (Th)11:00am-12:30am', '3', 1, '2021-10-08'),
(987, 97, 39, 94, 'The Life and Works of Jose Rizal', '', '(T)11:30am-1:00pm / (W)11:30am-1:00pm', '3', 1, '2021-10-08'),
(988, 33, 39, 96, 'Statistical Analysis with Software Application', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(989, 114, 45, 6, 'Art Appreciation', '', '(M)4:00pm-5:30pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(990, 3, 45, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(991, 55, 45, 26, 'Technology for Teaching and Learning 1', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(992, 123, 45, 30, 'Pagtuturo ng Filipino sa Elementarya 1-Estruktura at Gamit ng Wikang Filipino', '', '(W)5:30pm-7:00pm / (W)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(993, 118, 45, 31, 'Teaching Math in Primary Grades', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(994, 91, 45, 32, 'Good Manners and Right Conduct (Educakasyon sa Pagpapakatao)', '', '(T)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(995, 82, 45, 56, 'Masining Na Pagpapahayag', '', '(W)11:30am-1:00pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(996, 120, 45, 89, 'Individual and Dual Sports', '', '(M)6:00pm-7:00pm / (M)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(997, 117, 45, 114, 'The Entrepreneurial Mind', '', '(M)9:00am-10:30am / (M)10:30am-12:00pm', '3', 1, '2021-10-08'),
(998, 67, 45, 118, 'World Literature', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(999, 89, 49, 27, 'Assessment of Learning 1', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1000, 47, 49, 28, 'The Teacher and the School Curriculum', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(1001, 48, 49, 33, 'Teaching Math in the Intermediate Grades', '', '(F)7:00am-8:30am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(1002, 70, 49, 34, 'Edukasyong Pantahanan at Pangkabuhayan (1)', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1003, 13, 49, 35, 'Content and Pedagogy in the Mother-Tongue', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(1004, 84, 49, 36, 'Teaching Music in the Elementary Grades', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1005, 13, 49, 37, 'Teaching Arts in the Elementary Grades', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1006, 78, 49, 38, 'Teaching English in the Elementary Grades (Language Arts)', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1007, 51, 49, 39, 'Introduction to Research in Education', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(1008, 81, 49, 94, 'The Life and Works of Jose Rizal', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1009, 12, 35, 6, 'Art Appreciation', '', '(W)11:30am-1:00pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1010, 103, 35, 17, 'Conceptual FW & Accounting Standards', '', '(M)2:30pm-4:00pm / (W)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1011, 116, 35, 53, 'English for Specific Purposes', '', '(T)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1012, 106, 35, 57, 'Financial Market', '', '(W)5:30pm-7:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1013, 56, 35, 59, 'Intermediate Accounting 2', '', '(T)4:00pm-7:00pm / (Th)4:00pm-7:00pm', '6', 1, '2021-10-08'),
(1014, 43, 35, 66, 'IT Application Tools in Business', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-08'),
(1015, 37, 35, 89, 'Physical Education 3', '', '(F)4:00pm-5:00pm / (F)5:00pm-6:00pm', '2', 1, '2021-10-08'),
(1016, 27, 35, 112, 'The Contemporary World', '', '(M)11:30am-1:00pm / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(1017, 11, 35, 114, 'The Entrepreneurial Mind', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(1018, 14, 41, 2, 'Accoounting for Government & NGO', '', '(T)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1019, 53, 41, 4, 'Accounting Research 2', '', '(S)10:00am-11:30am / (S)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1020, 40, 41, 92, 'Regulatory FW and Legal Issues in Business', '', '(T)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1021, 87, 41, 97, 'Strategic Business Analysis', '', '(M)7:00pm-8:30pm / (M)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1022, 61, 41, 110, 'Strategic Management', '', '(S)11:30am-1:00pm / (S)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1023, 89, 50, 27, 'Assessment of Learning 1', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1024, 47, 50, 28, 'The Teacher and the School Curriculum', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-08'),
(1025, 48, 50, 33, 'Teaching Math in the Intermediate Grades', '', '(M)4:00pm-5:30pm / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1026, 76, 50, 34, 'Edukasyong Pantahanan at Pangkabuhayan (1)', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(1027, 13, 50, 35, 'Content and Pedagogy in the Mother-Tongue', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1028, 84, 50, 36, 'Teaching Music in the Elementary Grades', '', '(W)11:30am-1:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(1029, 13, 50, 37, 'Teaching Arts in the Elementary Grades', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1030, 78, 50, 38, 'Teaching English in the Elementary Grades (Language Arts)', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1031, 51, 50, 39, 'Introduction to Research in Education', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1032, 81, 50, 94, 'The Life and Works of Jose Rizal', '', '(F)1:00pm-2:30pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1033, 81, 65, 94, 'The Life and Works of Jose Rizal', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1034, 114, 46, 6, 'Art Appreciation', '', '(Th)2:30pm-4:00pm / (F)11:30am-1:00pm', '3', 1, '2021-10-08'),
(1035, 3, 46, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(M)11:30am-1:00pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1036, 55, 46, 26, 'Technology for Teaching and Learning 1', '', '(T)5:30pm-7:00pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1037, 123, 46, 30, 'Pagtuturo ng Filipino sa Elementarya 1-Estruktura at Gamit ng Wikang Filipino', '', '(Th)5:30pm-7:00pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1038, 95, 46, 31, 'Teaching Math in Primary Grades', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(1039, 91, 46, 32, 'Good Manners and Right Conduct (Educakasyon sa Pagpapakatao)', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1040, 82, 46, 56, 'Masining Na Pagpapahayag', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1041, 120, 46, 89, 'Individual and Dual Sports', '', '(W)6:00pm-7:00pm / (W)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(1042, 117, 46, 114, 'The Entrepreneurial Mind', '', '(T)9:00am-10:30am / (T)10:30am-12:00pm', '3', 1, '2021-10-08'),
(1043, 67, 46, 118, 'World Literature', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1044, 114, 36, 6, 'Art Appreciation', '', '(Th)1:00pm-2:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1045, 103, 36, 17, 'Conceptual FW & Accounting Standards', '', '(M)4:00pm-5:30pm / (W)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1046, 116, 36, 53, 'English for Specific Purposes', '', '(T)4:00pm-5:30pm / (W)8:30am-10:00am', '3', 1, '2021-10-08'),
(1047, 106, 36, 57, 'Financial Market', '', '(F)2:30pm-4:00pm / (F)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1048, 88, 36, 59, 'Intermediate Accounting 2', '', '(M)7:00am-10:00am / (Th)3:00pm-6:00pm', '6', 1, '2021-10-08'),
(1049, 43, 36, 66, 'IT Application Tools in Business', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-08'),
(1050, 120, 36, 89, 'Physical Education 3', '', '(F)6:00pm-7:00pm / (F)7:00pm-8:00pm', '2', 1, '2021-10-08'),
(1051, 27, 36, 112, 'The Contemporary World', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1052, 11, 36, 114, 'The Entrepreneurial Mind', '', '(T)1:00pm-2:30pm / (W)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1053, 77, 47, 6, 'Art Appreciation', '', '(W)1:00pm-2:30pm / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(1054, 3, 47, 25, 'Facilitating Learner-Centered Teaching and Learning', '', '(M)1:00pm-2:30pm / (M)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1055, 55, 47, 26, 'Technology for Teaching and Learning 1', '', '(W)5:30pm-7:00pm / (Th)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1056, 123, 47, 30, 'Pagtuturo ng Filipino sa Elementarya 1-Estruktura at Gamit ng Wikang Filipino', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1057, 95, 47, 31, 'Teaching Math in Primary Grades', '', '(M)10:00am-11:30am / (T)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1058, 91, 47, 32, 'Good Manners and Right Conduct (Educakasyon sa Pagpapakatao)', '', '(W)7:00pm-8:30pm / (Th)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1059, 31, 47, 56, 'Masining Na Pagpapahayag', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1060, 94, 47, 89, 'Individual and Dual Sports', '', '(M)7:30pm-8:30pm / (T)7:30pm-8:30pm', '2', 1, '2021-10-08'),
(1061, 117, 47, 114, 'The Entrepreneurial Mind', '', '(W)9:00am-10:30am / (W)10:30am-12:00pm', '3', 1, '2021-10-08'),
(1062, 67, 47, 118, 'World Literature', '', '(T)5:30pm-7:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-08'),
(1063, 62, 52, 29, 'Field Study 1 & 2', '', '(M)1:00pm-4:00pm / (T)1:00pm-4:00pm', '6', 1, '2021-10-08'),
(1064, 44, 52, 113, 'Teacher Education Enrichment Course 1', '', '(Th)1:00pm-2:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1065, 14, 42, 2, 'Accoounting for Government & NGO', '', '(M)5:30pm-7:00pm / (T)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1066, 53, 42, 4, 'Accounting Research 2', '', '(S)8:30am-10:00am / (S)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1067, 110, 42, 92, 'Regulatory FW and Legal Issues in Business', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1068, 87, 42, 97, 'Strategic Business Analysis', '', '(F)5:30pm-7:00pm / (F)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1069, 61, 42, 110, 'Strategic Management', '', '(S)2:30pm-4:00pm / (S)4:00pm-5:30pm', '3', 1, '2021-10-08'),
(1070, 83, 28, 6, 'Art Appreciation', '', '(M)8:30am-10:00am / (T)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1071, 88, 28, 17, 'Conceptual FW & Accounting Standards', '', '(M)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(1072, 116, 28, 53, 'English for Specific Purposes', '', '(W)2:30pm-4:00pm / (F)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1073, 14, 28, 57, 'Financial Market', '', '(M)1:00pm-2:30pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1074, 88, 28, 59, 'Intermediate Accounting 2', '', '(M)3:00pm-6:00pm / (Th)7:00am-10:00am', '6', 1, '2021-10-08'),
(1075, 43, 28, 66, 'IT Application Tools in Business', '', '(W)8:30am-10:00am / (W)10:00am-11:30am', '3', 1, '2021-10-08'),
(1076, 37, 28, 89, 'Physical Education 3', '', '(W)5:00pm-6:00pm / (W)6:00pm-7:00pm', '2', 1, '2021-10-08'),
(1077, 80, 28, 112, 'The Contemporary World', '', '(M)7:00pm-8:30pm / (T)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1078, 80, 28, 114, 'The Entrepreneurial Mind', '', '(W)7:00pm-8:30pm / (F)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1079, 3, 74, 29, 'Field Study 1 & 2', '', '(W)1:00pm-4:00pm / (Th)1:00pm-4:00pm', '6', 1, '2021-10-08'),
(1080, 122, 74, 113, 'Teacher Education Enrichment Course 1', '', '(W)10:00am-11:30am / (Th)10:00am-11:30am', '3', 1, '2021-10-08'),
(1081, 58, 73, 29, 'Field Study 1 & 2', '', '(Th)8:30am-11:30am / (F)8:30am-11:30am', '6', 1, '2021-10-08'),
(1082, 122, 73, 113, 'Teacher Education Enrichment Course 1', '', '(Th)1:00pm-2:30pm / (F)1:00pm-2:30pm', '3', 1, '2021-10-08'),
(1083, 86, 23, 12, 'Algorithm', '', '(M)5:30pm-7:00pm / (M)7:00pm-8:30pm', '3', 1, '2021-10-08'),
(1084, 66, 23, 13, 'Programming Languages', '', '(M)11:30am-1:00pm / (T)11:30am-1:00pm', '3', 1, '2021-10-08'),
(1085, 36, 23, 61, 'Information Assurance and Security', '', '(S)1:00pm-2:30pm / (S)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1086, 65, 23, 84, 'Networks and Communications', '', '(F)7:00am-8:30am / (F)8:30am-10:00am', '3', 1, '2021-10-08'),
(1087, 60, 23, 91, 'Application Development & Emerging Technologies', '', '(S)4:00pm-5:30pm / (S)5:30pm-7:00pm', '3', 1, '2021-10-08'),
(1088, 102, 23, 98, 'Software Engineering 2', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-08'),
(1089, 10, 23, 109, 'System Integration and Architecture', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-08'),
(1090, 124, 23, 117, 'Web System & Technology', '', '(S)8:30am-10:00am / (S)10:00am-11:30am', '3', 1, '2021-10-08'),
(1091, 42, 32, 66, 'IT Application Tools in Business', '', '(F)8:30am-10:00am / (F)1:00pm-2:30pm', '3', 1, '2021-10-09'),
(1092, 43, 56, 76, 'Calculus 3', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-09'),
(1093, 43, 55, 73, 'Calculus 1 w/ Analytic Geometry', '', '(F)1:00pm-3:00pm / (F)3:00pm-5:00pm', '4', 1, '2021-10-09'),
(1094, 43, 55, 75, 'Mathematics of Investment', '', '(M)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-09'),
(1095, 42, 27, 66, 'IT Application Tools in Business', '', '(W)11:30am-1:00pm / (Th)11:30am-1:00pm', '3', 1, '2021-10-09'),
(1096, 43, 57, 76, 'Calculus 3', '', '(W)2:30pm-4:00pm / (Th)2:30pm-4:00pm', '3', 1, '2021-10-09'),
(1097, 43, 58, 113, 'Teacher Education Enrichment Course 1', '', '(W)1:00pm-2:30pm / (Th)1:00pm-2:30pm', '3', 1, '2021-10-09'),
(1098, 42, 34, 66, 'IT Application Tools in Business', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-09'),
(1099, 43, 59, 113, 'Teacher Education Enrichment Course 1', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-09'),
(1100, 42, 35, 66, 'IT Application Tools in Business', '', '(M)8:30am-10:00am / (T)8:30am-10:00am', '3', 1, '2021-10-09'),
(1101, 42, 36, 66, 'IT Application Tools in Business', '', '(Th)10:00am-11:30am / (F)10:00am-11:30am', '3', 1, '2021-10-09'),
(1102, 42, 28, 66, 'IT Application Tools in Business', '', '(W)8:30am-10:00am / (W)10:00am-11:30am', '3', 1, '2021-10-09'),
(1103, 73, 17, 118, 'TEST', 'admin/uploads/thumbnails.jpg', '(M)7:00pm-8:30pm / (W)5:30pm-8:00pm', '4', 1, '2021-10-09'),
(1104, 73, 14, 117, 'TEST', 'admin/uploads/thumbnails.jpg', '(M)7:00pm-8:30pm / (W)5:30pm-6:00pm', '5', 1, '2021-10-09'),
(1105, 58, 71, 107, 'Electricity and Magnetism with Lab', '', '(F)1:00pm-3:00pm / (F)3:00pm-5:00pm', '4', 1, '2021-10-10'),
(1106, 111, 64, 47, 'Technology for Teaching and Learning 2', '', '(W)4:00pm-5:30pm / (Th)4:00pm-5:30pm', '3', 1, '2021-10-10'),
(1107, 111, 65, 47, 'Technology for Teaching and Learning 2', '', '(M)1:00pm-2:30pm / (F)8:30am-10:00am', '3', 1, '2021-10-10'),
(1108, 99, 29, 62, 'Interactive English', '', '(W)8:30am-10:00am / (Th)8:30am-10:00am', '3', 1, '2021-10-10'),
(1109, 109, 9, 117, 'Web System & Technology', '', '(M)5:30pm-7:00pm / (W)5:30pm-7:00pm', '3', 1, '2021-10-10'),
(1110, 99, 31, 62, 'Interactive English', '', '(M)10:00am-11:30am / (T)10:00am-11:30am', '3', 1, '2021-10-10'),
(1111, 111, 66, 47, 'Technology for Teaching and Learning 2', '', '(W)2:30pm-4:00pm / (T)2:30pm-4:00pm', '3', 1, '2021-10-10'),
(1112, 32, 23, 117, 'Web System & Technology', '', '(S)8:30am-10:00am / (S)10:00am-11:30am', '3', 1, '2021-10-10'),
(1113, 99, 30, 62, 'Interactive English', '', '(M)1:00pm-2:30pm / (T)1:00pm-2:30pm', '3', 1, '2021-10-10'),
(1114, 24, 1, 89, 'Individual and Dual Sports', '', '(M)2:30pm-3:30pm / (M)3:30pm-4:30pm', '2', 1, '2021-10-10'),
(1115, 5, 75, 119, 'Professional Ethics', '', '(S) 8:00am - 11:00am', '3', 1, '2021-10-18'),
(1116, 3, 73, 29, 'Field Study 1 & 2', '', '(Th)8:30am-11:30am / (F)8:30am-11:30am', '6', 1, '2021-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `id_no` varchar(100) NOT NULL,
  `location` text NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL DEFAULT '',
  `middlename` varchar(100) NOT NULL DEFAULT '',
  `lastname` varchar(100) NOT NULL DEFAULT '',
  `user_role` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `password` varchar(100) NOT NULL,
  `email_address` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT 0,
  `last_signin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `id_no`, `location`, `firstname`, `middlename`, `lastname`, `user_role`, `username`, `password`, `email_address`, `status`, `locked`, `last_signin`) VALUES
(1, 'ituser', 'upload\\user_image_62b5dd1ccd7231.tmp', 'Ronnel', '', 'Macompas', 1, 'ituser', '8bdcd09f5a8f9c55cb6702aed6728362db813e97', 'ronnel@yahoo.com', 0, 0, NULL),
(2, '', '', 'SAMPLE_REGS', '', 'LAST', 2, '', 'a195c5c1019326441def43766894f74373e13003', '', 1, 0, NULL),
(8, 'nel', '', 'neru', '', 'tokisaki', 2, 'nel', '5ecab09f348cc97279a616079664d6373c1b4ec6', 'neru@gmail.com', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `login_date` datetime NOT NULL,
  `logout_date` datetime NOT NULL,
  `action` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  `device` varchar(255) NOT NULL,
  `system_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `login_date`, `logout_date`, `action`, `user_id`, `session_id`, `ip_address`, `device`, `system_id`) VALUES
(1, '2022-05-16 05:44:34', '2022-05-16 05:45:46', 'LOGIN', 1, '654faac42003f64c70203ed26c20191d278b97f44f5e3916e3dd54cb76a8f7e7', '::1', '{\"device\":\"Chrome\",\"version\":\"101.0.4951.54\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 101.0.4951.54 on Windows 10 64-bit\"}', 0),
(2, '2022-05-16 05:45:22', '2022-05-16 05:45:46', 'LOGIN', 1, '654faac42003f64c70203ed26c20191d278b97f44f5e3916e3dd54cb76a8f7e7', '::1', '{\"device\":\"Chrome\",\"version\":\"101.0.4951.54\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 101.0.4951.54 on Windows 10 64-bit\"}', 0),
(3, '2022-05-16 05:46:56', '2022-05-16 06:04:49', 'LOGIN', 1, '91fb6aa2a34f2cafc6c94880a00020301a0e957cb8e33639a2ea45a61b4cd35a', '::1', '{\"device\":\"Chrome\",\"version\":\"101.0.4951.54\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 101.0.4951.54 on Windows 10 64-bit\"}', 0),
(4, '2022-05-16 06:05:00', '2022-05-16 06:10:22', 'LOGIN', 1, '7484452f8fe5377df1a67a3a83e6d50bf705662458b4f799a61c6d1fd7948412', '::1', '{\"device\":\"Chrome\",\"version\":\"101.0.4951.54\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 101.0.4951.54 on Windows 10 64-bit\"}', 0),
(5, '2022-06-10 01:43:53', '2022-06-10 01:49:34', 'LOGIN', 1, '12839537228cb0cdda7a14d75e9e76a04e8797db8495fc718c0517e0e5f1d877', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(6, '2022-06-10 01:49:38', '2022-06-10 01:50:47', 'LOGIN', 1, '09ab73c783b22872c07f12d5af1b294cfc6275bd2e7cdcf3f3b6e40d3d2566ba', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(7, '2022-06-10 02:04:45', '2022-06-10 02:04:49', 'LOGIN', 1, 'bdb5ccedebf34213041ff31987aa89d33f795e15a3a5e3488e7fcc791532c2e4', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(8, '2022-06-10 02:10:01', '2022-06-10 02:16:59', 'LOGIN', 1, 'a2ac17ca83a38061c432492fdd8dfd189c2dd3dfc06a59c23fe328f00cea15d2', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(9, '2022-06-10 02:24:04', '0000-00-00 00:00:00', 'LOGIN', 1, 'a21c5ae35c16157353fca3792fcbf0ae23289a9cc4d18c93bf186c9f1fdd2da1', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(10, '2022-06-10 08:59:02', '2022-06-10 08:59:51', 'LOGIN', 1, '1b652ce6703c9534c0616ce2bc8e4d238fab278d95851074c06f6281b44e3c64', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(11, '2022-06-10 08:59:57', '2022-06-10 16:02:48', 'LOGIN', 1, '6e5b8eb7f7590fdcafcced1608c3dc51090c26f73ad0e6cb1ce4212e10151a1d', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(12, '2022-06-10 16:03:44', '2022-06-10 16:04:17', 'LOGIN', 1, '00473411e72f1585581a2996661eb19a828e0485dbeb047b97f25ada192b031d', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(13, '2022-06-10 16:04:24', '2022-06-10 16:05:25', 'LOGIN', 1, '8d0045ec3c1f894689dfc34db6a42153b6c05f6863a24219d82f81d091e9ce6d', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(14, '2022-06-10 16:05:29', '0000-00-00 00:00:00', 'LOGIN', 1, '20b6b934f0816ef7b204164b8dd5e45dd86af44def3a4bacaf795c4264e52b47', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.99\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.99 on Windows 10 64-bit\"}', 0),
(15, '2022-06-11 20:26:29', '2022-06-11 22:30:19', 'LOGIN', 1, '587ab03544b4e0ac9372347ed6881e7aae9435a816823456c0efda774cbdb6d0', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(16, '2022-06-11 22:30:24', '0000-00-00 00:00:00', 'LOGIN', 1, 'ccfad566152fe7e4df8336c6865ae0dc3572a98427aaa6e0cd46cc5a495f7912', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(17, '2022-06-12 11:24:54', '0000-00-00 00:00:00', 'LOGIN', 1, '77f20b35263cd13cfc364a3d58f703c83a269c28172ef0f5cd99ab6852777023', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(18, '2022-06-12 12:33:04', '0000-00-00 00:00:00', 'LOGIN', 1, '83919b0f8ed65aa8d126432a763a21d386f9d5899711579885f0e59621b60095', '::1', '{\"device\":\"Safari\",\"version\":\"13.0.3\",\"layout\":\"WebKit\",\"os\":{\"architecture\":32,\"family\":\"iOS\",\"version\":\"13.2.3\"},\"description\":\"Safari 13.0.3 on Apple iPhone (iOS 13.2.3)\"}', 0),
(19, '2022-06-12 12:38:16', '2022-06-12 13:12:30', 'LOGIN', 1, '6318863a977a0adc054acb9811a3eb9e00996976c48706c130aaa225e6945100', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(20, '2022-06-12 13:16:45', '0000-00-00 00:00:00', 'LOGIN', 1, 'fba6fbc650309dbf206dc4f6ffffad412b16c1cbc8a9495d8090b77c9a034b1b', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(21, '2022-06-12 19:12:14', '0000-00-00 00:00:00', 'LOGIN', 1, 'ad22fbcd797fb17c5643b73ddf1acbc29d9b1b3f5ea38ddddbadbbf886c24547', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(22, '2022-06-13 09:10:11', '2022-06-13 10:28:56', 'LOGIN', 1, '22c048511557f206daa4b7b7c1f921fe5a2a40126ea6beed2a82f44e14664ab3', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(23, '2022-06-13 10:29:18', '2022-06-13 10:29:34', 'LOGIN', 1, '4d0896c27845ebc40376ef3c310cd08997bba1ecc0870dc60489a38dda14e6ed', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(24, '2022-06-13 10:29:37', '2022-06-13 10:29:59', 'LOGIN', 8, 'e20d9bac72a88d345ff2a77f787ebdfaa236e804fd6cdd1ba83e8b7f6311ea20', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(25, '2022-06-13 10:30:04', '2022-06-13 11:41:42', 'LOGIN', 1, '2b835a44e6ae18c59eb16ee102ff1344ea5976c9b14b9317bab6846f8b48d3a1', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(26, '2022-06-13 11:41:46', '0000-00-00 00:00:00', 'LOGIN', 1, '4a882e54b6c2ebf34dec6872faedf296f7b08b5fbd41b05b14550afcfb6a42af', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(27, '2022-06-13 15:22:00', '2022-06-13 20:20:18', 'LOGIN', 1, '42e4adb4ae57ee4e3d4587a4120bef033462b1f8c1bd0ac5907dd2e43eeb7897', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(28, '2022-06-13 20:20:22', '2022-06-13 20:38:05', 'LOGIN', 1, '315838f56ed16f0877253fb3531aa5c588c4ba10b5a2cf478945b4085309ac56', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(29, '2022-06-13 20:38:13', '0000-00-00 00:00:00', 'LOGIN', 1, 'fd4b4980b426c7226bef3b8265ff137ba1b53790a3378a5a33578d65cd4f8664', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(30, '2022-06-14 07:52:17', '2022-06-14 10:01:10', 'LOGIN', 1, 'ab71962493e7d23c745246d7a37ed7e39fe4db85c393387a25727e060bed7bdb', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(31, '2022-06-14 10:01:20', '2022-06-14 10:10:39', 'LOGIN', 1, 'f6b1d685dd32e858a9a67ae59424fd8f5dee81c2417ab137db5c49d5b26865a5', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(32, '2022-06-14 10:11:17', '0000-00-00 00:00:00', 'LOGIN', 1, '45c99b4799db40ff23b97b7b14def6534f9a0748522f551bf79e33590a38a263', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(33, '2022-06-14 16:09:09', '0000-00-00 00:00:00', 'LOGIN', 1, '0b7489b33c4696233063915230e394a23184b0e9f0c77d359abd8b272c1192dc', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(34, '2022-06-14 20:01:41', '0000-00-00 00:00:00', 'LOGIN', 1, 'c3025f9c68ced90a43ba8b49f364fe82accfc375ec9ac19824c1531004b57985', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(35, '2022-06-14 22:53:39', '0000-00-00 00:00:00', 'LOGIN', 1, '2a2a774fd4aa92dfb60e3e73ea218756203e1bbaa09638c543488bd99e98b25b', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.41\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.41 on Windows 10 64-bit\"}', 0),
(36, '2022-06-15 08:51:30', '0000-00-00 00:00:00', 'LOGIN', 1, '9c7c0ea8e5e6ffa935518ad51ee9a45ad4ef3b2958884e7ba3865bc807a08892', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.41\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.41 on Windows 10 64-bit\"}', 0),
(37, '2022-06-15 15:05:09', '0000-00-00 00:00:00', 'LOGIN', 1, 'd32e4682fa0ede157e64112c544555662450bc085031c19ab25eee98f131e8b5', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.41\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.41 on Windows 10 64-bit\"}', 0),
(38, '2022-06-15 19:05:10', '0000-00-00 00:00:00', 'LOGIN', 1, '422a7aeade2b0ca6c3447c25209b658ca613927e14dc05b4c95f9b6a5ce583c6', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.41\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.41 on Windows 10 64-bit\"}', 0),
(39, '2022-06-15 19:39:43', '0000-00-00 00:00:00', 'LOGIN', 1, '0f272c83a0e29b330bf9c664ec5169dfb97a868915978f3f430b589aaf2c7899', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(40, '2022-06-17 20:38:02', '0000-00-00 00:00:00', 'LOGIN', 1, 'da9f7d36cc99470060babd3edffc995845887219f50270fd00be1e10ebb82cb6', '127.0.0.1', '{\"device\":\"Firefox\",\"version\":\"101.0\",\"layout\":\"Gecko\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Firefox 101.0 on Windows 10 64-bit\"}', 0),
(41, '2022-06-17 21:26:00', '0000-00-00 00:00:00', 'LOGIN', 1, '61ba4d3703a030a70773219b93ea6466c7682cf2b5711c0049bba8727426c770', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(42, '2022-06-18 09:29:36', '0000-00-00 00:00:00', 'LOGIN', 1, '115fb9f9928fd5e50890a5bce4f08f59b86dccb57726e99589527aaccbcbbdd2', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(43, '2022-06-18 14:35:49', '2022-06-18 19:09:39', 'LOGIN', 1, 'd224d02d0157a189aef735fc499227d275f3aa970e3bc04f0817509edc43ebb6', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(44, '2022-06-18 19:09:43', '0000-00-00 00:00:00', 'LOGIN', 1, '9f519ef1ade37ede4f3f8c26e5be60ecb2741ae5de3941b536c538f1055f53d8', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.5005.115\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.5005.115 on Windows 10 64-bit\"}', 0),
(45, '2022-06-19 22:20:52', '0000-00-00 00:00:00', 'LOGIN', 1, '89aac3abe5b391c2ab38e8f56365c0148beea50a8561be1b3922929e886265d1', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(46, '2022-06-20 09:32:24', '2022-06-20 11:19:15', 'LOGIN', 1, 'da7113696b00d2c30b37e56334da0d907f272b7f8e0ff67991b6074b48c86416', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(47, '2022-06-20 11:19:21', '0000-00-00 00:00:00', 'LOGIN', 1, '333c33a2c3927731805ead024e0f09824581606f27dd21b0534225f19c04c55f', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(48, '2022-06-20 21:33:33', '2022-06-20 21:36:10', 'LOGIN', 1, '65bf12fdb2cce3e6011c81baa7f33e1bd5062c032d4a84b9d862390f3e325ee0', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(49, '2022-06-20 21:36:14', '2022-06-20 21:36:18', 'LOGIN', 1, 'a7c72c0a90ac4389da58ca09ad348703e8a7a7394bf4cde71394fd3fd1591963', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(50, '2022-06-20 21:36:38', '0000-00-00 00:00:00', 'LOGIN', 1, '15bbab367840b05f449187a5a574f3da7654aa745322020857ec22c08b1b4510', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(51, '2022-06-21 07:53:39', '2022-06-21 08:02:59', 'LOGIN', 1, 'f03efe60adf8cfcf7f20eb997187186e1cf225c2b736c2eec728d5304dc4a8db', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(52, '2022-06-21 08:03:02', '2022-06-21 10:08:40', 'LOGIN', 1, '65e720b2b87ba2ca6d4ae0726c1e7754d75a9fa07f5c13f8b4225cdb0b60fb26', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(53, '2022-06-21 10:17:39', '2022-06-21 10:26:19', 'LOGIN', 1, '40231707bc5f5b05f1143bd0b89ec6a04586f97cdba97410ead74eb35a5cd72b', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(54, '2022-06-21 10:26:47', '2022-06-21 10:27:01', 'LOGIN', 1, 'f35a359c06d8c2d6a60267187bc93e6e96a019574ec260ca2206b8e43e5109d9', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(55, '2022-06-21 10:27:34', '0000-00-00 00:00:00', 'LOGIN', 1, '67141e61dd8c66248e2b2643f1bf1ff4173740d4f53a389eb8e468356ca3e065', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(56, '2022-06-21 15:08:59', '2022-06-21 15:12:27', 'LOGIN', 1, '8e45b035ba8561f98304eb9c76e7921cd706204832358ed17e82c2b767722659', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.0.0 on Windows 10 64-bit\"}', 0),
(57, '2022-06-21 15:22:12', '2022-06-21 15:28:01', 'LOGIN', 1, 'bb6bfbccae6a5c5336a788154c8de60c0b3218111bb19f649705806edd01a696', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.0.0 on Windows 10 64-bit\"}', 0),
(58, '2022-06-21 16:20:04', '2022-06-21 16:31:20', 'LOGIN', 1, '32de06de364f1dbb4b9e33a69253a9bda3ae67e1f201992e1a22950cf546ffa2', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.0.0 on Windows 10 64-bit\"}', 0),
(59, '2022-06-21 16:31:48', '0000-00-00 00:00:00', 'LOGIN', 1, 'c3068dd94ce6ec295120575321d22107feb60d6aa4094af0250c0781b08042b7', '::1', '{\"device\":\"Chrome\",\"version\":\"102.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 102.0.0.0 on Windows 10 64-bit\"}', 0),
(60, '2022-06-21 18:49:01', '0000-00-00 00:00:00', 'LOGIN', 1, '20585e3b709663bd64ea45721113614d5812951cc03043afc1419cc418a86e4b', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(61, '2022-06-22 09:40:51', '0000-00-00 00:00:00', 'LOGIN', 1, 'c7e96ef9c2dbc5538b459c1446cde0709d7b37d301d9a5ee332834f0a29179c7', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(62, '2022-06-22 12:47:01', '0000-00-00 00:00:00', 'LOGIN', 1, 'e1720cb8e77530b5cbe1aff7a646bddf4b3467277ed3f57ccf4c288fe6cd39d4', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(63, '2022-06-23 22:07:53', '0000-00-00 00:00:00', 'LOGIN', 1, '0ca7055d5dd66c30dd40e0e67dccadedc7d5125639bbe8e9093ef780ccf75e57', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(64, '2022-06-24 08:47:14', '0000-00-00 00:00:00', 'LOGIN', 1, '7f4d9372ac1275317834bf302ffae12a499cf026886ca35fdd738cd024cf9e2f', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(65, '2022-06-24 17:27:31', '0000-00-00 00:00:00', 'LOGIN', 1, '1061f86dba9853db02c0918835e0de0734edf813aa873f967980c46995f2ce33', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(66, '2022-06-24 21:39:59', '2022-06-24 23:44:00', 'LOGIN', 1, 'db8dc5a4fcf380c80c943f6dac5102ab1d7ad2ab8a6861fc0e281d77a109b352', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(67, '2022-06-24 23:44:04', '2022-06-24 23:44:42', 'LOGIN', 1, 'f864089ec9befd2decb87c3f026dc1684dcf9e2af29a97d480059492c9ee08ad', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(68, '2022-06-24 23:44:46', '0000-00-00 00:00:00', 'LOGIN', 1, '307a2296737d52960c1366a00f89240e8349cf7ed9cdbfbcdd5cc5b080e2c151', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"102.0.1245.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 102.0.1245.44 on Windows 10 64-bit\"}', 0),
(69, '2022-06-25 11:16:16', '2022-06-25 14:12:05', 'LOGIN', 1, '7899d4a2619468b0569246e4b87d5e835193f0db953e916089508db36222188e', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(70, '2022-06-25 14:12:23', '0000-00-00 00:00:00', 'LOGIN', 1, 'eff7724750620434b35be34537bb9d76272ebfb4db2d29bde290b8e177fedc55', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(71, '2022-06-26 15:32:15', '0000-00-00 00:00:00', 'LOGIN', 1, '812cb7465ec7816e194fe3963b2a234d4fb4dcbe079ae3ce0eb3cb83323d3f22', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `reset_code`
--
ALTER TABLE `reset_code`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_surveys_records`
--
ALTER TABLE `tbl_surveys_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reset_code`
--
ALTER TABLE `reset_code`
  MODIFY `reset_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tbl_surveys_records`
--
ALTER TABLE `tbl_surveys_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
