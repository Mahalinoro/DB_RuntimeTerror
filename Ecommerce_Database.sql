-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 06:25 PM
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
(3, 'David ', 'Thierry', 'Kigali', 'Nyamirambo', 'KG 723 St', 'davitheiry@gmail.com', '+250785564737', '1998-12-15', 'Male'),
(4, 'Gloria', 'Bonaventure', 'Kigali', 'Nyarutarama', 'KG 302 St', 'gloraibonav@gmail.com', '+250745675983', '1995-09-10', 'Female'),
(5, 'Nana', 'Fiston', 'Kigali', 'Gikondo', 'KG 905 St', 'nana.fiston12@gmail.com', '+250784789564', '1994-07-23', 'Female'),
(6, 'Iradukunda', 'Daniel', 'Kigali', 'Kacyiru', 'KG 502 St', 'iradukunda.dan@gmail.com', '+250784367856', '1998-05-12', 'Male'),
(7, 'Winny', 'Patient', 'Kigali', 'Remera', 'KG 345 St', 'winnypatient23@gmail.com', '+2507867548367', '1995-04-17', 'Female'),
(8, 'Janvier', 'Pacifique', 'Kigali', 'Kakyiru', 'KG 214 St', 'Janvier.Pacifique@gmail.com', '+250785320142', '1994-11-13', 'Male'),
(9, 'Diane ', 'Gasaro', 'Kigali', 'Kwamusisi', 'KG 255 St', 'd.gasaro@gmail.com', '+250785641201', '2000-11-20', 'Female'),
(10, 'Samuel', 'Abijiru', 'Kigali', 'Nyarutarama', 'KG 214 St', 'a.samuel@alustudent.com', '+250785310702', '1998-08-18', 'Male'),
(11, 'Diane', 'Tuisenge', 'Kigali', 'Nyamirambo', 'KG10 St', 'diane.tuisenge@yahoo.com', '+250785410245', '1999-04-21', 'Female'),
(12, 'Cedric', 'Nyamesindu', 'Kigali', 'Gisozi', 'KG 204 St', 'c.nyamesindu@gmail.com', '+250785412040', '1998-02-21', 'Male'),
(13, 'Sandra', 'Gatete', 'Kigali', 'Kanombe', 'KG 45 St', 's.gatete@gmail.com', '+250785410754', '1998-12-30', 'Female'),
(14, 'Larvina', 'Cofie', 'Kigali', 'Gikondo', 'KG 102 St', 'larvina.c@gamil.com', '+250784512161', '2000-04-20', 'Female'),
(15, 'Innocent', 'Mutoni', 'Kigali', 'Gasabo', 'KG 601 St', 'i.mutoni@gmail.com', '+250787965164', '1995-10-04', 'Male'),
(16, 'Kevin', 'Umutesi', 'Gisenyi', 'Rubavu', 'GS 520 St', 'kevumu21@gmail.com', '+250787596210', '1980-11-04', 'Male'),
(17, 'Nancy', 'Mugabe', 'Gisenyi', 'Huye', 'GS 255 St', 'n.mugabe@yahoo.fr', '+250789632452', '1998-12-13', 'Female'),
(18, 'Christian', 'Nsegimana', 'Butare', 'Muhanga', 'BT 588 St', 'christmana@yahoo.fr', '+250780475962', '1997-08-14', 'Male'),
(19, 'Jimmy', 'Ingabire', 'Gisenyi', 'Rubavu', 'GS 45 St', 'jingbire1@gmail.com', '+250789683412', '1990-04-18', 'Male'),
(20, 'Joshua', 'Umutesi', 'Kigali', 'Nyarugenge', 'KG 548 St', 'joshuau21@gmail.com', '+250787965142', '1987-02-11', 'Male'),
(21, 'Nicole', 'Ishimwe', 'Kigali', 'Nyarugenge', 'KG 596 St', 'n.ishimwe@yahoo.fr', '+250787963415', '1994-12-13', 'Female');

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
  `Product_ID` int(11) DEFAULT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Order_ID`, `Account_ID`, `To_Street`, `To_City`, `To_District`, `Product_ID`, `Quantity`) VALUES
(1, 1, 'KG 225 St', 'Kigali', 'Remera', 2, 1),
(2, 7, 'KG 243 St', 'Kigali', 'Gishushu', 6, 3),
(3, 4, 'KG 302 St', 'Kigali', 'Nyarutarama', 3, 2),
(4, 2, 'KG 312 St', 'Kigali', 'Remera', 1, 1),
(5, 3, 'KG 732 St', 'Kigali', 'Gikondo', 13, 1),
(6, 6, 'KG 502 St', 'Kigali', 'Kacyiru', 13, 2),
(7, 5, 'KG 905 St', 'Kigali', 'Gikondo', 6, 1),
(8, 14, 'KG 201 St', 'Kigali', 'Gasabo', 12, 1),
(9, 8, 'KG 75 St', 'Kigali', 'Kakyiru', 13, 1),
(10, 9, 'KG 24 St', 'Kigali', 'Nyamirambo', 8, 1),
(11, 12, 'KG 111 St', 'Kigali', 'Gisozi', 10, 1),
(12, 10, 'KG 141 St', 'Kigali', 'Gikondo', 14, 1),
(13, 11, 'KG 331 St', 'Kigali', 'Kicukiro', 9, 1),
(14, 13, 'KG 221 St', 'Kigali', 'Nyarugenge', 11, 1),
(15, 15, 'KG 601 St', 'Kigali', 'Gasabo', 15, 2),
(16, 15, 'KG 601 St', 'Kigali', 'Gasabo', 20, 2),
(17, 16, 'GS 520 St', 'Gisenyi', 'Rubavu', 16, 1),
(18, 17, 'GS 255 St', 'Gisenyi', 'Huye', 16, 5),
(19, 18, 'BT 588 St', 'Butare', 'Muhanga', 18, 2),
(20, 19, 'GS 45 St', 'Gisenyi', 'Rubavu', 17, 1),
(21, 20, 'KG 548 St', 'Kigali', 'Nyarugenge', 19, 2),
(22, 21, 'KG 596 St', 'Kigali', 'Nyarugenge', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Payment_ID` int(11) NOT NULL,
  `Order_ID` int(11) DEFAULT NULL,
  `Total_Amount` decimal(20,2) DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Payment_Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`Payment_ID`, `Order_ID`, `Total_Amount`, `Timestamp`, `Payment_Status`) VALUES
