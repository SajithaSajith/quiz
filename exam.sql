-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 29, 2021 at 08:14 AM
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
('61a46c41e845b', '61a46c4202358'),
('61a46c42d4382', '61a46c42f1728'),
('61a46c43a73ad', '61a46c43cba7d'),
('61a46c450a278', '61a46c4533f8c'),
('61a46c460054e', '61a46c46006a3'),
('61a46c46d7df1', '61a46c470586d'),
('61a46c4841c0e', '61a46c486384d'),
('61a46c492fd05', '61a46c49544d3'),
('61a47114aed4b', '61a47114c38ab'),
('61a47115088c1', '61a471150cd0d'),
('61a4711531941', '61a4711535d1c'),
('61a471155dc67', '61a4711561cc9'),
('61a471157efb1', '61a47115d273b'),
('61a47115eb691', '61a47115ef81a'),
('61a4711618495', '61a471161c50d'),
('61a471163944f', '61a4711639579'),
('61a471164df58', '61a4711652371'),
('61a4711666efa', '61a471166b1ae'),
('61a475b11b2b4', '61a475b13c7ec'),
('61a475b17b0a5', '61a475b17f40f'),
('61a475b19eb41', '61a475b1a2f59'),
('61a475b1c13e4', '61a475b1c552d'),
('61a475b1dcdf7', '61a475b1e0e7e'),
('61a475b21d014', '61a475b2254fc'),
('61a475b23e4e1', '61a475b242586'),
('61a475b257372', '61a475b25b48b'),
('61a475b2702ba', '61a475b27430b'),
('61a475b2891c2', '61a475b28d5d4');

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
('ncsajitha@gmail.com', '61a473446a775', 3, 10, 3, 7, '2021-11-29 08:13:48');

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
('61a46c41e845b', 'K Kasturirangan', '61a46c4202353'),
('61a46c41e845b', 'Vikram Sarabhai', '61a46c4202358'),
('61a46c41e845b', 'Satish Dhawan', '61a46c4202359'),
('61a46c41e845b', 'Homi J Bhabha', '61a46c420235b'),
('61a46c42d4382', 'President of India', '61a46c42f171f'),
('61a46c42d4382', 'Vice-President of India', '61a46c42f1725'),
('61a46c42d4382', 'Prime Minister of India', '61a46c42f1728'),
('61a46c42d4382', 'Union Minister of Science and Technology', '61a46c42f172b'),
('61a46c43a73ad', '1973', '61a46c43cba76'),
('61a46c43a73ad', '1974', '61a46c43cba7d'),
('61a46c43a73ad', '1988', '61a46c43cba80'),
('61a46c43a73ad', '1996', '61a46c43cba83'),
('61a46c450a278', 'Nagpur', '61a46c4533f8c'),
('61a46c450a278', 'Coimbatore', '61a46c4533f94'),
('61a46c450a278', 'Chennai', '61a46c4533f97'),
('61a46c450a278', 'Sirsa', '61a46c4533f99'),
('61a46c460054e', 'Ganga', '61a46c460069c'),
('61a46c460054e', 'Agni', '61a46c46006a1'),
('61a46c460054e', 'Maitri', '61a46c46006a3'),
('61a46c460054e', 'None of the above', '61a46c46006a6'),
('61a46c46d7df1', 'Delhi', '61a46c4705865'),
('61a46c46d7df1', 'Kolkata', '61a46c470586d'),
('61a46c46d7df1', 'Amritsar', '61a46c4705870'),
('61a46c46d7df1', 'Bangalore', '61a46c4705876'),
('61a46c4841c0e', 'Oslo', '61a46c4863844'),
('61a46c4841c0e', 'Stockholm', '61a46c486384d'),
('61a46c4841c0e', 'London', '61a46c486384f'),
('61a46c4841c0e', 'Zurich', '61a46c4863852'),
('61a46c492fd05', '1920', '61a46c49544ce'),
('61a46c492fd05', '1930', '61a46c49544d3'),
('61a46c492fd05', '1945', '61a46c49544d5'),
('61a46c492fd05', '1956', '61a46c49544d6'),
('61a47114aed4b', 'Himachal Pradesh', '61a47114c38ab'),
('61a47114aed4b', 'West Bengal', '61a47114c38b5'),
('61a47114aed4b', 'Karnataka', '61a47114c38b8'),
('61a47114aed4b', 'Jharkhand', '61a47114c38bc'),
('61a47115088c1', 'Andhra Pradesh', '61a471150cd07'),
('61a47115088c1', 'Gujarat', '61a471150cd0d'),
('61a47115088c1', 'Mizoram', '61a471150cd10'),
('61a47115088c1', 'Haryana', '61a471150cd12'),
('61a4711531941', 'Shehnai', '61a4711535d0b'),
('61a4711531941', 'Violin', '61a4711535d19'),
('61a4711531941', 'Flute', '61a4711535d1c'),
('61a4711531941', 'Sarod', '61a4711535d1f'),
('61a471155dc67', 'Iskcon temple', '61a4711561cc0'),
('61a471155dc67', 'Lotus temple', '61a4711561cc9'),
('61a471155dc67', 'Kalkaji temple', '61a4711561ccc'),
('61a471155dc67', 'Chhatarpur temple', '61a4711561cce'),
('61a471157efb1', 'Palgnat Mani lyer', '61a47115d2730'),
('61a471157efb1', 'Madhumati', '61a47115d2738'),
('61a471157efb1', 'Sonal Mansingn', '61a47115d273b'),
('61a471157efb1', 'Siddnesnwan Devi', '61a47115d273e'),
('61a47115eb691', 'Manipur', '61a47115ef81a'),
('61a47115eb691', 'Meghalaya', '61a47115ef821'),
('61a47115eb691', 'Sikkim', '61a47115ef824'),
('61a47115eb691', 'Assam', '61a47115ef826'),
('61a4711618495', 'Jharkhand', '61a471161c4fb'),
('61a4711618495', 'Bihar', '61a471161c505'),
('61a4711618495', 'West Bengal', '61a471161c50d'),
('61a4711618495', 'Uttar Pradesh', '61a471161c513'),
('61a471163944f', 'Salvador Dali', '61a4711639574'),
('61a471163944f', 'Vincent Van Gogh', '61a4711639577'),
('61a471163944f', 'Pablo Picasso', '61a4711639579'),
('61a471163944f', 'Leonardo da Vinci', '61a471163957b'),
('61a471164df58', 'Kaagaz Ke Phool', '61a471165236c'),
('61a471164df58', 'Alam Ara', '61a4711652371'),
('61a471164df58', 'Raja Harishchandra', '61a4711652373'),
('61a471164df58', 'Chandralekha', '61a4711652375'),
('61a4711666efa', 'Vijay Tendulkar', '61a471166b1a6'),
('61a4711666efa', 'Satyadev Dubey', '61a471166b1ab'),
('61a4711666efa', 'Girish Karnad', '61a471166b1ae'),
('61a4711666efa', 'Habib Tanvir', '61a471166b1b0'),
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
('61a475b2891c2', 'Parliament', '61a475b28d5d8');

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
('61a46916e93a6', '61a46c41e845b', 'Who was the first chairman of Indian Space Research Organisation(ISRO)?', '3', 4, 3),
('61a46916e93a6', '61a46c42d4382', 'Who is the president of the Council of Scientific and Industrial Research?', '4', 4, 4),
('61a46916e93a6', '61a46c43a73ad', 'The first nuclear test conducted in India under the code-name of Smiling Buddha in the year', '5', 4, 5),
('61a46916e93a6', '61a46c450a278', 'Where the headquarter of Central Institute for Cotton Research is located?', '6', 4, 6),
('61a46916e93a6', '61a46c46d7df1', 'Where the headquarter of Indian Statistical Institute is located?', '8', 4, 8),
('61a46916e93a6', '61a46c4841c0e', 'All Nobel Prizes except the Peace Prize is awarded in', '9', 4, 9),
('61a46916e93a6', '61a46c492fd05', 'The National Academy of Sciences, India is founded in the year', '10', 4, 10),
('61a46c609075d', '61a47114aed4b', 'Nati is a dance form of Indian state of', '1', 4, 1),
('61a46c609075d', '61a47115088c1', 'Dandiya Rass is a famous dance form of', '2', 4, 2),
('61a46c609075d', '61a4711531941', 'Which music instrument belongs to Hari Prasad Chaurasia?', '3', 4, 3),
('61a46c609075d', '61a471155dc67', 'Which of the following temple in Delhi is also known as Bahai Temple?', '4', 4, 4),
('61a46c609075d', '61a471157efb1', 'Who amongst the following is a renowned Indian classical dancer? ', '5', 4, 5),
('61a46c609075d', '61a47115eb691', 'Chakan Gaan-Ngai, a post-harvest festival is celebrated in', '6', 4, 6),
('61a46c609075d', '61a4711618495', 'With which of the following states can the Gambhira dance be associated?', '7', 4, 7),
('61a46c609075d', '61a471164df58', 'The first talkie movie made in India by A. Irani in 1931 Was', '9', 4, 9),
('61a46c609075d', '61a4711666efa', 'Hayavadana is a play by', '10', 4, 10),
('61a473446a775', '61a475b11b2b4', 'The members of the Rajya Sabha are elected by', '1', 4, 1),
('61a473446a775', '61a475b17b0a5', 'The members of the panchayat are', '2', 4, 2),
('61a473446a775', '61a475b19eb41', 'The power to decide an election petition is vested in the', '3', 4, 3),
('61a473446a775', '61a475b1c13e4', 'The members of Lok Sabha hold office for a term of', '4', 4, 4),
('61a473446a775', '61a475b1dcdf7', 'The present Lok Sabha is the', '5', 4, 5),
('61a473446a775', '61a475b21d014', 'The pension of a high court judge is charged to the', '6', 4, 6),
('61a473446a775', '61a475b23e4e1', 'The members of a State Commission can be removed by the', '7', 4, 7),
('61a473446a775', '61a475b257372', 'The president can dismiss a member of the council of ministers', '8', 4, 8),
('61a473446a775', '61a475b2702ba', 'The office of the prime minister of India', '9', 4, 9),
('61a473446a775', '61a475b2891c2', 'The powers to legislate with respect to any matter not enumerated in any of the three lists are mentioned as residuary powers. Which of the following is empowered to determine finally as to whether or not a particular matter falls in this category', '10', 4, 10);

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
('61a46916e93a6', 'Science & Technology', 1, 0, 10, '2021-11-29 05:45:58'),
('61a46c609075d', 'Arts', 1, 0, 10, '2021-11-29 06:00:00'),
('61a473446a775', 'Politics', 1, 0, 10, '2021-11-29 06:29:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
