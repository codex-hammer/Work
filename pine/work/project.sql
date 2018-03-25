-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2016 at 12:34 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid`
--

CREATE TABLE `bid` (
  `bid_id` int(11) NOT NULL,
  `proj_id` int(11) NOT NULL,
  `employee_email` varchar(120) NOT NULL,
  `employee_name` varchar(120) NOT NULL,
  `bid_amount` int(11) NOT NULL,
  `submit_time` date NOT NULL,
  `employer_email` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_register`
--

CREATE TABLE `employee_register` (
  `email_id` varchar(120) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `empid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_register`
--

INSERT INTO `employee_register` (`email_id`, `name`, `country`, `password`, `dob`, `empid`) VALUES
('tulika25.05@gmail.com', 'tulika', 'india', 'abcd', '1997-05-25', 5);

-- --------------------------------------------------------

--
-- Table structure for table `employer_register`
--

CREATE TABLE `employer_register` (
  `email_id` varchar(120) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer_register`
--

INSERT INTO `employer_register` (`email_id`, `name`, `country`, `password`, `empid`) VALUES
('sajal123@gmail.com', 'pine', 'india', 'abcd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_description` varchar(8000) NOT NULL,
  `max_bid` int(11) NOT NULL,
  `timesubmit` date NOT NULL,
  `employer_name` varchar(50) NOT NULL,
  `employer_email` varchar(60) NOT NULL,
  `min_bid` int(11) NOT NULL,
  `min_date` date NOT NULL,
  `employee_assigned` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_description`, `max_bid`, `timesubmit`, `employer_name`, `employer_email`, `min_bid`, `min_date`, `employee_assigned`) VALUES
(1, 'IOS', 'build an IOS app for your university Mess', 2300, '2016-12-22', 'pine', 'sajal123@gmail.com', 0, '0000-00-00', ''),
(3, 'java', 'game using java', 5000, '2017-05-05', 'pine', 'sajal123@gmail.com', 0, '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid`
--
ALTER TABLE `bid`
  ADD PRIMARY KEY (`bid_id`);

--
-- Indexes for table `employee_register`
--
ALTER TABLE `employee_register`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `employer_register`
--
ALTER TABLE `employer_register`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bid`
--
ALTER TABLE `bid`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_register`
--
ALTER TABLE `employee_register`
  MODIFY `empid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employer_register`
--
ALTER TABLE `employer_register`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
