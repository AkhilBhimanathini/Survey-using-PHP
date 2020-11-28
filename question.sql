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
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `optionA` varchar(100) NOT NULL,
  `optionB` varchar(100) NOT NULL,
  `optionC` varchar(100) NOT NULL,
  `voteA` int(11) NOT NULL DEFAULT 0,
  `voteB` int(11) DEFAULT 0,
  `voteC` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `optionA`, `optionB`, `optionC`, `voteA`, `voteB`, `voteC`) VALUES
(1, 'Which activities in the classroom do you enjoy the most?', 'Fast Facts', 'Memory', 'Treasure Hunt', 9, 1, 8),
(2, 'Given a chance, what is one change that you would like to see?', 'Teaching method', 'Time taken to complete a chapter', 'Extracurricular activities', 3, 5, 4),
(3, 'Do you have supportive classmates?', 'Yes, extremely supportive', 'They are neither supportive nor unsupportive', 'No, extremely unsupportive', 5, 1, 1),
(4, 'What motivates you to learn more?', 'Asking a lot of questions to the teacher', 'Completing various assignments', 'Sports and other extracurricular activities', 3, 2, 3),
(5, '	How did you hear about our website?', 'college', 'friends', 'internet', 4, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
