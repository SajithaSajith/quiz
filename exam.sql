-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 29, 2021 at 12:44 PM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@example.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('61a31c2b53a52', '61a31c2b553d5'),
('61a31c2b76a6d', '61a31c2b76c36'),
('61a466fc962d3', '61a466fcae2a6'),
('61a466fcd33bb', '61a466fcd773d'),
('61a466fd086cc', '61a466fd0ca68'),
('61a466fd21542', '61a466fd258be'),
('61a466fd47f60', '61a466fd4c2e6'),
('61a466fd60e3c', '61a466fd65253'),
('61a466fd7a051', '61a466fd7e11b'),
('61a466fd92f0b', '61a466fd96ff3'),
('61a466fdabe80', '61a466fdaff8e'),
('61a466fdc4d89', '61a466fdc8ea7'),
('61a46c3fb0c6b', '61a46c3fb0dbb'),
('61a46c4063d0a', '61a46c4063e30'),
('61a46c460054e', '61a46c46006a3'),
('61a471163944f', '61a4711639579'),
('61a475b11b2b4', '61a475b13c7ec'),
('61a475b17b0a5', '61a475b17f40f'),
('61a475b19eb41', '61a475b1a2f59'),
('61a475b1c13e4', '61a475b1c552d'),
('61a475b1dcdf7', '61a475b1e0e7e'),
('61a475b21d014', '61a475b2254fc'),
('61a475b23e4e1', '61a475b242586'),
('61a475b257372', '61a475b25b48b'),
('61a475b2702ba', '61a475b27430b'),
('61a475b2891c2', '61a475b28d5d4'),
('61a4c59e90872', '61a4c59eb4dde'),
('61a4c59f54af9', '61a4c59f5f26d'),
('61a4c59f82cbb', '61a4c59f870a3'),
('61a4c59f9bc36', '61a4c59fa0051'),
('61a4c59fb4a49', '61a4c59fbcf55'),
('61a4c59fde418', '61a4c59fe2830'),
('61a4c5a0030cc', '61a4c5a007518'),
('61a4c5a01bfd4', '61a4c5a0203f1'),
('61a4c5a034ece', '61a4c5a0392eb'),
('61a4c5a04dd27', '61a4c5a0521f3'),
('61a4c9823dfda', '61a4c9825f86c'),
('61a4c982ae68a', '61a4c982b2b2f'),
('61a4c982c75e7', '61a4c982cb9b7'),
('61a4c982e0437', '61a4c982e8940'),
('61a4c983157c3', '61a4c98319aed'),
('61a4c98336bbe', '61a4c9833af8f'),
('61a4c9834fdd8', '61a4c98353eab'),
('61a4c98368d22', '61a4c983b4b2d'),
('61a4c983cf9a2', '61a4c983d399f'),
('61a4c983e883f', '61a4c983ec8f4');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('ncsajitha@gmail.com', '61a4c779196bc', 2, 10, 2, 8, '2021-11-29 12:40:08'),
('ncsajitha@gmail.com', '61a4c36a0f8ab', 9, 10, 9, 1, '2021-11-29 12:40:51'),
('ncsajitha@gmail.com', '61a473446a775', 1, 10, 1, 9, '2021-11-29 12:41:16'),
('ncsajitha@gmail.com', '61a464bc81c23', 2, 10, 2, 8, '2021-11-29 12:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('61a31c2b53a52', 'we', '61a31c2b553d5'),
('61a31c2b53a52', 'sf', '61a31c2b553dc'),
('61a31c2b53a52', 'zz', '61a31c2b553df'),
('61a31c2b53a52', 'vc', '61a31c2b553e2'),
('61a31c2b76a6d', 'gf', '61a31c2b76c2e'),
('61a31c2b76a6d', 'sd', '61a31c2b76c36'),
('61a31c2b76a6d', 'ss', '61a31c2b76c7d'),
('61a31c2b76a6d', 'ss', '61a31c2b76c87'),
('61a466fc962d3', 'August 28', '61a466fcae29f'),
('61a466fc962d3', 'August 29', '61a466fcae2a6'),
('61a466fc962d3', 'August 27', '61a466fcae2a9'),
('61a466fc962d3', 'August 26', '61a466fcae2ac'),
('61a466fcd33bb', 'Hopman Cup', '61a466fcd7734'),
('61a466fcd33bb', 'Fed Cup', '61a466fcd773d'),
('61a466fcd33bb', 'BMW Open', '61a466fcd7740'),
('61a466fcd33bb', 'Millrose Cup', '61a466fcd7743'),
('61a466fd086cc', 'Bowling', '61a466fd0ca61'),
('61a466fd086cc', 'Baseball', '61a466fd0ca68'),
('61a466fd086cc', 'Table Tennis', '61a466fd0ca6a'),
('61a466fd086cc', 'Rugby', '61a466fd0ca6b'),
('61a466fd21542', '3', '61a466fd258b7'),
('61a466fd21542', '9', '61a466fd258be'),
('61a466fd21542', '8', '61a466fd258c1'),
('61a466fd21542', '15', '61a466fd258c4'),
('61a466fd47f60', 'Garfield Sobers', '61a466fd4c2e6'),
('61a466fd47f60', 'Ravi Shastri', '61a466fd4c2eb'),
('61a466fd47f60', 'Ted Alletson', '61a466fd4c2ed'),
('61a466fd47f60', 'Kapil Dev', '61a466fd4c2ef'),
('61a466fd60e3c', '1998', '61a466fd65253'),
('61a466fd60e3c', '1990', '61a466fd65258'),
('61a466fd60e3c', '1989', '61a466fd6525a'),
('61a466fd60e3c', '1995', '61a466fd6525c'),
('61a466fd7a051', 'Alexander Rueb', '61a466fd7e112'),
('61a466fd7a051', 'Max Euwe', '61a466fd7e117'),
('61a466fd7a051', 'Kirsan Ilyumzhinov', '61a466fd7e119'),
('61a466fd7a051', 'Arkady Dvorkovich', '61a466fd7e11b'),
('61a466fd92f0b', 'Simone Biles', '61a466fd96ff3'),
('61a466fd92f0b', 'Madison Kocian', '61a466fd96ffb'),
('61a466fd92f0b', 'Aliya Mustafina', '61a466fd96ffd'),
('61a466fd92f0b', 'Mao Yi', '61a466fd97000'),
('61a466fdabe80', 'Germany', '61a466fdaff8e'),
('61a466fdabe80', 'Bulgaria', '61a466fdaff93'),
('61a466fdabe80', 'Spain', '61a466fdaff95'),
('61a466fdabe80', 'England', '61a466fdaff96'),
('61a466fdc4d89', 'Australia', '61a466fdc8ea7'),
('61a466fdc4d89', 'Germany', '61a466fdc8eac'),
('61a466fdc4d89', 'Canada', '61a466fdc8eae'),
('61a466fdc4d89', 'India', '61a466fdc8eaf'),
('61a46c3fb0c6b', 'SARAL', '61a46c3fb0db5'),
('61a46c3fb0c6b', 'RISAT-1', '61a46c3fb0db8'),
('61a46c3fb0c6b', 'HAMSAT', '61a46c3fb0dba'),
('61a46c3fb0c6b', 'EDUSAT', '61a46c3fb0dbb'),
('61a46c4063d0a', 'Wheeler Island', '61a46c4063e26'),
('61a46c4063d0a', 'Balasore', '61a46c4063e2c'),
('61a46c4063d0a', 'Sriharikota', '61a46c4063e30'),
('61a46c4063d0a', 'None of the above', '61a46c4063e33'),
('61a46c460054e', 'Ganga', '61a46c460069c'),
('61a46c460054e', 'Agni', '61a46c46006a1'),
('61a46c460054e', 'Maitri', '61a46c46006a3'),
('61a46c460054e', 'None of the above', '61a46c46006a6'),
('61a471163944f', 'Salvador Dali', '61a4711639574'),
('61a471163944f', 'Vincent Van Gogh', '61a4711639577'),
('61a471163944f', 'Pablo Picasso', '61a4711639579'),
('61a471163944f', 'Leonardo da Vinci', '61a471163957b'),
('61a475b11b2b4', 'the people', '61a475b13c7e3'),
('61a475b11b2b4', 'Lok Sabha', '61a475b13c7e9'),
('61a475b11b2b4', 'elected members of the legislative assembly', '61a475b13c7ec'),
('61a475b11b2b4', 'elected members of the legislative council', '61a475b13c7ee'),
('61a475b17b0a5', 'nominated by the district officer', '61a475b17f409'),
('61a475b17b0a5', 'the electorates of the respective territorial constituencies', '61a475b17f40f'),
('61a475b17b0a5', 'nominated by local self-government minister of the state', '61a475b17f411'),
('61a475b17b0a5', 'nominated by the block development organization', '61a475b17f412'),
('61a475b19eb41', 'Parliament', '61a475b1a2f52'),
('61a475b19eb41', 'Supreme Court', '61a475b1a2f56'),
('61a475b19eb41', 'High courts', '61a475b1a2f59'),
('61a475b19eb41', 'Election Commission', '61a475b1a2f5a'),
('61a475b1c13e4', '4 years', '61a475b1c5528'),
('61a475b1c13e4', '5 years', '61a475b1c552d'),
('61a475b1c13e4', '6 years', '61a475b1c552f'),
('61a475b1c13e4', '3 years', '61a475b1c5531'),
('61a475b1dcdf7', '14th Lok Sabha', '61a475b1e0e71'),
('61a475b1dcdf7', '15th Lok Sabha', '61a475b1e0e79'),
('61a475b1dcdf7', '16th Lok Sabha', '61a475b1e0e7b'),
('61a475b1dcdf7', '17th Lok Sabha', '61a475b1e0e7e'),
('61a475b21d014', 'Consolidated Fund of India', '61a475b2254fc'),
('61a475b21d014', 'Consolidated Fund of the state where he last served', '61a475b225501'),
('61a475b21d014', 'Consolidated Funds of the different states where he has served', '61a475b225503'),
('61a475b21d014', 'Contingency Fund of India', '61a475b225505'),
('61a475b23e4e1', 'governor on a report by the Supreme Court', '61a475b24257f'),
('61a475b23e4e1', 'governor on a resolution passed by Parliament', '61a475b242584'),
('61a475b23e4e1', 'president on a report by the Supreme Court', '61a475b242586'),
('61a475b23e4e1', 'president on a resolution passed by Parliament', '61a475b242587'),
('61a475b257372', 'on his own', '61a475b25b485'),
('61a475b257372', 'on the recommendation of the prime ministers', '61a475b25b48b'),
('61a475b257372', 'only under emergency conditions', '61a475b25b48c'),
('61a475b257372', 'with the consent of the speaker', '61a475b25b48e'),
('61a475b2702ba', 'has a constitutional basis', '61a475b27430b'),
('61a475b2702ba', 'has a statutory basis', '61a475b27430f'),
('61a475b2702ba', 'has conventional basis', '61a475b274311'),
('61a475b2702ba', 'None of the above', '61a475b274313'),
('61a475b2891c2', 'Lok Sabha', '61a475b28d5cf'),
('61a475b2891c2', 'Judiciary', '61a475b28d5d4'),
('61a475b2891c2', 'Rajya Sabha', '61a475b28d5d6'),
('61a475b2891c2', 'Parliament', '61a475b28d5d8'),
('61a4c59e90872', 'Cat', '61a4c59eb4dd8'),
('61a4c59e90872', 'Dog', '61a4c59eb4dde'),
('61a4c59e90872', 'Monkey', '61a4c59eb4de0'),
('61a4c59e90872', 'Rat', '61a4c59eb4de2'),
('61a4c59f54af9', 'Heavy metal', '61a4c59f5f268'),
('61a4c59f54af9', 'Ozone', '61a4c59f5f26d'),
('61a4c59f54af9', 'Microplastics', '61a4c59f5f26f'),
('61a4c59f54af9', 'Pesticides', '61a4c59f5f271'),
('61a4c59f82cbb', 'Russia', '61a4c59f8709a'),
('61a4c59f82cbb', 'Japan', '61a4c59f870a1'),
('61a4c59f82cbb', 'China', '61a4c59f870a3'),
('61a4c59f82cbb', 'India', '61a4c59f870a5'),
('61a4c59f9bc36', 'A. P. J. Abdul Kalam', '61a4c59fa004b'),
('61a4c59f9bc36', 'Homi J. Bhabha', '61a4c59fa0051'),
('61a4c59f9bc36', 'Raja Ramanna', '61a4c59fa0052'),
('61a4c59f9bc36', 'Homi Sethna', '61a4c59fa0054'),
('61a4c59fb4a49', 'Block Chain Technology', '61a4c59fbcf55'),
('61a4c59fb4a49', 'Internet of Things', '61a4c59fbcf5d'),
('61a4c59fb4a49', 'Artificial Intelligence', '61a4c59fbcf60'),
('61a4c59fb4a49', '3-D Printing', '61a4c59fbcf63'),
('61a4c59fde418', 'Coal', '61a4c59fe2829'),
('61a4c59fde418', 'Petrol', '61a4c59fe282e'),
('61a4c59fde418', 'Wind energy', '61a4c59fe2830'),
('61a4c59fde418', 'Diesel', '61a4c59fe2832'),
('61a4c5a0030cc', 'Programmable Used Machine to Assemble', '61a4c5a007511'),
('61a4c5a0030cc', 'Programmed Machine for Assembly', '61a4c5a007516'),
('61a4c5a0030cc', 'Programmable Universal Machine for Assembly', '61a4c5a007518'),
('61a4c5a0030cc', 'Programmed Utility Machine to Assemble', '61a4c5a00751a'),
('61a4c5a01bfd4', 'E. coli infection in blood', '61a4c5a0203eb'),
('61a4c5a01bfd4', 'presence of E. coli in intestine', '61a4c5a0203ef'),
('61a4c5a01bfd4', 'Microbial contamination in river water', '61a4c5a0203f1'),
('61a4c5a01bfd4', 'microbial contamination in packaged food', '61a4c5a0203f3'),
('61a4c5a034ece', 'Laser physics', '61a4c5a0392eb'),
('61a4c5a034ece', 'Black hole', '61a4c5a0392f0'),
('61a4c5a034ece', 'Magnetic resonance', '61a4c5a0392f2'),
('61a4c5a034ece', 'Gravitational wave', '61a4c5a0392f3'),
('61a4c5a04dd27', 'Aetiology', '61a4c5a0521ec'),
('61a4c5a04dd27', 'Epidemic', '61a4c5a0521f1'),
('61a4c5a04dd27', 'Endermic', '61a4c5a0521f3'),
('61a4c5a04dd27', 'Epidemiology', '61a4c5a0521f4'),
('61a4c9823dfda', 'Himachal Pradesh', '61a4c9825f86c'),
('61a4c9823dfda', 'West Bengal', '61a4c9825f871'),
('61a4c9823dfda', 'Karnataka', '61a4c9825f874'),
('61a4c9823dfda', 'Goa', '61a4c9825f876'),
('61a4c982ae68a', 'Andhra Pradesh', '61a4c982b2b2a'),
('61a4c982ae68a', 'Gujarat', '61a4c982b2b2f'),
('61a4c982ae68a', 'Mizoram', '61a4c982b2b31'),
('61a4c982ae68a', 'Haryana', '61a4c982b2b33'),
('61a4c982c75e7', 'Shehnai', '61a4c982cb9b0'),
('61a4c982c75e7', 'Violin', '61a4c982cb9b5'),
('61a4c982c75e7', 'Flute', '61a4c982cb9b7'),
('61a4c982c75e7', 'Sarod', '61a4c982cb9b9'),
('61a4c982e0437', 'Iskcon temple', '61a4c982e893a'),
('61a4c982e0437', 'Lotus temple', '61a4c982e8940'),
('61a4c982e0437', 'Kalkaji temple', '61a4c982e8943'),
('61a4c982e0437', 'Chhatarpur temple', '61a4c982e8945'),
('61a4c983157c3', 'Jharkhand', '61a4c98319ae3'),
('61a4c983157c3', 'Bihar', '61a4c98319aeb'),
('61a4c983157c3', 'West Bengal', '61a4c98319aed'),
('61a4c983157c3', 'Uttar Pradesh', '61a4c98319af0'),
('61a4c98336bbe', 'Palgnat Mani lyer', '61a4c9833af85'),
('61a4c98336bbe', 'Madhumati', '61a4c9833af8c'),
('61a4c98336bbe', 'Sonal Mansingn', '61a4c9833af8f'),
('61a4c98336bbe', 'Siddnesnwan Devi', '61a4c9833af92'),
('61a4c9834fdd8', 'Manipur', '61a4c98353eab'),
('61a4c9834fdd8', 'Sikkim', '61a4c98353eb0'),
('61a4c9834fdd8', 'Meghalaya', '61a4c98353eb2'),
('61a4c9834fdd8', 'Assam', '61a4c98353eb4'),
('61a4c98368d22', 'Bagh Caves', '61a4c983b4b24'),
('61a4c98368d22', 'Ellora Caves', '61a4c983b4b29'),
('61a4c98368d22', 'Udayagiri Caves', '61a4c983b4b2b'),
('61a4c98368d22', 'Barabar Caves', '61a4c983b4b2d'),
('61a4c983cf9a2', 'Folk singer', '61a4c983d3994'),
('61a4c983cf9a2', 'Qawwali singer', '61a4c983d399f'),
('61a4c983cf9a2', 'Pop singer', '61a4c983d39a4'),
('61a4c983cf9a2', 'Hindustani classical singer', '61a4c983d39a6'),
('61a4c983e883f', 'Kolkata', '61a4c983ec8e8'),
('61a4c983e883f', 'Bhopal', '61a4c983ec8f4'),
('61a4c983e883f', 'New Delhi', '61a4c983ec8f7'),
('61a4c983e883f', 'Lucknow', '61a4c983ec8fc');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` varchar(100) NOT NULL,
  `qns` text NOT NULL,
  `level` varchar(255) NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `level`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', '', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', '', 4, 1),
('61a464bc81c23', '61a466fc962d3', 'National Sports Day (NSD) is celebrated on which date in India?', '1', 4, 1),
('61a464bc81c23', '61a466fcd33bb', 'Which among the following is the womenâ€™s equivalent of the Davis Cup?', '2', 4, 2),
('61a464bc81c23', '61a466fd086cc', 'Which among the following is the National Sports of USA?', '3', 4, 3),
('61a464bc81c23', '61a466fd21542', 'What was the position of India Menâ€™s National Hockey team at the Rio Olympics?', '4', 4, 4),
('61a464bc81c23', '61a466fd47f60', 'Who among the following is the first batsman to hit six sixes in an over?', '5', 4, 5),
('61a464bc81c23', '61a466fd60e3c', 'When was the UCI Womenâ€™s Road World Cup founded?', '6', 4, 6),
('61a464bc81c23', '61a466fd7a051', 'Who is the President of World Chess Federation?', '7', 4, 7),
('61a464bc81c23', '61a466fd92f0b', 'Who had won an individual Gold medal in the Womenâ€™s individual event of Artistic gymnastics in the 2016 Rio Olympics?', '8', 4, 8),
('61a464bc81c23', '61a466fdabe80', 'Where are the headquarters of International Paralympic Committee?', '9', 4, 9),
('61a464bc81c23', '61a466fdc4d89', 'Which of the following country has hosted the Commonwealth Games maximum number of times?', '10', 4, 10),
('61a473446a775', '61a475b11b2b4', 'The members of the Rajya Sabha are elected by', '1', 4, 1),
('61a473446a775', '61a475b17b0a5', 'The members of the panchayat are', '2', 4, 2),
('61a473446a775', '61a475b19eb41', 'The power to decide an election petition is vested in the', '3', 4, 3),
('61a473446a775', '61a475b1c13e4', 'The members of Lok Sabha hold office for a term of', '4', 4, 4),
('61a473446a775', '61a475b1dcdf7', 'The present Lok Sabha is the', '5', 4, 5),
('61a473446a775', '61a475b21d014', 'The pension of a high court judge is charged to the', '6', 4, 6),
('61a473446a775', '61a475b23e4e1', 'The members of a State Commission can be removed by the', '7', 4, 7),
('61a473446a775', '61a475b257372', 'The president can dismiss a member of the council of ministers', '8', 4, 8),
('61a473446a775', '61a475b2702ba', 'The office of the prime minister of India', '9', 4, 9),
('61a473446a775', '61a475b2891c2', 'The powers to legislate with respect to any matter not enumerated in any of the three lists are mentioned as residuary powers. Which of the following is empowered to determine finally as to whether or not a particular matter falls in this category', '10', 4, 10),
('61a4c36a0f8ab', '61a4c59e90872', 'Which was the first living creature sent in space?', '1', 4, 1),
('61a4c36a0f8ab', '61a4c59f54af9', 'Which of the following does not contribute to the pollution in the water body?', '2', 4, 2),
('61a4c36a0f8ab', '61a4c59f82cbb', 'Which is the second country in the world to land a Rover on Mars?', '3', 4, 3),
('61a4c36a0f8ab', '61a4c59f9bc36', 'Who is regarded as the pioneer of Atomic energy in India?', '4', 4, 4),
('61a4c36a0f8ab', '61a4c59fb4a49', 'Virtual currency Bitcoin is based on -', '5', 4, 5),
('61a4c36a0f8ab', '61a4c59fde418', 'Which of the following is a non-conventional energy source?', '6', 4, 6),
('61a4c36a0f8ab', '61a4c5a0030cc', 'What does PUMA stand for in context of Robotics?', '7', 4, 7),
('61a4c36a0f8ab', '61a4c5a01bfd4', 'The count of coliform bacteria provides an idea of -', '8', 4, 8),
('61a4c36a0f8ab', '61a4c5a034ece', 'The Noble Prize for 2018 in the area of physics has been awarded for the work in the area of -', '9', 4, 9),
('61a4c36a0f8ab', '61a4c5a04dd27', 'The study of the all the factors that are responsible for the appearance of a particular disease is called -', '10', 4, 10),
('61a4c779196bc', '61a4c9823dfda', 'Nati is a dance form of Indian state of', '1', 4, 1),
('61a4c779196bc', '61a4c982ae68a', 'Dandiya Rass is a famous dance form of', '2', 4, 2),
('61a4c779196bc', '61a4c982c75e7', 'Which music instrument belongs to Hari Prasad Chaurasia?', '3', 4, 3),
('61a4c779196bc', '61a4c982e0437', 'Which of the following temple in Delhi is also known as Bahai Temple?', '4', 4, 4),
('61a4c779196bc', '61a4c983157c3', 'With which of the following states can the Gambhira dance be associated?', '5', 4, 5),
('61a4c779196bc', '61a4c98336bbe', 'Who amongst the following is a renowned Indian classical dancer? ', '6', 4, 6),
('61a4c779196bc', '61a4c9834fdd8', 'Chakan Gaan-Ngai, a post-harvest festival is celebrated in', '7', 4, 7),
('61a4c779196bc', '61a4c98368d22', 'Which among the following is the oldest surviving rock-cut cave in India?', '8', 4, 8),
('61a4c779196bc', '61a4c983cf9a2', 'Nusrat Fateh Ali Khan is a famous', '9', 4, 9),
('61a4c779196bc', '61a4c983e883f', 'The renowned multi-arts centre Bharat Bhavan is located in which of the following cities?', '10', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('61a464bc81c23', 'Sports', 1, 0, 10, '2021-11-29 05:27:24'),
('61a473446a775', 'Politics', 1, 0, 10, '2021-11-29 06:29:24'),
('61a4c36a0f8ab', 'Science & Technology', 1, 0, 10, '2021-11-29 12:11:22'),
('61a4c779196bc', 'Arts', 1, 0, 10, '2021-11-29 12:28:41');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
