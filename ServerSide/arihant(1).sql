-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2016 at 01:38 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arihant`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `ID` int(50) NOT NULL COMMENT 'primary key',
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Account_Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Will have the accounts';

-- --------------------------------------------------------

--
-- Table structure for table `acc_user_info`
--

CREATE TABLE IF NOT EXISTS `acc_user_info` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Street_1` varchar(50) NOT NULL,
  `Street_2` varchar(50) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Pincode` varchar(6) NOT NULL,
  `MobileNo` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Account_ID` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_user_info`
--

INSERT INTO `acc_user_info` (`ID`, `Name`, `Street_1`, `Street_2`, `Area`, `City`, `District`, `State`, `Pincode`, `MobileNo`, `Email`, `Account_ID`) VALUES
(1, 'sdfsdfsdf', 'sfsd', 'sdfsdf', 'sdfsdf', 'sdfsdfsd', 'fsdfsdfs', 'dfdsfsdf', '609001', '1234657890', 'sfsfsdfsdf@yasdahsd.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(50) NOT NULL,
  `BrandLogo` blob NOT NULL,
  `BrandDesc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `CategoryLogo` blob NOT NULL,
  `CategoryDesc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat_local`
--

CREATE TABLE IF NOT EXISTS `chat_local` (
  `MessageID` int(11) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `ReceiverID` int(11) NOT NULL,
  `Msg_time_stamp` int(11) NOT NULL,
  `Message_Content` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `FeedbackID` int(11) DEFAULT NULL,
  `Feedback_Type` varchar(50) NOT NULL,
  `Feedback_Content` varchar(150) NOT NULL,
  `Feedback_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Feedback_Author` varchar(50) NOT NULL COMMENT 'Foregin key of accoutns'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) NOT NULL,
  `Account_ID` varchar(50) NOT NULL,
  `Order_Amount` int(50) NOT NULL,
  `Delivered_By` date NOT NULL,
  `Order_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `Account_ID`, `Order_Amount`, `Delivered_By`, `Order_Date`) VALUES
(1, '1234', 5000, '2016-01-20', '2016-01-01 16:27:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `InstanceID` int(11) NOT NULL,
  `ProductID` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `OrderID` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`InstanceID`, `ProductID`, `Quantity`, `OrderID`) VALUES
(1, '22234', '23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Product Desc` varchar(150) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Brand` varchar(50) NOT NULL COMMENT 'foreign key',
  `Price` int(10) NOT NULL COMMENT 'foreign key',
  `RetailerPrice` int(10) NOT NULL,
  `Capacity` int(10) NOT NULL,
  `Usage` varchar(50) NOT NULL,
  `ProductImage` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`ID`) COMMENT 'primary', ADD KEY `ID` (`ID`);

--
-- Indexes for table `acc_user_info`
--
ALTER TABLE `acc_user_info`
  ADD PRIMARY KEY (`ID`), ADD KEY `ID` (`ID`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`BrandID`), ADD KEY `BrandID` (`BrandID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`), ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `chat_local`
--
ALTER TABLE `chat_local`
  ADD KEY `MessageID` (`MessageID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD KEY `FeedbackID` (`FeedbackID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`), ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`InstanceID`), ADD KEY `InstanceID` (`InstanceID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`), ADD KEY `ProductID` (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT COMMENT 'primary key';
--
-- AUTO_INCREMENT for table `acc_user_info`
--
ALTER TABLE `acc_user_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `InstanceID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
