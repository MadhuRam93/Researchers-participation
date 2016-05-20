-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2016 at 02:25 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `research`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `StudyCode` varchar(40) NOT NULL DEFAULT '',
  `QuestionID` varchar(40) NOT NULL DEFAULT '',
  `Email` varchar(40) NOT NULL DEFAULT '',
  `Choice` varchar(40) DEFAULT NULL,
  `DateSubmitted` datetime DEFAULT NULL,
  PRIMARY KEY (`StudyCode`,`QuestionID`,`Email`),
  KEY `answer_ibfk_2` (`QuestionID`),
  KEY `answer_ibfk_3` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `QuestionID` varchar(40) NOT NULL DEFAULT '',
  `StudyCode` varchar(40) DEFAULT NULL,
  `Question` varchar(50) DEFAULT NULL,
  `AnswerType` varchar(10) DEFAULT NULL,
  `Option1` varchar(40) DEFAULT NULL,
  `Option2` varchar(40) DEFAULT NULL,
  `Option3` varchar(40) DEFAULT NULL,
  `Option4` varchar(40) DEFAULT NULL,
  `Option5` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`QuestionID`),
  KEY `StudyID` (`StudyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`QuestionID`, `StudyCode`, `Question`, `AnswerType`, `Option1`, `Option2`, `Option3`, `Option4`, `Option5`) VALUES
('9ed6a', '9ed6a', 'test question2', '', 't3', 't2', 't1', NULL, NULL),
('dbfe68d', 'dbfe68d', 'test question 2', '', 't1', 't2', 't3', 't4', 't5');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `QuestionID` varchar(255) NOT NULL,
  `StudyCode` varchar(40) NOT NULL DEFAULT '',
  `Question` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `RDate` datetime DEFAULT NULL,
  `NumParticipants` int(15) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`StudyCode`,`QuestionID`),
  KEY `QuestionID` (`QuestionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`QuestionID`, `StudyCode`, `Question`, `Email`, `RDate`, `NumParticipants`, `Status`) VALUES
('9ed6a', '9ed6a', 'test question2', 'evan@gmail.com', '2016-03-28 00:00:00', 3, 'Approve'),
('dbfe68d', 'dbfe68d', 'test question 2', 'evan@gmail.com', '2016-03-28 00:00:00', 1, 'Disapprove');

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE IF NOT EXISTS `study` (
  `StudyCode` varchar(40) NOT NULL DEFAULT '',
  `StudyName` varchar(40) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `ImageURL` varchar(50) DEFAULT NULL,
  `ReqParticipants` int(15) DEFAULT NULL,
  `ActParticipants` int(15) DEFAULT NULL,
  `SStatus` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`StudyCode`),
  KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `study`
--

INSERT INTO `study` (`StudyCode`, `StudyName`, `Description`, `Email`, `DateCreated`, `ImageURL`, `ReqParticipants`, `ActParticipants`, `SStatus`) VALUES
('9ed6a', 'test1', 'test desc', 'evan@gmail.com', '2016-03-26 00:00:00', NULL, 1, 0, 'start'),
('dbfe68d', 'test2', 'test desc', 'evan@gmail.com', '2016-03-26 00:00:00', NULL, 2, 0, 'start');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Password` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `NumCoins` int(15) DEFAULT NULL,
  `NumParticipation` int(15) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Email`, `Password`, `Type`, `NumCoins`, `NumParticipation`) VALUES
('Evan', 'evan@gmail.com', 'evan', 'Participant', 0, 0),
('Mike', 'mike@gmail.com', 'mike', 'Admin', NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`StudyCode`) REFERENCES `study` (`StudyCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_3` FOREIGN KEY (`Email`) REFERENCES `user` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`StudyCode`) REFERENCES `study` (`StudyCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `reported_ibfk_1` FOREIGN KEY (`QuestionID`) REFERENCES `question` (`QuestionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reported_ibfk_2` FOREIGN KEY (`StudyCode`) REFERENCES `study` (`StudyCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `study_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `user` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
