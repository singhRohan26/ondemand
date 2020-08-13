-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 11, 2020 at 12:28 AM
-- Server version: 5.6.48-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_ondemand`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(50) NOT NULL,
  `reciever_id` varchar(50) NOT NULL,
  `sender_type` enum('USER','DESIGNER') DEFAULT 'USER',
  `message` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender_id`, `reciever_id`, `sender_type`, `message`, `date`, `time`) VALUES
(1, '22', 'TyM1oIvSbn', 'USER', 'hi', '2020-07-01', '11:46:00'),
(3, '50', 'TyM1oIvSbn', 'USER', 'hi', '2020-06-08', '12:27:00'),
(4, '2', 'TyM1oIvSbn', 'USER', 'hii', '2020-06-08', '12:28:00'),
(7, '44', 'TyM1oIvSbn', 'USER', 'hmm', '2020-06-13', '05:28:00'),
(6, '48', 'TyM1oIvSbn', 'USER', 'Hi', '2020-06-08', '06:24:00'),
(8, '51', 'TyM1oIvSbn', 'USER', NULL, '2020-07-21', '11:03:00'),
(10, '1', 'TyM1oIvSbn', 'USER', NULL, '2020-07-02', '19:48:00'),
(9, '5', 'TyM1oIvSbn', 'USER', 'okay', '2020-08-04', '06:01:00'),
(11, '58', 'TyM1oIvSbn', 'USER', 'hello', '2020-06-15', '06:19:00'),
(12, '53', 'TyM1oIvSbn', 'USER', 'hello', '2020-06-15', '20:21:00'),
(13, '12', 'TyM1oIvSbn', 'USER', 'hieee', '2020-06-24', '19:27:00'),
(14, '75', 'TyM1oIvSbn', 'USER', 'byeee', '2020-07-21', '05:28:00'),
(15, '55', 'TyM1oIvSbn', 'USER', 'hii', '2020-06-26', '11:39:00'),
(16, '', 'TyM1oIvSbn', 'USER', NULL, '2020-07-21', '10:35:00'),
(17, '84', 'TyM1oIvSbn', 'USER', NULL, '2020-08-06', '13:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `od_address`
--

CREATE TABLE `od_address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `address_line_1` text NOT NULL,
  `address_line_2` text NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `type` enum('Home','Work','Other') NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_address`
--

INSERT INTO `od_address` (`address_id`, `user_id`, `user_name`, `address_line_1`, `address_line_2`, `state`, `city`, `zipcode`, `type`, `lat`, `long`, `status`, `created_at`) VALUES
(1, 1, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '201301', 'Work', 28.6691565, 77.45375779999999, 'Active', '2020-05-07 09:44:46'),
(3, 3, 'varun', 'sector66', 'gali no 2', 'uttarpradesh', 'noida', '201301', 'Home', 28.6691565, 77.45375779999999, 'Active', '2020-05-08 04:32:56'),
(9, 4, 'varun', 'noida sector 63', 'building 185', 'uttarpradesh', 'noida', '201301', 'Work', 28.62669, 77.38585, 'Active', '2020-05-08 10:10:22'),
(13, 11, 'Sagar', 'gali no 22', 'noida setor 44', 'uttar Pradesh', 'noida', '201301', 'Work', 28.6691565, 77.45375779999999, 'Active', '2020-05-11 10:05:53'),
(14, 20, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '201301', 'Work', 28.6691565, 77.45375779999999, 'Active', '2020-05-18 07:24:46'),
(17, 3, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.6691565, 77.45375779999999, 'Active', '2020-05-26 05:46:55'),
(23, 3, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-05-26 07:49:06'),
(25, 3, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-05-26 08:01:41'),
(26, 3, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-05-26 08:03:01'),
(27, 3, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-05-26 08:03:51'),
(40, 1, 'Sagar Kumar', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-05-27 04:29:23'),
(41, 1, 'Sagar Gupta', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-05-27 04:29:43'),
(43, 0, 'Test', 'Ghaziabad, Bhur Bharat Nagar, Railway Colony, Madhopura, Ghaziabad, Uttar Pradesh 201009, India', 'Railway Station', 'Uttar Pradesh', 'Ghaziabad', '', 'Other', 28.6532572, 77.42897219999999, 'Active', '2020-05-27 04:41:06'),
(49, 1, 'Sagar Gupta', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.62669, 77.38585, 'Active', '2020-06-02 07:33:01'),
(53, 5, 'Ankit', 'Shipra Suncity, Indirapuram, Ghaziabad, Uttar Pradesh, India', 'Indirapuram, Ghaziabad', 'Indirapuram', 'Ghaziabad', '201014', 'Home', 28.6367882, 77.3740732, 'Active', '2020-06-02 12:06:50'),
(55, 22, 'Rohan Kumar Singh', 'Dillenburg, Germany', 'Dilshad garden,Delhi-95', 'Delhi', 'New Delhi ', '110095', 'Other', 50.7452841, 8.280763, 'Active', '2020-06-03 13:13:08'),
(56, 44, 'Samuel', '358, Pragati Nagar, Meerut, Uttar Pradesh 250002, India', 'A-358, Pragati Nagar, Meerut', '', '', '', 'Home', 0, 0, 'Active', '2020-06-04 11:27:27'),
(59, 44, 'Rishabh', '358, Pragati Nagar, Meerut, Uttar Pradesh 250002, India', 'J-56 beta-2', '', '', '', 'Work', 0, 0, 'Active', '2020-06-04 11:59:05'),
(60, 46, 'Shubham', 'RG Residency, Sector 120, Noida, Uttar Pradesh, India', 'near Prateek laurel ', 'Noida', 'Noida`', '201301', 'Home', 28.5877034, 77.3973942, 'Active', '2020-06-04 12:58:05'),
(61, 48, 'g', 'f', 'b', 'gf', 'a', '201001', 'Home', 37.032551, -95.6242631, 'Active', '2020-06-04 13:29:03'),
(62, 48, 'g', 'f', 'b', 'gf', 'a', '201001', 'Home', 37.032551, -95.6242631, 'Active', '2020-06-04 13:29:09'),
(64, 50, 'Sakshi', 'J-60, 5th St, Block J, Gamma II, Greater Noida, Uttar Pradesh 201308, India', 'J-60, Gamma-2, Greater Noida', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.4911592, 77.5112699, 'Active', '2020-06-05 09:13:45'),
(71, 2, 'vipul', '206, Raj Nagar, K Block, Sector 18, Raj Nagar, Ghaziabad, Uttar Pradesh 201002, India', 'test', 'Uttar Pradesh', 'Ghaziabad', '', 'Home', 28.6691565, 77.45375779999999, 'Active', '2020-06-05 10:54:43'),
(73, 1, 'Mukku', 'Dadri Road', 'Sector 82', 'Uttar Pradesh', 'Noida', '', 'Home', 28.5354, 77.391, 'Active', '2020-06-05 11:42:55'),
(74, 1, 'Mukku', 'Dadri Road', 'Sector 82', 'Uttar Pradesh', 'Noida', '', 'Home', 28.5354, 77.391, 'Active', '2020-06-05 11:45:30'),
(75, 1, 'sagar', 'gali no 2,noida setor 44,uttar,noida,', 'Gali', '', '', '', 'Other', 0, 0, 'Active', '2020-06-05 12:00:09'),
(76, 51, 'Rishabh', '5th Street', 'Gamma 2', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.49120291031989, 77.51109739976663, 'Active', '2020-06-08 06:16:23'),
(77, 51, 'Rishabh', '5th Street', 'Gamma 2', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.49120291031989, 77.51109739976663, 'Active', '2020-06-08 06:16:23'),
(78, 44, 'Samuel', '5th Street', 'Gamma 2', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.49120143772941, 77.51109693307832, 'Active', '2020-06-08 09:15:30'),
(80, 51, 'vipul', '206, Raj Nagar, K Block, Sector 18, Raj Nagar, Ghaziabad, Uttar Pradesh 201002, India', 'Test Address', 'Uttar Pradesh', 'Ghaziabad', '', 'Home', 28.6691565, 77.45375779999999, 'Active', '2020-06-08 09:35:24'),
(81, 44, 'ssn', 'J-54, 6th St, Block J, Gamma II, Greater Noida, Uttar Pradesh 201308, India', 'j-69', '', '', '', 'Other', 0, 0, 'Active', '2020-06-08 12:50:58'),
(82, 1, 'sagar', 'gali no 2,noida setor 44,uttar,noida,', 'purani bazar', '', ',', '', 'Other', 0, 0, 'Active', '2020-06-08 13:10:48'),
(83, 1, 'Mukul', 'gali no 2,noida setor 44,uttar,noida,', 'H-1006', '', '', '', 'Home', 0, 0, 'Active', '2020-06-08 14:24:11'),
(84, 1, 'Mukul', 'gali no 2,noida setor 44,uttar,noida,', 'H-1006', '', '', '', 'Home', 0, 0, 'Active', '2020-06-08 14:29:59'),
(85, 1, 'Mukul', 'Noida-Greater Noida Expressway', 'H-1006', 'Amit Nagar, Sadarpur, Greater Noida, Uttar Pradesh', '', '', 'Work', -180, -180, 'Active', '2020-06-08 15:18:03'),
(86, 1, 'Mukul', 'Noida-Greater Noida Expressway', 'H-1006', 'Amit Nagar, Sadarpur, Greater Noida, Uttar Pradesh', '', '', 'Work', -180, -180, 'Active', '2020-06-08 15:38:24'),
(87, 1, 'Mukul', 'gali no 2,noida setor 44,uttar,noida,', 'H-1006', '', '', '', 'Home', 0, 0, 'Active', '2020-06-09 06:00:32'),
(88, 1, 'Mukul', 'gali no 2,noida setor 44,uttar,noida,', 'H-1006', '', '', '', 'Home', 0, 0, 'Active', '2020-06-09 06:05:37'),
(89, 55, 'Deepanshu Tyagi', 'mm', 'mm', 'mmm', 'meerut', '25004', 'Home', 37.5339386, -95.8266483, 'Active', '2020-06-10 06:39:02'),
(90, 55, 'Deepanshu Tyagi', 'mm', 'mm', 'mmm', 'meerut', '25004', 'Home', 37.5339386, -95.8266483, 'Active', '2020-06-10 06:39:13'),
(91, 1, 'Sagar', 'Sahatwar - Beur - Kali Mandir Marg', 'purani BAzar', 'Bijulipur Digar, Uttar Pradesh, India', 'Sahatwar - Beur - Kali Mandir ', '', 'Other', 25.8664118, 84.2850957, 'Active', '2020-06-12 09:38:38'),
(92, 1, 'sagar', 'Ballia Road', 'station', 'Bhur Marhauli, Uttar Pradesh, India', 'Ballia Road', '', 'Work', 28.4859897, 79.34682740000001, 'Active', '2020-06-12 09:51:07'),
(93, 1, 'Sagar', 'Ballia - Sikanderpur Road', 'Station', 'Officers Awaas, Ballia, Uttar Pradesh, India', 'Ballia - Sikanderpur Road', '', 'Work', 25.7663554, 84.1446697, 'Active', '2020-06-12 10:06:05'),
(94, 1, 'sagar', 'Ballia - Bairia Road', 'station', 'Bhrigu Nagar, Bahadurpur, Ballia, Uttar Pradesh, I', 'Ballia - Bairia Road', '', 'Work', 25.7583508, 84.1632061, 'Active', '2020-06-12 10:20:10'),
(95, 1, 'sagar', 'Ballia - Bairia Road', 'station', 'Bhrigu Nagar, Bahadurpur, Ballia, Uttar Pradesh, I', 'Ballia - Bairia Road', '', 'Work', 25.7583508, 84.1632061, 'Active', '2020-06-12 10:26:50'),
(96, 51, 'Sakshi', 'J-54, 6th St, Block J, Gamma II, Greater Noida, Uttar Pradesh 201308, India', 'J-54', 'Uttar Pradesh', 'Greater Noida', '', 'Work', 28.4910039, 77.5110762, 'Active', '2020-06-12 11:40:30'),
(97, 58, 'varun negi', 'Karnprayag - Haridwar Rd, Geeta Nagar, Rishikesh, Uttarakhand 249203, India', 'building no 111 Gali no 2 Uttarakhand', 'Uttarakhand', 'Rishikesh', '', 'Home', 30.0869281, 78.2676116, 'Active', '2020-06-13 05:30:37'),
(98, 58, 'varun negi', 'Karnprayag - Haridwar Rd, Geeta Nagar, Rishikesh, Uttarakhand 249203, India', 'hggfgg', '', '', '', 'Home', 0, 0, 'Active', '2020-06-13 05:49:47'),
(99, 58, 'varun negi', 'Karnprayag - Haridwar Rd, Geeta Nagar, Rishikesh, Uttarakhand 249203, India', 'Rishikesh  Uttarakhand', '', '', '', 'Other', 0, 0, 'Active', '2020-06-13 06:00:01'),
(100, 58, 'varun negi', 'Karnprayag - Haridwar Rd, Geeta Nagar, Rishikesh, Uttarakhand 249203, India', '22/building no3/street2', '', '', '', 'Home', 0, 0, 'Active', '2020-06-15 07:44:05'),
(101, 58, 'varun negi', 'Karnprayag - Haridwar Rd, Geeta Nagar, Rishikesh, Uttarakhand 249203, India', 'Rishikesh', '', '', '', 'Other', 0, 0, 'Active', '2020-06-15 07:49:24'),
(102, 58, 'varun negi', 'Karnprayag - Haridwar Rd, Geeta Nagar, Rishikesh, Uttarakhand 249203, India', 'ffgggh', '', '', '', 'Other', 0, 0, 'Active', '2020-06-15 09:27:13'),
(103, 5, 'Ankit Kumar', 'JAIPURIA SUNRISE GREENS, Ahinsa Khand 1, Indirapuram, Ghaziabad, Uttar Pradesh, India', 'U', 'Te', 'T', '1', 'Other', 28.6405559, 77.3768253, 'Active', '2020-06-15 11:05:11'),
(104, 5, 'Ateez', 'Shipra Neo, Doctor Sushila Naiyar Marg, Shiv Vihar, Shipra Suncity, Indirapuram, Ghaziabad, Uttar Pradesh, India', '222', 'Indirapuram', 'Ghaziabad', '123259', 'Other', 28.6389334, 77.375046, 'Active', '2020-06-16 05:05:58'),
(105, 67, 'Shreya', 'J-60, 5th St, Block J, Gamma II, Greater Noida, Uttar Pradesh 201308, India', 'J block', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.4911801, 77.5112298, 'Active', '2020-06-16 08:02:17'),
(106, 51, 'Rishabh', '5th Street', 'Gamma 2', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.49120291031989, 77.51109739976663, 'Active', '2020-06-16 08:56:04'),
(107, 51, 'Rishabh', '5th Street', 'Gamma 2', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.49120291031989, 77.51109739976663, 'Active', '2020-06-16 09:17:38'),
(108, 51, 'Rishabh', '5th Street', 'Gamma 2', 'Uttar Pradesh', 'Greater Noida', '', 'Home', 28.49120291031989, 77.51109739976663, 'Active', '2020-06-16 09:25:20'),
(109, 1, 'Mukku', 'Dadri Road', 'Sector 82', 'Uttar Pradesh', 'Noida', '', 'Home', 28.5354, 77.391, 'Active', '2020-06-16 09:40:54'),
(110, 1, 'varun', 'gali no 2', 'noida setor 44', 'uttar', 'noida', '', 'Work', 28.6691565, 77.45375779999999, 'Active', '2020-06-16 17:35:55'),
(111, 12, 'Laxmi Bheda', '68A Rungta House, Rungta Lane, Nepeansea Road,', 'Ground Floor, Flat No 2,', 'Nepeansea Road', 'Mumbai', '400006', 'Home', 18.9545549, 72.7968398, 'Active', '2020-06-23 13:15:31'),
(112, 12, 'lab', 'Rungta House, Rungta Ln, Navshanti Nagar, Malabar Hill, Mumbai, Maharashtra 400006, India', 'Nepeansea road', '', '', '', 'Home', 0, 0, 'Active', '2020-06-24 13:48:18'),
(113, 74, 'Bbb', 'HH', 'Hpouy', 'Ba', 'Numb', '400050', 'Home', 0, 0, 'Active', '2020-06-24 17:48:33'),
(114, 74, 'Bbb', 'HH', 'Hpouy', 'Ba', 'Numb', '400050', 'Home', 0, 0, 'Active', '2020-06-24 17:48:35'),
(116, 0, 'dfgjhjnkml,', 'Sector 62, Noida, 201309, India', 'edrftgyh', '', 'Noida', '', 'Work', 28.628, 77.3649, 'Active', '2020-07-01 13:38:20'),
(117, 0, 'dcsvdf ', 'Sector 62, Noida, 201309, India', 'asdfvedcax', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 07:37:19'),
(118, 0, 'fgvhbjnk', 'Sector 62, Noida, 201309, India', 'fight', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:05:07'),
(119, 0, 'ghbjnm,', 'Sector 62, Noida, 201309, India', 'fgvhbj', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:07:55'),
(120, 0, 'scvdcx', 'Sector 62, Noida, 201309, India', 'six', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:17:36'),
(121, 0, 'fvdbgfnhfg', 'Sector 62, Noida, 201309, India', 'DVD’s got', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:18:58'),
(122, 0, 'retrybefvdc', 'Sector 62, Noida, 201309, India', 'rgthrbg', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:32:06'),
(123, 0, '4gtrfwe', 'Sector 62, Noida, 201309, India', 'there’s', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:33:09'),
(124, 0, 'efrgdfhg', 'Sector 62, Noida, 201309, India', 'forget', '', 'Noida', '', '', 28.628, 77.3649, 'Active', '2020-07-02 08:34:21'),
(125, 0, 'hdhdhdhhdhd', 'Weir cook international, Indianapolis, IN 46204, USA', 'hdhsjsj', '', '', '', '', 0, 0, 'Active', '2020-07-02 08:59:15'),
(126, 0, 'hdhdhdhhdhd', 'Weir cook international, Indianapolis, IN 46204, USA', 'hdhsjsj', '', '', '', '', 0, 0, 'Active', '2020-07-02 09:01:46'),
(127, 0, 'hdhdhdhhdhd', 'Weir cook international, Indianapolis, IN 46204, USA', 'hdhsjsj', '', '', '', '', 0, 0, 'Active', '2020-07-02 09:02:21'),
(128, 0, 'hdhdhdhhdhd', 'Weir cook international, Indianapolis, IN 46204, USA', 'hdhsjsj', '', '', '', '', 0, 0, 'Active', '2020-07-02 09:03:37'),
(129, 0, 'hdhdhdhhdhd', 'Weir cook international, Indianapolis, IN 46204, USA', 'hdhsjsj', '', '', '', '', 0, 0, 'Active', '2020-07-02 09:05:02'),
(130, 0, 'hdhdhdhhdhd', 'Weir cook international, Indianapolis, IN 46204, USA', 'hdhsjsj', '', '', '', '', 0, 0, 'Active', '2020-07-02 09:08:54'),
(182, 75, 'wderetrtjyhtgc', 'Sector 62, Noida, 201309, India', 'ewtryrtj', '', 'Noida', '', 'Work', 28.628, 77.3649, 'Inactive', '2020-07-03 04:42:57'),
(183, 75, 'rachit dharma', 'Sector 62, Noida, 201309, India', 'ewregrnthgbd', '', 'Noida', '', 'Work', 28.628, 77.3649, 'Inactive', '2020-07-03 05:50:50'),
(184, 75, 'robot sharma', 'Yusufpur, Greater Noida, 201009, India', 'erwteyrt', '', 'Greater Noida', '', 'Other', 28.61875073785405, 77.41478595882654, 'Inactive', '2020-07-03 05:55:42'),
(185, 75, 'wderetrtjyhtgc', 'Sector 62, Noida, 201309, India', 'ewtryrtj', '', 'Noida', '', 'Home', 28.628, 77.3649, 'Inactive', '2020-07-06 11:16:14'),
(186, 75, 'fghbjnk', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'sdfghj', '', 'Noida', '', 'Work', 28.564732262155196, 77.36091412603855, 'Inactive', '2020-07-06 12:33:46'),
(187, 75, 'fgvhbjnkml', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'ghjnkml', '', 'Noida', '', 'Work', 28.564732262155196, 77.36091412603855, 'Inactive', '2020-07-06 12:33:56'),
(188, 75, 'ghjnkml,/', 'Sector 10, Greater Noida, 201306, India', 'Guillermo', '', 'Greater Noida', '', 'Other', 28.575502079873832, 77.47842639684677, 'Inactive', '2020-07-06 12:34:10'),
(189, 75, 'ertyuhjkl;', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'ertyuio', '', 'Noida', '', 'Work', 28.564732262155196, 77.36091412603855, 'Inactive', '2020-07-06 12:38:42'),
(190, 75, 'drftgjhjkl', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'dfhgjhjk', '', 'Noida', '', 'Home', 28.564732262155196, 77.36091412603855, 'Inactive', '2020-07-06 12:38:52'),
(191, 75, 'rachit sharma', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'edrftgyh', '', 'Noida', '', 'Other', 28.564732262155196, 77.36091412603855, 'Inactive', '2020-07-06 12:47:28'),
(192, 75, 'rachit sharma', 'Bulandshahr, Bulandshahr, 203408, India', 'xdcfvgbhjnm,', '', 'Bulandshahr', '', 'Other', 28.564221952265708, 77.80747678130865, 'Inactive', '2020-07-06 12:48:24'),
(193, 75, 'fcgvjhbjnkml', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'sdfyghjhgytfrdftghb', '', 'Noida', '', 'Work', 28.564732262155196, 77.36091412603855, 'Inactive', '2020-07-06 12:49:47'),
(194, 0, 'sadasdha', 'Ghaziabad', 'ashdvas', 'Block B, Nandgram, Ghukna, Ghaziabad, Uttar Prades', 'Ghaziabad', '', 'Home', 37.785834, 37.785834, 'Active', '2020-07-08 02:59:25'),
(195, 75, 'rdthfghfgf', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'fgfdf', '', 'Noida', '', '', 28.5647322, 77.3609141, 'Inactive', '2020-07-10 04:23:37'),
(196, 55, 'Kanika tyagi', 'fkjsn gijGNOegn', 'ndogn OEgn luejgn ', 'kds gORgnognOEg', 'Ghaziabad', '201002', 'Home', 0, 0, 'Active', '2020-07-11 10:14:15'),
(197, 55, 'Kanika tyagi', 'fkjsn gijGNOegn', 'ndogn OEgn luejgn ', 'kds gORgnognOEg', 'Ghaziabad', '201002', 'Home', 0, 0, 'Active', '2020-07-11 10:15:29'),
(198, 55, 'Kanika tyagi', 'fkjsn gijGNOegn', 'ndogn OEgn luejgn ', 'kds gORgnognOEg', 'Ghaziabad', '201002', 'Home', 0, 0, 'Active', '2020-07-11 10:15:39'),
(199, 55, 'Kanika tyagi', 'fkjsn gijGNOegn', 'ndogn OEgn luejgn ', 'kds gORgnognOEg', 'Ghaziabad', '201002', 'Home', 0, 0, 'Active', '2020-07-11 10:15:39'),
(200, 75, 'fcgvjhbjnkml,', 'Goat Creek Trail, Canmore, AB T0L, Canada', ' cgvhjkl ghjnkml ghjnkml gvhbjnk gvhbj ', '', 'Goat Creek Trail', '', '', 51.062099, -115.425657, 'Inactive', '2020-07-14 08:22:29'),
(201, 75, 'fcgvjhbjnkml,', 'Goat Creek Trail, Canmore, AB T0L, Canada', ' cgvhjkl ghjnkml ghjnkml gvhbjnk gvhbj ', '', 'Goat Creek Trail', '', 'Work', 51.062099, -115.425657, 'Inactive', '2020-07-14 08:32:43'),
(202, 75, 'fcgvjhbjnkml,', 'Goat Creek Trail, Canmore, AB T0L, Canada', ' cgvhjkl ghjnkml ghjnkml gvhbjnk gvhbj ', '', 'Goat Creek Trail', '', 'Work', 51.062099, -115.425657, 'Inactive', '2020-07-14 09:05:09'),
(203, 75, 'fcgvjhbjnkml,', 'Goat Creek Trail, Canmore, AB T0L, Canada', ' cgvhjkl ghjnkml ghjnkml gvhbjnk gvhbj ', '', 'Goat Creek Trail', '', 'Other', 51.062099, -115.425657, 'Inactive', '2020-07-14 09:05:18'),
(204, 75, 'fcgvjhbjnkml,', 'Goat Creek Trail, Canmore, AB T0L, Canada', ' cgvhjkl ghjnkml ghjnkml gvhbjnk gvhbj ', '', 'Goat Creek Trail', '', 'Home', 51.062099, -115.425657, 'Inactive', '2020-07-14 09:07:16'),
(205, 44, 'ssn', 'J-54, 6th St, Block J, Gamma II, Greater Noida, Uttar Pradesh 201308, India', 'j-89', '', '', '', 'Other', 0, 0, 'Active', '2020-07-17 11:20:30'),
(206, 75, 'fcgvjhbjnkml,', 'Goat Creek Trail, Canmore, AB T0L, Canada', ' cgvhjkl ghjnkml ghjnkml gvhbjnk gvhbj ', '', 'Goat Creek Trail', '', 'Other', 51.062099, -115.425657, 'Inactive', '2020-07-17 13:47:19'),
(207, 75, 'dsfgdbd', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'dude', '', 'Noida', '', '', 28.5647322, 77.3609141, 'Active', '2020-07-17 17:45:19'),
(208, 75, 'dsfgdbd', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'dude', '', 'Noida', '', 'Work', 28.5647322, 77.3609141, 'Active', '2020-07-17 17:46:56'),
(209, 75, 'rachit', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'dude', '', 'Noida', '', 'Work', 28.5647322, 77.3609141, 'Active', '2020-07-17 18:05:06'),
(210, 75, 'dsfgdbd', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'dude', '', 'Noida', '', 'Work', 28.5647322, 77.3609141, 'Active', '2020-07-18 10:08:09'),
(211, 75, 'dsfgdbd', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'dude', '', 'Noida', '', 'Work', 28.5647322, 77.3609141, 'Active', '2020-07-19 09:07:44'),
(212, 83, 'retyrtuy', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'rt4y5', '', 'Noida', '', '', 28.5647322, 77.3609141, 'Active', '2020-07-19 11:26:11'),
(213, 83, 'retyrtuy', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, India', 'rt4y5', '', 'Noida', '', 'Work', 28.5647322, 77.3609141, 'Active', '2020-07-20 08:04:40'),
(214, 0, 'xcvbf', '107, Block H Aghapur Road, Block H, Sector 41, Noida, 201303, Uttar Pradesh, India', 'dfdbgj', '', 'Noida', '', '', 28.5647322, 77.3609141, 'Active', '2020-07-21 05:15:37'),
(215, 12, 'lab', 'Rungta House, Rungta Ln, Navshanti Nagar, Malabar Hill, Mumbai, Maharashtra 400006, India', '2', '', '', '', 'Work', 0, 0, 'Active', '2020-07-25 13:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `od_admin`
--

CREATE TABLE `od_admin` (
  `id` varchar(110) NOT NULL,
  `username` varchar(100) NOT NULL,
  `profile_title` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_url` varchar(255) DEFAULT NULL,
  `is_forgot` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_admin`
--

INSERT INTO `od_admin` (`id`, `username`, `profile_title`, `email`, `password`, `profile_url`, `is_forgot`) VALUES
('TyM1oIvSbn', 'Hammer and Spanner', 'Admin', 'admin@hamspan.com', '7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358', '599483.jpg', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `od_banner_images`
--

CREATE TABLE `od_banner_images` (
  `id` int(11) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_banner_images`
--

INSERT INTO `od_banner_images` (`id`, `image_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cebbcd3d1000ead8706127b242bf2252.png', 'Active', '2020-05-01 10:35:24', '2020-06-12 08:17:35'),
(2, 'f765dd187b74677b61bdadb4bdc30259.png', 'Active', '2020-05-01 10:35:54', '2020-08-07 17:57:46'),
(3, '682de3f1d82c07887da560bb6b5c3d2a.png', 'Active', '2020-05-01 10:36:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_cart`
--

CREATE TABLE `od_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `od_category`
--

CREATE TABLE `od_category` (
  `id` int(11) NOT NULL,
  `category_url` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_banner_name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `icon_url` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_category`
--

INSERT INTO `od_category` (`id`, `category_url`, `category_name`, `category_banner_name`, `status`, `icon_url`, `created_at`, `updated_at`) VALUES
(1, 'electrician', 'Electrician', 'Trained Electricians at your Doorstep', 'Active', '4acef6e9ebc480214da7616a8da05414.png', '2020-05-01 11:44:37', '2020-08-06 16:50:24'),
(2, 'refrigerator-repair', 'Refrigerator Repair', 'Get regrigerator technician in your premises', 'Active', 'f809dc4e00d132df2147ae18987e4e9b.png', '2020-05-01 11:47:25', '2020-06-10 12:49:21'),
(3, 'plumber', 'Plumber', 'Get plumber in your premises', 'Active', '9bc1cff1dcd29d170b8aa5865e7f45b1.png', '2020-05-01 11:52:41', '2020-06-10 12:50:11'),
(4, 'ro-service-repair', 'RO Service & Repair', 'Get RO Service & Repair', 'Active', '6968fb9e9e27bea1241310641f60cc46.png', '2020-05-01 11:53:49', '2020-06-10 12:53:14'),
(5, 'carpenters', 'Carpenters', 'Get carpenters in your premises', 'Active', '551ac5d2e332ab5866e63e29f0fc5e50.png', '2020-05-01 11:54:37', '2020-06-10 12:52:53'),
(6, 'Sanitization', 'Sanitization', 'Sanitization', 'Active', '231ddf38fcd2635fd53c24df0d973fe6.png', '2020-05-01 11:55:23', '2020-08-06 17:01:23'),
(7, 'ac-service-repair', 'AC Service & Repair', 'Get Ac and services in your premises', 'Active', '185fb6780d0839ac727a32fba8bd0d51.png', '2020-05-01 11:56:10', '2020-06-10 12:52:19'),
(8, 'home-cleaning', 'Home Cleaning', 'Get home cleaning specialists', 'Active', '22831cc60c1e315f89e6c400e962a113.png', '2020-05-01 11:56:52', '2020-06-10 12:51:45'),
(9, 'routined-maintenance', 'Routined Maintenance', 'Get routined maintainence', 'Active', '21ec681a8e31479f8064aed5cf1585c0.png', '2020-05-01 11:57:41', '2020-06-10 12:51:13'),
(10, 'pest-control', 'Pest Control', 'Get pest control in your premises', 'Active', '9e0ee9d497ef9d6d3c8588a03215a225.png', '2020-05-01 11:58:19', '2020-06-10 12:50:40'),
(11, 'home-renovation', 'Home Renovation', '', 'Active', 'd3373565a2e861c5209d0fee410a3815.png', '2020-05-01 11:59:33', '2020-05-26 06:46:28'),
(13, 'washing-machine', 'Washing Machine Service & Repair', 'Get washing Machine services', 'Active', 'd9269807ee4a00562f8f4c0f71efc5c1.png', '2020-06-08 07:50:46', '2020-06-10 12:55:18'),
(16, 'microwave-repair', 'Microwave Repair', 'Microwave Repair', 'Active', '1113d8c529caa3b02de8fdd702fd7c47.jpg', '2020-06-13 04:46:34', '2020-07-25 13:24:28'),
(17, 'chimney-repairr', 'Chimney Repair', 'Chimney repair', 'Active', '849c655110cbd196529a8b559f02a19e.jpg', '2020-06-15 10:09:05', '2020-06-30 05:45:58'),
(18, 'laptop-repair', 'Laptop Repair', 'All Laptop Repairing Services', 'Active', '6338aa26f13290974762f515bb4246e7.jpg', '2020-06-30 05:56:34', '2020-08-06 16:52:09'),
(20, 'Appliance-Repair', 'Appliance Repair', 'All Your Appliance Repair Needs', 'Active', '111eab0512398aa729a6413010c50a12.png', '2020-08-07 11:56:14', '2020-08-08 09:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `od_category_banner`
--

CREATE TABLE `od_category_banner` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_category_banner`
--

INSERT INTO `od_category_banner` (`id`, `category_id`, `image_url`, `created`, `updated_at`) VALUES
(2, 2, '5bca146662dceceeb2c3b58a93cff4f9.png', '2020-05-01 11:47:25', NULL),
(3, 3, '4c9e6b7af38cfb3ca2e8563eabe4e07b.png', '2020-05-01 11:52:41', NULL),
(4, 4, '82864be5aa609a1793910a41cac41b7e.png', '2020-05-01 11:53:49', NULL),
(5, 5, 'db0e6c14bd7f3d5801506819a32e0ee7.png', '2020-05-01 11:54:37', NULL),
(6, 6, 'c56c6c173b3d0b5bd2f1afad6d423699.png', '2020-05-01 11:55:23', NULL),
(7, 7, 'a7b0335a67267e6f9230cf216e7a10fd.png', '2020-05-01 11:56:10', NULL),
(8, 8, '06473563b9ea326fff09940ba6f185a5.png', '2020-05-01 11:56:52', NULL),
(9, 9, '1e3d1853271590d04b13910bac24ca6f.png', '2020-05-01 11:57:41', NULL),
(10, 10, '4898a21d1b59776248b04ae29a30854e.png', '2020-05-01 11:58:19', NULL),
(11, 11, 'bcf6eb6ed6fef038b25c2d0f3d0f03ef.png', '2020-05-01 11:59:33', NULL),
(13, 12, 'cd1f62907dc904186cb45c6871084c33.jpg', '2020-06-05 17:08:36', NULL),
(14, 12, 'fce070ecfe7f8bc0e8688e0ba08a161a.jpg', '2020-06-05 17:10:56', NULL),
(15, 13, '3465bf632c075d1078251966a3dad40a.jpg', '2020-06-08 07:50:46', NULL),
(16, 13, '4685bdd7a7c6a7d973c3627fb45b43b7.jpg', '2020-06-08 07:50:46', NULL),
(17, 13, 'abcba440cd9451a587dd0bf5284f1238.png', '2020-06-08 07:50:46', NULL),
(18, 14, '31264.png', '2020-06-08 11:10:30', NULL),
(19, 14, '12931.png', '2020-06-08 11:10:30', NULL),
(20, 15, '59013.png', '2020-06-09 07:01:03', NULL),
(21, 16, '93215.jpg', '2020-06-13 04:46:34', NULL),
(22, 16, '99779.jpg', '2020-06-13 04:48:25', NULL),
(23, 16, '18202.png', '2020-06-13 04:48:25', NULL),
(24, 17, '14107.jpg', '2020-06-15 10:09:05', NULL),
(25, 18, '11260.jpg', '2020-06-30 05:56:34', NULL),
(26, 19, '73465.png', '2020-08-05 06:23:22', NULL),
(27, 19, '98590.png', '2020-08-05 06:23:22', NULL),
(28, 6, '51069.jpg', '2020-08-06 17:01:23', NULL),
(29, 20, '21375.jpg', '2020-08-07 11:56:14', NULL),
(30, 1, '25931.jpg', '2020-08-07 18:22:00', NULL),
(31, 1, '64336.jpg', '2020-08-07 18:23:00', NULL),
(32, 20, '26145.jpg', '2020-08-08 09:58:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_contactus`
--

CREATE TABLE `od_contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `text` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `od_contactus`
--

INSERT INTO `od_contactus` (`id`, `name`, `email`, `phone`, `text`, `created_at`) VALUES
(1, 'Rohan Singh', 'rrohan26@gmail.com', '9899246225', 'hello', '0000-00-00'),
(2, 'Ankit Kumar', 'ankit.designoweb@gmail.com', '1234567890', 'test ... test', '0000-00-00'),
(3, 'Rohit Singh', 'rohit.designoweb@gmail.com', '7389576434', 'Hello !', '0000-00-00'),
(4, 'Rohit Singh', 'rohit.designoweb@gmail.com', '9971654653', 'Hello !!', '0000-00-00'),
(5, 'Ankit Kumar', 'ankit.designoweb@gmail.com', '1234567890', 'test', '0000-00-00'),
(6, 'Ankit Kumar', 'ankit.designoweb@gmail.com', '1234567890', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '0000-00-00'),
(7, 'Ankit Kumar', 'ankit.designoweb@gmail.com', '1234567893', 'Testing', '0000-00-00'),
(8, 'Laxmi Bheda', 'laxmi.bheda@gmail.com', '9833180638', 'Hi there', '0000-00-00'),
(9, 'Admin', 'admin@ondemand.com', '9899246225', 'shdfkjsdf', '0000-00-00'),
(10, 'Ankit Kumar', 'ankit.designoweb@gmail.com', '9971599865', 'testing .........', '0000-00-00'),
(11, 'Laxmi Bheda', 'laxmi.bheda@gmail.com', '9833180638', 'HGUUU', '0000-00-00'),
(12, 'Jonas Kahnwald', 'ankit.designoweb@gmail.com', '0329876544', 'Testing for thank you message.', '0000-00-00'),
(13, 'Jonas Kahnwald', 'ankit.designoweb@gmail.com', '0329876544', 'test', '0000-00-00'),
(14, 'T', 't@gmail.com', '123321456654', 'Test', '0000-00-00'),
(15, 'tt', 'tt@gmail.com', '123321654765', 'test', '0000-00-00'),
(16, 'Deepanshu Tyagi', 'deepanshutyagi8126@gmail.com', '8126362520', 'jkkkjkjk', '0000-00-00'),
(17, 'Deepanshu Tyagi', 'deepanshutyagi8126@gmail.com', '7651827761', 'khkhk', '0000-00-00'),
(18, 'Deepanshu Tyagi', 'deepanshutyagi8126@gmail.com', '8126362520', 'hhh', '0000-00-00'),
(19, 'Deepanshu Tyagi', 'deepanshutyagi8126@gmail.com', '7651827761', 'ffff', '0000-00-00'),
(20, 'Deepanshu Tyagi', 'deepanshutyagi8126@gmail.com', '7651827761', 'jjj', '0000-00-00'),
(21, 'Laxmi Bheda', 'laxmi.bheda@gmail.com', '9833180638', 'Hi Hello How are', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `od_faqs`
--

CREATE TABLE `od_faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_faqs`
--

INSERT INTO `od_faqs` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><span xss=removed>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span><br></p>', 'Active', '2020-05-01 09:36:54', '2020-06-12 07:53:21'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.?', '<p><span xss=removed>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span><br></p>', 'Active', '2020-05-01 09:37:44', NULL),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry...', '<p><span xss=removed>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span><br></p>', 'Active', '2020-05-01 09:39:23', NULL),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry!!!.', '<p><span xss=removed>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</span><br></p>', 'Active', '2020-05-01 09:41:10', NULL),
(5, 'Test', '<p>Testing is in progress</p>', 'Active', '2020-06-13 05:48:47', '2020-07-20 11:45:50');

-- --------------------------------------------------------

--
-- Table structure for table `od_firebase_token`
--

CREATE TABLE `od_firebase_token` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `token_id` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_firebase_token`
--

INSERT INTO `od_firebase_token` (`id`, `user_id`, `token_id`, `status`, `created_at`, `update_at`) VALUES
(1, 1, '123658', 'Inactive', '2020-05-05 04:59:45', '2020-05-07 13:37:29'),
(2, 1, '12455', 'Inactive', '2020-05-05 05:01:30', '2020-05-07 13:37:29'),
(3, 1, '345', 'Inactive', '2020-05-08 05:17:26', '2020-06-18 06:32:09'),
(7, 2, 'c7rRwKqoTCuuYJBJLfREkI:APA91bEcf_y1l9C-uQ8AgHSamNTO3z7kA7x_XGOM7-PNPDdnntHG_adsGg0_4oS6-6lbkFoXC7ulI', 'Inactive', '2020-05-08 06:04:51', '2020-05-08 06:28:54'),
(8, 2, 'c7rRwKqoTCuuYJBJLfREkI:APA91bEcf_y1l9C-uQ8AgHSamNTO3z7kA7x_XGOM7-PNPDdnntHG_adsGg0_4oS6-6lbkFoXC7ulI8knJ4tzZsKvCzizoiyVvd03OnNHhM1Lj5bDabu-_fTQCWHnElXP-kNpSoqTKRRx', 'Active', '2020-05-08 06:10:10', '2020-05-08 06:29:07'),
(9, 2, 'f81LdVS0RRSz_DLtR8qN37:APA91bGR0kLgbNgus3LHhg8-pjgSO-M4XeSc49Gc1mR-2a1kq1f4CykozsJU1QUIpZM8e9IXTKK5SrFetusXdKyiWK6_k47zxRzwivZD2OLa8WG5rg-GfNYIfNrYKuWcAKRLB1oWsp_v', 'Active', '2020-05-08 09:22:20', NULL),
(10, 4, '3456', 'Active', '2020-05-08 10:22:21', '2020-05-08 10:23:28'),
(11, 2, 'd9wbYXorR1aA6XO7jx0WPP:APA91bEsHYiFBQtukVRC-hKSDLBVkKs9b64kJ0C60i2GAb6D4aKPaicN4m5Iqi92Jo0Bvwr-oPOfKEloMrYYGAa4BJJAyO20iLNi706uqIkDskYZshTK4dgHMDS2AGzHFRduLoJOOP18', 'Active', '2020-05-11 08:26:12', NULL),
(12, 1, 'emAp-KKVTq2eJDBU7VHZe4:APA91bFqF7-RE52qCWuzshgyqY0NsA0cWcOMnihSwewf9Br949K9Qs2zyuB4d8Ejdi5-tlyI6z5Yoqr5Y53ud4QiJ0WIhX5w6vb0_JJyGIHTx9rERewyvr0SARVMvch6lOrSd4_jXaQv', 'Inactive', '2020-05-15 06:50:41', '2020-06-01 12:40:56'),
(13, 2, 'emAp-KKVTq2eJDBU7VHZe4:APA91bFqF7-RE52qCWuzshgyqY0NsA0cWcOMnihSwewf9Br949K9Qs2zyuB4d8Ejdi5-tlyI6z5Yoqr5Y53ud4QiJ0WIhX5w6vb0_JJyGIHTx9rERewyvr0SARVMvch6lOrSd4_jXaQv', 'Active', '2020-05-15 07:10:11', NULL),
(14, 21, 'dj208KoBSMajc3r4wNpTyr:APA91bHrkC3rvAMZjBbr9nTcZPRtME49VGIKff5d3XpAbc-PLEX1bVHoc-wpPfiEmdvD9oIZ1CJCPFCgMJ1F_jeVQwCRKWZkh_9VSCgqOqozGJ61tiHnZwHCCSZN38-lvZePEwacKpkj', 'Active', '2020-05-19 06:10:09', NULL),
(15, 24, 'eS0mRVRUTPifn6NknOVHnM:APA91bHk6cYeFD0tI9ObHrdks5vfme7DJQlF-l63uylyAFz3CjISP-CmeP2Glq9AKAxvYinS5vsSK6yebVdS6VFSUxNPV-l_myBKZGqP_EWWDSwEflHiipsnlE363SPf-LIzJ8ZynvQN', 'Active', '2020-05-25 06:02:10', NULL),
(16, 2, 'e645-UJrTt-7ID3gsI3Zbf:APA91bHUdEqNoxv5yzJKzBbXY_tXj1UXmOeug5R2vYEqBeS9bps6KnK777ZKLc_Rv9FLyngIOgpSE57ZuSwOluKi6sp_Ue2Jf_RujRxaomlzpT_AQ6_TI_57Ca_JMvDcC6NENPuN3LM8', 'Active', '2020-05-26 05:36:23', NULL),
(17, 2, 'cC9XFDHIRlaiaEP0xC8sW2:APA91bHy7Dhk_SPXcebKG99s_xMenakXhK_xOvN8BMYc0i8YI1UbNaMxNyn3Tm5TxXMmbGktSbnjBorgCUfiHlN92rkk-LW_CcbxQFb-Dxc9uOfAkL-uGKI2jueye0bhgA9bpnxzEOBJ', 'Active', '2020-05-26 10:17:31', NULL),
(18, 2, 'esVlxJtnTpqgdxwfomeAlC:APA91bFBQswazugyf77-9xSFGwqRdT2KSXC-KmademFxX-86YMB49hUGN8f7rQZWp-uSzTe4MJv1EpztBRhzz4iLVIrsSFM91gDpHU3-3QVZalqgfqkAn3zd1z8c7ddGyed9II608_Ka', 'Active', '2020-05-27 06:12:43', NULL),
(19, 21, 'cV0rZIZrRO6ZBnnVsNtFPj:APA91bHUIR7sawobOCFbbH5WchggebXpQL3LxEg15DIlunEKojoBCneZBGIjo1S7wZ5VW0sy2neDQ79Vig3VtIRnBA1kb3YBu40L07ZRj4zr2HHs54jr9QqxwAJP0PPixMXItzHq9BHQ', 'Active', '2020-05-27 10:29:56', NULL),
(20, 17, 'esVlxJtnTpqgdxwfomeAlC:APA91bFBQswazugyf77-9xSFGwqRdT2KSXC-KmademFxX-86YMB49hUGN8f7rQZWp-uSzTe4MJv1EpztBRhzz4iLVIrsSFM91gDpHU3-3QVZalqgfqkAn3zd1z8c7ddGyed9II608_Ka', 'Active', '2020-05-27 10:41:17', NULL),
(21, 17, 'dyNFGaYrRF-9qvdMfOMskv:APA91bE0OUdFSvjjRxfMNcI8xOvmhbNGPHiqoajSIOF1QzhHQfbw4eww-Tk7sxMU2KMy-leJVH5bxfkp5B7gj9ijfUQQlDBSX76lo2Ryokq7swc-AheIj_PNVC78-H-dsA5LBgKTuivV', 'Active', '2020-05-28 06:27:51', NULL),
(22, 2, 'eBoxo_ojQGutH1aEVdgG6C:APA91bFU0t2W5gOdS5Bev8znCqF86haUUsuFUeQ6imEUza1c3FfCDpBPmU2H3Wf_HUSjbya7LTdkBcliTod2Ub7LQi9Z1tRgHcMd_CEFx1b-z6NBdSB_kNBRUJ4VyZE0dVZNDZ9B62Qm', 'Active', '2020-05-28 06:46:30', NULL),
(23, 2, 'ffYRkXddRW-CiftKUXCp0R:APA91bFTS2Ospx3aR3C_f2uwG4aW9FO8-vC3BlDnIhktq7xS3jDmFoz1g1aG2kRJP0CFZWZUC1aSJCG2OKjS9HypEyDFt2D8QhNkO6G2y0_mjSKwR5u0Y4kb40ZzPcbMeAWIRqMvtk-y', 'Active', '2020-06-03 11:58:42', NULL),
(24, 35, 'fANjiz_vTvKvFd0KOvUb_7:APA91bErcXKWQVU9hO72hIIXSeT2joXUPbF8Q0ORSftYt6w7lkaYxndf9g69sXfBs6VL-VP19eKashnUGHlPZ0TC_i9TMw9FTS2_kRJ9LOAsQj_VqUS7EhWNmCeKaEKGPZziJXov6z9B', 'Inactive', '2020-06-04 05:23:52', '2020-06-04 05:54:51'),
(25, 35, 'e787nvOcTl6wMB6HjAJ26u:APA91bF8yLxGMtQAy6ebgzZoxWWwW3CBf_4U5G9gyAzr3FevmP-eHOVGknimC_1I19fVeJ9FPXuq9wWYoeOl0lG6UMzW1pm13F3lhMfGAJA5soZu9hvacCrmEyewSgedpdsVJzQwFmxD', 'Active', '2020-06-04 06:08:41', NULL),
(26, 39, 'cln9rnpkTdWNz3SUSpIosi:APA91bEBAM-kbD4Wzv14J5hgEj8mXBpjq1t2bPBKZq53uLvwVHtN4I2p0SNYSKG9cFIu-hXGvqA7Dv_HJUM9wsT62OxO7BbT3ZhDcfz-2jkNl9yAD1vvN8kW6FtayGrL_UUul4lgBLqU', 'Active', '2020-06-04 06:48:02', NULL),
(27, 40, 'emNJnYP3QYmm38ZRTYRwSx:APA91bEjoO3NaC9fLJ4k11WKglGpDOh7QZoUBAt8boiWggYbWBPZvhQM3O6_UBOur5EUldYPRq77cIenP9jsJoB6dzRkyrPL9khDtrLcznffAKm7Z9Vp40FP_H9wPPCnMShZMq5Fy02W', 'Active', '2020-06-04 07:23:29', NULL),
(28, 2, 'cln9rnpkTdWNz3SUSpIosi:APA91bEBAM-kbD4Wzv14J5hgEj8mXBpjq1t2bPBKZq53uLvwVHtN4I2p0SNYSKG9cFIu-hXGvqA7Dv_HJUM9wsT62OxO7BbT3ZhDcfz-2jkNl9yAD1vvN8kW6FtayGrL_UUul4lgBLqU', 'Active', '2020-06-04 09:54:13', NULL),
(29, 35, 'fy-dWY4mR8OwcnDrZEjVTx:APA91bE4OanH4q_R4kkxqrXnxrbUEdx7UVArwAwWGKkcUExu0FKCKiBSoOY0Q2l2OMRleLzfOz5JJGyfEmRHs7rVgcNId24Lb_pOTceMTqR2e2b_UHUQ58JjI0APBucY9jG6gVIHXinh', 'Active', '2020-06-04 11:12:58', NULL),
(30, 44, 'fy-dWY4mR8OwcnDrZEjVTx:APA91bE4OanH4q_R4kkxqrXnxrbUEdx7UVArwAwWGKkcUExu0FKCKiBSoOY0Q2l2OMRleLzfOz5JJGyfEmRHs7rVgcNId24Lb_pOTceMTqR2e2b_UHUQ58JjI0APBucY9jG6gVIHXinh', 'Inactive', '2020-06-04 11:15:14', '2020-07-17 11:32:26'),
(31, 45, 'cln9rnpkTdWNz3SUSpIosi:APA91bEBAM-kbD4Wzv14J5hgEj8mXBpjq1t2bPBKZq53uLvwVHtN4I2p0SNYSKG9cFIu-hXGvqA7Dv_HJUM9wsT62OxO7BbT3ZhDcfz-2jkNl9yAD1vvN8kW6FtayGrL_UUul4lgBLqU', 'Active', '2020-06-04 12:46:49', NULL),
(32, 47, 'cln9rnpkTdWNz3SUSpIosi:APA91bEBAM-kbD4Wzv14J5hgEj8mXBpjq1t2bPBKZq53uLvwVHtN4I2p0SNYSKG9cFIu-hXGvqA7Dv_HJUM9wsT62OxO7BbT3ZhDcfz-2jkNl9yAD1vvN8kW6FtayGrL_UUul4lgBLqU', 'Active', '2020-06-05 05:23:49', NULL),
(33, 44, 'cln9rnpkTdWNz3SUSpIosi:APA91bEBAM-kbD4Wzv14J5hgEj8mXBpjq1t2bPBKZq53uLvwVHtN4I2p0SNYSKG9cFIu-hXGvqA7Dv_HJUM9wsT62OxO7BbT3ZhDcfz-2jkNl9yAD1vvN8kW6FtayGrL_UUul4lgBLqU', 'Inactive', '2020-06-05 05:29:37', '2020-07-17 11:32:26'),
(34, 50, 'dRa6G-ZWQimmBgch8ukO94:APA91bGJrc7crKdzdtUoAslPYAeYU8mPDzownUA88hxrMuf54B5fAyjXZ6ZOOLwopipAO_U05j5wAeAe8omfyWrsgOQKFFZrX_mNAZrI8V_OuEPgZNAsY6fct__TOmu69ZNN9XX0yU4c', 'Active', '2020-06-05 09:11:34', NULL),
(35, 2, 'eW1TJEEaQDu4mbYk2BdpUp:APA91bEDojYVUyMZMZzHWlbjc6p7Gy9lsRmYYjCeRz_E8YCgjg9t0JFF7YAtX0XpFyiL_FkXSNJWEMBFRy58LeWoRYT_SvBWpKI5Mbd8G6sEyjmE53i9PIOeoapIpG4J8y1PuijhNDqJ', 'Active', '2020-06-05 10:09:10', NULL),
(36, 44, 'dRa6G-ZWQimmBgch8ukO94:APA91bGJrc7crKdzdtUoAslPYAeYU8mPDzownUA88hxrMuf54B5fAyjXZ6ZOOLwopipAO_U05j5wAeAe8omfyWrsgOQKFFZrX_mNAZrI8V_OuEPgZNAsY6fct__TOmu69ZNN9XX0yU4c', 'Inactive', '2020-06-05 10:12:38', '2020-07-17 11:32:26'),
(37, 51, 'dRa6G-ZWQimmBgch8ukO94:APA91bGJrc7crKdzdtUoAslPYAeYU8mPDzownUA88hxrMuf54B5fAyjXZ6ZOOLwopipAO_U05j5wAeAe8omfyWrsgOQKFFZrX_mNAZrI8V_OuEPgZNAsY6fct__TOmu69ZNN9XX0yU4c', 'Inactive', '2020-06-08 06:24:01', '2020-06-18 11:14:55'),
(38, 51, 'cMXEBQeyR0C1PmXV7Yacnv:APA91bF0LuWPnxC0iRtmpasIMZsKA5S-EY87G2qStDm4wvOFjKh3Q4ptB6k2qmn6bNAzGi0xptRJejlFkrdkr5rHtryfeRCyEXpsKnpgO7dmM2WMGlboCYVoiljz5-DDrSPeHvdbCfRb', 'Inactive', '2020-06-08 09:29:20', '2020-06-18 11:14:55'),
(39, 44, 'cMXEBQeyR0C1PmXV7Yacnv:APA91bF0LuWPnxC0iRtmpasIMZsKA5S-EY87G2qStDm4wvOFjKh3Q4ptB6k2qmn6bNAzGi0xptRJejlFkrdkr5rHtryfeRCyEXpsKnpgO7dmM2WMGlboCYVoiljz5-DDrSPeHvdbCfRb', 'Inactive', '2020-06-08 12:40:46', '2020-07-17 11:32:26'),
(40, 1, 'ejMmnjN9T2WruDZySt85tI:APA91bGzDIdrx2-USFTmyN6kmOIUKF148EbGLBItByJKoZlqCN1z9kCsptD-0RkOmeoOQClUvwMX5RCD5UXfy0ziueMw3MfCmdhIFnpbFSmrZFVcXhAPANVDuzsORSb3-HnhAEcHRTqX', 'Inactive', '2020-06-09 07:26:52', '2020-06-11 10:19:38'),
(41, 51, 'dD4GDhgaRjG_pkLQyYRZ1S:APA91bGTpsGe3jm1L8v06_lUwZB7dLWE31FlS35KVTw0YoJIV30SZausSZNHtUTx1vaSDv17Tw5fu7xjIq1jHHsm8-Si0nUgasl9Ez35c8kucDdQUaMwd-Ddnbgg2t2Mvw_y09fqLpko', 'Inactive', '2020-06-09 07:38:05', '2020-06-18 11:14:55'),
(42, 2, 'cMXEBQeyR0C1PmXV7Yacnv:APA91bF0LuWPnxC0iRtmpasIMZsKA5S-EY87G2qStDm4wvOFjKh3Q4ptB6k2qmn6bNAzGi0xptRJejlFkrdkr5rHtryfeRCyEXpsKnpgO7dmM2WMGlboCYVoiljz5-DDrSPeHvdbCfRb', 'Active', '2020-06-09 08:02:36', NULL),
(43, 51, 'cGONu8DQRem-BlnbwyAgYS:APA91bGtsygiVrJICc8ODmsCLgSPoaMYJ7I0PCJwQI_fpZzWDcB2GC9UX6_wpZb1Moy10dgHfbUxwo3cTiUJJab9B9i1R-MHFsIldELMWYP_FK_RvWjGtBVSrbpw8wpkxEMcDMZMX6Kr', 'Inactive', '2020-06-09 13:29:10', '2020-06-18 11:14:55'),
(44, 51, 'eRTQ1V6yRLGkEvxjReRQwZ:APA91bGMsvlw46F1A_wRY0jMnKpemsPT2aW0atmNNIxA54HD9JeFse_NKt2xui5RJxKOyt7n3ZMtJw_dlBy8XMvn2PtEtJXqac1wGzI2ssxpjv5_T9LjO2xn2-yEMUs-cAptvTirsfGz', 'Inactive', '2020-06-10 04:41:53', '2020-06-18 11:14:55'),
(45, 54, 'cMXEBQeyR0C1PmXV7Yacnv:APA91bF0LuWPnxC0iRtmpasIMZsKA5S-EY87G2qStDm4wvOFjKh3Q4ptB6k2qmn6bNAzGi0xptRJejlFkrdkr5rHtryfeRCyEXpsKnpgO7dmM2WMGlboCYVoiljz5-DDrSPeHvdbCfRb', 'Active', '2020-06-10 04:50:47', NULL),
(46, 51, 'efvzR-adTPak0xCefu0JFC:APA91bEoooyAXmEVFXdOrOaSvf4JDlIwLxOpQ7NsLnWEUXHe5rDpVM7mhX2MaaC6TDf4cwsIryXryNsLZ2VtgnVmgit-Ecnq5mzzCQHL072Wxisg6HYoy3gMp1Ztj3b6EY2RderkHR6L', 'Inactive', '2020-06-10 10:22:39', '2020-06-18 11:14:55'),
(47, 51, 'fbO2U4sdSIyUMR5YUUS5b4:APA91bFP2-n_s3gucL5FwgKA1rCM4Xh90yehG-nqiBylR4XdG-gQJcWAiH3VIPITs8t9_JJtHdo8kRdCTOmgk8_zRgEFyFDxCbjsy6IF8ZddjReepbfr2rPXdg6ZNzsU2un_U0GtfmVU', 'Inactive', '2020-06-10 12:47:19', '2020-06-18 11:14:55'),
(48, 51, '345', 'Inactive', '2020-06-11 10:41:10', '2020-07-17 13:41:52'),
(49, 50, 'cHXHU0Y3SGu_C2BvulpvMK:APA91bFn6HionMwxZUsyhWUyNCcyt3Bl7ho5uXTSz_yod3fih0Ueh57OEqS2TEJh4ch23FexMTZJwxpSWaDaRJhjudA0i_sMBgTspDXe1yCYIUASbI44I_ZAeTV9IBGfSPPuF7w7E-4p', 'Active', '2020-06-12 11:04:28', NULL),
(50, 51, 'cHXHU0Y3SGu_C2BvulpvMK:APA91bFn6HionMwxZUsyhWUyNCcyt3Bl7ho5uXTSz_yod3fih0Ueh57OEqS2TEJh4ch23FexMTZJwxpSWaDaRJhjudA0i_sMBgTspDXe1yCYIUASbI44I_ZAeTV9IBGfSPPuF7w7E-4p', 'Inactive', '2020-06-12 11:08:24', '2020-06-18 11:14:55'),
(51, 58, 'dd5QJvuASHqYLnYzkCXSCw:APA91bH6_y_3mrlyFFmgvuvDAd4LJfL8ac2W49cIB7kFf7qN1ywWXohstqMy_XoIIne2C_dth0CcccJgqeNJir3kAV98CXhtq_6uFh39Y0BThwmBVTHRRu0a6JdeKGz5xdjw84f3WRtc', 'Active', '2020-06-13 05:48:53', NULL),
(52, 44, 'e1Zd7jCvTK60HzUb1gzKwv:APA91bHDTzfNEi22ybE2xtffyRXOaUR5EBDfvSppHYI7x0vFWWKZNyB_A8ukPb8b7whhhkfO4QHKOWJw4fJ0DczPeMhepJHkj2DnEWGPt_w2vV9adX1x3bSsV3Z9fkjG_8aOEIZZueS1', 'Active', '2020-06-13 08:48:43', '2020-08-03 18:26:56'),
(53, 53, 'cZdRapkcS9OCuX-XPJlUPK:APA91bHL4ZQVEtH7os1ka7r977nrZdgkNG8x-F_1w6t4aGVI1LlPQK0J-UUAwWhLLfwBzIi3rFcfiNz7sd-LwycKJ_iz2RoMv6hORcvu0bE0w1bXGYD_BKjZqXuGzVrZ_SGb_YGfndDE', 'Active', '2020-06-15 14:48:03', NULL),
(54, 51, 'e9tbFr0pTB2tYci-ztdFd3:APA91bHl7InU6eTjNeuLOdGxwTNmvLQ6cXl3PPc0vN9Cg5Ud6vhpVYxOeAz6xClGcFustF7hgg2UsxEAgtsk342qQUzQutHNw4Qghzzqb-5ERabd8wvCZ9RvbsVT77l0hRFNBYXwKxi0', 'Inactive', '2020-06-16 07:14:00', '2020-06-18 11:14:55'),
(55, 66, 'fq-aNtAdTh23iYlZYD54_3:APA91bGtNcd7hOl1ZXNgx9JEEXWWM4j2myiInHqySCYfvnSdSR3naKIRDtbAQ8QidrXopch3RAueXlY98iXUzZ7PFvExSaGkU7ztbGF-K8SbM8gD772VxHBdXxd3eh7JZiAX-7eLmgCW', 'Active', '2020-06-16 07:48:36', NULL),
(56, 64, 'dd5QJvuASHqYLnYzkCXSCw:APA91bH6_y_3mrlyFFmgvuvDAd4LJfL8ac2W49cIB7kFf7qN1ywWXohstqMy_XoIIne2C_dth0CcccJgqeNJir3kAV98CXhtq_6uFh39Y0BThwmBVTHRRu0a6JdeKGz5xdjw84f3WRtc', 'Active', '2020-06-16 07:54:30', NULL),
(57, 67, 'fq-aNtAdTh23iYlZYD54_3:APA91bGtNcd7hOl1ZXNgx9JEEXWWM4j2myiInHqySCYfvnSdSR3naKIRDtbAQ8QidrXopch3RAueXlY98iXUzZ7PFvExSaGkU7ztbGF-K8SbM8gD772VxHBdXxd3eh7JZiAX-7eLmgCW', 'Active', '2020-06-16 08:03:23', NULL),
(58, 3, 'dd5QJvuASHqYLnYzkCXSCw:APA91bH6_y_3mrlyFFmgvuvDAd4LJfL8ac2W49cIB7kFf7qN1ywWXohstqMy_XoIIne2C_dth0CcccJgqeNJir3kAV98CXhtq_6uFh39Y0BThwmBVTHRRu0a6JdeKGz5xdjw84f3WRtc', 'Active', '2020-06-16 08:27:37', NULL),
(59, 51, 'f7NPaWPtQaeIto7mr-tBxA:APA91bFviGQTe5Dm5LFxdI08r2LBG6VrZECGdNfkWP3d-cfLD56Tycjx5hRAamOaBcQimEzytJ3jD89zlzfCW_YZYJ9saaDsO5EtOjv6GxCRrTnX2jwBcwUYQR5JeExHlJq0pI_MYQo1', 'Inactive', '2020-06-16 12:59:50', '2020-06-18 11:14:55'),
(60, 1, 'c8E1SRWnRT6RqAdKtyx2aS:APA91bGWWcjaiGyFOm8A4smscfyWiemZrOqpu7W6FNXVXtiekKpJUSqVKtsJKco98IueGGZ3aMZxhD6B3XTXhkrdlAgcqen7p2D9BgkYgdt1YZTYif4aVyPFmkX9b4Gx-gnfXFPUCiz4', 'Active', '2020-06-17 09:16:06', '2020-06-19 17:03:37'),
(61, 2, 'f5-nJrf5Q8qXx7kvs9wZEw:APA91bGK_vCMkJxFi3hyEtauSJIVvKQNJhkYJapkIe-zUIzbA8VoqWN03skK2dpVFpjLTXYhF0us2G-d3ShkKjlOeQe4HqNpbm9EIvpKSX37HSNdfHjFUUgjw_r-VZGrXLz8U860sdAX', 'Active', '2020-06-18 05:16:11', NULL),
(62, 1, 'cAMBb0hOQN-Oq22Jxz_Rut:APA91bGscM4yGYAU7AiTQ7o9PjgWGorvEkEr_IyoSBDInUUvf4fX2SYLGPq0yedYxk5aTSdJ7BKFJVF58yEWNSfECfLQku-X8YmGJZfXREkqwhcp4AZW0bSHZk9dswPPymsnCgsI6thE', 'Active', '2020-06-18 15:45:24', '2020-06-19 07:06:02'),
(63, 1, 'DeviceToken', 'Active', '2020-06-18 15:50:04', '2020-06-19 08:23:54'),
(64, 51, 'fqj-lEcwRFGCsEW7fBCja3:APA91bF6JPYZWnX7KHlahtJMTYE2Ex4UVXLQoO2JEXPByd37cjSfTyb2qw1JgVZXng56w3dCditT19LToN2PQbEm9djoiZvmWUuN2sPxbVRb4DgOcMZdxtcrL2JfjKUCWIhHHBU-wWV2', 'Inactive', '2020-06-19 05:54:33', '2020-06-22 04:09:26'),
(65, 3, 'fog3OmYcR82HNFw3t163wD:APA91bEfIgPn3eca0shObJUhWvzf5yLi9BFAE5iFrB7J1VCXecWrMZc_3oVjy21b0IrMbZkV9w3YV_9QZ79ixKw3f9HWVtrts7wBEoCLfQE3Q8rDsiq40ArHQYHS5YQ78GvLV3dA8flf', 'Active', '2020-06-19 06:05:16', NULL),
(66, 71, 'dmpSMZ10T3GAAHfqt4HiJn:APA91bEkY1wc6Y_a06MYJrFzsCXzea9r-NEGwDgrHLziMvqcyqJBh_4YFCQXQi-kA9GVq1NyzHZsROP48nUJ2RT1ic3e_Pp5_UoldEsjZXNsvXjU-UUo05g_gffWOpnYw_NGQKjlauRY', 'Active', '2020-06-19 06:31:35', NULL),
(67, 46, 'dpcBk2-fR3mm_nqbzZzyXr:APA91bH4Z2GkJO85oDG9qxRCrnsKCo9_qu3GflH7oZGRO6AMc_JV1Yi5YAYIYOv3NR1r3BekDpPGuWNZLKyGbmI3Yx5oZ7SfraAaFk84UQo6FXUOBoHlVP6vI2NRs2Ypum17Ko8a1hSy', 'Active', '2020-06-19 06:44:24', NULL),
(68, 51, 'dmpSMZ10T3GAAHfqt4HiJn:APA91bEkY1wc6Y_a06MYJrFzsCXzea9r-NEGwDgrHLziMvqcyqJBh_4YFCQXQi-kA9GVq1NyzHZsROP48nUJ2RT1ic3e_Pp5_UoldEsjZXNsvXjU-UUo05g_gffWOpnYw_NGQKjlauRY', 'Inactive', '2020-06-19 06:45:24', '2020-06-22 04:09:26'),
(69, 51, 'fOdkdoBPTmqdzjdjuJ6FaP:APA91bHO6NdAdRWVgE-Ej_GND9DwiAA8SCOv1_t1aAMFUApUHtvYwwtC1eoHMUs6nFTRVCNruw0mo2qSUamvN6ipXxyboOtKb8lgTlLJX4beRvWOYOb1KUA7V3vvghIk9bP18kFJUul_', 'Inactive', '2020-06-19 07:01:21', '2020-06-25 07:08:14'),
(70, 12, 'e4Qe22TISgmz5ej10Ol6s4:APA91bF_wu8IyN9CynjjJGI2S_onYSL_nq6HwiFMtcLTWYuOqGf4CHnO0wDSDeH1D7RYTC2c4SQ9jloIkwNhlMhXKloRcgcJmJITF_yBKCb1MUgAt2oU3CVUKQFofLojxDo8rGpcXmxo', 'Active', '2020-06-20 10:23:51', NULL),
(71, 37, '345', 'Inactive', '2020-06-22 10:05:27', '2020-07-17 11:11:49'),
(72, 75, 'DeviceToken', 'Active', '2020-06-25 05:14:00', '2020-07-20 15:21:44'),
(73, 75, 'eOid5xXiSoGunjMYiQm_mo:APA91bGwUuJ4GlawZkVmj6Vlal4ggb94dCgO25Q2H8pyxuWXC9n726AG91M4rUACzQsFcjNyhJ94IvSsl-v2CJ_XUOsZVp0uqMP9mfTJt8nLRerhfYWD1FgZI2JFIv2K2oWsD7OTLfII', 'Inactive', '2020-06-25 07:34:57', '2020-06-30 06:58:16'),
(74, 51, 'f9wD3ARASvCkyh8Y0UTzZj:APA91bEPsNELSvd8a3DEwegxVj-4UoKbZhNV4vg12JbyuHHtGwB4zU_z-9oufmIom7cVsXd4vHTTDCB36e8jQTvoE9UAa_l7JQmCSKIYiaWyXSTZWGWqEqJhJoQIqPMyzXqNdDlUp8Ij', 'Inactive', '2020-06-29 07:31:48', '2020-07-17 13:41:52'),
(75, 77, 'DeviceToken', 'Active', '2020-06-29 11:15:06', '2020-06-30 08:33:43'),
(76, 2, 'fHxl2F8bTbKHwEMnM-Hv7H:APA91bHew2CtNsl3epuXuprTgNn4gADOeMbfg4VffcnXaYRVJD8QZKNINmXGurr1DoHgJo1MRTO14rmmUbMRyRE-qDMAMFp6yF_a8fcWMSmvNHJ13PsfcQAKc165nDL1-ph57BJ_A_qi', 'Active', '2020-06-29 12:40:52', NULL),
(77, 75, 'f6Vhoul3SAqP-tOt7pPk8s:APA91bFxZLDTjMErN0zJQRYQVdZ1kiQ-Mh5KSaNCFQl8y8SY0Xr_2pU_p-RlHr826fDhNB0JLUpZsLlaXP3N7DMuhiSs_E67ufavlJVfC_YuieewU0l35BOEoFiJqGir4UsLCuD9Fa28', 'Inactive', '2020-06-30 07:24:48', '2020-07-20 15:17:50'),
(78, 51, 'dtw8I9IpS3y3aa95E-THWR:APA91bEySNb4cEAPxsiA5aZTQBC4kv9ftLm_Wv-lv_cj353u49uS79bX5dtUCN7jC6RYCfKiXLE7AFv_j-L4BPkFHyyE9G10k-9-2tepD7_AFES_clvC-9fEERoPliPowJjc_INg5fjW', 'Active', '2020-07-02 09:28:10', '2020-08-04 07:03:57'),
(79, 78, 'DeviceToken', 'Inactive', '2020-07-07 06:54:12', '2020-07-07 06:54:16'),
(80, 79, 'DeviceToken', 'Inactive', '2020-07-07 06:56:38', '2020-07-07 07:01:01'),
(81, 80, 'DeviceToken', 'Inactive', '2020-07-07 07:01:45', '2020-07-07 07:01:49'),
(82, 51, 'DeviceToken', 'Active', '2020-07-09 05:59:49', '2020-07-20 11:58:09'),
(83, 37, 'dtw8I9IpS3y3aa95E-THWR:APA91bEySNb4cEAPxsiA5aZTQBC4kv9ftLm_Wv-lv_cj353u49uS79bX5dtUCN7jC6RYCfKiXLE7AFv_j-L4BPkFHyyE9G10k-9-2tepD7_AFES_clvC-9fEERoPliPowJjc_INg5fjW', 'Inactive', '2020-07-17 10:45:32', '2020-07-17 11:11:49'),
(84, 37, 'DeviceToken', 'Inactive', '2020-07-17 10:50:57', '2020-07-18 12:22:14'),
(85, 44, 'DeviceToken', 'Inactive', '2020-07-17 11:12:33', '2020-07-17 11:32:26'),
(86, 44, 'dtw8I9IpS3y3aa95E-THWR:APA91bEySNb4cEAPxsiA5aZTQBC4kv9ftLm_Wv-lv_cj353u49uS79bX5dtUCN7jC6RYCfKiXLE7AFv_j-L4BPkFHyyE9G10k-9-2tepD7_AFES_clvC-9fEERoPliPowJjc_INg5fjW', 'Active', '2020-07-17 11:35:29', NULL),
(87, 6, 'DeviceToken', 'Inactive', '2020-07-18 11:34:37', '2020-07-18 11:39:45'),
(88, 82, 'DeviceToken', 'Active', '2020-07-18 12:24:01', NULL),
(89, 83, 'DeviceToken', 'Active', '2020-07-19 11:25:58', '2020-07-24 06:53:21'),
(90, 83, 'f6Vhoul3SAqP-tOt7pPk8s:APA91bFxZLDTjMErN0zJQRYQVdZ1kiQ-Mh5KSaNCFQl8y8SY0Xr_2pU_p-RlHr826fDhNB0JLUpZsLlaXP3N7DMuhiSs_E67ufavlJVfC_YuieewU0l35BOEoFiJqGir4UsLCuD9Fa28', 'Active', '2020-07-20 07:45:09', '2020-07-21 05:13:19'),
(91, 2, 'ffSd8yRVSOePQNYHx17gIQ:APA91bGaIQ4WZcxrCkhvtQYEPNBXdu1niVkI3whhivVNhpO5x0Gsx5TY_ZTNhBV-MVvuKk9ysomHg0kUGnpjUcPyHluWXvJKtTZTNX6Sh4DGxpcWHL6ubcHMhPMuxBSdxAfEufyc4hCF', 'Active', '2020-08-04 06:39:24', NULL),
(92, 84, 'DeviceToken', 'Active', '2020-08-06 08:00:30', NULL),
(93, 12, 'cITagDO2RBqx4n4c47o9tZ:APA91bHEej0oZsnN0OF2SLfQ-wO27hk8bPCtC9YB1_p0sc-O-y6ahHeomsXwHPrDFHL156B05LGyIWbwh_geH7A2U86ZMu-gqCy2KXqRGuMTkH-LRr1zCR1OKg9Tsqm57FybQa01P848', 'Active', '2020-08-06 10:56:09', NULL),
(94, 12, 'cwFyBaUMTySvzpb-f7Z6mA:APA91bHrI1eqDG_HWfddfWroQ4hLNAwxFVd9NSbUNF0xnL2YkFqvpdtgPF6uCN6crIpeqeIPDwt0J_xrV8Q7uPf4IoamzLHu5thjiu2bNP1ki4ZFnxqfO-I9qEHDhuBwPPsRbdkxqVBI', 'Active', '2020-08-07 11:44:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_notification`
--

CREATE TABLE `od_notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_notification`
--

INSERT INTO `od_notification` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'We are Robert Hunter', 'hello this is testing', '2020-05-08 05:51:31', NULL),
(2, 2, 'off', 'testing', '2020-05-08 05:57:39', NULL),
(3, 2, 'off', 'testing', '2020-05-08 06:13:19', NULL),
(4, 2, 'off', 'testing', '2020-05-08 06:13:59', NULL),
(5, 2, 'off', 'testing', '2020-05-08 06:18:19', NULL),
(6, 2, 'We are Robert Hunter', 'dfdsfs', '2020-05-08 06:31:50', NULL),
(7, 2, 'We are Robert Hunter', 'dfdsfs', '2020-05-08 06:32:48', NULL),
(8, 2, 'We are Robert Hunter', 'dfdsfs', '2020-05-08 06:34:24', NULL),
(9, 2, 'We are Robert Hunter', 'dfdsfs', '2020-05-08 06:34:59', NULL),
(10, 2, 'We are Robert Hunter', 'dfdsfs', '2020-05-08 06:35:03', NULL),
(11, 2, 'We are Robert Hunter', 'dfdsfs', '2020-05-08 06:35:13', NULL),
(12, 2, 'We are Robert Hunter', '5o% off for first booking', '2020-05-08 06:36:05', NULL),
(13, 2, 'We are Robert Hunter', '5o% off for first booking', '2020-05-08 06:36:32', NULL),
(14, 44, 'Test', 'zc', '2020-06-04 12:12:39', NULL),
(15, 44, 'OnDemand', 'Welcome to H&S', '2020-06-09 06:28:13', NULL),
(16, 5, 'Welcome', 'H&S', '2020-06-11 07:55:31', NULL),
(17, 57, 'Demo Universities', 'sfsdfsdfs', '2020-06-12 10:54:01', NULL),
(18, 56, 'Demo Universities', 'sfsdfsdfs', '2020-06-12 10:54:01', NULL),
(19, 57, 'H&S', 'Welcome to On Demand', '2020-06-13 04:57:24', NULL),
(20, 58, 'booking', 'hello varun', '2020-06-13 06:49:41', NULL),
(21, 3, 'We are Robert Hunter', 'hello mukesh', '2020-06-18 05:30:41', NULL),
(22, 5, 'Hello', 'There is an important message for you pls cooperate.', '2020-08-04 08:26:22', NULL),
(23, 83, 'hurry up for book services', 'hello this is testing purpose', '2020-08-05 07:21:18', NULL),
(24, 82, 'hurry up for book services', 'hello this is testing purpose', '2020-08-05 07:21:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_orders`
--

CREATE TABLE `od_orders` (
  `order_id` int(10) NOT NULL,
  `booking_id` varchar(100) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `address_id` int(10) NOT NULL,
  `total_amount` varchar(50) NOT NULL,
  `payable_amount` varchar(100) NOT NULL,
  `service_tax` varchar(10) NOT NULL,
  `convenience_charge` varchar(10) NOT NULL,
  `order_type` enum('Cod','Online') DEFAULT NULL,
  `status` enum('Ongoing','Processing','Completed','Schedule','Reschedule','Cancelled') DEFAULT NULL,
  `service_time` time DEFAULT NULL,
  `service_date` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `od_orders`
--

INSERT INTO `od_orders` (`order_id`, `booking_id`, `transaction_id`, `user_id`, `address_id`, `total_amount`, `payable_amount`, `service_tax`, `convenience_charge`, `order_type`, `status`, `service_time`, `service_date`, `created_at`) VALUES
(1, '37694812', NULL, 22, 55, '99', '216.82', '17.82', '100', 'Cod', 'Ongoing', '09:00:00', '17 June, 2020', '2020-06-15 05:30:30'),
(2, '27165493', NULL, 22, 55, '599', '806.82', '107.82', '100', 'Cod', 'Ongoing', '21:00:00', '25 June, 2020', '2020-06-15 05:39:59'),
(3, '35617492', NULL, 5, 63, '1400', '1752', '252', '100', 'Cod', 'Ongoing', '09:00:00', '14 June, 2020', '2020-06-15 06:43:47'),
(4, '29617345', NULL, 5, 53, '2499', '3048.82', '449.82', '100', 'Cod', 'Completed', '11:00:00', '14 June, 2020', '2020-06-15 06:46:57'),
(5, '49583126', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Ongoing', '11:00:00', '16 Jun 2020', '2020-06-15 07:44:18'),
(6, '59273681', '', 58, 101, '500', '690', '90', '100', 'Cod', 'Ongoing', '21:00:00', '15 Jun 2020', '2020-06-15 07:49:29'),
(7, '58179634', '', 58, 102, '500', '690', '90', '100', 'Cod', 'Ongoing', '13:00:00', '15 Jun 2020', '2020-06-15 09:27:16'),
(8, '48679312', '1254895478', 58, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '09:00:00', '25-05-2020', '2020-06-15 09:30:15'),
(9, '23167548', '1254895478', 61, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '09:00:00', '25-05-2020', '2020-06-15 09:33:40'),
(10, '15742938', '1254895478', 61, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '09:00:00', '25-05-2020', '2020-06-15 09:49:19'),
(11, '18342765', '1254895478', 61, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '09:00:00', '25-05-2020', '2020-06-15 09:49:28'),
(12, '94831765', '', 58, 98, '500', '690', '90', '100', 'Cod', 'Ongoing', '13:00:00', '15 Jun 2020', '2020-06-15 09:51:26'),
(13, '32974651', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Cancelled', '21:00:00', '15 Jun 2020', '2020-06-15 09:53:29'),
(14, '67824931', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Ongoing', '09:00:00', '15 Jun 2020', '2020-06-15 09:57:18'),
(15, '93748521', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Ongoing', '13:00:00', '15 Jun 2020', '2020-06-15 09:57:42'),
(16, '34562798', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Ongoing', '13:00:00', '15 Jun 2020', '2020-06-15 10:05:58'),
(17, '82495731', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Ongoing', '11:00:00', '14-5-2020', '2020-06-15 10:11:16'),
(18, '42638715', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Completed', '11:00:00', '14-5-2020', '2020-06-15 10:15:49'),
(19, '87452391', '', 58, 100, '99', '217', '18', '100', 'Cod', 'Cancelled', '11:00:00', '14-5-2020', '2020-06-15 10:16:18'),
(20, '39564127', NULL, 5, 63, '1400', '1752', '252', '100', 'Cod', 'Completed', '21:00:00', '22 June, 2020', '2020-06-15 10:55:35'),
(21, '25693487', NULL, 5, 63, '198', '333.64', '35.64', '100', 'Cod', 'Completed', '09:00:00', '18 June, 2020', '2020-06-15 10:57:03'),
(22, '21934658', '', 1, 74, '99', '', '18', '100', 'Cod', 'Ongoing', '13:00:00', '18 Jun 2020', '2020-06-15 11:07:19'),
(23, '42536179', NULL, 22, 55, '99', '216.82', '17.82', '100', 'Cod', 'Ongoing', '11:00:00', '25 June, 2020', '2020-06-15 15:28:20'),
(24, '46239781', NULL, 22, 55, '1400', '1752', '252', '100', 'Cod', 'Cancelled', '13:00:00', '25 June, 2020', '2020-06-15 15:32:29'),
(25, '94285371', NULL, 5, 104, '1900', '2342', '342', '100', 'Cod', 'Completed', '20:00:00', '16 June, 2020', '2020-06-16 05:49:36'),
(26, '71869325', '', 51, 96, '99', '217', '18', '100', 'Cod', 'Cancelled', '13:00:00', '16 Jun 2020', '2020-06-16 07:11:33'),
(27, '32614795', '', 51, 96, '1900', '2342', '342', '100', 'Cod', 'Cancelled', '21:00:00', '25 Jun 2020', '2020-06-16 07:12:43'),
(28, '89436275', '', 67, 105, '99', '217', '18', '100', 'Cod', 'Ongoing', '09:00:00', '18 Jun 2020', '2020-06-16 08:02:25'),
(29, '76598312', '', 67, 105, '3300', '3994', '594', '100', 'Cod', 'Cancelled', '13:00:00', '22 Jun 2020', '2020-06-16 08:06:22'),
(30, '12573869', '', 67, 105, '500', '690', '90', '100', 'Cod', 'Cancelled', '21:00:00', '16 Jun 2020', '2020-06-16 08:06:56'),
(31, '28674135', '', 3, 17, '99', '217', '18', '100', 'Cod', 'Cancelled', '13:00:00', '16 Jun 2020', '2020-06-16 08:26:40'),
(32, '73861495', '', 3, 17, '500', '690', '90', '100', 'Cod', 'Cancelled', '13:00:00', '16 Jun 2020', '2020-06-16 08:32:45'),
(33, '92354718', '', 3, 17, '599', '807', '108', '100', 'Cod', 'Cancelled', '11:00:00', '16 Jun 2020', '2020-06-16 08:37:32'),
(34, '62734185', '', 3, 17, '99', '217', '18', '100', 'Cod', 'Cancelled', '11:00:00', '16 Jun 2020', '2020-06-16 09:14:35'),
(35, '63547981', '', 3, 17, '99', '217', '18', '100', 'Cod', 'Cancelled', '21:00:00', '16 Jun 2020', '2020-06-16 09:20:04'),
(36, '13897654', '', 3, 17, '500', '690', '90', '100', 'Cod', 'Completed', '11:00:00', '16 Jun 2020', '2020-06-16 09:33:18'),
(37, '49317586', '1254895478', 3, 1, '99', '245', '150', '45', 'Cod', 'Cancelled', '09:00:00', '25-05-2020', '2020-06-16 11:04:51'),
(38, '48769153', '1254895478', 3, 1, '99', '245', '150', '45', 'Cod', 'Cancelled', '09:00:00', '25-05-2020', '2020-06-16 11:05:30'),
(39, '15386247', '', 3, 17, '1400', '1752', '252', '100', 'Cod', 'Cancelled', '11:00:00', '16 Jun 2020', '2020-06-16 11:10:13'),
(40, '76482395', '1254895478', 3, 1, '99', '245', '150', '45', 'Cod', 'Cancelled', '09:00:00', '25-05-2020', '2020-06-16 11:12:21'),
(41, '24958317', '1254895478', 3, 1, '1499', '1869', '270', '100', 'Cod', 'Completed', '09:00:00', '25-05-2020', '2020-06-16 11:20:17'),
(42, '94235867', '1254895478', 3, 1, '1499', '1869', '270', '100', 'Cod', 'Cancelled', '09:00:00', '25-05-2020', '2020-06-16 11:22:57'),
(43, '42391586', '', 67, 105, '1900', '2342', '342', '100', 'Cod', 'Completed', '13:00:00', '16 Jul 2020', '2020-06-16 11:38:05'),
(44, '67342891', '', 51, 96, '1400', '1752', '252', '100', 'Cod', 'Cancelled', '13:00:00', '24 Jun 2020', '2020-06-16 13:01:31'),
(45, '51843279', NULL, 5, 53, '1000', '1280', '180', '100', 'Cod', 'Cancelled', '20:00:00', '17 June, 2020', '2020-06-16 13:25:06'),
(46, '93162875', NULL, 5, 103, '1598', '1985.64', '287.64', '100', 'Cod', 'Cancelled', '09:00:00', '23 June, 2020', '2020-06-16 13:51:36'),
(47, '42358697', NULL, 5, 104, '599', '806.82', '107.82', '100', 'Cod', 'Completed', '13:00:00', '17 June, 2020', '2020-06-16 14:11:48'),
(48, '76914325', '', 51, 80, '3399', '4111', '612', '100', 'Cod', 'Cancelled', '13:00:00', '25 Jun 2020', '2020-06-19 06:03:30'),
(49, '95168327', '', 2, 71, '99', '217', '18', '100', 'Cod', 'Cancelled', '21:00:00', '19 Jun 2020', '2020-06-19 06:26:01'),
(50, '98264713', '', 2, 71, '500', '690', '90', '100', 'Cod', 'Cancelled', '09:00:00', '19 Jun 2020', '2020-06-19 06:29:06'),
(51, '19367284', '', 51, 80, '1900', '2342', '342', '100', 'Cod', 'Cancelled', '13:00:00', '30 Jun 2020', '2020-06-19 06:45:51'),
(52, '38476912', '', 46, 60, '99', '217', '18', '100', 'Cod', 'Cancelled', '20:00:00', '19 Jun 2020', '2020-06-19 06:53:57'),
(53, '86793154', '', 51, 96, '1900', '2342', '342', '100', 'Cod', 'Ongoing', '20:00:00', '', '2020-06-22 12:47:00'),
(54, '37186294', '', 51, 96, '1900', '2342', '342', '100', 'Cod', 'Cancelled', '20:00:00', '', '2020-06-22 12:48:25'),
(55, '31946785', NULL, 12, 111, '599', '806.82', '107.82', '100', 'Cod', 'Ongoing', '13:00:00', '24 June, 2020', '2020-06-23 13:16:26'),
(56, '48192357', '', 12, 112, '797', '1040', '143', '100', 'Cod', 'Ongoing', '11:00:00', '24 Jun 2020', '2020-06-24 13:48:28'),
(57, '52674931', '', 2, 71, '99', '217', '18', '100', 'Cod', 'Ongoing', '18:00:00', '29 Jun 2020', '2020-06-29 08:17:40'),
(58, '86492137', '', 51, 96, '99', '217', '18', '100', 'Cod', 'Ongoing', '20:00:00', '29 Jun 2020', '2020-06-29 08:18:02'),
(59, '48392765', '', 75, 115, '500', '690', '90', '100', 'Cod', 'Completed', '20:00:00', '16 Jul 2020', '2020-06-30 13:12:00'),
(60, '16725934', '', 75, 116, '99', '', '18', '100', 'Cod', 'Completed', '20:00:00', '2 Jul 2020', '2020-07-01 13:38:34'),
(61, '36548291', '', 75, 115, '599', '807', '108', '100', 'Cod', 'Completed', '20:00:00', '2 Jul 2020', '2020-07-02 11:10:04'),
(62, '26593471', '', 75, 159, '995', '', '179', '100', '', 'Completed', '20:00:00', '', '2020-07-02 11:17:23'),
(63, '19748235', '', 2, 71, '99', '217', '18', '100', 'Cod', 'Ongoing', '20:00:00', '2 Jul 2020', '2020-07-02 11:26:03'),
(64, '61397485', '', 75, 0, '500', '', '90', '100', '', 'Ongoing', '16:20:00', '', '2020-07-03 05:56:08'),
(65, '26571394', '', 75, 115, '500', '690', '90', '100', 'Cod', 'Ongoing', '18:00:00', '3 Jul 2020', '2020-07-03 05:59:40'),
(66, '92716845', '', 75, 184, '599', '807', '108', '100', 'Cod', 'Ongoing', '18:00:00', '3 Jul 2020', '2020-07-03 06:00:14'),
(67, '48156739', '', 75, 0, '1797', '', '323', '100', '', 'Ongoing', '18:00:00', '', '2020-07-03 07:13:14'),
(68, '35417682', '', 75, 0, '896', '', '161', '100', '', 'Ongoing', '18:00:00', '', '2020-07-03 07:14:05'),
(69, '29876354', '', 75, 183, '698', '', '126', '100', 'Cod', 'Ongoing', '00:00:00', '', '2020-07-03 07:16:56'),
(70, '98234617', '', 75, 182, '599', '', '108', '100', 'Cod', 'Ongoing', '18:00:00', '3 Jul 2020', '2020-07-03 08:53:56'),
(71, '69534182', '', 75, 182, '99', '', '18', '100', 'Cod', 'Ongoing', '20:00:00', '3 Jul 2020', '2020-07-03 08:56:56'),
(72, '27438695', '', 75, 182, '599', '', '108', '100', 'Cod', 'Ongoing', '18:00:00', '3 Jul 2020', '2020-07-03 09:12:37'),
(73, '79354281', '', 0, 0, '', '', '', '', '', 'Ongoing', '00:00:00', '', '2020-07-03 09:14:16'),
(74, '91874365', '1254895478', 3, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '09:00:00', '25-05-2020', '2020-07-03 09:14:49'),
(75, '65792431', '', 75, 182, '599', '', '108', '100', 'Cod', 'Ongoing', '18:00:00', '3 Jul 2020', '2020-07-03 09:18:42'),
(76, '84692137', '', 0, 0, '', '', '', '', '', 'Ongoing', '00:00:00', '', '2020-07-03 09:19:08'),
(77, '45879213', '', 75, 184, '599', '807', '108', '100', 'Cod', 'Ongoing', '20:00:00', '3 Jul 2020', '2020-07-03 09:58:33'),
(78, '31465278', NULL, 5, 104, '1000', '1280', '180', '100', 'Cod', 'Ongoing', '13:00:00', '5 July, 2020', '2020-07-03 10:01:23'),
(79, '91635472', '', 75, 184, '599', '807', '108', '100', 'Cod', 'Ongoing', '20:00:00', '3 Jul 2020', '2020-07-03 12:07:05'),
(80, '19376284', '', 75, 184, '500', '690', '90', '100', 'Cod', 'Cancelled', '20:00:00', '3 Jul 2020', '2020-07-03 12:25:54'),
(81, '13759428', '', 75, 182, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '3 Jul 2020', '2020-07-03 12:35:52'),
(82, '96347512', '', 75, 182, '599', '807', '108', '100', 'Cod', 'Ongoing', '20:00:00', '3 Jul 2020', '2020-07-03 12:43:07'),
(83, '76285314', '', 75, 115, '599', '807', '108', '100', 'Cod', 'Ongoing', '00:00:00', '3 Jul 2020', '2020-07-03 13:07:39'),
(84, '73581296', '1254895478', 3, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '09:00:00', '25-05-2020', '2020-07-03 13:12:09'),
(85, '15238476', '1254895478', 3, 1, '99', '245', '150', '45', 'Cod', 'Ongoing', '11:00:00', '14-5-2020', '2020-07-03 13:12:28'),
(86, '43297165', '', 75, 115, '599', '807', '108', '100', 'Cod', 'Ongoing', '11:00:00', '8-7-2020', '2020-07-03 13:19:33'),
(87, '38261597', '', 75, 185, '599', '807', '108', '100', 'Cod', 'Ongoing', '20:00:00', '6 Jul 2020', '2020-07-06 11:16:29'),
(88, '93817546', '', 75, 193, '599', '807', '108', '100', 'Cod', 'Ongoing', '20:00:00', '10 Jul 2020', '2020-07-07 08:27:41'),
(89, '53967821', '', 75, 193, '1999', '2459', '360', '100', 'Cod', 'Ongoing', '20:00:00', '7 Jul 2020', '2020-07-07 09:20:21'),
(90, '79463518', '', 75, 115, '599', '807', '108', '100', 'Cod', 'Ongoing', '00:00:00', '7 Jul 2020', '2020-07-07 11:49:52'),
(91, '87163524', '', 51, 76, '297', '450', '53', '100', 'Cod', 'Ongoing', '20:00:00', '9 Jul 2020', '2020-07-09 12:39:06'),
(92, '34159862', '', 75, 201, '99', '217', '18', '100', 'Cod', 'Ongoing', '20:00:00', '14 Jul 2020', '2020-07-14 08:44:40'),
(93, '75684193', '', 75, 201, '500', '690', '90', '100', 'Cod', 'Ongoing', '18:00:00', '14 Jul 2020', '2020-07-14 08:54:49'),
(94, '46895732', '', 75, 201, '500', '690', '90', '100', 'Cod', 'Ongoing', '20:00:00', '14 Jul 2020', '2020-07-14 09:00:03'),
(95, '39815246', '', 75, 204, '500', '690', '90', '100', 'Cod', 'Ongoing', '18:00:00', '14 Jul 2020', '2020-07-14 09:07:22'),
(96, '79562138', '', 75, 204, '500', '690', '90', '100', 'Cod', 'Ongoing', '20:00:00', '14 Jul 2020', '2020-07-14 09:12:53'),
(97, '53267194', '', 75, 204, '500', '690', '90', '100', 'Cod', 'Ongoing', '20:00:00', '14 Jul 2020', '2020-07-14 09:19:17'),
(98, '79436581', '', 44, 205, '99', '217', '18', '100', '', 'Ongoing', '18:00:00', '17 Jul 2020', '2020-07-17 11:26:52'),
(99, '63415982', '', 44, 205, '500', '690', '90', '100', 'Cod', 'Ongoing', '20:00:00', '17 Jul 2020', '2020-07-17 11:29:56'),
(100, '42598317', '', 51, 80, '1900', '2342', '342', '100', 'Cod', 'Cancelled', '00:00:00', '17 Jul 2020', '2020-07-17 13:05:36'),
(101, '95826471', '', 51, 80, '599', '807', '108', '100', '', 'Ongoing', '20:00:00', '23 Jul 2020', '2020-07-17 13:55:42'),
(102, '21894365', '', 75, 207, '500', '690', '90', '100', 'Cod', 'Ongoing', '11:00:00', '17 Jul 2020', '2020-07-17 17:45:34'),
(103, '75938216', '', 75, 208, '500', '690', '90', '100', 'Cod', 'Ongoing', '13:00:00', '17 Jul 2020', '2020-07-17 17:47:01'),
(104, '32915768', '', 75, 208, '1797', '2220', '323', '100', 'Cod', 'Ongoing', '11:00:00', '17 Jul 2020', '2020-07-17 17:47:33'),
(105, '98475126', '', 51, 80, '599', '807', '108', '100', 'Cod', 'Ongoing', '20:00:00', '23 Jul 2020', '2020-07-18 10:06:35'),
(106, '68729543', '', 75, 210, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '24 Jul 2020', '2020-07-18 10:08:12'),
(107, '49785216', '', 51, 80, '1900', '2342', '342', '100', 'Cod', 'Ongoing', '00:00:00', '30 Jul 2020', '2020-07-18 11:46:36'),
(108, '37459618', '', 51, 96, '99', '217', '18', '100', '', 'Ongoing', '13:00:00', '30 Jul 2020', '2020-07-18 12:12:43'),
(109, '15827946', '', 75, 211, '1193', '1508', '215', '100', 'Cod', 'Cancelled', '20:00:00', '19 Jul 2020', '2020-07-19 09:10:25'),
(110, '62953718', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Cancelled', '18:00:00', '20 Jul 2020', '2020-07-20 08:05:02'),
(111, '42596178', '', 83, 213, '500', '690', '90', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:39:25'),
(112, '84137562', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:42:39'),
(113, '63812475', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:48:53'),
(114, '15432869', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:53:44'),
(115, '85749361', '', 83, 212, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:55:03'),
(116, '16342789', '', 83, 212, '599', '807', '108', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:55:36'),
(117, '81379652', '', 83, 213, '1198', '1514', '216', '100', 'Cod', 'Cancelled', '20:00:00', '20 Jul 2020', '2020-07-20 08:56:16'),
(118, '82493567', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Ongoing', '00:00:00', '20 Jul 2020', '2020-07-20 09:03:02'),
(119, '73261549', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Cancelled', '00:00:00', '20 Jul 2020', '2020-07-20 09:06:59'),
(120, '19264783', '', 83, 213, '599', '807', '108', '100', 'Cod', 'Ongoing', '00:00:00', '20 Jul 2020', '2020-07-20 09:22:36'),
(121, '16273958', '', 51, 96, '99', '217', '18', '100', 'Cod', 'Cancelled', '11:00:00', '30 Jul 2020', '2020-07-20 11:47:54'),
(122, '38269571', '', 51, 96, '99', '217', '18', '100', 'Cod', 'Ongoing', '00:00:00', '20 Jul 2020', '2020-07-20 11:52:10'),
(123, '87416523', NULL, 12, 111, '500', '690', '90', '100', 'Cod', 'Ongoing', '16:20:00', '27 July, 2020', '2020-07-25 11:00:15'),
(124, '45986713', '', 12, 215, '599', '807', '108', '100', 'Cod', 'Ongoing', '03:00:00', '25 Jul 2020', '2020-07-25 13:07:48'),
(125, '76439281', '', 3, 17, '1000', '1280', '180', '100', 'Cod', 'Ongoing', '13:00:00', '27 Jul 2020', '2020-07-27 06:18:12'),
(126, '37851942', '', 3, 17, '1000', '1280', '180', '100', 'Cod', 'Ongoing', '13:00:00', '27 Jul 2020', '2020-07-27 06:18:18'),
(127, '89325147', NULL, 3, 3, '398', '569.64', '71.64', '100', 'Cod', 'Cancelled', '11:00:00', '6 August, 2020', '2020-08-05 06:59:29'),
(128, '27961834', NULL, 12, 111, '600', '808', '108', '100', 'Online', 'Ongoing', '18:00:00', '11 August, 2020', '2020-08-08 06:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `od_order_details`
--

CREATE TABLE `od_order_details` (
  `id` int(10) NOT NULL,
  `booking_id` varchar(100) NOT NULL,
  `service_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` varchar(50) NOT NULL,
  `service_status` enum('Ongoing','Cancelled','Completed') NOT NULL DEFAULT 'Ongoing',
  `service_provider_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `od_order_details`
--

INSERT INTO `od_order_details` (`id`, `booking_id`, `service_id`, `quantity`, `price`, `service_status`, `service_provider_id`, `created_at`) VALUES
(1, '37694812', 1, 1, '99', 'Cancelled', NULL, '2020-06-15 05:30:30'),
(2, '27165493', 1, 1, '99', 'Cancelled', NULL, '2020-06-15 05:39:59'),
(3, '27165493', 2, 1, '500', 'Ongoing', NULL, '2020-06-15 05:39:59'),
(4, '35617492', 3, 1, '1400', 'Ongoing', NULL, '2020-06-15 06:43:47'),
(5, '29617345', 3, 1, '1400', 'Completed', NULL, '2020-06-15 06:46:57'),
(6, '29617345', 1, 1, '99', 'Completed', NULL, '2020-06-15 06:46:57'),
(7, '29617345', 2, 2, '500', 'Completed', NULL, '2020-06-15 06:46:57'),
(8, '49583126', 1, 1, '99', 'Cancelled', NULL, '2020-06-15 07:44:18'),
(9, '59273681', 2, 1, '500', 'Ongoing', NULL, '2020-06-15 07:49:29'),
(10, '58179634', 2, 1, '500', 'Ongoing', NULL, '2020-06-15 09:27:16'),
(11, '48679312', 1, 1, '99', 'Cancelled', NULL, '2020-06-15 09:30:15'),
(12, '23167548', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 09:33:40'),
(13, '15742938', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 09:49:19'),
(14, '18342765', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 09:49:28'),
(15, '94831765', 2, 1, '500', 'Ongoing', NULL, '2020-06-15 09:51:26'),
(16, '32974651', 1, 1, '99', 'Cancelled', NULL, '2020-06-15 09:53:29'),
(17, '67824931', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 09:57:18'),
(18, '93748521', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 09:57:42'),
(19, '34562798', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 10:05:58'),
(20, '82495731', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 10:11:16'),
(21, '42638715', 1, 1, '99', 'Completed', NULL, '2020-06-15 10:15:49'),
(22, '87452391', 1, 1, '99', 'Cancelled', NULL, '2020-06-15 10:16:18'),
(23, '39564127', 3, 1, '1400', 'Completed', 2, '2020-06-15 10:55:35'),
(24, '25693487', 1, 2, '99', 'Completed', 1, '2020-06-15 10:57:03'),
(25, '21934658', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 11:07:19'),
(26, '42536179', 1, 1, '99', 'Ongoing', NULL, '2020-06-15 15:28:20'),
(27, '46239781', 3, 1, '1400', 'Cancelled', 2, '2020-06-15 15:32:29'),
(28, '94285371', 3, 1, '1400', 'Completed', NULL, '2020-06-16 05:49:36'),
(29, '94285371', 2, 1, '500', 'Completed', NULL, '2020-06-16 05:49:36'),
(30, '71869325', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 07:11:33'),
(31, '32614795', 3, 1, '1400', 'Cancelled', 2, '2020-06-16 07:12:43'),
(32, '32614795', 2, 1, '500', 'Cancelled', 1, '2020-06-16 07:12:43'),
(33, '89436275', 1, 1, '99', 'Ongoing', NULL, '2020-06-16 08:02:25'),
(34, '76598312', 2, 1, '500', 'Cancelled', 1, '2020-06-16 08:06:22'),
(35, '76598312', 3, 2, '1400', 'Cancelled', 2, '2020-06-16 08:06:22'),
(36, '12573869', 2, 1, '500', 'Cancelled', NULL, '2020-06-16 08:06:56'),
(37, '28674135', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 08:26:40'),
(38, '73861495', 2, 1, '500', 'Cancelled', NULL, '2020-06-16 08:32:45'),
(39, '92354718', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 08:37:32'),
(40, '92354718', 2, 1, '500', 'Cancelled', NULL, '2020-06-16 08:37:32'),
(41, '62734185', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 09:14:35'),
(42, '63547981', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 09:20:04'),
(43, '13897654', 2, 1, '500', 'Completed', 1, '2020-06-16 09:33:18'),
(44, '49317586', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 11:04:51'),
(45, '49317586', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 11:04:51'),
(46, '48769153', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 11:05:30'),
(47, '48769153', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 11:05:30'),
(48, '15386247', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 11:10:13'),
(49, '76482395', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 11:12:21'),
(50, '76482395', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 11:12:21'),
(51, '24958317', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 11:20:17'),
(52, '24958317', 1, 1, '99', 'Ongoing', NULL, '2020-06-16 11:20:17'),
(53, '94235867', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 11:22:57'),
(54, '94235867', 1, 1, '99', 'Cancelled', NULL, '2020-06-16 11:22:57'),
(55, '42391586', 2, 1, '500', 'Ongoing', NULL, '2020-06-16 11:38:05'),
(56, '42391586', 3, 1, '1400', 'Ongoing', NULL, '2020-06-16 11:38:05'),
(57, '67342891', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 13:01:31'),
(58, '51843279', 2, 2, '500', 'Cancelled', NULL, '2020-06-16 13:25:06'),
(59, '93162875', 3, 1, '1400', 'Cancelled', NULL, '2020-06-16 13:51:36'),
(60, '93162875', 1, 2, '99', 'Cancelled', NULL, '2020-06-16 13:51:36'),
(61, '42358697', 1, 1, '99', 'Ongoing', NULL, '2020-06-16 14:11:48'),
(62, '42358697', 2, 1, '500', 'Cancelled', NULL, '2020-06-16 14:11:48'),
(63, '76914325', 1, 1, '99', 'Cancelled', 1, '2020-06-19 06:03:30'),
(64, '76914325', 2, 1, '500', 'Cancelled', 1, '2020-06-19 06:03:30'),
(65, '76914325', 3, 2, '1400', 'Cancelled', 2, '2020-06-19 06:03:30'),
(66, '95168327', 1, 1, '99', 'Cancelled', NULL, '2020-06-19 06:26:01'),
(67, '98264713', 2, 1, '500', 'Cancelled', NULL, '2020-06-19 06:29:06'),
(68, '19367284', 2, 1, '500', 'Cancelled', 1, '2020-06-19 06:45:51'),
(69, '19367284', 3, 1, '1400', 'Cancelled', 1, '2020-06-19 06:45:51'),
(70, '38476912', 1, 1, '99', 'Cancelled', 1, '2020-06-19 06:53:57'),
(71, '86793154', 3, 1, '1400', 'Ongoing', NULL, '2020-06-22 12:47:00'),
(72, '86793154', 2, 1, '500', 'Ongoing', NULL, '2020-06-22 12:47:00'),
(73, '37186294', 3, 1, '1400', 'Cancelled', NULL, '2020-06-22 12:48:25'),
(74, '37186294', 2, 1, '500', 'Cancelled', NULL, '2020-06-22 12:48:25'),
(75, '31946785', 1, 1, '99', 'Ongoing', NULL, '2020-06-23 13:16:26'),
(76, '31946785', 2, 1, '500', 'Ongoing', 1, '2020-06-23 13:16:26'),
(77, '48192357', 1, 3, '99', 'Ongoing', NULL, '2020-06-24 13:48:28'),
(78, '48192357', 2, 1, '500', 'Ongoing', NULL, '2020-06-24 13:48:28'),
(79, '52674931', 1, 1, '99', 'Ongoing', NULL, '2020-06-29 08:17:40'),
(80, '86492137', 1, 1, '99', 'Ongoing', 4, '2020-06-29 08:18:02'),
(81, '48392765', 2, 1, '500', 'Ongoing', NULL, '2020-06-30 13:12:00'),
(82, '16725934', 1, 1, '99', 'Ongoing', NULL, '2020-07-01 13:38:34'),
(83, '36548291', 2, 1, '500', 'Ongoing', NULL, '2020-07-02 11:10:04'),
(84, '36548291', 1, 1, '99', 'Ongoing', NULL, '2020-07-02 11:10:04'),
(85, '26593471', 1, 5, '99', 'Ongoing', NULL, '2020-07-02 11:17:23'),
(86, '26593471', 2, 1, '500', 'Ongoing', NULL, '2020-07-02 11:17:23'),
(87, '19748235', 1, 1, '99', 'Ongoing', NULL, '2020-07-02 11:26:03'),
(88, '61397485', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 05:56:08'),
(89, '26571394', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 05:59:40'),
(90, '92716845', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 06:00:14'),
(91, '92716845', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 06:00:14'),
(92, '48156739', 2, 3, '500', 'Ongoing', NULL, '2020-07-03 07:13:14'),
(93, '48156739', 1, 3, '99', 'Ongoing', NULL, '2020-07-03 07:13:14'),
(94, '35417682', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 07:14:05'),
(95, '35417682', 1, 4, '99', 'Ongoing', NULL, '2020-07-03 07:14:05'),
(96, '29876354', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 07:16:56'),
(97, '29876354', 1, 2, '99', 'Ongoing', NULL, '2020-07-03 07:16:56'),
(98, '98234617', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 08:53:56'),
(99, '98234617', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 08:53:56'),
(100, '69534182', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 08:56:56'),
(101, '27438695', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 09:12:37'),
(102, '27438695', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 09:12:37'),
(103, '79354281', 0, 0, '', 'Ongoing', NULL, '2020-07-03 09:14:16'),
(104, '91874365', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 09:14:49'),
(105, '65792431', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 09:18:42'),
(106, '65792431', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 09:18:42'),
(107, '84692137', 0, 0, '', 'Ongoing', NULL, '2020-07-03 09:19:08'),
(108, '45879213', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 09:58:33'),
(109, '45879213', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 09:58:33'),
(110, '31465278', 2, 2, '500', 'Ongoing', NULL, '2020-07-03 10:01:23'),
(111, '91635472', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 12:07:05'),
(112, '91635472', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 12:07:05'),
(113, '19376284', 2, 1, '500', 'Cancelled', NULL, '2020-07-03 12:25:54'),
(114, '13759428', 2, 1, '500', 'Cancelled', NULL, '2020-07-03 12:35:52'),
(115, '13759428', 1, 1, '99', 'Cancelled', NULL, '2020-07-03 12:35:52'),
(116, '96347512', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 12:43:07'),
(117, '96347512', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 12:43:07'),
(118, '76285314', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 13:07:39'),
(119, '76285314', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 13:07:39'),
(120, '73581296', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 13:12:09'),
(121, '15238476', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 13:12:28'),
(122, '43297165', 2, 1, '500', 'Ongoing', NULL, '2020-07-03 13:19:33'),
(123, '43297165', 1, 1, '99', 'Ongoing', NULL, '2020-07-03 13:19:33'),
(124, '38261597', 2, 1, '500', 'Ongoing', NULL, '2020-07-06 11:16:29'),
(125, '38261597', 1, 1, '99', 'Ongoing', NULL, '2020-07-06 11:16:29'),
(126, '93817546', 1, 1, '99', 'Ongoing', 4, '2020-07-07 08:27:41'),
(127, '93817546', 2, 1, '500', 'Ongoing', 4, '2020-07-07 08:27:41'),
(128, '53967821', 1, 1, '99', 'Ongoing', NULL, '2020-07-07 09:20:21'),
(129, '53967821', 2, 1, '500', 'Ongoing', NULL, '2020-07-07 09:20:21'),
(130, '53967821', 3, 1, '1400', 'Ongoing', NULL, '2020-07-07 09:20:21'),
(131, '79463518', 2, 1, '500', 'Ongoing', NULL, '2020-07-07 11:49:52'),
(132, '79463518', 1, 1, '99', 'Ongoing', NULL, '2020-07-07 11:49:52'),
(133, '87163524', 1, 3, '99', 'Ongoing', NULL, '2020-07-09 12:39:06'),
(134, '34159862', 1, 1, '99', 'Ongoing', NULL, '2020-07-14 08:44:40'),
(135, '75684193', 2, 1, '500', 'Ongoing', NULL, '2020-07-14 08:54:49'),
(136, '46895732', 2, 1, '500', 'Ongoing', NULL, '2020-07-14 09:00:03'),
(137, '39815246', 2, 1, '500', 'Ongoing', NULL, '2020-07-14 09:07:22'),
(138, '79562138', 2, 1, '500', 'Ongoing', NULL, '2020-07-14 09:12:53'),
(139, '53267194', 2, 1, '500', 'Ongoing', NULL, '2020-07-14 09:19:17'),
(140, '79436581', 1, 1, '99', 'Ongoing', NULL, '2020-07-17 11:26:52'),
(141, '63415982', 2, 1, '500', 'Ongoing', NULL, '2020-07-17 11:29:56'),
(142, '42598317', 2, 1, '500', 'Cancelled', NULL, '2020-07-17 13:05:36'),
(143, '42598317', 3, 1, '1400', 'Cancelled', NULL, '2020-07-17 13:05:36'),
(144, '95826471', 1, 1, '99', 'Ongoing', NULL, '2020-07-17 13:55:42'),
(145, '95826471', 2, 1, '500', 'Ongoing', NULL, '2020-07-17 13:55:42'),
(146, '21894365', 2, 1, '500', 'Ongoing', NULL, '2020-07-17 17:45:34'),
(147, '75938216', 2, 1, '500', 'Ongoing', NULL, '2020-07-17 17:47:01'),
(148, '32915768', 1, 3, '99', 'Ongoing', NULL, '2020-07-17 17:47:33'),
(149, '32915768', 2, 3, '500', 'Ongoing', NULL, '2020-07-17 17:47:33'),
(150, '98475126', 1, 1, '99', 'Ongoing', NULL, '2020-07-18 10:06:35'),
(151, '98475126', 2, 1, '500', 'Ongoing', NULL, '2020-07-18 10:06:35'),
(152, '68729543', 2, 1, '500', 'Cancelled', NULL, '2020-07-18 10:08:12'),
(153, '68729543', 1, 1, '99', 'Cancelled', NULL, '2020-07-18 10:08:12'),
(154, '49785216', 2, 1, '500', 'Ongoing', NULL, '2020-07-18 11:46:36'),
(155, '49785216', 3, 1, '1400', 'Ongoing', NULL, '2020-07-18 11:46:36'),
(156, '37459618', 1, 1, '99', 'Ongoing', NULL, '2020-07-18 12:12:43'),
(157, '15827946', 1, 7, '99', 'Cancelled', NULL, '2020-07-19 09:10:25'),
(158, '15827946', 2, 1, '500', 'Cancelled', NULL, '2020-07-19 09:10:25'),
(159, '62953718', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:05:02'),
(160, '62953718', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 08:05:02'),
(161, '42596178', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:39:25'),
(162, '84137562', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:42:39'),
(163, '84137562', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 08:42:39'),
(164, '63812475', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:48:53'),
(165, '63812475', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 08:48:53'),
(166, '15432869', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:53:44'),
(167, '15432869', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 08:53:44'),
(168, '85749361', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:55:03'),
(169, '85749361', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 08:55:03'),
(170, '16342789', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 08:55:36'),
(171, '16342789', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 08:55:36'),
(172, '81379652', 1, 2, '99', 'Cancelled', NULL, '2020-07-20 08:56:16'),
(173, '81379652', 2, 2, '500', 'Cancelled', NULL, '2020-07-20 08:56:16'),
(174, '82493567', 2, 1, '500', 'Ongoing', NULL, '2020-07-20 09:03:02'),
(175, '82493567', 1, 1, '99', 'Ongoing', NULL, '2020-07-20 09:03:02'),
(176, '73261549', 2, 1, '500', 'Cancelled', NULL, '2020-07-20 09:06:59'),
(177, '73261549', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 09:06:59'),
(178, '19264783', 2, 1, '500', 'Ongoing', NULL, '2020-07-20 09:22:37'),
(179, '19264783', 1, 1, '99', 'Ongoing', NULL, '2020-07-20 09:22:37'),
(180, '16273958', 1, 1, '99', 'Cancelled', NULL, '2020-07-20 11:47:54'),
(181, '38269571', 1, 1, '99', 'Ongoing', NULL, '2020-07-20 11:52:10'),
(182, '87416523', 2, 1, '500', 'Ongoing', NULL, '2020-07-25 11:00:15'),
(183, '45986713', 1, 1, '99', 'Ongoing', NULL, '2020-07-25 13:07:48'),
(184, '45986713', 2, 1, '500', 'Ongoing', NULL, '2020-07-25 13:07:48'),
(185, '76439281', 2, 2, '500', 'Ongoing', NULL, '2020-07-27 06:18:12'),
(186, '37851942', 2, 2, '500', 'Ongoing', NULL, '2020-07-27 06:18:18'),
(187, '89325147', 1, 2, '99', 'Cancelled', 4, '2020-08-05 06:59:29'),
(188, '89325147', 10, 1, '200', 'Cancelled', 7, '2020-08-05 06:59:29'),
(189, '27961834', 13, 1, '100', 'Ongoing', NULL, '2020-08-08 06:22:54'),
(190, '27961834', 2, 1, '500', 'Ongoing', NULL, '2020-08-08 06:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `od_review`
--

CREATE TABLE `od_review` (
  `review_id` int(10) NOT NULL,
  `service_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `review` varchar(200) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `od_review`
--

INSERT INTO `od_review` (`review_id`, `service_id`, `user_id`, `review`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'good services', '3', '2020-05-06 07:07:22', '2020-05-06 10:49:05'),
(2, 1, 1, 'average serices', '2', '2020-05-06 07:15:38', '2020-05-06 10:48:56'),
(5, 2, 2, 'good service ', '3.0', '2020-05-06 07:23:52', '2020-05-06 10:48:37'),
(8, 2, 1, 'awesome service', '4', '2020-05-06 10:47:55', '2020-05-06 11:50:47'),
(9, 1, 2, 'first booking', '3.5', '2020-05-08 12:00:29', '0000-00-00 00:00:00'),
(10, 2, 22, 'Good service', '3', '2020-05-25 10:48:54', '0000-00-00 00:00:00'),
(11, 1, 22, 'Out standing Service.', '4', '2020-05-27 15:10:01', '0000-00-00 00:00:00'),
(12, 2, 5, 'great service', '4', '2020-06-03 18:13:01', '0000-00-00 00:00:00'),
(13, 1, 44, '', '3.5', '2020-06-04 12:37:06', '0000-00-00 00:00:00'),
(14, 1, 44, 'Nice experience', '4.0', '2020-06-04 12:37:32', '0000-00-00 00:00:00'),
(15, 1, 44, 'Okay', '2.0', '2020-06-04 12:41:38', '0000-00-00 00:00:00'),
(16, 1, 46, 'Nic', '2', '2020-06-04 13:05:01', '0000-00-00 00:00:00'),
(17, 2, 1, 'awesome service', '5', '2020-06-12 09:59:20', '0000-00-00 00:00:00'),
(18, 3, 51, 'Best Service', '5.0', '2020-06-12 10:17:02', '0000-00-00 00:00:00'),
(19, 2, 1, 'awesome service', '5', '2020-06-12 10:17:44', '0000-00-00 00:00:00'),
(20, 2, 67, '', '4.0', '2020-06-16 08:46:55', '0000-00-00 00:00:00'),
(21, 3, 67, '', '2.5', '2020-06-16 08:46:56', '0000-00-00 00:00:00'),
(22, 2, 67, '', '4.5', '2020-06-16 08:47:06', '0000-00-00 00:00:00'),
(23, 1, 2, '', '1.0', '2020-06-29 12:31:39', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `od_services`
--

CREATE TABLE `od_services` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `time` varchar(100) NOT NULL,
  `recommended` varchar(50) NOT NULL,
  `description` text,
  `icon_url` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_services`
--

INSERT INTO `od_services` (`id`, `category_id`, `subcategory_id`, `service_title`, `price`, `time`, `recommended`, `description`, `icon_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Fan Installation', 99, '30', '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.', '82639189ca5b72b476a46c94d605003e.jpg', 'Active', '2020-05-04 10:45:24', '2020-08-05 03:49:29'),
(2, 1, 1, 'Fan Replacement', 500, '20', '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose', '182ad4b65c90c684b7afcc4dcec46900.jpg', 'Active', '2020-05-04 10:48:47', '2020-06-30 05:52:42'),
(3, 10, 5, 'Gel and Spray Treatment', 1400, '15', '1', 'Bayer gel applied in cabinets, under tables, drawers and similar spaces.\r\nOdourless spray on windows, balconies, bathrooms etc.', '4d8d92a06f8cdacbff4336df97c2e849.png', 'Active', '2020-06-08 11:28:50', '2020-08-05 03:55:57'),
(5, 1, 2, 'Tubelight 1', 100, '10', '1', 'test', '3aeaa95f104e7d7e5ddff32a8577810b.jpg', 'Active', '2020-08-04 10:49:39', '2020-08-05 05:09:43'),
(11, 20, 8, 'All TV Repairs At Your Doorstep', 500, '30', '1', 'Hi Hello', '86cacfedcf0d2bdb26eae463ea4950ee.jpg', 'Active', '2020-08-07 12:05:09', NULL),
(12, 1, 3, 'Switch CFL to LED', 125, '10', '1', 'Save Energy, Reduce Light Bills by making the right choice of switching from CFL to LED. Price is per switch.', 'ed3af29a40cfca7a443e0c43bcea157d.jpg', 'Active', '2020-08-07 18:34:59', NULL),
(13, 1, 3, 'Bulb Replacement - Upto 5 bulbs - No Bulb Holder', 100, '10', '1', 'Our Electricians will replace upto 5 bulbs. This service include only Bulb Changing and does not include Bulb Holder.', '0f68180cda152579aedc8f0413b6cc10.jpg', 'Active', '2020-08-07 18:39:32', '2020-08-07 19:09:43'),
(14, 1, 3, 'Bulb Holder', 100, '10', '1', 'Our service includes creating the cavity and the installing lock. This is for 1 Replacement.', 'f75cd76686bc321a566e10fcb070a5fe.jpg', 'Active', '2020-08-07 18:42:23', NULL),
(15, 1, 3, 'Decorative Lighting / Ceiling Lights', 129, '10', '1', 'Illuminate your home\'s with light repair or new light installation services - the right combination of light suggestions to your decor - choose from general, ambient, mood, task and accent lighting fixtures to brighten up your home and office.', '2a7d0a86c97795cc084e5fbd97371719.jpg', 'Active', '2020-08-07 18:46:16', NULL),
(16, 1, 3, 'Tubelight', 100, '10', '1', 'Our service includes Installation / Repair / Replacement.\r\nBulb Holder - Additional\r\nReplacing CFL to LED - Additional', '57d5abc9af15d2baeecb4605dfa4049f.jpg', 'Active', '2020-08-07 18:50:32', NULL),
(17, 1, 4, 'Fuse replacement', 99, '10', '1', 'Fuse replacement', '6a1322a52c7a89a05442dbaf6e563239.jpg', 'Active', '2020-08-10 05:14:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_services_provider`
--

CREATE TABLE `od_services_provider` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `profile_url` varchar(100) DEFAULT NULL,
  `addressline1` varchar(100) NOT NULL,
  `addressline2` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postcode` int(10) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_services_provider`
--

INSERT INTO `od_services_provider` (`id`, `category_id`, `subcategory_id`, `name`, `email`, `phone_number`, `profile_url`, `addressline1`, `addressline2`, `city`, `postcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'rahul raj', 'rahul@gmail.com', '2569875645', 'e14fb62c7866b804d74b9a50d557e8b2.jpg', 'sector 22', 'near hospital gali number4', 'noida', 201301, 'Active', '2020-05-26 11:33:18', NULL),
(2, 10, 6, 'Bhavesh Joshi', 'ankit.designoweb@gmail.com', '1234567892', '16e1aba8b9a22b0aa9dd6dc46a892d11.jpg', 'shipra suncity, regalia heights', 'test', 'Ghaziabad', 201014, 'Active', '2020-06-08 12:20:11', NULL),
(4, 1, 1, 'Lab', 'laxmi.bheda@gmail.com', '9833180638', 'f64f0a0188be4b2e02c63031e1f7d309.JPG', '68A Rungta House, Rungta Lane, Nepeansea Road,', 'Ground Floor, Flat No 2,', 'Mumbai', 400006, 'Active', '2020-06-29 11:24:49', NULL),
(5, 16, 6, 'Mr Wick', 'ankit1.designoweb@gmail.com', '9971599865', 'b1b2e153e03aab8261ab326befd22217.jpg', 'Regent, Shipra Suncity', 'Indirapuram, Ghaziabad', 'Ghaziabad', 201014, 'Active', '2020-06-30 06:12:04', NULL),
(6, 1, 2, 'Hilda', 'ankit.designoweb@gmail.com', '9971599865', '9ef7520bf5d0c5f4f1463b1fd1b96c45.jpg', 'Shipra Neo, near Shipra Suncity', 'Indirapuram', 'test', 201010, 'Active', '2020-08-05 07:11:25', NULL),
(7, 19, 7, 'varun', 'varun12@gmail.com', '8273402191', '35fbe0e24ddbd8ebccb74170074aca53.jpg', 'noida sector 66', 'near metro', 'noida', 201301, 'Active', '2020-08-05 07:11:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_service_banner`
--

CREATE TABLE `od_service_banner` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_service_banner`
--

INSERT INTO `od_service_banner` (`id`, `service_id`, `image_url`, `created`, `updated_at`) VALUES
(1, 1, '65a541eed2a0b3701c41419b6d9284b7.jpg', '2020-05-04 10:45:24', NULL),
(2, 1, 'a8f3832ebb8a16a5a0f8af9f374326c2.jpg', '2020-05-04 10:48:47', NULL),
(3, 2, 'b18017b677ba3abfc51df73b3f0afde3.jpg', '2020-05-04 10:48:47', NULL),
(4, 2, '633e0ca6d522addf9a56348620fd3a21.jpg', '2020-05-04 10:48:47', NULL),
(5, 3, '32d47986ea493875e0d8cc3cea6ecdba.jpg', '2020-06-08 11:28:50', NULL),
(6, 3, 'dce1d9e09fd4e98c933fa2c2b1f0428f.jpg', '2020-06-08 11:28:50', NULL),
(8, 5, '16820.jpg', '2020-08-04 10:49:39', NULL),
(15, 11, '10602.png', '2020-08-07 12:05:09', NULL),
(16, 12, '25971.jpg', '2020-08-07 18:34:59', NULL),
(17, 13, '31543.jpg', '2020-08-07 18:39:32', NULL),
(18, 14, '4698.jpg', '2020-08-07 18:42:23', NULL),
(19, 15, '37699.jpg', '2020-08-07 18:46:16', NULL),
(20, 16, '53253.jpg', '2020-08-07 18:50:32', NULL),
(21, 17, '48402.jpg', '2020-08-10 05:14:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_service_charges`
--

CREATE TABLE `od_service_charges` (
  `id` int(11) NOT NULL,
  `delivery_charge` int(10) NOT NULL,
  `tax_charge` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_service_charges`
--

INSERT INTO `od_service_charges` (`id`, `delivery_charge`, `tax_charge`, `created_at`, `updated_at`) VALUES
(1, 100, 20, '2020-05-07 07:09:51', '2020-08-10 05:19:26');

-- --------------------------------------------------------

--
-- Table structure for table `od_settings`
--

CREATE TABLE `od_settings` (
  `id` int(11) NOT NULL,
  `content_name` varchar(100) DEFAULT NULL,
  `content_title` varchar(100) DEFAULT NULL,
  `content_description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_settings`
--

INSERT INTO `od_settings` (`id`, `content_name`, `content_title`, `content_description`, `created_at`, `updated_at`) VALUES
(1, 'About-us', 'About-us', '<p xss=\"removed\"><b><span xss=\"removed\" xss=removed>Hammer & Spanner </span></b><span xss=\"removed\" xss=removed>is Facility management is an organization that aids in enhancing the quality of life and improves the productivity of the core business by integrating people, place, process, and technology within the facility. It involves the maintenance of the property, buildings, equipment, and optimization of inventory and other operational elements. We strongly comply with government regulations to ensure safe working conditions and use facility management software to ensure efficient operation, cost savings, and improve productivity.</span></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>The company offers customized integrated facility management solutions to suit the client’s needs. We deliver varied services ranging from engineering services, soft services, workplace solutions, and space/occupancy services through dedicated on-site teams backed by a best practices platform.</span></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>Hammer & Spanner offers several facility management services including cleaning and hygiene maintenance, commercial and office facility management, predictive mechanical and electrical maintenance services, HVAC management, and AMC (Annual Maintenance Contract) services. The company provides clients with real-time management information by using computer-aided facilities management (CAFM) system. </span></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>There is constant monitoring of our services and improvisation through the implementation of management processes, training, and skill development of the workforce. The company emphasizes on customer satisfaction by having a fully integrated customer complaint management process to address client grievances and ensure quick resolution within 24 hours.</span></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>The company specializes in offering a wide spectrum of services including integrated services, total facility management, mechanized housekeeping, shop floor cleaning, paint shop maintenance, production support, airport maintenance, and railway coach and station cleaning. </span></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>As Specialists in mechanized housekeeping, we use a combination of manpower and machines to provide the best housekeeping service.</span></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>We comply with all health, safety, and environmental regulations and follow all local labor norms and laws. To offer seamless service, the company provides experienced managers who act as a single point of contact from initial setup to day-to-day service operations.</span></p><p xss=\"removed\"><br></p><p xss=\"removed\"><b><span xss=\"removed\" xss=removed>Aevitas Facility Solutions (OPC) Private Limited</span></b><span xss=\"removed\" xss=removed> provides facility management services under the business name of Hammer & Spanner. The company has a workforce strength of over XX employees working for over XX customers across India. Hammer & Spanner\'s services ensure that their clients receive the best service by deploying teams comprising of highly skilled personnel. The services provided by the company include critical systems management, HVAC, electrical, fire systems, sewage treatment, utilities management, industrial housekeeping, and waste-water management.</span></p><p xss=\"removed\"><b><br></b></p><p xss=\"removed\"><b><span xss=\"removed\" xss=removed>Our Services include,</span></b><br></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>Disinfection Services: Disinfection is a workplace/office cleaning process involving the fumigation of the entire premises killing 99.9% germs in the process.   Fumigation is a method of gaseous sterilisation and decontamination, useful for killing microbes - bacteria, viruses and fungi, and preventing microbial growth in air, on the walls or on the floor.</span></p><p xss=\"removed\"><br></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>Sanitisation Services: A workplace/office cleaning process to sanitise and decontaminate the entire premises killing 99.9% germs in the process.   Sanitisation is a method of liquid sterilisation, useful for killing microbes and preventing microbial growth on all surfaces of the premises - workstations, doors, handles, glass, W.C., health faucets, etc.</span></p><p xss=\"removed\"><br></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>Personal Hygiene Services: Recent events have resulted in a significantly heightened sense of personal hygiene. Today, people have started to use more specific products related to personal hygiene and these are now in demand. Through UDS supply chain management organisation, we have partner relationships with the manufacturers of most leading brands, and, within the limits of supply, we are usually able to source quickly and efficiently in support of our customers</span></p><p xss=\"removed\"><br></p><p xss=\"removed\"><span xss=\"removed\" xss=removed>Deep Cleaning: Deep cleaning involves a thorough cleaning/cleansing of all the areas in the premises to remove grime and dirt that cannot be removed by regular cleaning. These services can be availed by anyone who is currently managing a commercial space</span></p><ul><li><span xss=\"removed\" xss=removed>Airports</span></li><li><span xss=\"removed\" xss=removed>IT Services and Business Parks</span></li><li><span xss=\"removed\" xss=removed>Manufacturing Setup</span></li><li><span xss=\"removed\" xss=removed>BFSI</span></li><li><span xss=\"removed\" xss=removed>Hospitality</span></li><li><span xss=\"removed\" xss=removed>Warehousing and Retail</span></li><li><span xss=\"removed\" xss=removed>Residential  Healthcare and pharmaceuticals</span></li><li><span xss=\"removed\" xss=removed>Government Organisations</span></li><li><span xss=\"removed\" xss=removed>Educational institutions</span></li></ul>', '2020-05-01 08:23:22', '2020-07-02 13:55:41'),
(2, 'Terms and Conditions', 'Terms and Conditions', '<p><span xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-05-01 08:23:58', '2020-05-01 08:26:17'),
(3, 'Privacy Policy', 'Privacy Policy', '<p><span xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p><p xss=\"removed\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', '2020-05-01 08:23:58', '2020-05-30 06:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `od_social`
--

CREATE TABLE `od_social` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sociallink` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_social`
--

INSERT INTO `od_social` (`id`, `name`, `sociallink`, `created_at`, `update_at`) VALUES
(1, 'Facebook', 'https://www.facebook.com/hammerandspannerindia', '2020-06-08 05:37:37', '2020-06-23 13:56:30'),
(2, 'Instagram', 'https://www.instagram.com/', '2020-06-08 05:37:43', '2020-06-12 15:11:31'),
(9, 'Twitter', 'https://twitter.com/', '2020-06-12 07:02:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_subcategory`
--

CREATE TABLE `od_subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_url` varchar(100) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `icon_url` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_subcategory`
--

INSERT INTO `od_subcategory` (`id`, `category_id`, `subcategory_url`, `subcategory_name`, `icon_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'switch-and-socket', 'Switch and Socket', 'f8603ff97d5750155d41d81afef1a236.png', 'Active', '2020-05-04 06:02:14', '2020-05-05 08:33:42'),
(2, 1, 'fan', 'Fan', '2b3d74092d4b00cffbae0d6ec0bc7cff.png', 'Active', '2020-05-04 06:04:02', '2020-05-05 08:33:34'),
(3, 1, 'light', 'Lighting', 'fafc574dad86fb7b48c66424cc3eafea.jpg', 'Active', '2020-05-04 06:05:02', '2020-08-07 18:25:28'),
(4, 1, 'mcb-fuse', 'MCB & Fuse', '1e36aa5990f84c6b7cbbba5f131bab77.png', 'Active', '2020-05-04 06:05:58', '2020-05-05 08:33:14'),
(5, 10, '', 'Pesticides', 'bd7454144b6212e5fa4abf9f28b18581.jpg', 'Active', '2020-06-25 05:40:55', '2020-06-30 05:46:41'),
(6, 1, '', 'Plate problem', '3ce176d8420552e27f1c1a098267c41c.jpeg', 'Active', '2020-06-30 05:52:39', '2020-06-30 07:07:24'),
(8, 20, '', 'TV Installation & Repair', '7ccd8f707d963741990d6c7ebb80b477.jpg', 'Active', '2020-08-07 12:01:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_time_slot`
--

CREATE TABLE `od_time_slot` (
  `id` int(11) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_time_slot`
--

INSERT INTO `od_time_slot` (`id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, '20:00:00', '22:00:00', 'Active', '2020-05-07 07:06:55', '2020-06-09 11:26:47'),
(2, '18:00:00', '10:00:00', 'Active', '2020-05-07 07:08:45', '2020-06-19 08:15:54'),
(3, '13:00:00', '14:00:00', 'Active', '2020-05-07 08:47:56', NULL),
(5, '11:00:00', '15:00:00', 'Active', '2020-06-04 12:18:58', '2020-06-05 04:37:58'),
(6, '03:00:00', '15:00:00', 'Active', '2020-06-04 12:18:58', '2020-06-19 06:51:08'),
(7, '16:20:00', NULL, 'Active', '2020-06-19 07:49:04', '2020-06-19 08:15:29'),
(8, '10:00:00', NULL, 'Active', '2020-07-25 13:14:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `od_users`
--

CREATE TABLE `od_users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `country_code` varchar(10) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `profile_url` longtext,
  `is_forgot` enum('Active','Inactive') DEFAULT 'Inactive',
  `source` enum('Self','Google','Facebook','Apple') NOT NULL DEFAULT 'Self',
  `is_verify` enum('Verify','NotVerify') DEFAULT 'NotVerify',
  `term` enum('Yes','No') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `od_users`
--

INSERT INTO `od_users` (`id`, `user_name`, `email`, `password`, `country_code`, `phone_number`, `status`, `profile_url`, `is_forgot`, `source`, `is_verify`, `term`, `created_at`, `updated_at`) VALUES
(1, 'Mukku', 'mukesh@gmail.com', '7676aaafb027c825bd9abab78b234070e702752f625b752e55e55b48e607e358', '91', '8273402192', 'Active', 'U-1@1501.png', 'Active', 'Self', 'NotVerify', 'Yes', '2020-05-05 04:59:45', '2020-07-16 09:24:36'),
(2, 'Signup', 'Signup@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9876543210', 'Active', 'U-2@2893.png', 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-05-05 06:16:53', '2020-06-29 10:26:41'),
(3, 'vannu', 'varun.designoweb@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1254698545', 'Active', NULL, 'Active', 'Self', 'NotVerify', 'Yes', '2020-05-05 11:23:49', '2020-06-19 05:57:50'),
(4, 'Mukku', 'sagar@gmail.com', '2558a34d4d20964ca1d272ab26ccce9511d880579593cd4c9e01ab91ed00f325', '+91', '8273402191', 'Active', 'U-4@6767.jpeg', NULL, 'Self', 'NotVerify', 'Yes', '2020-05-05 11:24:36', '2020-05-07 13:24:33'),
(5, 'Ankit Kumar', 'ankit.designoweb@gmail.com', '319a62cf8ae1307ba445313b5fe2391921b8d2ab4729a631229790c1ac694d49', '+91', '9971599865', 'Active', '1596528821.png', 'Active', 'Self', 'NotVerify', 'Yes', '2020-05-05 11:59:14', '2020-08-04 08:13:54'),
(6, 'Rohit Singh', 'rohit@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '(IN )+91', '9971654653', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-05-05 13:31:17', NULL),
(8, 'Ankit Kumar', 'ankit1.designoweb@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '9971599866', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-05-06 12:27:01', '2020-05-06 12:27:39'),
(9, 'Ankit K', 'ankit2.designoweb@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '9971599863', 'Active', 'U-9@8277.png', 'Active', 'Self', 'NotVerify', 'Yes', '2020-05-06 13:19:13', '2020-06-03 18:20:09'),
(10, 'Mukul sharma', 'bsacetmukul1995@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+355', '8909092987', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-05-06 14:08:13', NULL),
(11, 'sagarkumar', 'sagar12@gmail.com', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', '+91', '8145429812', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-05-11 09:19:45', NULL),
(12, 'Laxmi B', 'laxmi.bheda@gmail.com', '026f4e08ed7797e00253e60da3eef29dd9fced8fd0afef82799546dec86ce2d3', '+91', '9833180638', 'Active', 'U-12@7942.png', NULL, 'Self', 'NotVerify', 'Yes', '2020-05-11 12:48:19', '2020-05-11 13:30:29'),
(13, 'rosan', 'rosan@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-05-15 05:11:20', NULL),
(14, 'rosanwe', 'rosan2@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-05-15 05:13:34', NULL),
(16, 'raghu', 'raghu@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-05-15 06:37:56', NULL),
(17, 'Vipul Chauhan', 'vipul.designoweb@gmail.com', NULL, '+91', '1234567890', 'Active', 'U-17@9044.png', NULL, 'Google', 'NotVerify', NULL, '2020-05-15 06:48:26', '2020-05-27 11:13:43'),
(20, 'Hammer Spanner', 'hamandspan@gmail.com', NULL, '', '8145429813', 'Active', '0', NULL, 'Google', 'NotVerify', NULL, '2020-05-18 07:22:46', '2020-05-23 18:01:28'),
(21, 'Bhawna goyal', 'bhawna.designoweb@gmail.com', NULL, '', '', 'Active', NULL, 'Active', 'Google', 'NotVerify', NULL, '2020-05-19 06:08:43', '2020-05-27 10:45:04'),
(22, 'Rohan Singh', 'rohan.designoweb@gmail.com', '708a72077000f23773f3d1a27a20c727359ea431c72af2d913146c10d587d319', '', '8383908866', 'Active', '1593586904.png', 'Active', 'Self', 'NotVerify', NULL, '2020-05-22 07:54:14', '2020-07-01 07:01:47'),
(23, 'Sagar Kumar Gupta', 'sagarwithus@gmail.com', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', '+91', '8145429813', 'Active', NULL, 'Active', 'Self', 'NotVerify', 'Yes', '2020-05-23 17:55:19', '2020-05-29 05:53:43'),
(24, 'Vipul Chauhan', 'vipulchauhan332@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Facebook', 'NotVerify', NULL, '2020-05-25 05:59:57', NULL),
(25, 'rosanwe', 'rosan2@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Facebook', 'NotVerify', NULL, '2020-05-25 06:03:29', NULL),
(26, 'Sagar Kumar Gupta', 'sagarwithus@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Facebook', 'NotVerify', NULL, '2020-05-25 07:40:15', NULL),
(27, 'Hookup Demo', 'hookup.demo@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-05-25 10:43:08', NULL),
(28, 'mukesh', 'varun@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '8273402195', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-05-25 11:09:10', NULL),
(29, 'Rohan Kumar', 'rrohan97@yahoo.com', NULL, '', '9899246225', 'Active', NULL, NULL, 'Facebook', 'NotVerify', NULL, '2020-06-01 07:14:10', '2020-06-02 08:33:03'),
(30, 'Ram Ji', 'ramji.designoweb@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-01 10:51:31', NULL),
(31, 'Ram Ji', 'ramji84738@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-01 10:55:43', NULL),
(32, 'Rohan Singh', 'rrohan2697@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-01 10:58:40', NULL),
(34, 'Ram ji', 'ram.designo@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '8383908866', 'Active', NULL, NULL, 'Self', 'NotVerify', NULL, '2020-06-03 12:30:05', NULL),
(35, 'Shurbhi Sharma', 'sakshi.designoweb@gmail.com', NULL, '+91', '1234567890', 'Active', 'U-35@6546.png', NULL, 'Facebook', 'NotVerify', NULL, '2020-06-04 05:23:28', '2020-06-04 11:12:37'),
(36, 'sagar kumar gupta', 'sagarwithus1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '8145429813', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 05:53:20', NULL),
(37, 'Rosy', 'rosy@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9876543210', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 06:23:12', NULL),
(38, 'Rosy', 'rosy@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9876543210', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 06:23:12', NULL),
(39, 'vipul', 'vip@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '7503969111', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 06:28:28', NULL),
(40, 'Sam', 'sam@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9876543219', 'Active', 'U-40@2006.png', NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 07:12:16', '2020-06-04 07:46:19'),
(41, 'Mukesh kumar', 'mukesh11@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '1', '8273402192', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 07:22:26', '2020-06-04 10:20:38'),
(42, 'kohli', 'kohli@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '8565365245', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 10:12:20', NULL),
(43, 'vipul', 'vipul.design@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '7503691258', 'Active', 'U-43@2464.png', NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 10:15:09', '2020-06-04 10:15:44'),
(44, 'Samuel Umtiti', 'samuel@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9999900000', 'Active', 'U-44@4083.png', NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 11:13:46', '2020-07-17 11:15:44'),
(45, 'signup', 'chck@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1234567890', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 12:44:17', NULL),
(46, 'Shubham Gupta', 'shubham.designoweb@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-04 12:46:02', NULL),
(47, 'vipul', 'vipul@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1234567890', 'Active', 'U-47@1121.png', NULL, 'Self', 'NotVerify', 'Yes', '2020-06-04 12:47:51', '2020-06-04 12:55:29'),
(48, 'Rohit Singh', 'rohit.designoweb@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '9971654653', 'Active', NULL, NULL, 'Self', 'NotVerify', NULL, '2020-06-04 13:12:24', NULL),
(49, 'Ayush', 'ayush@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '23423', 'Active', NULL, NULL, 'Self', 'NotVerify', NULL, '2020-06-04 16:26:11', '2020-06-04 16:26:57'),
(50, 'Sakshi Singh', 'sakshi.designoweb@gmail.com', NULL, '+91', '9090909090', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-05 09:08:34', '2020-06-06 16:55:43'),
(51, 'Rishabh', 'rishabh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9999900001', 'Active', 'U-51@4842.jpg', NULL, 'Self', 'NotVerify', 'Yes', '2020-06-08 06:16:11', '2020-08-04 07:04:13'),
(52, 'varun', 'varun.designoweb1@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1254698545', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-08 07:51:50', '2020-06-08 08:23:56'),
(53, 'jsjshehe', 'hdhddhehhe@gmail.com', '38212ad2006e96b113fa246ee946d6ee3ed78349b1646eb6a91d0304683fd7be', '+91', '5656565656', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-09 06:56:39', NULL),
(54, 'jfjdjjd', 'vipulchauhan6@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+376', '1234567890', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-09 13:29:31', NULL),
(55, 'Deepanshu Tyagi', 'deepanshu.designoweb@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-10 06:37:15', NULL),
(56, 'Vicky', 'vicky@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '8383908866', 'Active', '26127.png', NULL, 'Self', 'NotVerify', NULL, '2020-06-10 06:43:11', '2020-06-10 06:44:09'),
(57, 'Ankit Kumar', 'ankit3.designoweb@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '1234567893', 'Inactive', NULL, NULL, 'Self', 'NotVerify', NULL, '2020-06-10 06:45:05', '2020-06-13 04:37:41'),
(58, 'varun negi', 'varun.designoweb@gmail.com', NULL, '+91', '8273402191', 'Active', 'U-58@6851.png', NULL, 'Google', 'NotVerify', NULL, '2020-06-13 05:28:08', '2020-06-15 12:50:09'),
(61, 'varun', 'varunnegi55@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '1254698545', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-13 11:27:37', NULL),
(62, 'Deepanshu Tyagi', 'deepanshutyagi812636@gmail.com', NULL, '', '', 'Active', NULL, NULL, 'Google', 'NotVerify', NULL, '2020-06-15 06:15:14', NULL),
(63, 'varun', 'varunnegi555@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '8273402191', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-16 07:15:27', NULL),
(64, 'rahul', 'rahul12@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '8659865896', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-16 07:17:52', NULL),
(65, 'sakshi', 'sakshi123@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '1254698545', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-16 07:29:40', NULL),
(66, 'sonam', 'sonam@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9990009999', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-16 07:47:36', NULL),
(67, 'Sakshi', 'logintest1812@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9638527410', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-06-16 07:55:36', '2020-06-16 08:17:44'),
(68, 'testing', 'testingid123@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '5685685689', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-16 07:55:40', NULL),
(69, 'Ajay Nagar', 'testingid182@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9638527411', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-16 08:03:57', NULL),
(70, 'sanju', 'varun.desigenoweb@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '1254698545', 'Active', NULL, NULL, 'Self', 'NotVerify', 'Yes', '2020-06-17 04:34:02', NULL),
(71, 'Sushant', 'sushant@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '9090900960', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-06-19 06:31:23', NULL),
(72, 'Rahul Ranjan', 'rahulranjan.designoweb@gmail.com', NULL, '', '', 'Active', NULL, 'Inactive', 'Google', 'NotVerify', NULL, '2020-06-23 04:33:49', NULL),
(73, 'ahahshhs', 'hshshsheh@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '7867862399', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-06-24 05:03:29', NULL),
(74, 'Mahiar Mehta', 'mahiarmehta@gmail.com', NULL, '', '', 'Active', NULL, 'Inactive', 'Facebook', 'NotVerify', NULL, '2020-06-24 16:54:19', NULL),
(75, 'Rachit sharma', 'rachitsharma512@gmail.com', NULL, '+91', '9876543219', 'Active', 'U-75@8830.jpg', 'Inactive', 'Facebook', 'NotVerify', NULL, '2020-06-25 05:12:47', '2020-07-21 06:20:08'),
(76, 'Mahiar Mehta', 'mbmehta@hotmail.com', NULL, '', '', 'Active', NULL, 'Inactive', 'Facebook', 'NotVerify', NULL, '2020-06-25 07:46:56', NULL),
(77, 'rachit', 'rachit@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', ' 987654321', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-06-29 11:13:17', '2020-06-29 13:26:19'),
(78, 'erythropoietin', 'rachit1@gmail.com', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '+91', '1234567899', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-07-07 06:51:51', NULL),
(79, 'rachit', 'rachit007@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1234567899', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-07-07 06:55:17', NULL),
(80, 'rachit', 'rachit001@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1234567899', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-07-07 07:01:41', NULL),
(81, 'Bhavik Agarwal', 'bhavik.programmer.dit@gmail.com', NULL, '', '', 'Active', NULL, 'Inactive', 'Facebook', 'NotVerify', NULL, '2020-07-08 07:51:53', NULL),
(82, 'Sita', 'sita@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+973', '98763215', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-07-18 12:23:58', NULL),
(83, 'rachit', 'rachittest@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '+91', '1234567890', 'Active', NULL, 'Inactive', 'Self', 'NotVerify', 'Yes', '2020-07-19 11:25:56', NULL),
(84, 'deepak kumar', 'deepak.designoweb@gmail.com', NULL, '', '', 'Active', NULL, 'Inactive', 'Google', 'NotVerify', NULL, '2020-08-06 07:57:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_email_verify`
--

CREATE TABLE `user_email_verify` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `activationcode` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_address`
--
ALTER TABLE `od_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `od_admin`
--
ALTER TABLE `od_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_banner_images`
--
ALTER TABLE `od_banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_cart`
--
ALTER TABLE `od_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `od_category`
--
ALTER TABLE `od_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_category_banner`
--
ALTER TABLE `od_category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_contactus`
--
ALTER TABLE `od_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_faqs`
--
ALTER TABLE `od_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_firebase_token`
--
ALTER TABLE `od_firebase_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_notification`
--
ALTER TABLE `od_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_orders`
--
ALTER TABLE `od_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `od_order_details`
--
ALTER TABLE `od_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_review`
--
ALTER TABLE `od_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `od_services`
--
ALTER TABLE `od_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_services_provider`
--
ALTER TABLE `od_services_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_service_banner`
--
ALTER TABLE `od_service_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_service_charges`
--
ALTER TABLE `od_service_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_settings`
--
ALTER TABLE `od_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_social`
--
ALTER TABLE `od_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_subcategory`
--
ALTER TABLE `od_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_time_slot`
--
ALTER TABLE `od_time_slot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `od_users`
--
ALTER TABLE `od_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `od_address`
--
ALTER TABLE `od_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `od_banner_images`
--
ALTER TABLE `od_banner_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `od_cart`
--
ALTER TABLE `od_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `od_category`
--
ALTER TABLE `od_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `od_category_banner`
--
ALTER TABLE `od_category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `od_contactus`
--
ALTER TABLE `od_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `od_faqs`
--
ALTER TABLE `od_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `od_firebase_token`
--
ALTER TABLE `od_firebase_token`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `od_notification`
--
ALTER TABLE `od_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `od_orders`
--
ALTER TABLE `od_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `od_order_details`
--
ALTER TABLE `od_order_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `od_review`
--
ALTER TABLE `od_review`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `od_services`
--
ALTER TABLE `od_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `od_services_provider`
--
ALTER TABLE `od_services_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `od_service_banner`
--
ALTER TABLE `od_service_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `od_service_charges`
--
ALTER TABLE `od_service_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `od_settings`
--
ALTER TABLE `od_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `od_social`
--
ALTER TABLE `od_social`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `od_subcategory`
--
ALTER TABLE `od_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `od_time_slot`
--
ALTER TABLE `od_time_slot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `od_users`
--
ALTER TABLE `od_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
