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
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenKH` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DiaChi` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `DienThoai` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `MaTP` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaKH`),
  UNIQUE KEY `TenKH` (`TenKH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `DiaChi`, `DienThoai`, `MaTP`) VALUES
('CODACO', 'Cơ Khí Dân Dụng', '388 Hoà Hảo P5', '1757828', 'TP'),
('COTEC', 'Công Nghệ Mới', '319 Nguyễn Trải P7', '7657657', 'CT'),
('DHP', 'Đại Hưng Phát', '343 Nhật Tảo P16', '6546565', 'NT'),
('GIAY32', 'Giày 32', '105A Ngô Quyền P11', '6565468', 'CT'),
('RUBIMEX', 'Công Nghiệp Cao Su', '220 Lê Văn Sỹ ', '2987912', 'NT'),
('SAMACO', 'SXKD Dịch Vụ Tổng Hợp', '56 Nguyễn Biểu P2', '1987987', 'CT'),
('SAMECO', 'Cơ Khí Sài Gòn', '156 Lê Đại Hành P7', '2397997', 'HN'),
('TRACODI', 'Đầu Tư Phát Triển GTVT', 'Hàm Nghi Q1', '0976766', 'HP'),
('VITICO', 'Hoá Nhựa Vĩnh Tiến', '35 Tô Hiến Thành P14', '3987980', 'TP'),
('VTP', 'Vạn Hưng Phát', '119 Bạch Vân P17', '3765768', 'HN');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
