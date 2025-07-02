-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 12:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `admin_id` tinyint(4) NOT NULL,
  `admin_fullname` varchar(10) NOT NULL,
  `admin_username` varchar(5) NOT NULL,
  `admin_password` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`admin_id`, `admin_fullname`, `admin_username`, `admin_password`) VALUES
(2, 'Super User', 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `coffee_category`
--

CREATE TABLE `coffee_category` (
  `coffee_id` int(4) NOT NULL,
  `item_name` varchar(22) NOT NULL,
  `category_id` varchar(25) NOT NULL,
  `price` int(5) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coffee_category`
--

INSERT INTO `coffee_category` (`coffee_id`, `item_name`, `category_id`, `price`, `image`, `description`) VALUES
(1, 'Cappuccino', 'Drinks', 199, 'uploaded_files\\s.jpg', 'Cappuccino is a popular coffee drink that originated in Italy. It is traditionally made with equal parts of espresso, steamed milk, and milk foam, creating a rich and creamy beverage with a strong coffee flavor.'),
(27, 'Latte', 'Cold', 249, 'uploaded_files\\coffee3.gif', 'Latte ');

-- --------------------------------------------------------

--
-- Table structure for table `employee_account`
--

CREATE TABLE `employee_account` (
  `emp_id` int(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_account`
--

INSERT INTO `employee_account` (`emp_id`, `emp_name`, `emp_email`, `emp_password`) VALUES
(1, 'Super Employee', 'Employee', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `bill_id` int(10) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `method` varchar(16) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`bill_id`, `payment`, `method`, `contact`, `email`, `date`) VALUES
(1, '199.98', 'Credit/Debit Car', '9876543210', 'o7@gmail.com', '2024-08-16 16:07:56.147948'),
(2, '99.99', 'Credit/Debit Car', '9876543210', 'o@gmail.com', '2024-08-16 21:40:43.000000'),
(3, '39.9960', 'Cash', '9988778899', 'g@gmail.com', '2024-08-17 09:26:43.000000'),
(4, '79.9920', 'Cash', '8990009011', 'gur@gmail.com', '2024-08-17 09:32:02.000000'),
(5, '79.9920', 'Net Banking', '9876543210', 'hdfgh', '2024-08-20 17:49:14.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'gurminder', 'gurminder@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `coffee_category`
--
ALTER TABLE `coffee_category`
  ADD PRIMARY KEY (`coffee_id`);

--
-- Indexes for table `employee_account`
--
ALTER TABLE `employee_account`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coffee_category`
--
ALTER TABLE `coffee_category`
  MODIFY `coffee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employee_account`
--
ALTER TABLE `employee_account`
  MODIFY `emp_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
