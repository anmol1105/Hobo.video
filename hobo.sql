-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 09:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `hobo`
--

CREATE TABLE `hobo` (
  `Id` int(50) NOT NULL,
  `Name` char(50) NOT NULL,
  `Activity` char(20) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hobo`
--

INSERT INTO `hobo` (`Id`, `Name`, `Activity`, `Time`) VALUES
(1, 'Anmol Srivastava', 'Active', '12:55:10'),
(2, 'Dhruv Rastogi', 'Inactive', '13:15:20'),
(3, 'Vishaka Nehe', 'Active', '21:09:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductName` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductName`) VALUES
('T-Shirt'),
('Jeans'),
('Skirt'),
('Winter Collection'),
('Logo Collection'),
('Shirt'),
('Skinny Jeans'),
('Hooddies'),
('Pant');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `Id` int(50) NOT NULL,
  `Name` char(50) NOT NULL,
  `Activity` char(50) NOT NULL,
  `Time` time NOT NULL,
  `URL` varchar(100) NOT NULL,
  `product` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Id`, `Name`, `Activity`, `Time`, `URL`, `product`) VALUES
(1, 'Anmol Srivastava', 'Active', '12:55:10', 'http://www.hobo.com', 'T-Shirt,Jeans'),
(2, 'Dhruv Rastogi', 'Inactive', '13:15:20', 'http://www.dhruv.com', 'Winter Collection,Logo Collection'),
(3, 'Vishaka Nehe', 'Active', '21:09:34', 'http://www.vn.com', 'Shirt,Skinny Jeans,Hooddies,Pant');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;