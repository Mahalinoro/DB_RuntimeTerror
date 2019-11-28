-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 10:20 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Customer_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `Street_number` varchar(50) DEFAULT NULL,
  `Email_Address` varchar(50) DEFAULT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Customer_ID`, `First_Name`, `Last_Name`, `City`, `District`, `Street_number`, `Email_Address`, `Phone`, `Date_of_Birth`, `Gender`) VALUES
(1, 'William', 'Green', 'Kigali', 'Remera', 'KG 225 St', 'william.green@gmail.com', '+250788653465', '1998-10-02', 'Male'),
(2, 'Patrick', 'Eric', 'Kigali', 'City Center', 'KG 312 St', 'patrick12eric@yahoo.com', '+2507845763458', '1997-06-12', 'Male'),
(3, 'David ', 'Thierry', 'Kigali', 'Nyamirambo', 'KG 723 St', 'davitheiry@gmail.com', '+250785564737', '1998-12-15', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Order_ID` int(11) NOT NULL,
  `Account_ID` int(11) DEFAULT NULL,
  `To_Street` varchar(50) DEFAULT NULL,
  `To_City` varchar(50) DEFAULT NULL,
  `To_District` varchar(50) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Payment_ID` int(11) NOT NULL,
  `Account_ID` int(11) DEFAULT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `Total_Amount` decimal(20,2) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Payment_Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Product_Category` varchar(50) DEFAULT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Price` decimal(20,2) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Details` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `Shipping_ID` int(11) NOT NULL,
  `Payment_ID` int(11) DEFAULT NULL,
  `Shipping_Status` tinyint(1) DEFAULT NULL,
  `Shipping_Charges` decimal(20,2) DEFAULT NULL,
  `Shipping_Date` datetime DEFAULT NULL,
  `Delivery_Time` datetime DEFAULT NULL,
  `Delivery_Status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `Account_ID` int(11) NOT NULL,
  `Customer_ID` int(11) DEFAULT NULL,
  `Account_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `FK` (`Account_ID`,`Product_ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `FK` (`Account_ID`,`Order_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`Shipping_ID`),
  ADD KEY `FK` (`Payment_ID`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`Account_ID`),
  ADD KEY `FK` (`Customer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