(1, 2, '400000.00', '2019-10-17 05:25:14', 1),
(2, 3, '200000.00', '2019-11-01 09:07:16', 1),
(3, 5, '131313.00', '2019-11-07 12:18:08', 1),
(4, 1, '99000.00', '2019-11-18 10:15:04', 1),
(5, 4, '250000.00', '2019-11-14 11:49:18', 1),
(6, 6, '131313.00', '2019-11-24 16:26:09', 1),
(7, 7, '400000.00', '2019-11-23 15:22:08', 1),
(8, 8, '20000.00', '2019-10-16 13:16:28', 1),
(9, 9, '5200000.00', '2019-11-11 08:35:07', 0),
(10, 10, '845777.99', '2019-11-04 06:45:19', 1),
(11, 11, '750255.99', '2019-11-15 14:10:13', 0),
(12, 12, '5000000.00', '2019-11-28 12:19:43', 0),
(13, 13, '240500.00', '2019-11-27 18:29:18', 1),
(14, 14, '8900000.00', '2019-11-25 12:16:28', 1),
(15, 15, '1530000.00', '2019-10-08 06:28:40', 1),
(16, 16, '1800000.00', '2019-11-15 15:19:32', 1),
(17, 17, '850000.00', '2019-10-08 08:39:48', 1),
(18, 18, '4250000.00', '2019-11-03 04:38:30', 1),
(19, 19, '500000.00', '2019-08-07 10:40:12', 1),
(20, 20, '125000.00', '2019-10-09 08:12:24', 1),
(21, 21, '1700000.00', '2019-11-15 07:30:11', 1),
(22, 22, '125000.00', '2019-11-26 05:26:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Product_Category` varchar(50) DEFAULT NULL,
  `Product_Name` varchar(100) DEFAULT NULL,
  `Price` decimal(20,2) DEFAULT NULL,
  `Details` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Category`, `Product_Name`, `Price`, `Details`) VALUES
(1, 'Laptops', 'Lenovo Chromebook ', '250000.00', '11.6 Touchscreen 4GB RAM 64GB eMMC SSD Laptop'),
(2, 'Smartphones', 'Hisense Infinity F24', '99000.00', '5.99\" 16GB Unlocked GSM 4G Android Smartphone'),
(3, 'Tablets', 'Apple iPad® 1', '200000.00', '0.2 Tablet with Keyboard Case Earbuds and Stylus'),
(4, 'Smart_watches', 'Samsung Galaxy 40mm Active Smart Watch', '110000.00', 'Samsung Galaxy 40mm Active Smart Watch'),
(5, 'Tablets', 'Apple Watch® Series 3 with GPS and Extra Band', '149900.00', 'Apple Watch® Series 3 with GPS and Extra Band'),
(6, 'Laptops', 'HP 17.3 AMD Ryzen', '400000.00', 'HP 17.3 AMD Ryzen 3 8GB RAM 512GB SSD HD Laptop Bundle'),
(7, 'Laptops', 'Lenovo 14\"', '360000.00', '4GB RAM & 128GB SSD Pentium Gold IdeaPad Laptop'),
(8, 'Laptops', 'HP Stream 2-Pack 14\"', '845777.99', 'HP Stream 2-Pack 14\" Laptops with Microsoft Office 365 & Tech Support'),
(9, 'Watches', 'Fitbit Versa 2 Smartwatch', '240500.00', 'Fitbit Versa 2 Smartwatch and Activity Tracker with Alexa Built-In'),
(10, 'Laptops', 'HP 17.3\" Intel Pentium', '750255.99', 'HP 17.3\" Intel Pentium 8GB RAM, 1TB HDD Touchscreen Laptop Bundle'),
(11, 'Laptops', 'Dell Alienware M15', '8900000.00', 'Dell Alienware M15 15.6\" i7 16GB 512GB RTX 2060 Gaming Laptop'),
(12, 'Laptop', 'Dell Inspiron ', '20000.00', 'Dell Inspiron 13-7370, 13.3\" Touch, Intel i7, 16GB RAM, 512GB Notebook'),
(13, 'Laptops', 'HP 15\" HD Touch AMD Athlon', '5200000.00', 'HP 15\" HD Touch AMD Athlon 8GB RAM 256GB SSD Laptop with Tech'),
(14, 'Laptops', 'HP 17.3\" AMD A9 Dual Core', '5000000.00', 'HP 17.3\" AMD A9 Dual Core 8GB 256GB SSD Touch Laptop with Voucher'),
(15, 'Smartphones', 'Apple iPhone 11 Pro', '765000.00', 'Dual-lens rear camera, Ultra Wide and Wide lenses, 6.1\" Liquid Retina display, 64GB'),
(16, 'Laptops', 'Huawei MateBook 11 Pro', '850000.00', 'OS: Ubuntu 19.0, RAM: 8go, External Storage: 128Go, Processor: 2.4GHz intel core i5 8th'),
(17, 'Smartphones', 'Infinix Hot6 Pro', '125000.00', 'Android 9.0, RAM: 2Go, ROM: 32Go, Processor: 1.7Ghz '),
(18, 'Laptops', 'MacBook Pro 13', '250000.00', 'SSD: 128Go'),
(19, 'Laptops', 'Asus Zenbook 14', '850000.00', 'Windows 10, 8th Gen Intel Core i7 processor'),
(20, 'Laptops', 'ROG Zephyrus G GA502', '900000.00', 'GeForce GTX 1660 Ti, Windows 10'),
(21, 'Smartphones', 'Infinix S4', '150000.00', 'Android 9.0, RAM: 2Go, ROM: 32Go, Processor: 1.7Ghz');

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

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`Shipping_ID`, `Payment_ID`, `Shipping_Status`, `Shipping_Charges`, `Shipping_Date`, `Delivery_Time`, `Delivery_Status`) VALUES
(1, 1, 1, '14000.00', '2019-11-04 09:15:00', '2019-11-05 09:14:02', 1),
(2, 2, 1, '12000.00', '2019-11-10 12:42:27', '2019-11-11 08:30:00', 1),
(3, 4, 1, '15000.00', '2019-11-12 15:17:06', '2019-11-14 11:16:33', 1),
(4, 3, 1, '8000.00', '2019-11-10 15:11:19', '2019-11-12 14:15:00', 1),
(5, 6, 1, '13000.00', '2019-11-25 12:18:00', '2019-11-26 17:21:00', 1),
(6, 7, 1, '12000.00', '2019-11-28 13:18:06', '2019-11-30 13:17:00', 0),
(7, 5, 1, '10000.00', '2019-11-29 00:00:00', '2019-12-11 14:25:00', 0),
(8, 13, 0, '2000.00', '2019-12-03 10:08:23', '2020-01-24 05:32:31', 0),
(9, 10, 0, '8500.00', '2019-11-30 10:23:19', '2019-12-30 14:15:00', 0),
(10, 8, 0, '2500.00', '2019-12-01 00:00:00', '2020-01-28 12:00:00', 0),
(11, 9, 0, '9000.00', '2019-12-18 06:00:00', '2020-01-23 00:31:00', 0),
(12, 14, 0, '2800.00', '2019-12-28 04:00:00', '2020-02-01 09:06:00', 0),
(13, 11, 0, '8004.00', '2020-01-01 11:13:00', '2020-02-01 12:13:00', 0),
(14, 12, 0, '7500.00', '2020-02-01 14:15:00', '2020-02-20 05:00:00', 0),
(15, 15, 1, '2500.00', '2019-10-08 12:28:40', '2019-10-09 08:28:40', 1),
(16, 16, 1, '1500.00', '2019-11-15 17:19:32', '2019-11-16 08:19:32', 1),
(17, 17, 1, '2500.00', '2019-10-08 12:39:48', '2019-10-09 07:39:04', 1),
(18, 18, 1, '3000.00', '2019-11-03 06:38:30', '2019-11-04 07:38:03', 0),
(19, 19, 1, '2000.00', '2019-08-07 12:40:10', '2019-08-08 07:40:01', 1),
(20, 20, 1, '1500.00', '2019-10-09 09:12:20', '2019-10-10 07:12:02', 1),
(21, 21, 1, '2500.00', '2019-11-15 09:30:11', '2019-11-16 07:30:11', 1),
(22, 22, 1, '2500.00', '2019-11-26 07:26:23', '2019-11-27 07:26:23', 1);

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
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`Account_ID`, `Customer_ID`, `Account_Name`) VALUES
(1, 1, 'WilliamG'),
(2, 2, 'Peric'),
(3, 3, 'davidotheirry'),
(4, 4, 'GloriaB'),
(5, 5, 'Nana'),
(6, 6, 'Daniel'),
(7, 7, 'WinnyP'),
(8, 8, 'Janvier_'),
(9, 9, 'Gasaro-d'),
(10, 10, 'Sam_A'),
(11, 11, 'Tuisenge_'),
(12, 12, 'Nyamesindu'),
(13, 13, 'Gatete'),
(14, 14, 'Larvina.c'),
(15, 15, 'Innocent'),
(16, 16, 'Kevin'),
(17, 17, 'Nancy'),
(18, 18, 'Christian'),
(19, 19, 'Jimmy'),
(20, 20, 'Joshua'),
(21, 21, 'Nicole');

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
  ADD KEY `FK` (`Order_ID`);

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
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
