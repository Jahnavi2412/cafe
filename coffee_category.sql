-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 10:53 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coffee_category`
--
ALTER TABLE `coffee_category`
  ADD PRIMARY KEY (`coffee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coffee_category`
--
ALTER TABLE `coffee_category`
  MODIFY `coffee_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
