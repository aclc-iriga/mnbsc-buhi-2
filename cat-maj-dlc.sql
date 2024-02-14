-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 05:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cat-maj-dlc`
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
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2024-02-14 16:17:10');

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

--
-- Dumping data for table `arrangements`
--

INSERT INTO `arrangements` (`id`, `event_id`, `team_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 5, 5, 1, '2024-02-13 17:17:33', '2024-02-13 17:17:33'),
(2, 5, 6, 2, '2024-02-13 17:17:37', '2024-02-13 17:17:37'),
(3, 5, 4, 3, '2024-02-13 17:17:42', '2024-02-13 17:17:42'),
(4, 5, 2, 4, '2024-02-13 17:17:48', '2024-02-13 17:17:48'),
(5, 5, 3, 5, '2024-02-13 17:17:52', '2024-02-13 17:17:52'),
(6, 5, 1, 6, '2024-02-13 17:17:54', '2024-02-13 17:17:54'),
(7, 6, 5, 1, '2024-02-13 17:18:08', '2024-02-13 17:18:08'),
(8, 6, 6, 2, '2024-02-13 17:18:10', '2024-02-13 17:18:10'),
(9, 6, 4, 3, '2024-02-13 17:18:13', '2024-02-13 17:18:13'),
(10, 6, 2, 4, '2024-02-13 17:18:19', '2024-02-13 17:18:19'),
(11, 6, 3, 5, '2024-02-13 17:18:27', '2024-02-13 17:18:27'),
(12, 6, 1, 6, '2024-02-13 17:18:33', '2024-02-13 17:18:33'),
(13, 7, 5, 1, '2024-02-13 17:18:41', '2024-02-13 17:18:41'),
(14, 7, 6, 2, '2024-02-13 17:18:42', '2024-02-13 17:18:42'),
(15, 7, 4, 3, '2024-02-13 17:18:44', '2024-02-13 17:18:44'),
(16, 7, 2, 4, '2024-02-13 17:18:46', '2024-02-13 17:18:46'),
(17, 7, 3, 5, '2024-02-13 17:18:48', '2024-02-13 17:18:48'),
(18, 7, 1, 6, '2024-02-13 17:18:49', '2024-02-13 17:18:49');

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
(1, 1, 'parade-exhibition', 'Street Parade and Drill Exhibition', '2023-05-27 08:33:52', '2024-02-13 15:35:46'),
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
(1, 'cat-maj-dlc-2024', 'CAT/MAPEH Parade, DLC, Majorettes and Silent Fancy Drill Competition 2024', '2023-04-06 13:24:04', '2024-02-14 16:01:55');

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
(1, 1, 'Marching', 25, '2024-02-13 16:04:42', '2024-02-13 16:04:42'),
(2, 1, 'Alignment', 25, '2024-02-13 16:05:03', '2024-02-13 16:05:03'),
(3, 1, 'Distance', 25, '2024-02-13 16:05:14', '2024-02-13 16:05:14'),
(4, 1, 'Execution of Eyes Right', 25, '2024-02-13 16:05:27', '2024-02-13 16:05:27'),
(5, 2, 'Marching', 25, '2024-02-13 16:05:42', '2024-02-13 16:05:42'),
(6, 2, 'Alignment', 25, '2024-02-13 16:05:53', '2024-02-13 16:05:53'),
(7, 2, 'Distance', 25, '2024-02-13 16:06:04', '2024-02-13 16:06:04'),
(8, 2, 'Execution of Eyes Right', 25, '2024-02-13 16:06:22', '2024-02-13 16:06:22'),
(9, 3, 'Marching', 30, '2024-02-13 16:06:45', '2024-02-13 16:06:45'),
(10, 3, 'Baton Twirling', 30, '2024-02-13 16:07:04', '2024-02-13 16:07:04'),
(11, 3, 'Rhythm & Style', 15, '2024-02-13 16:07:18', '2024-02-13 16:07:18'),
(12, 3, 'Uniform (Appeal & Neatness)', 10, '2024-02-13 16:07:37', '2024-02-13 16:07:37'),
(13, 3, 'Eyes Right', 15, '2024-02-13 16:07:51', '2024-02-13 16:07:51'),
(14, 4, 'Precision of Drums (Score, Clarity Interpretation)', 30, '2024-02-13 16:08:56', '2024-02-13 16:08:56'),
(15, 4, 'Sound of the Bugles or Lyre (Clarity, Timing, Intonation)', 30, '2024-02-13 16:09:24', '2024-02-13 16:09:24'),
(16, 4, 'Marching (Smartness, Timing & Alignment)', 25, '2024-02-13 16:10:04', '2024-02-13 16:10:04'),
(17, 4, 'Uniform (Smartness & Neatness)', 15, '2024-02-13 16:10:36', '2024-02-13 16:10:36'),
(18, 5, 'Appropriate Platoon Leader commands and execution by squad', 10, '2024-02-13 16:11:41', '2024-02-13 16:11:41'),
(19, 5, 'Movements of Cadets', 25, '2024-02-13 16:11:56', '2024-02-13 16:12:04'),
(20, 5, 'Carriage of Rifles and Execution of Fancy Movements', 25, '2024-02-13 16:12:17', '2024-02-13 16:12:17'),
(21, 5, 'Fancy Dance Presentation', 30, '2024-02-13 16:12:30', '2024-02-13 16:12:30'),
(22, 5, 'General Appearance and Smartness', 10, '2024-02-13 16:12:41', '2024-02-13 16:12:41'),
(23, 6, 'Marching', 25, '2024-02-13 16:13:21', '2024-02-13 16:13:21'),
(24, 6, 'Baton Twirling (Mastery & Gracefulness)', 30, '2024-02-13 16:13:33', '2024-02-13 16:13:33'),
(25, 6, 'Choreography (Movement & Style)', 30, '2024-02-13 16:13:48', '2024-02-13 16:13:48'),
(26, 6, 'Uniform (Appeal & Neatness)', 10, '2024-02-13 16:13:59', '2024-02-13 16:13:59'),
(27, 6, 'Performance of the Majorette Leader', 5, '2024-02-13 16:14:10', '2024-02-13 16:14:10'),
(28, 7, 'Precision of Drums (Score, Clarity Interpretation)', 25, '2024-02-13 16:14:45', '2024-02-13 16:14:45'),
(29, 7, 'Sound of the Bugles or Lyre (Clarity, Timing & Interpretation)', 25, '2024-02-13 16:15:02', '2024-02-13 16:15:02'),
(30, 7, 'Choreography', 20, '2024-02-13 16:15:18', '2024-02-13 16:15:18'),
(31, 7, 'Marching (Smartness, Timing & Alignment)', 15, '2024-02-13 16:15:31', '2024-02-13 16:15:31'),
(32, 7, 'Uniform (Smartness & Neatness)', 10, '2024-02-13 16:15:43', '2024-02-13 16:15:43'),
(33, 7, 'Performance of the DLC Conductor', 5, '2024-02-13 16:15:53', '2024-02-13 16:15:53');

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
(1, 'marching', 'Marching CAT', 1, 2, '2024-02-13 15:55:09', '2024-02-13 16:18:21'),
(2, 'marching-majorettes', 'Marching Majorettes', 3, 8, '2024-02-13 15:56:38', '2024-02-13 16:01:09'),
(3, 'marching-dlc', 'Marching DLC', 4, 8, '2024-02-13 16:00:52', '2024-02-13 17:06:47'),
(4, 'exhibition-cat', 'Silent Fancy Drill Exhibition', 5, 8, '2024-02-13 16:00:52', '2024-02-13 17:08:49'),
(5, 'exhibition-majorettes', 'Majorettes Exhibition', 6, 8, '2024-02-13 16:00:52', '2024-02-13 16:01:19'),
(6, 'exhibition-dlc', 'DLC Exhibition', 7, 8, '2024-02-13 16:00:52', '2024-02-13 16:01:23');

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
(1, 8, 1, '2024-02-13 18:17:31', '2024-02-13 18:17:31'),
(2, 8, 2, '2024-02-13 18:17:32', '2024-02-13 18:17:32'),
(3, 8, 3, '2024-02-13 18:17:32', '2024-02-13 18:17:32'),
(4, 8, 4, '2024-02-13 18:17:33', '2024-02-13 18:17:33'),
(5, 8, 5, '2024-02-13 18:17:33', '2024-02-13 18:17:33'),
(6, 8, 6, '2024-02-13 18:17:34', '2024-02-13 18:17:34');

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
(1, 1, 'marching-cat-boys', 'Marching CAT (Boys)', '2024-02-13 15:41:21', '2024-02-13 15:41:21'),
(2, 1, 'marching-cat-girls', 'Marching CAT (Girls)', '2024-02-13 15:41:59', '2024-02-13 15:41:59'),
(3, 1, 'marching-majorettes', 'Marching Majorettes', '2024-02-13 15:43:14', '2024-02-13 15:43:14'),
(4, 1, 'marching-dlc', 'Marching DLC ', '2024-02-13 15:43:35', '2024-02-13 15:49:24'),
(5, 1, 'exhibition-cat', 'Silent Fancy Drill Exhibition', '2024-02-13 15:47:23', '2024-02-13 15:48:26'),
(6, 1, 'exhibition-majorettes', 'Majorettes Exhibition', '2024-02-13 15:48:03', '2024-02-13 15:48:03'),
(7, 1, 'exhibition-dlc', 'DLC Exhibition', '2024-02-13 15:49:59', '2024-02-13 15:49:59'),
(8, 2, '', 'Event Proxy 1', '2024-02-13 15:54:12', '2024-02-13 15:54:12');

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
(1, 1, 'Judge 1-01 (CAT)', 'no-avatar.jpg', 'judge11', 'judge11', NULL, NULL, NULL, '2023-04-06 13:58:11', '2024-02-13 16:48:00'),
(2, 2, 'Judge 1-02 (CAT)', 'no-avatar.jpg', 'judge12', 'judge12', NULL, NULL, NULL, '2023-04-06 13:58:28', '2024-02-13 16:48:26'),
(3, 3, 'Judge 1-03 (CAT)', 'no-avatar.jpg', 'judge13', 'judge13', NULL, NULL, NULL, '2023-04-06 13:58:42', '2024-02-13 16:48:48'),
(4, 1, 'Judge 2-01 (MAJ)', 'no-avatar.jpg', 'judge21', 'judge21', NULL, NULL, NULL, '2023-04-06 13:59:26', '2024-02-13 16:48:10'),
(5, 2, 'Judge 2-02 (MAJ)', 'no-avatar.jpg', 'judge22', 'judge22', NULL, NULL, NULL, '2023-04-06 14:00:00', '2024-02-13 16:48:34'),
(6, 3, 'Judge 2-03 (MAJ)', 'no-avatar.jpg', 'judge23', 'judge23', NULL, NULL, NULL, '2023-05-27 07:58:41', '2024-02-13 16:48:54'),
(7, 1, 'Judge 3-01 (DLC)', 'no-avatar.jpg', 'judge31', 'judge31', NULL, NULL, NULL, '2023-05-27 07:59:01', '2024-02-13 16:48:20'),
(8, 2, 'Judge 3-02 (DLC)', 'no-avatar.jpg', 'judge32', 'judge32', NULL, NULL, NULL, '2024-02-13 16:30:51', '2024-02-13 16:48:41'),
(9, 3, 'Judge 3-03 (DLC)', 'no-avatar.jpg', 'judge33', 'judge33', NULL, NULL, NULL, '2024-02-13 16:31:13', '2024-02-13 16:49:00');

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
(1, 1, 1, 1, '2024-02-13 16:32:30', '2024-02-13 18:18:10'),
(2, 1, 2, 1, '2024-02-13 16:32:34', '2024-02-13 18:18:14'),
(3, 1, 5, 1, '2024-02-13 16:33:40', '2024-02-13 18:18:16'),
(4, 2, 1, 0, '2024-02-13 16:45:07', '2024-02-13 18:18:18'),
(5, 2, 2, 0, '2024-02-13 16:45:11', '2024-02-13 18:18:20'),
(6, 2, 5, 0, '2024-02-13 16:45:19', '2024-02-13 18:18:22'),
(7, 3, 1, 0, '2024-02-13 16:45:27', '2024-02-13 18:18:25'),
(8, 3, 2, 0, '2024-02-13 16:45:31', '2024-02-13 18:18:28'),
(9, 3, 5, 0, '2024-02-13 16:45:37', '2024-02-13 18:18:31'),
(10, 4, 3, 1, '2024-02-13 16:45:53', '2024-02-13 18:18:34'),
(11, 4, 6, 1, '2024-02-13 16:45:58', '2024-02-13 18:18:36'),
(12, 5, 3, 0, '2024-02-13 16:46:12', '2024-02-13 18:18:39'),
(13, 5, 6, 0, '2024-02-13 16:46:18', '2024-02-13 18:18:41'),
(14, 6, 3, 0, '2024-02-13 16:46:29', '2024-02-13 18:18:43'),
(15, 6, 6, 0, '2024-02-13 16:46:36', '2024-02-13 18:18:46'),
(16, 7, 4, 1, '2024-02-13 16:46:51', '2024-02-13 18:18:48'),
(17, 7, 7, 1, '2024-02-13 16:46:57', '2024-02-13 18:18:51'),
(18, 8, 4, 0, '2024-02-13 16:47:17', '2024-02-13 18:18:53'),
(19, 8, 7, 0, '2024-02-13 16:47:27', '2024-02-13 18:18:56'),
(20, 9, 4, 0, '2024-02-13 16:47:37', '2024-02-13 18:19:01'),
(21, 9, 7, 0, '2024-02-13 16:47:41', '2024-02-13 18:19:05');

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
(1, 1, 'Bato National High School', 'Bato', '01-bato-national-high-school.jpg', '2024-02-13 16:20:49', '2024-02-13 21:55:23'),
(2, 2, 'Holy Trinity College of Camarines Sur, Inc.', 'Bato', '02-holy-trinity-college-of-camarines-sur.jpg', '2024-02-13 16:21:46', '2024-02-13 21:55:49'),
(3, 3, 'Ocampo Academy Technological Institute, Inc.', 'Bato', '03-ocampo-academy-technological-institute.jpg', '2024-02-13 16:22:52', '2024-02-13 21:55:59'),
(4, 4, 'Salvacion National High School', 'Bato', '04-salvacion-national-high-school.jpg', '2024-02-13 16:23:22', '2024-02-13 21:56:21'),
(5, 5, 'San Roque High School', 'Bato', '05-san-roque-high-school.jpg', '2024-02-13 16:23:51', '2024-02-13 21:56:35'),
(6, 6, 'St. John The Baptist Institute of Bicol, Inc.', 'Bato', '06-st-john-the-baptist-institute-of-bicol.jpg', '2024-02-13 16:24:16', '2024-02-13 21:56:44');

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

