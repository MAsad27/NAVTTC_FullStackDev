-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 08:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(1, 'Bags', 'Lugage Bag', 'OIP.jfif'),
(2, 'Computer', 'DELL', 'OIP (1).jfif'),
(3, 'Laptop', 'HP', 'maxresdefault.jpg'),
(5, 'Purse', 'Carry', 'OIP.jfif'),
(8, 'Volit', 'Pocket bag', 'OIP.jfif'),
(12, 'Bag', 'abc', 'maxresdefault.jpg'),
(13, 'asd', 'er', 'testimonial-1.jpg'),
(14, 'Mobile', 'Techno', 'Mob.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `quantity`, `image`, `catid`) VALUES
(2, 'Gaon', 'ASD', 5000, 2, 'Screenshot 2024-02-29 174953.png', 13),
(3, 'Techno', 'Mob', 45000, 1, 'Mob.jpg', 14);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(6, 'Shabhi', 'Shabiii', '10fff7184284f1cab3c739cd5130de6f1c5e831b'),
(8, 'Hamza', 'hamza@gmail.com', 'd798d4338adeb553a1089a58e61e18c2fcdf77bb'),
(9, 'Asad', 'asd@gmail.com', '123'),
(10, 'ali', 'ali@gmail.com', '749bc367fd90880f2d6dbe578e98e14645b0b26d'),
(11, 'Ahsan', 'ahsan@gmail.com', '056eafe7cf52220de2df36845b8ed170c67e23e3'),
(12, 'kashif', 'kashi@gmail.com', '95938f7d0a9581a694282ebac1c4c49e0e19c1cd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `UNION_email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
