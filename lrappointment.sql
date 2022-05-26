-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2022 at 04:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'bijit', 'bijit@gmail.com', '$2y$10$gEoMBlLxwiWMoldm9PJS7.y0ppb5swNfDr9X.Oi/SYdc8pnn.NgnO', '2022-06-22', '2022-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(100) NOT NULL,
  `schedule_id` int(100) NOT NULL,
  `student_id` int(100) NOT NULL,
  `teacher_id` int(100) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `time_from` time(4) NOT NULL,
  `time_to` time(4) NOT NULL,
  `day` date NOT NULL,
  `department` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `schedule_id`, `student_id`, `teacher_id`, `student_name`, `teacher_name`, `time_from`, `time_to`, `day`, `department`, `status`, `updated_at`, `created_at`) VALUES
(1, 0, 1, 1, 'bijit', 'Hasan', '17:15:00.0000', '21:15:00.0000', '2022-05-24', 'CSE', 0, '2022-05-23', '2022-05-23'),
(2, 0, 1, 1, 'bijit', 'Hasan', '15:16:00.0000', '16:16:00.0000', '2022-05-26', 'CSE', 1, '2022-05-23', '2022-05-23'),
(3, 0, 1, 1, 'bijit', 'Hasan', '20:22:00.0000', '21:23:00.0000', '2022-05-24', 'CSE', 2, '2022-05-23', '2022-05-23'),
(4, 0, 1, 11, 'bijit', 'arif', '12:21:00.0000', '12:21:10.0000', '2022-04-22', 'CSE', 0, '2022-05-23', '2022-05-23'),
(5, 0, 1, 1, 'bijit', 'Hasan', '17:14:00.0000', '15:14:00.0000', '2022-06-16', 'CSE', 2, '2022-05-23', '2022-05-23'),
(6, 0, 2, 10, 'Sahin', 'hasan', '12:21:00.0000', '12:21:10.0000', '2022-04-22', 'CSE', 0, '2022-05-23', '2022-05-23'),
(7, 0, 2, 1, 'Sahin', 'Hasan', '20:22:00.0000', '21:23:00.0000', '2022-05-24', 'CSE', 1, '2022-05-23', '2022-05-23'),
(8, 0, 6, 4, 'Anik', 'Ahnaf', '20:51:00.0000', '21:51:00.0000', '2022-05-24', 'English', 1, '2022-05-23', '2022-05-23'),
(9, 0, 1, 4, 'bijit', 'Ahnaf', '20:51:00.0000', '21:51:00.0000', '2022-05-24', 'CSE', 0, '2022-05-23', '2022-05-23'),
(10, 0, 1, 9, 'bijit', 'Akhlak', '21:46:00.0000', '13:46:00.0000', '2022-05-31', 'CSE', 0, '2022-05-23', '2022-05-23'),
(11, 0, 1, 13, 'bijit', 'Hasan', '15:05:00.0000', '18:05:00.0000', '2022-05-23', 'CSE', 0, '2022-05-23', '2022-05-23'),
(12, 0, 1, 1, 'bijit', 'Hasan', '20:22:00.0000', '21:23:00.0000', '2022-05-24', 'CSE', 1, '2022-05-23', '2022-05-23'),
(13, 0, 1, 1, 'bijit', 'Hasan', '05:18:00.0000', '07:18:00.0000', '2022-05-28', 'CSE', 1, '2022-05-24', '2022-05-24'),
(14, 0, 1, 1, 'bijit', 'Hasan', '05:18:00.0000', '07:18:00.0000', '2022-05-28', 'CSE', 0, '2022-05-24', '2022-05-24'),
(15, 0, 1, 1, 'bijit', 'Hasan', '23:33:00.0000', '12:33:00.0000', '2025-09-14', 'CSE', 0, '2022-05-24', '2022-05-24'),
(16, 24, 1, 1, 'bijit', 'Hasan', '12:42:00.0000', '16:42:00.0000', '2026-10-13', 'CSE', 1, '2022-05-24', '2022-05-24'),
(17, 25, 1, 1, 'bijit', 'Hasan', '23:52:00.0000', '12:52:00.0000', '2024-10-22', 'CSE', 2, '2022-05-24', '2022-05-24'),
(18, 26, 1, 1, 'bijit', 'Hasan', '21:56:00.0000', '12:56:00.0000', '2027-10-12', 'CSE', 2, '2022-05-24', '2022-05-24'),
(19, 27, 1, 1, 'bijit', 'Hasan', '13:04:00.0000', '21:04:00.0000', '2028-08-18', 'CSE', 2, '2022-05-24', '2022-05-24'),
(20, 27, 1, 1, 'bijit', 'Hasan', '13:04:00.0000', '21:04:00.0000', '2028-08-18', 'CSE', 1, '2022-05-24', '2022-05-24'),
(21, 28, 1, 1, 'bijit', 'Hasan', '14:00:00.0000', '21:00:00.0000', '2022-05-24', 'CSE', 1, '2022-05-24', '2022-05-24'),
(22, 29, 1, 1, 'bijit', 'Hasan', '15:22:00.0000', '15:22:00.0000', '2022-05-28', 'CSE', 1, '2022-05-24', '2022-05-24'),
(23, 23, 1, 1, 'bijit', 'Hasan', '23:33:00.0000', '12:33:00.0000', '2025-09-14', 'CSE', 0, '2022-05-25', '2022-05-25'),
(24, 34, 1, 12, 'bijit', 'Azadi', '12:14:00.0000', '18:14:00.0000', '2022-05-31', 'CSE', 1, '2022-05-25', '2022-05-25'),
(25, 35, 1, 12, 'bijit', 'Azadi', '18:22:00.0000', '21:22:00.0000', '2022-05-31', 'CSE', 2, '2022-05-25', '2022-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `file_path`, `description`, `price`, `updated_at`, `created_at`) VALUES
(1, 'Samsung', 'products/a4CZYWg2sttxi552jDi3J8hqZ1I39Q89SPuA3MWQ.png', 'aim', '10000', '2022-05-21', '2022-05-21'),
(8, 'ajsdhn', 'products/Iv6f1XBrPKXKOyBbi628yZayToO53M9MaixyFg4n.png', 'kajshd', '88', '2022-05-21', '2022-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) NOT NULL,
  `teacher_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` date NOT NULL,
  `subject` varchar(200) NOT NULL,
  `time_from` time(4) NOT NULL,
  `time_to` time(4) NOT NULL,
  `status` int(10) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `teacher_id`, `name`, `day`, `subject`, `time_from`, `time_to`, `status`, `updated_at`, `created_at`) VALUES
(1, 1, 'hasan', '2024-04-27', '', '04:35:00.0000', '10:35:00.0000', 0, '2022-05-24', '2022-05-22'),
(2, 11, 'arif', '2022-04-22', '', '12:21:00.0000', '12:21:10.0000', 0, '2022-05-22', '2022-05-22'),
(3, 1, 'Hasan', '2022-05-24', '', '20:22:00.0000', '21:23:00.0000', 0, '2022-05-22', '2022-05-22'),
(4, 1, 'Hasan', '2022-05-25', '', '05:44:00.0000', '07:44:00.0000', 0, '2022-05-23', '2022-05-22'),
(5, 4, 'Hasan', '2022-05-26', '', '14:35:00.0000', '17:35:00.0000', 1, '2022-05-24', '2022-05-22'),
(6, 5, 'Hasan', '2022-05-25', '', '21:38:00.0000', '12:38:00.0000', 0, '2022-05-22', '2022-05-22'),
(7, 1, 'Hasan', '2022-05-30', '', '21:40:00.0000', '12:40:00.0000', 0, '2022-05-22', '2022-05-22'),
(8, 1, 'Hasan', '2022-05-31', '', '22:40:00.0000', '21:40:00.0000', 0, '2022-05-22', '2022-05-22'),
(9, 3, 'Akhlak', '2022-05-30', '', '21:46:00.0000', '12:46:00.0000', 0, '2022-05-22', '2022-05-22'),
(10, 9, 'Akhlak', '2022-05-31', '', '21:46:00.0000', '13:46:00.0000', 0, '2022-05-22', '2022-05-22'),
(11, 1, 'Hasan', '2022-05-29', '', '10:37:00.0000', '11:37:00.0000', 0, '2022-05-24', '2022-05-22'),
(12, 11, 'Hasan', '2022-05-27', '', '14:54:00.0000', '18:54:00.0000', 1, '2022-05-22', '2022-05-22'),
(13, 1, 'Hasan', '2022-05-28', '', '06:50:00.0000', '06:50:00.0000', 0, '2022-05-23', '2022-05-22'),
(15, 14, 'Hasan', '2022-05-31', '', '20:50:00.0000', '18:50:00.0000', 0, '2022-05-22', '2022-05-22'),
(16, 15, 'Hasan', '2022-05-25', '', '17:02:00.0000', '18:02:00.0000', 0, '2022-05-22', '2022-05-22'),
(17, 13, 'Hasan', '2022-05-23', '', '15:05:00.0000', '18:05:00.0000', 0, '2022-05-22', '2022-05-22'),
(20, 1, 'Hasan', '2022-05-26', '', '15:16:00.0000', '16:16:00.0000', 1, '2022-05-22', '2022-05-22'),
(22, 1, 'Hasan', '2022-05-28', '', '05:18:00.0000', '07:18:00.0000', 0, '2022-05-24', '2022-05-24'),
(23, 1, 'Hasan', '2025-09-14', '', '23:33:00.0000', '12:33:00.0000', 0, '2022-05-24', '2022-05-24'),
(24, 1, 'Hasan', '2026-10-13', '', '12:42:00.0000', '16:42:00.0000', 1, '2022-05-24', '2022-05-24'),
(25, 1, 'Hasan', '2024-10-22', '', '23:52:00.0000', '12:52:00.0000', 1, '2022-05-24', '2022-05-24'),
(26, 1, 'Hasan', '2027-10-12', '', '21:56:00.0000', '12:56:00.0000', 1, '2022-05-24', '2022-05-24'),
(27, 1, 'Hasan', '2028-08-18', '', '13:04:00.0000', '21:04:00.0000', 1, '2022-05-24', '2022-05-24'),
(28, 1, 'Hasan', '2022-05-24', '', '14:00:00.0000', '21:00:00.0000', 1, '2022-05-24', '2022-05-24'),
(29, 1, 'Hasan', '2022-05-28', '', '15:22:00.0000', '15:22:00.0000', 1, '2022-05-24', '2022-05-24'),
(30, 1, 'Hasan', '2022-05-31', '', '20:37:00.0000', '22:37:00.0000', 0, '2022-05-25', '2022-05-25'),
(31, 1, 'Hasan', '2022-05-27', '', '20:39:00.0000', '22:39:00.0000', 0, '2022-05-25', '2022-05-25'),
(32, 1, 'Hasan', '2022-05-30', '', '20:42:00.0000', '23:46:00.0000', 0, '2022-05-25', '2022-05-25'),
(33, 1, 'Hasan', '2022-05-27', 'GED', '20:50:00.0000', '13:50:00.0000', 0, '2022-05-25', '2022-05-25'),
(34, 12, 'Azadi', '2022-05-31', 'Organic Chemistry', '12:14:00.0000', '18:14:00.0000', 1, '2022-05-25', '2022-05-25'),
(35, 12, 'Azadi', '2022-05-31', 'Organic Chemistry', '18:22:00.0000', '21:22:00.0000', 2, '2022-05-25', '2022-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `department`, `student_id`, `status`, `updated_at`, `created_at`) VALUES
(1, 'bijit', 'bijit@gmail.com', '$2y$10$gEoMBlLxwiWMoldm9PJS7.y0ppb5swNfDr9X.Oi/SYdc8pnn.NgnO', 'CSE', '183-115-027', 1, '2022-05-25', '2022-05-22'),
(2, 'Sahin', 'sahin@gmail.com', '$2y$10$ahaYhio3p4o7Isl2iaWRvurxjzq7bOHVgZQFo53kFSCaX/0fBEbk.', 'CSE', '45646', 1, '2022-05-25', '2022-05-22'),
(3, 'Arko', 'arko@gmail.com', '$2y$10$fHe2di5JwTAmPQcsycGdNuFXjDrcYNcX7qcMEUxMXLxijqnT3wE..', 'CSE', '1835555', 1, '2022-05-25', '2022-05-22'),
(9, 'Anik', 'anik@gmail.com', '$2y$10$Csc2uw1tVsZix8LvTVq4geVoQvj5KEmEC0e.zg6EJxS.1sWZ2zKwW', 'JJJJ', '88888', 1, '2022-05-25', '2022-05-25'),
(11, 'Amio', 'amio@gmail.com', '$2y$10$Z5.qxQlXFRagIaUol/smYuszHRRJps2N9NDff4IRJuXDGiNn00Wya', 'kasjd', 'jabsd', 0, '2022-05-25', '2022-05-25'),
(14, 'Ashraf', 'ashraf@gmail.com', '$2y$10$Ja.LNTiW99IaQdlQ0ihtBuVm.ahwDZxhvPJFq6./9B4EKseRQcpSG', 'English', '111111', 1, '2022-05-25', '2022-05-25'),
(15, 'ldksg;lk', 'lkdcjlsd', '$2y$10$MbKZ31Jdqn2DG5j.vznUQeotXr9VPNNjCBlQNCSVi8KJ6zRpoBfri', 'lskdnlns', 'lksdnln', 0, '2022-05-26', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `department`, `subject`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Hasan', 'hasan@gmail.com', '$2y$10$mQSAg9zhOeV6iRt097gSvO0.tR2lcPavHs.S8okpqj.Ai3AcyYBE2', 'English', 'GED', 1, '2022-05-25', '2022-05-22'),
(3, 'Akhlak', 'akhlak@gmail', '$2y$10$4Vuya78wBrpGpqEvLId1Ou1ey5aaKKj6YADTJxi48LKge1Gn8qTOa', 'English', 'saldjl', 1, '2022-05-22', '2022-05-22'),
(6, 'Shudip', 'shudip@gmail.com', '$2y$10$dI4UkHnebLLdcTxoeEHyyue6dPPFeb2peDXxX57nZypYP9Z3NkNQi', 'KKHIBH', 'sdkfjhasdf', 1, '2022-05-25', '2022-05-25'),
(8, 'Mrinal', 'mrinal@gmail.com', '$2y$10$eBcZiDQOCUUujmVeVpIDLepe.LO6H6u39.3giYWd9SKl0UG1spi5u', 'Math', 'Calculas', 1, '2022-05-25', '2022-05-25'),
(12, 'Azadi', 'azadi@gmail.com', '$2y$10$LFnySRAZHLlwTF0DpAs.Q.u6oWO7YhR8Ol0aHm59asHBru4Kwxk1q', 'Chemistry', 'Organic Chemistry', 1, '2022-05-25', '2022-05-25'),
(14, 'Sattay', 'sattay@gmail.com', '$2y$10$opGup7Rb1P4nsoVp8ehxKujXiaf05l6BCByyjlw0eRwHEBfvCoTlC', 'BBA', 'Accounting', 1, '2022-05-25', '2022-05-25'),
(16, 'Anjuman', 'anjuman@gmail.com', '$2y$10$/ZsCYc/o7hG0ZLUETNXqk.GHnf426eAWO5RVyeDWuNl9j/61xsSHG', 'CSE', 'AI', 1, '2022-05-25', '2022-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'bijit', 'bijit@gmail.com', '$2y$10$JeYVpuKCx6BDXFg2tjMqMeKxbitVYnT8Lg4khoHOAyQXtwUBhjuJa'),
(2, 'turzo', 'turzo@gmail.com', '$2y$10$4AQ8GHJiiOFGG26Nvf1oGeupUX9G9etS9CUQZM6yo5xFIS8Dh8s7u'),
(3, 'turzo', 'turzo@gmail.com', '$2y$10$q3HwbS8JFM7wA5PU5Tp9iug06oUFZtAsL1KFgJvQ2jwhaR1qoxfV6'),
(4, 'iqbal', 'iqbal@gmail.com', '$2y$10$nTA6TAje1ypA0xhmp8nqUeFXUbWqRVnS3GyCqlmiD4Y87W/x2Ohcu'),
(5, 'david', 'david@gmail.com', '$2y$10$B4xLyBjm/uL5H6vwcSFYV.JtsIPQPjL3D2QSOdA.A.neeU9MjVCqK'),
(6, 'arnob', 'arnob@gmail.com', '$2y$10$Vq0hCqO05/m.0paI4GmcOeW3datWZS1G9jeTBxRvV/QR0td71kGZC'),
(7, 'kamrul', 'abc123', '$2y$10$rtKrlcr7b/SgE6IqzjL.e.coyB.jqSYUdBS3jjeWC0/mAWN.H0Xx.'),
(8, 'bruce', 'bruce@gmail.com', '$2y$10$ALMDcu4xGt0vgDayf0DoDefmFWZuD9VB26PE0KVphBCJYinTBhsV.'),
(9, 'alc', 'apoakdi', '$2y$10$EqUImXdqWwIK3AMgwNUCgOV8lPLMxiXy1tBWUQ05KW2Uuy7QAix1W'),
(10, 'ljaksdj', 'aslnc', '$2y$10$4tpjrzeHwCbcz6gIurIHIOFDTDRkBfHadz1UzNHovETHxwitndnkS'),
(11, 'sbc', ';lkdc', '$2y$10$iONA3A6eqO9PZWKTj41r4.XfDFBhIOJqe2UY3AmxNltA7bDHK/uKC'),
(12, 'sdhajdh', 'kajsd', '$2y$10$FJNQzog8XEv9Y5Tn3lhCPOAkaA.BUwt.g5ZKrvA80/0c5TbxRBkji'),
(13, 'abc', 'a;smkd;', '$2y$10$0Fpj74BtE88VL5Wv0OpN4.RX8OjAw8iXkkEZR2iYl4Z.heRyZXD7q'),
(14, 'nalnd', 'lansd', '$2y$10$9ltlCzFM/r7qtWmg30HTPeBPUWsPAwrEfUbB71eIAjinpl3zQ7RR6'),
(15, 'akhlak', 'lkajsd', '$2y$10$VA4mTI.jJ6UfeeM81d/bVudCMNVM1BlAJB/EHChc06v37bs7UaBbe'),
(16, 'lakdjs', 'jlasdljk', '$2y$10$IwIw8JGrzaDsDy9D0tnwjevtOmynJMyMDClFrFmzJKi356Nm2Sekm'),
(17, 'Pritom', 'Pritom@gmail.com', '$2y$10$IpLBe7ZCGeJb6Y0ZFR1XvuQc9WmxzSqHVf1Ov5MiMuQ0ix6OmOWfW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
