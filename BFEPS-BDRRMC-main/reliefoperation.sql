-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 03:15 PM
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
-- Database: `reliefoperation`
--

-- --------------------------------------------------------

--
-- Table structure for table `relief_reports`
--

CREATE TABLE `relief_reports` (
  `id` int(11) NOT NULL,
  `report_date` varchar(50) NOT NULL,
  `donor_name` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `donated_type` varchar(50) NOT NULL,
  `measure` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `beneficiaries` varchar(255) NOT NULL,
  `process` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relief_reports`
--

INSERT INTO `relief_reports` (`id`, `report_date`, `donor_name`, `item_name`, `donated_type`, `measure`, `quantity`, `cost`, `beneficiaries`, `process`, `venue`, `remarks`, `created_at`) VALUES
(57, '2025-05-08', 'Askjfhfg', 'Slkdjhgfds', 'Equipment', 'Piece/s', 34, 34.00, 'Barangay', 'Direct Distribution', 'Municipal Covered Court', 'Edgwashrewh', '2025-05-07 16:06:57'),
(58, '2025-05-08', '234y41', '21414', 'Food', 'Piece/s', 123, 123.00, 'Residents', 'Direct Distribution', 'Barangay Hall', '1242rqwftqtg', '2025-05-07 16:08:00'),
(60, '2025-05-10', 'Sadfaasgssssss', 'Afasf', 'Food', 'Piece/s', 23, 23.00, 'Residents', 'Door-to-Door Distribution', 'Barangay Hall', 'Safasfg', '2025-05-09 19:16:00'),
(63, '2025-05-15', 'Leo Relunia', 'Monoblock', 'Equipment', 'Piece/s', 10, 60000.00, 'Barangay', 'Direct Distribution', 'Barangay Hall', 'This Item Is Donated To Help The Barangay.', '2025-05-15 15:24:01'),
(64, '2025-05-22', 'Dsadada', 'Dasdasssda', 'Food', 'Piece/s', 33, 333.00, 'Residents', 'Direct Distribution', 'Barangay Hall', 'Dsadadadada', '2025-05-22 09:29:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `relief_reports`
--
ALTER TABLE `relief_reports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `relief_reports`
--
ALTER TABLE `relief_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
