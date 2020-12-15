-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2020 at 01:23 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mysignup`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Name` varchar(256) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `confirm` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Name`, `Password`, `confirm`) VALUES
('Aron Kipkirui', '65536546', '65536546');

-- --------------------------------------------------------

--
-- Table structure for table `adminsignup`
--

CREATE TABLE IF NOT EXISTS `adminsignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `contact` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `pwd` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `adminsignup`
--

INSERT INTO `adminsignup` (`id`, `name`, `contact`, `email`, `pwd`) VALUES
(1, 'Aron Kipkirui', '0723369801', 'akipkiruiyegon@gmail.com', '6553aron');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `garage` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `model`, `contact`, `garage`, `problem`) VALUES
(1, '', 'Prado Gx', '0734255622', 'on', 'brake parts replacement'),
(2, 'leonard', 'Prado Tx', '0729970486', 'on', 'engine problem'),
(3, 'Aron', 'mercedez', '0723369801', 'on', 'lights'),
(4, 'Aron', 'mercedez', '0723369801', 'dion', 'lights'),
(5, 'Aron', 'bmw', '0723369801', '', 'engine'),
(6, 'Aron', 'bmw', '0723369801', 'on', 'lights'),
(7, 'derrick', 'BMW', '', '', ''),
(8, 'derrick', 'bmw', '0723369801', 'on', 'lights'),
(9, 'Gilbert', 'Rav4', '0723369802', 'Dion', 'Exhaust');

-- --------------------------------------------------------

--
-- Table structure for table `cargallery`
--

