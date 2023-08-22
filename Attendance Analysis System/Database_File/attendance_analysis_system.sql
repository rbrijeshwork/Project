-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 07:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_analysis_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_list`
--

CREATE TABLE `attendance_list` (
  `id` int(30) NOT NULL,
  `class_subject_id` int(30) NOT NULL,
  `doc` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_list`
--

INSERT INTO `attendance_list` (`id`, `class_subject_id`, `doc`, `date_created`) VALUES
(1, 1, '2020-10-28', '2020-10-28 20:06:37'),
(2, 1, '2022-04-02', '2022-04-04 00:14:02'),
(3, 1, '2022-04-03', '2022-04-04 00:14:20'),
(4, 1, '2022-04-04', '2022-04-04 00:14:34'),
(5, 5, '2022-04-01', '2022-04-04 00:54:22'),
(6, 6, '2022-04-01', '2022-04-04 00:54:33'),
(7, 5, '2022-04-02', '2022-04-04 00:54:43'),
(8, 6, '2022-04-02', '2022-04-04 00:54:54'),
(9, 5, '2022-04-03', '2022-04-04 00:55:05'),
(10, 6, '2022-04-03', '2022-04-04 00:55:16'),
(11, 7, '2022-03-22', '2022-04-04 23:05:05'),
(12, 7, '2022-03-23', '2022-04-04 23:05:19'),
(13, 7, '2022-03-24', '2022-04-04 23:05:35'),
(14, 1, '2022-03-25', '2022-04-04 23:05:51'),
(15, 2, '2022-03-21', '2022-04-04 23:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(30) NOT NULL,
  `attendance_id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0=absent,1=present,2=late',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `attendance_id`, `student_id`, `type`, `date_created`) VALUES
(1, 1, 1, 1, '2020-10-28 20:06:37'),
(2, 1, 2, 2, '2020-10-28 20:06:37'),
(3, 2, 1, 1, '2022-04-04 00:14:03'),
(4, 2, 2, 1, '2022-04-04 00:14:03'),
(5, 2, 3, 1, '2022-04-04 00:14:03'),
(6, 2, 4, 0, '2022-04-04 00:14:03'),
(7, 2, 5, 1, '2022-04-04 00:14:03'),
(8, 2, 6, 1, '2022-04-04 00:14:03'),
(9, 2, 7, 1, '2022-04-04 00:14:03'),
(10, 2, 8, 0, '2022-04-04 00:14:03'),
(11, 2, 9, 1, '2022-04-04 00:14:03'),
(12, 2, 10, 1, '2022-04-04 00:14:03'),
(13, 2, 11, 0, '2022-04-04 00:14:03'),
(14, 3, 1, 1, '2022-04-04 00:14:20'),
(15, 3, 2, 0, '2022-04-04 00:14:20'),
(16, 3, 3, 1, '2022-04-04 00:14:20'),
(17, 3, 4, 0, '2022-04-04 00:14:20'),
(18, 3, 5, 1, '2022-04-04 00:14:20'),
(19, 3, 6, 1, '2022-04-04 00:14:20'),
(20, 3, 7, 1, '2022-04-04 00:14:20'),
(21, 3, 8, 1, '2022-04-04 00:14:20'),
(22, 3, 9, 1, '2022-04-04 00:14:20'),
(23, 3, 10, 0, '2022-04-04 00:14:20'),
(24, 3, 11, 0, '2022-04-04 00:14:20'),
(25, 4, 1, 0, '2022-04-04 00:14:34'),
(26, 4, 2, 1, '2022-04-04 00:14:34'),
(27, 4, 3, 1, '2022-04-04 00:14:34'),
(28, 4, 4, 1, '2022-04-04 00:14:34'),
(29, 4, 5, 1, '2022-04-04 00:14:34'),
(30, 4, 6, 1, '2022-04-04 00:14:34'),
(31, 4, 7, 1, '2022-04-04 00:14:34'),
(32, 4, 8, 1, '2022-04-04 00:14:34'),
(33, 4, 9, 1, '2022-04-04 00:14:34'),
(34, 4, 10, 0, '2022-04-04 00:14:34'),
(35, 4, 11, 1, '2022-04-04 00:14:34'),
(36, 5, 45, 1, '2022-04-04 00:54:22'),
(37, 5, 46, 1, '2022-04-04 00:54:22'),
(38, 5, 47, 0, '2022-04-04 00:54:22'),
(39, 5, 48, 1, '2022-04-04 00:54:22'),
(40, 5, 49, 1, '2022-04-04 00:54:22'),
(41, 5, 50, 0, '2022-04-04 00:54:22'),
(42, 5, 51, 1, '2022-04-04 00:54:22'),
(43, 5, 53, 0, '2022-04-04 00:54:22'),
(44, 5, 54, 1, '2022-04-04 00:54:23'),
(45, 5, 55, 1, '2022-04-04 00:54:23'),
(46, 5, 56, 0, '2022-04-04 00:54:23'),
(47, 6, 57, 1, '2022-04-04 00:54:33'),
(48, 6, 58, 1, '2022-04-04 00:54:33'),
(49, 6, 59, 0, '2022-04-04 00:54:33'),
(50, 6, 60, 1, '2022-04-04 00:54:33'),
(51, 6, 61, 1, '2022-04-04 00:54:33'),
(52, 6, 62, 1, '2022-04-04 00:54:33'),
(53, 6, 63, 0, '2022-04-04 00:54:34'),
(54, 6, 64, 1, '2022-04-04 00:54:34'),
(55, 6, 65, 1, '2022-04-04 00:54:34'),
(56, 6, 66, 1, '2022-04-04 00:54:34'),
(57, 7, 45, 1, '2022-04-04 00:54:43'),
(58, 7, 46, 0, '2022-04-04 00:54:43'),
(59, 7, 47, 1, '2022-04-04 00:54:43'),
(60, 7, 48, 1, '2022-04-04 00:54:43'),
(61, 7, 49, 1, '2022-04-04 00:54:43'),
(62, 7, 50, 1, '2022-04-04 00:54:43'),
(63, 7, 51, 1, '2022-04-04 00:54:43'),
(64, 7, 53, 0, '2022-04-04 00:54:43'),
(65, 7, 54, 1, '2022-04-04 00:54:43'),
(66, 7, 55, 1, '2022-04-04 00:54:44'),
(67, 7, 56, 1, '2022-04-04 00:54:44'),
(68, 8, 57, 1, '2022-04-04 00:54:54'),
(69, 8, 58, 0, '2022-04-04 00:54:54'),
(70, 8, 59, 1, '2022-04-04 00:54:54'),
(71, 8, 60, 1, '2022-04-04 00:54:54'),
(72, 8, 61, 1, '2022-04-04 00:54:54'),
(73, 8, 62, 1, '2022-04-04 00:54:54'),
(74, 8, 63, 1, '2022-04-04 00:54:54'),
(75, 8, 64, 0, '2022-04-04 00:54:54'),
(76, 8, 65, 1, '2022-04-04 00:54:54'),
(77, 8, 66, 0, '2022-04-04 00:54:54'),
(78, 9, 45, 0, '2022-04-04 00:55:05'),
(79, 9, 46, 1, '2022-04-04 00:55:05'),
(80, 9, 47, 1, '2022-04-04 00:55:05'),
(81, 9, 48, 1, '2022-04-04 00:55:05'),
(82, 9, 49, 1, '2022-04-04 00:55:05'),
(83, 9, 50, 1, '2022-04-04 00:55:05'),
(84, 9, 51, 1, '2022-04-04 00:55:05'),
(85, 9, 53, 1, '2022-04-04 00:55:06'),
(86, 9, 54, 1, '2022-04-04 00:55:06'),
(87, 9, 55, 0, '2022-04-04 00:55:06'),
(88, 9, 56, 1, '2022-04-04 00:55:06'),
(89, 10, 57, 1, '2022-04-04 00:55:16'),
(90, 10, 58, 1, '2022-04-04 00:55:16'),
(91, 10, 59, 0, '2022-04-04 00:55:16'),
(92, 10, 60, 1, '2022-04-04 00:55:16'),
(93, 10, 61, 1, '2022-04-04 00:55:16'),
(94, 10, 62, 0, '2022-04-04 00:55:16'),
(95, 10, 63, 1, '2022-04-04 00:55:16'),
(96, 10, 64, 1, '2022-04-04 00:55:16'),
(97, 10, 65, 1, '2022-04-04 00:55:16'),
(98, 10, 66, 1, '2022-04-04 00:55:16'),
(99, 11, 1, 1, '2022-04-04 23:05:05'),
(100, 11, 2, 1, '2022-04-04 23:05:05'),
(101, 11, 3, 0, '2022-04-04 23:05:05'),
(102, 11, 4, 1, '2022-04-04 23:05:05'),
(103, 11, 5, 0, '2022-04-04 23:05:05'),
(104, 11, 6, 1, '2022-04-04 23:05:05'),
(105, 11, 7, 1, '2022-04-04 23:05:05'),
(106, 11, 8, 1, '2022-04-04 23:05:05'),
(107, 11, 9, 0, '2022-04-04 23:05:05'),
(108, 11, 10, 1, '2022-04-04 23:05:05'),
(109, 11, 11, 1, '2022-04-04 23:05:05'),
(110, 12, 1, 1, '2022-04-04 23:05:19'),
(111, 12, 2, 1, '2022-04-04 23:05:19'),
(112, 12, 3, 1, '2022-04-04 23:05:19'),
(113, 12, 4, 1, '2022-04-04 23:05:20'),
(114, 12, 5, 0, '2022-04-04 23:05:20'),
(115, 12, 6, 1, '2022-04-04 23:05:20'),
(116, 12, 7, 1, '2022-04-04 23:05:20'),
(117, 12, 8, 1, '2022-04-04 23:05:20'),
(118, 12, 9, 0, '2022-04-04 23:05:20'),
(119, 12, 10, 1, '2022-04-04 23:05:20'),
(120, 12, 11, 0, '2022-04-04 23:05:20'),
(121, 13, 1, 1, '2022-04-04 23:05:35'),
(122, 13, 2, 1, '2022-04-04 23:05:35'),
(123, 13, 3, 0, '2022-04-04 23:05:35'),
(124, 13, 4, 1, '2022-04-04 23:05:35'),
(125, 13, 5, 1, '2022-04-04 23:05:35'),
(126, 13, 6, 2, '2022-04-04 23:05:35'),
(127, 13, 7, 1, '2022-04-04 23:05:35'),
(128, 13, 8, 1, '2022-04-04 23:05:35'),
(129, 13, 9, 0, '2022-04-04 23:05:35'),
(130, 13, 10, 1, '2022-04-04 23:05:35'),
(131, 13, 11, 2, '2022-04-04 23:05:36'),
(132, 14, 1, 1, '2022-04-04 23:05:51'),
(133, 14, 2, 1, '2022-04-04 23:05:51'),
(134, 14, 3, 1, '2022-04-04 23:05:51'),
(135, 14, 4, 1, '2022-04-04 23:05:51'),
(136, 14, 5, 1, '2022-04-04 23:05:51'),
(137, 14, 6, 0, '2022-04-04 23:05:51'),
(138, 14, 7, 1, '2022-04-04 23:05:51'),
(139, 14, 8, 2, '2022-04-04 23:05:51'),
(140, 14, 9, 1, '2022-04-04 23:05:51'),
(141, 14, 10, 1, '2022-04-04 23:05:52'),
(142, 14, 11, 0, '2022-04-04 23:05:52'),
(143, 15, 12, 1, '2022-04-04 23:06:06'),
(144, 15, 13, 0, '2022-04-04 23:06:06'),
(145, 15, 14, 1, '2022-04-04 23:06:06'),
(146, 15, 15, 1, '2022-04-04 23:06:06'),
(147, 15, 16, 1, '2022-04-04 23:06:06'),
(148, 15, 17, 0, '2022-04-04 23:06:06'),
(149, 15, 18, 1, '2022-04-04 23:06:06'),
(150, 15, 19, 1, '2022-04-04 23:06:06'),
(151, 15, 20, 1, '2022-04-04 23:06:06'),
(152, 15, 21, 1, '2022-04-04 23:06:06'),
(153, 15, 22, 1, '2022-04-04 23:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(30) NOT NULL,
  `course_id` int(30) NOT NULL,
  `level` varchar(50) NOT NULL,
  `section` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `course_id`, `level`, `section`, `status`, `date_created`) VALUES
(1, 2, '1', 'B', 1, '2020-10-28 10:48:45'),
(2, 2, '1', 'A', 1, '2020-10-28 10:52:58'),
(3, 3, '1', 'A', 1, '2022-04-04 00:23:41'),
(4, 3, '1', 'B', 1, '2022-04-04 00:23:49'),
(5, 4, '1', 'A', 1, '2022-04-04 00:23:58'),
(6, 4, '1', 'B', 1, '2022-04-04 00:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `faculty_id` int(30) NOT NULL,
  `student_ids` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `faculty_id`, `student_ids`, `date_created`) VALUES
(1, 2, 1, 1, '', '0000-00-00 00:00:00'),
(2, 1, 2, 1, '', '0000-00-00 00:00:00'),
(3, 3, 5, 2, '', '2022-04-04 00:24:27'),
(4, 4, 2, 2, '', '2022-04-04 00:24:37'),
(5, 5, 3, 3, '', '2022-04-04 00:25:05'),
(6, 6, 5, 3, '', '2022-04-04 00:25:17'),
(7, 2, 6, 1, '', '2022-04-04 00:25:45'),
(8, 1, 6, 2, '', '2022-04-04 00:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `description`, `date_created`) VALUES
(1, 'EC', 'This Branch For ELECTRONICS & COMMUNICATION_11.', '2020-10-28 10:00:41'),
(2, 'COMPUTER', 'This Branch For Computer_07.', '2020-10-28 10:02:09'),
(3, 'MECHANICAL', 'This Branch For Mechanical_19.', '2020-10-28 10:02:16'),
(4, 'CIVIL', 'This Branch For Civil_06.', '2020-10-28 10:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `id_no`, `name`, `email`, `contact`, `address`, `date_created`) VALUES
(1, 'COMP_7126', 'Brijesh Rathod', 'rbrijesh306@gmail.com', '8200183999', 'AT AND POST PATAN-384265', '2020-10-28 11:32:18'),
(2, 'COMP_7560', 'Prajapati Vishv', 'vishvprj7560@gmail.com', '8128146558', 'AT AND POST PATAN-384265', '2022-04-04 00:16:47'),
(3, 'COMP_7085', 'Patel Jeel', 'jeelpatel7085@gmail.com', '8155959713', 'AT AND POST UNJHA-384170', '2022-04-04 00:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `id_no` varchar(50) NOT NULL,
  `class_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_no`, `class_id`, `name`, `date_created`) VALUES
(1, '196310307107', 2, 'Patel Shankumar Hiteshkumar', '2020-10-28 11:53:24'),
(2, '176310307057', 2, 'Patel Nevyaben Hasmukhbhai', '2020-10-28 15:20:57'),
(3, '196310307097', 2, 'Patel Parthkumar dineshkumar', '2022-04-03 23:56:26'),
(4, '196310307096', 2, 'Patel Parth Rajeshkumar', '2022-04-03 23:56:43'),
(5, '196310307094', 2, 'Patel Mihirkumar Nitinbhai', '2022-04-03 23:57:05'),
(6, '196310307537', 2, 'Patel Aryan Pravinkumar', '2022-04-03 23:57:40'),
(7, '196310307108', 2, 'Patel Shivamkumar Dipakkumar', '2022-04-03 23:58:08'),
(8, '186310307525', 2, 'Patel Keta Bharatbhai ', '2022-04-03 23:58:33'),
(9, '196310307029', 2, 'Kadia Panthi Shaileshbhai', '2022-04-03 23:59:16'),
(10, '176310307021', 2, 'Gohil Deep Kirtikumar', '2022-04-03 23:59:39'),
(11, '196310307092', 2, 'Patel Manasvi Pareshbhai', '2022-04-03 23:59:58'),
(12, '196310307138', 1, 'Suthar Khushbu Jitendrabhai', '2022-04-04 00:00:24'),
(13, '196310307120', 1, 'Prajapati Priyanshi Maheshkumar', '2022-04-04 00:00:48'),
(14, '196310307139', 1, 'Suthar Palak RajendraKumar', '2022-04-04 00:01:12'),
(15, '196310307059', 1, 'Patel Aasthaben kamleshbhai', '2022-04-04 00:01:31'),
(16, '196310307576', 1, 'Thakor Nikitaben Rameshji', '2022-04-04 00:01:55'),
(17, '196310307143', 1, 'Thakor Anandiben Rameshji', '2022-04-04 00:02:15'),
(18, '196310307148', 1, 'Thakor Rakeshji Natuji', '2022-04-04 00:02:31'),
(19, '196310307102', 1, 'Patel Riddhi Shaileshbhai', '2022-04-04 00:02:55'),
(20, '196310307075', 1, 'Patel Foram Bharatkumar', '2022-04-04 00:03:15'),
(21, '196310307074', 1, 'Patel Divya Dilipkumar', '2022-04-04 00:03:34'),
(22, '196310307125', 1, 'Rabari Nikitaben Ishvarbhai', '2022-04-04 00:03:58'),
(23, '196310307004', 3, 'Bhatiya Dhrumil Vipulkumar', '2022-04-04 00:33:01'),
(24, '196310307082', 3, 'Patel Jal Mitalkumar', '2022-04-04 00:33:23'),
(25, '196310307081', 3, 'Patel Jainish Hiteshkumar', '2022-04-04 00:33:41'),
(26, '196310307067', 3, 'Patel Dev Vipulkumar', '2022-04-04 00:33:58'),
(27, '196310307106', 3, 'Patel Savan Vikrambhai', '2022-04-04 00:34:22'),
(28, '196310307115', 3, 'Patel Yashkumar Bhailabhai', '2022-04-04 00:34:42'),
(29, '196310307512', 3, 'Darji Satyamkumar Kanubhai', '2022-04-04 00:35:00'),
(30, '186310307100', 3, 'Rathod Aditya Rajendrakumar', '2022-04-04 00:35:17'),
(31, '196310307534', 3, 'Panchal Nisarg Harishbhai', '2022-04-04 00:35:33'),
(32, '196310307513', 3, 'Dave Deval Rasikbhai', '2022-04-04 00:35:48'),
(33, '196310307014', 3, 'Desai Manishkumar Dhanubhai', '2022-04-04 00:36:14'),
(34, '196310307016', 4, 'Desai Zalak Deepakbhai', '2022-04-04 00:36:50'),
(35, '196310307565', 4, 'Sakshi S Chauhan', '2022-04-04 00:37:54'),
(36, '196310307531', 4, 'Nai Vishal Bhavarlal', '2022-04-04 00:38:15'),
(37, '196310307037', 4, 'Mevada Frenil VipulKumar', '2022-04-04 00:38:39'),
(38, '196310307502', 4, 'Anuj Kumar Nishad', '2022-04-04 00:38:57'),
(39, '196310307002', 4, 'Anjali R Jha', '2022-04-04 00:39:12'),
(40, '186310307077', 4, 'Patel Swapnil Ishvarbhai', '2022-04-04 00:39:45'),
(41, '186310307116', 4, 'Suthar Harsh Hashmukhbhai', '2022-04-04 00:40:55'),
(42, '186310307110', 4, 'Solanki Brijesh Sureshbhai', '2022-04-04 00:41:27'),
(43, '196310307119', 4, 'Prajapati NikhilKumar Sureshbhai', '2022-04-04 00:41:48'),
(44, '196310307118', 4, 'Prajapati Dev JigneshBhai', '2022-04-04 00:42:30'),
(45, '196310307124', 5, 'Qureshi Abdulvahid Hamidbhai', '2022-04-04 00:42:58'),
(46, '196310307543', 5, 'Patel kavisha kanubhai', '2022-04-04 00:43:16'),
(47, '196310307541', 5, 'Patel Dhvani Navinbhai ', '2022-04-04 00:44:00'),
(48, '196310307503', 5, 'Prajapati Ayushi Dilipkumar ', '2022-04-04 00:44:21'),
(49, '196310307566', 5, 'Sathavara Vidhi Shaileshbhai ', '2022-04-04 00:44:37'),
(50, '196310307570', 5, 'Soni Nityam Maheshkumar', '2022-04-04 00:45:03'),
(51, '196310307577', 5, 'Thakor Rameshji Kuvarji', '2022-04-04 00:45:31'),
(53, '196310307517', 5, 'Gohil Rahulkumar Rashikbhai', '2022-04-04 00:48:15'),
(54, '196310307025', 5, 'Jansari Shrushti Pravinkumar', '2022-04-04 00:48:52'),
(55, '196310307010', 5, 'Darji Mallika Sunilkumar', '2022-04-04 00:49:36'),
(56, '196310307061', 5, 'Patel Archana Ratilal', '2022-04-04 00:49:55'),
(57, '196310307569', 6, 'Soni Kaushal Rakeshbhai', '2022-04-04 00:50:44'),
(58, '196310307113', 6, 'Patel Vruti Aravindbhai', '2022-04-04 00:51:05'),
(59, '196310307523', 6, 'Shekh junedbhai', '2022-04-04 00:51:20'),
(60, '186310307018', 6, 'Goswami Tirthpuri Bharatpuri', '2022-04-04 00:51:37'),
(61, '196310307100', 6, 'Patel Priya subhendrabhai', '2022-04-04 00:51:53'),
(62, '196310307086', 6, 'Patel Jigisha rameshbhai', '2022-04-04 00:52:10'),
(63, '196310307069', 6, 'Patel Devanshu Jitendrakumar', '2022-04-04 00:52:53'),
(64, '196310307070', 6, 'Patel Devkumar Prakashbhai', '2022-04-04 00:53:08'),
(65, '186310307055', 6, 'Patel Brijeshkumar Shaileshbhai', '2022-04-04 00:53:31'),
(66, '196310307066', 6, 'Patel Deep NileshKumar', '2022-04-04 00:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject`, `description`, `date_created`) VALUES
(1, 'CP_3310701', 'Computer Programming (3310701).', '2020-10-28 10:29:53'),
(2, 'MATH1_3300001', 'Mathematics_1 (3300001).', '2020-10-28 10:30:48'),
(3, 'ECHM_3300003', 'Environment Conservation & Hazard Management (3300003)', '2020-10-28 10:30:57'),
(5, 'ENGLISH_3300002', 'English (3300002).', '2022-04-04 00:13:17'),
(6, 'CP_LAB_3310701', 'Computer Programming LABORATORY.', '2022-04-04 00:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Attendance Analysis System', 'rbrijesh306@gmail.com', '+918200183999', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff',
  `faculty_id` int(30) NOT NULL COMMENT 'for faculty user only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`, `faculty_id`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1, 0),
(2, 'Brijesh Rathod', 'rbrijesh306@gmail.com', '0dd1029e6b4ed33c0d11021fb6f9f0e7', 3, 1),
(3, 'Prajapati Vishv', 'vishvprj7560@gmail.com', 'ae4491b24ace794c4b82d382a180837a', 3, 2),
(4, 'Patel Jeel', 'jeelpatel7085@gmail.com', '6ef29e3e940fb7cb4cdfb158ea2e6bed', 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_list`
--
ALTER TABLE `attendance_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_list`
--
ALTER TABLE `attendance_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
