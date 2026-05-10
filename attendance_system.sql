-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2026 at 10:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'S J Wagh', 'principal@gmail.com', '1010');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('present','absent') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `subject_id`, `faculty_id`, `date`, `status`) VALUES
(1, 1, 4, 2, '2026-04-01', 'absent'),
(2, 19, 4, 2, '2026-04-01', 'absent'),
(3, 1, 9, 1, '2026-04-01', 'absent'),
(4, 19, 9, 1, '2026-04-01', 'present'),
(5, 1, 1, 1, '2026-04-01', 'present'),
(6, 19, 1, 1, '2026-04-01', 'absent'),
(7, 1, 4, 2, '2026-04-01', 'present'),
(8, 19, 4, 2, '2026-04-01', 'absent'),
(9, 32, 10, 4, '2026-04-01', 'present'),
(10, 1, 4, 2, '2026-04-01', 'present'),
(11, 19, 4, 2, '2026-04-01', 'absent'),
(12, 32, 10, 4, '2026-04-02', 'present'),
(13, 33, 10, 4, '2026-04-02', 'present'),
(14, 34, 10, 4, '2026-04-02', 'present'),
(15, 35, 10, 4, '2026-04-02', 'absent'),
(16, 1, 4, 2, '2026-04-02', 'present'),
(17, 19, 4, 2, '2026-04-02', 'present'),
(18, 36, 4, 2, '2026-04-02', 'present'),
(19, 37, 4, 2, '2026-04-02', 'present'),
(20, 38, 4, 2, '2026-04-02', 'present'),
(21, 39, 4, 2, '2026-04-02', 'present'),
(22, 40, 4, 2, '2026-04-02', 'absent'),
(23, 46, 4, 2, '2026-04-02', 'present'),
(24, 47, 4, 2, '2026-04-02', 'absent'),
(25, 48, 4, 2, '2026-04-02', 'absent'),
(26, 1, 4, 2, '2026-04-02', 'absent'),
(27, 19, 4, 2, '2026-04-02', 'absent'),
(28, 36, 4, 2, '2026-04-02', 'present'),
(29, 37, 4, 2, '2026-04-02', 'present'),
(30, 38, 4, 2, '2026-04-02', 'absent'),
(31, 39, 4, 2, '2026-04-02', 'present'),
(32, 40, 4, 2, '2026-04-02', 'absent'),
(33, 46, 4, 2, '2026-04-02', 'absent'),
(34, 47, 4, 2, '2026-04-02', 'present'),
(35, 48, 4, 2, '2026-04-02', 'absent'),
(36, 32, 10, 4, '2026-04-02', 'present'),
(37, 33, 10, 4, '2026-04-02', 'present'),
(38, 34, 10, 4, '2026-04-02', 'absent'),
(39, 35, 10, 4, '2026-04-02', 'absent'),
(40, 1, 8, 2, '2026-04-03', 'present'),
(41, 19, 8, 2, '2026-04-03', 'absent'),
(42, 36, 8, 2, '2026-04-03', 'absent'),
(43, 37, 8, 2, '2026-04-03', 'absent'),
(44, 38, 8, 2, '2026-04-03', 'present'),
(45, 39, 8, 2, '2026-04-03', 'present'),
(46, 40, 8, 2, '2026-04-03', 'absent'),
(47, 46, 8, 2, '2026-04-03', 'present'),
(48, 47, 8, 2, '2026-04-03', 'present'),
(49, 48, 8, 2, '2026-04-03', 'absent'),
(50, 1, 4, 2, '2026-04-02', 'present'),
(51, 19, 4, 2, '2026-04-02', 'present'),
(52, 36, 4, 2, '2026-04-02', 'absent'),
(53, 37, 4, 2, '2026-04-02', 'present'),
(54, 38, 4, 2, '2026-04-02', 'absent'),
(55, 39, 4, 2, '2026-04-02', 'absent'),
(56, 40, 4, 2, '2026-04-02', 'present'),
(57, 46, 4, 2, '2026-04-02', 'present'),
(58, 47, 4, 2, '2026-04-02', 'absent'),
(59, 48, 4, 2, '2026-04-02', 'absent'),
(60, 49, 11, 5, '2026-04-02', 'present'),
(61, 50, 11, 5, '2026-04-02', 'present'),
(62, 49, 11, 5, '2026-04-02', 'absent'),
(63, 50, 11, 5, '2026-04-02', 'present'),
(64, 19, 1, 1, '2026-03-14', 'present'),
(65, 32, 10, 4, '2026-04-02', 'present'),
(66, 33, 10, 4, '2026-04-02', 'absent'),
(67, 34, 10, 4, '2026-04-02', 'absent'),
(68, 35, 10, 4, '2026-04-02', 'absent'),
(69, 31, 7, 3, '2026-04-02', 'absent'),
(70, 41, 7, 3, '2026-04-02', 'present'),
(71, 42, 7, 3, '2026-04-02', 'present'),
(72, 43, 7, 3, '2026-04-02', 'present'),
(73, 44, 7, 3, '2026-04-02', 'absent'),
(74, 45, 7, 3, '2026-04-02', 'absent'),
(75, 1, 4, 2, '2026-04-02', 'present'),
(76, 19, 4, 2, '2026-04-02', 'present'),
(77, 36, 4, 2, '2026-04-02', 'present'),
(78, 37, 4, 2, '2026-04-02', 'absent'),
(79, 38, 4, 2, '2026-04-02', 'absent'),
(80, 39, 4, 2, '2026-04-02', 'absent'),
(81, 40, 4, 2, '2026-04-02', 'present'),
(82, 46, 4, 2, '2026-04-02', 'present'),
(83, 47, 4, 2, '2026-04-02', 'absent'),
(84, 48, 4, 2, '2026-04-02', 'absent'),
(85, 1, 4, 2, '2026-04-02', 'absent'),
(86, 19, 4, 2, '2026-04-02', 'absent'),
(87, 36, 4, 2, '2026-04-02', 'present'),
(88, 37, 4, 2, '2026-04-02', 'present'),
(89, 38, 4, 2, '2026-04-02', 'absent'),
(90, 39, 4, 2, '2026-04-02', 'present'),
(91, 40, 4, 2, '2026-04-02', 'present'),
(92, 46, 4, 2, '2026-04-02', 'present'),
(93, 47, 4, 2, '2026-04-02', 'absent'),
(94, 48, 4, 2, '2026-04-02', 'absent'),
(95, 1, 8, 2, '2026-04-03', 'present'),
(96, 19, 8, 2, '2026-04-03', 'present'),
(97, 36, 8, 2, '2026-04-03', 'absent'),
(98, 37, 8, 2, '2026-04-03', 'present'),
(99, 38, 8, 2, '2026-04-03', 'absent'),
(100, 39, 8, 2, '2026-04-03', 'absent'),
(101, 40, 8, 2, '2026-04-03', 'present'),
(102, 46, 8, 2, '2026-04-03', 'absent'),
(103, 47, 8, 2, '2026-04-03', 'present'),
(104, 48, 8, 2, '2026-04-03', 'absent'),
(105, 31, 7, 3, '2026-04-03', 'present'),
(106, 41, 7, 3, '2026-04-03', 'present'),
(107, 42, 7, 3, '2026-04-03', 'absent'),
(108, 43, 7, 3, '2026-04-03', 'absent'),
(109, 44, 7, 3, '2026-04-03', 'absent'),
(110, 45, 7, 3, '2026-04-03', 'absent'),
(111, 59, 7, 3, '2026-04-03', 'absent'),
(112, 1, 4, 2, '2026-04-03', 'present'),
(113, 19, 4, 2, '2026-04-03', 'present'),
(114, 36, 4, 2, '2026-04-03', 'present'),
(115, 37, 4, 2, '2026-04-03', 'absent'),
(116, 38, 4, 2, '2026-04-03', 'absent'),
(117, 39, 4, 2, '2026-04-03', 'absent'),
(118, 40, 4, 2, '2026-04-03', 'absent'),
(119, 46, 4, 2, '2026-04-03', 'absent'),
(120, 47, 4, 2, '2026-04-03', 'absent'),
(121, 48, 4, 2, '2026-04-03', 'absent'),
(122, 55, 4, 2, '2026-04-03', 'absent'),
(123, 1, 8, 2, '2026-04-03', 'absent'),
(124, 19, 8, 2, '2026-04-03', 'present'),
(125, 36, 8, 2, '2026-04-03', 'absent'),
(126, 37, 8, 2, '2026-04-03', 'absent'),
(127, 38, 8, 2, '2026-04-03', 'absent'),
(128, 39, 8, 2, '2026-04-03', 'absent'),
(129, 40, 8, 2, '2026-04-03', 'absent'),
(130, 46, 8, 2, '2026-04-03', 'absent'),
(131, 47, 8, 2, '2026-04-03', 'absent'),
(132, 48, 8, 2, '2026-04-03', 'absent'),
(133, 55, 8, 2, '2026-04-03', 'absent'),
(134, 1, 8, 2, '2026-04-03', 'absent'),
(135, 19, 8, 2, '2026-04-03', 'present'),
(136, 36, 8, 2, '2026-04-03', 'present'),
(137, 37, 8, 2, '2026-04-03', 'absent'),
(138, 38, 8, 2, '2026-04-03', 'absent'),
(139, 39, 8, 2, '2026-04-03', 'present'),
(140, 40, 8, 2, '2026-04-03', 'absent'),
(141, 46, 8, 2, '2026-04-03', 'absent'),
(142, 47, 8, 2, '2026-04-03', 'absent'),
(143, 48, 8, 2, '2026-04-03', 'absent'),
(144, 55, 8, 2, '2026-04-03', 'present'),
(145, 1, 1, 1, '2026-04-03', 'absent'),
(146, 19, 1, 1, '2026-04-03', 'present'),
(147, 36, 1, 1, '2026-04-03', 'absent'),
(148, 37, 1, 1, '2026-04-03', 'absent'),
(149, 38, 1, 1, '2026-04-03', 'absent'),
(150, 39, 1, 1, '2026-04-03', 'absent'),
(151, 40, 1, 1, '2026-04-03', 'absent'),
(152, 46, 1, 1, '2026-04-03', 'absent'),
(153, 47, 1, 1, '2026-04-03', 'absent'),
(154, 48, 1, 1, '2026-04-03', 'absent'),
(155, 55, 1, 1, '2026-04-03', 'present'),
(156, 31, 7, 3, '2026-04-03', 'present'),
(157, 41, 7, 3, '2026-04-03', 'present'),
(158, 42, 7, 3, '2026-04-03', 'present'),
(159, 43, 7, 3, '2026-04-03', 'absent'),
(160, 44, 7, 3, '2026-04-03', 'present'),
(161, 45, 7, 3, '2026-04-03', 'absent'),
(162, 59, 7, 3, '2026-04-03', 'present'),
(163, 67, 7, 3, '2026-04-03', 'present'),
(164, 1, 4, 2, '2026-04-04', 'present'),
(165, 19, 4, 2, '2026-04-04', 'present'),
(166, 36, 4, 2, '2026-04-04', 'present'),
(167, 37, 4, 2, '2026-04-04', 'present'),
(168, 38, 4, 2, '2026-04-04', 'present'),
(169, 39, 4, 2, '2026-04-04', 'absent'),
(170, 40, 4, 2, '2026-04-04', 'present'),
(171, 46, 4, 2, '2026-04-04', 'absent'),
(172, 47, 4, 2, '2026-04-04', 'present'),
(173, 48, 4, 2, '2026-04-04', 'absent'),
(174, 55, 4, 2, '2026-04-04', 'present'),
(175, 1, 1, 1, '2026-04-04', 'present'),
(176, 19, 1, 1, '2026-04-04', 'present'),
(177, 36, 1, 1, '2026-04-04', 'absent'),
(178, 37, 1, 1, '2026-04-04', 'absent'),
(179, 38, 1, 1, '2026-04-04', 'absent'),
(180, 39, 1, 1, '2026-04-04', 'present'),
(181, 40, 1, 1, '2026-04-04', 'absent'),
(182, 46, 1, 1, '2026-04-04', 'absent'),
(183, 47, 1, 1, '2026-04-04', 'absent'),
(184, 48, 1, 1, '2026-04-04', 'absent'),
(185, 55, 1, 1, '2026-04-04', 'present'),
(186, 1, 4, 2, '2026-04-04', 'present'),
(187, 19, 4, 2, '2026-04-04', 'present'),
(188, 36, 4, 2, '2026-04-04', 'present'),
(189, 37, 4, 2, '2026-04-04', 'present'),
(190, 38, 4, 2, '2026-04-04', 'present'),
(191, 39, 4, 2, '2026-04-04', 'absent'),
(192, 40, 4, 2, '2026-04-04', 'present'),
(193, 46, 4, 2, '2026-04-04', 'absent'),
(194, 47, 4, 2, '2026-04-04', 'present'),
(195, 48, 4, 2, '2026-04-04', 'absent'),
(196, 55, 4, 2, '2026-04-04', 'present'),
(197, 1, 4, 2, '2026-04-04', 'absent'),
(198, 19, 4, 2, '2026-04-04', 'absent'),
(199, 36, 4, 2, '2026-04-04', 'present'),
(200, 37, 4, 2, '2026-04-04', 'absent'),
(201, 38, 4, 2, '2026-04-04', 'absent'),
(202, 39, 4, 2, '2026-04-04', 'present'),
(203, 40, 4, 2, '2026-04-04', 'absent'),
(204, 46, 4, 2, '2026-04-04', 'present'),
(205, 47, 4, 2, '2026-04-04', 'absent'),
(206, 48, 4, 2, '2026-04-04', 'present'),
(207, 55, 4, 2, '2026-04-04', 'absent'),
(208, 1, 4, 2, '2026-04-05', 'present'),
(209, 19, 4, 2, '2026-04-05', 'absent'),
(210, 36, 4, 2, '2026-04-05', 'present'),
(211, 37, 4, 2, '2026-04-05', 'absent'),
(212, 38, 4, 2, '2026-04-05', 'present'),
(213, 39, 4, 2, '2026-04-05', 'present'),
(214, 40, 4, 2, '2026-04-05', 'present'),
(215, 46, 4, 2, '2026-04-05', 'absent'),
(216, 47, 4, 2, '2026-04-05', 'absent'),
(217, 48, 4, 2, '2026-04-05', 'absent'),
(218, 55, 4, 2, '2026-04-05', 'absent'),
(219, 1, 4, 2, '2026-04-05', 'present'),
(220, 19, 4, 2, '2026-04-05', 'present'),
(221, 36, 4, 2, '2026-04-05', 'absent'),
(222, 37, 4, 2, '2026-04-05', 'absent'),
(223, 38, 4, 2, '2026-04-05', 'absent'),
(224, 39, 4, 2, '2026-04-05', 'absent'),
(225, 40, 4, 2, '2026-04-05', 'absent'),
(226, 46, 4, 2, '2026-04-05', 'absent'),
(227, 47, 4, 2, '2026-04-05', 'absent'),
(228, 48, 4, 2, '2026-04-05', 'absent'),
(229, 55, 4, 2, '2026-04-05', 'present'),
(230, 1, 4, 2, '2026-04-04', 'present'),
(231, 19, 4, 2, '2026-04-04', 'present'),
(232, 36, 4, 2, '2026-04-04', 'present'),
(233, 37, 4, 2, '2026-04-04', 'present'),
(234, 38, 4, 2, '2026-04-04', 'present'),
(235, 39, 4, 2, '2026-04-04', 'present'),
(236, 40, 4, 2, '2026-04-04', 'present'),
(237, 46, 4, 2, '2026-04-04', 'present'),
(238, 47, 4, 2, '2026-04-04', 'present'),
(239, 48, 4, 2, '2026-04-04', 'present'),
(240, 55, 4, 2, '2026-04-04', 'present'),
(241, 1, 1, 1, '2026-04-06', 'present'),
(242, 19, 1, 1, '2026-04-06', 'present'),
(243, 36, 1, 1, '2026-04-06', 'absent'),
(244, 37, 1, 1, '2026-04-06', 'present'),
(245, 38, 1, 1, '2026-04-06', 'absent'),
(246, 39, 1, 1, '2026-04-06', 'absent'),
(247, 40, 1, 1, '2026-04-06', 'present'),
(248, 46, 1, 1, '2026-04-06', 'absent'),
(249, 47, 1, 1, '2026-04-06', 'absent'),
(250, 48, 1, 1, '2026-04-06', 'present'),
(251, 55, 1, 1, '2026-04-06', 'absent'),
(252, 1, 1, 1, '2026-04-06', 'present'),
(253, 19, 1, 1, '2026-04-06', 'absent'),
(254, 36, 1, 1, '2026-04-06', 'absent'),
(255, 37, 1, 1, '2026-04-06', 'absent'),
(256, 38, 1, 1, '2026-04-06', 'absent'),
(257, 39, 1, 1, '2026-04-06', 'absent'),
(258, 40, 1, 1, '2026-04-06', 'absent'),
(259, 46, 1, 1, '2026-04-06', 'absent'),
(260, 47, 1, 1, '2026-04-06', 'absent'),
(261, 48, 1, 1, '2026-04-06', 'absent'),
(262, 55, 1, 1, '2026-04-06', 'present'),
(263, 1, 1, 1, '2026-04-06', 'absent'),
(264, 19, 1, 1, '2026-04-06', 'absent'),
(265, 36, 1, 1, '2026-04-06', 'present'),
(266, 37, 1, 1, '2026-04-06', 'absent'),
(267, 38, 1, 1, '2026-04-06', 'present'),
(268, 39, 1, 1, '2026-04-06', 'absent'),
(269, 40, 1, 1, '2026-04-06', 'absent'),
(270, 46, 1, 1, '2026-04-06', 'present'),
(271, 47, 1, 1, '2026-04-06', 'absent'),
(272, 48, 1, 1, '2026-04-06', 'absent'),
(273, 55, 1, 1, '2026-04-06', 'absent'),
(274, 32, 10, 4, '2026-04-06', 'absent'),
(275, 33, 10, 4, '2026-04-06', 'present'),
(276, 34, 10, 4, '2026-04-06', 'absent'),
(277, 35, 10, 4, '2026-04-06', 'absent'),
(278, 32, 10, 4, '2026-04-06', 'absent'),
(279, 33, 10, 4, '2026-04-06', 'present'),
(280, 34, 10, 4, '2026-04-06', 'absent'),
(281, 35, 10, 4, '2026-04-06', 'absent'),
(282, 32, 10, 4, '2026-04-06', 'absent'),
(283, 33, 10, 4, '2026-04-06', 'present'),
(284, 34, 10, 4, '2026-04-06', 'absent'),
(285, 35, 10, 4, '2026-04-06', 'present'),
(286, 32, 10, 4, '2026-04-07', 'absent'),
(287, 33, 10, 4, '2026-04-07', 'absent'),
(288, 34, 10, 4, '2026-04-07', 'present'),
(289, 35, 10, 4, '2026-04-07', 'absent'),
(290, 32, 10, 4, '2026-04-07', 'present'),
(291, 33, 10, 4, '2026-04-07', 'present'),
(292, 34, 10, 4, '2026-04-07', 'present'),
(293, 35, 10, 4, '2026-04-07', 'absent'),
(294, 49, 11, 18, '2026-04-14', 'present'),
(295, 50, 11, 18, '2026-04-14', 'absent'),
(296, 1, 1, 1, '2026-04-16', 'absent'),
(297, 19, 1, 1, '2026-04-16', 'present'),
(298, 36, 1, 1, '2026-04-16', 'present'),
(299, 37, 1, 1, '2026-04-16', 'absent'),
(300, 38, 1, 1, '2026-04-16', 'absent'),
(301, 39, 1, 1, '2026-04-16', 'absent'),
(302, 40, 1, 1, '2026-04-16', 'absent'),
(303, 46, 1, 1, '2026-04-16', 'absent'),
(304, 47, 1, 1, '2026-04-16', 'absent'),
(305, 48, 1, 1, '2026-04-16', 'absent'),
(306, 55, 1, 1, '2026-04-16', 'absent'),
(307, 74, 1, 1, '2026-04-16', 'absent'),
(308, 1, 1, 1, '2026-04-17', 'present'),
(309, 19, 1, 1, '2026-04-17', 'present'),
(310, 36, 1, 1, '2026-04-17', 'present'),
(311, 37, 1, 1, '2026-04-17', 'present'),
(312, 38, 1, 1, '2026-04-17', 'absent'),
(313, 39, 1, 1, '2026-04-17', 'present'),
(314, 40, 1, 1, '2026-04-17', 'present'),
(315, 46, 1, 1, '2026-04-17', 'absent'),
(316, 47, 1, 1, '2026-04-17', 'absent'),
(317, 48, 1, 1, '2026-04-17', 'present'),
(318, 55, 1, 1, '2026-04-17', 'present'),
(319, 74, 1, 1, '2026-04-17', 'present'),
(320, 1, 9, 1, '2026-04-18', 'present'),
(321, 19, 9, 1, '2026-04-18', 'absent'),
(322, 36, 9, 1, '2026-04-18', 'present'),
(323, 37, 9, 1, '2026-04-18', 'absent'),
(324, 38, 9, 1, '2026-04-18', 'present'),
(325, 39, 9, 1, '2026-04-18', 'absent'),
(326, 40, 9, 1, '2026-04-18', 'present'),
(327, 46, 9, 1, '2026-04-18', 'absent'),
(328, 47, 9, 1, '2026-04-18', 'present'),
(329, 48, 9, 1, '2026-04-18', 'present'),
(330, 55, 9, 1, '2026-04-18', 'present'),
(331, 74, 9, 1, '2026-04-18', 'present'),
(332, 88, 9, 1, '2026-04-18', 'present'),
(333, 89, 9, 1, '2026-04-18', 'absent'),
(334, 1, 9, 1, '2026-04-18', 'present'),
(335, 19, 9, 1, '2026-04-18', 'present'),
(336, 36, 9, 1, '2026-04-18', 'absent'),
(337, 37, 9, 1, '2026-04-18', 'present'),
(338, 38, 9, 1, '2026-04-18', 'present'),
(339, 39, 9, 1, '2026-04-18', 'absent'),
(340, 40, 9, 1, '2026-04-18', 'present'),
(341, 46, 9, 1, '2026-04-18', 'present'),
(342, 47, 9, 1, '2026-04-18', 'present'),
(343, 48, 9, 1, '2026-04-18', 'present'),
(344, 55, 9, 1, '2026-04-18', 'present'),
(345, 74, 9, 1, '2026-04-18', 'present'),
(346, 88, 9, 1, '2026-04-18', 'present'),
(347, 89, 9, 1, '2026-04-18', 'present'),
(348, 1, 9, 1, '2026-04-18', 'absent'),
(349, 19, 9, 1, '2026-04-18', 'present'),
(350, 36, 9, 1, '2026-04-18', 'present'),
(351, 37, 9, 1, '2026-04-18', 'present'),
(352, 38, 9, 1, '2026-04-18', 'absent'),
(353, 39, 9, 1, '2026-04-18', 'absent'),
(354, 40, 9, 1, '2026-04-18', 'present'),
(355, 46, 9, 1, '2026-04-18', 'absent'),
(356, 47, 9, 1, '2026-04-18', 'present'),
(357, 48, 9, 1, '2026-04-18', 'present'),
(358, 55, 9, 1, '2026-04-18', 'absent'),
(359, 74, 9, 1, '2026-04-18', 'present'),
(360, 88, 9, 1, '2026-04-18', 'absent'),
(361, 89, 9, 1, '2026-04-18', 'absent'),
(362, 32, 10, 4, '2026-04-18', 'absent'),
(363, 33, 10, 4, '2026-04-18', 'present'),
(364, 34, 10, 4, '2026-04-18', 'absent'),
(365, 35, 10, 4, '2026-04-18', 'absent'),
(366, 32, 10, 4, '2026-04-18', 'present'),
(367, 33, 10, 4, '2026-04-18', 'present'),
(368, 34, 10, 4, '2026-04-18', 'present'),
(369, 35, 10, 4, '2026-04-18', 'absent'),
(370, 32, 10, 4, '2026-04-16', 'present'),
(371, 33, 10, 4, '2026-04-16', 'present'),
(372, 34, 10, 4, '2026-04-16', 'absent'),
(373, 35, 10, 4, '2026-04-16', 'absent'),
(374, 32, 10, 4, '2026-04-20', 'present'),
(375, 33, 10, 4, '2026-04-20', 'absent'),
(376, 34, 10, 4, '2026-04-20', 'absent'),
(377, 35, 10, 4, '2026-04-20', 'present'),
(378, 32, 10, 4, '2026-04-20', 'present'),
(379, 33, 10, 4, '2026-04-20', 'present'),
(380, 34, 10, 4, '2026-04-20', 'present'),
(381, 35, 10, 4, '2026-04-20', 'absent'),
(382, 32, 10, 30, '2026-04-20', 'present'),
(383, 33, 10, 30, '2026-04-20', 'present'),
(384, 34, 10, 30, '2026-04-20', 'present'),
(385, 35, 10, 30, '2026-04-20', 'absent'),
(386, 1, 4, 4, '2026-04-20', 'absent'),
(387, 19, 4, 4, '2026-04-20', 'present'),
(388, 36, 4, 4, '2026-04-20', 'present'),
(389, 37, 4, 4, '2026-04-20', 'present'),
(390, 38, 4, 4, '2026-04-20', 'absent'),
(391, 39, 4, 4, '2026-04-20', 'present'),
(392, 40, 4, 4, '2026-04-20', 'absent'),
(393, 46, 4, 4, '2026-04-20', 'present'),
(394, 47, 4, 4, '2026-04-20', 'absent'),
(395, 48, 4, 4, '2026-04-20', 'present'),
(396, 55, 4, 4, '2026-04-20', 'present'),
(397, 74, 4, 4, '2026-04-20', 'present'),
(398, 88, 4, 4, '2026-04-20', 'present'),
(399, 89, 4, 4, '2026-04-20', 'present'),
(400, 90, 4, 4, '2026-04-20', 'present'),
(401, 91, 4, 4, '2026-04-20', 'absent'),
(402, 32, 10, 7, '2026-04-20', 'present'),
(403, 33, 10, 7, '2026-04-20', 'present'),
(404, 34, 10, 7, '2026-04-20', 'absent'),
(405, 35, 10, 7, '2026-04-20', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `year` varchar(20) NOT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `academic_year` varchar(20) DEFAULT NULL,
  `class_teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `department_id`, `year`, `batch`, `academic_year`, `class_teacher_id`) VALUES
(3, 80, '4', NULL, '2025-26', 5),
(5, 60, '2', NULL, '2025-26', 1),
(7, 60, '3', NULL, '2025-26', 2),
(8, 60, '4', NULL, '2025-26', 2),
(9, 80, '1', NULL, '2025-26', 18),
(10, 80, '2', NULL, '2025-26', 3),
(11, 80, '3', NULL, '2025-26', 5),
(12, 60, '1', NULL, '2024-25', 14),
(13, 60, '2', NULL, '2024-25', 2),
(14, 60, '3', NULL, '2024-25', 26),
(15, 60, '4', NULL, '2024-25', 10),
(16, 60, '1', NULL, '2025-26', 10);

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`id`, `faculty_id`, `department_id`, `year`) VALUES
(4, 1, 60, '3'),
(2, 3, 80, '2'),
(1, 4, 60, '2');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `hod_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `hod_id`) VALUES
(60, 'Information Technology', 4),
(80, 'Mechanical', 5);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('faculty','hod','principal') DEFAULT 'faculty',
  `department_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `email`, `password`, `role`, `department_id`, `status`) VALUES
(1, 'M. B. Patil', 'teacher@gmail.com', '1234', 'faculty', 60, 'active'),
(2, 'Kapil Chavan', 'teacher2@gmail.com', '1234', 'faculty', 60, 'active'),
(3, 'K. S. Gharge', 'gharge@gmail.com', '1234', 'faculty', 80, 'active'),
(4, 'Gandle Madam', 'gandle@gmail.com', '1234', 'hod', 60, 'active'),
(5, 'Vijay Raka', 'rakav@gmail.com', '1234', 'hod', 80, 'active'),
(6, 'Sanjeev Wagh', 'sanjeev_wagh@gmail.com', '1234', 'principal', NULL, 'active'),
(7, 'Raj Kulkarni', 'kulkarni@gmail.com', '1234', 'faculty', 60, 'active'),
(10, 'Patokar', 'patokar@gmail.com', '1234', 'faculty', 60, 'active'),
(14, 'Demo', 'demo@gamil.com', '123', 'faculty', 60, 'active'),
(18, 'Kolse', 'kolse@gmail.com', '1234', 'faculty', 80, 'active'),
(24, 'Sanafsf', 's4@gmai', '123', 'faculty', 60, 'inactive'),
(26, 'jjjj', 'jjj@gmail.com', '12354', 'faculty', 60, 'active'),
(28, 'Maruti Bhagoji Patil', 'mbpatil@gmail.com', '1234', 'faculty', 60, 'active'),
(30, 'harshwardhan Shivajirao Gayakwad', 'h@gmail.com', '1234', 'faculty', 60, 'active'),
(33, 'R B Kulkarni', 'ithod@gmail.com', '1234', 'faculty', 60, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subjects`
--