CREATE TABLE IF NOT EXISTS `cargallery` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `carmodel` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cargallery`
--


-- --------------------------------------------------------

--
-- Table structure for table `cargallery1`
--

CREATE TABLE IF NOT EXISTS `cargallery1` (
  `idGallery` int(255) NOT NULL AUTO_INCREMENT,
  `nameGallery` varchar(255) NOT NULL,
  `contactGallery` varchar(255) NOT NULL,
  `locationGallery` varchar(255) NOT NULL,
  `descGallery` varchar(255) NOT NULL,
  `priceGallery` varchar(256) NOT NULL,
  `imgFullNameGallery` varchar(255) NOT NULL,
  `orderGallery` int(255) NOT NULL,
  PRIMARY KEY (`idGallery`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `cargallery1`
--

INSERT INTO `cargallery1` (`idGallery`, `nameGallery`, `contactGallery`, `locationGallery`, `descGallery`, `priceGallery`, `imgFullNameGallery`, `orderGallery`) VALUES
(1, 'Aron Kipkirui', '0723369801', 'bomet', 'Rav4', '', 'aron-kipkirui.5edbb9f39fec44.40239181.jpg', 1),
(2, 'Gilbert', '0714301844', 'Machakos', 'BMW', '', 'gilbert.5edbba3265eb60.87587246.jpg', 2),
(3, 'Yegon', '0743639268', 'Chebunyo', 'Allion', '670,000', 'yegon.5edcf5a08fb405.90956994.jpg', 3),
(4, 'Brian', '0720000000', 'Kisumu', 'BMW', '3.5M', 'brian.5ef2edb81d8cf6.35330111.jpg', 4),
(5, 'Brian', '0720000000', 'nairobi', 'isuzu', '3.5M', 'brian.5f475a679e60f2.28055004.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `adm` varchar(256) NOT NULL,
  `text` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `adm`, `text`) VALUES
(4, 'Aron Kipkirui', 'J77-1305-2018', 'Hello Machakos!'),
(5, 'Aron Kipkirui', 'J77-1305-2018', 'cjsnx . v nfldgj fi; iefkssxkcmdfgdflvvldvz'),
(6, '', '', ''),
(7, '', '', ''),
(8, 'dede', 'hufsej', 'sjifdisflindjscz'),
(9, 'ftyfy', 'tyugkg', 'ckcjndcz'),
(10, '', '', ''),
(11, 'Aron Kipkirui', 'J77-1305-2018', 'Hey There!'),
(12, '', '', ''),
(13, '', '', ''),
(14, '', '', ''),
(15, 'Aron Kipkirui', '', 'cjsnx . v nfldgj fi; iefkssxkcmdfgdflvvldvz');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`user_id`, `firstname`, `lastname`, `username`, `email`, `password`, `confirm`) VALUES
(1, 'John', 'Doe', '', 'jdoe@gmail.com', 'jdoe', 'jdoe'),
(2, 'Aron', 'Yegon', '', 'akipkiruiyegon@gmail.com', '6553', '6553'),
(3, 'Daniel', 'Langat', '', 'daniel@gmail.com', '2333', '2333'),
(4, 'Elvis', '', '', 'elvo@gmail.com', '9999', '9999'),
(5, 'Jane', 'kimathi', '', 'kimathijane@gmail.com', '7878', '7878'),
(6, 'Jane', 'kimathi', '', 'fdsdg', '8686', '6575'),
(7, 'aron', 'yegon', '', 'akip', '6553', '65446'),
(8, 'John', 'kimathi', '', 'fdsdg', '6767', '7878'),
(9, 'Gladys', 'Mwongeli', '', 'gladys@gmail.com', '5656', '5656'),
(10, 'Dennis', 'chiira', '', 'dennis@gmail.com', '12345', '12345'),
(11, 'Purity', 'Chepngetich', '', 'chpngetich@gmail.com', 'chep56', 'chep56'),
(12, 'Enock', 'Kiprotich', '', 'kiprotiche@gmail.com', '7676', '7676'),
(13, 'victor', 'wagura', '', 'vic@gmail.com', '6565', '6565');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE IF NOT EXISTS `entry` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `middlename` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `confirm` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`user_id`, `firstname`, `middlename`, `lastname`, `username`, `email`, `password`, `confirm`) VALUES
(2, 'Aron', 'Kipkirui', 'Yegon', '', 'akipkiruiyegon@gmail.com', '6553', '6553'),
(3, 'Gideon', 'Jeruiyot', 'Beet', '', 'jerb@gmail.com', '3444', '3444'),
(4, 'Enock', '', 'kiprotich', '', 'enock@gmail.com', '6666', '6666'),
(5, 'Jimmy', 'Doe', '', '', 'jimmy255@gmail.com', 'jimmy55', 'jimmy55'),
(6, 'victor', '', 'wagura', '', 'vic@gmail.com', '6565', '6565'),
(7, 'Daisy', '', 'Chelangat', 'daic', 'daisy@gmail.com', '5454', '5454'),
(8, 'Daisy', '', 'Chelangat', 'daic', 'daisy', '5454', '5454'),
(9, 'Alice', '', 'Cherono', 'Langat', 'alice', '6553', '6553'),
(18, '', '', '', '', 'akipkiruiyegon@gmail.com', '', ''),
(19, 'aron', '', 'Kipkirui', 'yegon', 'akip@gmail.com', '', ''),
(25, 'Dominic', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '8989', '8989'),
(26, 'Dominic', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '9090', '9090'),
(27, 'Dominic', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '9091', '9091'),
(28, 'kevin', '', 'mitnick', 'mit', 'akip@gmail.com', '7878', '7878'),
(29, 'kevin', '', 'john', 'kec', 'akipkiruiyegon@gmail.com', '6767', '6767'),
(30, '', '', '', '', '', '', ''),
(31, '', '', '', '', '', '', ''),
(32, 'Gilbert', '', 'Kibet', 'korir', 'korirgilbert03@gmail.com', '3434', '3434'),
(33, 'Aron', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '6553', '6553'),
(34, 'Aron', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '7877', '6565'),
(35, 'Aron', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '3434', '3434'),
(36, 'Aron', '', 'Kipkirui', 'yegon', 'akipkiruiyegon@gmail.com', '', ''),
(37, 'Daniel', '', 'Kipyegon', 'Langat', 'akipkiruiyegon@gmail.com', '7676', '7676'),
(38, 'Daniel', '', 'Kipyegon', 'Langat', 'akipkiruiyegon@gmail.com', '6555', '6555'),
(39, 'Jane', '', 'Doe', 'Doe', 'janedoe@gmail.com', '6553', '6553');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `txt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

INSERT INTO `forum` (`id`, `name`, `txt`) VALUES
(0, '', ''),
(0, 'Aron Kipkirui', 'Hey pals!');

-- --------------------------------------------------------

--
-- Table structure for table `forum2`
--

