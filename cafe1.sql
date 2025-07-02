-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2025 at 02:58 PM
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
-- Database: `cafe1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `admin_id` tinyint(4) NOT NULL,
  `admin_fullname` varchar(25) NOT NULL,
  `admin_username` varchar(25) NOT NULL,
  `admin_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`admin_id`, `admin_fullname`, `admin_username`, `admin_password`) VALUES
(1, 'Yashika ka', 'Yashi', 'admin'),
(2, 'Yashika kapoor', 'Yashika', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `cfeuser`
--

CREATE TABLE `cfeuser` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Phone_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cfeuser`
--

INSERT INTO `cfeuser` (`id`, `name`, `email`, `password`, `Phone_no`) VALUES
(1, 'yashika', 'yas@gmail.com', '0', 2147483647),
(4, 'hello', 'hello123@gmail.com', '0', 2147483647),
(5, 'hello', 'hello123@gmail.com', '0', 2147483647),
(6, 'hello', 'hello123@gmail.com', '0', 2147483647),
(7, '', '', '0', 0),
(8, 'jahnavi', 'jahnavi123@gmail.com', '0', 2147483647),
(9, '', '', '0', 0),
(10, 'abc', 'abc@gmail.com', '0', 2147483647),
(11, 'yashikaa', 'yashika@gmail.com', '0', 2147483647),
(12, 'sipster', 'sipster123@gmail.com', 'abc@1233', 123456789),
(13, 'tom', 'tom123@gmail.com', 'tom@123', 2147483647),
(14, 'tomy', 'tomy123@gmail.com', 'tomy@123', 912345678),
(15, 'hi', 'hi123@gmail.com', 'hi@123', 2147483647),
(16, 'abcd', 'abcd123@gmail.com', 'abcd@123', 2147483647),
(17, 'abcde', 'abcde123@gmail.com', 'abcde@123', 2147483647),
(18, 'abcdef', 'abcdef123@gmail.com', 'abcdef@123', 2147483647),
(19, 'shg', 'ahg123@gmail.com', 'abc@123', 2147483647),
(20, 'agfdhg', 'resre@gmail.com', 'abc@123t', 2147483647),
(21, 'hello', 'hello1234@gmail.com', 'hello123456', 2147483647),
(22, 'adc', 'adc123@gmail.com', 'adc@123', 2147483647),
(23, 'abc', 'abc123@gmail.com', 'abc@123', 2147483647),
(24, 'shruti', 'shruti12@gmail.com', 'shruti', 2147483647),
(25, 'sweety', 'sweety23@gmjkij', 'swe', 786745345),
(26, 'sweety', 'swee54@gmail.com', 'Swee', 987673465),
(27, 'guyuh', '', 'jhkj', 123456789),
(28, '', '', '', 2147483647),
(29, 'aqbc', 'abs@gmai.com', 'abc@123', 2147483647),
(30, 'hi', 'hi123@gmail.com', 'hi@123', 2147483647),
(31, 'hi', 'hi@gmail.com', 'abc@123', 2147483647),
(32, 'hi', 'hi123@gmail.com', 'abc@123', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `coffee_category`
--

CREATE TABLE `coffee_category` (
  `coffee_id` int(4) NOT NULL,
  `item_name` varchar(22) NOT NULL,
  `category_id` int(255) NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cfeuser`
--
ALTER TABLE `cfeuser`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_account`
--
ALTER TABLE `admin_account`
  MODIFY `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cfeuser`
--
ALTER TABLE `cfeuser`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `coffee_category`
--
ALTER TABLE `coffee_category`
  MODIFY `coffee_id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_account`
--
ALTER TABLE `employee_account`
  MODIFY `emp_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
