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
-- Cấu trúc bảng cho bảng `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE IF NOT EXISTS `dondathang` (
  `maddh` char(5) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `makh` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaydh` date NOT NULL,
  `ngaygiao` date DEFAULT NULL,
  PRIMARY KEY (`maddh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`maddh`, `makh`, `manv`, `ngaydh`, `ngaygiao`) VALUES
('1', 'CODACO', 1, '1997-02-02', '1997-02-03'),
('2', 'COTEC', 2, '1997-01-03', '1997-01-04'),
('3', 'DHP', 3, '1997-02-15', '1997-02-18'),
('4', 'GIAY32', 4, '1997-03-01', '1997-04-01'),
('5', 'RUBIMEX', 5, '1998-05-01', '1998-05-02'),
('6', 'SAMACO', 6, '1998-05-02', '1998-05-06'),
('7', 'SAMECO', 7, '1998-05-02', '1998-05-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