CREATE TABLE IF NOT EXISTS `forum2` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `txt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `forum2`
--

INSERT INTO `forum2` (`id`, `name`, `txt`) VALUES
(1, 'Aron Kipkirui', 'Hey pals!'),
(2, 'ARON', 'hey there&#129335;&#8205;&#9794;&#65039;'),
(4, 'kikwai', 'yes'),
(5, 'BRIAN', 'YES MR'),
(6, 'ghgygy', 'gugg'),
(7, 'denno', 'vipi bruh'),
(8, 'zXnm,x', 'CKCM.X,C');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `idGallery` int(11) NOT NULL AUTO_INCREMENT,
  `titleGallery` longtext NOT NULL,
  `descGallery` longtext NOT NULL,
  `imgFullNameGallery` longtext NOT NULL,
  `orderGallery` longtext NOT NULL,
  PRIMARY KEY (`idGallery`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`idGallery`, `titleGallery`, `descGallery`, `imgFullNameGallery`, `orderGallery`) VALUES
(5, 'Exchange Programmes', 'ARYEN SCHOOLS fosters mutual understanding between our students and researchers through a multitude of academic and professional exchange programs', 'exchange-programmes.5dc710d007c862.77996657.jpg', '1'),
(6, 'Career Services', 'Hard work is upto you - but our Career office will helb you, every step of the way, giving you the best chance to make your dream reality', 'career-services.5dc7113c2f99b3.45054111.jpg', '2'),
(7, 'University calender', 'A calender of important academic dates, including arrival, registration and graduation', 'university-calender.5dc711a410e056.90904988.png', '3'),
(8, 'Scholarships and Grants', 'At ARYEN SCHOOLS several scholarships and programs are available for both undergraduate and graduate students in need of financial aid', 'scholarships-and-grants.5dc7124fda7339.21476924.jpg', '4'),
(9, 'Prospective Students', 'If you''re considering ARYEN SCHOOLS, You are probably at a top tier of Universities that focus on Teaching and research for transforming industry and economy', 'prospective-students.5dc7131d024365.73580943.jpg', '5'),
(10, 'Open and Distance Studies', 'Welcome to the School of Education which is one of the largest and fastest growing schools in terms of student population in Machakos University', 'open-and-distance-studies.5dc713cc158649.41513537.jpg', '6'),
(11, 'Graduate Admissions', 'The graduate school was established after the award of charter in October 2016. It initially existed as the Board of Post Graduate Studies  since October 2015', 'graduate-admissions.5dc7147ccb0018.83315808.jpg', '7'),
(12, 'Undergraduate Admissions', 'Welcome to the School of Education which is one of the largest and fastest growing schools in terms of student population in Machakos County.', 'undergraduate-admissions.5dc714b0b070e7.20579723.jpg', '8'),
(13, 'Gate', 'A picture description', 'leonard-kikwai.5eaeaa787ebb08.31175885.jpg', '9');

-- --------------------------------------------------------

--
-- Table structure for table `gallery1`
--

CREATE TABLE IF NOT EXISTS `gallery1` (
  `idGallery` int(11) NOT NULL AUTO_INCREMENT,
  `titleGallery` longtext NOT NULL,
  `descGallery` longtext NOT NULL,
  `imgFullNameGallery` longtext NOT NULL,
  `orderGallery` longtext NOT NULL,
  PRIMARY KEY (`idGallery`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gallery1`
--

INSERT INTO `gallery1` (`idGallery`, `titleGallery`, `descGallery`, `imgFullNameGallery`, `orderGallery`) VALUES
(3, 'University Calendar', 'April 2019, 1st Year intake Reporting and orientation. Classes for April-July Semester- 1st April-6th July 2019 Serster 1 Examinations, 15th July-26th July 2019', 'calender.5dc708536e59f5.73370234.jpg', '1'),
(4, 'Alumni', 'The ARYEN SCHOOLS Alumni Association(ASAA) was launched in September 2017 under the Universities Act of 2012. The association joins together all the graduates of the University to practice in governance and development of their Alma Mater by socializing and networking)', 'alumni.5dc7090218d615.26925233.jpg', '2'),
(5, 'University Profile', 'A preferred University of Excellence in Scholarship and Service Delivery. To provide scholary education through training, research and innovation for industrial and socio-econimic transformation of our communities', 'profile.5dc709bda1d0d8.57132868.png', '4'),
(6, 'University Governance', 'The University is governed through the Council, senate and the General Board of Faculties. These bodies include representatives across the University', 'machakos-logo.5dc709d7c42355.21512071.png', '4');

-- --------------------------------------------------------

--
-- Table structure for table `garagesignup`
--

CREATE TABLE IF NOT EXISTS `garagesignup` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `username` varchar(256) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `gname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `services` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `confirm` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `garagesignup`
--

INSERT INTO `garagesignup` (`id`, `first`, `last`, `username`, `contact`, `gname`, `location`, `services`, `email`, `pwd`, `confirm`) VALUES
(1, 'Aron', 'kimutai', 'Aryen', '0723369802', 'Derr', 'Bomet', 'Engine', 'akipkiruiyegoon@gmail.com', '02a60798b2ba8a9402dd0d66bf97fa5b', '02a60798b2ba8a9402dd0d66bf97fa5b');

-- --------------------------------------------------------

--
-- Table structure for table `imgupload`
--

CREATE TABLE IF NOT EXISTS `imgupload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `imgupload`
--

