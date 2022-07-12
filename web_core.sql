-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 05:46 AM
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
(21, 1, '2022-06-21 10:26:56', 'Reset Password Admin Account:ituser - DETAILS : \r\n({\"ADMIN_ID\":\"1\",\"ADMIN_NO\":\"ituser\",\"FIRSTNAME\":\"aaaa\",\"LASTNAME\":\"ddd\",\"USERNAME\":\"ituser\",\"USER_ROLE\":\"1\"})', 'f35a359c06d8c2d6a60267187bc93e6e96a019574ec260ca2206b8e43e5109d9', '1', 0),
(22, 1, '2022-06-26 22:06:41', 'Add User depart Details::{\"USER_ID\":9,\"USERNAME\":\"depart\",\"FIRST_NAME\":\"depter\",\"LAST_NAME\":\"partment\",\"USER_ROLE\":\"3\",\"EMAIL\":\"depter@gmail.com\"}', '812cb7465ec7816e194fe3963b2a234d4fb4dcbe079ae3ce0eb3cb83323d3f22', '1', 0),
(23, 1, '2022-06-26 22:07:00', 'Reset Password Admin Account:depart - DETAILS : \r\n({\"ADMIN_ID\":\"9\",\"ADMIN_NO\":\"depart\",\"FIRSTNAME\":\"depter\",\"LASTNAME\":\"partment\",\"USERNAME\":\"depart\",\"USER_ROLE\":\"3\"})', '812cb7465ec7816e194fe3963b2a234d4fb4dcbe079ae3ce0eb3cb83323d3f22', '1', 0),
(24, 1, '2022-06-27 01:49:08', 'Reset Password Admin Account:depart - DETAILS : \r\n({\"ADMIN_ID\":\"9\",\"ADMIN_NO\":\"depart\",\"FIRSTNAME\":\"depter\",\"LASTNAME\":\"partment\",\"USERNAME\":\"depart\",\"USER_ROLE\":\"3\"})', 'f765ac82b9a89b7f4d22cfee3582e2f3a448288c2c90eafbe9622b9fae98cbcb', '1', 0),
(25, 1, '2022-07-09 15:44:04', 'Update User nel USER_ID:8 - FROM Details {\"USER_ROLE\":\"2\"} TO {\"USER_ROLE\":\"3\"}', '52f7aa16ff97cb1fa190bf6c963ce141444f8fb8af90ff8fd353ebb267aab168', '1', 0),
(26, 1, '2022-07-11 22:18:23', 'Update User nel32 USER_ID:8 - FROM Details {\"USER_NO\":\"nel\"} TO {\"USER_NO\":\"nel32\"}', 'da696e1d9caead25ab728d6f028652ad56c64bb5650877ea342f2a76b909f6eb', '1', 0),
(27, 1, '2022-07-11 22:18:38', 'Update User user_depart USER_ID:9 - FROM Details {\"USER_NO\":\"depart\"} TO {\"USER_NO\":\"user_depart\"}', 'da696e1d9caead25ab728d6f028652ad56c64bb5650877ea342f2a76b909f6eb', '1', 0);

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

--
-- Dumping data for table `reset_code`
--

INSERT INTO `reset_code` (`reset_id`, `reset_code`, `user_id`, `email_address`, `created`, `expire_date`, `status`, `user_type`) VALUES
(1, 'cfec33c401ca2a0dab67cb5e', 9, 'depter@gmail.com', '2022-06-27 13:20:50', '2022-06-27 17:20:50', 0, 1);

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
-- Table structure for table `survey_template`
--

