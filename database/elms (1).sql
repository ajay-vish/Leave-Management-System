-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 07:11 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin', '2019-04-11 07:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'COMPUTER ENGINEERING', 'CSE', 'CSE001', '2017-11-01 07:16:25'),
(2, 'MECHANICAL ENGINEERING', 'MECH', 'MECH001', '2017-11-01 07:19:37'),
(3, 'ELECTRONIC AND TELECOMMUNICATION', 'EXTC', 'EXTC', '2017-12-02 21:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, 'EMP10806121', 'swaraj', 'swaraj@gmail.com', 'swaraj', 'Male', '1 December, 1999', 'COMPUTER ENGINEERING', 'ekta chs', 'Nerul', 'India', '9857555555', 1, '2017-11-10 11:29:59'),
(2, 'DEMP2132', 'Amit', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 February, 1990', 'Information Technology', 'New Delhi', 'Delhi', 'India', '8587944255', 1, '2017-11-10 13:40:02'),
(3, 'Anil123', 'Anil Suhas Patil', 'anil@gmail.com', '71b9b5bc1094ee6eaeae8253e787d654', 'Male', '2 March, 1998', 'COMPUTER ENGINEERING', 'B-301, Riddhi Co. Op. Hsg. Ltd, Sector- 13, Khanda Colony, New Panvel (W), Dist. Raigad.', 'Panvel', 'India', '9004802528', 1, '2019-04-25 16:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `l1` varchar(400) NOT NULL,
  `l11` varchar(400) NOT NULL DEFAULT 'Pending',
  `l2` varchar(400) NOT NULL,
  `l22` varchar(400) NOT NULL DEFAULT 'Pending',
  `l3` varchar(400) NOT NULL,
  `l33` varchar(400) NOT NULL DEFAULT 'Pending',
  `l4` varchar(400) NOT NULL,
  `l44` varchar(400) NOT NULL DEFAULT 'Pending',
  `l5` varchar(400) NOT NULL,
  `l55` varchar(400) NOT NULL DEFAULT 'Pending',
  `l6` varchar(400) NOT NULL,
  `l66` varchar(400) NOT NULL DEFAULT 'Pending',
  `l7` varchar(400) NOT NULL,
  `l77` varchar(400) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`, `l1`, `l11`, `l2`, `l22`, `l3`, `l33`, `l4`, `l44`, `l5`, `l55`, `l6`, `l66`, `l7`, `l77`) VALUES
(7, 'Casual Leave', '30/11/2017', '29/10/2017', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', '2017-11-19 13:11:21', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\r\n', '2017-12-02 23:26:27 ', 2, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(8, 'Medical Leave test', '21/10/2017', '25/10/2017', 'test description test descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest descriptiontest description', '2017-11-20 11:14:14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-12-02 23:24:39 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(9, 'Medical Leave test', '08/12/2017', '12/12/2017', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\r\n', '2017-12-02 18:26:01', 'v', '2019-04-20 11:39:31 ', 2, 1, 2, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(10, 'Restricted Holiday(RH)', '25/12/2017', '25/12/2017', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', '2017-12-03 08:29:07', 'Lorem Ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.', '2017-12-03 14:06:12 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(11, 'Medical Leave test', '12/12/2019', '13/12/2019', 'I need urgent leave.', '2019-04-11 07:16:57', 'Yes!!\r\n', '2019-04-11 12:49:01 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(12, 'Medical Leave test', '12/12/2019', '13/12/2019', 'sdf\r\n', '2019-04-11 07:32:15', 'sd', '2019-04-11 13:03:22 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(13, 'Medical Leave test', '12/04/2019', '14/04/2019', 'mala pahije aahey', '2019-04-11 09:20:27', 'ji le aapne jindi', '2019-04-11 14:51:35 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(14, 'Medical Leave test', '12/03/2018', '13/04/2018', 'need', '2019-04-20 05:09:02', 'er', '2019-04-20 10:39:55 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(15, 'Casual Leave', '12/12/2012', '13/12/2012', 's', '2019-04-20 07:00:20', 'sad', '2019-04-20 12:32:05 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(16, 'Medical Leave test', '12/12/2012', '13/12/2012', 'fjfj', '2019-04-20 08:09:02', 'bhj', '2019-04-20 13:39:48 ', 2, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(17, 'Medical Leave test', '12/12/2012', '11/12/2012', 'as', '2019-04-20 09:49:04', 'ex', '2019-04-20 15:26:01 ', 1, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(18, 'Medical Leave test', '12/12/2012', '13/12/2012', '21121', '2019-04-20 09:49:24', 'sdf', '2019-04-20 15:20:25 ', 2, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(19, 'Casual Leave', '12/03/2019', '13/03/2019', 'edfv', '2019-04-20 09:54:42', 'gcghc', '2019-04-20 15:26:48 ', 2, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(20, 'Casual Leave', '12/12/2012', '11/12/2012', 'df', '2019-04-25 14:26:14', NULL, NULL, 0, 1, 1, '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending', '', 'Pending'),
(21, 'Casual Leave', '12/12/2012', '13/12/2001', 'sd', '2019-04-25 16:50:53', NULL, NULL, 0, 1, 1, 'swaraj', 'Approved', 'n', 'Pending', 'n', 'Pending', 'n', 'Pending', 'n', 'Pending', 'n', 'Pending', 'n', 'Pending'),
(22, 'Casual Leave', '12/05/2019', '12/05/2019', 'lolololol', '2019-04-26 16:50:38', 'poi', '2019-04-27 20:37:15 ', 1, 1, 1, 'Anil Suhas Patil', 'Pending', 'Anil Suhas Patil', 'Pending', 'NA', 'Pending', 'NA', 'Pending', 'aditya', 'Pending', 'na', 'Pending', 'na', 'Pending'),
(23, 'Medical Leave test', '12/12/2013', '14/12/2013', 'Urgent sick leave', '2019-04-27 15:10:55', NULL, NULL, 0, 1, 1, 'Anil Patil', 'Pending', 'Sagar Naik', 'Pending', 'NA', 'Pending', 'NA', 'Pending', 'na', 'Pending', 'na', 'Pending', 'na', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Casual Leave ', '2017-11-01 12:07:56'),
(2, 'Medical Leave test', 'Medical Leave  test', '2017-11-06 13:16:09'),
(3, 'Restricted Holiday(RH)', 'Restricted Holiday(RH)', '2017-11-06 13:16:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