INSERT INTO `imgupload` (`id`, `userid`, `status`) VALUES
(1, 'Aryen', 0),
(2, 'elvo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `imguploadgarage`
--

CREATE TABLE IF NOT EXISTS `imguploadgarage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `imguploadgarage`
--

INSERT INTO `imguploadgarage` (`id`, `userid`, `status`) VALUES
(1, 'Aryen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `imguploadseller`
--

CREATE TABLE IF NOT EXISTS `imguploadseller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `imguploadseller`
--

INSERT INTO `imguploadseller` (`id`, `userid`, `status`) VALUES
(1, 'gilnn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `idGallery` int(255) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`idGallery`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `profile`
--


-- --------------------------------------------------------

--
-- Table structure for table `profileimg`
--

CREATE TABLE IF NOT EXISTS `profileimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `profileimg`
--

INSERT INTO `profileimg` (`id`, `userid`, `status`) VALUES
(88, 2, 1),
(89, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profileimg2`
--

CREATE TABLE IF NOT EXISTS `profileimg2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `profileimg2`
--

INSERT INTO `profileimg2` (`id`, `userid`, `status`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 1),
(4, 2, 1),
(5, 1, 1),
(6, 2, 1),
(7, 1, 1),
(8, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE IF NOT EXISTS `pwdreset` (
  `pwdResetId` int(11) NOT NULL AUTO_INCREMENT,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL,
  PRIMARY KEY (`pwdResetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pwdreset`
--


-- --------------------------------------------------------

--
-- Table structure for table `sellersignup`
--

CREATE TABLE IF NOT EXISTS `sellersignup` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `username` varchar(256) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `confirm` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sellersignup`
--

INSERT INTO `sellersignup` (`id`, `first`, `last`, `username`, `contact`, `location`, `email`, `pwd`, `confirm`) VALUES
(1, 'Nick', 'Ruto', 'gilnn', '0723369801', 'bomet', 'akipkiruiyegon@gmail.com', 'ef9280fbc5317f17d480e4d4f61b3751', 'ef9280fbc5317f17d480e4d4f61b3751');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(256) NOT NULL,
  `last` varchar(256) NOT NULL,
  `staffno` varchar(256) NOT NULL,
  `idno` int(11) NOT NULL,
  `course` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `confirm` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `first`, `last`, `staffno`, `idno`, `course`, `email`, `password`, `confirm`) VALUES
(1, 'Jane', 'Doe', 'js34', 345656, 'BSC (IT)', 'jdoe@gmail.com', '7878', '7878');

-- --------------------------------------------------------

--
-- Table structure for table `staff2`
--

CREATE TABLE IF NOT EXISTS `staff2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(256) NOT NULL,
  `last` varchar(256) NOT NULL,
  `staffno` varchar(256) NOT NULL,
  `idno` int(11) NOT NULL,
  `course` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `confirm` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff2`
--

INSERT INTO `staff2` (`id`, `first`, `last`, `staffno`, `idno`, `course`, `email`, `password`, `confirm`) VALUES
(1, 'Erick', 'Omuya', 'mksu-2427', 634637768, 'BSC IT', 'erickomuya@gmail.com', '6789', '6789');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(256) NOT NULL,
  `last` varchar(256) NOT NULL,
  `admission` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `confirm` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `first`, `last`, `admission`, `course`, `email`, `password`, `confirm`) VALUES
