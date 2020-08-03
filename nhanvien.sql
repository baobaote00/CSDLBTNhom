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
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `MaNV` int(11) NOT NULL AUTO_INCREMENT,
  `HoLot` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TenNV` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Phai` enum('F','M') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `LuongCB` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `NgayNViec` date NOT NULL,
  `DiaChiNV` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DienThoaiNV` varchar(11) COLLATE utf8_unicode_ci DEFAULT '',
  `HinhNV` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MaNV`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
