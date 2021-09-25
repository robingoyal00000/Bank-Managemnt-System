-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 05:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `pin` varchar(10) NOT NULL,
  `deposit` varchar(30) NOT NULL,
  `withdraw` varchar(15) NOT NULL,
  `balance` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`pin`, `deposit`, `withdraw`, `balance`) VALUES
('963', 'Thu Sep 23 23:46:43 IST 2021', 'Deposit', '1000'),
('963', 'Thu Sep 23 23:51:35 IST 2021', 'Deposit', '2000'),
('', 'Thu Sep 23 23:54:49 IST 2021', 'Deposit', '40'),
('2066', 'Fri Sep 24 18:37:24 IST 2021', 'Deposit', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `cardno` varchar(20) NOT NULL,
  `pin` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`cardno`, `pin`) VALUES
('5040936065863376', '963'),
('5040935970881116', '2066'),
('5040936033293880', '428'),
('5040936013365966', '5005');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `formno` varchar(20) NOT NULL,
  `name` varchar(15) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email` varchar(20) NOT NULL,
  `marital` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`formno`, `name`, `fname`, `dob`, `gender`, `email`, `marital`, `address`, `city`, `pincode`, `state`) VALUES
('3779', 'badal kumar', 'robin', '23-Sep-2021', 'Male', 'gupta3@gmail.com', 'Married', 'palamo express', 'ranchi', '000000', 'jharkhand'),
('4845', 'sadfgh', 'dfsgg', '16-Sep-2021', 'Male', 'qewrtytuy', 'Unmarried', 'qswdefrgth', 'qswdaefsg', '474001', 'dsafs'),
('6663', 'raj', 'raj', '14-Sep-1999', 'Male', 'dev@231', 'Married', 'dtetrytfy5r5r', 'dtdtyd', 'yytrty', 'rhtryt'),
('7003', 'sedfghj', 'edrfgh', '08-Sep-2021', 'Female', 'esdrftygh', 'Married', 'esdrfgh', 'edrfgh', 'drfgh', 'drfghj'),
('7355', 'sqewrtyr', 'ewqrewt', '23-Sep-2021', 'Male', 'e2r3t4r', 'Married', 'wqrewte', 'wrew', '854', 'qewrw'),
('7755', 'wdefrgt', 'wdefrgt', '09-Sep-2021', 'Male', 'qwrergthr', 'Unmarried', 'efwrg', 'dfadsf', '5485', 'ffsacdv');

-- --------------------------------------------------------

--
-- Table structure for table `signup2`
--

CREATE TABLE `signup2` (
  `formno` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `category` varchar(15) NOT NULL,
  `income` varchar(25) NOT NULL,
  `education` varchar(15) NOT NULL,
  `occupation` varchar(15) NOT NULL,
  `pan` varchar(15) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `scitizen` varchar(5) NOT NULL,
  `eaccount` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup2`
--

INSERT INTO `signup2` (`formno`, `religion`, `category`, `income`, `education`, `occupation`, `pan`, `aadhar`, `scitizen`, `eaccount`) VALUES
('4845', 'Hindu', 'General', 'Null', 'Non-Graduate', 'Salaried', '544228', '44654354768', 'No', 'No'),
('', 'Hindu', 'General', 'Null', 'Non-Graduate', 'Salaried', 'dfgh', 'fcgvhb', 'No', 'No'),
('7355', 'Hindu', 'General', 'Null', 'Non-Graduate', 'Salaried', '258/8754', '9865453', 'Yes', 'Yes'),
('7003', 'Hindu', 'General', 'Null', 'Non-Graduate', 'Salaried', '43564', '25468', 'No', 'No'),
('3779', 'Hindu', 'General', '<1,50,000', 'Non-Graduate', 'Salaried', '4657531', '5498798', 'No', 'No'),
('6663', 'Hindu', 'General', 'Null', 'Non-Graduate', 'Salaried', 'et4et', 'yry5heht', 'No', 'No'),
('7755', 'Hindu', 'General', '<1,50,000', 'Non-Graduate', 'Salaried', '84532', '8446532', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `signup3`
--

CREATE TABLE `signup3` (
  `formno` varchar(10) NOT NULL,
  `atype` varchar(30) NOT NULL,
  `cardno` varchar(25) NOT NULL,
  `pin` varchar(5) NOT NULL,
  `facility` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup3`
--

INSERT INTO `signup3` (`formno`, `atype`, `cardno`, `pin`, `facility`) VALUES
('3779', 'Fixed Deposit Account', '5040936065863376', '963', ' ATM Card Internet Banking'),
('6663', 'Saving Account', '5040935970881116', '2066', ' ATM Card Internet Banking Mobile Banking EMAIL Alerts'),
('7755', 'Saving Account', '5040936033293880', '428', ' ATM Card Mobile Banking'),
('', 'Saving Account', '5040936013365966', '5005', ' ATM Card EMAIL Alerts');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`formno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
