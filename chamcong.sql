-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 11, 2020 lúc 04:03 PM
-- Phiên bản máy phục vụ: 8.0.18
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chamcong`
--

DROP TABLE IF EXISTS `chamcong`;
CREATE TABLE IF NOT EXISTS `chamcong` (
  `thang` tinyint(3) UNSIGNED NOT NULL,
  `nam` smallint(5) UNSIGNED NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaycong` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`thang`,`nam`,`manv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chamcong`
--

INSERT INTO `chamcong` (`thang`, `nam`, `manv`, `ngaycong`) VALUES
(1, 1991, 1, 20),
(2, 1991, 2, 30),
(3, 1991, 3, 30),
(4, 1992, 4, 30),
(5, 1992, 5, 40),
(1, 1992, 6, 30),
(12, 1991, 7, 30);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
