-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 03:12 PM
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
-- Database: `evacuation`
--

-- --------------------------------------------------------

--
-- Table structure for table `calamity`
--

CREATE TABLE `calamity` (
  `id` bigint(20) NOT NULL,
  `calamity_type` varchar(255) DEFAULT NULL,
  `severity_level` varchar(255) NOT NULL,
  `flood_cause` varchar(255) DEFAULT NULL,
  `alert_level` varchar(255) DEFAULT NULL,
  `current_status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `calamity_name` varchar(255) NOT NULL,
  `calamity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calamity`
--

INSERT INTO `calamity` (`id`, `calamity_type`, `severity_level`, `flood_cause`, `alert_level`, `current_status`, `date`, `created_at`, `updated_at`, `calamity_name`, `calamity_id`) VALUES
(2, 'Typhoon', 'Moderate Flooding', 'River Overflow', 'Pre Evacuation', 'Resolved', '2025-03-27 04:18:00', '2025-03-22 16:18:28', '2025-03-23 15:08:11', 'Twotestt', NULL),
(3, 'Flood', 'Minor Flooding', 'Heavy Rainfall', 'Pre Evacuation', 'Ongoing', '2025-03-19 05:27:00', '2025-03-24 12:27:59', '2025-03-24 13:29:50', 'Morerere', NULL),
(4, 'Flood', 'Minor Flooding', 'Heavy Rainfall', 'Pre Evacuation', 'Ongoing', '2025-05-09 09:58:00', '2025-05-09 13:58:34', '2025-05-09 13:58:34', 'Etetert', NULL),
(5, 'Typhoon', 'Major Flooding', 'Heavy Rainfall', 'Mandatory Evacuation', 'Under Control', '2025-05-17 06:24:00', '2025-05-17 10:25:12', '2025-05-22 07:57:10', 'Maria', NULL),
(7, 'Typhoon', 'Major Flooding', 'Heavy Rainfall', 'Mandatory Evacuation', 'Resolved', '2025-05-21 08:29:00', '2025-05-17 10:29:27', '2025-05-17 11:54:18', 'Kendra', NULL),
(8, 'Typhoon', 'Major Flooding', 'Heavy Rainfall', 'Mandatory Evacuation', 'Ongoing', '2025-05-28 09:33:00', '2025-05-17 10:34:03', '2025-05-17 10:34:03', 'Willy', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `evacuation_centers`
--

CREATE TABLE `evacuation_centers` (
  `id` bigint(20) NOT NULL,
  `evacuation_centername` varchar(255) DEFAULT NULL,
  `zone` varchar(255) NOT NULL,
  `evacuation_type` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `calamity_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `calamity_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evacuation_centers`
--

INSERT INTO `evacuation_centers` (`id`, `evacuation_centername`, `zone`, `evacuation_type`, `contact_person`, `contact_number`, `calamity_id`, `created_at`, `updated_at`, `calamity_name`) VALUES
(1, 'Barangay Hall', '1', 'Public Evacuation Center', 'Site Manager 1', '121324324', NULL, '2025-04-27 02:40:49', '2025-04-27 02:40:49', NULL),
(2, 'Residence', '2', 'Private Evacuation Center', 'Site Manager 2', '1243214234234', NULL, '2025-04-27 11:17:50', '2025-04-27 11:17:50', NULL),
(3, 'Barangay Hall', '2', 'Public EC', 'Site Manager 1', '312412413', NULL, '2025-04-27 12:32:44', '2025-04-27 12:32:44', NULL),
(4, 'Barangay Hall', '1', 'Public EC', 'Site Manager 1', '312423432', NULL, '2025-04-29 14:52:57', '2025-04-29 14:52:57', NULL),
(5, 'Residence', '3', 'Private EC', 'Site Manager 1', 'q34232323', NULL, '2025-04-29 14:53:13', '2025-04-29 14:53:13', NULL),
(6, 'Barangay Hall', '1', 'Public EC', 'Site Manager 3', '5345324', NULL, '2025-05-07 14:21:48', '2025-05-07 14:21:48', 'Morerere'),
(7, 'Barangay Hall', '2', 'Public EC', 'Site Manager 2', '423423', NULL, '2025-05-07 14:34:49', '2025-05-07 14:34:49', 'Morerere'),
(8, 'Barangay Hall', '2', 'Public EC', 'Site Manager 1', '09099939293', NULL, '2025-05-09 15:05:56', '2025-05-09 15:05:56', 'Etetert'),
(9, 'Barangay Hall', '1', 'Public EC', 'Site Manager 2', '42342343', NULL, '2025-05-09 15:17:10', '2025-05-09 15:17:10', 'Morerere'),
(10, 'Barangay Hall', '2', 'Public EC', 'Site Manager 2', '78788', NULL, '2025-05-10 03:01:37', '2025-05-10 03:01:37', 'Morerere'),
(11, 'School', '1', 'Public EC', 'Site Manager 3', '09168638290', NULL, '2025-05-17 10:30:39', '2025-05-17 10:30:39', 'Kendra'),
(12, 'Barangay Hall', '1', 'Public EC', 'Site Manager 3', '09168638290', NULL, '2025-05-17 10:35:30', '2025-05-17 10:35:30', 'Willy'),
(13, 'Residence', '2', 'Private EC', 'Site Manager 4', '0935345345345', NULL, '2025-05-17 10:36:40', '2025-05-17 10:36:40', 'Willy'),
(14, 'School', 'Zone 1', 'Public EC', 'Site Manager 1', '342', NULL, '2025-05-22 04:16:54', '2025-05-22 04:16:54', 'Maria'),
(15, 'Barangay Hall', 'Zone 1', 'Public EC', 'Site Manager 1', '06432211', NULL, '2025-05-22 09:08:33', '2025-05-22 09:08:33', 'Etetert'),
(16, 'Barangay Hall', 'Zone 2', 'Public EC', 'Site Manager 2', '434343', NULL, '2025-05-22 09:11:36', '2025-05-22 09:11:36', 'Etetert');

-- --------------------------------------------------------

--
-- Table structure for table `evacuees`
--

CREATE TABLE `evacuees` (
  `id` bigint(20) NOT NULL,
  `head_family` varchar(255) DEFAULT NULL CHECK (`head_family` regexp '^[a-zA-Z -]+$'),
  `infant` int(11) DEFAULT 0,
  `toddlers` int(11) DEFAULT 0,
  `preschool` int(11) DEFAULT 0,
  `school_age` int(11) DEFAULT 0,
  `teen_age` int(11) DEFAULT 0,
  `adult` int(11) DEFAULT 0,
  `senior_citizen` int(11) DEFAULT 0,
  `total_persons` int(11) GENERATED ALWAYS AS (`infant` + `toddlers` + `preschool` + `school_age` + `teen_age` + `adult` + `senior_citizen`) STORED,
  `lactating_mothers` int(11) DEFAULT 0,
  `pregnant` int(11) DEFAULT 0,
  `pwd` int(11) DEFAULT 0,
  `solo_parent` int(11) DEFAULT 0,
  `evacuation_center_id` bigint(20) DEFAULT NULL,
  `calamity_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evacuees`
--

INSERT INTO `evacuees` (`id`, `head_family`, `infant`, `toddlers`, `preschool`, `school_age`, `teen_age`, `adult`, `senior_citizen`, `lactating_mothers`, `pregnant`, `pwd`, `solo_parent`, `evacuation_center_id`, `calamity_id`, `created_at`, `updated_at`) VALUES
(22, 'Juan Dela Cruz', 1, 1, 0, 2, 1, 2, 1, 0, 1, 1, 0, NULL, NULL, '2025-05-19 04:35:42', '2025-05-19 04:35:42'),
(23, 'Maria Clara', 0, 0, 1, 3, 2, 2, 0, 0, 1, 1, 1, NULL, NULL, '2025-05-19 04:35:43', '2025-05-19 04:35:43'),
(24, 'Jose Rizal', 1, 2, 0, 1, 1, 2, 0, 1, 0, 0, 0, NULL, NULL, '2025-05-19 04:35:43', '2025-05-19 04:35:43'),
(28, 'Jayla Romero', 0, 0, 0, 1, 2, 5, 2, 0, 0, 0, 0, NULL, NULL, '2025-05-22 00:59:08', '2025-05-22 00:59:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calamity`
--
ALTER TABLE `calamity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evacuation_centers`
--
ALTER TABLE `evacuation_centers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calamity_id` (`calamity_id`);

--
-- Indexes for table `evacuees`
--
ALTER TABLE `evacuees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evacuation_center_id` (`evacuation_center_id`),
  ADD KEY `calamity_id` (`calamity_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calamity`
--
ALTER TABLE `calamity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `evacuation_centers`
--
ALTER TABLE `evacuation_centers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `evacuees`
--
ALTER TABLE `evacuees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evacuees`
--
ALTER TABLE `evacuees`
  ADD CONSTRAINT `evacuees_ibfk_1` FOREIGN KEY (`evacuation_center_id`) REFERENCES `evacuation_centers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `evacuees_ibfk_2` FOREIGN KEY (`calamity_id`) REFERENCES `calamity` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
