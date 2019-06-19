-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2017 at 01:00 PM
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
-- Database: `Aditya`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `cust_id` varchar(5) DEFAULT NULL,
  `address` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`cust_id`, `address`, `city`, `state`, `zip`) VALUES
('C002', 'B block', 'Delhi', 'Delhi', 654321),
('C003', 'D block', 'Gurugram', 'Haryana', 567890),
('C004', 'A block', 'noida', 'UPh', 201301),
('C004', 'A block', 'noida', 'UP', 201301);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `Service_id` varchar(5) DEFAULT NULL,
  `Cust_id` varchar(5) DEFAULT NULL,
  `Amount_due` int(6) DEFAULT NULL,
  `Amount_Paid` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Service_id`, `Cust_id`, `Amount_due`, `Amount_Paid`) VALUES
('S001', 'C005', 1000, 4000),
('S010', 'C004', 300, 2000),
('S014', 'C002', 3000, 200),
('S014', 'C003', 3000, 200),
('S023', 'C001', 0, 4000),
('S023', 'C002', 1000, 3000),
('S023', 'C003', 2000, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `bus_id` varchar(5) NOT NULL,
  `service_id` varchar(5) DEFAULT NULL,
  `place1` varchar(15) DEFAULT NULL,
  `place2` varchar(15) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `cost` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`bus_id`, `service_id`, `place1`, `place2`, `type`, `cost`) VALUES
('B001', 'S013', 'delhi', 'mumbai', 'sleeper', 2000),
('B002', 'S014', 'delhi', 'jaipur', 'deluxe', 1000),
('B003', 'S015', 'delhi', 'goa', 'semideluxe', 2200),
('B004', 'S016', 'delhi', 'puducherry', 'deluxe', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `cust_id` varchar(5) NOT NULL,
  `cust_firstname` varchar(15) DEFAULT NULL,
  `cust_lastname` varchar(15) DEFAULT NULL,
  `phoneno` int(11) DEFAULT NULL,
  `nationality` varchar(15) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` varchar(5) NOT NULL,
  `cust_firstname` varchar(15) DEFAULT NULL,
  `cust_lastname` varchar(15) DEFAULT NULL,
  `phoneno` int(11) DEFAULT NULL,
  `nationality` varchar(15) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_firstname`, `cust_lastname`, `phoneno`, `nationality`, `age`, `gender`) VALUES
('C001', 'Himanshu', 'Gupta', 1234567890, 'Indian', 17, 'M'),
('C002', 'Ish', 'Raju', 1122334455, 'Indian', 18, 'M'),
('C003', 'Amol', 'Sharma', 1133557799, 'Indian', 19, 'M'),
('C004', 'Himanshu', 'Kapoor', 1231231231, 'Indian', 19, 'M'),
('C005', 'sample ', 'Customer', 1234567899, 'Indian', 19, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` varchar(5) NOT NULL,
  `service_id` varchar(5) DEFAULT NULL,
  `place1` varchar(15) DEFAULT NULL,
  `place2` varchar(15) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `cost` int(6) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `service_id`, `place1`, `place2`, `class`, `cost`, `Date`) VALUES
('F001', 'S009', 'delhi', 'mumbai', 'economy', 3500, '2017-11-02'),
('F002', 'S010', 'delhi', 'jaipur', 'business', 2000, '2017-11-01'),
('F003', 'S011', 'delhi', 'goa', 'economy', 2800, '2017-11-04'),
('F004', 'S012', 'delhi', 'puducherry', 'economy', 3500, '2017-10-04'),
('F005', 'S017', 'delhi', 'mumbai', 'economy', 4000, '2017-11-02'),
('F006', 'S018', 'delhi', 'deheradun', 'economy', 6000, '2017-11-02'),
('F007', 'S019', 'delhi', 'jaipur', 'economy', 2000, '2017-11-02'),
('F008', 'S020', 'delhi', 'bengaluru', 'economy', 3000, '2017-11-02'),
('F009', 'S021', 'delhi', 'bengaluru', 'business', 5000, '2017-11-03'),
('F010', 'S022', 'delhi', 'bengaluru', 'business', 4000, '2017-10-03'),
('F011', 'S023', 'delhi', 'hydrabad', 'economy', 4000, '2017-10-09'),
('F012', 'S024', 'delhi', 'mumbai', 'economy', 1000, '2017-10-09'),
('F013', 'S025', 'delhi', 'nepal', 'economy', 8000, '2017-10-09'),
('F014', 'S026', 'delhi', 'nepal', 'economy', 8000, '2017-11-04'),
('F015', 'S027', 'delhi', 'bengaluru', 'economy', 5000, '2017-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `hello`
--

CREATE TABLE `hello` (
  `hello` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hello`
--

INSERT INTO `hello` (`hello`) VALUES
('f');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` varchar(5) NOT NULL,
  `service_id` varchar(5) DEFAULT NULL,
  `place` varchar(15) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `cost` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `service_id`, `place`, `duration`, `cost`) VALUES
(' P001', 'S001', 'puducherry', '3 days', 10000),
(' P002', 'S002', 'mumbai', '3 days', 12000),
(' P003', 'S003', 'jaipur', '4 days', 11000),
(' P004', 'S004', 'goa', '5 days', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `train_id` varchar(5) NOT NULL,
  `service_id` varchar(5) DEFAULT NULL,
  `place1` varchar(15) DEFAULT NULL,
  `place2` varchar(15) DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `cost` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`train_id`, `service_id`, `place1`, `place2`, `class`, `cost`) VALUES
('T001', 'S005', 'delhi', 'mumbai', 'sleeper', 1000),
('T002', 'S006', 'delhi', 'jaipur', '2-ac', 1800),
('T003', 'S007', 'delhi', 'goa', '2-ac', 2000),
('T004', 'S008', 'delhi', 'puducherry', 'sleeper', 1800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD KEY `for_cust` (`cust_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD KEY `CON1` (`Cust_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`train_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `for_cust` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `CON1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
