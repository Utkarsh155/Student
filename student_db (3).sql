-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2020 at 06:53 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendace_table`
--

CREATE TABLE `attendace_table` (
  `id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `semester` tinyint(4) NOT NULL,
  `attended_class` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendace_table`
--

INSERT INTO `attendace_table` (`id`, `roll_no`, `semester`, `attended_class`) VALUES
(1, 75315962, 1, 127),
(2, 75315962, 2, 120),
(3, 78456912, 1, 121),
(4, 54621370, 1, 126),
(5, 54621370, 2, 120),
(6, 54621370, 3, 124),
(7, 0, 0, 0),
(8, 456159785, 1, 120),
(9, 456159785, 2, 100),
(10, 456159785, 3, 100),
(11, 456159785, 4, 120),
(12, 456159785, 5, 120),
(13, 19547308, 1, 100),
(14, 19547308, 2, 100),
(15, 19547308, 3, 125),
(16, 19547308, 4, 120),
(17, 19547308, 5, 122),
(18, 0, 0, 0),
(19, 19054691, 1, 170),
(20, 19054691, 2, 200),
(21, 19054691, 3, 189),
(22, 19054691, 4, 198),
(23, 19054691, 5, 178),
(24, 19054691, 6, 178),
(25, 19054691, 7, 188),
(26, 19054691, 8, 200),
(27, 19021489, 1, 173),
(28, 19021489, 2, 183),
(29, 19021489, 3, 200),
(30, 19021489, 4, 175),
(31, 15934657, 1, 169),
(32, 15934657, 2, 192),
(33, 15934657, 3, 194),
(34, 15934657, 4, 186),
(35, 15934657, 5, 200),
(36, 15934657, 6, 174),
(37, 15934657, 7, 174),
(38, 15934657, 8, 187),
(39, 19021459, 1, 187),
(40, 19021459, 2, 200),
(41, 19021459, 3, 197),
(42, 19021459, 4, 187),
(43, 19021459, 5, 137),
(44, 19021459, 6, 176),
(45, 98456123, 1, 200);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_result`
--

CREATE TABLE `tbl_result` (
  `id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `maths` int(11) NOT NULL,
  `computer` int(11) NOT NULL,
  `english` int(11) NOT NULL,
  `electrical` int(11) NOT NULL,
  `software` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_result`
--

INSERT INTO `tbl_result` (`id`, `roll_no`, `semester`, `maths`, `computer`, `english`, `electrical`, `software`) VALUES
(1, 19054691, 1, 88, 45, 43, 79, 45),
(2, 19054691, 2, 34, 87, 43, 34, 97),
(3, 19054691, 3, 99, 75, 12, 54, 95),
(4, 19054691, 4, 98, 55, 44, 66, 22),
(5, 19054691, 5, 77, 88, 99, 42, 44),
(6, 19054691, 6, 72, 81, 37, 19, 76),
(7, 19054691, 7, 73, 87, 91, 99, 70),
(8, 19054691, 8, 79, 94, 13, 94, 100),
(9, 19021489, 1, 89, 75, 46, 89, 75),
(10, 19021489, 2, 95, 75, 78, 49, 100),
(11, 19021489, 3, 98, 47, 48, 45, 100),
(12, 19021489, 4, 98, 98, 79, 45, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_info`
--

CREATE TABLE `tbl_student_info` (
  `id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_number` bigint(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student_info`
--

INSERT INTO `tbl_student_info` (`id`, `roll_no`, `name`, `father_name`, `mother_name`, `semester`, `email`, `mobile_number`, `branch`, `image`) VALUES
(1, 19054691, 'Joyce Shippy', 'Bong Shippy', 'Clara Shippy', 8, 'Shippy@gmail.com', 9456178005, 'Btech Engineering', '1.jpg'),
(2, 19021489, 'Lincoln White', 'Thomas White', 'Rachel White', 4, 'white@gmail.com', 2035478912, 'Btech .Engineering', '1.jpg'),
(3, 15934657, 'Karon Esley', 'John Esley', 'Nicole Esley', 8, 'esley@gmail.com', 2045784632, 'Btech Enginnering', '1.jpg'),
(4, 78456912, 'Jack Winzer', 'Tom Winzer', 'Monica Winzer', 1, 'winzer@gmail.com', 2100546974, 'Btech Engineering', '1.jpg'),
(5, 19021459, 'Benedict Forth', 'Arthur Forth', 'Pollie Forth', 6, 'fort@gmail.com', 2103654781, 'Btech Engineering', '1.jpg'),
(6, 98456123, 'Steffenie Fluge', 'Finn Fluge', 'Linda Fluge', 1, 'Fluge@gmail.com', 9412503447, 'Btech Engineering', '1.jpg'),
(7, 54621370, 'Anitta Clock', 'Jack Clock', 'Nicole Clock', 3, 'Clock@gmail.com', 9456871005, 'Btech Engineering', '1.jpg'),
(8, 75315962, 'Charlie Shelby', 'Thomas Shelby', 'Grace Shelby', 2, 'Shelby@gmail.com', 9412056443, 'Btech Engineering', '1.jpg'),
(9, 19547308, 'Dracy Mershin', 'Robert Mershin', 'Ada Mershin', 5, 'mershin@gmail.com', 7536410008, 'Btech Engineering', '1.jpg'),
(10, 456159785, 'Thomas linn', 'Jack linn', 'Lisa Linn', 5, 'Linn@gmail.com', 8456132700, 'Btech Engineering', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `email`, `username`, `password`) VALUES
(1, 'test@test.com', 'test', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendace_table`
--
ALTER TABLE `attendace_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_result`
--
ALTER TABLE `tbl_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_info`
--
ALTER TABLE `tbl_student_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendace_table`
--
ALTER TABLE `attendace_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_result`
--
ALTER TABLE `tbl_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_student_info`
--
ALTER TABLE `tbl_student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