--
-- Dumping data for table `technical_event`
--

INSERT INTO `technical_event` (`id`, `technical_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-02-13 17:24:20', '2024-02-13 17:24:20'),
(2, 1, 2, '2024-02-13 17:24:24', '2024-02-13 17:24:24'),
(3, 1, 3, '2024-02-13 17:24:26', '2024-02-13 17:24:26'),
(4, 1, 4, '2024-02-13 17:24:28', '2024-02-13 17:24:28'),
(5, 1, 5, '2024-02-13 17:24:31', '2024-02-13 17:24:31'),
(6, 1, 6, '2024-02-13 17:24:33', '2024-02-13 17:24:33'),
(7, 1, 7, '2024-02-13 17:24:35', '2024-02-13 17:24:35');

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
(1, 1, 1, '1st Place', '2024-02-13 08:17:31', '2024-02-13 09:49:13'),
(2, 1, 2, '2nd Place', '2024-02-13 08:17:31', '2024-02-13 09:49:16'),
(3, 1, 3, '3rd Place', '2024-02-13 08:17:31', '2024-02-13 09:49:18'),
(4, 2, 1, '1st Place', '2024-02-13 08:17:32', '2024-02-13 09:49:21'),
(5, 2, 2, '2nd Place', '2024-02-13 08:17:32', '2024-02-13 09:49:27'),
(6, 2, 3, '3rd Place', '2024-02-13 08:17:32', '2024-02-13 09:49:31'),
(7, 3, 1, '1st Place', '2024-02-13 08:17:32', '2024-02-13 09:49:34'),
(8, 3, 2, '2nd Place', '2024-02-13 08:17:32', '2024-02-13 09:49:36'),
(9, 3, 3, '3rd Place', '2024-02-13 08:17:32', '2024-02-13 09:49:38'),
(10, 8, 1, '1st Place', '2024-02-13 08:17:33', '2024-02-13 09:49:40'),
(11, 8, 2, '2nd Place', '2024-02-13 08:17:33', '2024-02-13 09:49:43'),
(12, 8, 3, '3rd Place', '2024-02-13 08:17:33', '2024-02-13 09:49:51'),
(13, 4, 1, '1st Place', '2024-02-13 08:17:34', '2024-02-13 09:49:59'),
(14, 4, 2, '2nd Place', '2024-02-13 08:17:34', '2024-02-13 09:50:02'),
(15, 4, 3, '3rd Place', '2024-02-13 08:17:34', '2024-02-13 09:50:04'),
(16, 5, 1, '1st Place', '2024-02-13 08:17:34', '2024-02-13 09:50:06'),
(17, 5, 2, '2nd Place', '2024-02-13 08:17:34', '2024-02-13 09:50:08'),
(18, 5, 3, '3rd Place', '2024-02-13 08:17:34', '2024-02-13 09:50:11'),
(19, 6, 1, '1st Place', '2024-02-13 08:17:35', '2024-02-13 09:50:14'),
(20, 6, 2, '2nd Place', '2024-02-13 08:17:35', '2024-02-13 09:50:20'),
(21, 6, 3, '3rd Place', '2024-02-13 08:17:35', '2024-02-13 09:50:25'),
(22, 7, 1, '1st Place', '2024-02-13 08:17:35', '2024-02-13 09:50:29'),
(23, 7, 2, '2nd Place', '2024-02-13 08:17:35', '2024-02-13 09:50:32'),
(24, 7, 3, '3rd Place', '2024-02-13 08:17:35', '2024-02-13 09:50:36');

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duos`
--
ALTER TABLE `duos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
