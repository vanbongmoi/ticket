-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2019 lúc 05:17 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ticket`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baocao`
--

CREATE TABLE `baocao` (
  `id` int(11) NOT NULL,
  `idmay` int(11) NOT NULL,
  `Ngaynhap` date NOT NULL,
  `Ca` varchar(6) NOT NULL,
  `Xuat` int(15) DEFAULT NULL,
  `Startseri` varchar(15) DEFAULT NULL,
  `Endseri` varchar(15) DEFAULT NULL,
  `Nhanvien` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsmail`
--

CREATE TABLE `dsmail` (
  `id` int(11) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `mailgui` varchar(30) DEFAULT NULL,
  `passmailgui` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dsmail`
--

INSERT INTO `dsmail` (`id`, `mail`, `mailgui`, `passmailgui`) VALUES
(1, 'vanbongmoi@gmail.com', 'ketoan00093@gmail.com', 'NAMnam123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `myseri`
--

CREATE TABLE `myseri` (
  `id` int(11) NOT NULL,
  `idnhap` int(11) NOT NULL,
  `Startseri` varchar(15) NOT NULL,
  `Endseri` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhap`
--

CREATE TABLE `nhap` (
  `id` int(11) NOT NULL,
  `Ngaynhap` date NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Startseri` varchar(15) NOT NULL,
  `Endseri` varchar(15) NOT NULL,
  `Nhanvien` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `tentaikhoan` varchar(30) NOT NULL,
  `tennhanvien` varchar(30) DEFAULT NULL,
  `matkhau` varchar(30) NOT NULL,
  `quyen` varchar(15) NOT NULL,
  `trungtam` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tentaikhoan`, `tennhanvien`, `matkhau`, `quyen`, `trungtam`) VALUES
(18, 'vanbinh', 'Nguyen văn Bình', 'c4ca4238a0', 'tech', 'ALB'),
(19, 'Vunam', 'Vu van Nam', 'c4ca4238a0', 'tech', 'ALB'),
(22, 'admin', 'Admin', 'd3e585294f', 'admin', 'ALB');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tenmay`
--

CREATE TABLE `tenmay` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `thutu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tenmay`
--

INSERT INTO `tenmay` (`id`, `name`, `thutu`) VALUES
(1, 'BALL DROP1', 1),
(2, 'BALL DROP2', 2),
(5, 'DUO DRIVE', 3),
(6, 'DUO DRIVE 2', 4),
(7, 'LUCKY BALL', 5),
(8, 'PIRATES HOOK', 6),
(9, 'PIRATES HOOK 2', 7),
(10, 'SAFARI RANGER', 8),
(11, 'FROGGER', 9),
(12, 'TUBIN TWIST', 10),
(13, 'TUBIN TWIST 2', 11),
(14, 'TUBIN TWIST 3', 12),
(17, 'CYCL ONE', 13),
(18, 'ICEBALL FX', 14),
(19, 'ICEBALL FX 2', 15),
(20, 'ICEBALL FX 3', 16),
(21, 'PRIVATE BATTLE', 17),
(22, 'SEAWAY SUBMATINE', 18),
(23, 'MEGA STACKER LITE', 19),
(24, 'NBA HOOPS', 20),
(25, 'NBA HOOPS 2', 21),
(26, 'DOWN THE CLOWN', 22),
(27, 'DOWN THE CLOWN 2', 23),
(28, 'PIRATES REVENGE', 24),
(29, 'Extrenne Basketball', 25),
(30, 'Extrenne Basketball 2', 26),
(31, 'Teken 6', 27),
(32, 'Mini Jetskiling', 28),
(33, 'FRUIT PEBELLION', 29),
(34, 'CAR RACING', 30),
(35, 'CANDY JUMPER', 31),
(36, 'Kiddie Xball', 32),
(37, 'Princess Castle', 33),
(38, 'Alien battle', 34),
(39, 'AILENS EXTERMINATION', 35),
(40, 'SEAGA DRIVE 1', 36),
(41, 'SEAGA DRIVE 2', 37),
(42, 'SPEED OF LIGHT', 38),
(43, 'NEON FM', 39),
(44, 'AIR FX', 40),
(45, 'Let s go jungle', 41),
(46, 'PACMAN JNR BASKETBALL ', 42),
(47, 'PACMAN JNR BASKETBALL 2', 43),
(48, 'HAPPY KANGAROO', 44),
(49, 'PUMP JUMP', 45);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tonkho`
--

CREATE TABLE `tonkho` (
  `id` int(11) NOT NULL,
  `Ngayton` date NOT NULL,
  `Tondau` int(15) NOT NULL,
  `Toncuoi` int(15) NOT NULL,
  `Nhanvien` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baocao`
--
ALTER TABLE `baocao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dsmail`
--
ALTER TABLE `dsmail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `myseri`
--
ALTER TABLE `myseri`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhap`
--
ALTER TABLE `nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tenmay`
--
ALTER TABLE `tenmay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baocao`
--
ALTER TABLE `baocao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dsmail`
--
ALTER TABLE `dsmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `myseri`
--
ALTER TABLE `myseri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `nhap`
--
ALTER TABLE `nhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tenmay`
--
ALTER TABLE `tenmay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
