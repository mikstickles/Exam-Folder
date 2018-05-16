-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 17, 2018 at 08:41 AM
-- Server version: 5.7.17
-- PHP Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `time`
--
CREATE DATABASE IF NOT EXISTS `time` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `time`;

-- --------------------------------------------------------

--
-- Table structure for table `absentees`
--

CREATE TABLE `absentees` (
  `Absent_ID` int(20) NOT NULL,
  `Student_ID` int(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `absentees`
--

INSERT INTO `absentees` (`Absent_ID`, `Student_ID`, `Date`) VALUES
(1, 1, '2017-12-12'),
(2, 1, '2017-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `Package_ID` int(10) NOT NULL,
  `Grade` int(10) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`Package_ID`, `Grade`, `Type`, `Cost`) VALUES
(1, 1, 'Maths-Fit', 850),
(2, 1, 'Intensive', 1370),
(3, 2, 'Maths-Fit', 850),
(4, 2, 'Intensive', 1370),
(5, 3, 'Maths-Fit', 850),
(6, 3, 'Intensive', 1370),
(7, 4, 'Maths-Fit', 850),
(8, 4, 'Intensive', 1370),
(9, 5, 'Maths-Fit', 850),
(10, 5, 'Intensive', 1370),
(11, 6, 'Maths-Fit', 850),
(12, 6, 'Intensive', 1370),
(13, 7, 'Intensive', 1575),
(14, 8, 'Intensive', 1575),
(15, 9, 'Intensive', 1575),
(16, 10, 'Intensive', 3150),
(17, 11, 'Intensive', 3150),
(18, 12, 'Intensive', 3150);

-- --------------------------------------------------------

--
-- Table structure for table `packagetimes`
--

CREATE TABLE `packagetimes` (
  `PackageTime_ID` int(10) NOT NULL,
  `Package_ID` int(10) NOT NULL,
  `Day` varchar(20) NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeEnd` time NOT NULL,
  `Available` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packagetimes`
--

INSERT INTO `packagetimes` (`PackageTime_ID`, `Package_ID`, `Day`, `TimeStart`, `TimeEnd`, `Available`) VALUES
(1, 1, 'Monday', '13:00:00', '13:50:00', 1),
(2, 1, 'Tuesday', '13:00:00', '13:50:00', 1),
(3, 1, 'Wednesday', '13:00:00', '13:50:00', 1),
(4, 1, 'Tuesday', '14:00:00', '14:50:00', 1),
(5, 1, 'Wednesday', '14:00:00', '14:50:00', 1),
(6, 2, 'Thursday', '13:00:00', '13:50:00', 1),
(7, 2, 'Wednesday', '14:00:00', '14:50:00', 1),
(8, 3, 'Monday', '14:00:00', '14:50:00', 1),
(9, 3, 'Wednesday', '14:00:00', '14:50:00', 1),
(10, 3, 'Thursday', '14:00:00', '14:50:00', 1),
(11, 4, 'Wednesday', '14:00:00', '14:50:00', 1),
(12, 4, 'Thursday', '14:00:00', '14:50:00', 1),
(13, 5, 'Monday', '14:00:00', '14:50:00', 1),
(14, 5, 'Tuesday', '14:00:00', '14:50:00', 1),
(15, 5, 'Thursday', '14:00:00', '14:50:00', 1),
(16, 6, 'Monday', '14:00:00', '14:50:00', 1),
(17, 6, 'Tuesday', '14:00:00', '14:50:00', 1),
(18, 7, 'Monday', '15:10:00', '16:00:00', 1),
(19, 7, 'Wednesday', '15:10:00', '16:00:00', 1),
(20, 8, 'Monday', '15:10:00', '16:00:00', 1),
(21, 8, 'Tuesday', '14:00:00', '14:50:00', 1),
(22, 8, 'Tuesday', '15:10:00', '16:00:00', 1),
(23, 9, 'Monday', '15:10:00', '16:00:00', 1),
(24, 9, 'Tuesday', '15:10:00', '16:00:00', 1),
(25, 10, 'Monday', '15:10:00', '16:00:00', 1),
(26, 10, 'Thursday', '14:00:00', '14:50:00', 1),
(27, 10, 'Thursday', '15:10:00', '16:00:00', 1),
(28, 11, 'Tuesday', '15:10:00', '16:00:00', 1),
(29, 11, 'Wednesday', '15:10:00', '16:00:00', 1),
(30, 12, 'Monday', '14:00:00', '14:50:00', 1),
(31, 12, 'Tuesday', '15:10:00', '16:00:00', 1),
(32, 12, 'Thursday', '15:10:00', '16:00:00', 1),
(33, 13, 'Monday', '14:00:00', '15:00:00', 1),
(34, 13, 'Tuesday', '14:00:00', '15:00:00', 1),
(35, 13, 'Wednesday', '15:00:00', '16:00:00', 1),
(36, 13, 'Thursday', '14:00:00', '15:00:00', 1),
(37, 14, 'Monday', '14:00:00', '15:00:00', 1),
(38, 14, 'Tuesday', '15:00:00', '16:00:00', 1),
(39, 14, 'Wednesday', '14:00:00', '15:00:00', 1),
(40, 14, 'Thursday', '14:00:00', '15:00:00', 0),
(41, 15, 'Monday', '15:00:00', '16:00:00', 1),
(42, 15, 'Tuesday', '14:00:00', '15:00:00', 1),
(43, 15, 'Wednesday', '14:00:00', '15:00:00', 1),
(44, 15, 'Thursday', '15:00:00', '16:00:00', 1),
(45, 16, 'Monday', '14:00:00', '16:00:00', 1),
(46, 16, 'Tuesday', '14:00:00', '16:00:00', 1),
(47, 16, 'Wednesday', '14:00:00', '16:00:00', 1),
(48, 16, 'Thursday', '14:00:00', '16:00:00', 0),
(49, 17, 'Monday', '14:00:00', '16:00:00', 1),
(50, 17, 'Tuesday', '14:00:00', '16:00:00', 1),
(51, 17, 'Wednesday', '14:00:00', '16:00:00', 1),
(52, 17, 'Thursday', '14:00:00', '16:00:00', 1),
(53, 18, 'Monday', '14:00:00', '16:00:00', 1),
(54, 18, 'Tuesday', '14:00:00', '16:00:00', 1),
(55, 18, 'Wednesday', '14:00:00', '16:00:00', 1),
(56, 18, 'Thursday', '14:00:00', '16:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Parent` int(20) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Grade` int(10) NOT NULL,
  `MathsTeacher` varchar(100) NOT NULL,
  `GroupID` int(10) DEFAULT NULL,
  `PackageTime_ID` int(10) DEFAULT NULL,
  `Status` varchar(50) NOT NULL,
  `Individual` tinyint(1) NOT NULL DEFAULT '0',
  `Cost` float DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `Name`, `Parent`, `DateOfBirth`, `Grade`, `MathsTeacher`, `GroupID`, `PackageTime_ID`, `Status`, `Individual`, `Cost`, `PhoneNumber`) VALUES
(1, 'Fawnia', 11, '2003-11-29', 12, 'Mrs Jones', 1, 56, 'Enrolled', 0, NULL, NULL),
(2, 'Vania', 20, '2004-12-07', 10, 'Mrs Jones', NULL, 46, 'Requested', 0, NULL, NULL),
(3, 'Frederique', 21, '2005-09-25', 8, 'Mr Snyman', NULL, 38, 'Enrolled', 0, NULL, NULL),
(5, 'Ashbey', 8, '2007-01-18', 12, 'Mrs Jones', NULL, 56, 'Requested', 0, NULL, NULL),
(6, 'Loraine', 31, '2005-09-26', 4, 'Mrs Smith', NULL, 21, 'Pending', 0, NULL, NULL),
(7, 'Vernor', 14, '2002-01-13', 10, 'Mrs Smith', NULL, 47, 'Pending', 0, NULL, NULL),
(8, 'Grenville', 10, '2007-05-01', 1, 'Mr Snyman', NULL, 2, 'Requested', 0, NULL, NULL),
(9, 'Wilow', 25, '2001-08-01', 4, 'Mr Cornelius', NULL, 22, 'Enrolled', 0, NULL, NULL),
(10, 'Dill', 24, '2007-11-26', 6, 'Mr Snyman', NULL, 31, 'Pending', 0, NULL, NULL),
(11, 'Janela', 23, '2004-05-13', 10, 'Mrs Smith', NULL, 46, 'Requested', 0, NULL, NULL),
(12, 'Shellysheldon', 19, '2006-01-19', 12, 'Mrs Jones', NULL, 56, 'Requested', 0, NULL, NULL),
(13, 'Obie', 11, '2000-10-16', 10, 'Mrs Smith', NULL, 48, 'Enrolled', 0, NULL, NULL),
(14, 'Barry', 28, '2000-09-09', 2, 'Mrs Jones', NULL, 7, 'Requested', 0, NULL, NULL),
(15, 'Nerte', 18, '2004-04-18', 3, 'Mr Cornelius', 9, 17, 'Enrolled', 0, NULL, NULL),
(16, 'Abbie', 30, '2007-09-12', 2, 'Mrs van Onselen', NULL, 6, 'Pending', 0, NULL, NULL),
(17, 'Berny', 26, '2004-07-26', 12, 'Mrs Jones', NULL, 56, 'Enrolled', 0, NULL, NULL),
(18, 'Kaia', 25, '2005-09-27', 3, 'Mrs Jones', NULL, 14, 'Pending', 0, NULL, NULL),
(19, 'Maximilianus', 25, '2002-07-06', 10, 'Mr Snyman', 3, 47, 'Enrolled', 0, NULL, NULL),
(20, 'Pacorro', 24, '2007-01-11', 5, 'Mrs Smith', NULL, 24, 'Requested', 0, NULL, NULL),
(21, 'Hughie', 17, '2000-01-07', 10, 'Mr Snyman', 3, 47, 'Enrolled', 0, NULL, NULL),
(22, 'Rudolf', 26, '2001-04-21', 4, 'Mrs Smith', NULL, 20, 'Enrolled', 0, NULL, NULL),
(23, 'Arri', 29, '2002-10-06', 10, 'Mrs Smith', NULL, 48, 'Requested', 0, NULL, NULL),
(24, 'Farr', 15, '2002-10-15', 4, 'Mrs Smith', 11, 22, 'Enrolled', 0, NULL, NULL),
(25, 'Shermy', 17, '2002-07-30', 11, 'Mrs Jones', NULL, 49, 'Enrolled', 0, NULL, NULL),
(26, 'Hyacinthia', 29, '2004-07-03', 12, 'Mr Snyman', NULL, 56, 'Enrolled', 0, NULL, NULL),
(27, 'Hillary', 27, '2004-09-07', 12, 'Mrs Jones', NULL, 56, 'Requested', 0, NULL, NULL),
(28, 'Almire', 13, '2001-01-08', 5, 'Mr Cornelius', NULL, 25, 'Enrolled', 0, NULL, NULL),
(29, 'Merrick', 30, '2007-01-04', 7, 'Mrs Smith', NULL, 33, 'Pending', 0, NULL, NULL),
(30, 'Edee', 15, '2006-05-16', 9, 'Mr Snyman', NULL, 43, 'Enrolled', 0, NULL, NULL),
(31, 'Shea', 8, '2003-02-24', 8, 'Mrs Smith', NULL, 39, 'Pending', 0, NULL, NULL),
(32, 'Inglebert', 9, '2007-05-29', 12, 'Mr Snyman', NULL, 56, 'Pending', 0, NULL, NULL),
(33, 'Leif', 29, '2007-03-03', 4, 'Mr Snyman', NULL, 14, 'Requested', 0, NULL, NULL),
(34, 'Ky', 19, '2001-11-24', 7, 'Mr Cornelius', NULL, 33, 'Pending', 0, NULL, NULL),
(35, 'Reinold', 24, '2005-10-01', 10, 'Mrs Jones', NULL, 45, 'Enrolled', 0, NULL, NULL),
(36, 'Caryl', 13, '2004-01-06', 12, 'Mr Snyman', NULL, 56, 'Requested', 0, NULL, NULL),
(37, 'Nicolina', 14, '2003-03-21', 10, 'Mrs Smith', NULL, 45, 'Enrolled', 0, NULL, NULL),
(38, 'Loutitia', 27, '2004-05-31', 6, 'Mr Snyman', NULL, 32, 'Enrolled', 0, NULL, NULL),
(39, 'Berne', 22, '2003-08-07', 2, 'Mrs Smith', 8, 8, 'Enrolled', 0, NULL, NULL),
(40, 'Giff', 19, '2001-01-10', 7, 'Mr Snyman', 4, 34, 'Enrolled', 0, NULL, NULL),
(41, 'Vina', 15, '2003-01-23', 12, 'Mr Cornelius', NULL, 56, 'Requested', 0, NULL, NULL),
(42, 'Tessi', 11, '2001-02-09', 7, 'Mr Cornelius', NULL, 33, 'Requested', 0, NULL, NULL),
(43, 'Major', 18, '2006-06-24', 10, 'Mr Cornelius', NULL, 48, 'Requested', 0, NULL, NULL),
(44, 'Fara', 16, '2000-09-23', 11, 'Mrs Jones', NULL, 50, 'Enrolled', 0, NULL, NULL),
(45, 'Koo', 30, '2003-07-01', 6, 'Mr Snyman', NULL, 30, 'Requested', 0, NULL, NULL),
(46, 'Cassondra', 24, '2006-08-20', 6, 'Mr Snyman', NULL, 32, 'Enrolled', 0, NULL, NULL),
(47, 'Auguste', 31, '2005-12-17', 5, 'Mr Cornelius', NULL, 1, 'Pending', 0, NULL, NULL),
(48, 'Marge', 19, '2003-08-07', 7, 'Mrs Jones', NULL, 35, 'Pending', 0, NULL, NULL),
(49, 'Betsy', 14, '2002-12-08', 6, 'Mr Cornelius', NULL, 28, 'Requested', 0, NULL, NULL),
(50, 'Tallulah', 19, '2007-02-24', 3, 'Mrs Jones', 9, 16, 'Enrolled', 0, NULL, NULL),
(51, 'Branden', 12, '2003-10-10', 9, 'Mr Cornelius', NULL, 41, 'Requested', 0, NULL, NULL),
(52, 'Fletch', 27, '2006-09-19', 2, 'Mr Cornelius', NULL, 12, 'Requested', 0, NULL, NULL),
(53, 'Geneva', 26, '2004-04-23', 9, 'Mr Snyman', NULL, 42, 'Requested', 0, NULL, NULL),
(55, 'Kev', 8, '2001-10-29', 8, 'Mrs Jones', NULL, 38, 'Pending', 0, NULL, NULL),
(56, 'Josiah', 26, '2004-06-02', 10, 'Mrs Smith', NULL, 48, 'Enrolled', 0, NULL, NULL),
(57, 'Sheryl', 25, '2001-03-16', 1, 'Mr Snyman', NULL, 6, 'Requested', 0, NULL, NULL),
(58, 'Daisey', 15, '2002-03-14', 1, 'Mrs van Onselen', 7, 5, 'Enrolled', 0, NULL, NULL),
(59, 'Dag', 24, '2004-09-13', 9, 'Mrs Smith', NULL, 44, 'Enrolled', 0, NULL, NULL),
(60, 'Leena', 26, '2007-09-03', 4, 'Mr Snyman', NULL, 20, 'Enrolled', 0, NULL, NULL),
(61, 'Eduardo', 30, '2007-09-16', 7, 'Mrs Jones', NULL, 35, 'Enrolled', 0, NULL, NULL),
(62, 'Leland', 28, '2004-04-14', 8, 'Mr Cornelius', NULL, 38, 'Pending', 0, NULL, NULL),
(63, 'Tamqrah', 18, '2000-07-30', 12, 'Mr Snyman', NULL, 53, 'Pending', 0, NULL, NULL),
(64, 'Jeanelle', 18, '2000-01-03', 12, 'Mr Snyman', NULL, 55, 'Requested', 0, NULL, NULL),
(65, 'Aldric', 17, '2000-08-16', 8, 'Mr Snyman', NULL, 39, 'Pending', 0, NULL, NULL),
(66, 'Harmon', 14, '2006-04-29', 4, 'Mr Cornelius', NULL, 19, 'Requested', 0, NULL, NULL),
(67, 'Clevie', 23, '2007-04-10', 11, 'Mr Snyman', NULL, 50, 'Pending', 0, NULL, NULL),
(68, 'Ram', 21, '2007-08-20', 5, 'Mrs Smith', NULL, 25, 'Requested', 0, NULL, NULL),
(69, 'Chere', 26, '2006-09-02', 8, 'Mr Snyman', NULL, 39, 'Requested', 0, NULL, NULL),
(70, 'Whitaker', 31, '2000-01-29', 12, 'Mrs Jones', NULL, 53, 'Requested', 0, NULL, NULL),
(71, 'Gil', 28, '2007-03-15', 12, 'Mr Cornelius', NULL, 56, 'Requested', 0, NULL, NULL),
(72, 'Lewiss', 17, '2007-11-06', 10, 'Mrs Jones', NULL, 48, 'Pending', 0, NULL, NULL),
(73, 'Georgeta', 31, '2000-10-24', 6, 'Mrs Smith', NULL, 29, 'Pending', 0, NULL, NULL),
(74, 'Catharine', 16, '2003-07-29', 4, 'Mrs Smith', NULL, 18, 'Requested', 0, NULL, NULL),
(75, 'Alysa', 14, '2001-05-13', 3, 'Mr Snyman', NULL, 13, 'Pending', 0, NULL, NULL),
(76, 'Lay', 25, '2001-09-05', 12, 'Mrs Smith', NULL, 55, 'Requested', 0, NULL, NULL),
(77, 'Maible', 19, '2006-01-14', 4, 'Mr Snyman', NULL, 21, 'Pending', 0, NULL, NULL),
(79, 'Peirce', 8, '2004-11-25', 3, 'Mrs Smith', NULL, 14, 'Pending', 0, NULL, NULL),
(80, 'Melly', 23, '2006-07-30', 4, 'Mrs Smith', NULL, 18, 'Enrolled', 0, NULL, NULL),
(81, 'Noemi', 13, '2001-07-07', 10, 'Mr Cornelius', NULL, 45, 'Requested', 0, NULL, NULL),
(82, 'Amabel', 13, '2007-10-09', 2, 'Mr Cornelius', NULL, 4, 'Pending', 0, NULL, NULL),
(83, 'Tania', 26, '2005-04-13', 5, 'Mrs Smith', NULL, 26, 'Pending', 0, NULL, NULL),
(84, 'Horst', 30, '2005-05-26', 11, 'Mrs Jones', NULL, 49, 'Requested', 0, NULL, NULL),
(85, 'Skye', 17, '2006-10-16', 4, 'Mr Snyman', NULL, 21, 'Enrolled', 0, NULL, NULL),
(86, 'Thaddeus', 26, '2001-08-25', 9, 'Mr Snyman', NULL, 41, 'Pending', 0, NULL, NULL),
(87, 'Celestine', 11, '2007-02-04', 7, 'Mr Snyman', NULL, 33, 'Enrolled', 0, NULL, NULL),
(88, 'Connor', 30, '2005-02-03', 9, 'Mr Cornelius', NULL, 41, 'Pending', 0, NULL, NULL),
(89, 'Jamie', 11, '2003-03-07', 12, 'Mr Snyman', NULL, 53, 'Enrolled', 0, NULL, NULL),
(90, 'Shaylynn', 8, '2007-02-27', 12, 'Mr Cornelius', NULL, 53, 'Requested', 0, NULL, NULL),
(91, 'Dewie', 15, '2004-04-14', 8, 'Mr Cornelius', NULL, 39, 'Requested', 0, NULL, NULL),
(92, 'Barnebas', 9, '2001-12-09', 10, 'Mrs Jones', NULL, 48, 'Requested', 0, NULL, NULL),
(93, 'Robby', 13, '2001-07-17', 10, 'Mrs Jones', NULL, 48, 'Pending', 0, NULL, NULL),
(94, 'Winifield', 19, '2001-08-14', 5, 'Mr Cornelius', NULL, 23, 'Pending', 0, NULL, NULL),
(95, 'Sharl', 8, '2005-01-23', 7, 'Mrs Smith', NULL, 34, 'Pending', 0, NULL, NULL),
(96, 'Cecilius', 21, '2003-07-06', 2, 'Mr Cornelius', NULL, 8, 'Requested', 0, NULL, NULL),
(97, 'Kaia', 18, '2006-09-16', 10, 'Mrs Jones', NULL, 48, 'Enrolled', 0, NULL, NULL),
(98, 'Sven', 30, '2007-04-17', 8, 'Mr Snyman', NULL, 38, 'Enrolled', 0, NULL, NULL),
(99, 'Cherrita', 22, '2005-07-19', 2, 'Mr Snyman', 8, 8, 'Enrolled', 0, NULL, NULL),
(100, 'Read', 18, '2005-08-26', 8, 'Mr Cornelius', NULL, 40, 'Requested', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `Tutor_ID` int(10) NOT NULL,
  `User_ID` int(10) NOT NULL,
  `PreferredGrade_Start` int(5) NOT NULL,
  `PreferredGrade_End` int(5) NOT NULL,
  `WorkStartDate` date NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Applied'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`Tutor_ID`, `User_ID`, `PreferredGrade_Start`, `PreferredGrade_End`, `WorkStartDate`, `DateOfBirth`, `Status`) VALUES
(1, 5, 10, 12, '2017-07-07', '1997-05-05', 'Employed'),
(2, 2, 7, 9, '2017-07-16', '1997-04-15', 'Employed'),
(3, 9, 7, 9, '2017-11-11', '1996-04-15', 'Employed'),
(4, 10, 10, 12, '2017-01-04', '1998-07-25', 'Employed'),
(5, 11, 7, 9, '2017-02-01', '1995-08-04', 'Employed'),
(6, 12, 10, 12, '2017-04-25', '1999-12-11', 'Employed'),
(7, 13, 7, 9, '2017-12-01', '1997-02-07', 'Employed'),
(8, 14, 10, 12, '2017-10-07', '1997-01-13', 'Employed'),
(9, 15, 7, 9, '2017-04-10', '1996-11-19', 'Employed'),
(10, 16, 10, 12, '2017-11-04', '1996-07-12', 'Employed'),
(11, 17, 7, 9, '2017-08-29', '1999-03-09', 'Employed'),
(12, 18, 10, 12, '2017-06-13', '1996-09-08', 'Employed'),
(13, 19, 7, 9, '2017-04-18', '1998-10-03', 'Employed'),
(14, 20, 10, 12, '2017-04-12', '1994-09-16', 'Employed'),
(15, 21, 7, 9, '2017-05-05', '1997-02-21', 'Employed'),
(16, 22, 10, 12, '2017-03-03', '1998-05-11', 'Employed'),
(17, 23, 7, 9, '2017-01-01', '1998-04-22', 'Employed'),
(18, 24, 10, 12, '2016-12-20', '1998-06-23', 'Employed'),
(19, 25, 7, 9, '2017-08-22', '1999-07-07', 'Employed'),
(20, 26, 10, 12, '2016-12-13', '1999-01-25', 'Applied'),
(21, 27, 7, 9, '2017-09-19', '1995-05-19', 'Applied'),
(22, 28, 10, 12, '2017-10-04', '1994-06-06', 'Applied'),
(23, 29, 7, 9, '2017-11-26', '1999-04-30', 'Applied'),
(24, 30, 10, 12, '2017-06-26', '1999-08-22', 'Applied'),
(25, 31, 7, 9, '2017-11-21', '1994-09-04', 'Applied'),
(26, 32, 10, 12, '2017-03-17', '1998-07-23', 'Applied'),
(27, 33, 7, 9, '2017-11-27', '1999-03-11', 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `tutorslots`
--

CREATE TABLE `tutorslots` (
  `Slot_ID` int(10) NOT NULL,
  `Tutor_ID` int(10) NOT NULL,
  `Day` varchar(20) NOT NULL,
  `TimeStart` time NOT NULL,
  `TimeEnd` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tutorslots`
--

INSERT INTO `tutorslots` (`Slot_ID`, `Tutor_ID`, `Day`, `TimeStart`, `TimeEnd`) VALUES
(1, 1, 'Monday', '14:00:00', '16:00:00'),
(2, 1, 'Thursday', '15:00:00', '17:00:00'),
(3, 2, 'Tuesday', '14:00:00', '17:00:00'),
(4, 2, 'Thursday', '14:00:00', '15:30:00'),
(5, 3, 'Monday', '13:00:00', '14:00:00'),
(6, 3, 'Wednesday', '15:00:00', '16:00:00'),
(7, 4, 'Monday', '13:00:00', '14:00:00'),
(8, 4, 'Wednesday', '15:00:00', '16:00:00'),
(9, 5, 'Monday', '14:00:00', '15:00:00'),
(10, 6, 'Monday', '14:30:00', '15:30:00'),
(11, 7, 'Monday', '15:00:00', '16:00:00'),
(12, 8, 'Monday', '15:30:00', '17:00:00'),
(13, 9, 'Tuesday', '13:00:00', '15:00:00'),
(14, 10, 'Tuesday', '14:30:00', '15:30:00'),
(15, 11, 'Tuesday', '15:00:00', '16:00:00'),
(16, 12, 'Tuesday', '15:30:00', '17:00:00'),
(17, 13, 'Tuesday', '13:00:00', '15:00:00'),
(18, 14, 'Tuesday', '14:30:00', '15:30:00'),
(19, 15, 'Tuesday', '15:00:00', '16:00:00'),
(20, 16, 'Tuesday', '15:30:00', '17:00:00'),
(21, 17, 'Wednesday', '13:00:00', '15:00:00'),
(22, 18, 'Wednesday', '14:00:00', '15:00:00'),
(23, 19, 'Wednesday', '14:30:00', '15:30:00'),
(24, 20, 'Wednesday', '15:00:00', '16:00:00'),
(25, 21, 'Wednesday', '15:30:00', '17:00:00'),
(26, 22, 'Wednesday', '13:00:00', '15:00:00'),
(27, 23, 'Wednesday', '14:00:00', '15:00:00'),
(28, 24, 'Wednesday', '14:30:00', '15:30:00'),
(29, 25, 'Wednesday', '15:00:00', '16:00:00'),
(30, 26, 'Wednesday', '15:30:00', '17:00:00'),
(31, 27, 'Thursday', '14:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Surname` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Password` varchar(150) NOT NULL,
  `ClearanceLevel` varchar(10) NOT NULL,
  `Whatsapp` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Name`, `Surname`, `Email`, `PhoneNumber`, `Password`, `ClearanceLevel`, `Whatsapp`) VALUES
(1, 'Thomas', 'Gray', 't.gray@gmail.com', '0123456789', '777c534fd04b2cc000819eaf0a63bfa135a62b42777ea4650c2743ca297b3ac6d33c001c664485c7cb3cd3a08475cd80c434be670c01f16d61218f7f9fe0bde5', 'A', 0),
(2, 'Stephen', 'Teichert', 'teichert.s@gmail.com', '0123456789', 'c897aef7225cc9a29613e682f0a9a4e6be5344c4f41e1928ab8d3812100fa492', 'T', 0),
(4, 'Kyle', 'Wood', 'kwood@gmail.com', '0123456789', 'e17fcb31611037e47abc22ede12066193f116894c8051ab3c2a64cbccbd32571', 'P', 0),
(5, 'Talita', 'Schroonraad', 'talita.s@gmail.com', '0123456789', 'c897aef7225cc9a29613e682f0a9a4e6be5344c4f41e1928ab8d3812100fa492', 'T', 0),
(8, 'Emma', 'Palmer', 'emma@barktree.co.za', '0869713452', 'e3390af15f6bee8b539e019ecd66a2ce6127de45249eb3d25e5c5af8eac1bc4bde71985c7eb52908a31e82bef30ec35236da2f7a38f6d541f3ea219921107f50', 'A', 0),
(9, 'Alphonso', 'Shalloe', 'ashalloe0@artisteer.com', '0348777400', '398ddd862778f2b6228d27e8cf20883e1e800458f09cf45a612e4add41e8c663', 'T', 0),
(10, 'Stormi', 'Poskitt', 'sposkitt1@kickstarter.com', '0756489326', '37c51e5301d8df9bc847fffb5ef3d20135d60dc5efa6ca302c0cf454dc52e933', 'T', 0),
(11, 'Anabel', 'Ronnay', 'aronnay2@slashdot.org', '0425298134', 'ec73c3cb3e4546fee0f38d0c939ac238fbe02d2faa6c436d6cc5ff06c378c37a', 'T', 0),
(12, 'Harrietta', 'Kleeman', 'hkleeman3@mit.edu', '0601808935', '5f62f9be8ca6c0be0e89b3dc6fec752c9620f80f6f70758372b4011b47d2fcb1', 'T', 0),
(13, 'Brittan', 'Sheavills', 'bsheavills4@de.vu', '0398462041', 'f0e9bc90f8b9aa9d8b22509b6ba6d855f3433a3ab14d284af4d7d4889eae752b', 'T', 0),
(14, 'Judie', 'Vain', 'jvain5@alibaba.com', '0588679742', 'd8ab4c107d617b6fb8cf77e3f5fccfc20f98647d5c9dca087869d891031cbd0e', 'T', 0),
(15, 'Jerry', 'Gregor', 'jgregor6@nbcnews.com', '0186069508', '438b712aba52b97b0f07847830f3ee7ea6e03de0dc60ca663e1877f90686f979', 'T', 0),
(16, 'Miran', 'Raise', 'mraise7@prweb.com', '0959795835', '55bccdfca001d15d5ec574ebb14ce3241630c15c853fe183430d99fb72090759', 'T', 0),
(17, 'Jamesy', 'Mathevon', 'jmathevon8@redcross.org', '0752666503', 'ce39a6977dca605b1df2a2c1ee0a60755c0095968a1a832dc73156ec630f0e9f', 'T', 0),
(18, 'Joby', 'Knightsbridge', 'jknightsbridge9@google.ru', '0989164139', 'ce3f85ed42ba679b0b64e9f109858bfb27a06a60b61dc7e71b51f17b5a79613f', 'T', 0),
(19, 'Dorothea', 'Ondrousek', 'dondrouseka@addthis.com', '0227150545', '16b77c5b144b5b1d437dba01a7acd03aeef093f11969f084e392ad4f5e7816ee', 'T', 0),
(20, 'Manon', 'Tootal', 'mtootalb@berkeley.edu', '0736297527', '9c23abad6719ec7a0b0d6231fe7102c8cd8a84dd370fee8ac632c68a066946c6', 'T', 0),
(21, 'Blinny', 'Orlton', 'borltonc@weather.com', '0754895183', '7578b1d60b3ad96f53bcab3452f9fb8120c02b1c9ad923d4c66a1d16e478a3a4', 'T', 0),
(22, 'Chic', 'Huck', 'chuckd@webnode.com', '0132373228', '9cd09bc7d3928390a271548e1d339adf623e5c16400f5a332e0acb224205eb23', 'T', 0),
(23, 'Moishe', 'Aery', 'maerye@engadget.com', '0981743088', 'e82273211a70929da31a8336d48811cda307fc793551d1af17225684f621b891', 'T', 0),
(24, 'Julie', 'Courvert', 'jcourvertf@xinhuanet.com', '0903419643', 'a3a655c26d3d2228ce39d4f8f0cab4dfe7686adc31bc904efedc1f300652db0b', 'T', 0),
(25, 'Walden', 'Buckwell', 'wbuckwellg@squidoo.com', '0705597516', '1d4bbbb876b8d7a5b5b2cffc05bc459583d06fb6ed6a5f81e0511e782782d8ba', 'T', 0),
(26, 'Myriam', 'Hentzeler', 'mhentzelerh@apache.org', '0363775488', '307345c90cabe8cac61f0e6f27bb6478bff4c65f27b5fac9a1dfd19e55200918', 'T', 0),
(27, 'Corine', 'Leabeater', 'cleabeateri@youtu.be', '0490570026', '5481a4c7534233a8d2a543f8ea3fce67ada845d16196f26d2501096257798489', 'T', 0),
(28, 'Nona', 'Janczyk', 'njanczykj@npr.org', '0859017435', '0b98fac1a461fc2e50acda2449092be1a3188354508181bfe25abf88807ab2fe', 'T', 0),
(29, 'Sandy', 'Pretor', 'spretork@npr.org', '0741929650', '3ed2e737f73dff5fecf337f2ce80c66e13f1142838df3539ae1bf7aec18a4a91', 'T', 0),
(30, 'Spenser', 'Chattington', 'schattingtonl@zimbio.com', '0927916988', 'f66150e1eddee08a39653dd82ca167d1928fd864b7a8e90dd86ba53bda4dd68f', 'T', 0),
(31, 'Vivien', 'Blundan', 'vblundanm@reddit.com', '0613184614', 'bab7113df8a2fa65dcb25de035ab65a1b94a4b02c9e92bb027d371b9ea5f986b', 'T', 0),
(32, 'Waldo', 'Soda', 'wsodan@google.com.au', '0585525174', '49831ace03fa2638673de574f1dbd8511168c327707b0567abfef52bdf02e3f8', 'T', 0),
(33, 'Luelle', 'Vannini', 'lvanninio@nifty.com', '0388864226', 'c308adfbfa671bf251dd801c0445c6ff34724bad695284c79717e738e02e469a', 'T', 0),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absentees`
--
ALTER TABLE `absentees`
  ADD PRIMARY KEY (`Absent_ID`),
  ADD KEY `fk_absent_Students` (`Student_ID`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`Package_ID`),
  ADD UNIQUE KEY `Package_ID` (`Package_ID`);

--
-- Indexes for table `packagetimes`
--
ALTER TABLE `packagetimes`
  ADD PRIMARY KEY (`PackageTime_ID`),
  ADD KEY `Package_ID` (`Package_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `students_parent` (`Parent`),
  ADD KEY `students_group` (`GroupID`),
  ADD KEY `fk_students_packagetimes` (`PackageTime_ID`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`Tutor_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `tutorslots`
--
ALTER TABLE `tutorslots`
  ADD PRIMARY KEY (`Slot_ID`),
  ADD KEY `Tutor_ID` (`Tutor_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absentees`
--
ALTER TABLE `absentees`
  MODIFY `Absent_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `Package_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `packagetimes`
--
ALTER TABLE `packagetimes`
  MODIFY `PackageTime_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `Tutor_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tutorslots`
--
ALTER TABLE `tutorslots`
  MODIFY `Slot_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `absentees`
--
ALTER TABLE `absentees`
  ADD CONSTRAINT `fk_absent_Students` FOREIGN KEY (`Student_ID`) REFERENCES `students` (`Student_ID`);

--
-- Constraints for table `packagetimes`
--
ALTER TABLE `packagetimes`
  ADD CONSTRAINT `fk_packagetimes_packageid` FOREIGN KEY (`Package_ID`) REFERENCES `packages` (`Package_ID`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_students_packagetimes` FOREIGN KEY (`PackageTime_ID`) REFERENCES `packagetimes` (`PackageTime_ID`),
  ADD CONSTRAINT `fk_students_parent` FOREIGN KEY (`Parent`) REFERENCES `users` (`User_ID`);

--
-- Constraints for table `tutors`
--
ALTER TABLE `tutors`
  ADD CONSTRAINT `fk_Users` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`);

--
-- Constraints for table `tutorslots`
--
ALTER TABLE `tutorslots`
  ADD CONSTRAINT `fk_Tutors` FOREIGN KEY (`Tutor_ID`) REFERENCES `tutors` (`Tutor_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
