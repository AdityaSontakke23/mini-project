-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2025 at 08:21 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ClimateSync`
--

-- --------------------------------------------------------

--
-- Table structure for table `sustainable_practices`
--

CREATE TABLE `sustainable_practices` (
  `id` int NOT NULL,
  `city` varchar(100) NOT NULL,
  `category` enum('urban','rural') NOT NULL,
  `practice1_title` varchar(255) NOT NULL,
  `practice1_description` text NOT NULL,
  `practice2_title` varchar(255) NOT NULL,
  `practice2_description` text NOT NULL,
  `practice3_title` varchar(255) NOT NULL,
  `practice3_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sustainable_practices`
--

INSERT INTO `sustainable_practices` (`id`, `city`, `category`, `practice1_title`, `practice1_description`, `practice2_title`, `practice2_description`, `practice3_title`, `practice3_description`) VALUES
(1, 'Mumbai', 'urban', 'Air Pollution', 'Control Air Pollution', 'Noise Pollution', 'Less Honking', 'Water Wastage', 'Efficient Water Usage');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sustainable_practices`
--
ALTER TABLE `sustainable_practices`
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
-- AUTO_INCREMENT for table `sustainable_practices`
--
ALTER TABLE `sustainable_practices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
