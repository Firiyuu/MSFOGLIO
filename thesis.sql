-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 06:31 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_of_materials`
--

CREATE TABLE `bill_of_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_of_materials`
--

INSERT INTO `bill_of_materials` (`id`, `project_id`, `item`, `quantity`, `amount`, `total`, `paid`) VALUES
(1, 1, 'dfgfd', 3, '6', '18', NULL),
(3, 2, 'Wordpress', 12, '22', '264', NULL),
(4, 5, 'wegfg', 5, '23', '115', NULL),
(5, 7, 'Bucket', 10, '50', '500', NULL),
(6, 8, 'dsvvds', 5, '50', '250', NULL),
(8, 10, 'sdasd', 2, '4', '8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cashflow`
--

CREATE TABLE `cashflow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cashflow`
--

INSERT INTO `cashflow` (`id`, `description`, `date_added`, `amount`, `type`, `transaction_date`, `project_id`) VALUES
(1, 'dfgdfg', '0000-00-00', '-34', 'out', '2019-03-13', 1),
(2, 'dfgdfgfgfg', '2019-03-15', '4545', 'OUT', '2019-03-22', 1),
(3, '54545', '2019-03-15', '5', 'IN', '2019-03-23', 1),
(4, 'Wordpress developer', '2019-03-15', '6', 'in', '2019-03-19', 2),
(5, 'dfgdfg', '2019-03-15', '50', 'in', '2019-03-22', 2),
(6, 'vdsvs', '2019-03-16', '43242', 'in', '2019-03-20', 5),
(7, 'Bayad', '2019-03-16', '50', 'in', '2019-03-13', 7),
(8, 'sfgs', '2019-03-16', '435', 'in', '2019-03-28', 8),
(9, 'ngfg', '0000-00-00', '10', 'in', '2019-04-23', 9),
(10, 'fgdsf', '2019-04-18', '342', 'in', '2019-04-08', 9),
(11, 'fbd', '2019-04-18', '435643', 'in', '2019-04-02', 10),
(12, 'For general purposes', '2019-04-18', '50', 'in', '2019-04-17', 11);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`) VALUES
(1, 'Equipment 1'),
(2, 'Equipment 2'),
(3, 'Equipment 3');

-- --------------------------------------------------------

--
-- Table structure for table `gantt_chart`
--

CREATE TABLE `gantt_chart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity` varchar(100) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `project_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gantt_chart`
--

INSERT INTO `gantt_chart` (`id`, `activity`, `date_added`, `date_start`, `date_end`, `project_id`) VALUES
(2, 'ddfjgjg', '2019-03-15', '2019-03-16', '2019-03-22', 1),
(3, 'fdgdf', '2019-03-15', '2019-03-16', '2019-03-21', 1),
(4, 'php ', '2019-03-15', '2019-03-15', '2019-03-17', 2),
(5, 'Html', '2019-03-15', '2019-03-18', '2019-03-21', 2),
(6, 'Wordpress, React JS', '2019-03-15', '2019-03-17', '2019-03-22', 2),
(7, 'sfa', '2019-03-16', '2019-03-19', '2019-03-20', 5),
(8, 'Something', '2019-03-16', '2019-03-12', '2019-03-24', 7),
(9, 'something', '2019-03-16', '2019-03-04', '2019-03-25', 8),
(10, 'SOEMTHING', '2019-03-16', '2019-03-22', '2019-03-31', 8),
(11, 'CHUCHU', '2019-03-16', '2019-03-13', '2019-03-18', 8),
(12, 'General Technical Requirements', '2019-04-18', '2019-04-02', '2019-04-03', 9),
(15, 'Move In', '2019-04-18', '2019-04-19', '2019-04-28', 10),
(16, 'Concrete Works - Concrete Footing', '2019-04-18', '2019-04-01', '2019-04-30', 10),
(17, 'Move In', '2019-04-18', '2019-04-19', '2019-04-29', 9),
(18, 'Earthworks - Clearing and Grubbing', '2019-04-18', '2019-04-01', '2019-04-30', 11),
(19, 'General Technical Requirements', '2019-04-18', '2019-05-01', '2019-05-31', 11),
(20, 'General Technical Requirements', '2019-04-22', '2019-04-01', '2019-04-23', 16),
(21, 'Move In', '2019-04-22', '2019-04-17', '2019-04-30', 16),
(22, 'Earthworks - Clearing and Grubbing', '2019-04-22', '2019-04-16', '2019-04-30', 16),
(23, 'Earthworks - Backfilling and Compaction', '2019-04-22', '2019-04-29', '2019-04-30', 16),
(24, 'General Technical Requirements', '2019-04-22', '2019-04-01', '2019-04-30', 15),
(25, 'General Technical Requirements', '2019-04-24', '2019-04-02', '2019-04-30', 15);

-- --------------------------------------------------------

--
-- Table structure for table `gantt_chart_resource`
--

CREATE TABLE `gantt_chart_resource` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `rate` decimal(10,0) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `gantt_chart_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resource_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gantt_chart_resource`
--

INSERT INTO `gantt_chart_resource` (`id`, `quantity`, `duration`, `rate`, `total`, `gantt_chart_id`, `resource_id`, `project_id`) VALUES
(1, 1, 1, '20', '1', 20, 1, NULL),
(2, 1, 1, '10', '1', 20, 2, NULL),
(3, 1, 1, '30', '1', 20, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `project_location` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `date_added`, `date_start`, `date_end`, `duration`, `project_location`) VALUES
(15, 'Sample w/ Location 4', '2019-04-22', '2019-04-02', '2019-04-30', 28, 'Location Edited'),
(16, 'Iligan Waterworks', '2019-04-22', '2019-04-01', '2019-04-30', 29, 'Diri Iligan');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `name`, `category`) VALUES
(1, 'Engineer', 'E'),
(2, 'Owner', 'E'),
(3, 'Checker', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'user', '4f5cec75c744bd39b5126debbb7cffb8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_of_materials`
--
ALTER TABLE `bill_of_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cashflow`
--
ALTER TABLE `cashflow`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gantt_chart`
--
ALTER TABLE `gantt_chart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gantt_chart_resource`
--
ALTER TABLE `gantt_chart_resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `gantt_chart_id` (`gantt_chart_id`),
  ADD KEY `resource_id` (`resource_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_of_materials`
--
ALTER TABLE `bill_of_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cashflow`
--
ALTER TABLE `cashflow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gantt_chart`
--
ALTER TABLE `gantt_chart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `gantt_chart_resource`
--
ALTER TABLE `gantt_chart_resource`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `gantt_chart_resource`
--
ALTER TABLE `gantt_chart_resource`
  ADD CONSTRAINT `gantt_chart_resource_ibfk_1` FOREIGN KEY (`gantt_chart_id`) REFERENCES `gantt_chart` (`id`),
  ADD CONSTRAINT `gantt_chart_resource_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`),
  ADD CONSTRAINT `gantt_chart_resource_ibfk_3` FOREIGN KEY (`project_id`) REFERENCES `resources` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
