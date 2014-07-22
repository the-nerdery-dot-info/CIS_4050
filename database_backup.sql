-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 22, 2014 at 05:56 PM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `Metro_Advisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `Advisors`
--

CREATE TABLE `Advisors` (
  `advisor_id` varchar(9) NOT NULL,
  `department_id` varchar(7) NOT NULL,
  `advisor_lname` varchar(100) NOT NULL,
  `advisor_fname` varchar(100) NOT NULL,
  `advisor_email` varchar(100) NOT NULL,
  PRIMARY KEY (`advisor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `course_id` varchar(7) NOT NULL,
  `department_id` varchar(7) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `course_desc` longtext,
  `course_credit_hrs` int(1) NOT NULL,
  `course_level` int(1) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`course_id`, `department_id`, `course_name`, `course_desc`, `course_credit_hrs`, `course_level`) VALUES
('ACC2010', 'ACC', 'Principles of Accounting I', NULL, 3, 0),
('ACC2020', 'ACC', 'Principles of Accounting II', NULL, 3, 0),
('ACC3090', 'ACC', 'Income Tax I', NULL, 3, 0),
('ACC3100', 'ACC', 'Income Tax II', NULL, 3, 0),
('ACC3110', 'ACC', 'Volunteer Income Tax Assistance', NULL, 3, 0),
('ACC3200', 'ACC', 'Governmental Accounting', NULL, 3, 0),
('ACC3300', 'ACC', 'Accounting Information Systems', NULL, 3, 0),
('ACC3400', 'ACC', 'Cost Accounting', NULL, 3, 0),
('ACC3510', 'ACC', 'Intermediate Accounting I', NULL, 3, 0),
('ACC3520', 'ACC', 'Intermediate Accounting II', NULL, 3, 0),
('ACC3750', 'ACC', 'International Accounting', NULL, 3, 0),
('ACC3980', 'ACC', 'Internship', NULL, 3, 0),
('ACC4200', 'ACC', 'Auditing', NULL, 3, 0),
('ACC4510', 'ACC', 'Advanced Accounting', NULL, 3, 0),
('ACC490C', 'ACC', 'Internal Auditing', NULL, 3, 0),
('ART1010', 'ART', 'Any Arts and Humanities class', NULL, 3, 0),
('CIS1010', 'CIS', 'Intro to computers', NULL, 3, 0),
('CIS2010', 'CIS', 'Foundations of Information Systems', NULL, 3, 0),
('CIS2110', 'CIS', 'Structured Problem Solving in Information Systems', 'This is a problem-solving course in which the tools of structured design are used to design computerized solutions to business problems. Procedural programming languages are used to implement these designs. Emphasis is placed on the implementation of the ', 3, 0),
('CIS3030', 'CIS', 'Business Web Page Development', NULL, 3, 0),
('CIS3050', 'CIS', 'Managerial Statistics', NULL, 3, 0),
('CIS3060', 'CIS', 'Database Management Systems', NULL, 3, 0),
('CIS3145', 'CIS', 'Business Application Development with Visual Basic', NULL, 3, 0),
('CIS3220', 'CIS', 'Analysis of Hardware, Software, and User Interfaces for Microcomputer Platforms', NULL, 3, 0),
('CIS3230', 'CIS', 'Telecommunication Systems and Networking', NULL, 3, 0),
('CIS3270', 'CIS', 'Advanced Computer Applications for Business', NULL, 3, 0),
('CIS3280', 'CIS', 'LAN and WAN Systems for Business', NULL, 3, 0),
('CIS3290', 'CIS', 'Operating Systems for End Users', NULL, 3, 0),
('CIS3300', 'CIS', 'Managerial Statistics', NULL, 3, 0),
('CIS3320', 'CIS', 'Management Science', NULL, 3, 0),
('CIS3460', 'CIS', 'Data Warehousing and Mining', NULL, 3, 0),
('CIS3490', 'CIS', 'Managing Business Information with Enterprise Systems', NULL, 3, 0),
('CIS3500', 'CIS', 'Information Systems Security', NULL, 3, 0),
('CIS3980', 'CIS', 'Internship in Computer Information Systems', NULL, 3, 0),
('CIS4030', 'CIS', 'Web Site Administration', NULL, 3, 0),
('CIS4050', 'CIS', 'Systems Analysis & Design', NULL, 3, 0),
('CIS4060', 'CIS', 'Advanced Database Management Systems', NULL, 3, 0),
('CIS4160', 'CIS', 'Advanced Programming Seminar', NULL, 3, 0),
('CIS4260', 'CIS', 'Database Administration', NULL, 3, 0),
('CIS4280', 'CIS', 'Network Installation and Administration', NULL, 3, 0),
('CIS4281', 'CIS', 'Network Installation and Administration With UNIX/Linux', NULL, 3, 0),
('CIS4410', 'CIS', 'Management Information Systems', NULL, 3, 0),
('ECO2010', 'ECO', 'Principles of Economics Macro', NULL, 3, 0),
('ECO2020', 'ECO', 'Principles of Economics Micro', NULL, 3, 0),
('ELC1001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC1003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC1004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC2001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC2003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC2004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC3001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC3003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC3004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC4001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC4003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC4004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC5001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC5003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC5004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC6001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC6003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC6004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC7001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC7003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC7004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC8001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC8003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC8004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ELC9001', 'ELC', 'One credit hour elective', NULL, 1, 0),
('ELC9003', 'ELC', 'Three credit hour elective', NULL, 3, 0),
('ELC9004', 'ELC', 'Four credit hour elective', NULL, 4, 0),
('ENG1010', 'ENG', 'Freshman Composition: The Essay', NULL, 3, 0),
('ENG1020', 'ENG', 'Freshman Composition: Analysis, Research and Documentation', NULL, 3, 0),
('FIN3010', 'FIN', 'Financial Markets and Institutions', NULL, 3, 0),
('FIN3100', 'FIN', 'International Money and Finance', NULL, 3, 0),
('FIN3150', 'FIN', 'Personal Financial Planning', NULL, 3, 0),
('FIN3300', 'FIN', 'Managerial Finance', NULL, 3, 0),
('FIN3320', 'FIN', 'Entrepreneurial Finance', NULL, 3, 0),
('FIN3420', 'FIN', 'Principles of Insurance', NULL, 3, 0),
('FIN3450', 'FIN', 'Retirement Planning and Employee Benefits', NULL, 3, 0),
('FIN3600', 'FIN', 'Investments', NULL, 3, 0),
('FIN3850', 'FIN', 'Intermediate Finance', NULL, 3, 0),
('FIN4200', 'FIN', 'Financial Modeling with Spreadsheets', NULL, 3, 0),
('FIN4400', 'FIN', 'Estate Planning', NULL, 3, 0),
('FIN4500', 'FIN', 'Analysis of Financial Statements', NULL, 3, 0),
('FIN4600', 'FIN', 'Security Analysis and Portfolio Management', NULL, 3, 0),
('FIN4750', 'FIN', 'Seminar in Personal Financial Planning', NULL, 3, 0),
('FIN4950', 'FIN', 'Financial Strategies and Policies', NULL, 3, 0),
('GLB1010', 'GLB', 'Any Global Diversity Course satisfied within major', NULL, 3, 0),
('HIS1010', 'HIS', 'Any history class', NULL, 3, 0),
('MGT2210', 'MGT', 'Legal Environment of Business I', NULL, 3, 0),
('MGT3000', 'MGT', 'Organizational Management', NULL, 3, 0),
('MGT3020', 'MGT', 'Entrepreneurs: Cases and Studies', NULL, 3, 0),
('MGT3220', 'MGT', 'Legal Environment of Business II', NULL, 3, 0),
('MGT3230', 'MGT', 'International Business Law', NULL, 3, 0),
('MGT3240', 'MGT', 'Employment and HR Law', NULL, 3, 0),
('MGT3530', 'MGT', 'Human Resource Management', NULL, 3, 0),
('MGT3550', 'MGT', 'Operations Management', NULL, 3, 0),
('MGT3820', 'MGT', 'International Business', NULL, 3, 0),
('MGT390A', 'MGT', 'Global Entrepreneurship', NULL, 3, 0),
('MGT4030', 'MGT', 'Organizational Development and Change', NULL, 3, 0),
('MGT4050', 'MGT', 'Purchasing and Supply Chain Management', NULL, 3, 0),
('MGT4420', 'MGT', 'Entrepreneurial Business Planning', NULL, 3, 0),
('MGT4530', 'MGT', 'Organizational Behavior', NULL, 3, 0),
('MGT4550', 'MGT', 'Project Management', NULL, 3, 0),
('MGT4610', 'MGT', 'Labor Employee Relations', NULL, 3, 0),
('MGT4620', 'MGT', 'Performance Management and Reward Systems', NULL, 3, 0),
('MGT4640', 'MGT', 'Employee Training and Development', NULL, 3, 0),
('MGT4830', 'MGT', 'Workforce Diversity', NULL, 3, 0),
('MGT4850', 'MGT', 'Organizational Mgmt and Consulting', NULL, 3, 0),
('MGT490C', 'MGT', 'Advanced Topics in Management', NULL, 3, 0),
('MGT490D', 'MGT', 'Employee Selection', NULL, 3, 0),
('MGT4950', 'MGT', 'Strategic Management', NULL, 3, 0),
('MKT2040', 'MGT', 'Business Communications', NULL, 3, 0),
('MKT3000', 'MKT', 'Principles of Marketing', NULL, 3, 0),
('MKT3010', 'MKT', 'Marketing Research', NULL, 3, 0),
('MKT3100', 'MKT', 'Retail Marketing', NULL, 3, 0),
('MKT3110', 'MKT', 'Advertising Management', NULL, 3, 0),
('MKT3120', 'MKT', 'Promotional Strategy', NULL, 3, 0),
('MKT3140', 'MKT', 'Direct Marketing Management', NULL, 3, 0),
('MKT3160', 'MKT', 'Sales Management', NULL, 3, 0),
('MKT3250', 'MKT', 'Personal Selling', NULL, 3, 0),
('MKT3300', 'MKT', 'Marketing of Services', NULL, 3, 0),
('MKT3310', 'MKT', 'Consumer Behavior', NULL, 3, 0),
('MKT3410', 'MKT', 'Marketing Logistics', NULL, 3, 0),
('MKT3500', 'MKT', 'Sport Marketing', NULL, 3, 0),
('MKT3550', 'MKT', 'Sport Sales', NULL, 3, 0),
('MKT3610', 'MKT', 'Business to Business Marketing', NULL, 3, 0),
('MKT3710', 'MKT', 'International Marketing', NULL, 3, 0),
('MKT3750', 'MKT', 'Multicultural Marketing', NULL, 3, 0),
('MKT3810', 'MKT', 'Electronic Marketing', NULL, 3, 0),
('MKT3910', 'MKT', 'New Product Development', NULL, 3, 0),
('MKT3980', 'MKT', 'Internship', NULL, 3, 0),
('MKT4110', 'MKT', 'Reputation and Brand Management', NULL, 3, 0),
('MKT4250', 'MKT', 'Advanced Selling', NULL, 3, 0),
('MKT4520', 'MKT', 'Seminar in Marketing Management', NULL, 3, 0),
('MKT4560', 'MKT', 'Marketing Strategy', NULL, 3, 0),
('MLT1010', 'MLT', 'Any Multicultural Course satified within major', NULL, 3, 0),
('MTH1310', 'MTH', 'Finite Math for the Mangement and Social Sciences', NULL, 3, 0),
('MTH1320', 'MTH', 'Calculus for the Management and Social Sciences', NULL, 3, 0),
('NAT1010', 'NAT', 'Any natural science course', NULL, 3, 0),
('NAT1020', 'NAT', 'Any natural science course', NULL, 3, 0),
('PHI1030', 'PHI', 'Ethics', NULL, 3, 0),
('PHI3360', 'PHI', 'Business Ethics', NULL, 3, 0),
('PSC1010', 'PSC', 'American National Government', NULL, 3, 0),
('PSC1020', 'PSC', 'Politcal Systems and Ideas', NULL, 3, 0),
('PSY1001', 'PSY', 'Intro to Psychology', NULL, 3, 0),
('SOC1010', 'SOC', 'Intro to Sociology', NULL, 3, 0),
('SPE1010', 'SPE', 'Public Speaking', NULL, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CoursesTaken`
--

CREATE TABLE `CoursesTaken` (
  `student_id` varchar(9) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CoursesTaken`
--

INSERT INTO `CoursesTaken` (`student_id`, `course_id`) VALUES
('900544740', 'CIS1010'),
('900544740', 'CIS2010'),
('900544740', 'CIS3230'),
('900544740', 'ECO2010'),
('900544740', 'ECO2020'),
('900544740', 'ENG1010'),
('900544740', 'ENG1020'),
('900544740', 'HIS1010'),
('900544740', 'MKT3000');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` varchar(3) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
('ACC', 'Accounting'),
('CIS', 'Computer Information Systems'),
('FIN', 'Finance'),
('MGT', 'Management'),
('MKT', 'Marketing');

-- --------------------------------------------------------

--
-- Table structure for table `PreReq`
--

CREATE TABLE `PreReq` (
  `table_key` int(11) NOT NULL AUTO_INCREMENT,
  `pre_req_id` varchar(7) NOT NULL,
  `course_id` varchar(7) NOT NULL,
  PRIMARY KEY (`table_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `PreReq`
--

INSERT INTO `PreReq` (`table_key`, `pre_req_id`, `course_id`) VALUES
(1, 'ENG1020', 'ENG1010'),
(2, 'MTH1320', 'MTH1310'),
(3, 'ECO2010', 'ENG1010'),
(4, 'ECO2010', 'ENG1020'),
(5, 'ECO2010', 'MTH1310'),
(6, 'ECO2020', 'ENG1010'),
(7, 'ECO2020', 'ENG1020'),
(8, 'ECO2020', 'MTH1310'),
(9, 'ACC2010', 'ENG1010'),
(10, 'ACC2010', 'ENG1020'),
(11, 'ACC2010', 'MTH1310'),
(12, 'ACC2010', 'SPE1010'),
(13, 'ACC2020', 'ACC2010'),
(14, 'ACC2020', 'ENG1010'),
(15, 'ACC2020', 'ENG1020'),
(16, 'ACC2020', 'MTH1310'),
(17, 'ACC2020', 'SPE1010'),
(18, 'CIS2010', 'CIS1010'),
(19, 'CIS2010', 'ENG1010'),
(20, 'CIS2010', 'ENG1020'),
(21, 'CIS2010', 'MTH1310'),
(22, 'CIS2010', 'SPE1010'),
(23, 'MGT2210', 'ENG1010'),
(24, 'MGT2210', 'ENG1020'),
(25, 'MGT2210', 'MTH1310'),
(26, 'MGT2210', 'SPE1010'),
(27, 'MKT2040', 'ENG1010'),
(28, 'MKT2040', 'ENG1020'),
(29, 'MKT2040', 'MTH1310'),
(30, 'MKT2040', 'SPE1010'),
(31, 'CIS3300', 'MTH1320'),
(32, 'CIS3300', 'CIS2010'),
(33, 'CIS3300', 'ENG1010'),
(34, 'CIS3300', 'ENG1020'),
(35, 'CIS3300', 'MTH1310'),
(36, 'CIS3300', 'SPE1010'),
(37, 'CIS3320', 'CIS3300'),
(38, 'CIS3320', 'ENG1010'),
(39, 'CIS3320', 'ENG1020'),
(40, 'CIS3320', 'MTH1310'),
(41, 'CIS3320', 'SPE1010'),
(42, 'FIN3300', 'ACC2010'),
(43, 'FIN3300', 'ECO2010'),
(44, 'FIN3300', 'ECO2020'),
(45, 'FIN3300', 'MTH1320'),
(46, 'FIN3300', 'ENG1010'),
(47, 'FIN3300', 'ENG1020'),
(48, 'FIN3300', 'MTH1310'),
(49, 'FIN3300', 'SPE1010'),
(50, 'MGT3000', 'ENG1010'),
(51, 'MGT3000', 'ENG1020'),
(52, 'MGT3000', 'MTH1310'),
(53, 'MGT3000', 'SPE1010'),
(54, 'MKT3000', 'ENG1010'),
(55, 'MKT3000', 'ENG1020'),
(56, 'MKT3000', 'MTH1310'),
(57, 'MKT3000', 'SPE1010'),
(58, 'MGT4950', 'ENG1010'),
(59, 'MGT4950', 'ENG1020'),
(60, 'MGT4950', 'MTH1310'),
(61, 'MGT4950', 'SPE1010'),
(62, 'MGT4950', 'HIS1010'),
(63, 'MGT4950', 'PHI1030'),
(64, 'MGT4950', 'PHI3360'),
(65, 'MGT4950', 'ECO2010'),
(66, 'MGT4950', 'ECO2020'),
(67, 'MGT4950', 'NAT1010'),
(68, 'MGT4950', 'NAT1020'),
(69, 'MGT4950', 'PSY1001'),
(70, 'MGT4950', 'SOC1010'),
(71, 'MGT4950', 'PSC1010'),
(72, 'MGT4950', 'PSC1020'),
(73, 'MGT4950', 'MTH1320'),
(74, 'MGT4950', 'ACC2010'),
(75, 'MGT4950', 'ACC2020'),
(76, 'MGT4950', 'CIS2010'),
(77, 'MGT4950', 'CIS1010'),
(78, 'MGT4950', 'CIS3300'),
(79, 'MGT4950', 'MGT2210'),
(80, 'MGT4950', 'MKT2040'),
(81, 'MGT4950', 'CIS3320'),
(82, 'MGT4950', 'FIN3300'),
(83, 'MGT4950', 'MGT3000'),
(84, 'MGT4950', 'MKT3000');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(9) NOT NULL,
  `department_id` varchar(3) NOT NULL,
  `student_lname` varchar(100) NOT NULL,
  `student_fname` varchar(100) NOT NULL,
  `student_phone` varchar(10) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `department_id`, `student_lname`, `student_fname`, `student_phone`, `student_email`) VALUES
('900544740', 'CIS', 'Shmoe', 'Joe', '3036212120', 'joe@bogus.com');
