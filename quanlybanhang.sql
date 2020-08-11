-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 11, 2020 at 03:10 PM
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
CREATE DATABASE IF NOT EXISTS `quanlybanhang` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `quanlybanhang`;

-- --------------------------------------------------------

--
-- Table structure for table `chamcong`
--

DROP TABLE IF EXISTS `chamcong`;
CREATE TABLE IF NOT EXISTS `chamcong` (
  `thang` tinyint(3) UNSIGNED NOT NULL,
  `nam` smallint(5) UNSIGNED NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaycong` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thang`,`nam`,`manv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietddh`
--

DROP TABLE IF EXISTS `chitietddh`;
CREATE TABLE IF NOT EXISTS `chitietddh` (
  `maddh` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `mamh` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`maddh`,`mamh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE IF NOT EXISTS `dondathang` (
  `maddh` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `makh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaydh` date NOT NULL,
  `ngaygiao` date DEFAULT NULL,
  PRIMARY KEY (`maddh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

DROP TABLE IF EXISTS `donvi`;
CREATE TABLE IF NOT EXISTS `donvi` (
  `madv` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `tendv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`madv`),
  UNIQUE KEY `tendv` (`tendv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenkh` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `diachi` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `matp` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `tenkh` (`tenkh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `mamh` int(11) NOT NULL AUTO_INCREMENT,
  `tenmh` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `donvitinh` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dongia` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hinhsp` text COLLATE utf8_unicode_ci,
  `mancc` int(11) NOT NULL,
  PRIMARY KEY (`mamh`),
  UNIQUE KEY `tenmh` (`tenmh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `mancc` int(11) NOT NULL AUTO_INCREMENT,
  `tenncc` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dien` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`mancc`),
  UNIQUE KEY `tenncc` (`tenncc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `manv` int(11) NOT NULL AUTO_INCREMENT,
  `holot` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tennv` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phai` enum('F','M') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `luongcb` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ngaynviec` date NOT NULL,
  `diachinv` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dienthoainv` varchar(11) COLLATE utf8_unicode_ci DEFAULT '',
  `hinhnv` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`manv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tinhtp`
--

DROP TABLE IF EXISTS `tinhtp`;
CREATE TABLE IF NOT EXISTS `tinhtp` (
  `matp` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `tentp` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`matp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
