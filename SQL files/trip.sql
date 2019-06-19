-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2017 at 01:01 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` varchar(5) NOT NULL,
  `service_id` varchar(5) NOT NULL,
  `place1` varchar(15) NOT NULL,
  `place2` varchar(15) NOT NULL,
  `class` varchar(10) NOT NULL,
  `cost` int(6) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `service_id`, `place1`, `place2`, `class`, `cost`, `date`) VALUES
('F001', 'S009', 'Delhi', 'Mumbai', 'Economy', 3500, '2017-11-02'),
('F002', 'S010', 'Delhi', 'Jaipur', 'Business', 2000, '2017-11-01'),
('F003', 'S011', 'Delhi', 'Goa', 'Economy', 2800, '2017-11-04'),
('F004', 'S012', 'Delhi', 'Puducherry', 'Economy', 3500, '2017-10-04'),
('F005', 'S017', 'delhi', 'Puducherry', 'economy', 3500, '2017-11-02'),
('F006', 'S018', 'delhi', 'mumbai', 'economy', 4000, '2017-11-03'),
('F008', 'S023', 'delhi', 'goa', 'business', 7000, '2017-11-05'),
('F009', 'S088', 'delhi', 'goa', 'economy', 6000, '2017-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hoteln` varchar(30) NOT NULL,
  `cin` varchar(20) NOT NULL,
  `cout` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel1`
--

CREATE TABLE `hotel1` (
  `hotel` varchar(15) NOT NULL,
  `cin` varchar(15) NOT NULL,
  `cout` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `email` varchar(30) NOT NULL COMMENT 'email',
  `phone` varchar(10) NOT NULL COMMENT 'phone no',
  `message` varchar(50) NOT NULL COMMENT 'message'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`email`, `phone`, `message`) VALUES
('aditya@gmail.com', '0987654321', ''),
('khadn@gmail.com', '09876543', 'hello'),
('hello@gmail.com', '8130645144', 'add foreign sites also'),
('pulkit@gmail.com', '867238212', 'hiii');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `pass`) VALUES
('C009', 'password'),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `train_id` varchar(5) NOT NULL,
  `service_id` varchar(5) NOT NULL,
  `place1` varchar(15) NOT NULL DEFAULT 'delhi',
  `place2` varchar(15) NOT NULL,
  `class` varchar(10) NOT NULL,
  `cost` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_id`, `service_id`, `place1`, `place2`, `class`, `cost`) VALUES
('T001', 'S087', 'delhi', 'mumbai', 'sleeper', 1000),
('T003', 'S071', 'delhi', 'goa', '2-ac', 5000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