CREATE TABLE `survey_template` (
  `s_template_id` int(11) NOT NULL,
  `template_title` varchar(255) NOT NULL,
  `template_header` text NOT NULL,
  `date_publish` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `survey_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survey_template`
--

INSERT INTO `survey_template` (`s_template_id`, `template_title`, `template_header`, `date_publish`, `survey_type`) VALUES
(20, 'template 001', '<p><em><strong>dexcriptio</strong>n</em> here...<img alt=\"\" src=\"ckeditor/uploads/246-2467553_nuwave-design-ltd-your-logo-here-png-png.jpg\" style=\"height:150px; width:150px\" /></p>\r\n', '2022-07-07 12:25:35', 'type 1'),
(22, 'Header 1', '<p style=\"text-align:center\"><img alt=\"\" src=\"ckeditor/uploads/thumb-350-296347.png\" style=\"height:100px; width:100px\" />&nbsp; &nbsp; &nbsp; &nbsp;Header Title Here&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"\" src=\"ckeditor/uploads/tumblr_8af80293008a8375acc428825dcdb5dd_c3dc0212_540.jpg\" style=\"height:99px; width:100px\" /></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '2022-07-05 11:33:05', NULL);

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
-- Table structure for table `tbl_survey_dept`
--

CREATE TABLE `tbl_survey_dept` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(255) NOT NULL,
  `date_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_survey_dept`
--

INSERT INTO `tbl_survey_dept` (`id`, `dept_name`, `date_log`) VALUES
(7, 'Cashier', '2022-07-11 17:23:26'),
(8, 'Clinic', '2022-07-12 00:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tmpl_body2`
--

CREATE TABLE `tbl_tmpl_body2` (
  `id` int(11) NOT NULL,
  `questions` varchar(255) NOT NULL,
  `templ_id` int(11) DEFAULT NULL,
  `date_log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tmpl_body2`
--

INSERT INTO `tbl_tmpl_body2` (`id`, `questions`, `templ_id`, `date_log`) VALUES
(1, 'What\'s your favorite color?', 1, '2022-07-06 08:13:50'),
(2, 'What\'s your name?', NULL, '2022-07-06 09:28:44');

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
  `last_signin` datetime DEFAULT NULL,
  `dept_assign` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `id_no`, `location`, `firstname`, `middlename`, `lastname`, `user_role`, `username`, `password`, `email_address`, `status`, `locked`, `last_signin`, `dept_assign`) VALUES
(1, 'ituser', 'upload\\user_image_62b5dd1ccd7231.tmp', 'admin', '', 'asas', 1, 'ituser', '8bdcd09f5a8f9c55cb6702aed6728362db813e97', 'ronnel@yahoo.com', 0, 0, NULL, NULL),
(2, '', '', 'SAMPLE_REGS', '', 'LAST', 2, '', 'a195c5c1019326441def43766894f74373e13003', '', 1, 0, NULL, NULL),
(8, 'nel32', '', 'neru', '', 'tokisaki', 3, 'nel32', '5ecab09f348cc97279a616079664d6373c1b4ec6', 'neru@gmail.com', 0, 0, NULL, 'Clinic'),
(9, 'user_depart', '', 'depter', '', 'partment', 3, 'user_depart', 'cc61cc7b75613e174384cc1005a752c7340a1c4b', 'depter@gmail.com', 0, 0, NULL, 'Cashier');

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
(71, '2022-06-26 15:32:15', '0000-00-00 00:00:00', 'LOGIN', 1, '812cb7465ec7816e194fe3963b2a234d4fb4dcbe079ae3ce0eb3cb83323d3f22', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(72, '2022-06-26 22:08:11', '0000-00-00 00:00:00', 'LOGIN', 9, '81e06fb019ea6c5c6618d71366ea166873b311437fbf022be3be7f5166431ec4', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(73, '2022-06-27 01:48:08', '2022-06-27 01:49:15', 'LOGIN', 1, 'f765ac82b9a89b7f4d22cfee3582e2f3a448288c2c90eafbe9622b9fae98cbcb', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(74, '2022-06-27 01:49:38', '0000-00-00 00:00:00', 'LOGIN', 9, '537b06fff7a346cd444de41d0557083cc8dff31dcf0366d53b2649ced2e96dbd', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(75, '2022-06-27 10:23:29', '0000-00-00 00:00:00', 'LOGIN', 9, '94ed01c8b17a0b1cf5e55a8e81e4c5741ce296e18841c05013abf31c0c52c1f8', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(76, '2022-06-27 11:17:08', '0000-00-00 00:00:00', 'LOGIN', 9, 'e7bb2e40fb9d7b7f98b06e41ef2e68663fb1c7ab29798dedb11ba9a07beeefd1', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(77, '2022-06-27 11:31:19', '2022-06-27 11:33:02', 'LOGIN', 1, '3b28c7f35123ebf7b55ef065bd48b47c2eeea54e76a1131c15feba2ce8a780ff', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(78, '2022-06-27 11:33:13', '0000-00-00 00:00:00', 'LOGIN', 9, 'b95a5db1951747ad43240c68278c9d1e8aa727859e547ce4b52837cdccbaa849', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(79, '2022-06-27 11:44:12', '0000-00-00 00:00:00', 'LOGIN', 1, 'f85815ac4e8a3744f4af74f16c8269b51c464e4e3812b8aa2c413353c1fe0259', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(80, '2022-06-27 11:56:31', '2022-06-27 11:56:35', 'LOGIN', 1, 'bb43216ba10812445430bf2df60029c4939f49a44d733d0fa3d60fba97904510', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(81, '2022-06-27 11:56:51', '0000-00-00 00:00:00', 'LOGIN', 9, '3b47abeb5a3d1aae4e823e90e05d34c3b9e0b3058c250f7afae58530735f9090', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(82, '2022-06-27 13:09:16', '0000-00-00 00:00:00', 'LOGIN', 1, 'dc3bbe1766765f350d061c3cc9e8b0c5cd5ad40e237464c93b8454466da0139e', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(83, '2022-06-27 13:14:22', '2022-06-27 13:14:34', 'LOGIN', 1, 'b37c31fc8f0504229ee8f061b25f5e824659690f8162dff346da5558d783aaf4', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(84, '2022-06-27 13:14:45', '0000-00-00 00:00:00', 'LOGIN', 9, '229041393e10c278d8955b9fd7e263f17a1461fecbde04723507cc17474c6d98', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(85, '2022-06-27 13:17:39', '0000-00-00 00:00:00', 'LOGIN', 9, 'b626209d17370d5bb54ac007098e57a00da2f28d09e509963365111745c44b3c', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(86, '2022-06-27 13:18:04', '2022-06-27 13:20:03', 'LOGIN', 1, '181c8884d3e28f77a7ed1c96e1e573f71fed8c243e17eb03c0424485e74ab7d8', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(87, '2022-06-27 13:21:06', '0000-00-00 00:00:00', 'LOGIN', 1, 'defcc0f62ef41f175421f12fd1c5872998ce6bb08efe0edba1ed87eb6c42b210', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(88, '2022-06-27 17:05:15', '2022-06-27 21:59:46', 'LOGIN', 1, '4a6a72d5c985b40b4f4c6134b1284239f5a33287831766f9f278895a85fbb29c', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(89, '2022-06-27 22:02:26', '2022-06-27 22:03:13', 'LOGIN', 1, 'e4879ba26bcc1c98a66e33b77bf4c58703f6c59ca2ecb4b4889e138f6a3e1aae', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(90, '2022-06-27 22:03:23', '0000-00-00 00:00:00', 'LOGIN', 9, '308d009e0f577acba18a610d15d758758bfcf16afbbfdb094e15fa93520e411e', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(91, '2022-06-27 22:15:31', '0000-00-00 00:00:00', 'LOGIN', 1, '9024993d378cdf5bccdf6e1a9acd07b17e36c5ba40979539f86e73faf31654c1', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(92, '2022-06-27 22:30:16', '0000-00-00 00:00:00', 'LOGIN', 1, '5733e27a8a2c7052f7afeaa17e7893526a42907e776f62a42bc95c5483334cfc', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.53\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.53 on Windows 10 64-bit\"}', 0),
(93, '2022-06-28 09:26:49', '0000-00-00 00:00:00', 'LOGIN', 1, '7dcb0fd8879d92be87642c5b4fa016470c8c0a50f9a90fb069d89136656bea57', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.53\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.53 on Windows 10 64-bit\"}', 0),
(94, '2022-06-28 20:49:58', '0000-00-00 00:00:00', 'LOGIN', 1, '1477cd8c4b5f0521f7e904d9aad32dadd1589b79a516269f688d3acc2adb27e3', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.53\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.53 on Windows 10 64-bit\"}', 0),
(95, '2022-06-29 19:50:27', '0000-00-00 00:00:00', 'LOGIN', 1, '961e06a0e7089679990a034308bbebb0f6aff0cacdbda3a25c29556cf69b11d5', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(96, '2022-06-30 21:15:41', '0000-00-00 00:00:00', 'LOGIN', 1, '3f8aa785653396fd50be2165791266457b28d53955fb20156ed6751265fb74be', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.66\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.66 on Windows 10 64-bit\"}', 0),
(97, '2022-07-01 15:23:42', '0000-00-00 00:00:00', 'LOGIN', 1, '9ad9de29231a18c90fe208ee9a2dfd1007064a35a722e307e9ab008bf1d6db53', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(98, '2022-07-01 21:14:04', '0000-00-00 00:00:00', 'LOGIN', 1, '8b7d8865d6fedc96558831c696c07b79a93d6884ac61139754d5f60dfb82b810', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.37\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.37 on Windows 10 64-bit\"}', 0),
(99, '2022-07-01 21:32:30', '0000-00-00 00:00:00', 'LOGIN', 1, 'd6836b028acfb2bd83a5aff86657cb5f5f62361d7d132deeefbd69672f3c8af8', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.44 on Windows 10 64-bit\"}', 0),
(100, '2022-07-02 09:56:54', '0000-00-00 00:00:00', 'LOGIN', 1, '1a4be941f925d53c770cc50825a75c7903ce6ae3dd9fb9aa11be41682bcb10e8', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.44 on Windows 10 64-bit\"}', 0),
(101, '2022-07-02 12:38:05', '0000-00-00 00:00:00', 'LOGIN', 1, 'ca70f44098c75803c87a47affdc868e262ef6f8742b7487ee9b42524d4483c3d', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.44 on Windows 10 64-bit\"}', 0),
(102, '2022-07-04 14:46:59', '0000-00-00 00:00:00', 'LOGIN', 1, '659e5f6a2e5e6492e6b92125792dd9cdfcf3bb924d560030faa2587f3c836c12', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.44\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.44 on Windows 10 64-bit\"}', 0),
(103, '2022-07-05 08:25:31', '0000-00-00 00:00:00', 'LOGIN', 1, '429927cdb2cf2b798e38e24f202ea1aa85147909c85caf98816898f24afcacea', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.66\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.66 on Windows 10 64-bit\"}', 0),
(104, '2022-07-05 19:04:17', '2022-07-05 22:18:44', 'LOGIN', 1, 'ebe3242eb573244efeedc42efbc1bc806b7a4acfecaa95020ff5dde85f08da0b', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.66\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.66 on Windows 10 64-bit\"}', 0),
(105, '2022-07-05 22:18:53', '0000-00-00 00:00:00', 'LOGIN', 1, '68d0a24abe429828089410aacba667158e37ca137bb5833054e57309fc943eb4', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.66\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.66 on Windows 10 64-bit\"}', 0),
(106, '2022-07-06 00:50:28', '0000-00-00 00:00:00', 'LOGIN', 1, '908a9cf7fe3eea16de2e898ba7f0fc22183297608e9630110796286c3953b914', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.66\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.66 on Windows 10 64-bit\"}', 0),
(107, '2022-07-06 10:24:20', '0000-00-00 00:00:00', 'LOGIN', 1, '92db3ae4580a23e6059ef5001675e103b57a5118a5a793d0276b29a7bba6e1c5', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(108, '2022-07-06 14:54:19', '2022-07-06 16:17:08', 'LOGIN', 1, 'b9520b6d48c745782391169b442a63793188c7aa954b751002bc8b5f6d1ce262', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(109, '2022-07-06 16:17:18', '2022-07-06 16:19:33', 'LOGIN', 1, 'fb4db308e8a459bc2c04d180ed53960315c989463d4133826dd2e8663f0dfcc0', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(110, '2022-07-06 16:19:44', '0000-00-00 00:00:00', 'LOGIN', 1, 'e2c99d8853e22374e3761fbb34c835b0ce7981faab6e8c5e624a469b0f8e3011', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(111, '2022-07-06 19:29:10', '0000-00-00 00:00:00', 'LOGIN', 1, '25fb60f65dd67b667b01a4b052be6434aa261e0778ef3b582752eb4c00e1fb50', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(112, '2022-07-07 11:55:03', '0000-00-00 00:00:00', 'LOGIN', 1, '4c12d9a9cf6363d69f94987b00cf6104476244b15f6d4d2ae6f20721a4117e04', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(113, '2022-07-07 15:15:59', '0000-00-00 00:00:00', 'LOGIN', 1, '4eaa965a7bdebcb6eead055f6cd5893d802db42027dc2d4c25b8c515a4ef61a7', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.5060.114\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.5060.114 on Windows 10 64-bit\"}', 0),
(114, '2022-07-08 04:53:43', '2022-07-08 05:52:59', 'LOGIN', 1, 'ac5b3afea4873c85317b1f948f250d7dd74fad2998226378c0f9500e1dc39e3f', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(115, '2022-07-08 05:53:05', '0000-00-00 00:00:00', 'LOGIN', 1, '1c34a80f74a1ee776c413a73e40d0e58003b78cc30a8d4f65ee6922d79759002', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(116, '2022-07-08 06:24:43', '0000-00-00 00:00:00', 'LOGIN', 1, '0a8aab6aa3ec98570f40f013649013770b7ddc7862adf04141b76620add435e5', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(117, '2022-07-08 07:12:34', '0000-00-00 00:00:00', 'LOGIN', 1, '72bc462073812b231beaf61e1ad63291f1b65de8e7a2c797f8b8180599025e1b', '::1', '{\"device\":\"Chrome Mobile\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":32,\"family\":\"Android\",\"version\":\"6.0\"},\"description\":\"Chrome Mobile 103.0.0.0 on Google Nexus 5 (Android 6.0)\"}', 0),
(118, '2022-07-08 07:14:32', '0000-00-00 00:00:00', 'LOGIN', 1, 'e8dffda4dc866486e969e592c4cafc0a4b3ebebe0e0b1d68b49969c9d2fa9fa8', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(119, '2022-07-08 13:49:34', '0000-00-00 00:00:00', 'LOGIN', 1, '5f82f0b8822cf16a115b0f6270b7551597fa2eab06bc13de62e2569b79703caa', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(120, '2022-07-08 17:03:10', '0000-00-00 00:00:00', 'LOGIN', 1, '3e7e0046845bc9b0a518def36c461c34a9ead22760fe8cd142e04d4e65aebebb', '::1', '{\"device\":\"Microsoft Edge\",\"version\":\"103.0.1264.49\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Microsoft Edge 103.0.1264.49 on Windows 10 64-bit\"}', 0),
(121, '2022-07-08 19:32:27', '0000-00-00 00:00:00', 'LOGIN', 1, 'fc7b6f534c968da9444312358dc8c7817a22af4c31c7a4d759e2facf2a21748b', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(122, '2022-07-08 22:33:53', '0000-00-00 00:00:00', 'LOGIN', 1, '301a73463d6f0d4d09a09e8752896686aaaf505005193369d32c4054a7a427dd', '::1', '{\"device\":\"Chrome Mobile\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":32,\"family\":\"Android\",\"version\":\"6.0\"},\"description\":\"Chrome Mobile 103.0.0.0 on Google Nexus 5 (Android 6.0)\"}', 0),
(123, '2022-07-09 11:37:34', '0000-00-00 00:00:00', 'LOGIN', 1, 'f362b11e72d03eeef8f5d401a5c5f9866ced72a984648874f8f91baebbfae9dc', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(124, '2022-07-09 11:56:09', '0000-00-00 00:00:00', 'LOGIN', 1, '07377d013ac763984e0c7b23b9f39f9f975653e92b71d7cbf56f9bada92664f8', '::1', '{\"device\":\"Chrome Mobile\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":32,\"family\":\"Android\",\"version\":\"6.0\"},\"description\":\"Chrome Mobile 103.0.0.0 on Google Nexus 5 (Android 6.0)\"}', 0),
(125, '2022-07-09 11:59:56', '0000-00-00 00:00:00', 'LOGIN', 1, '834828056b6dcbb01b834deb1f1e939a539c1976534520279376eac819b9d1ff', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(126, '2022-07-09 13:20:32', '0000-00-00 00:00:00', 'LOGIN', 1, '1ba0f95b9a5c9dc78f25c20a35c9e8e3575c463115f15cbc42b1405bd9eeb465', '::1', '{\"device\":\"Chrome Mobile\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":32,\"family\":\"Android\",\"version\":\"6.0\"},\"description\":\"Chrome Mobile 103.0.0.0 on Google Nexus 5 (Android 6.0)\"}', 0),
(127, '2022-07-09 13:23:59', '0000-00-00 00:00:00', 'LOGIN', 1, 'c2dd7104c242434b31d3ff1c0ce34d1d26bbf43f31e824b59477d63e17be6bad', '::1', '{\"device\":\"Safari\",\"version\":\"13.0.3\",\"layout\":\"WebKit\",\"os\":{\"architecture\":32,\"family\":\"iOS\",\"version\":\"13.2.3\"},\"description\":\"Safari 13.0.3 on Apple iPhone (iOS 13.2.3)\"}', 0),
(128, '2022-07-09 13:30:12', '0000-00-00 00:00:00', 'LOGIN', 1, '52f7aa16ff97cb1fa190bf6c963ce141444f8fb8af90ff8fd353ebb267aab168', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(129, '2022-07-09 21:41:07', '0000-00-00 00:00:00', 'LOGIN', 1, '1808e18b710461967a05c12d86cb375985432387199e28380ad9b6987d8556f0', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(130, '2022-07-10 09:39:17', '0000-00-00 00:00:00', 'LOGIN', 1, '870c744492f295b79950d912a3a224195ca5b4671bbb3a9c659afe287bb372a3', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(131, '2022-07-10 10:37:45', '0000-00-00 00:00:00', 'LOGIN', 1, '8d1bc861452e46f1f273f57637ade40d85038fb10aecf3fb90defa74dc0dd501', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(132, '2022-07-10 14:01:48', '0000-00-00 00:00:00', 'LOGIN', 1, '3c9cb78b0cdd833bf5e97cad007d0d46b1d4595dd9e80475c823fd3b4e27e95b', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(133, '2022-07-10 19:45:11', '2022-07-10 23:47:17', 'LOGIN', 1, 'fc17bd748591a15be7f8f86a5a2c8b80149287592031d6bbed6f47528acf2f7c', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(134, '2022-07-11 13:53:27', '0000-00-00 00:00:00', 'LOGIN', 1, '88610567535724213af49a72a0317c155ba0050ba8b1dc6021bb4a68f5df6d8c', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(135, '2022-07-11 19:50:32', '0000-00-00 00:00:00', 'LOGIN', 1, '05ae0484db7a30e7c1e7bb04a05ad1977f920a4ab973b3a336d3b940e289e529', '::1', '{\"device\":\"Chrome Mobile\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":32,\"family\":\"Android\",\"version\":\"6.0\"},\"description\":\"Chrome Mobile 103.0.0.0 on Google Nexus 5 (Android 6.0)\"}', 0),
(136, '2022-07-11 19:52:38', '0000-00-00 00:00:00', 'LOGIN', 1, '821b729ea8e99880d56835ab7985d93f2afc42b1855c15cd8e20a47e42666264', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(137, '2022-07-11 19:56:02', '0000-00-00 00:00:00', 'LOGIN', 1, 'f50b8db50f645d99f3e2d6ce760b3fdbbb81eba465a680ae74d50d455c9234f7', '::1', '{\"device\":\"Chrome Mobile\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":32,\"family\":\"Android\",\"version\":\"6.0\"},\"description\":\"Chrome Mobile 103.0.0.0 on Google Nexus 5 (Android 6.0)\"}', 0),
(138, '2022-07-11 19:58:43', '0000-00-00 00:00:00', 'LOGIN', 1, 'da696e1d9caead25ab728d6f028652ad56c64bb5650877ea342f2a76b909f6eb', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0),
(139, '2022-07-12 07:33:44', '0000-00-00 00:00:00', 'LOGIN', 1, 'fc2cc5ce1e7659fa39f1be5729ad8c93f55d3b2722f5cfe0ba5c65e85d9107c7', '::1', '{\"device\":\"Chrome\",\"version\":\"103.0.0.0\",\"layout\":\"Blink\",\"os\":{\"architecture\":64,\"family\":\"Windows\",\"version\":\"10\"},\"description\":\"Chrome 103.0.0.0 on Windows 10 64-bit\"}', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `reset_code`
--
ALTER TABLE `reset_code`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `survey_template`
--
ALTER TABLE `survey_template`
  ADD PRIMARY KEY (`s_template_id`);

--
-- Indexes for table `tbl_surveys_records`
--
ALTER TABLE `tbl_surveys_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_survey_dept`
--
ALTER TABLE `tbl_survey_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tmpl_body2`
--
ALTER TABLE `tbl_tmpl_body2`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reset_code`
--
ALTER TABLE `reset_code`
  MODIFY `reset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `survey_template`
--
ALTER TABLE `survey_template`
  MODIFY `s_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_surveys_records`
--
ALTER TABLE `tbl_surveys_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_survey_dept`
--
ALTER TABLE `tbl_survey_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_tmpl_body2`
--
ALTER TABLE `tbl_tmpl_body2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
