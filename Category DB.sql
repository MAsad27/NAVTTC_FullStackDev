-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 01:46 PM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Description` varchar(500) NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `Name`, `Description`, `image`) VALUES
(1, 'Bag', 'abc', '123.jpg'),
(2, 'Laptop', 'qwe', '123.jpg'),
(3, 'Computer', 'HP', 'maxresdefault.jpg'),
(4, 'Computer', 'Dell', 'index.html'),
(5, 'Computer', 'Dell', 'GROUP DETAIL OF PR2202311F.xlsx'),
(6, 'Computer', 'abc', 'tasks.txt'),
(7, 'Bag', 'Dell', 'GROUP DETAIL OF PR2202311F.xlsx'),
(8, 'Computer', 'HP', 'tasks.txt'),
(9, 'Pen', 'Piano', 'navttc.sql'),
(10, 'Bag', 'Dell', 'index.html'),
(11, 'Bag', 'abc', 'navttc.sql'),
(12, 'Bag', 'abc', 'maxresdefault.jpg');

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
  `salary` varchar(100) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `age`, `city`, `gender`, `salary`, `department`, `address`) VALUES
(1, 'Shabhi', 'Shabhi@gma', 27, 'karachi', 'male', '42500', 'management', 'malir'),
(2, 'nimra', 'nimra@gmai', 21, 'karachi', 'female', '49178', 'technical', 'gulshan e Iqbal'),
(3, 'asad', 'asad@gmail', 27, 'karachi', 'male', '37390', 'management', 'malir'),
(4, 'muneeb', 'muneeb@gma', 32, 'lahore', 'female', '103500', 'technical', 'gulshan e Iqbal'),
(5, 'mubeen', 'mubeen@gma', 30, 'lahore', 'male', '22500', 'management', 'gulshan e hadeed'),
(6, 'rafy', 'rafy@gmail', 28, 'lahore', 'female', '53500', 'technical', 'North'),
(7, 'yaqoob', 'yaqoob@gma', 27, 'Islamabad', 'male', '42500', 'management', 'gulshan e hadeed'),
(8, 'iqra', 'iqra@gmail', 21, 'Islamabad', 'female', '53500', 'technical', 'North');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `UNION_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