CREATE TABLE `faculty_subjects` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_subjects`
--

INSERT INTO `faculty_subjects` (`id`, `faculty_id`, `subject_id`, `batch_id`) VALUES
(20, 1, 1, NULL),
(12, 2, 8, NULL),
(3, 3, 7, NULL),
(22, 4, 4, NULL),
(11, 4, 10, NULL),
(21, 7, 10, NULL),
(16, 10, 4, NULL),
(9, 18, 11, NULL),
(18, 28, 4, NULL),
(19, 30, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `student_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll_no`, `department_id`, `year`, `batch`, `password`, `email`, `student_image`) VALUES
(1, 'Prasad Sham Rohile', '226018', 60, 2, 'IT4', '1234', 'prasad@gmail.com', NULL),
(19, 'Om Satish Dhone', '226014', 60, 2, '3', '1234', 'om@gmail.com', NULL),
(31, 'Yash Kadam', '228013', 80, 2, 'IT3', NULL, NULL, NULL),
(32, 'Ojas ABC XYZ', '216013', 60, 3, 'IT3', '1234', 'ojas@gmail.com', NULL),
(33, 'Rohit Patil', '216020', 60, 3, 'IT4', '1234', 'rohit@gmail.com', NULL),
(34, 'Sneha Kulkarni', '216021', 60, 3, 'IT4', '1234', 'sneha@gmail.com', NULL),
(35, 'Amit Shinde', '216022', 60, 3, 'IT4', NULL, NULL, NULL),
(36, 'Pooja Deshmukh', '226023', 60, 2, 'IT4', '1234', 'pooja@gmail.com', NULL),
(37, 'Rahul Jadhav', '226024', 60, 2, 'IT4', NULL, NULL, NULL),
(38, 'Neha Pawar', '226025', 60, 2, 'IT4', '1234', 'neha@gmail.com', NULL),
(39, 'Sagar More', '226026', 60, 2, 'IT4', NULL, NULL, NULL),
(40, 'Anjali Patil', '226027', 60, 2, 'IT4', '1234', 'anjali@gmail.com', NULL),
(41, 'Vikas Chavan', '228028', 80, 2, 'IT4', NULL, NULL, NULL),
(42, 'Kiran Gaikwad', '228029', 80, 2, 'IT4', '1234', 'kiran@gmail.com', NULL),
(43, 'Tejas Bhosale', '228030', 80, 2, 'IT4', NULL, NULL, NULL),
(44, 'Priya Salunkhe', '228031', 80, 2, 'IT4', '1234', 'priya@gmail.com', NULL),
(45, 'Nikhil Dighe', '228032', 80, 2, 'IT4', NULL, NULL, NULL),
(46, 'Meena Joshi', '226033', 60, 2, 'IT4', '1234', 'meena@gmail.com', NULL),
(47, 'Akash Mane', '226034', 60, 2, 'IT4', NULL, NULL, NULL),
(48, 'Rutuja Kale', '226035', 60, 2, 'IT4', '1234', 'rutuja@gmail.com', NULL),
(49, 'Sachin Gawade', '216036', 80, 3, 'IT4', NULL, NULL, NULL),
(50, 'Komal Shinde', '218037', 80, 3, 'IT4', '1234', 'komal@gmail.com', NULL),
(53, 'Mohan Chavan', '226054', 60, 4, 'IT4', '1234', 'mohanchavan@gmail.com', NULL),
(55, 'Pratik Prafull Ghaytidak ', '25143078', 60, 2, 'IT3', '123', 'pratik@gmail.com', NULL),
(59, 'rushi', '5512412', 80, 2, 'IT3', '134', 'rushiggg@gmail.com', NULL),
(67, 'sfesf', '23', 80, 2, 'IT3', '234', 'fe@fff.com', NULL),
(74, 'demo', '521', 60, 2, '', '1234', 'demo@gmail.com', NULL),
(88, 'Pratik Ghaytidak', '14211', 60, 2, '', '1234', 'gg@gmail.com', '1776501240_5643.png'),
(89, 'hhhh', '424', 60, 2, '4', '1234', 'hhhh@gmail.com', '1776501825_3734.png'),
(90, 'Tushar', '122222', 60, 2, '', '1234', 't@gmail.com', '1776518927_1536.png'),
(91, 'Dnyaneshwar ', '12321', 60, 2, '', '1234', 'dnyanu@gmail.com', '1776522052_4440.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `type` enum('theory','practical','both','internal') DEFAULT NULL,
  `semester` enum('1st','2nd','3rd','4th','5th','6th','7th','8th') DEFAULT NULL,
  `course_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `department_id`, `year`, `type`, `semester`, `course_code`) VALUES