(1, 'Aron', 'Kipkirui', 'J77-1305-2018', 'BSC(IT)', 'akipkiruiyegon@gmail.com', '65536546', '65536546'),
(2, 'Enock', 'Kiprotich', 'J77-1312-2018', 'BSC (IT)', 'enock@gmail.com', '6778', '6778'),
(3, 'Gideon', 'Jeruiyot', 'J77-1306-2018', 'BSC (IT)', 'jeruiyot@gmail.com', '0713216869', '0713216869'),
(4, 'Elvis', 'Makambi', 'J77-1294-2018', 'BSC (IT)', 'elvo@gmail.com', 'elvo02', 'elvo02'),
(5, 'Elvis', 'Makambi', 'J77-1294-2018', 'BSC (IT)', 'elvo@gmail.com', '8788', '8788'),
(6, 'Elvis', 'Makambi', 'J77-1294-2018', 'BSC (IT)', 'elvo@gmail.com', '8788', '8788'),
(7, 'Brian', 'Otieno', 'J77-1387-2018', 'BSC (IT)', 'brian@gmail.com', '6558', '6558'),
(9, 'Josephine', 'Wangare', 'J77-1300-2018', 'BSC(IT)', 'josephine@gmail.com', 'josephine02', 'josephine02'),
(10, 'Daisy ', 'Chelangat', 'J77-1311-2018', 'BSC(IT)', 'daisychelangat@gmail.com', 'daisy03', 'daisy03');

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE IF NOT EXISTS `student2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(256) NOT NULL,
  `last` varchar(256) NOT NULL,
  `admission` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `confirm` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`id`, `first`, `last`, `admission`, `course`, `email`, `password`, `confirm`) VALUES
(1, 'Aron', 'Kipkirui', 'J77-1305-2018', 'BSC (IT)', 'akipkiruiyegon@gmail.com', '6553', '6553'),
(2, 'Elvis', 'Makambi', 'J77-2234-2018', 'BSC (IT)', 'elvo@gmail.com', '7878', '7878'),
(3, 'wangare', 'Kipkirui', '33445', 'rnvs', 'wangare@gmail.com', '12345', '12345'),
(4, 'wangare ', 'njoroge', 'j77-1300-2018', 'bsc(nursing)', 'wangare3@gmail.com', '123456', '123456'),
(5, 'osebe', 'antonny', 'J77-1301-2018', 'BSC (IT)', 'oseeantony@outlook.com', 'nyanchama@1', 'nyanchama@1'),
(6, 'Marion ', 'Ndambuki', 'J17-2787-2018', 'Computer Science', 'marion@GMAIL.COM', '9090', '9090'),
(7, 'Jane', 'Doe', 'J77-1294-2018', 'BSC (IT)', 'jaedoe@gmail.com', '7878', '7878'),
(8, 'Daisy', 'Chelangat', 'J77-1312-2018', 'BSC (IT)', 'daisychelangat@gmail.com', '6565', '6565'),
(9, 'Elisha', 'Ngetich', 'D76-2425-2019', 'Engineering', 'elisha@gmail.com', '76768', '76768'),
(10, 'Sam ', 'Thuo', 'J77-2098-2019', 'bsc IT', 'samthuo@gmail.com', '6767', '6767'),
(11, 'Steve', 'Yego', 'D76-2425-2019', 'Engineering', 'steveyego@gmail.com', '6565', '6565'),
(12, 'Aron', 'Kipkirui', 'J77-1305-2018', 'BSC (IT)', 'akipkiruiyegon@gmail.com', '6553', '6553'),
(13, 'Michael', 'Jackson', 'J77-1311-2018', 'BSC (IT)', 'michaeljackson@gmail.com', '3232', '3232'),
(14, 'Jackbed ', 'Murugi', 'J77-1212-2018', 'BSC (IT)', 'jackbedmurugi@gmail.com', '6565', '6565'),
(15, 'Emmanuel', 'Array', 'J77-8197-2016', 'BSC (IT)', 'emmanuel34@gmail.com', '6969', '6969'),
(16, 'Derick', 'Array', 'E35-2424-2018', 'Education Arts', 'derrickkibet45@mail.com', '6767', '6767'),
(17, 'Daniel', 'Array', 'E35-3424-2018', 'Education Arts', 'danie23@gmail.com', '7979', '7979'),
(18, 'Derick', 'kimathi', 'E66-3835-2018', 'BSC (IT)', 'derrickkibet45@mail.com', '9090', '9090');

-- --------------------------------------------------------

--
-- Table structure for table `uploadimg`
--

CREATE TABLE IF NOT EXISTS `uploadimg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `uploadimg`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(256) NOT NULL,
  `last` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--


-- --------------------------------------------------------

--
-- Table structure for table `usersignup`
--

CREATE TABLE IF NOT EXISTS `usersignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(256) NOT NULL,
  `last` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `contact` int(255) NOT NULL,
  `email` varchar(256) NOT NULL,
  `pwd` varchar(256) NOT NULL,
  `confirm` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `usersignup`
--

INSERT INTO `usersignup` (`id`, `first`, `last`, `username`, `contact`, `email`, `pwd`, `confirm`) VALUES
(1, 'Aron', 'Kipyeg', 'Aryen', 723369801, 'akipkiruiyegon@gmail.com', '02a60798b2ba8a9402dd0d66bf97fa5b', '02a60798b2ba8a9402dd0d66bf97fa5b'),
(2, 'Elvis', 'Makambi', 'elvo', 723369803, 'akipkiruiyegoon@gmail.com', '02a60798b2ba8a9402dd0d66bf97fa5b', '02a60798b2ba8a9402dd0d66bf97fa5b');
