-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2018 at 11:47 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_staff`
--

CREATE TABLE `add_staff` (
  `job_type` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_staff`
--

INSERT INTO `add_staff` (`job_type`, `id`) VALUES
('Cashier', 1),
('Chef', 2),
('Waiter', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `Staff_Id` int(11) NOT NULL,
  `shift_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`Staff_Id`, `shift_time`) VALUES
(12, '10:00 AM - 4:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `Staff_Id` int(11) NOT NULL,
  `Delicacy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`Staff_Id`, `Delicacy`) VALUES
(13, 'pizza'),
(14, 'Pasta');

-- --------------------------------------------------------

--
-- Table structure for table `c_table`
--

CREATE TABLE `c_table` (
  `Customer_Id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `Is_Paid` int(11) DEFAULT '0',
  `status` varchar(20) DEFAULT 'Not_Ready'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_table`
--

INSERT INTO `c_table` (`Customer_Id`, `name`, `email`, `contact`, `Is_Paid`, `status`) VALUES
(65, 'yesha', 'yesha@gmail.com', 9821212320, 1, 'Paid'),
(66, 'nisarg', 'nisarg@gmail.com', 9876543212, 1, 'Paid'),
(67, 'disheen', 'sdisheen@gmail.com', 322323232321, 1, 'Paid'),
(68, 'Sneha', 'sneha@gmail.com', 94443928192, 1, 'Paid'),
(69, 'disheen11', 'sdisheen@gmail.com', 87654323456, 1, 'Paid'),
(70, 'mahima', 'mahima@gmail.com', 8765432345, 1, 'Paid'),
(71, 'vatsal', 'vatsal@gmail.com', 96532356565, 1, 'Paid'),
(72, 'harshi', 'harshi@gmail.com', 98765346565, 1, 'Paid'),
(73, 'shivani', 'sjhjhswu@gmail.com', 3456789321, 1, 'Paid'),
(74, 'Rupal', 'Rupal@gmail.com', 92766874329, 1, 'Paid'),
(75, 'jash', 'jash@gmail.com', 983245678765, 1, 'Paid'),
(76, 'Kunal', 'Kunal@gmail.com', 967653456, 1, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `Item_No` int(5) NOT NULL,
  `Item_Name` varchar(50) NOT NULL,
  `Price` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`Item_No`, `Item_Name`, `Price`) VALUES
(1, 'Pizza', 250),
(2, 'White Sauce Pasta', 300),
(3, 'Red Sauce Pasta', 290),
(4, 'Paneer Chilli Dry', 269),
(5, 'Cheese Fondue', 250),
(6, 'Nachos', 200),
(7, 'Noodles', 320);

-- --------------------------------------------------------

--
-- Table structure for table `left_food`
--

CREATE TABLE `left_food` (
  `NGO` varchar(20) NOT NULL,
  `Item_Name` varchar(20) NOT NULL,
  `Item_No` int(11) NOT NULL,
  `Best_use_before` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `left_food`
--

INSERT INTO `left_food` (`NGO`, `Item_Name`, `Item_No`, `Best_use_before`, `Quantity`) VALUES
('Feeding India', 'White Sauce Pasta', 2, '2 days', 3),
('Feeding India', 'Red Sauce Pasta', 3, '2 days', 4),
('No food waste', 'Nachos', 6, '10 hours', 3),
('No food waste', 'Noodles', 7, '10 hours', 4),
('Feed For Goof', 'White Sauce Pasta', 2, '4 hours', 3),
('Feed For Goof', 'Paneer Chilli Dry', 4, '4 hours', 2),
('Feeding India', 'Pizza', 1, ' 5 hours', 2),
('Feeding India', 'Red Sauce Pasta', 3, ' 5 hours', 4),
('No food waste', 'White Sauce Pasta', 2, '6 hours', 3),
('No food waste', 'Paneer Chilli Dry', 4, '6 hours', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manager_ttable`
--

CREATE TABLE `manager_ttable` (
  `Manager_Id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Restaurant_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_ttable`
--

INSERT INTO `manager_ttable` (`Manager_Id`, `Username`, `password`, `Name`, `Restaurant_Name`) VALUES
(1, 'disheen', 'pass@123', 'Disheen Solanki', 'Bonafide');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `NGO_Name` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Contact` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `CustomerId` int(11) DEFAULT NULL,
  `ItemNo` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`CustomerId`, `ItemNo`, `ItemName`, `Quantity`) VALUES
(65, 1, 'Pizza', 4),
(65, 3, 'Red Sauce Pasta', 3),
(65, 5, 'Cheese Fondue', 3),
(66, 4, 'Paneer Chilli Dry', 1),
(66, 7, 'Noodles', 1),
(67, 1, 'Pizza', 4),
(67, 2, 'White Sauce Pasta', 2),
(68, 1, 'Pizza', 4),
(68, 7, 'Noodles', 1),
(69, 1, 'Pizza', 4),
(69, 3, 'Red Sauce Pasta', 3),
(70, 1, 'Pizza', 4),
(70, 5, 'Cheese Fondue', 3),
(71, 1, 'Pizza', 4),
(71, 7, 'Noodles', 1),
(72, 1, 'Pizza', 4),
(72, 4, 'Paneer Chilli Dry', 1),
(73, 4, 'Paneer Chilli Dry', 1),
(73, 7, 'Noodles', 1),
(74, 1, 'Pizza', 4),
(74, 3, 'Red Sauce Pasta', 3),
(75, 1, 'Pizza', 4),
(75, 4, 'Paneer Chilli Dry', 1),
(76, 1, 'Pizza', 4);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Restaurant_Name` varchar(20) NOT NULL,
  `Contact` bigint(11) NOT NULL,
  `Address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Firstname` varchar(20) NOT NULL,
  `Lastname` varchar(20) NOT NULL,
  `Restaurant_Name` varchar(20) NOT NULL DEFAULT 'Bonafide',
  `job_type` varchar(20) NOT NULL,
  `doj` date NOT NULL,
  `Staff_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Firstname`, `Lastname`, `Restaurant_Name`, `job_type`, `doj`, `Staff_Id`) VALUES
('Ram', 'Sharma', 'Bonafide', 'Waiter', '2017-11-02', 7),
('Prashant', 'Trivedi', 'Bonafide', 'Cashier', '2017-12-02', 12),
('Sunil', 'Patil', 'Bonafide', 'Chef', '2018-03-03', 13),
('Siddhant', 'Gupta', 'Bonafide', 'Chef', '2017-11-29', 14);

-- --------------------------------------------------------

--
-- Stand-in structure for view `staff_d`
-- (See below for the actual view)
--
CREATE TABLE `staff_d` (
`firstname` varchar(20)
,`lastname` varchar(20)
,`staff_id` int(11)
,`doj` date
,`job_type` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `Staff_Id` int(11) NOT NULL,
  `Table_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`Staff_Id`, `Table_no`) VALUES
(7, 3);

-- --------------------------------------------------------

--
-- Structure for view `staff_d`
--
DROP TABLE IF EXISTS `staff_d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `staff_d`  AS  select `staff`.`Firstname` AS `firstname`,`staff`.`Lastname` AS `lastname`,`staff`.`Staff_Id` AS `staff_id`,`staff`.`doj` AS `doj`,`staff`.`job_type` AS `job_type` from `staff` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD KEY `ca_id` (`Staff_Id`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD KEY `c_id` (`Staff_Id`);

--
-- Indexes for table `c_table`
--
ALTER TABLE `c_table`
  ADD PRIMARY KEY (`Customer_Id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`Item_No`,`Item_Name`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`NGO_Name`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Restaurant_Name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_Id`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD KEY `w_id` (`Staff_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_table`
--
ALTER TABLE `c_table`
  MODIFY `Customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `Staff_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `ca_id` FOREIGN KEY (`Staff_Id`) REFERENCES `staff` (`Staff_Id`) ON DELETE CASCADE;

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `c_id` FOREIGN KEY (`Staff_Id`) REFERENCES `staff` (`Staff_Id`) ON DELETE CASCADE;

--
-- Constraints for table `waiter`
--
ALTER TABLE `waiter`
  ADD CONSTRAINT `w_id` FOREIGN KEY (`Staff_Id`) REFERENCES `staff` (`Staff_Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
