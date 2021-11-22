-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.htmlmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 3, 2021 at 07:47 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `empid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`, `empid`) VALUES
('ayush', '1234', 'ayush');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance`) VALUES
(13150);

-- --------------------------------------------------------

--
-- Table structure for table `booked_hist`
--

CREATE TABLE `booked_hist` (
  `phone` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked_hist`
--

INSERT INTO `booked_hist` (`phone`, `name`, `idproof`, `room_type`, `checkin`, `checkout`, `days`, `ac`, `breakfast`, `lunch`, `snacks`, `dinner`, `swimming`, `price`, `book_id`) VALUES
(123, 'abc', '123', 'Single bed', '2021-03-31', '2021-04-01', 8, 'false', 'false', 'false', 'false', 'false', 'false', 1000, 10013),
(123, 'abc', '123', 'Single bed', '2021-03-28', '2021-03-30', 3, 'false', 'true', 'true', 'false', 'false', 'false', 2350, 10014),
(123, 'abc', '123', 'Single bed', '2021-03-31', '2021-03-29', 2, 'false', 'false', 'false', 'false', 'false', 'false', 1000, 10016),
(1234, 'def', '1234', 'Single bed', '2021-04-05', '2021-04-07', 2, 'false', 'true', 'true', 'false', 'false', 'false', 2900, 10019);

-- --------------------------------------------------------

--
-- Table structure for table `book_id`
--

CREATE TABLE `book_id` (
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_id`
--

INSERT INTO `book_id` (`book_id`) VALUES
(10020);

-- --------------------------------------------------------

--
-- Table structure for table `confirmed_booking`
--

CREATE TABLE `confirmed_booking` (
  `phone` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirmed_booking`
--

INSERT INTO `confirmed_booking` (`phone`, `name`, `idproof`, `room_type`, `checkin`, `checkout`, `days`, `ac`, `breakfast`, `lunch`, `snacks`, `dinner`, `swimming`, `price`, `book_id`) VALUES
(123, 'abc', '123', 'Double bed', '2021-03-28', '2021-03-29', 10, 'false', 'false', 'true', 'false', 'false', 'false', 20400, 10017),
(123, 'abc', '123', 'Single bed', '2021-04-07', '2021-04-06', 2, 'false', 'false', 'false', 'false', 'false', 'false', 2000, 10018);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_count`
--

CREATE TABLE `rooms_count` (
  `room_type` varchar(20) NOT NULL,
  `available_rooms` int(11) NOT NULL,
  `occupied_rooms` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms_count`
--

INSERT INTO `rooms_count` (`room_type`, `available_rooms`, `occupied_rooms`, `price`) VALUES
('Single bed', 5, 1, 1000),
('Double bed', 4, 1, 1800),
('Four bed', 5, 0, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_book_id_`
--

CREATE TABLE `temp_book_id_` (
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_room`
--

CREATE TABLE `temp_room` (
  `phone` int(11) NOT NULL,
  `idproof` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_session`
--

CREATE TABLE `temp_session` (
  `phone` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_session`
--

INSERT INTO `temp_session` (`phone`, `password`, `name`, `email`, `idproof`, `dob`) VALUES
(1234, '12345', 'Ayush', 'aayush.agrawal979@gmail.com', '1234', '2000-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `phone` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`phone`, `password`, `name`, `email`, `idproof`, `dob`) VALUES
(123, '1234', 'abc', 'abc@gmail.com', '123', '2000-01-01'),
(0, '', '', '', '', '0000-00-00'),
(1234, '12345', 'AYUSH', 'aayush.agrawal979@gmail.com', '1234', '2000-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `user_room_book`
--

CREATE TABLE `user_room_book` (
  `phone` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `idproof` varchar(20) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL,
  `days` int(11) NOT NULL,
  `ac` varchar(5) NOT NULL,
  `breakfast` varchar(5) NOT NULL,
  `lunch` varchar(5) NOT NULL,
  `snacks` varchar(5) NOT NULL,
  `dinner` varchar(5) NOT NULL,
  `swimming` varchar(5) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Waiting',
  `price` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
