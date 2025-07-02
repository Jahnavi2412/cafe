-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2025 at 04:47 PM
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
-- Database: `tea`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_account`
--

CREATE TABLE `admin_account` (
  `admin_id` tinyint(4) NOT NULL,
  `admin_fullname` varchar(22) NOT NULL,
  `admin_username` varchar(22) NOT NULL,
  `admin_password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_account`
--

INSERT INTO `admin_account` (`admin_id`, `admin_fullname`, `admin_username`, `admin_password`) VALUES
(2, 'Super User', 'Admin', 'admin'),
(3, 'Yashika ka', 'Yashi', 'Admin'),
(4, 'Yashika kapoor', 'Yashika', 'Admin@123'),
(5, 'Jahnavi arora', 'Jahnavi', 'Admin@123');

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
(27, 'Latte', 'Cold', 249, 'uploaded_files\\coffee3.gif', 'Latte '),
(29, 'Chocolate donut', 'Dessert', 250, 'uploaded_files\\chocolate.jpg', ''),
(30, 'Sandwich', 'Snacks', 150, 'uploaded_files\\sandwich.jpeg', 'Grilled Sandwich'),
(31, 'Jelly filled donut', 'Dessert', 250, 'uploaded_files\\jelly.jpg', 'Grilled Sandwich'),
(32, 'Sprinkle donut', 'Dessert', 280, 'uploaded_files\\sprinkle donut.jpeg', ''),
(34, 'Vanilla donut', 'Dessert', 160, 'uploaded_files\\vanilla.jpg', ''),
(35, 'Strawberry donut', 'Dessert', 240, 'uploaded_files\\donut3.jpg', ''),
(36, 'Red sauce pasta', 'Snacks', 200, 'uploaded_files\\res.jpg', ''),
(37, 'White sauce pasta', 'Snacks', 160, 'uploaded_files\\whitesacucepasta.jpg', ''),
(38, 'Garlic bread', 'Snacks', 280, 'uploaded_files\\garlicbread.jpg', ''),
(39, 'French fries', 'Snacks', 160, 'uploaded_files\\ff.jpg', ''),
(40, 'Americano', 'Cold', 240, 'uploaded_files\\americano.jpeg', ''),
(41, 'Home-Style Ginger Tea', 'Hot', 160, 'uploaded_files\\gingertea (2).jpeg', ''),
(42, 'Green Tea', 'Hot', 150, 'uploaded_files\\greent.jpeg', ''),
(43, 'Tofu burger', 'Snacks', 120, 'uploaded_files\\tofu burger.jpeg', ''),
(44, 'Double hamburger', 'Snacks', 130, 'uploaded_files\\double hamburger.jpeg', ''),
(45, 'Mac and cheese burger', 'Snacks', 160, 'uploaded_files\\mac and cheese burger.jpeg', ''),
(46, 'Hamburger', 'Snacks', 100, 'uploaded_files\\hamburger.jpeg', ''),
(47, 'Vegetable patty burger', 'Snacks', 140, 'uploaded_files\\vegpattyburger.jpeg', ''),
(48, 'Orange juice', 'Juice', 100, 'uploaded_files\\juice.jpg', ''),
(49, 'Cappuccino', 'Drinks', 199, 'uploaded_files\\cappuccino1.jpg', 'Cappuccino is a popular coffee drink that originated in Italy. It is traditionally made with equal parts of espresso, steamed milk, and milk foam, creating a rich and creamy beverage with a strong coffee flavor.');

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
  `method` varchar(25) NOT NULL,
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
(5, '79.9920', 'Net Banking', '9876543210', 'hdfgh', '2024-08-20 17:49:14.000000'),
(6, '60.00', 'Credit/Debit Car', '9876543210', 'jahnavi@gmail.com', '2024-10-08 17:32:28.000000'),
(7, '60.00', 'Credit/Debit Car', '9876543210', 'jahnavi@gmail.com', '2024-10-08 17:32:36.000000'),
(8, '159.60', 'Net Banking', '9779263171', 'jahnavi@gmail.com', '2024-10-09 12:03:57.000000'),
(9, '159.60', 'Net Banking', '9779263171', 'jahnavi@gmail.com', '2024-10-09 12:04:05.000000'),
(10, '159.60', 'Net Banking', '9779263171', 'jahnavi@gmail.com', '2024-10-09 12:04:11.000000'),
(11, '159.60', 'Credit/Debit Car', '0987657687', 'jahnavi@gmail.com', '2024-10-09 13:29:20.000000'),
(12, '159.60', 'Credit/Debit Car', '0987657687', 'jahnavi@gmail.com', '2024-10-09 13:29:41.000000'),
(13, '250', 'UPI', '987777777776', 'jahnavi@gmail.com', '2024-10-09 14:59:54.000000'),
(14, '450', 'UPI', '9876757680', 'jahnavi@gmail.com', '2024-10-09 16:14:50.000000'),
(15, '769', 'UPI', '9876543210', 'jahnavi@gmail.com', '2024-10-09 16:16:35.000000'),
(16, '311.60', 'Net Banking', '9876543211', 'yashika@gmail.com', '2024-10-10 12:38:08.000000'),
(17, '172.00', 'Credit/Debit Car', '9867755555', 'jahnavi@gmail.com', '2024-10-10 13:07:33.000000'),
(18, '128.00', 'UPI', '9878767890', 'jahnavi@gmail.com', '2024-10-10 15:32:52.000000'),
(19, '690', 'Credit/Debit Car', '9876543213', 'kapooryaggf123@gmail.com', '2024-12-20 18:10:48.000000'),
(20, '640', 'Credit/Debit Car', '9876543213', 'kapooryaggf123@gmail.com', '2024-12-20 18:17:27.000000'),
(21, '780', 'Credit/Debit Car', '9876543213', 'kapooryaggf123@gmail.com', '2024-12-20 18:19:44.000000'),
(22, '690', 'Credit/Debit Car', '9876543213', 'kapooryaggf123@gmail.com', '2024-12-20 18:25:24.000000'),
(23, '299.60', 'Net Banking', '9876543213', 'kapooryaggf123@gmail.com', '2024-12-28 12:32:00.000000'),
(24, '200.00', 'Credit/Debit Card', '9876543213', 'yashika@gmail.com', '2024-12-31 13:46:36.000000'),
(25, '780', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-02 15:39:36.000000'),
(26, '749', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 12:18:51.000000'),
(27, '749', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 12:19:15.000000'),
(28, '250', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 12:21:46.000000'),
(29, '750', 'Credit/Debit Card', '9876543213', 'kapooryaggf123@gmail.com', '2025-01-03 12:27:03.000000'),
(30, '299.60', 'Credit/Debit Card', '9876543213', 'yashika@gmail.com', '2025-01-03 13:28:18.000000'),
(31, '264.00', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 13:32:36.000000'),
(32, '272.00', 'Credit/Debit Card', '9876543211', 'hello123@gmail.com', '2025-01-03 17:32:31.000000'),
(33, '280.00', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 18:12:59.000000'),
(34, '428.00', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 18:18:20.000000'),
(35, '264.00', 'Credit/Debit Card', '0', 'yashika@gmail.com', '2025-01-03 18:22:18.000000'),
(36, '271.60', 'Credit/Debit Card', '9876543213', 'kapooryaggf123@gmail.com', '2025-01-03 18:26:19.000000'),
(37, '649', 'Credit/Debit Card', '9876543211', 't@gmail.com', '2025-01-03 18:31:57.000000'),
(38, '809', 'Credit/Debit Card', '9876543211', 't@gmail.com', '2025-01-03 18:36:06.000000'),
(39, '660', 'Credit/Debit Card', '9876543211', 't@gmail.com', '2025-01-03 18:39:02.000000'),
(40, '700', 'Credit/Debit Card', '9876543211', 't@gmail.com', '2025-01-03 18:47:40.000000'),
(41, '700', 'Credit/Debit Card', '0', 'gurminder@gmail.com', '2025-01-03 18:58:44.000000'),
(42, '150', 'UPI', '9876543211', 't@gmail.com', '2025-01-03 19:00:45.000000'),
(50, '199.98', 'UPI', '9876543210', 't@gmail.com', '2025-01-04 10:30:00.000000'),
(51, '660', 'Net Banking', '9876543211', 't@gmail.com', '2025-01-03 19:22:43.000000'),
(52, '299.60', 'Credit/Debit Card', '9876543211', 'ab@gmail.com', '2025-01-09 16:26:12.000000'),
(53, '200.00', 'Credit/Debit Card', '9876543213', 'kapooryaggf123@gmail.com', '2025-01-10 11:08:27.000000'),
(54, '172.00', 'Credit/Debit Card', '8709437130', 'tiwaridalton@gmail.com', '2025-01-10 11:32:35.000000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'jahnavi', 'jahnavi@gmail.com', '123', 0),
(5, 'yashika', 'yashika@gmail.com', '1235', 0),
(10, 'hjdjj', 'shjh@gmail.com', '12356', 9876543212),
(12, 'yashika', 'kapooryaggf123@gmail.com', 'abc@123', 9876543213),
(13, 'hello', 'hello123@gamil.com', 'hello', 9876543211),
(14, 'hello123', 'hello123@gmail.com', 'hello@123', 9876543211),
(15, 't', 't@gmail.com', 't@123', 9876543211),
(16, 'ab', 'ab@gmail.com', 'ab@123', 9876543211),
(17, 'cs tiwari', 'tiwaridalton@gmail.com', 'abc@123', 8709437130),
(18, ',/l,\'lk;', 'knioihkuk@gmail.com', 'abc@123', 9467453546);

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
  MODIFY `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coffee_category`
--
ALTER TABLE `coffee_category`
  MODIFY `coffee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `employee_account`
--
ALTER TABLE `employee_account`
  MODIFY `emp_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
