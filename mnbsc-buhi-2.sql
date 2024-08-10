-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2024 at 10:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mnbsc-buhi-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2024-08-10 08:13:17');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'pageant-night', 'Pageant Night', '2023-05-27 08:33:52', '2024-08-10 06:51:19'),
(2, 1, 'event-proxies', 'Event Proxies', '2023-05-27 08:54:30', '2024-02-13 15:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'mnbsc-buhi-2-2024', 'Mutya nin Bagong Santa Clara 2024', '2023-04-06 13:24:04', '2024-08-10 07:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Beauty of the Face', 30, '2024-08-10 07:19:47', '2024-08-10 07:19:47'),
(2, 1, 'Mastery', 30, '2024-08-10 07:19:53', '2024-08-10 07:19:53'),
(3, 1, 'Stage Presence	', 30, '2024-08-10 07:20:01', '2024-08-10 07:20:01'),
(4, 1, 'Over-all Impact', 10, '2024-08-10 07:20:08', '2024-08-10 07:20:08'),
(5, 3, 'Beauty of the Face', 30, '2024-08-10 07:20:23', '2024-08-10 07:20:23'),
(6, 3, 'Body proportion', 30, '2024-08-10 07:20:33', '2024-08-10 07:20:33'),
(7, 3, 'Stage Presence', 30, '2024-08-10 07:21:02', '2024-08-10 07:21:02'),
(8, 3, 'Over-all impact	', 10, '2024-08-10 07:21:09', '2024-08-10 07:21:09'),
(9, 5, 'Beauty of the Face', 30, '2024-08-10 07:21:27', '2024-08-10 07:21:27'),
(10, 5, 'Poise and bearing	', 30, '2024-08-10 07:21:36', '2024-08-10 07:21:36'),
(11, 5, 'Over-all Design', 30, '2024-08-10 07:21:44', '2024-08-10 07:21:44'),
(12, 5, 'Over-all impact', 10, '2024-08-10 07:21:52', '2024-08-10 07:21:52'),
(13, 4, 'Content of the answer', 50, '2024-08-10 07:22:04', '2024-08-10 07:22:04'),
(14, 4, 'Delivery', 40, '2024-08-10 07:22:10', '2024-08-10 07:22:10'),
(15, 4, 'Over-all impact', 10, '2024-08-10 07:22:18', '2024-08-10 07:22:18'),
(16, 2, 'Craftmanship', 30, '2024-08-10 07:22:37', '2024-08-10 07:22:37'),
(17, 2, 'Over-all design', 30, '2024-08-10 07:22:43', '2024-08-10 07:22:43'),
(18, 2, 'Stage Presence', 30, '2024-08-10 07:22:50', '2024-08-10 07:22:50'),
(19, 2, 'Over-all impact', 10, '2024-08-10 07:22:56', '2024-08-10 07:22:56'),
(20, 6, 'Content of the Answer, Delivery, and Personality', 40, '2024-08-10 07:23:12', '2024-08-10 07:23:12'),
(21, 6, 'Beauty of the Face, Body Proportion, and Over-all Look', 60, '2024-08-10 07:23:18', '2024-08-10 07:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duos`
--

CREATE TABLE `duos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_id_1` smallint(5) UNSIGNED NOT NULL,
  `event_id_2` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duos`
--

INSERT INTO `duos` (`id`, `slug`, `title`, `event_id_1`, `event_id_2`, `created_at`, `updated_at`) VALUES
(1, 'production-carnival', 'Production - Carnival', 1, 2, '2024-02-13 15:55:09', '2024-08-10 07:08:53'),
(2, 'swimwear', 'Swimwear', 3, 7, '2024-02-13 15:56:38', '2024-08-10 07:08:58'),
(3, 'preliminary-qa', 'Preliminary Q&A', 4, 7, '2024-02-13 16:00:52', '2024-08-10 07:09:08'),
(4, 'evening-gown', 'Evening Gown', 5, 7, '2024-02-13 16:00:52', '2024-08-10 07:09:20'),
(5, 'final-qa', 'Final Q&A', 6, 7, '2024-02-13 16:00:52', '2024-08-10 07:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2024-08-10 07:49:59', '2024-08-10 07:49:59'),
(2, 7, 2, '2024-08-10 07:50:00', '2024-08-10 07:50:00'),
(3, 7, 3, '2024-08-10 07:50:00', '2024-08-10 07:50:00'),
(4, 7, 4, '2024-08-10 07:50:01', '2024-08-10 07:50:01'),
(5, 7, 5, '2024-08-10 07:50:01', '2024-08-10 07:50:01'),
(6, 7, 6, '2024-08-10 07:50:20', '2024-08-10 07:50:20'),
(7, 7, 7, '2024-08-10 07:50:21', '2024-08-10 07:50:21'),
(8, 7, 8, '2024-08-10 07:50:22', '2024-08-10 07:50:22'),
(9, 7, 9, '2024-08-10 07:50:23', '2024-08-10 07:50:23'),
(10, 7, 10, '2024-08-10 07:50:24', '2024-08-10 07:50:24'),
(11, 7, 11, '2024-08-10 07:50:25', '2024-08-10 07:50:25'),
(12, 7, 12, '2024-08-10 07:50:26', '2024-08-10 07:50:26'),
(13, 7, 13, '2024-08-10 07:50:26', '2024-08-10 07:50:26'),
(14, 7, 14, '2024-08-10 07:50:27', '2024-08-10 07:50:27'),
(15, 7, 15, '2024-08-10 07:50:28', '2024-08-10 07:50:28'),
(16, 6, 1, '2024-08-10 07:50:42', '2024-08-10 07:50:42'),
(17, 6, 2, '2024-08-10 07:50:43', '2024-08-10 07:50:43'),
(18, 6, 3, '2024-08-10 07:50:43', '2024-08-10 07:50:43'),
(19, 6, 4, '2024-08-10 07:50:44', '2024-08-10 07:50:44'),
(20, 6, 5, '2024-08-10 07:50:44', '2024-08-10 07:50:44'),
(21, 6, 6, '2024-08-10 07:50:44', '2024-08-10 07:50:44'),
(22, 6, 7, '2024-08-10 07:50:45', '2024-08-10 07:50:45'),
(23, 6, 8, '2024-08-10 07:50:46', '2024-08-10 07:50:46'),
(24, 6, 9, '2024-08-10 07:50:46', '2024-08-10 07:50:46'),
(25, 6, 10, '2024-08-10 07:50:47', '2024-08-10 07:50:47'),
(26, 6, 11, '2024-08-10 07:50:47', '2024-08-10 07:50:47'),
(27, 6, 12, '2024-08-10 07:50:48', '2024-08-10 07:50:48'),
(28, 6, 13, '2024-08-10 07:50:48', '2024-08-10 07:50:48'),
(29, 6, 14, '2024-08-10 07:50:49', '2024-08-10 07:50:49'),
(30, 6, 15, '2024-08-10 07:50:50', '2024-08-10 07:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'production', 'Production', '2024-02-13 15:41:21', '2024-08-10 06:53:08'),
(2, 1, 'fiesta-carnival-costume', 'Fiesta Carnival Costume', '2024-02-13 15:41:59', '2024-08-10 06:53:33'),
(3, 1, 'swimwear', 'Swimwear', '2024-02-13 15:43:14', '2024-08-10 07:01:35'),
(4, 1, 'preliminary-interview', 'Preliminary Interview', '2024-02-13 15:43:35', '2024-08-10 07:03:22'),
(5, 1, 'evening-gown', 'Evening Gown', '2024-02-13 15:47:23', '2024-08-10 07:03:47'),
(6, 1, 'final-qa', 'Final Q&A', '2024-02-13 15:48:03', '2024-08-10 07:04:10'),
(7, 2, '', 'Event Proxy 1', '2024-02-13 15:54:12', '2024-08-10 07:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2024-08-10 07:40:30', '2024-08-10 07:40:30'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2024-08-10 07:40:46', '2024-08-10 07:40:46'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2024-08-10 07:41:02', '2024-08-10 07:41:02'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2024-08-10 07:41:20', '2024-08-10 07:41:20'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2024-08-10 07:41:42', '2024-08-10 07:41:42'),
(6, 6, 'Judge 06', 'no-avatar.jpg', 'judge06', 'judge06', NULL, NULL, NULL, '2024-08-10 07:41:56', '2024-08-10 07:41:56'),
(7, 7, 'Judge 07', 'no-avatar.jpg', 'judge07', 'judge07', NULL, NULL, NULL, '2024-08-10 07:42:12', '2024-08-10 07:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2024-08-10 07:43:56', '2024-08-10 07:43:56'),
(2, 1, 2, 0, '2024-08-10 07:44:04', '2024-08-10 07:44:04'),
(3, 1, 3, 0, '2024-08-10 07:44:07', '2024-08-10 07:44:07'),
(4, 1, 4, 0, '2024-08-10 07:44:11', '2024-08-10 07:44:11'),
(5, 1, 5, 0, '2024-08-10 07:44:49', '2024-08-10 07:44:49'),
(6, 1, 6, 0, '2024-08-10 07:44:52', '2024-08-10 07:44:52'),
(7, 2, 1, 0, '2024-08-10 07:46:24', '2024-08-10 07:46:24'),
(8, 2, 2, 0, '2024-08-10 07:46:31', '2024-08-10 07:46:31'),
(9, 2, 3, 0, '2024-08-10 07:46:34', '2024-08-10 07:46:34'),
(10, 2, 4, 0, '2024-08-10 07:46:37', '2024-08-10 07:46:37'),
(11, 2, 5, 0, '2024-08-10 07:46:41', '2024-08-10 07:46:41'),
(12, 2, 6, 0, '2024-08-10 07:46:44', '2024-08-10 07:46:44'),
(13, 3, 1, 0, '2024-08-10 07:46:53', '2024-08-10 07:46:53'),
(14, 3, 2, 0, '2024-08-10 07:46:56', '2024-08-10 07:46:56'),
(15, 3, 3, 0, '2024-08-10 07:46:59', '2024-08-10 07:46:59'),
(16, 3, 4, 0, '2024-08-10 07:47:02', '2024-08-10 07:47:02'),
(17, 3, 5, 0, '2024-08-10 07:47:06', '2024-08-10 07:47:06'),
(18, 3, 6, 0, '2024-08-10 07:47:09', '2024-08-10 07:47:09'),
(19, 4, 1, 0, '2024-08-10 07:47:24', '2024-08-10 07:47:24'),
(20, 4, 2, 0, '2024-08-10 07:47:28', '2024-08-10 07:47:28'),
(21, 4, 3, 0, '2024-08-10 07:47:31', '2024-08-10 07:47:31'),
(22, 4, 4, 0, '2024-08-10 07:47:34', '2024-08-10 07:47:34'),
(23, 4, 5, 0, '2024-08-10 07:47:38', '2024-08-10 07:47:38'),
(24, 4, 6, 0, '2024-08-10 07:47:41', '2024-08-10 07:47:41'),
(25, 5, 1, 0, '2024-08-10 07:48:01', '2024-08-10 07:48:01'),
(26, 5, 2, 0, '2024-08-10 07:48:11', '2024-08-10 07:48:11'),
(27, 5, 3, 0, '2024-08-10 07:48:14', '2024-08-10 07:48:14'),
(28, 5, 4, 0, '2024-08-10 07:48:17', '2024-08-10 07:48:17'),
(29, 5, 5, 0, '2024-08-10 07:48:20', '2024-08-10 07:48:20'),
(30, 5, 6, 0, '2024-08-10 07:48:23', '2024-08-10 07:48:23'),
(31, 6, 1, 0, '2024-08-10 07:48:32', '2024-08-10 07:48:32'),
(32, 6, 2, 0, '2024-08-10 07:48:35', '2024-08-10 07:48:35'),
(33, 6, 3, 0, '2024-08-10 07:48:38', '2024-08-10 07:48:38'),
(34, 6, 4, 0, '2024-08-10 07:48:41', '2024-08-10 07:48:41'),
(35, 6, 5, 0, '2024-08-10 07:48:44', '2024-08-10 07:48:44'),
(36, 6, 6, 0, '2024-08-10 07:48:47', '2024-08-10 07:48:47'),
(37, 7, 1, 0, '2024-08-10 07:48:55', '2024-08-10 07:48:55'),
(38, 7, 2, 0, '2024-08-10 07:48:58', '2024-08-10 07:48:58'),
(39, 7, 3, 0, '2024-08-10 07:49:01', '2024-08-10 07:49:01'),
(40, 7, 4, 0, '2024-08-10 07:49:04', '2024-08-10 07:49:04'),
(41, 7, 5, 0, '2024-08-10 07:49:07', '2024-08-10 07:49:07'),
(42, 7, 6, 0, '2024-08-10 07:49:10', '2024-08-10 07:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kimberly Occiano', 'Iriga City', '10-kimberly-occiano.jpg', '2024-08-10 07:29:30', '2024-08-10 07:35:47'),
(2, 2, 'Lhei Chelsea Moreno', 'Ligao City', '11-lhei-chelsea-moreno.jpg', '2024-08-10 07:30:06', '2024-08-10 07:35:51'),
(3, 3, 'Jamila Gonzales', 'Buhi, Camarines Sur', '07-jamila-gonzales.jpg', '2024-08-10 07:30:30', '2024-08-10 07:35:56'),
(4, 4, 'Angel Marie Melicor', 'Camalig Albay', '01-angel-marie-melicor.jpg', '2024-08-10 07:30:47', '2024-08-10 07:36:00'),
(5, 5, 'Mien Mie Egipto', 'Iriga City', '13-mien-mie-egipto.jpg', '2024-08-10 07:31:23', '2024-08-10 07:36:03'),
(6, 6, 'Daniela Joy Esquivel', 'Sta. Clara, Buhi, Camarines Sur', '04-daniela-joy-esquivel.jpg', '2024-08-10 07:31:46', '2024-08-10 07:36:06'),
(7, 7, 'Benix Carol Saba', 'Iriga City', '02-benix-carol-saba.jpg', '2024-08-10 07:32:04', '2024-08-10 07:36:10'),
(8, 8, 'Janna Eloisa Galan Lanuzga', 'Nabua, Camarines Sur', '08-janna-elosa-galan-lanuzga.jpg', '2024-08-10 07:32:23', '2024-08-10 07:36:18'),
(9, 9, 'Victoria Ramboyon', 'Pili, Camarines Sur', '15-victoria-ramboyon.jpg', '2024-08-10 07:33:07', '2024-08-10 07:36:21'),
(10, 10, 'Myjonica Jean Rabino', 'Buhi, Camarines Sur', '14-myjonica-jean-rabino.jpg', '2024-08-10 07:33:27', '2024-08-10 07:36:25'),
(11, 11, 'Kaelah Joy Opeña', 'Guinobatan Albay', '09-kaelah-joy-opeña.jpg', '2024-08-10 07:33:49', '2024-08-10 07:36:29'),
(12, 12, 'Hannah Paula Quebral', 'Buhi, Camarines Sur', '06-hannah-paula-quebral.jpg', '2024-08-10 07:34:15', '2024-08-10 07:36:32'),
(13, 13, 'Hannah Grace Clavillas', 'Buhi, Camarines Sur', '05-hannah-grace-clavillas.jpg', '2024-08-10 07:34:35', '2024-08-10 07:36:35'),
(14, 14, 'Blessie Kateri Sofia Canales', 'Sta. Clara, Buhi, Camarines Sur', '03-blessie-kateri-sofia-canales.jpg', '2024-08-10 07:35:00', '2024-08-10 07:36:39'),
(15, 15, 'Ma. Amethyst Mauring', 'Sta. Clara, Buhi, Camarines Sur', '12-ma.-amethyst-mauring.jpg', '2024-08-10 07:35:33', '2024-08-10 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Best in Production Performance', '2024-08-10 07:56:52', '2024-08-10 07:57:08'),
(2, 3, 1, 'Best in Swimsuit', '2024-08-10 07:56:53', '2024-08-10 08:14:28'),
(3, 6, 1, 'Mutya nin Bagong Santa Clara 2024', '2024-08-10 07:56:53', '2024-08-10 08:14:30'),
(4, 6, 2, 'Mutya nin Bagong Santa Clara Turismo 2024', '2024-08-10 07:56:53', '2024-08-10 08:14:33'),
(5, 6, 3, '1st Runner Up', '2024-08-10 07:56:53', '2024-08-10 08:14:34'),
(6, 6, 4, '2nd Runner Up', '2024-08-10 07:56:53', '2024-08-10 08:14:37'),
(7, 5, 1, 'Best in Evening Gown', '2024-08-10 07:56:53', '2024-08-10 08:14:40'),
(8, 2, 1, 'Best in Festival Costume', '2024-08-10 07:56:54', '2024-08-10 08:14:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `duos`
--
ALTER TABLE `duos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event1` (`event_id_1`),
  ADD KEY `event2` (`event_id_2`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duos`
--
ALTER TABLE `duos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duos`
--
ALTER TABLE `duos`
  ADD CONSTRAINT `duos_ibfk_1` FOREIGN KEY (`event_id_1`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `duos_ibfk_2` FOREIGN KEY (`event_id_2`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
