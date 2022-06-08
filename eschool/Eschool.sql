-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2022 at 01:43 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL,
  PRIMARY KEY (`assignment_no`,`st_id`,`course_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_no`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '15', '8', 99, 90),
(2, '10', 'CS101', 70, 100),
(2, '13', 'CS101', 80, 100),
(2, '15', 'CS101', 60, 100);

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
CREATE TABLE IF NOT EXISTS `attendence` (
  `st_id` varchar(20) NOT NULL,
  `cs_id` varchar(20) NOT NULL,
  `lecture_no` int(20) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `presence` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`st_id`,`cs_id`,`lecture_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`st_id`, `cs_id`, `lecture_no`, `date`, `duration`, `presence`) VALUES
('10', 'CS101', 6, '10/06/2022', '1:30', 'P'),
('11', 'CS101', 12, 'null', '1:30', 'A'),
('15', 'CS101', 90, '12/03/2022', '1:30', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cName` varchar(21) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `cHrs` int(4) DEFAULT NULL,
  `aTeacher` varchar(11) DEFAULT NULL,
  `preReq` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `semester` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cName`, `code`, `cHrs`, `aTeacher`, `preReq`, `type`, `semester`) VALUES
(1, 'Data Structure', 'CS101', 2, 'Rahmoun', '0', 'CORE', 1),
(2, 'Probably & Statistics', 'MT201', 4, 'Drouich', 'None', 'CORE', 2),
(3, 'Analyse-1', 'MT101', 3, 'El Mahi', 'None', 'CORE', 1),
(4, 'Algorithm', 'CS108', 3, 'Bouchentouf', 'CS101', 'CORE', 5),
(5, 'Web Programming', 'CS901', 3, 'Annaki', 'CS108', 'ELECTIVE', 6),
(6, 'Java', 'CS309', 3, 'Berrich', 'CS108', 'CORE', 5);

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
CREATE TABLE IF NOT EXISTS `fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `amount`, `date`) VALUES
(1, 7400, '2022-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `feedetails`
--

DROP TABLE IF EXISTS `feedetails`;
CREATE TABLE IF NOT EXISTS `feedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chalanno` int(11) DEFAULT NULL,
  `sID` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `cHrs` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

DROP TABLE IF EXISTS `final`;
CREATE TABLE IF NOT EXISTS `final` (
  `final_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL,
  PRIMARY KEY (`final_no`,`st_id`,`course_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final`
--

INSERT INTO `final` (`final_no`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '15', 'cs101', 40, 50);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `project_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` varchar(20) NOT NULL,
  `Total_marks` float DEFAULT NULL,
  PRIMARY KEY (`project_no`,`st_id`,`course_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `Qno` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL,
  PRIMARY KEY (`Qno`,`st_id`,`course_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`Qno`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '10', 'CS101', 6, 10),
(1, '13', 'CS101', 9, 10),
(1, '15', '8', 198, 200),
(1, '15', 'CS101', 8, 10),
(2, '15', '8', 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cID` int(4) DEFAULT NULL,
  `sID` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `cID`, `sID`) VALUES
(1, 8, 10),
(2, 8, 13),
(3, 9, 13),
(4, 1, 15),
(10, 0, 13),
(11, 6, 13),
(12, 3, 10),
(13, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sessional`
--

DROP TABLE IF EXISTS `sessional`;
CREATE TABLE IF NOT EXISTS `sessional` (
  `sessional_no` int(2) NOT NULL,
  `st_id` varchar(10) NOT NULL,
  `course_title` varchar(20) NOT NULL,
  `marks` float NOT NULL,
  `Total_marks` float DEFAULT NULL,
  PRIMARY KEY (`sessional_no`,`st_id`,`course_title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessional`
--

INSERT INTO `sessional` (`sessional_no`, `st_id`, `course_title`, `marks`, `Total_marks`) VALUES
(1, '15', '8', 41, 50),
(2, '13', '8', 70, 100);

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

DROP TABLE IF EXISTS `trans`;
CREATE TABLE IF NOT EXISTS `trans` (
  `st_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cs_id` varchar(30) NOT NULL,
  `crs_name` varchar(40) NOT NULL,
  `crd_hr` int(3) NOT NULL,
  `type` varchar(10) NOT NULL,
  `sm_id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`st_id`, `name`, `cs_id`, `crs_name`, `crd_hr`, `type`, `sm_id`) VALUES
('15', 'Ahsan', 'CS101', 'ITC', 3, 'CORE', '1'),
('15', 'Ahsan', 'MT101', 'Calculas-1', 3, 'CORE', '1'),
('15', 'Ahsan', 'CL101', 'ITC-Lab', 1, 'CORE', '1'),
('15', 'Ahsan', 'SS111', 'Islamyat', 3, 'CORE', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `FName`, `LName`, `username`, `password`, `type`, `address`, `dob`, `gender`) VALUES
(10, 'Sbai', 'salah', 'sbai', '123', 'STUDENT', NULL, NULL, NULL),
(11, 'Mohammad', 'Sghiouri', 'idrissi', 'asdf', 'ADMIN', NULL, NULL, NULL),
(12, 'chaymae', 'mharzi', 'mharzi', '123', 'FACULTY', NULL, NULL, NULL),
(13, 'Mohammed', 'Morabit', 'morabit', 'asd', 'STUDENT', NULL, NULL, NULL),
(14, 'imane', 'ziani', 'ziani', '123asd', 'FACULTY', NULL, NULL, NULL),
(15, 'Hammad', 'Hassan', '123', 'asadasad', 'STUDENT', NULL, NULL, NULL),
(16, 'intissar', 'bouzyani', 'bouzyani', 'asdfasdf', 'FACULTY', NULL, NULL, NULL),
(17, 'jamal', 'jamil', 'jamal', '123123', 'FACULTY', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
