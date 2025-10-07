-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2025 at 04:59 PM
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
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `firstName`, `lastName`, `phone`, `dob`, `address`, `email`) VALUES
(1, 'sureka', 'Appuththurai', '0764617927', '2002-08-01', 'jaffna', 'surekasiva11@gmail.com'),
(2, 'sureka', 'Appuththurai', '0764617927', '2002-08-01', 'Navatkuli', 'surekasiva11@gmail.com'),
(3, 'gowsikan', 'kajana', '0762932003', '2003-08-27', 'leicester LE19BH , uk', 'gowsisiva69@gmail.com'),
(4, 'kenu', 'raj', '0779509129', '2005-11-22', 'jaffna', 'kenu2002@email.com'),
(5, 'gowsi', 'gowsik', '0762932004', '2025-02-01', 'kantharmadam', 'gowsikansiva@gmail.com'),
(6, 'gowsi', 'gowsik', '0762932004', '2025-05-14', 'neerveli\r\n', 'gowsikansiva@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `gender`, `dob`, `nationality`, `email`, `mobile`, `address`) VALUES
(3, 'swami', 'sure', 'Male', '2002-08-01', 'indian', 'swamisuka1@gmail.com', '0775289649', 'india'),
(9, 'kajana', 'pus', 'Female', '2003-03-01', 'srilankan', 'kajanapush01@gmail.com', '0778523698', 'Navatkuli'),
(11, 'sureka', 'appuththurai', 'Female', '2002-08-12', 'Italian', 'surekasiva11@gmail.com', '076467192', 'Navatkuli'),
(12, 'metu', 'tharsan', 'Female', '2020-05-21', 'Canadian', 'meth08@gmail.com', '0778965418', 'Kachchai South, Kodikamam'),
(15, 'kabil', 'Appuththurai', 'Female', '1993-01-15', 'Australian', 'kabil0111@gmail.com', '0776295501', 'Kachchai South, Kodikamam'),
(16, 'edisanath', 'Appuththurai', 'Male', '2007-02-05', 'German', 'edisanath123@gmail.com', '0777581377', 'Kachchai South, Kodikamam');

-- --------------------------------------------------------

--
-- Table structure for table `leaveapply`
--

CREATE TABLE `leaveapply` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `reason` text NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaveapply`
--

INSERT INTO `leaveapply` (`id`, `firstName`, `lastName`, `email`, `phone`, `reason`, `startDate`, `endDate`) VALUES
(2, '', '', '', '552', 'fever', '2025-05-03', '2025-05-24'),
(3, 'kabil', 'Appuththurai', 'kabil0111@gmail.com', '0764617927', 'fever', '2025-05-10', '2025-05-12'),
(4, 'kabil', 'Appuththurai', 'kabil0111@gmail.com', '077944678', 'fever', '2025-05-10', '2025-05-15'),
(5, 'vaishnavi', 'sutharshan', 'vaishu2002@gmail.com', '077852369', 'fever', '2025-05-10', '2025-05-15'),
(7, 'gk', 'siva', 'gk11@gmail.com', '0123456789', 'fever', '2025-12-06', '2025-12-06'),
(10, 'gk', 'siva', 'gk11@gmail.com', '07562296254', 'fever', '2025-05-14', '2025-05-15'),
(11, 'vaishnavi', 'vaishnavi', 'vaishu@2002gmail.com', '0769443576', 'function', '2025-09-09', '2025-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `signupdb`
--

CREATE TABLE `signupdb` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signupdb`
--

INSERT INTO `signupdb` (`id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(2, 'admin', 'admin', 'admin123@gmail.com', 'admin', 'admin123'),
(3, 'swami', 'sureka', 'swamisuka1@gmail.com', 'swami', '123456'),
(6, 'gk', 'siva', 'gk11@gmail.com', 'gk', '789456'),
(8, 'vaishnavi', 'vaishnavi', 'vaishu@2002gmail.com', 'vaishnavi', 'vaishu*2002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaveapply`
--
ALTER TABLE `leaveapply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signupdb`
--
ALTER TABLE `signupdb`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `leaveapply`
--
ALTER TABLE `leaveapply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `signupdb`
--
ALTER TABLE `signupdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
