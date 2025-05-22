-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 03:14 PM
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
-- Database: `riskassessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `flood_update`
--

CREATE TABLE `flood_update` (
  `id` int(11) NOT NULL,
  `household_zone` varchar(50) NOT NULL,
  `flood_level` varchar(255) NOT NULL,
  `flood_depth` decimal(5,2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `notes` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flood_update`
--

INSERT INTO `flood_update` (`id`, `household_zone`, `flood_level`, `flood_depth`, `unit`, `notes`, `image_path`, `created_at`) VALUES
(2, 'Zone 2', 'Warning', 4.00, '', 'dsadaas', NULL, '2025-05-22 09:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `risk_assessment`
--

CREATE TABLE `risk_assessment` (
  `id` int(11) NOT NULL,
  `household_zone` varchar(50) NOT NULL,
  `risk_type` varchar(50) NOT NULL,
  `household_head_name` varchar(255) NOT NULL,
  `risk_description` text NOT NULL,
  `num_of_pwd` int(11) NOT NULL,
  `num_of_senior` int(11) NOT NULL,
  `num_of_infant_toddler` int(11) NOT NULL,
  `num_of_flood_fatality` int(11) NOT NULL,
  `num_of_property_damage` int(11) NOT NULL,
  `damage_description` text NOT NULL,
  `impacted_remarks` text NOT NULL,
  `risk_impact_level` varchar(50) NOT NULL,
  `risk_probability_level` varchar(50) NOT NULL,
  `risk_severity_level` varchar(50) NOT NULL,
  `current_control_measures` text NOT NULL,
  `option_action` varchar(50) NOT NULL,
  `action_remarks` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `risk_assessment`
--

INSERT INTO `risk_assessment` (`id`, `household_zone`, `risk_type`, `household_head_name`, `risk_description`, `num_of_pwd`, `num_of_senior`, `num_of_infant_toddler`, `num_of_flood_fatality`, `num_of_property_damage`, `damage_description`, `impacted_remarks`, `risk_impact_level`, `risk_probability_level`, `risk_severity_level`, `current_control_measures`, `option_action`, `action_remarks`, `created_at`) VALUES
(2, 'Zone 2', 'Flood Risk', 'Dsadada', 'sdsadd', 2, 0, 2, 0, 0, 'dsadsa', 'dsadsasd', 'Not Significant', 'Rare', 'LOW/MED', 'dsdad', 'Yes', 'dsadadada', '2025-05-22 09:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `situational_report`
--

CREATE TABLE `situational_report` (
  `id` int(11) NOT NULL,
  `calamity_name` varchar(255) NOT NULL,
  `situation_overview` text NOT NULL,
  `response_actions` text NOT NULL,
  `immediate_needs` text NOT NULL,
  `recommendations_needs` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `situational_report`
--

INSERT INTO `situational_report` (`id`, `calamity_name`, `situation_overview`, `response_actions`, `immediate_needs`, `recommendations_needs`, `created_at`) VALUES
(2, 'Fff', 'fff', 'ff', 'fff', 'fff', '2025-05-22 09:32:15'),
(3, 'Mmm', 'mmmm', 'mm', 'mmm', 'mmmm', '2025-05-22 09:33:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flood_update`
--
ALTER TABLE `flood_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `risk_assessment`
--
ALTER TABLE `risk_assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `situational_report`
--
ALTER TABLE `situational_report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flood_update`
--
ALTER TABLE `flood_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `risk_assessment`
--
ALTER TABLE `risk_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `situational_report`
--
ALTER TABLE `situational_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
