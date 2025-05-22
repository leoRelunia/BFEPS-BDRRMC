-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 03:13 PM
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
-- Database: `profiling`
--

-- --------------------------------------------------------

--
-- Table structure for table `households`
--

CREATE TABLE `households` (
  `id` int(11) NOT NULL,
  `household_street` varchar(100) NOT NULL,
  `household_zone` varchar(50) NOT NULL,
  `household_lot` varchar(50) NOT NULL,
  `material_used` varchar(100) NOT NULL,
  `toilet_facility` varchar(100) NOT NULL,
  `means_of_communication` varchar(100) NOT NULL,
  `source_of_water` varchar(100) NOT NULL,
  `electricity` varchar(50) NOT NULL,
  `household_with` varchar(100) NOT NULL,
  `family_income` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `households`
--

INSERT INTO `households` (`id`, `household_street`, `household_zone`, `household_lot`, `material_used`, `toilet_facility`, `means_of_communication`, `source_of_water`, `electricity`, `household_with`, `family_income`, `created_at`, `updated_at`) VALUES
(45, 'Street 1', 'Zone 1', '51', 'Strong Materials', 'Level 3 - None', 'Internet', 'Community Water System (Shared)', 'Yes', 'Poultry', '₱6,000 - ₱10,000', '2025-05-04 14:24:40', '2025-05-04 18:09:27'),
(46, 'Street 2', 'Zone 2', '35', 'Mixed Materials', 'Level 3 - None', 'Telephone', 'Community Water System (Owned)', 'Yes', 'Fishpond', '₱21,000 - ₱25,000', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(47, 'Street 3', 'Zone 2', '48', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'Cellphone', 'Bottled Water/Purified/Distilled Water', 'Yes', 'None', '₱21,000 - ₱25,000', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(48, 'Street 4', 'Zone 4', '20', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Deep and Shallow Well (Shared)', 'Yes', 'Fishpond', '₱21,000 - ₱25,000', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(49, 'Street 5', 'Zone 1', '40', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Owned)', 'Yes', 'Fishpond', '₱6,000 - ₱10,000', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(50, 'Street 6', 'Zone 1', '96', 'Strong Materials', 'Level 3 - None', 'Internet', 'Deep and Shallow Well (Owned)', 'No', 'Others', '₱5,000 (Below)', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(51, 'Street 7', 'Zone 2', '12', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Bottled Water/Purified/Distilled Water', 'No', 'Fishpond', '₱21,000 - ₱25,000', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(52, 'Street 8', 'Zone 1', '95', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Owned)', 'No', 'Livestock', '₱26,000 - above', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(53, 'Street 9', 'Zone 1', '84', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Telephone', 'Bottled Water/Purified/Distilled Water', 'No', 'None', '₱16,000 - ₱20,000', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(54, 'Street 10', 'Zone 2', '66', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Internet', 'Community Water System (Shared)', 'Yes', 'Poultry', '₱5,000 (Below)', '2025-05-04 14:24:40', '2025-05-04 14:24:40'),
(55, 'Street 1', 'Zone 5', '12', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Owned)', 'No', 'Fishpond', '₱5,000 (Below)', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(56, 'Street 2', 'Zone 1', '2', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Telephone', 'Deep and Shallow Well (Shared)', 'No', 'Others', '₱6,000 - ₱10,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(57, 'Street 3', 'Zone 5', '91', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'None', 'Community Water System (Owned)', 'No', 'Fishpond', '₱6,000 - ₱10,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(58, 'Street 4', 'Zone 4', '24', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Deep and Shallow Well (Owned)', 'No', 'Vegetable Garden', '₱11,000 - ₱15,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(59, 'Street 5', 'Zone 4', '100', 'Light Materials', 'Level 3 - None', 'Internet', 'Deep and Shallow Well (Owned)', 'Yes', 'Fishpond', '₱16,000 - ₱20,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(60, 'Street 6', 'Zone 2', '11', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Deep and Shallow Well (Owned)', 'Yes', 'None', '₱21,000 - ₱25,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(61, 'Street 7', 'Zone 5', '90', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'None', 'Community Water System (Owned)', 'Yes', 'Poultry', '₱26,000 - above', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(62, 'Street 8', 'Zone 2', '4', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'Cellphone', 'Community Water System (Shared)', 'Yes', 'None', '₱5,000 (Below)', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(63, 'Street 9', 'Zone 4', '82', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Internet', 'Community Water System (Owned)', 'No', 'Others', '₱6,000 - ₱10,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(64, 'Street 10', 'Zone 5', '50', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Owned)', 'No', 'None', '₱11,000 - ₱15,000', '2025-05-04 14:24:47', '2025-05-04 14:24:47'),
(65, 'Sole', 'Zone 1', '343', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Community Water System (Owned)', 'Yes', 'Poultry', '₱6,000 - ₱10,000', '2025-05-04 18:12:45', '2025-05-04 18:12:45'),
(69, 'Sample', 'Zone 2', '123', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Community Water System (Owned)', 'Yes', 'Vegetable Garden', '₱5,000 (Below)', '2025-05-05 15:23:01', '2025-05-05 15:23:01'),
(73, 'Ewan', 'Zone 2', '123', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Community Water System (Shared)', 'Yes', 'Poultry', '₱5,000 (Below)', '2025-05-08 10:02:53', '2025-05-08 10:02:53'),
(74, 'Sdas', 'Zone 1', '12', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Community Water System (Owned)', 'Yes', 'Vegetable Garden', '₱5,000 (Below)', '2025-05-08 14:19:06', '2025-05-08 14:19:06'),
(77, 'Street 1', 'Zone 5', '10', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'None', 'Bottled Water/Purified/Distilled Water', 'Yes', 'Livestock', '₱16,000 - ₱20,000', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(78, 'Street 2', 'Zone 1', '50', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Internet', 'Community Water System (Shared)', 'No', 'Livestock', '₱26,000 - above', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(79, 'Street 3', 'Zone 3', '27', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'None', 'Deep and Shallow Well (Owned)', 'No', 'Vegetable Garden', '₱5,000 (Below)', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(80, 'Street 4', 'Zone 5', '8', 'Strong Materials', 'Level 3 - None', 'None', 'Bottled Water/Purified/Distilled Water', 'Yes', 'Livestock', '₱5,000 (Below)', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(81, 'Street 5', 'Zone 1', '80', 'Mixed Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'None', 'Bottled Water/Purified/Distilled Water', 'No', 'Vegetable Garden', '₱11,000 - ₱15,000', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(82, 'Street 6', 'Zone 3', '96', 'Mixed Materials', 'Level 3 - None', 'None', 'Deep and Shallow Well (Shared)', 'Yes', 'None', '₱26,000 - above', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(83, 'Street 7', 'Zone 2', '37', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Deep and Shallow Well (Shared)', 'Yes', 'Vegetable Garden', '₱11,000 - ₱15,000', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(84, 'Street 8', 'Zone 3', '97', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Community Water System (Shared)', 'Yes', 'Poultry', '₱11,000 - ₱15,000', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(85, 'Street 9', 'Zone 5', '23', 'Strong Materials', 'Level 3 - None', 'Internet', 'Bottled Water/Purified/Distilled Water', 'No', 'Others', '₱26,000 - above', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(86, 'Street 10', 'Zone 2', '79', 'Light Materials', 'Level 3 - None', 'Internet', 'Community Water System (Owned)', 'Yes', 'Others', '₱21,000 - ₱25,000', '2025-05-21 21:24:46', '2025-05-21 21:24:46'),
(87, 'Street 1', 'Zone 2', '58', 'Light Materials', 'Level 3 - None', 'Cellphone', 'Community Water System (Owned)', 'No', 'Vegetable Garden', '₱5,000 (Below)', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(88, 'Street 2', 'Zone 5', '51', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Telephone', 'Bottled Water/Purified/Distilled Water', 'No', 'Fishpond', '₱11,000 - ₱15,000', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(89, 'Street 3', 'Zone 1', '96', 'Mixed Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Deep and Shallow Well (Shared)', 'No', 'Vegetable Garden', '₱26,000 - above', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(90, 'Street 4', 'Zone 5', '54', 'Mixed Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Bottled Water/Purified/Distilled Water', 'Yes', 'Vegetable Garden', '₱26,000 - above', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(91, 'Street 5', 'Zone 5', '84', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Shared)', 'Yes', 'Livestock', '₱11,000 - ₱15,000', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(92, 'Street 6', 'Zone 5', '53', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'None', 'Community Water System (Shared)', 'No', 'Others', '₱21,000 - ₱25,000', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(93, 'Street 7', 'Zone 3', '80', 'Mixed Materials', 'Level 3 - None', 'None', 'Community Water System (Shared)', 'Yes', 'Fishpond', '₱6,000 - ₱10,000', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(94, 'Street 8', 'Zone 2', '3', 'Strong Materials', 'Level 3 - None', 'Internet', 'Community Water System (Owned)', 'No', 'Fishpond', '₱6,000 - ₱10,000', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(95, 'Street 9', 'Zone 2', '86', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Bottled Water/Purified/Distilled Water', 'No', 'Poultry', '₱5,000 (Below)', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(96, 'Street 10', 'Zone 5', '19', 'Mixed Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Telephone', 'Bottled Water/Purified/Distilled Water', 'Yes', 'Poultry', '₱11,000 - ₱15,000', '2025-05-21 21:40:26', '2025-05-21 21:40:26'),
(97, 'Street 1', 'Zone 2', '9', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Shared)', 'No', 'Others', '₱11,000 - ₱15,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(98, 'Street 2', 'Zone 5', '36', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Community Water System (Owned)', 'No', 'Others', '₱21,000 - ₱25,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(99, 'Street 3', 'Zone 4', '69', 'Light Materials', 'Level 3 - None', 'Internet', 'Deep and Shallow Well (Shared)', 'No', 'None', '₱11,000 - ₱15,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(100, 'Street 4', 'Zone 4', '24', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'None', 'Deep and Shallow Well (Owned)', 'No', 'Poultry', '₱5,000 (Below)', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(101, 'Street 5', 'Zone 5', '15', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Internet', 'Community Water System (Shared)', 'No', 'None', '₱6,000 - ₱10,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(102, 'Street 6', 'Zone 2', '3', 'Strong Materials', 'Level 3 - None', 'Telephone', 'Community Water System (Shared)', 'No', 'Vegetable Garden', '₱21,000 - ₱25,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(103, 'Street 7', 'Zone 2', '80', 'Strong Materials', 'Level 3 - None', 'Internet', 'Deep and Shallow Well (Owned)', 'Yes', 'None', '₱11,000 - ₱15,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(104, 'Street 8', 'Zone 2', '61', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'None', 'Deep and Shallow Well (Owned)', 'No', 'Livestock', '₱6,000 - ₱10,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(105, 'Street 9', 'Zone 2', '58', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Deep and Shallow Well (Owned)', 'No', 'Vegetable Garden', '₱5,000 (Below)', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(106, 'Street 10', 'Zone 1', '72', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Internet', 'Bottled Water/Purified/Distilled Water', 'Yes', 'None', '₱6,000 - ₱10,000', '2025-05-21 21:40:29', '2025-05-21 21:40:29'),
(107, 'Street 1', 'Zone 3', '10', 'Mixed Materials', 'Level 3 - None', 'Internet', 'Deep and Shallow Well (Shared)', 'Yes', 'Poultry', '₱11,000 - ₱15,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(108, 'Street 2', 'Zone 2', '77', 'Mixed Materials', 'Level 1 - Unsanitary Toilet', 'Cellphone', 'Bottled Water/Purified/Distilled Water', 'Yes', 'Vegetable Garden', '₱16,000 - ₱20,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(109, 'Street 3', 'Zone 2', '48', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'None', 'Community Water System (Owned)', 'Yes', 'Fishpond', '₱6,000 - ₱10,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(110, 'Street 4', 'Zone 4', '81', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Internet', 'Community Water System (Owned)', 'No', 'Others', '₱11,000 - ₱15,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(111, 'Street 5', 'Zone 1', '18', 'Light Materials', 'Level 1 - Unsanitary Toilet', 'None', 'Deep and Shallow Well (Owned)', 'No', 'Others', '₱21,000 - ₱25,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(112, 'Street 6', 'Zone 4', '79', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Telephone', 'Deep and Shallow Well (Owned)', 'Yes', 'None', '₱26,000 - above', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(113, 'Street 7', 'Zone 5', '47', 'Light Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Community Water System (Owned)', 'Yes', 'Livestock', '₱5,000 (Below)', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(114, 'Street 8', 'Zone 2', '54', 'Strong Materials', 'Level 2 - Sanitary Toilet with Septic Tank', 'Cellphone', 'Deep and Shallow Well (Owned)', 'Yes', 'None', '₱21,000 - ₱25,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(115, 'Street 9', 'Zone 5', '61', 'Light Materials', 'Level 3 - None', 'Telephone', 'Deep and Shallow Well (Shared)', 'Yes', 'Fishpond', '₱11,000 - ₱15,000', '2025-05-21 22:04:15', '2025-05-21 22:04:15'),
(116, 'Street 10', 'Zone 3', '24', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'None', 'Community Water System (Owned)', 'No', 'Fishpond', '₱16,000 - ₱20,000', '2025-05-21 22:04:16', '2025-05-21 22:04:16'),
(117, 'Dsad', 'Zone 1', '23', 'Strong Materials', 'Level 1 - Unsanitary Toilet', 'Telephone', 'Community Water System (Owned)', 'Yes', 'Vegetable Garden', '₱5,000 (Below)', '2025-05-22 04:02:01', '2025-05-22 04:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `household_id` int(11) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `civil_status` varchar(50) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `birth_date` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `education` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `beneficiary` varchar(100) NOT NULL,
  `pregnant` varchar(50) NOT NULL,
  `disability` varchar(100) NOT NULL,
  `household_type` varchar(100) NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `household_id`, `profile_picture`, `first_name`, `middle_name`, `last_name`, `suffix`, `alias`, `contact_number`, `civil_status`, `religion`, `birth_date`, `age`, `gender`, `education`, `occupation`, `beneficiary`, `pregnant`, `disability`, `household_type`, `update_at`) VALUES
(169, 45, 'http://192.168.0.126/BFEPS-BDRRMC/api/profiling/uploads/1746629209_vehicle_pass_(1).png', 'Christian', '', 'Smith', '', '', '09295484773', 'Common Law/Live-in', 'Muslim', '1972-05-04', 53, 'baweqw', 'Elementary Level', 'Driver', 'Yes', 'No', 'Learning Disability', 'Head of the Household', '2025-05-08 11:52:28'),
(170, 46, NULL, 'Daniel', NULL, 'Doe', NULL, NULL, '09555686384', 'Married', 'Roman Catholic', '1954-05-04', 71, 'Transwoman', 'Highschool Graduate', 'Teacher/Educator', 'No', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-04 14:24:40'),
(171, 47, NULL, 'Jane', NULL, 'Smith', NULL, NULL, '09588849748', 'Widowed', 'Others', '1997-05-04', 28, 'Prefer not to say', 'Vocational', 'Fisherfolk', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:40'),
(172, 48, NULL, 'Emily', NULL, 'Rodriguez', NULL, NULL, '09865042552', 'Divorced', 'Roman Catholic', '1971-05-04', 54, 'Non-binary', 'Elementary Graduate', 'Vendor', 'Yes', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-04 14:24:40'),
(173, 49, NULL, 'Alice', NULL, 'Martinez', NULL, NULL, '09247897171', 'Widowed', 'Muslim', '1928-05-04', 97, 'Prefer not to say', 'College Graduate', 'Fisherfolk', 'Yes', 'No', 'None', 'Head of the Household', '2025-05-04 14:24:40'),
(174, 50, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09578113574', 'Divorced', 'Atheist', '2001-05-04', 24, 'Male', 'Others', 'Housekeeper', 'Yes', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-04 14:24:40'),
(175, 51, NULL, 'Michael', NULL, 'Martinez', NULL, NULL, '09503746080', 'Married', 'Buddhist', '1934-05-04', 91, 'Non-binary', 'Post Graduate', 'Health Worker', 'Yes', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-04 14:24:40'),
(176, 52, NULL, 'John', NULL, 'Doe', NULL, NULL, '09121589899', 'Common Law/Live-in', 'Atheist', '1991-05-04', 34, 'Transman', 'College Level', 'Technician/Mechanic', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:40'),
(177, 53, NULL, 'John', NULL, 'Rodriguez', NULL, NULL, '09964712108', 'Widowed', 'Atheist', '1932-05-04', 93, 'Transman', 'Vocational', 'Private Employee', 'No', 'No', 'Others', 'Head of the Household', '2025-05-04 14:24:40'),
(178, 54, NULL, 'Jane', NULL, 'Anderson', NULL, NULL, '09265195923', 'Divorced', 'Muslim', '1956-05-04', 69, 'Others', 'Elementary Graduate', 'Teacher/Educator', 'No', 'No', 'Physical Disability', 'Head of the Household', '2025-05-04 14:24:40'),
(179, 55, '', 'Robert', '', 'Johnson', '', '', '09605777646', 'Others', 'Roman Catholic', '1952-05-04', 73, 'Transwoman', 'College Graduate', 'Housewife', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:29:43'),
(180, 55, NULL, 'David', NULL, 'Garcia', NULL, NULL, '09497196545', 'Separated', 'Born Again Christian', '1967-05-04', 58, 'Others', 'Highschool Level', 'Business Owner', 'Yes', 'No', 'Intellectual Disability', 'Head of the Household', '2025-05-04 14:24:47'),
(182, 55, NULL, 'Jane', NULL, 'Lopez', NULL, NULL, '09401768461', 'Widowed', 'Born Again Christian', '1932-05-04', 93, 'Transwoman', 'Elementary Graduate', 'Farmer', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:47'),
(184, 55, '', 'Jane', '', 'Anderson', '', '', '09555798196', 'Others', 'Iglesia ni Cristo', '1993-05-04', 32, 'Prefer not to say', 'Others', 'Driver', 'No', 'No', 'Others', 'In-Law', '2025-05-04 14:29:43'),
(185, 55, NULL, 'Robert', NULL, 'Johnson', NULL, NULL, '09605777646', 'Others', 'Roman Catholic', '1952-05-04', 73, 'Transwoman', 'College Graduate', 'Housewife', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:47'),
(186, 55, '', 'Michael', '', 'Williams', '', '', '09417065764', 'Divorced', 'Atheist', '2003-05-04', 22, 'Female', 'Post Graduate', 'Business Owner', 'Yes', 'No', 'Others', 'Relative', '2025-05-04 14:29:43'),
(187, 55, '', 'Alice', '', 'Garcia', '', '', '09256665770', 'Common Law/Live-in', 'Born Again Christian', '1987-05-04', 38, 'Others', 'Others', 'Labourer', 'Yes', 'No', 'Multiple Disabilities', 'Grandchild', '2025-05-04 14:29:43'),
(188, 56, '', 'Emily', '', 'Rodriguez', '', '', '09663825803', 'Common Law/Live-in', 'Iglesia ni Cristo', '2003-05-04', 22, 'Male', 'Elementary Level', 'Retired', 'No', 'No', 'Intellectual Disability', 'Head of the Household', '2025-05-04 14:30:53'),
(192, 56, '', 'Jane', '', 'Lopez', '', '', '09738958070', 'Divorced', 'Atheist', '1987-05-04', 38, 'Transwoman', 'Highschool Graduate', 'Vendor', 'No', 'No', 'Speech Impairment', 'Grandchild', '2025-05-04 14:30:53'),
(193, 56, '', 'John', '', 'Rodriguez', '', '', '09685371399', 'Common Law/Live-in', 'Iglesia ni Cristo', '1987-05-04', 38, 'Non-binary', 'Others', 'Fisherfolk', 'No', 'No', 'Hearing Impairment', 'House Helper', '2025-05-04 14:30:53'),
(194, 56, '', 'John', '', 'Martinez', '', '', '09426853338', 'Separated', 'Iglesia ni Cristo', '2007-05-04', 18, 'Prefer not to say', 'Vocational', 'None', 'No', 'No', 'Psychosocial Disability', 'Aunt/Uncle', '2025-05-04 14:30:53'),
(195, 56, '', 'Jane', '', 'Johnson', '', '', '09481753618', 'Married', 'Born Again Christian', '1928-05-04', 97, 'Others', 'Elementary Level', 'Housewife', 'Yes', 'No', 'Psychosocial Disability', 'Non-Relative', '2025-05-04 14:30:53'),
(196, 56, '', 'Sophia', '', 'Garcia', '', '', '09118809021', 'Married', 'Roman Catholic', '1951-05-04', 74, 'Transwoman', 'Others', 'Vendor', 'Yes', 'No', 'Intellectual Disability', 'None', '2025-05-04 14:30:53'),
(197, 57, '', 'Emily', '', 'Anderson', '', '', '09949613643', 'Single', 'Iglesia ni Cristo', '1985-05-04', 40, 'Others', 'Highschool Level', 'Self Employed', 'Yes', 'No', 'Psychosocial Disability', 'Head of the Household', '2025-05-05 17:05:27'),
(200, 57, '', 'Sophia', '', 'Williams', '', '', '09478550799', 'Separated', 'Muslim', '1962-05-04', 63, 'Female', 'College Level', 'Teacher/Educator', 'No', 'No', 'Speech Impairment', 'Child', '2025-05-05 17:05:27'),
(201, 57, '', 'David', '', 'Smith', '', '', '09170665451', 'Single', 'Roman Catholic', '1945-05-04', 80, 'Female', 'Elementary Level', 'Security Personnel', 'No', 'No', 'Speech Impairment', 'Parent', '2025-05-05 17:05:27'),
(202, 57, '', 'Emily', '', 'Anderson', '', '', '09583255271', 'Widowed', 'Roman Catholic', '1942-05-04', 83, 'Prefer not to say', 'Highschool Level', 'Health Worker', 'No', 'No', 'None', 'Child', '2025-05-05 17:05:27'),
(203, 57, '', 'Daniel', '', 'Brown', '', '', '09948076274', 'Common Law/Live-in', 'Roman Catholic', '1928-05-04', 97, 'Female', 'None', 'Vendor', 'No', 'No', 'Hearing Impairment', 'Grandparent', '2025-05-05 17:05:27'),
(204, 57, '', 'Daniel', '', 'Martinez', '', '', '09365125514', 'Single', 'Muslim', '1967-05-04', 58, 'Non-binary', 'Others', 'Labourer', 'No', 'No', 'Learning Disability', 'House Helper', '2025-05-05 17:05:27'),
(205, 57, NULL, 'Emily', NULL, 'Anderson', NULL, NULL, '09949613643', 'Single', 'Iglesia ni Cristo', '1985-05-04', 40, 'Others', 'Highschool Level', 'Self Employed', 'Yes', 'No', 'Psychosocial Disability', 'Head of the Household', '2025-05-04 14:24:47'),
(206, 58, NULL, 'Sophia', NULL, 'Lopez', NULL, NULL, '09516366957', 'Common Law/Live-in', 'Iglesia ni Cristo', '2017-05-04', 8, 'Transman', 'Post Graduate', 'Vendor', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:47'),
(207, 58, NULL, 'Sophia', NULL, 'Smith', NULL, NULL, '09887246461', 'Single', 'Others', '1951-05-04', 74, 'Transwoman', 'None', 'Housekeeper', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:47'),
(208, 58, NULL, 'Sophia', NULL, 'Smith', NULL, NULL, '09232739592', 'Single', 'Muslim', '1992-05-04', 33, 'Transman', 'Post Graduate', 'Self Employed', 'No', 'No', 'Visual Impairment', 'None', '2025-05-04 14:24:47'),
(209, 58, NULL, 'Daniel', NULL, 'Martinez', NULL, NULL, '09357403385', 'Divorced', 'Others', '1953-05-04', 72, 'Transman', 'Others', 'Housewife', 'Yes', 'No', 'Visual Impairment', 'Aunt/Uncle', '2025-05-04 14:24:47'),
(210, 58, NULL, 'Jane', NULL, 'Anderson', NULL, NULL, '09587583239', 'Divorced', 'Roman Catholic', '1961-05-04', 64, 'Transman', 'Vocational', 'Labourer', 'No', 'No', 'Intellectual Disability', 'Child', '2025-05-04 14:24:47'),
(211, 58, NULL, 'Alice', NULL, 'Johnson', NULL, NULL, '09272336675', 'Separated', 'Others', '1926-05-04', 99, 'Prefer not to say', 'Post Graduate', 'Farmer', 'No', 'No', 'Speech Impairment', 'Parent', '2025-05-04 14:24:47'),
(212, 58, NULL, 'Jane', NULL, 'Williams', NULL, NULL, '09111570395', 'Divorced', 'Others', '1943-05-04', 82, 'Prefer not to say', 'College Graduate', 'Teacher/Educator', 'Yes', 'No', 'None', 'Parent', '2025-05-04 14:24:47'),
(213, 58, NULL, 'Emily', NULL, 'Martinez', NULL, NULL, '09774997441', 'Married', 'Buddhist', '1965-05-04', 60, 'Prefer not to say', 'College Level', 'Private Employee', 'No', 'No', 'None', 'Spouse', '2025-05-04 14:24:47'),
(214, 58, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09244502781', 'Married', 'Born Again Christian', '1990-05-04', 35, 'Transwoman', 'College Level', 'OFW', 'No', 'No', 'Others', 'Relative', '2025-05-04 14:24:47'),
(215, 59, NULL, 'Daniel', NULL, 'Johnson', NULL, NULL, '09202794119', 'Married', 'Muslim', '1986-05-04', 39, 'Non-binary', 'Others', 'Technician/Mechanic', 'Yes', 'No', 'Others', 'Head of the Household', '2025-05-04 14:24:47'),
(216, 59, NULL, 'Emily', NULL, 'Lopez', NULL, NULL, '09730099590', 'Common Law/Live-in', 'Born Again Christian', '1952-05-04', 73, 'Non-binary', 'None', 'Retired', 'No', 'No', 'Multiple Disabilities', 'Others', '2025-05-04 14:24:47'),
(217, 59, NULL, 'Jane', NULL, 'Johnson', NULL, NULL, '09914273816', 'Married', 'Others', '1992-05-04', 33, 'Female', 'Highschool Graduate', 'OFW', 'No', 'Yes', 'Intellectual Disability', 'House Helper', '2025-05-04 14:24:47'),
(218, 59, NULL, 'Emily', NULL, 'Lopez', NULL, NULL, '09905955666', 'Others', 'Buddhist', '1971-05-04', 54, 'Non-binary', 'None', 'Business Owner', 'Yes', 'No', 'Others', 'Parent', '2025-05-04 14:24:47'),
(219, 59, NULL, 'John', NULL, 'Garcia', NULL, NULL, '09845822565', 'Married', 'Muslim', '1977-05-04', 48, 'Male', 'Highschool Graduate', 'Student', 'Yes', 'No', 'Intellectual Disability', 'In-Law', '2025-05-04 14:24:47'),
(220, 59, NULL, 'Sophia', NULL, 'Rodriguez', NULL, NULL, '09643073180', 'Widowed', 'Atheist', '1962-05-04', 63, 'Others', 'Elementary Level', 'Teacher/Educator', 'Yes', 'No', 'None', 'None', '2025-05-04 14:24:47'),
(221, 59, NULL, 'David', NULL, 'Brown', NULL, NULL, '09426058517', 'Widowed', 'Iglesia ni Cristo', '1931-05-04', 94, 'Male', 'Others', 'Business Owner', 'No', 'No', 'None', 'In-Law', '2025-05-04 14:24:47'),
(222, 59, NULL, 'Emily', NULL, 'Lopez', NULL, NULL, '09577158496', 'Divorced', 'Buddhist', '1979-05-04', 46, 'Female', 'Post Graduate', 'Security Personnel', 'Yes', 'No', 'Learning Disability', 'Boarder', '2025-05-04 14:24:47'),
(223, 59, NULL, 'Sophia', NULL, 'Lopez', NULL, NULL, '09925985342', 'Common Law/Live-in', 'Muslim', '1993-05-04', 32, 'Male', 'Highschool Graduate', 'Driver', 'Yes', 'No', 'Visual Impairment', 'Parent', '2025-05-04 14:24:47'),
(224, 60, NULL, 'Daniel', NULL, 'Williams', NULL, NULL, '09129212644', 'Divorced', 'Atheist', '1956-05-04', 69, 'Female', 'None', 'Gov\'t. Employee', 'Yes', 'No', 'Learning Disability', 'Head of the Household', '2025-05-04 14:24:47'),
(225, 60, NULL, 'Alice', NULL, 'Brown', NULL, NULL, '09813099560', 'Divorced', 'Others', '2013-05-04', 12, 'Prefer not to say', 'Elementary Level', 'OFW', 'Yes', 'No', 'Hearing Impairment', 'Child', '2025-05-04 14:24:47'),
(226, 60, NULL, 'Alice', NULL, 'Lopez', NULL, NULL, '09684401329', 'Single', 'Others', '2012-05-04', 13, 'Male', 'College Level', 'Gov\'t. Employee', 'Yes', 'No', 'Speech Impairment', 'Child', '2025-05-04 14:24:47'),
(227, 60, NULL, 'Michael', NULL, 'Johnson', NULL, NULL, '09450637556', 'Married', 'Iglesia ni Cristo', '2010-05-04', 15, 'Others', 'None', 'Self Employed', 'Yes', 'No', 'Others', 'Grandchild', '2025-05-04 14:24:47'),
(228, 60, NULL, 'Jane', NULL, 'Smith', NULL, NULL, '09849465627', 'Common Law/Live-in', 'Buddhist', '1978-05-04', 47, 'Others', 'College Graduate', 'Farmer', 'No', 'No', 'Others', 'Spouse', '2025-05-04 14:24:47'),
(229, 60, NULL, 'John', NULL, 'Johnson', NULL, NULL, '09728228717', 'Divorced', 'Born Again Christian', '1935-05-04', 90, 'Non-binary', 'Post Graduate', 'Housewife', 'Yes', 'No', 'Visual Impairment', 'Aunt/Uncle', '2025-05-04 14:24:47'),
(230, 60, NULL, 'Robert', NULL, 'Martinez', NULL, NULL, '09138503818', 'Married', 'Buddhist', '1978-05-04', 47, 'Female', 'None', 'Health Worker', 'Yes', 'No', 'Intellectual Disability', 'Non-Relative', '2025-05-04 14:24:47'),
(231, 60, NULL, 'Michael', NULL, 'Doe', NULL, NULL, '09660566712', 'Single', 'Muslim', '1998-05-04', 27, 'Non-binary', 'None', 'Gov\'t. Employee', 'No', 'No', 'Multiple Disabilities', 'Boarder', '2025-05-04 14:24:47'),
(232, 60, NULL, 'Alice', NULL, 'Williams', NULL, NULL, '09164198570', 'Single', 'Others', '1979-05-04', 46, 'Transman', 'Post Graduate', 'OFW', 'No', 'No', 'Visual Impairment', 'Boarder', '2025-05-04 14:24:47'),
(233, 61, '', 'Sophia', '', 'Lopez', '', '', '09293341478', 'Divorced', 'Others', '1958-05-04', 67, 'Transwoman', 'Highschool Level', 'Others', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-07 16:47:22'),
(235, 61, '', 'Michael', '', 'Anderson', '', '', '09730718025', 'Common Law/Live-in', 'Atheist', '1939-05-04', 86, 'Female', 'College Level', 'Student', 'Yes', 'No', 'Physical Disability', 'Sibling', '2025-05-07 16:47:22'),
(236, 61, '', 'Daniel', '', 'Garcia', '', '', '09326265481', 'Common Law/Live-in', 'Buddhist', '1985-05-04', 40, 'Male', 'College Level', 'Fisherfolk', 'No', 'No', 'Visual Impairment', 'House Helper', '2025-05-07 16:47:22'),
(237, 61, '', 'Daniel', '', 'Doe', '', '', '09612893594', 'Common Law/Live-in', 'Muslim', '1972-05-04', 53, 'Transwoman', 'Others', 'Retired', 'No', 'No', 'Speech Impairment', 'Relative', '2025-05-07 16:47:22'),
(238, 61, '', 'Michael', '', 'Doe', '', '', '09193534359', 'Single', 'Iglesia ni Cristo', '2012-05-04', 13, 'Transwoman', 'College Graduate', 'Retired', 'Yes', 'No', 'None', 'Spouse', '2025-05-07 16:47:22'),
(239, 61, '', 'Chris', '', 'Doe', '', '', '09567163536', 'Separated', 'Atheist', '2009-05-04', 16, 'Others', 'College Graduate', 'Technician/Mechanic', 'Yes', 'No', 'Physical Disability', 'Boarder', '2025-05-07 16:47:22'),
(240, 61, '', 'John', '', 'Rodriguez', '', '', '09448222982', 'Married', 'Atheist', '1944-05-04', 81, 'Prefer not to say', 'Vocational', 'Business Owner', 'No', 'No', 'Physical Disability', 'Spouse', '2025-05-07 16:47:22'),
(241, 61, NULL, 'Sophia', NULL, 'Lopez', NULL, NULL, '09293341478', 'Divorced', 'Others', '1958-05-04', 67, 'Transwoman', 'Highschool Level', 'Others', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-04 14:24:47'),
(242, 62, NULL, 'Daniel', NULL, 'Garcia', NULL, NULL, '09987455222', 'Common Law/Live-in', 'Buddhist', '2002-05-04', 23, 'Others', 'Post Graduate', 'Technician/Mechanic', 'No', 'No', 'Learning Disability', 'Head of the Household', '2025-05-04 14:24:47'),
(243, 62, NULL, 'Daniel', NULL, 'Anderson', NULL, NULL, '09326092084', 'Single', 'Iglesia ni Cristo', '1969-05-04', 56, 'Prefer not to say', 'Elementary Graduate', 'Retired', 'Yes', 'No', 'Hearing Impairment', 'Parent', '2025-05-04 14:24:47'),
(244, 62, NULL, 'Jane', NULL, 'Doe', NULL, NULL, '09707763805', 'Widowed', 'Buddhist', '1941-05-04', 84, 'Transwoman', 'Highschool Graduate', 'Gov\'t. Employee', 'Yes', 'No', 'Visual Impairment', 'Child', '2025-05-04 14:24:47'),
(245, 62, NULL, 'David', NULL, 'Williams', NULL, NULL, '09274596838', 'Widowed', 'Buddhist', '1975-05-04', 50, 'Others', 'Vocational', 'Security Personnel', 'Yes', 'No', 'Learning Disability', 'Child', '2025-05-04 14:24:47'),
(246, 62, NULL, 'Jane', NULL, 'Anderson', NULL, NULL, '09622247413', 'Widowed', 'Born Again Christian', '1961-05-04', 64, 'Transman', 'Elementary Graduate', 'Housewife', 'No', 'No', 'Physical Disability', 'Boarder', '2025-05-04 14:24:47'),
(247, 62, NULL, 'Michael', NULL, 'Johnson', NULL, NULL, '09538030708', 'Married', 'Born Again Christian', '1992-05-04', 33, 'Non-binary', 'College Level', 'Others', 'No', 'No', 'Visual Impairment', 'Relative', '2025-05-04 14:24:47'),
(248, 62, NULL, 'David', NULL, 'Rodriguez', NULL, NULL, '09864513397', 'Others', 'Iglesia ni Cristo', '2017-05-04', 8, 'Female', 'Elementary Graduate', 'Self Employed', 'No', 'No', 'Physical Disability', 'Boarder', '2025-05-04 14:24:47'),
(249, 62, NULL, 'Emily', NULL, 'Johnson', NULL, NULL, '09894744639', 'Widowed', 'Others', '2019-05-04', 6, 'Transman', 'Highschool Graduate', 'Gov\'t. Employee', 'Yes', 'No', 'Physical Disability', 'Aunt/Uncle', '2025-05-04 14:24:47'),
(250, 62, NULL, 'Michael', NULL, 'Garcia', NULL, NULL, '09917214373', 'Common Law/Live-in', 'Iglesia ni Cristo', '1941-05-04', 84, 'Prefer not to say', 'College Level', 'Business Owner', 'No', 'No', 'Visual Impairment', 'Others', '2025-05-04 14:24:47'),
(251, 63, NULL, 'Chris', NULL, 'Lopez', NULL, NULL, '09923103995', 'Others', 'Buddhist', '1946-05-04', 79, 'Prefer not to say', 'Highschool Level', 'OFW', 'No', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-04 14:24:47'),
(252, 63, NULL, 'Daniel', NULL, 'Doe', NULL, NULL, '09441580822', 'Separated', 'Iglesia ni Cristo', '2009-05-04', 16, 'Female', 'Others', 'Driver', 'Yes', 'No', 'Multiple Disabilities', 'House Helper', '2025-05-04 14:24:47'),
(253, 63, NULL, 'Alice', NULL, 'Anderson', NULL, NULL, '09893623945', 'Married', 'Atheist', '1947-05-04', 78, 'Transman', 'Post Graduate', 'None', 'No', 'No', 'Visual Impairment', 'In-Law', '2025-05-04 14:24:47'),
(254, 63, NULL, 'Daniel', NULL, 'Rodriguez', NULL, NULL, '09241663148', 'Single', 'Others', '2006-05-04', 19, 'Female', 'Vocational', 'Private Employee', 'Yes', 'No', 'Physical Disability', 'House Helper', '2025-05-04 14:24:47'),
(255, 63, NULL, 'Daniel', NULL, 'Brown', NULL, NULL, '09296082659', 'Divorced', 'Atheist', '1977-05-04', 48, 'Transman', 'College Graduate', 'Others', 'Yes', 'No', 'Multiple Disabilities', 'Grandchild', '2025-05-04 14:24:47'),
(256, 63, NULL, 'Chris', NULL, 'Brown', NULL, NULL, '09402184778', 'Widowed', 'Atheist', '1946-05-04', 79, 'Prefer not to say', 'College Level', 'Self Employed', 'Yes', 'No', 'Psychosocial Disability', 'Grandchild', '2025-05-04 14:24:47'),
(257, 63, NULL, 'Chris', NULL, 'Garcia', NULL, NULL, '09700951028', 'Common Law/Live-in', 'Others', '1941-05-04', 84, 'Others', 'Elementary Level', 'OFW', 'No', 'No', 'Hearing Impairment', 'Grandparent', '2025-05-04 14:24:47'),
(258, 63, NULL, 'Chris', NULL, 'Johnson', NULL, NULL, '09179121981', 'Separated', 'Others', '1979-05-04', 46, 'Prefer not to say', 'Others', 'Private Employee', 'Yes', 'No', 'Speech Impairment', 'Child', '2025-05-04 14:24:47'),
(259, 63, NULL, 'David', NULL, 'Johnson', NULL, NULL, '09168612708', 'Married', 'Born Again Christian', '1952-05-04', 73, 'Prefer not to say', 'Highschool Graduate', 'Business Owner', 'Yes', 'No', 'Multiple Disabilities', 'Spouse', '2025-05-04 14:24:47'),
(260, 64, NULL, 'Alice', NULL, 'Johnson', NULL, NULL, '09287088799', 'Single', 'Born Again Christian', '1938-05-04', 87, 'Female', 'Others', 'Fisherfolk', 'No', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-04 14:24:47'),
(261, 64, NULL, 'Alice', NULL, 'Garcia', NULL, NULL, '09860002069', 'Common Law/Live-in', 'Buddhist', '1997-05-04', 28, 'Others', 'Post Graduate', 'None', 'No', 'No', 'Psychosocial Disability', 'Relative', '2025-05-04 14:24:47'),
(262, 64, NULL, 'Sophia', NULL, 'Smith', NULL, NULL, '09914798536', 'Divorced', 'Born Again Christian', '1943-05-04', 82, 'Non-binary', 'College Level', 'Farmer', 'No', 'No', 'Intellectual Disability', 'Child', '2025-05-04 14:24:47'),
(263, 64, NULL, 'Sophia', NULL, 'Garcia', NULL, NULL, '09923905706', 'Divorced', 'Roman Catholic', '2000-05-04', 25, 'Others', 'Others', 'Housekeeper', 'No', 'No', 'Speech Impairment', 'Child', '2025-05-04 14:24:47'),
(264, 64, NULL, 'Daniel', NULL, 'Williams', NULL, NULL, '09507354079', 'Married', 'Others', '1990-05-04', 35, 'Prefer not to say', 'Highschool Level', 'Farmer', 'No', 'No', 'Others', 'Sibling', '2025-05-04 14:24:47'),
(265, 64, NULL, 'Chris', NULL, 'Brown', NULL, NULL, '09386116101', 'Married', 'Muslim', '1997-05-04', 28, 'Transwoman', 'Others', 'Vendor', 'No', 'No', 'Speech Impairment', 'House Helper', '2025-05-04 14:24:47'),
(266, 64, NULL, 'David', NULL, 'Lopez', NULL, NULL, '09433797383', 'Married', 'Born Again Christian', '1974-05-04', 51, 'Prefer not to say', 'Post Graduate', 'Farmer', 'Yes', 'No', 'Intellectual Disability', 'Boarder', '2025-05-04 14:24:47'),
(267, 64, NULL, 'John', NULL, 'Lopez', NULL, NULL, '09328490099', 'Single', 'Born Again Christian', '1936-05-04', 89, 'Prefer not to say', 'Highschool Graduate', 'None', 'Yes', 'No', 'Visual Impairment', 'Child', '2025-05-04 14:24:47'),
(268, 64, NULL, 'Chris', NULL, 'Lopez', NULL, NULL, '09911671252', 'Divorced', 'Muslim', '1973-05-04', 52, 'Others', 'Elementary Graduate', 'Retired', 'Yes', 'No', 'Psychosocial Disability', 'In-Law', '2025-05-04 14:24:47'),
(269, 65, '', 'Cleo', '', 'Sol', '', '', '', 'Single', 'badista', '2003-05-05', 22, 'pansexual', 'Elementary Graduate', 'web developer', 'No', 'Yes', 'None', 'Head of the Household', '2025-05-04 18:15:37'),
(273, 69, '', 'Sam', '', 'Ple', '', '', '', 'Single', 'Roman Catholic', '1999-05-05', 26, 'Male', 'College Level', 'Driver', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-05 15:23:01'),
(277, 73, '', 'Pablo', '', 'Boy', '', '', '', 'Married', 'Roman Catholic', '1999-05-08', 26, 'Male', 'Elementary Graduate', 'Business Owner', 'No', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-08 10:02:53'),
(278, 74, 'http://localhost/BFEPS-BDRRMC-MAIN/api/profiling/uploads/1747853107_Copy_of_SE2_-_Class_Diagram_(1).png', 'Kevin', '', 'Abstract', '', '', '', 'Single', 'Roman Catholic', '1999-05-08', 26, 'Male', 'Elementary Level', 'Business Owner', 'Yes', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 18:45:21'),
(281, 77, NULL, 'Jane', NULL, 'Doe', NULL, NULL, '09818047230', 'Married', 'Iglesia ni Cristo', '1971-05-21', 54, 'Non-binary', 'College Graduate', 'Health Worker', 'Yes', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-21 21:24:46'),
(282, 77, NULL, 'Robert', NULL, 'Brown', NULL, NULL, '09131657631', 'Single', 'Atheist', '1968-05-21', 57, 'Prefer not to say', 'Elementary Graduate', 'Technician/Mechanic', 'Yes', 'No', 'Intellectual Disability', 'Grandchild', '2025-05-21 21:24:46'),
(283, 77, NULL, 'Michael', NULL, 'Lopez', NULL, NULL, '09541379683', 'Married', 'Muslim', '1985-05-21', 40, 'Transman', 'Elementary Level', 'Driver', 'No', 'No', 'Visual Impairment', 'None', '2025-05-21 21:24:46'),
(284, 77, NULL, 'Michael', NULL, 'Doe', NULL, NULL, '09217804977', 'Married', 'Born Again Christian', '1936-05-21', 89, 'Female', 'Others', 'None', 'Yes', 'No', 'Multiple Disabilities', 'Boarder', '2025-05-21 21:24:46'),
(285, 77, NULL, 'Jane', NULL, 'Johnson', NULL, NULL, '09857254374', 'Widowed', 'Buddhist', '1943-05-21', 82, 'Transman', 'Post Graduate', 'Teacher/Educator', 'Yes', 'No', 'None', 'None', '2025-05-21 21:24:46'),
(286, 78, NULL, 'David', NULL, 'Rodriguez', NULL, NULL, '09310074181', 'Married', 'Atheist', '2004-05-21', 21, 'Non-binary', 'Others', 'Labourer', 'No', 'No', 'Others', 'Head of the Household', '2025-05-21 21:24:46'),
(287, 78, NULL, 'John', NULL, 'Doe', NULL, NULL, '09616488663', 'Widowed', 'Roman Catholic', '2017-05-21', 8, 'Transman', 'Highschool Level', 'Technician/Mechanic', 'Yes', 'No', 'None', 'Relative', '2025-05-21 21:24:46'),
(288, 78, NULL, 'Emily', NULL, 'Johnson', NULL, NULL, '09318463128', 'Common Law/Live-in', 'Muslim', '2015-05-21', 10, 'Transwoman', 'Highschool Level', 'Driver', 'No', 'No', 'Psychosocial Disability', 'Sibling', '2025-05-21 21:24:46'),
(289, 78, NULL, 'Alice', NULL, 'Lopez', NULL, NULL, '09870479130', 'Separated', 'Muslim', '2010-05-21', 15, 'Transman', 'College Graduate', 'Labourer', 'No', 'No', 'None', 'Parent', '2025-05-21 21:24:46'),
(290, 78, NULL, 'Sophia', NULL, 'Anderson', NULL, NULL, '09310469392', 'Others', 'Iglesia ni Cristo', '1995-05-21', 30, 'Male', 'None', 'Driver', 'Yes', 'No', 'Learning Disability', 'Parent', '2025-05-21 21:24:46'),
(291, 79, NULL, 'Sophia', NULL, 'Martinez', NULL, NULL, '09974587033', 'Common Law/Live-in', 'Atheist', '1979-05-21', 46, 'Others', 'Highschool Graduate', 'Housewife', 'No', 'No', 'Intellectual Disability', 'Head of the Household', '2025-05-21 21:24:46'),
(292, 79, NULL, 'David', NULL, 'Lopez', NULL, NULL, '09647063409', 'Single', 'Born Again Christian', '2014-05-21', 11, 'Male', 'Post Graduate', 'Student', 'Yes', 'No', 'Speech Impairment', 'Parent', '2025-05-21 21:24:46'),
(293, 79, NULL, 'Robert', NULL, 'Martinez', NULL, NULL, '09904176211', 'Separated', 'Iglesia ni Cristo', '1946-05-21', 79, 'Prefer not to say', 'College Level', 'Fisherfolk', 'No', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 21:24:46'),
(294, 79, NULL, 'Emily', NULL, 'Williams', NULL, NULL, '09794027585', 'Single', 'Others', '1932-05-21', 93, 'Male', 'Vocational', 'Teacher/Educator', 'Yes', 'No', 'Psychosocial Disability', 'Aunt/Uncle', '2025-05-21 21:24:46'),
(295, 79, NULL, 'Emily', NULL, 'Martinez', NULL, NULL, '09283586229', 'Widowed', 'Muslim', '1963-05-21', 62, 'Female', 'Highschool Graduate', 'Housewife', 'No', 'No', 'Speech Impairment', 'House Helper', '2025-05-21 21:24:46'),
(296, 80, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09520289567', 'Married', 'Buddhist', '1937-05-21', 88, 'Transman', 'Elementary Level', 'Vendor', 'Yes', 'No', 'Physical Disability', 'Head of the Household', '2025-05-21 21:24:46'),
(297, 80, NULL, 'David', NULL, 'Johnson', NULL, NULL, '09593087167', 'Single', 'Atheist', '1985-05-21', 40, 'Transman', 'Others', 'Gov\'t. Employee', 'Yes', 'No', 'Others', 'Cousin', '2025-05-21 21:24:46'),
(298, 80, NULL, 'Emily', NULL, 'Smith', NULL, NULL, '09505256400', 'Separated', 'Born Again Christian', '2015-05-21', 10, 'Transman', 'Elementary Level', 'Labourer', 'Yes', 'No', 'Multiple Disabilities', 'Boarder', '2025-05-21 21:24:46'),
(299, 80, NULL, 'John', NULL, 'Johnson', NULL, NULL, '09625798837', 'Others', 'Born Again Christian', '1937-05-21', 88, 'Others', 'Post Graduate', 'Farmer', 'No', 'No', 'Intellectual Disability', 'In-Law', '2025-05-21 21:24:46'),
(300, 80, NULL, 'Daniel', NULL, 'Anderson', NULL, NULL, '09522322767', 'Divorced', 'Iglesia ni Cristo', '2008-05-21', 17, 'Male', 'Others', 'Fisherfolk', 'No', 'No', 'Hearing Impairment', 'Grandparent', '2025-05-21 21:24:46'),
(301, 81, NULL, 'David', NULL, 'Lopez', NULL, NULL, '09211201416', 'Others', 'Buddhist', '1968-05-21', 57, 'Others', 'Post Graduate', 'OFW', 'No', 'No', 'Physical Disability', 'Head of the Household', '2025-05-21 21:24:46'),
(302, 81, NULL, 'Robert', NULL, 'Anderson', NULL, NULL, '09195404680', 'Married', 'Atheist', '2020-05-21', 5, 'Transwoman', 'College Level', 'Others', 'No', 'No', 'None', 'Others', '2025-05-21 21:24:46'),
(303, 81, NULL, 'Emily', NULL, 'Smith', NULL, NULL, '09970218139', 'Married', 'Buddhist', '1967-05-21', 58, 'Male', 'Post Graduate', 'Vendor', 'No', 'No', 'Multiple Disabilities', 'Non-Relative', '2025-05-21 21:24:46'),
(304, 81, NULL, 'Robert', NULL, 'Martinez', NULL, NULL, '09646151951', 'Others', 'Atheist', '1960-05-21', 65, 'Transwoman', 'Post Graduate', 'Vendor', 'No', 'No', 'Learning Disability', 'Parent', '2025-05-21 21:24:46'),
(305, 81, NULL, 'Jane', NULL, 'Doe', NULL, NULL, '09128245452', 'Widowed', 'Born Again Christian', '1985-05-21', 40, 'Others', 'Elementary Graduate', 'Technician/Mechanic', 'Yes', 'No', 'Learning Disability', 'Child', '2025-05-21 21:24:46'),
(306, 82, NULL, 'Michael', NULL, 'Martinez', NULL, NULL, '09386721831', 'Married', 'Born Again Christian', '1934-05-21', 91, 'Non-binary', 'Post Graduate', 'Gov\'t. Employee', 'No', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 21:24:46'),
(307, 82, NULL, 'Emily', NULL, 'Smith', NULL, NULL, '09609634904', 'Separated', 'Born Again Christian', '1987-05-21', 38, 'Transman', 'College Graduate', 'Teacher/Educator', 'No', 'No', 'Learning Disability', 'House Helper', '2025-05-21 21:24:46'),
(308, 82, NULL, 'Chris', NULL, 'Anderson', NULL, NULL, '09717998448', 'Common Law/Live-in', 'Born Again Christian', '1961-05-21', 64, 'Prefer not to say', 'Highschool Graduate', 'Housekeeper', 'No', 'No', 'Physical Disability', 'House Helper', '2025-05-21 21:24:46'),
(309, 82, NULL, 'Michael', NULL, 'Garcia', NULL, NULL, '09158349354', 'Married', 'Born Again Christian', '1983-05-21', 42, 'Prefer not to say', 'Highschool Graduate', 'Others', 'Yes', 'No', 'Learning Disability', 'Grandparent', '2025-05-21 21:24:46'),
(310, 82, NULL, 'Alice', NULL, 'Smith', NULL, NULL, '09145924571', 'Married', 'Atheist', '1975-05-21', 50, 'Prefer not to say', 'Highschool Graduate', 'Driver', 'Yes', 'No', 'Physical Disability', 'Grandparent', '2025-05-21 21:24:46'),
(311, 83, NULL, 'Daniel', NULL, 'Garcia', NULL, NULL, '09637245544', 'Common Law/Live-in', 'Born Again Christian', '1995-05-21', 30, 'Prefer not to say', 'College Graduate', 'Business Owner', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 21:24:46'),
(312, 83, NULL, 'David', NULL, 'Anderson', NULL, NULL, '09273817447', 'Widowed', 'Born Again Christian', '1937-05-21', 88, 'Prefer not to say', 'None', 'OFW', 'No', 'No', 'None', 'Non-Relative', '2025-05-21 21:24:46'),
(313, 83, NULL, 'John', NULL, 'Johnson', NULL, NULL, '09717313162', 'Common Law/Live-in', 'Iglesia ni Cristo', '2010-05-21', 15, 'Non-binary', 'College Graduate', 'Housekeeper', 'No', 'No', 'Visual Impairment', 'Parent', '2025-05-21 21:24:46'),
(314, 83, NULL, 'Chris', NULL, 'Williams', NULL, NULL, '09352940798', 'Others', 'Born Again Christian', '1955-05-21', 70, 'Transman', 'Post Graduate', 'Housekeeper', 'Yes', 'No', 'Psychosocial Disability', 'Spouse', '2025-05-21 21:24:46'),
(315, 83, NULL, 'Daniel', NULL, 'Garcia', NULL, NULL, '09715727560', 'Single', 'Iglesia ni Cristo', '1935-05-21', 90, 'Others', 'Others', 'Self Employed', 'No', 'No', 'Others', 'Grandchild', '2025-05-21 21:24:46'),
(316, 84, NULL, 'Jane', NULL, 'Williams', NULL, NULL, '09688346817', 'Married', 'Buddhist', '1945-05-21', 80, 'Non-binary', 'Vocational', 'Student', 'Yes', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 21:24:46'),
(317, 84, NULL, 'Emily', NULL, 'Johnson', NULL, NULL, '09580475979', 'Married', 'Roman Catholic', '1953-05-21', 72, 'Female', 'College Level', 'OFW', 'No', 'No', 'None', 'Parent', '2025-05-21 21:24:46'),
(318, 84, NULL, 'John', NULL, 'Rodriguez', NULL, NULL, '09652449547', 'Common Law/Live-in', 'Buddhist', '1937-05-21', 88, 'Transwoman', 'Vocational', 'Fisherfolk', 'No', 'No', 'None', 'In-Law', '2025-05-21 21:24:46'),
(319, 84, NULL, 'Michael', NULL, 'Martinez', NULL, NULL, '09282048049', 'Single', 'Iglesia ni Cristo', '1954-05-21', 71, 'Male', 'Others', 'OFW', 'Yes', 'No', 'Psychosocial Disability', 'Child', '2025-05-21 21:24:46'),
(320, 84, NULL, 'Michael', NULL, 'Doe', NULL, NULL, '09449416345', 'Married', 'Roman Catholic', '1973-05-21', 52, 'Transwoman', 'College Graduate', 'Retired', 'No', 'No', 'Others', 'Non-Relative', '2025-05-21 21:24:46'),
(321, 85, NULL, 'Daniel', NULL, 'Lopez', NULL, NULL, '09863072737', 'Single', 'Others', '1946-05-21', 79, 'Male', 'College Graduate', 'Teacher/Educator', 'Yes', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-21 21:24:46'),
(322, 85, NULL, 'Emily', NULL, 'Brown', NULL, NULL, '09737964512', 'Divorced', 'Iglesia ni Cristo', '1941-05-21', 84, 'Others', 'Others', 'None', 'No', 'No', 'None', 'Aunt/Uncle', '2025-05-21 21:24:46'),
(323, 85, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09411274094', 'Single', 'Iglesia ni Cristo', '1980-05-21', 45, 'Others', 'None', 'Health Worker', 'Yes', 'No', 'Physical Disability', 'Relative', '2025-05-21 21:24:46'),
(324, 85, NULL, 'Robert', NULL, 'Doe', NULL, NULL, '09651749526', 'Single', 'Atheist', '2010-05-21', 15, 'Transwoman', 'Others', 'Housewife', 'Yes', 'No', 'Learning Disability', 'Non-Relative', '2025-05-21 21:24:46'),
(325, 85, NULL, 'John', NULL, 'Anderson', NULL, NULL, '09111494168', 'Divorced', 'Atheist', '1958-05-21', 67, 'Transwoman', 'College Level', 'Retired', 'Yes', 'No', 'Physical Disability', 'Grandchild', '2025-05-21 21:24:46'),
(326, 86, NULL, 'Daniel', NULL, 'Garcia', NULL, NULL, '09389097931', 'Others', 'Muslim', '2017-05-21', 8, 'Transwoman', 'Vocational', 'Teacher/Educator', 'Yes', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 21:24:46'),
(327, 86, NULL, 'Robert', NULL, 'Anderson', NULL, NULL, '09696032946', 'Widowed', 'Roman Catholic', '1981-05-21', 44, 'Male', 'Vocational', 'Student', 'No', 'No', 'None', 'Cousin', '2025-05-21 21:24:46'),
(328, 86, NULL, 'Michael', NULL, 'Garcia', NULL, NULL, '09428778095', 'Single', 'Others', '1983-05-21', 42, 'Transwoman', 'Elementary Graduate', 'Housekeeper', 'Yes', 'No', 'Speech Impairment', 'House Helper', '2025-05-21 21:24:46'),
(329, 86, NULL, 'Chris', NULL, 'Doe', NULL, NULL, '09174895132', 'Single', 'Born Again Christian', '1935-05-21', 90, 'Others', 'Elementary Graduate', 'Retired', 'No', 'No', 'Visual Impairment', 'None', '2025-05-21 21:24:46'),
(330, 86, NULL, 'Daniel', NULL, 'Anderson', NULL, NULL, '09192643645', 'Common Law/Live-in', 'Muslim', '2005-05-21', 20, 'Male', 'Post Graduate', 'Retired', 'No', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-21 21:24:46'),
(331, 87, NULL, 'Alice', NULL, 'Anderson', NULL, NULL, '09808724830', 'Common Law/Live-in', 'Buddhist', '1987-05-21', 38, 'Transwoman', 'Highschool Level', 'OFW', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 21:40:26'),
(332, 87, NULL, 'Jane', NULL, 'Williams', NULL, NULL, '09537188684', 'Divorced', 'Roman Catholic', '1970-05-21', 55, 'Transwoman', 'Vocational', 'Fisherfolk', 'Yes', 'No', 'Multiple Disabilities', 'Others', '2025-05-21 21:40:26'),
(333, 87, NULL, 'Daniel', NULL, 'Martinez', NULL, NULL, '09819945179', 'Divorced', 'Iglesia ni Cristo', '1951-05-21', 74, 'Prefer not to say', 'Elementary Graduate', 'OFW', 'Yes', 'No', 'Speech Impairment', 'Aunt/Uncle', '2025-05-21 21:40:26'),
(334, 87, NULL, 'Robert', NULL, 'Williams', NULL, NULL, '09385457335', 'Divorced', 'Atheist', '2006-05-21', 19, 'Female', 'Post Graduate', 'Labourer', 'No', 'No', 'Others', 'None', '2025-05-21 21:40:26'),
(335, 87, NULL, 'Chris', NULL, 'Anderson', NULL, NULL, '09117565689', 'Common Law/Live-in', 'Roman Catholic', '1963-05-21', 62, 'Non-binary', 'College Graduate', 'Business Owner', 'Yes', 'No', 'None', 'Spouse', '2025-05-21 21:40:26'),
(336, 88, NULL, 'Chris', NULL, 'Lopez', NULL, NULL, '09253248980', 'Widowed', 'Roman Catholic', '1969-05-21', 56, 'Male', 'Highschool Graduate', 'Others', 'Yes', 'No', 'None', 'Head of the Household', '2025-05-21 21:40:26'),
(337, 88, NULL, 'Sophia', NULL, 'Martinez', NULL, NULL, '09481759271', 'Common Law/Live-in', 'Atheist', '1940-05-21', 85, 'Transman', 'Post Graduate', 'Retired', 'Yes', 'No', 'Learning Disability', 'Grandparent', '2025-05-21 21:40:26'),
(338, 88, NULL, 'Michael', NULL, 'Smith', NULL, NULL, '09325991758', 'Separated', 'Muslim', '1983-05-21', 42, 'Non-binary', 'Highschool Level', 'Fisherfolk', 'No', 'No', 'Others', 'Spouse', '2025-05-21 21:40:26'),
(339, 88, NULL, 'Jane', NULL, 'Brown', NULL, NULL, '09315059740', 'Separated', 'Buddhist', '1972-05-21', 53, 'Non-binary', 'Highschool Graduate', 'None', 'Yes', 'No', 'Intellectual Disability', 'In-Law', '2025-05-21 21:40:26'),
(340, 88, NULL, 'Robert', NULL, 'Brown', NULL, NULL, '09344951832', 'Separated', 'Atheist', '1967-05-21', 58, 'Female', 'Elementary Level', 'Retired', 'No', 'No', 'Speech Impairment', 'Parent', '2025-05-21 21:40:26'),
(341, 89, NULL, 'Alice', NULL, 'Williams', NULL, NULL, '09815650907', 'Divorced', 'Iglesia ni Cristo', '2010-05-21', 15, 'Female', 'College Level', 'Security Personnel', 'Yes', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 21:40:26'),
(342, 89, NULL, 'Alice', NULL, 'Williams', NULL, NULL, '09856883541', 'Widowed', 'Muslim', '2020-05-21', 5, 'Male', 'Highschool Level', 'Driver', 'Yes', 'No', 'Learning Disability', 'Relative', '2025-05-21 21:40:26'),
(343, 89, NULL, 'Jane', NULL, 'Rodriguez', NULL, NULL, '09855167625', 'Widowed', 'Muslim', '2019-05-21', 6, 'Transwoman', 'Highschool Graduate', 'Student', 'No', 'No', 'Physical Disability', 'Sibling', '2025-05-21 21:40:26'),
(344, 89, NULL, 'Daniel', NULL, 'Garcia', NULL, NULL, '09362558490', 'Common Law/Live-in', 'Born Again Christian', '2018-05-21', 7, 'Others', 'College Level', 'Farmer', 'No', 'No', 'None', 'Grandparent', '2025-05-21 21:40:26'),
(345, 89, NULL, 'Emily', NULL, 'Doe', NULL, NULL, '09890336547', 'Common Law/Live-in', 'Atheist', '1981-05-21', 44, 'Male', 'Elementary Level', 'OFW', 'Yes', 'No', 'Multiple Disabilities', 'Boarder', '2025-05-21 21:40:26'),
(346, 90, NULL, 'Daniel', NULL, 'Doe', NULL, NULL, '09148864913', 'Widowed', 'Buddhist', '2008-05-21', 17, 'Transwoman', 'None', 'Driver', 'No', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 21:40:26'),
(347, 90, NULL, 'John', NULL, 'Johnson', NULL, NULL, '09348661725', 'Divorced', 'Roman Catholic', '1963-05-21', 62, 'Others', 'Vocational', 'Fisherfolk', 'No', 'No', 'Speech Impairment', 'Aunt/Uncle', '2025-05-21 21:40:26'),
(348, 90, NULL, 'Sophia', NULL, 'Garcia', NULL, NULL, '09822120534', 'Common Law/Live-in', 'Born Again Christian', '1992-05-21', 33, 'Transwoman', 'College Level', 'Housekeeper', 'No', 'No', 'Physical Disability', 'Parent', '2025-05-21 21:40:26'),
(349, 90, NULL, 'Sophia', NULL, 'Lopez', NULL, NULL, '09900646601', 'Widowed', 'Roman Catholic', '1949-05-21', 76, 'Transwoman', 'Others', 'Private Employee', 'No', 'No', 'Speech Impairment', 'Aunt/Uncle', '2025-05-21 21:40:26'),
(350, 90, NULL, 'David', NULL, 'Anderson', NULL, NULL, '09807564334', 'Married', 'Born Again Christian', '1930-05-21', 95, 'Female', 'Elementary Graduate', 'Labourer', 'Yes', 'No', 'Hearing Impairment', 'Grandchild', '2025-05-21 21:40:26'),
(351, 91, NULL, 'Jane', NULL, 'Rodriguez', NULL, NULL, '09863774756', 'Common Law/Live-in', 'Buddhist', '1963-05-21', 62, 'Male', 'Vocational', 'Student', 'Yes', 'No', 'Physical Disability', 'Head of the Household', '2025-05-21 21:40:26'),
(352, 91, NULL, 'Alice', NULL, 'Smith', NULL, NULL, '09184776856', 'Separated', 'Buddhist', '1946-05-21', 79, 'Prefer not to say', 'Post Graduate', 'Security Personnel', 'No', 'No', 'Learning Disability', 'In-Law', '2025-05-21 21:40:26'),
(353, 91, NULL, 'Sophia', NULL, 'Johnson', NULL, NULL, '09188923751', 'Others', 'Roman Catholic', '2019-05-21', 6, 'Transman', 'None', 'Retired', 'Yes', 'No', 'Physical Disability', 'Child', '2025-05-21 21:40:26'),
(354, 91, NULL, 'John', NULL, 'Doe', NULL, NULL, '09415091490', 'Divorced', 'Buddhist', '2009-05-21', 16, 'Non-binary', 'Vocational', 'Self Employed', 'Yes', 'No', 'Visual Impairment', 'Grandparent', '2025-05-21 21:40:26'),
(355, 91, NULL, 'Emily', NULL, 'Rodriguez', NULL, NULL, '09691443517', 'Common Law/Live-in', 'Born Again Christian', '1998-05-21', 27, 'Transman', 'Others', 'Business Owner', 'Yes', 'No', 'Others', 'Grandparent', '2025-05-21 21:40:26'),
(356, 92, NULL, 'Michael', NULL, 'Williams', NULL, NULL, '09882419707', 'Others', 'Buddhist', '2002-05-21', 23, 'Others', 'College Level', 'Housewife', 'Yes', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 21:40:26'),
(357, 92, NULL, 'David', NULL, 'Lopez', NULL, NULL, '09174991286', 'Single', 'Buddhist', '2001-05-21', 24, 'Male', 'Others', 'Farmer', 'No', 'No', 'Multiple Disabilities', 'Cousin', '2025-05-21 21:40:26'),
(358, 92, NULL, 'Daniel', NULL, 'Doe', NULL, NULL, '09899293837', 'Widowed', 'Buddhist', '1945-05-21', 80, 'Transman', 'Elementary Level', 'Farmer', 'No', 'No', 'Intellectual Disability', 'Relative', '2025-05-21 21:40:26'),
(359, 92, NULL, 'Robert', NULL, 'Garcia', NULL, NULL, '09667904979', 'Single', 'Atheist', '1944-05-21', 81, 'Others', 'Elementary Level', 'Self Employed', 'No', 'No', 'Speech Impairment', 'Grandchild', '2025-05-21 21:40:26'),
(360, 92, NULL, 'Jane', NULL, 'Doe', NULL, NULL, '09870429826', 'Separated', 'Roman Catholic', '2005-05-21', 20, 'Others', 'None', 'Security Personnel', 'No', 'No', 'Others', 'Sibling', '2025-05-21 21:40:26'),
(361, 93, NULL, 'Daniel', NULL, 'Williams', NULL, NULL, '09925688873', 'Others', 'Buddhist', '1981-05-21', 44, 'Non-binary', 'College Graduate', 'Business Owner', 'No', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 21:40:26'),
(362, 93, NULL, 'Daniel', NULL, 'Lopez', NULL, NULL, '09725943752', 'Married', 'Muslim', '2015-05-21', 10, 'Female', 'Others', 'Technician/Mechanic', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 21:40:26'),
(363, 93, NULL, 'John', NULL, 'Williams', NULL, NULL, '09263780040', 'Single', 'Atheist', '1989-05-21', 36, 'Non-binary', 'Highschool Graduate', 'Technician/Mechanic', 'Yes', 'No', 'Learning Disability', 'Aunt/Uncle', '2025-05-21 21:40:26'),
(364, 93, NULL, 'Jane', NULL, 'Smith', NULL, NULL, '09957587582', 'Common Law/Live-in', 'Iglesia ni Cristo', '1940-05-21', 85, 'Transwoman', 'College Level', 'Vendor', 'Yes', 'No', 'Multiple Disabilities', 'Grandchild', '2025-05-21 21:40:26'),
(365, 93, NULL, 'Daniel', NULL, 'Smith', NULL, NULL, '09265695661', 'Married', 'Roman Catholic', '1993-05-21', 32, 'Non-binary', 'Elementary Level', 'Housewife', 'Yes', 'No', 'Learning Disability', 'Spouse', '2025-05-21 21:40:26'),
(366, 94, NULL, 'Jane', NULL, 'Garcia', NULL, NULL, '09186172767', 'Others', 'Born Again Christian', '1964-05-21', 61, 'Transwoman', 'Post Graduate', 'Others', 'No', 'No', 'None', 'Head of the Household', '2025-05-21 21:40:26'),
(367, 94, NULL, 'Jane', NULL, 'Johnson', NULL, NULL, '09840982156', 'Single', 'Born Again Christian', '1938-05-21', 87, 'Female', 'Elementary Level', 'Self Employed', 'No', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-21 21:40:26'),
(368, 94, NULL, 'Jane', NULL, 'Anderson', NULL, NULL, '09834233219', 'Separated', 'Muslim', '1960-05-21', 65, 'Transwoman', 'Vocational', 'Student', 'Yes', 'No', 'Intellectual Disability', 'Cousin', '2025-05-21 21:40:26'),
(369, 94, NULL, 'Emily', NULL, 'Johnson', NULL, NULL, '09980059301', 'Divorced', 'Others', '1977-05-21', 48, 'Non-binary', 'Others', 'Driver', 'Yes', 'No', 'None', 'Aunt/Uncle', '2025-05-21 21:40:26'),
(370, 94, NULL, 'David', NULL, 'Garcia', NULL, NULL, '09485049311', 'Married', 'Iglesia ni Cristo', '2010-05-21', 15, 'Non-binary', 'Highschool Graduate', 'Business Owner', 'No', 'No', 'Hearing Impairment', 'In-Law', '2025-05-21 21:40:26'),
(371, 95, NULL, 'David', NULL, 'Smith', NULL, NULL, '09549398095', 'Others', 'Roman Catholic', '1985-05-21', 40, 'Non-binary', 'Elementary Level', 'Security Personnel', 'Yes', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-21 21:40:26'),
(372, 95, NULL, 'David', NULL, 'Smith', NULL, NULL, '09346028815', 'Married', 'Buddhist', '1984-05-21', 41, 'Transwoman', 'Highschool Graduate', 'Security Personnel', 'No', 'No', 'Physical Disability', 'In-Law', '2025-05-21 21:40:26'),
(373, 95, NULL, 'David', NULL, 'Smith', NULL, NULL, '09380151023', 'Married', 'Born Again Christian', '1991-05-21', 34, 'Non-binary', 'Others', 'Driver', 'No', 'No', 'None', 'Cousin', '2025-05-21 21:40:26'),
(374, 95, NULL, 'Daniel', NULL, 'Martinez', NULL, NULL, '09844552338', 'Separated', 'Roman Catholic', '1972-05-21', 53, 'Female', 'Post Graduate', 'Gov\'t. Employee', 'Yes', 'No', 'Learning Disability', 'Spouse', '2025-05-21 21:40:26'),
(375, 95, NULL, 'Jane', NULL, 'Doe', NULL, NULL, '09113686781', 'Divorced', 'Iglesia ni Cristo', '1946-05-21', 79, 'Transman', 'Others', 'Gov\'t. Employee', 'No', 'No', 'Learning Disability', 'In-Law', '2025-05-21 21:40:26'),
(376, 96, NULL, 'Jane', NULL, 'Johnson', NULL, NULL, '09489761354', 'Divorced', 'Atheist', '1928-05-21', 97, 'Prefer not to say', 'Highschool Level', 'Self Employed', 'Yes', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-21 21:40:26'),
(377, 96, NULL, 'Michael', NULL, 'Doe', NULL, NULL, '09501146618', 'Common Law/Live-in', 'Iglesia ni Cristo', '1927-05-21', 98, 'Male', 'Highschool Graduate', 'Retired', 'No', 'No', 'Physical Disability', 'Non-Relative', '2025-05-21 21:40:26'),
(378, 96, NULL, 'Michael', NULL, 'Anderson', NULL, NULL, '09739343085', 'Divorced', 'Atheist', '1985-05-21', 40, 'Transwoman', 'Others', 'Housewife', 'Yes', 'No', 'Hearing Impairment', 'Relative', '2025-05-21 21:40:26'),
(379, 96, NULL, 'Robert', NULL, 'Lopez', NULL, NULL, '09605379044', 'Common Law/Live-in', 'Muslim', '1993-05-21', 32, 'Transwoman', 'Post Graduate', 'Private Employee', 'Yes', 'No', 'Speech Impairment', 'House Helper', '2025-05-21 21:40:26'),
(380, 96, NULL, 'John', NULL, 'Martinez', NULL, NULL, '09119158001', 'Divorced', 'Atheist', '1954-05-21', 71, 'Female', 'Others', 'Housewife', 'Yes', 'No', 'Physical Disability', 'In-Law', '2025-05-21 21:40:26'),
(381, 97, NULL, 'Michael', NULL, 'Johnson', NULL, NULL, '09859423750', 'Separated', 'Roman Catholic', '1999-05-21', 26, 'Male', 'College Graduate', 'Gov\'t. Employee', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 21:40:29'),
(382, 97, NULL, 'Emily', NULL, 'Brown', NULL, NULL, '09622205003', 'Divorced', 'Iglesia ni Cristo', '2011-05-21', 14, 'Male', 'College Graduate', 'Private Employee', 'No', 'No', 'Others', 'Child', '2025-05-21 21:40:29'),
(383, 98, NULL, 'Robert', NULL, 'Garcia', NULL, NULL, '09781424378', 'Common Law/Live-in', 'Born Again Christian', '1963-05-21', 62, 'Non-binary', 'Post Graduate', 'Farmer', 'Yes', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 21:40:29'),
(384, 98, NULL, 'Jane', NULL, 'Garcia', NULL, NULL, '09415818675', 'Married', 'Atheist', '1981-05-21', 44, 'Non-binary', 'Highschool Level', 'Private Employee', 'No', 'No', 'Speech Impairment', 'Non-Relative', '2025-05-21 21:40:29'),
(385, 99, 'http://localhost/BFEPS-BDRRMC-main/BFEPS-BDRRMC-main/api/profiling/uploads/1747904756_Untitled_design_(5).png', 'Roberts', '', 'Lopez', '', '', '09783124190', 'Single', 'Muslim', '1986-05-21', 39, 'Female', 'Others', 'Health Worker', 'Yes', 'Yes', 'Intellectual Disability', 'Head of the Household', '2025-05-22 09:06:24'),
(386, 99, 'http://localhost/BFEPS-BDRRMC-main/BFEPS-BDRRMC-main/api/profiling/uploads/1747904776_1.png', 'Alice', '', 'Lopez', '', '', '09345035761', 'Common Law/Live-in', 'Roman Catholic', '1949-05-21', 76, 'Transman', 'Vocational', 'Technician/Mechanic', 'No', 'No', 'Others', 'In-Law', '2025-05-22 09:06:24'),
(387, 100, NULL, 'Alice', NULL, 'Brown', NULL, NULL, '09879082932', 'Others', 'Born Again Christian', '2021-05-21', 4, 'Male', 'Highschool Level', 'Vendor', 'No', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 21:40:29'),
(388, 100, NULL, 'Robert', NULL, 'Martinez', NULL, NULL, '09974119079', 'Divorced', 'Others', '1998-05-21', 27, 'Male', 'Elementary Graduate', 'Student', 'Yes', 'No', 'Others', 'Cousin', '2025-05-21 21:40:29'),
(389, 101, NULL, 'Robert', NULL, 'Doe', NULL, NULL, '09331462832', 'Widowed', 'Others', '1995-05-21', 30, 'Transwoman', 'None', 'Private Employee', 'No', 'No', 'None', 'Head of the Household', '2025-05-21 21:40:29'),
(390, 101, NULL, 'Daniel', NULL, 'Johnson', NULL, NULL, '09957218907', 'Widowed', 'Muslim', '1936-05-21', 89, 'Transwoman', 'College Graduate', 'Gov\'t. Employee', 'No', 'No', 'Visual Impairment', 'Parent', '2025-05-21 21:40:29'),
(391, 102, NULL, 'David', NULL, 'Martinez', NULL, NULL, '09976587750', 'Separated', 'Atheist', '1999-05-21', 26, 'Prefer not to say', 'Highschool Graduate', 'Vendor', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 21:40:29'),
(392, 102, NULL, 'Emily', NULL, 'Anderson', NULL, NULL, '09169341550', 'Married', 'Iglesia ni Cristo', '2016-05-21', 9, 'Transman', 'Others', 'Self Employed', 'Yes', 'No', 'Learning Disability', 'In-Law', '2025-05-21 21:40:29'),
(393, 103, NULL, 'Sophia', NULL, 'Garcia', NULL, NULL, '09796715921', 'Others', 'Others', '2012-05-21', 13, 'Prefer not to say', 'College Graduate', 'Security Personnel', 'No', 'No', 'Intellectual Disability', 'Head of the Household', '2025-05-21 21:40:29'),
(394, 103, NULL, 'Sophia', NULL, 'Anderson', NULL, NULL, '09681235178', 'Married', 'Born Again Christian', '1956-05-21', 69, 'Prefer not to say', 'Vocational', 'Housekeeper', 'No', 'No', 'None', 'Boarder', '2025-05-21 21:40:29'),
(395, 104, NULL, 'Emily', NULL, 'Brown', NULL, NULL, '09955928240', 'Single', 'Muslim', '2015-05-21', 10, 'Female', 'Highschool Level', 'Private Employee', 'No', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 21:40:29'),
(396, 104, NULL, 'John', NULL, 'Doe', NULL, NULL, '09556371852', 'Divorced', 'Buddhist', '1996-05-21', 29, 'Non-binary', 'College Level', 'Labourer', 'No', 'No', 'Physical Disability', 'Head of the Household', '2025-05-21 21:40:29'),
(397, 105, NULL, 'Michael', NULL, 'Anderson', NULL, NULL, '09956336526', 'Others', 'Buddhist', '1932-05-21', 93, 'Male', 'Highschool Level', 'Others', 'No', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 21:40:29'),
(398, 105, NULL, 'Michael', NULL, 'Smith', NULL, NULL, '09929234531', 'Widowed', 'Buddhist', '1988-05-21', 37, 'Non-binary', 'Highschool Level', 'None', 'Yes', 'No', 'Learning Disability', 'Spouse', '2025-05-21 21:40:29'),
(399, 106, NULL, 'Emily', NULL, 'Doe', NULL, NULL, '09620668052', 'Separated', 'Born Again Christian', '1943-05-21', 82, 'Female', 'Highschool Level', 'Others', 'Yes', 'No', 'Psychosocial Disability', 'Head of the Household', '2025-05-21 21:40:29');
INSERT INTO `residents` (`id`, `household_id`, `profile_picture`, `first_name`, `middle_name`, `last_name`, `suffix`, `alias`, `contact_number`, `civil_status`, `religion`, `birth_date`, `age`, `gender`, `education`, `occupation`, `beneficiary`, `pregnant`, `disability`, `household_type`, `update_at`) VALUES
(400, 106, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09700822123', 'Others', 'Atheist', '1962-05-21', 63, 'Transwoman', 'Vocational', 'Business Owner', 'No', 'No', 'Physical Disability', 'Head of the Household', '2025-05-21 21:40:29'),
(401, 107, NULL, 'Daniel', NULL, 'Johnson', NULL, NULL, '09553789193', 'Married', 'Muslim', '1975-05-22', 50, 'Male', 'Elementary Graduate', 'Private Employee', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 22:04:15'),
(402, 107, NULL, 'David', NULL, 'Rodriguez', NULL, NULL, '09490936910', 'Common Law/Live-in', 'Iglesia ni Cristo', '1966-05-22', 59, 'Male', 'Others', 'Business Owner', 'Yes', 'No', 'Psychosocial Disability', 'Boarder', '2025-05-21 22:04:15'),
(403, 107, NULL, 'Robert', NULL, 'Doe', NULL, NULL, '09841086287', 'Common Law/Live-in', 'Buddhist', '1972-05-22', 53, 'Prefer not to say', 'Elementary Level', 'Security Personnel', 'Yes', 'No', 'Learning Disability', 'None', '2025-05-21 22:04:15'),
(404, 107, NULL, 'Jane', NULL, 'Martinez', NULL, NULL, '09148758451', 'Widowed', 'Buddhist', '1988-05-22', 37, 'Transwoman', 'Highschool Level', 'Private Employee', 'No', 'No', 'Physical Disability', 'In-Law', '2025-05-21 22:04:15'),
(405, 108, NULL, 'David', NULL, 'Garcia', NULL, NULL, '09567960340', 'Others', 'Muslim', '1948-05-22', 77, 'Transwoman', 'Highschool Level', 'Technician/Mechanic', 'No', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 22:04:15'),
(406, 108, NULL, 'Daniel', NULL, 'Martinez', NULL, NULL, '09806681544', 'Widowed', 'Buddhist', '1974-05-22', 51, 'Male', 'College Graduate', 'Health Worker', 'No', 'No', 'None', 'Sibling', '2025-05-21 22:04:15'),
(407, 108, NULL, 'John', NULL, 'Brown', NULL, NULL, '09672709310', 'Divorced', 'Roman Catholic', '2024-05-22', 1, 'Others', 'College Graduate', 'Housekeeper', 'No', 'No', 'Speech Impairment', 'House Helper', '2025-05-21 22:04:15'),
(408, 108, NULL, 'John', NULL, 'Brown', NULL, NULL, '09658256410', 'Divorced', 'Buddhist', '1995-05-22', 30, 'Non-binary', 'Vocational', 'Labourer', 'No', 'No', 'None', 'Head of the Household', '2025-05-21 22:04:15'),
(409, 109, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09715670705', 'Divorced', 'Buddhist', '2024-05-22', 1, 'Non-binary', 'Post Graduate', 'Labourer', 'Yes', 'No', 'Hearing Impairment', 'Head of the Household', '2025-05-21 22:04:15'),
(410, 109, NULL, 'Emily', NULL, 'Williams', NULL, NULL, '09837475855', 'Divorced', 'Others', '2007-05-22', 18, 'Prefer not to say', 'College Graduate', 'Business Owner', 'No', 'No', 'Hearing Impairment', 'Relative', '2025-05-21 22:04:15'),
(411, 109, NULL, 'David', NULL, 'Anderson', NULL, NULL, '09870674538', 'Separated', 'Buddhist', '1955-05-22', 70, 'Male', 'Vocational', 'Student', 'Yes', 'No', 'Intellectual Disability', 'Sibling', '2025-05-21 22:04:15'),
(412, 109, NULL, 'Robert', NULL, 'Lopez', NULL, NULL, '09953726711', 'Separated', 'Atheist', '2008-05-22', 17, 'Female', 'Highschool Graduate', 'Technician/Mechanic', 'Yes', 'No', 'Multiple Disabilities', 'Parent', '2025-05-21 22:04:15'),
(413, 110, NULL, 'Jane', NULL, 'Williams', NULL, NULL, '09712835340', 'Separated', 'Atheist', '1943-05-22', 82, 'Non-binary', 'College Level', 'Housekeeper', 'No', 'No', 'Visual Impairment', 'Head of the Household', '2025-05-21 22:04:15'),
(414, 110, NULL, 'Daniel', NULL, 'Garcia', NULL, NULL, '09663628589', 'Divorced', 'Roman Catholic', '1935-05-22', 90, 'Transwoman', 'Elementary Level', 'Fisherfolk', 'No', 'No', 'Physical Disability', 'Relative', '2025-05-21 22:04:15'),
(415, 110, NULL, 'Emily', NULL, 'Smith', NULL, NULL, '09825778571', 'Common Law/Live-in', 'Buddhist', '1949-05-22', 76, 'Female', 'Elementary Graduate', 'Fisherfolk', 'No', 'No', 'Visual Impairment', 'Grandparent', '2025-05-21 22:04:15'),
(416, 110, NULL, 'Chris', NULL, 'Williams', NULL, NULL, '09211300332', 'Others', 'Atheist', '2016-05-22', 9, 'Others', 'Highschool Graduate', 'Housekeeper', 'Yes', 'No', 'Hearing Impairment', 'Child', '2025-05-21 22:04:15'),
(417, 111, NULL, 'Sophia', NULL, 'Williams', NULL, NULL, '09723273889', 'Married', 'Roman Catholic', '1957-05-22', 68, 'Non-binary', 'None', 'Driver', 'Yes', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 22:04:15'),
(418, 111, NULL, 'Sophia', NULL, 'Rodriguez', NULL, NULL, '09296069840', 'Others', 'Born Again Christian', '2006-05-22', 19, 'Non-binary', 'Post Graduate', 'Gov\'t. Employee', 'No', 'No', 'Visual Impairment', 'Cousin', '2025-05-21 22:04:15'),
(419, 111, NULL, 'Sophia', NULL, 'Doe', NULL, NULL, '09859608792', 'Divorced', 'Buddhist', '1940-05-22', 85, 'Female', 'None', 'OFW', 'No', 'No', 'Visual Impairment', 'Relative', '2025-05-21 22:04:15'),
(420, 111, NULL, 'Emily', NULL, 'Anderson', NULL, NULL, '09735194815', 'Single', 'Muslim', '1977-05-22', 48, 'Others', 'Elementary Graduate', 'Teacher/Educator', 'Yes', 'No', 'Learning Disability', 'Others', '2025-05-21 22:04:15'),
(421, 112, NULL, 'Alice', NULL, 'Garcia', NULL, NULL, '09979524266', 'Divorced', 'Atheist', '2021-05-22', 4, 'Transman', 'Elementary Level', 'Vendor', 'No', 'No', 'Others', 'Head of the Household', '2025-05-21 22:04:15'),
(422, 112, NULL, 'Jane', NULL, 'Lopez', NULL, NULL, '09429526168', 'Divorced', 'Buddhist', '1941-05-22', 84, 'Prefer not to say', 'Elementary Graduate', 'Student', 'No', 'No', 'Multiple Disabilities', 'Cousin', '2025-05-21 22:04:15'),
(423, 112, NULL, 'Jane', NULL, 'Lopez', NULL, NULL, '09337734834', 'Single', 'Muslim', '2002-05-22', 23, 'Others', 'College Level', 'Others', 'Yes', 'No', 'Hearing Impairment', 'Sibling', '2025-05-21 22:04:15'),
(424, 112, NULL, 'John', NULL, 'Smith', NULL, NULL, '09985946133', 'Widowed', 'Others', '2018-05-22', 7, 'Female', 'Others', 'Self Employed', 'Yes', 'No', 'None', 'Non-Relative', '2025-05-21 22:04:15'),
(425, 113, NULL, 'John', NULL, 'Johnson', NULL, NULL, '09440018206', 'Divorced', 'Buddhist', '1926-05-22', 99, 'Male', 'Highschool Graduate', 'Driver', 'Yes', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 22:04:15'),
(426, 113, NULL, 'Chris', NULL, 'Smith', NULL, NULL, '09160645610', 'Divorced', 'Muslim', '1964-05-22', 61, 'Others', 'Elementary Graduate', 'Labourer', 'No', 'No', 'Intellectual Disability', 'Child', '2025-05-21 22:04:15'),
(427, 113, NULL, 'Emily', NULL, 'Williams', NULL, NULL, '09327537766', 'Single', 'Buddhist', '1957-05-22', 68, 'Non-binary', 'Elementary Level', 'Self Employed', 'No', 'No', 'Others', 'Boarder', '2025-05-21 22:04:15'),
(428, 113, NULL, 'Michael', NULL, 'Doe', NULL, NULL, '09196173847', 'Common Law/Live-in', 'Born Again Christian', '1982-05-22', 43, 'Prefer not to say', 'Highschool Level', 'Vendor', 'Yes', 'No', 'Physical Disability', 'Spouse', '2025-05-21 22:04:15'),
(429, 114, NULL, 'John', NULL, 'Williams', NULL, NULL, '09710775605', 'Single', 'Born Again Christian', '1986-05-22', 39, 'Non-binary', 'Others', 'Private Employee', 'No', 'No', 'Speech Impairment', 'Head of the Household', '2025-05-21 22:04:15'),
(430, 114, NULL, 'Sophia', NULL, 'Rodriguez', NULL, NULL, '09809789433', 'Divorced', 'Iglesia ni Cristo', '1971-05-22', 54, 'Others', 'Vocational', 'OFW', 'No', 'No', 'Visual Impairment', 'Cousin', '2025-05-21 22:04:15'),
(431, 114, NULL, 'Michael', NULL, 'Williams', NULL, NULL, '09165476391', 'Divorced', 'Muslim', '1970-05-22', 55, 'Transman', 'Elementary Graduate', 'Housewife', 'No', 'No', 'Psychosocial Disability', 'Sibling', '2025-05-21 22:04:15'),
(432, 114, NULL, 'Michael', NULL, 'Lopez', NULL, NULL, '09708311322', 'Married', 'Buddhist', '1971-05-22', 54, 'Prefer not to say', 'Post Graduate', 'Labourer', 'No', 'No', 'Intellectual Disability', 'Cousin', '2025-05-21 22:04:15'),
(433, 115, NULL, 'Alice', NULL, 'Doe', NULL, NULL, '09539466734', 'Common Law/Live-in', 'Atheist', '1943-05-22', 82, 'Male', 'College Level', 'Farmer', 'No', 'No', 'Multiple Disabilities', 'Head of the Household', '2025-05-21 22:04:16'),
(434, 115, NULL, 'Daniel', NULL, 'Johnson', NULL, NULL, '09654104841', 'Others', 'Iglesia ni Cristo', '2012-05-22', 13, 'Transman', 'Highschool Graduate', 'Retired', 'Yes', 'No', 'Psychosocial Disability', 'Head of the Household', '2025-05-21 22:04:16'),
(435, 115, NULL, 'Alice', NULL, 'Rodriguez', NULL, NULL, '09740499304', 'Widowed', 'Buddhist', '1943-05-22', 82, 'Transman', 'Vocational', 'None', 'No', 'No', 'Hearing Impairment', 'None', '2025-05-21 22:04:16'),
(436, 115, NULL, 'Jane', NULL, 'Rodriguez', NULL, NULL, '09967786795', 'Widowed', 'Atheist', '1961-05-22', 64, 'Male', 'Vocational', 'Business Owner', 'Yes', 'No', 'Visual Impairment', 'In-Law', '2025-05-21 22:04:16'),
(437, 116, NULL, 'Chris', NULL, 'Lopez', NULL, NULL, '09774634362', 'Divorced', 'Born Again Christian', '1970-05-22', 55, 'Others', 'Highschool Graduate', 'Farmer', 'No', 'No', 'Learning Disability', 'Head of the Household', '2025-05-21 22:04:16'),
(438, 116, NULL, 'Michael', NULL, 'Anderson', NULL, NULL, '09871695787', 'Common Law/Live-in', 'Muslim', '1938-05-22', 87, 'Male', 'Vocational', 'OFW', 'Yes', 'No', 'Hearing Impairment', 'Parent', '2025-05-21 22:04:16'),
(439, 116, NULL, 'Michael', NULL, 'Doe', NULL, NULL, '09203572230', 'Common Law/Live-in', 'Born Again Christian', '1951-05-22', 74, 'Non-binary', 'College Level', 'Driver', 'Yes', 'No', 'Psychosocial Disability', 'Parent', '2025-05-21 22:04:16'),
(440, 116, NULL, 'Robert', NULL, 'Williams', NULL, NULL, '09121750867', 'Widowed', 'Others', '1988-05-22', 37, 'Transman', 'Elementary Level', 'Retired', 'No', 'No', 'Multiple Disabilities', 'Others', '2025-05-21 22:04:16'),
(441, 117, 'http://localhost/BFEPS-BDRRMC-MAIN/api/profiling/uploads/1747886496_WIN_20250205_22_29_30_Pro.jpg', 'Asff', 'Asdsa', 'Sada', 'Sdas', 'Da', '09099939193', 'Single', 'Roman Catholic', '1970-05-22', 55, 'Female', 'Elementary Level', 'Business Owner', 'Yes', 'Yes', 'Visual Impairment', 'Head of the Household', '2025-05-22 04:02:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `households`
--
ALTER TABLE `households`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `household_id` (`household_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `households`
--
ALTER TABLE `households`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `residents`
--
ALTER TABLE `residents`
  ADD CONSTRAINT `residents_ibfk_1` FOREIGN KEY (`household_id`) REFERENCES `households` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
