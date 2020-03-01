 -- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:33065
-- Generation Time: Sep 29, 2015 at 05:34 PM
-- Server version: 5.5.40
-- PHP Version: 5.5.24
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
--
-- Database: `tobedev_example`
--
-- --------------------------------------------------------
--
-- Table structure for table `tbl_event`
--
CREATE TABLE IF NOT EXISTS `tbl_event` (
  `event_id` int(3) NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_start` date NOT NULL,
  `event_end` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
--
-- Dumping data for table `tbl_event`
--
INSERT INTO `tbl_event` (`event_id`, `event_title`, `event_start`, `event_end`) VALUES
(1, 'test1', '2015-09-30', '2015-09-30'),
(2, 'test2', '2015-09-21', '2015-09-21');
--
-- Indexes for dumped tables
--
--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;