(1, 'Java', 60, 2, 'both', '3rd', 'IT3304'),
(4, 'DBMS', 60, 2, 'both', '4th', 'IT3305'),
(7, 'Thermodynamics', 80, 2, 'both', '3rd', 'ME3304'),
(8, 'Python', 60, 2, 'both', '4th', 'IT3306'),
(9, 'Adv Java', 60, 2, 'both', '4th', 'IT3307'),
(10, 'Mobile App Dev', 60, 3, 'both', '5th', 'IT4401'),
(11, 'Auto CAD', 80, 3, 'practical', '5th', 'ME4401');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `class_teacher_id` (`class_teacher_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty_id` (`faculty_id`,`department_id`,`year`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hod_department` (`hod_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_faculty_department` (`department_id`);

--
-- Indexes for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `faculty_id` (`faculty_id`,`subject_id`,`batch_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`name`,`roll_no`),
  ADD UNIQUE KEY `roll_no` (`roll_no`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_code` (`course_code`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`class_teacher_id`) REFERENCES `faculty` (`id`);

--
-- Constraints for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD CONSTRAINT `class_teacher_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  ADD CONSTRAINT `class_teacher_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `fk_hod_department` FOREIGN KEY (`hod_id`) REFERENCES `faculty` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `fk_faculty_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  ADD CONSTRAINT `faculty_subjects_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculty_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculty_subjects_ibfk_3` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
