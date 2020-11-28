-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 05:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`) VALUES
(3, 'Akhil', 'abc123@gmail.com'),
(4, 'niklaus_007', 'abc123@gmail.com'),
(5, 'Akhil', 'abc@gmail.com'),
(6, 'Akhil', 'abc123@gmail.com'),
(7, 'end', 'abc123@gmail.com'),
(8, 'Akhil', 'akhilbhimanathini2790@gmail.com'),
(9, 'niklaus_007', 'abc123@gmail.com'),
(10, 'niklaus_007', 'abc123@gmail.com'),
(11, 'end', 'abc123@gmail.com'),
(12, 'end', 'abc123@gmail.com'),
(13, 'niklaus_007', 'abc123@gmail.com'),
(14, 'Akhil', 'abc123@gmail.com'),
(15, 'Akhil', 'abc123@gmail.com'),
(16, 'Akhil', 'abc123@gmail.com'),
(17, 'Akhil', 'abc123@gmail.com'),
(18, 'Bhimanathini Akhil', 'akhilbhimanathini2790@gmail.com'),
(19, 'Akhil', 'akhil123@gmail.com'),
(20, 'Akhil', 'abc123@gmail.com'),
(21, 'Akhil', 'abc123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
