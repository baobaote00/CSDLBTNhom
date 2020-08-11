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
-- Cấu trúc bảng cho bảng `chitietddh`
--

DROP TABLE IF EXISTS `chitietddh`;
CREATE TABLE IF NOT EXISTS `chitietddh` (
  `maddh` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `mamh` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`maddh`,`mamh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietddh`
--

INSERT INTO `chitietddh` (`maddh`, `mamh`, `soluong`, `giamgia`) VALUES
('1', 1, 2, 10),
('1', 2, 2, 1),
('2', 3, 3, 1),
('3', 4, 4, 1),
('4', 5, 6, 20),
('5', 6, 7, 1),
('6', 7, 8, 1),
('7', 8, 9, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
