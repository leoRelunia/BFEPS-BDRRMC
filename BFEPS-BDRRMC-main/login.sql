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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_bfeps`
--

CREATE TABLE `user_bfeps` (
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_bfeps`
--

INSERT INTO `user_bfeps` (`user_name`, `user_password`, `name`, `position`, `id`) VALUES
('Captain_2025', '2025_Captain', 'James Gabriel', 'Captain', 1),
('Secretary_2025', '2025_Secretary', 'Leo Relunia', 'Secretary', 2),
('Treasurer_2025', '2025_Treasurer', 'Jayla Sophia Romero', 'Treasurer', 3),
('Kagawad_2025', '2025_Kagawad', 'Aljen Enguero', 'Kagawad', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_bfeps`
--
ALTER TABLE `user_bfeps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_bfeps`
--
ALTER TABLE `user_bfeps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
