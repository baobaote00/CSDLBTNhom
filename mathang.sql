-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 03, 2020 at 06:59 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `MaMH` int(11) NOT NULL AUTO_INCREMENT,
  `TenMH` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DonViTinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DonGia` int(11) NOT NULL DEFAULT '0',
  `HinhSP` text COLLATE utf8_unicode_ci,
  `MaNCC` int(11) NOT NULL,
  PRIMARY KEY (`MaMH`),
  UNIQUE KEY `TenMH` (`TenMH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
