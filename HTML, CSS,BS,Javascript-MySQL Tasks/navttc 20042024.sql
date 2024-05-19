-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 01:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `navttc`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Dept` varchar(50) NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Salary` int(11) NOT NULL,
  `Address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `Name`, `Dept`, `Gender`, `Email`, `Salary`, `Address`) VALUES
(1, 'Asad', 'CS', 'Male', 'asd@gmail.com', 50000, 'Multan'),
(2, 'Waqas', 'IT', 'Male', 'waqas@gmail.com', 65000, 'Karachi'),
(4, 'Wajiha', 'IT', 'Female', 'wajiha@gmail.com', 97000, 'Islamabad'),
(5, 'Sarah', 'CS', 'Male', 'sara@gmail.com', 68000, 'Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Fac_id` int(11) DEFAULT NULL,
  `Std_Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `age`, `city`, `gender`, `Salary`, `Fac_id`, `Std_Age`) VALUES
(2, 'nimra', 'nimra@gmai', 21, 'karachi', 'Female', 45000, 1, 27),
(3, 'asad', 'asad@gmail', 27, 'karachi', 'Male', 70000, 5, 35),
(4, 'muneeb', 'muneeb@gma', 32, 'lahore', 'Female', 90000, 1, 26),
(5, 'mubeen', 'mubeen@gma', 30, 'lahore', 'Male', 55000, 2, 34),
(6, 'rafy', 'rafy@gmail', 28, 'lahore', 'Female', 60000, 4, 35),
(7, 'yaqoob', 'yaqoob@gma', 27, 'Islamabad', 'Female', 98000, 4, 36),
(8, 'iqra', 'iqra@gmail', 21, 'Islamabad', 'Male', 87000, 4, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `UNION_email` (`email`),
  ADD KEY `Fac_id` (`Fac_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`Fac_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
