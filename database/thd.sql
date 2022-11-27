-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2022 at 04:40 PM
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
-- Database: `thd`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `net_cost` (`package_cost` INT, `room_cost` INT, `vehicle_cost` INT, `days` INT) RETURNS INT(11) DETERMINISTIC begin declare result int;set result=0; set result = package_cost + (days * (vehicle_cost + room_cost)); return result; end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL,
  `Customer_name` varchar(150) NOT NULL,
  `Age` int(11) NOT NULL,
  `Phone_number` varchar(30) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Num_travellers` int(11) NOT NULL,
  `Start_date` date NOT NULL,
  `Status` int(11) NOT NULL,
  `Time_inserted` timestamp NOT NULL DEFAULT current_timestamp(),
  `Vehicle_id` int(11) NOT NULL,
  `Package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `Customer_name`, `Age`, `Phone_number`, `Gender`, `Email`, `Address`, `Num_travellers`, `Start_date`, `Status`, `Time_inserted`, `Vehicle_id`, `Package_id`) VALUES
(30, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-11-26', 1, '2022-11-10 16:55:49', 1, 1),
(31, 'Praveen', 20, '8899889988', 'M', 'mv673@snu.edu.in', 'Vijayawada', 0, '2022-12-10', 1, '2022-11-10 16:59:02', 1, 1),
(32, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-11-25', 1, '2022-11-10 17:07:30', 1, 1),
(33, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-03', 1, '2022-11-10 17:09:02', 1, 1),
(34, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-09', 1, '2022-11-10 17:10:47', 1, 1),
(35, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-02', 1, '2022-11-10 17:17:03', 1, 1),
(36, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-10', 1, '2022-11-10 17:18:18', 1, 1),
(37, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-03', 1, '2022-11-10 17:19:37', 1, 1),
(38, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-10', 1, '2022-11-10 17:21:14', 1, 1),
(39, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hemanthsaiboyapati@gmail.com', 'Veterinary colony', 0, '2022-12-02', 1, '2022-11-10 17:22:00', 1, 1),
(40, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-09', 1, '2022-11-10 17:22:40', 1, 1),
(41, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hemanthsaiboyapati@gmail.com', 'Veterinary colony', 0, '2022-12-02', 1, '2022-11-10 17:24:32', 1, 1),
(42, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-03', 1, '2022-11-10 17:32:08', 1, 1),
(43, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-09', 1, '2022-11-10 17:48:04', 1, 1),
(44, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-02', 1, '2022-11-10 17:49:17', 1, 1),
(45, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-09', 1, '2022-11-10 17:50:51', 1, 1),
(46, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'mv673@snu.edu.in', 'Veterinary colony', 0, '2022-11-26', 1, '2022-11-10 17:55:14', 1, 1),
(47, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 0, '2022-12-09', 1, '2022-11-10 17:55:36', 1, 1),
(48, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'mv673@snu.edu.in', 'Veterinary colony', 0, '2022-12-09', 1, '2022-11-10 17:58:29', 1, 1),
(49, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 3, '2022-12-11', 1, '2022-11-10 18:05:45', 1, 1),
(50, 'Boyapati Hemanth Sai', 49, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 3, '2022-12-10', 1, '2022-11-10 18:38:35', 1, 1),
(51, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'mv673@snu.edu.in', 'Veterinary colony', 1, '2022-11-17', 1, '2022-11-10 18:42:13', 1, 1),
(52, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 3, '2022-12-10', 1, '2022-11-10 18:42:32', 1, 1),
(53, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'mv673@snu.edu.in', 'Veterinary colony', 2, '2022-12-09', 1, '2022-11-10 18:46:07', 1, 1),
(54, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'mv673@snu.edu.in', 'Veterinary colony', 3, '2022-12-09', 1, '2022-11-10 18:49:23', 1, 1),
(55, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 2, '2022-11-25', 1, '2022-11-10 18:54:36', 1, 1),
(56, 'Boyapati Hemanth Sai', 20, '08919969093', 'M', 'hb268@snu.edu.in', 'Veterinary colony', 2, '2022-12-10', 1, '2022-11-10 18:56:01', 1, 1),
(57, 'Boyapati Hemanth Sai', 18, '08919969093', 'M', 'mv673@snu.edu.in', 'Veterinary colony', 3, '2022-12-09', 1, '2022-11-10 18:56:51', 1, 1),
(62, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-24', 1, '2022-11-12 06:39:51', 1, 1),
(65, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-23', 1, '2022-11-19 12:25:28', 1, 1),
(67, 'Mohana Siddhartha Chivukula', 90, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 1, '2022-11-21', 1, '2022-11-23 17:09:42', 1, 1),
(68, 'Mohana Siddhartha Chivukula', 29, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 3, '2022-11-25', 1, '2022-11-23 17:10:10', 1, 1),
(70, 'Mohana Siddhartha Chivukula', 100, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 3, '2022-11-25', 1, '2022-11-23 17:33:00', 1, 1),
(71, 'Mohana Siddhartha Chivukula', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-15', 1, '2022-11-25 12:31:49', 1, 1),
(73, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 1, '2022-11-26', 1, '2022-11-25 12:38:36', 1, 1),
(74, 'Mohana Siddhartha Chivukula', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 1, '2022-11-30', 1, '2022-11-25 12:39:15', 1, 1),
(75, 'Mohana Siddhartha Chivukula', 25, '+919985688441', 'M', 'cs100@snu.edu.in', 'D.no:50-15-5, Ayyappanagar', 2, '2022-11-30', 1, '2022-11-25 12:39:38', 1, 1),
(76, 'ehr', 20, 'sihpg', '', 'sihgw@mail.com', 'siorg', 2, '2022-11-30', 1, '2022-11-25 13:37:51', 1, 1),
(77, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'D.no:50-15-5, Ayyappanagar', 2, '2022-11-22', 1, '2022-11-25 14:00:38', 1, 1),
(78, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-30', 1, '2022-11-25 14:01:46', 1, 1),
(79, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-30', 1, '2022-11-25 14:14:53', 1, 1),
(80, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-26', 1, '2022-11-25 14:35:44', 1, 1),
(81, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'D.no:50-15-5, Ayyappanagar, Gunadala', 2, '2022-11-30', 1, '2022-11-26 13:46:43', 1, 1),
(82, 'aihgoiq', 20, '123456789', 'M', 'cs100@snu.edu.in', 's;knb', 2, '2022-11-26', 1, '2022-11-26 14:42:04', 1, 1),
(83, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-12-01', 1, '2022-11-26 18:21:30', 1, 1),
(84, 'Mohana Siddhartha Chivukula', 20, '+919985688441', '', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-29', 1, '2022-11-27 08:35:33', 1, 1),
(85, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'D.no:50-15-5, Ayyappanagar, Gunadala', 2, '2022-11-29', 1, '2022-11-27 08:37:23', 1, 1),
(86, 'Mohana Siddhartha Chivukula', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-28', 1, '2022-11-27 10:11:25', 1, 1),
(87, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-12-01', 1, '2022-11-27 11:36:47', 1, 1),
(90, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-29', 1, '2022-11-27 12:01:01', 1, 1),
(91, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-30', 1, '2022-11-27 13:00:38', 2, 1),
(96, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-24', 1, '2022-11-27 14:47:23', 1, 1),
(97, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-30', 1, '2022-11-27 14:49:09', 2, 1),
(98, 'Mohana Siddhartha Chivukula', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-29', 1, '2022-11-27 14:49:55', 1, 1),
(99, 'Mohana Siddhartha', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-30', 1, '2022-11-27 14:53:46', 2, 1),
(108, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-30', 1, '2022-11-27 15:18:02', 1, 1),
(109, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-29', 1, '2022-11-27 15:36:05', 5, 4),
(110, 'Mohana Siddhartha Chivukula', 20, '+919985688441', 'M', 'cs100@snu.edu.in', 'D.no:50-15-5, Ayyappanagar, Gunadala', 2, '2022-11-30', 1, '2022-11-27 15:37:33', 7, 5),
(111, 'Mohana Siddhartha Chivukula', 20, '+918341988441', 'M', 'cs100@snu.edu.in', 'NH91, Tehsil Dadri', 2, '2022-11-29', 1, '2022-11-27 15:38:23', 2, 2);

--
-- Triggers `booking`
--
DELIMITER $$
CREATE TRIGGER `vehicle_booked` AFTER INSERT ON `booking` FOR EACH ROW update vehicle set booking_status = 1 where Vehicle_id = new.vehicle_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `co_traveller`
--

CREATE TABLE `co_traveller` (
  `Traveller_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `co_traveller`
--

INSERT INTO `co_traveller` (`Traveller_id`, `Name`, `Age`, `Gender`, `Booking_id`) VALUES
(1, '', 0, '', 50),
(2, '', 0, '', 50),
(3, '', 0, '', 50),
(4, '', 0, '', 52),
(5, '', 0, '', 52),
(6, '', 0, '', 52),
(7, '', 0, '', 53),
(8, '', 0, '', 53),
(9, '', 0, '', 55),
(10, '', 0, '', 55),
(11, 'abcd', 13, 'M', 56),
(12, 'efgh', 23, 'M', 56),
(13, 'abcd', 12, 'M', 57),
(14, 'efgh', 23, 'F', 57),
(15, 'ijkl', 34, 'M', 57),
(16, 'hemanth', 20, 'M', 62),
(17, 'jaswanth', 20, 'M', 62),
(18, ';sfn', 30, '', 71),
(19, 'lslhg', 15, '', 71),
(20, ';sfn', 30, '', 71),
(21, 'lslhg', 15, '', 71),
(22, ';sfn', 30, '', 71),
(23, 'lslhg', 15, '', 71),
(24, ';sfn', 30, '', 71),
(25, 'lslhg', 15, '', 71),
(26, 'osibf', 20, '', 75),
(27, 'saobv', 20, 'F', 75),
(28, 'osibf', 20, '', 75),
(29, 'saobv', 20, 'F', 75),
(30, 'osibf', 20, '', 75),
(31, 'saobv', 20, 'F', 75),
(32, 'osibf', 20, '', 75),
(33, 'saobv', 20, 'F', 75),
(34, 'osibf', 20, '', 75),
(35, 'saobv', 20, 'F', 75),
(36, 'osibf', 20, '', 75),
(37, 'saobv', 20, 'F', 75),
(38, 'osibf', 20, '', 75),
(39, 'saobv', 20, 'F', 75),
(40, 'osibf', 20, '', 75),
(41, 'saobv', 20, 'F', 75),
(42, 'osibf', 20, '', 75),
(43, 'saobv', 20, 'F', 75),
(44, 'osibf', 20, '', 75),
(45, 'saobv', 20, 'F', 75),
(46, 'osibf', 20, '', 75),
(47, 'saobv', 20, 'F', 75),
(48, 'osibf', 20, '', 75),
(49, 'saobv', 20, 'F', 75),
(50, 'osibf', 20, '', 75),
(51, 'saobv', 20, 'F', 75),
(52, 'osibf', 20, '', 75),
(53, 'saobv', 20, 'F', 75),
(54, 'osibf', 20, '', 75),
(55, 'saobv', 20, 'F', 75),
(56, 'osibf', 20, '', 75),
(57, 'saobv', 20, 'F', 75),
(58, 'osibf', 20, '', 75),
(59, 'saobv', 20, 'F', 75),
(60, 'osibf', 20, '', 75),
(61, 'saobv', 20, 'F', 75),
(62, 'osibf', 20, '', 75),
(63, 'saobv', 20, 'F', 75),
(64, 'osibf', 20, '', 75),
(65, 'saobv', 20, 'F', 75),
(66, 'osibf', 20, '', 75),
(67, 'saobv', 20, 'F', 75),
(68, 'osibf', 20, '', 75),
(69, 'saobv', 20, 'F', 75),
(70, 'osibf', 20, '', 75),
(71, 'saobv', 20, 'F', 75),
(72, 'osibf', 20, '', 75),
(73, 'saobv', 20, 'F', 75),
(74, 'osibf', 20, '', 75),
(75, 'saobv', 20, 'F', 75),
(76, 'osibf', 20, '', 75),
(77, 'saobv', 20, 'F', 75),
(78, 'osibf', 20, '', 75),
(79, 'saobv', 20, 'F', 75),
(80, 'osibf', 20, '', 75),
(81, 'saobv', 20, 'F', 75),
(82, 'osibf', 20, '', 75),
(83, 'saobv', 20, 'F', 75),
(84, 'osibf', 20, '', 75),
(85, 'saobv', 20, 'F', 75),
(86, 'osibf', 20, '', 75),
(87, 'saobv', 20, 'F', 75),
(88, 'osibf', 20, '', 75),
(89, 'saobv', 20, 'F', 75),
(90, 'osibf', 20, '', 75),
(91, 'saobv', 20, 'F', 75),
(92, 'osibf', 20, '', 75),
(93, 'saobv', 20, 'F', 75),
(94, 'osibf', 20, '', 75),
(95, 'saobv', 20, 'F', 75),
(96, 'osibf', 20, '', 75),
(97, 'saobv', 20, 'F', 75),
(98, 'osibf', 20, '', 75),
(99, 'saobv', 20, 'F', 75),
(100, 'osibf', 20, '', 75),
(101, 'saobv', 20, 'F', 75),
(102, 'osibf', 20, '', 75),
(103, 'saobv', 20, 'F', 75),
(104, 'osibf', 20, '', 75),
(105, 'saobv', 20, 'F', 75),
(106, 'osibf', 20, '', 75),
(107, 'saobv', 20, 'F', 75),
(108, 'osibf', 20, '', 75),
(109, 'saobv', 20, 'F', 75),
(110, 'osibf', 20, '', 75),
(111, 'saobv', 20, 'F', 75),
(112, 'osibf', 20, '', 75),
(113, 'saobv', 20, 'F', 75),
(114, 'osibf', 20, '', 75),
(115, 'saobv', 20, 'F', 75),
(116, 'osibf', 20, '', 75),
(117, 'saobv', 20, 'F', 75),
(118, 'osibf', 20, '', 75),
(119, 'saobv', 20, 'F', 75),
(120, 'osibf', 20, '', 75),
(121, 'saobv', 20, 'F', 75),
(122, 'osibf', 20, '', 75),
(123, 'saobv', 20, 'F', 75),
(124, 'osibf', 20, '', 75),
(125, 'saobv', 20, 'F', 75),
(126, 'osibf', 20, '', 75),
(127, 'saobv', 20, 'F', 75),
(128, 'osibf', 20, '', 75),
(129, 'saobv', 20, 'F', 75),
(130, 'osibf', 20, '', 75),
(131, 'saobv', 20, 'F', 75),
(132, 'osibf', 20, '', 75),
(133, 'saobv', 20, 'F', 75),
(134, 'osibf', 20, '', 75),
(135, 'saobv', 20, 'F', 75),
(136, 'osibf', 20, '', 75),
(137, 'saobv', 20, 'F', 75),
(138, 'osibf', 20, '', 75),
(139, 'saobv', 20, 'F', 75),
(140, 'osibf', 20, '', 75),
(141, 'saobv', 20, 'F', 75),
(142, 'spigih', 20, 'F', 76),
(143, 'pqiaeegj', 20, 'F', 76),
(144, 'spigih', 20, 'F', 76),
(145, 'pqiaeegj', 20, 'F', 76),
(146, 'spigih', 20, 'F', 76),
(147, 'pqiaeegj', 20, 'F', 76),
(148, 'spigih', 20, 'F', 76),
(149, 'pqiaeegj', 20, 'F', 76),
(150, 'spigih', 20, 'F', 76),
(151, 'pqiaeegj', 20, 'F', 76),
(152, 'spigih', 20, 'F', 76),
(153, 'pqiaeegj', 20, 'F', 76),
(154, 'spigih', 20, 'F', 76),
(155, 'pqiaeegj', 20, 'F', 76),
(156, 'spigih', 20, 'F', 76),
(157, 'pqiaeegj', 20, 'F', 76),
(158, 'spigih', 20, 'F', 76),
(159, 'pqiaeegj', 20, 'F', 76),
(160, 'spigih', 20, 'F', 76),
(161, 'pqiaeegj', 20, 'F', 76),
(162, 'spigih', 20, 'F', 76),
(163, 'pqiaeegj', 20, 'F', 76),
(164, 'spigih', 20, 'F', 76),
(165, 'pqiaeegj', 20, 'F', 76),
(166, 'spigih', 20, 'F', 76),
(167, 'pqiaeegj', 20, 'F', 76),
(168, 'spigih', 20, 'F', 76),
(169, 'pqiaeegj', 20, 'F', 76),
(170, 'spigih', 20, 'F', 76),
(171, 'pqiaeegj', 20, 'F', 76),
(172, 'spigih', 20, 'F', 76),
(173, 'pqiaeegj', 20, 'F', 76),
(174, 'spigih', 20, 'F', 76),
(175, 'pqiaeegj', 20, 'F', 76),
(176, 'spigih', 20, 'F', 76),
(177, 'pqiaeegj', 20, 'F', 76),
(178, 'spigih', 20, 'F', 76),
(179, 'pqiaeegj', 20, 'F', 76),
(180, 'spigih', 20, 'F', 76),
(181, 'pqiaeegj', 20, 'F', 76),
(182, 'spigih', 20, 'F', 76),
(183, 'pqiaeegj', 20, 'F', 76),
(184, 'spigih', 20, 'F', 76),
(185, 'pqiaeegj', 20, 'F', 76),
(186, 'spigih', 20, 'F', 76),
(187, 'pqiaeegj', 20, 'F', 76),
(188, 'spigih', 20, 'F', 76),
(189, 'pqiaeegj', 20, 'F', 76),
(190, 'spigih', 20, 'F', 76),
(191, 'pqiaeegj', 20, 'F', 76),
(192, 'hemanth', 20, 'M', 78),
(193, 'jaswanth', 20, 'M', 78),
(194, 'hemanth', 20, 'M', 78),
(195, 'jaswanth', 20, 'M', 78),
(196, 'hemanth', 20, 'M', 78),
(197, 'jaswanth', 20, 'M', 78),
(198, 'hemanth', 20, 'M', 78),
(199, 'jaswanth', 20, 'M', 78),
(200, 'hemanth', 20, 'M', 78),
(201, 'jaswanth', 20, 'M', 78),
(202, 'hemanth', 20, 'M', 78),
(203, 'jaswanth', 20, 'M', 78),
(204, 'hemanth', 20, 'M', 78),
(205, 'jaswanth', 20, 'M', 78),
(206, 'hemanth', 20, 'M', 78),
(207, 'jaswanth', 20, 'M', 78),
(208, 'hemanth', 20, 'M', 78),
(209, 'jaswanth', 20, 'M', 78),
(210, 'hemanth', 20, 'M', 78),
(211, 'jaswanth', 20, 'M', 78),
(212, 'hemanth', 20, 'M', 78),
(213, 'jaswanth', 20, 'M', 78),
(214, 'hemanth', 20, 'M', 78),
(215, 'jaswanth', 20, 'M', 78),
(216, 'hemanth', 20, 'M', 78),
(217, 'jaswanth', 20, 'M', 78),
(218, 'hemanth', 20, 'M', 78),
(219, 'jaswanth', 20, 'M', 78),
(220, 'hemanth', 20, 'M', 78),
(221, 'jaswanth', 20, 'M', 78),
(222, 'hemanth', 20, 'M', 78),
(223, 'jaswanth', 20, 'M', 78),
(224, 'hemanth', 20, 'M', 78),
(225, 'jaswanth', 20, 'M', 78),
(226, 'hemanth', 20, 'M', 78),
(227, 'jaswanth', 20, 'M', 78),
(228, 'hemanth', 20, 'M', 78),
(229, 'jaswanth', 20, 'M', 78),
(230, 'hemanth', 20, 'M', 78),
(231, 'jaswanth', 20, 'M', 78),
(232, 'hemanth', 20, 'M', 79),
(233, 'lslhg', 20, 'F', 79),
(234, 'hemanth', 20, 'M', 79),
(235, 'lslhg', 20, 'F', 79),
(236, 'hemanth', 20, 'M', 79),
(237, 'lslhg', 20, 'F', 79),
(238, 'hemanth', 20, 'M', 79),
(239, 'lslhg', 20, 'F', 79),
(240, 'hemanth', 20, 'M', 79),
(241, 'lslhg', 20, 'F', 79),
(242, 'hemanth', 20, 'M', 79),
(243, 'lslhg', 20, 'F', 79),
(244, 'hemanth', 20, 'M', 79),
(245, 'lslhg', 20, 'F', 79),
(246, 'hemanth', 20, 'M', 79),
(247, 'lslhg', 20, 'F', 79),
(248, 'hemanth', 20, 'M', 79),
(249, 'lslhg', 20, 'F', 79),
(250, 'hemanth', 20, 'M', 79),
(251, 'lslhg', 20, 'F', 79),
(252, 'hemanth', 20, 'M', 79),
(253, 'lslhg', 20, 'F', 79),
(254, 'hemanth', 20, 'M', 79),
(255, 'lslhg', 20, 'F', 79),
(256, 'hemanth', 20, 'M', 79),
(257, 'lslhg', 20, 'F', 79),
(258, 'hemanth', 20, 'M', 79),
(259, 'lslhg', 20, 'F', 79),
(260, 'hemanth', 20, 'M', 79),
(261, 'lslhg', 20, 'F', 79),
(262, 'hemanth', 20, 'M', 79),
(263, 'lslhg', 20, 'F', 79),
(264, 'hemanth', 20, 'M', 79),
(265, 'lslhg', 20, 'F', 79),
(266, 'hemanth', 20, 'M', 80),
(267, 'lslhg', 20, 'F', 80),
(268, 'hemanth', 20, 'M', 80),
(269, 'lslhg', 20, 'F', 80),
(270, 'hemanth', 20, 'M', 81),
(271, 'lslhg', 20, 'F', 81),
(272, 'hemanth', 20, 'F', 83),
(273, 'lslhg', 20, 'F', 83),
(274, 'hemanth', 20, 'M', 85),
(275, 'lslhg', 20, 'F', 85),
(276, 'hemanth', 20, 'M', 86),
(277, 'jaswanth', 20, 'M', 86),
(278, 'hemanth', 20, 'M', 87),
(279, 'lslhg', 20, 'F', 87),
(280, 'hemanth', 20, 'M', 90),
(281, 'lslhg', 20, 'F', 90),
(282, 'hemanth', 20, 'M', 91),
(283, 'saobv', 20, 'F', 91),
(284, 'hemanth', 20, 'M', 109),
(285, 'lslhg', 20, 'M', 109),
(286, 'hemanth', 20, 'M', 111),
(287, 'lslhg', 20, 'F', 111);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` int(11) NOT NULL,
  `Hotel_name` varchar(100) NOT NULL,
  `Hotel_rating` int(11) NOT NULL,
  `Hotel_Address` varchar(200) NOT NULL,
  `Place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `Hotel_name`, `Hotel_rating`, `Hotel_Address`, `Place_id`) VALUES
(1, 'karol hotel', 1, 'karol bagh', 1),
(2, 'chandni hotel', 3, 'chandni chowk', 1),
(3, 'Chennai hotel', 3, 'chennai', 3),
(4, 'Banglore hotel', 2, 'Banglore', 6),
(12, 'Taj Hotel', 1, 'Mumbai', 9),
(13, 'Udai hotel', 1, 'Udaipur', 8),
(14, 'vizag hotel', 1, 'vizag', 10),
(15, 'hyderabadi hotel', 1, 'Hyderabad', 11),
(16, 'Delhi hotel', 2, 'Delhi', 1),
(17, 'chennai hotel', 2, 'chennai', 3),
(18, 'chennai hotel', 1, 'chennai', 3),
(19, 'banglore hotel', 1, 'banglore', 6),
(20, 'banglore hotel', 3, 'banglore', 6),
(21, 'mumbai hotel', 2, 'mumbai', 9),
(22, 'mumbai hotel', 3, 'mumbai', 9),
(23, 'udai hotel', 2, 'udaipur', 8),
(24, 'udai hotel', 3, 'udaipur', 8),
(25, 'vizag hotel', 2, 'vizag', 10),
(26, 'vizag hotel', 3, 'vizag', 10),
(27, 'hyd hotel', 2, 'hyderabad', 11),
(28, 'hyde hotel', 3, 'hyderabad', 11);

-- --------------------------------------------------------

--
-- Table structure for table `location_table`
--

CREATE TABLE `location_table` (
  `Location_id` int(11) NOT NULL,
  `Loaction_name` varchar(200) NOT NULL,
  `Location_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location_table`
--

INSERT INTO `location_table` (`Location_id`, `Loaction_name`, `Location_description`) VALUES
(1, 'Delhi', 'Delhi is the capital of India, home to the executive, judiciary and legislative branches of the Government.'),
(2, 'Bangalore', 'Bangalore was established as India’s most livable city. In the past, it used to be referred to as the “Pensioner’s Paradise” and the “Garden City of India” because of its large, green spaces.'),
(3, 'Udaipur', 'Most famous for its stunning lakes, forts, temples and palaces, Udaipur is another city located in the state of Rajasthan, and is certainly not to be missed.'),
(4, 'Chennai', 'Chennai is a beautiful city serving as the gateway to the south of India and has a distinct culture based on Tamil traditions.'),
(6, 'Mumbai', 'Mumbai (formerly called Bombay) is a densely populated city on India’s west coast'),
(7, 'Vizag', 'Visakhapatnam is a port city and industrial center in the Indian state of Andhra Pradesh'),
(8, 'Hyderabad', 'Hyderabad is the capital of southern India\'s Telangana state. A major center for the technology industry');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Package_id` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Days` int(11) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Location_id` int(11) NOT NULL,
  `cost` int(11) DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Package_id`, `Name`, `Days`, `Image`, `Location_id`, `cost`) VALUES
(1, 'Delhi-Agra', 1, 'delhi', 1, 1000),
(2, 'Bangalore-Mysore', 2, 'bangalore', 2, 1000),
(3, 'Udaipur', 2, 'udaipur', 3, 1000),
(4, 'Chennai-Mahabalipuram', 3, 'chennai', 4, 1000),
(5, 'Mumbai', 6, 'mumbai', 6, 1000),
(6, 'Visakhapatnam-Aruku', 3, 'araku', 7, 1000),
(7, 'Hyderabad', 6, 'hyderabad', 8, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `Place_id` int(11) NOT NULL,
  `Place_name` varchar(50) NOT NULL,
  `Location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`Place_id`, `Place_name`, `Location_id`) VALUES
(1, 'Delhi', 1),
(3, 'Chennai', 4),
(6, 'Banglore ', 2),
(8, 'Udaipur', 3),
(9, 'Mumbai', 6),
(10, 'Vizag', 7),
(11, 'Hyderabad', 8);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(11) NOT NULL,
  `Occupancy` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Hotel_id` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Facilities` varchar(255) NOT NULL,
  `booking_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Occupancy`, `Price`, `Hotel_id`, `Type`, `Facilities`, `booking_status`) VALUES
(1, 2, 123456, 1, 'suite', 'hot water, ac', 0),
(2, 2, 1999, 2, 'Suite', 'hot water, ac', 0),
(3, 2, 999, 3, 'Deluxe', 'hot water, ac', 0),
(4, 2, 22, 4, 'Suite', 'hot water, ac', 0),
(5, 2, 123, 12, 'suite', 'hot water, ac', 0),
(6, 2, 1232, 13, 'suite', 'hot water, ac', 0),
(7, 2, 123, 14, 'suite', 'hot water, ac', 0),
(8, 2, 123, 15, 'suite', 'hot water, ac', 0),
(9, 2, 123, 16, 'suite', 'hot water, ac', 0),
(10, 2, 123, 17, 'suite', 'hot water, ac', 0),
(11, 2, 123, 18, 'suite', 'hot water, ac', 0),
(12, 2, 123, 19, 'suite', 'hot water, ac', 0),
(13, 2, 123, 20, 'suite', 'hot water, ac', 0),
(14, 2, 123, 21, 'suite', 'hot water, ac', 0),
(15, 2, 123, 22, 'suite', 'hot water, ac', 0),
(16, 2, 123, 23, 'suite', 'hot water, ac', 0),
(17, 2, 123, 24, 'suite', 'hot water, ac', 0),
(18, 2, 123, 25, 'suite', 'hot water, ac', 0),
(19, 2, 123, 26, 'suite', 'hot water, ac', 0),
(20, 2, 123, 27, 'suite', 'hot water, ac', 0),
(21, 2, 123, 28, 'suite', 'hot water, ac', 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_booked`
--

CREATE TABLE `room_booked` (
  `Room_booked_id` int(11) NOT NULL,
  `Booking_id` int(11) NOT NULL,
  `Room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booked`
--

INSERT INTO `room_booked` (`Room_booked_id`, `Booking_id`, `Room_id`) VALUES
(1, 30, 2),
(2, 31, 3),
(3, 34, 3),
(4, 35, 2),
(5, 36, 2),
(6, 37, 2),
(7, 38, 2),
(8, 39, 2),
(9, 40, 2),
(10, 41, 3),
(11, 42, 2),
(12, 43, 2),
(13, 44, 2),
(14, 45, 2),
(15, 47, 2),
(16, 48, 2),
(17, 49, 2),
(18, 50, 2),
(19, 52, 2),
(20, 53, 3),
(21, 54, 2),
(22, 55, 3),
(23, 56, 3),
(24, 57, 2),
(25, 62, 3),
(26, 65, 3),
(27, 68, 2),
(28, 70, 2),
(29, 71, 3),
(30, 75, 3),
(31, 76, 3),
(32, 77, 3),
(33, 78, 3),
(34, 79, 3),
(35, 80, 3),
(36, 81, 3),
(37, 82, 3),
(38, 83, 3),
(39, 84, 3),
(40, 85, 3),
(41, 86, 1),
(42, 87, 3),
(43, 90, 1),
(44, 91, 3),
(45, 99, 2),
(46, 108, 3),
(47, 109, 3),
(48, 110, 15),
(49, 111, 13);

--
-- Triggers `room_booked`
--
DELIMITER $$
CREATE TRIGGER `room_booked` AFTER INSERT ON `room_booked` FOR EACH ROW update room set booking_status = 1 where Room_id = new.Room_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE `tourist_spot` (
  `Spot_id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`Spot_id`, `Name`, `Description`, `Place_id`) VALUES
(1, 'karol bagh shoppping market', 'Various kinds of clothes, electronics. All in one place for shopping', 1),
(2, 'Red Fort', 'It is structure made of red sand stone', 1),
(3, 'Karol bagh restaurent\r\n', 'It has a variety of food options.', 1),
(5, 'Banglore Palace', 'Bangalore Palace is a royal palace located in Bangalore, Karnataka, India.', 6),
(7, 'Mysore Palace', 'The Mysore Palace, also known as Amba Vilas Palace, is a historical palace.', 6),
(10, 'LAKE PALACE\r\n', 'Lake Pichola, the palace, which faces east, is a wondrous sight to behold. ', 8),
(11, 'JAG MANDIR', 'Jagmandir is a palace built on an island on the Lake Pichola.', 8),
(12, 'Marina Beach', 'Among the best places to visit in Chennai with friends', 3),
(13, 'Valluvar Kottam', 'Those of you who love literature must have heard or read about the famous Tamil poet and saint, Thiruvalluvar', 3),
(14, 'Gateway of India', 'Gateway of India, the best place to visit in Mumbai, was built in 1924.', 9),
(15, 'Sanjay Gandhi National Park', 'this is one of the most-visited national parks in Asia ', 9),
(16, 'Araku', 'Araku Valley is a hill station and valley region in the southeastern Indian state of Andhra Pradesh', 10),
(17, 'Visakhapatnam Port\r\n', 'Visakhapatnam Port is one of 13 major ports in India and the only major port of Andhra Pradesh', 10),
(20, 'Charminar', 'The capital city of Telangana, Hyderabad is a popular tourist destination ', 11),
(21, 'Golconda Fort', 'Its impressive structure has majestic walls which are as high as 15 to 18 foot and a parameter of close to 11 km', 11);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Vehicle_id` int(11) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Driver` varchar(100) NOT NULL,
  `Contact` bigint(11) NOT NULL,
  `Location_id` int(11) NOT NULL,
  `booking_status` int(11) DEFAULT 0,
  `cost_per_day` int(11) DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Vehicle_id`, `Model`, `Capacity`, `Driver`, `Contact`, `Location_id`, `booking_status`, `cost_per_day`) VALUES
(1, 'Innova', 7, 'Ramesh', 9999999999, 1, 0, 1000),
(2, 'BMW M3', 2, 'self', 1001001001000, 2, 0, 1000),
(3, 'lamborghini', 2, 'self', 12345678, 8, 0, 1000),
(4, 'ferrari', 2, 'self', 1234567, 3, 0, 1000),
(5, 'audi', 4, 'self', 123456789, 4, 0, 1000),
(6, 'audi', 2, 'self', 123456789, 7, 0, 1000),
(7, 'toyota', 6, 'hemanth', 23456789, 6, 0, 1000),
(8, 'nissan', 4, 'self', 123456789, 4, 0, 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_id`),
  ADD KEY `Package_id` (`Package_id`),
  ADD KEY `Vehicle_id` (`Vehicle_id`);

--
-- Indexes for table `co_traveller`
--
ALTER TABLE `co_traveller`
  ADD PRIMARY KEY (`Traveller_id`),
  ADD KEY `Booking_id` (`Booking_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`),
  ADD KEY `Place_id` (`Place_id`);

--
-- Indexes for table `location_table`
--
ALTER TABLE `location_table`
  ADD PRIMARY KEY (`Location_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`Package_id`),
  ADD KEY `Location_id` (`Location_id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`Place_id`),
  ADD KEY `Location_id` (`Location_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hotel_id` (`Hotel_id`);

--
-- Indexes for table `room_booked`
--
ALTER TABLE `room_booked`
  ADD PRIMARY KEY (`Room_booked_id`),
  ADD KEY `Booking_id` (`Booking_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- Indexes for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  ADD PRIMARY KEY (`Spot_id`),
  ADD KEY `Place_id` (`Place_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`Vehicle_id`),
  ADD KEY `Location_id` (`Location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `co_traveller`
--
ALTER TABLE `co_traveller`
  MODIFY `Traveller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `location_table`
--
ALTER TABLE `location_table`
  MODIFY `Location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `Package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `Place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `room_booked`
--
ALTER TABLE `room_booked`
  MODIFY `Room_booked_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  MODIFY `Spot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `Vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`Package_id`) REFERENCES `package` (`Package_id`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`Vehicle_id`) REFERENCES `vehicle` (`Vehicle_id`);

--
-- Constraints for table `co_traveller`
--
ALTER TABLE `co_traveller`
  ADD CONSTRAINT `co_traveller_ibfk_1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`Place_id`) REFERENCES `place` (`Place_id`);

--
-- Constraints for table `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`Location_id`) REFERENCES `location_table` (`Location_id`);

--
-- Constraints for table `place`
--
ALTER TABLE `place`
  ADD CONSTRAINT `place_ibfk_1` FOREIGN KEY (`Location_id`) REFERENCES `location_table` (`Location_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`Hotel_id`) REFERENCES `hotel` (`Hotel_id`);

--
-- Constraints for table `room_booked`
--
ALTER TABLE `room_booked`
  ADD CONSTRAINT `room_booked_ibfk_1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`),
  ADD CONSTRAINT `room_booked_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);

--
-- Constraints for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  ADD CONSTRAINT `tourist_spot_ibfk_1` FOREIGN KEY (`Place_id`) REFERENCES `place` (`Place_id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Location_id`) REFERENCES `location_table` (`Location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
