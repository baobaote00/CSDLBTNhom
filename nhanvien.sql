-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th8 11, 2020 lúc 04:02 PM
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
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `manv` int(11) NOT NULL AUTO_INCREMENT,
  `holot` varchar(30) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '',
  `tennv` varchar(20) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '',
  `phai` enum('F','M') CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'F',
  `luongcb` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ngaynviec` date NOT NULL,
  `diachinv` varchar(60) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL DEFAULT '',
  `dienthoainv` varchar(11) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT '',
  `hinhnv` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci,
  PRIMARY KEY (`manv`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `holot`, `tennv`, `phai`, `luongcb`, `ngaynviec`, `diachinv`, `dienthoainv`, `hinhnv`) VALUES
(7, 'Nguyễn Thị Ánh', 'Trinh', 'F', 350, '1992-05-06', 'Q2', '0456789123', NULL),
(6, 'Võ Thị Ngọc', 'Tuyền', 'F', 400, '1992-06-09', 'TP.HCM', '0123456789', NULL),
(4, 'Huỳnh Dương Mỹ ', 'Uyên', 'F', 400, '1993-09-08', 'TP.HCM', '097460659', NULL),
(5, 'Vũ Minh ', 'Chuẩn', 'M', 500, '1991-01-01', 'Vĩnh Long', '090736669', NULL),
(2, 'Lưu Thị Kiều', 'Oanh', 'F', 300, '1991-05-06', 'Q1', '084545329', NULL),
(3, 'Nguyễn Lê Trọng', 'Tiền', 'M', 500, '1992-03-07', 'TP.HCM', '077484293', NULL),
(1, 'Phan Hồng Bảo', 'Ngọc', 'F', 200, '1991-07-02', 'Đồng Nai', '0933018608', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
