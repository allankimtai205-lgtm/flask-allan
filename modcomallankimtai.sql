-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2026 at 11:12 AM
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
-- Database: `modcomallankimtai`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` int(50) DEFAULT NULL,
  `dept_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Peter Wilson', '1990-06-15', 40000, 1),
(2, 'Mary Wanjiku', '2020-06-20', 50000, 2),
(3, 'peter wilson', '1990-06-15', 40000, 1),
(4, 'mary wanjiku', '2020-06-20', 50000, 2),
(5, 'johm kamau', '2018-03-12', 45000, 1),
(6, 'Grace Achieng', '2019-07-25', 55000, 3),
(7, 'David Kiptoo', '2021-01-10', 38000, 2),
(8, 'Jane Njeri', '2017-11-05', 62000, 4),
(9, 'Faith Chebet', '2016-09-30', 70000, 4),
(10, 'Brian Mutua', '2023-02-14', 32000, 2),
(11, 'Mercy wairimu', '2015-08-22', 80000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_cost` int(50) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendors_id` int(50) NOT NULL,
  `vendors_name` varchar(100) DEFAULT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendors_id`, `vendors_name`, `Phone_number`, `Email`, `city`) VALUES
(1, 'ABC Supliers', '0712345678', 'abc@gmail.com', 'Nairobi'),
(2, 'Brenz suppliers', '722482145', 'kbc@gmail.com', 'Kisumu'),
(3, 'sugar suppliers', '0700430003', 'sugar@gmail.com', 'kwale'),
(4, 'Honey suppliers', '7987655432', 'kabar@gmail.com', 'Baringo'),
(5, 'vegetables supliers', '0745261874', 'hdjh@gmail.com', 'Trans-Nzoia'),
(6, 'oil suppliers', '735728162', 'ghjh@gmail.com', 'Mombasa'),
(7, 'fats suppliers', '7452676232', 'gdjhsb@gmail.com', 'Thika'),
(8, 'bigo suppliers', '12673817', 'hih@gmail.com', 'Eldoret'),
(9, 'Mango suppliers', '783926482', 'yrj@gmail.com', 'Malindi'),
(10, 'laptop suppliers', '0174362784', 'kim@gmail.com', 'Kitale');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendors_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendors_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
