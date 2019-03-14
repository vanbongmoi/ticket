-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 14, 2019 lúc 07:11 AM
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
(1, 'testmail@nkidgroup.com', 'testmail@gmail.com', '1');

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
-- Đang đổ dữ liệu cho bảng `tonkho`
--

INSERT INTO `tonkho` (`id`, `Ngayton`, `Tondau`, `Toncuoi`, `Nhanvien`) VALUES
(10, '2019-03-14', 0, 0, 24),
(11, '2019-03-14', 0, 0, 24),
(12, '2019-03-14', 0, 0, 24),
(13, '2019-03-14', 0, 0, 24),
(14, '2019-03-14', 0, 0, 24);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dsmail`
--
ALTER TABLE `dsmail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `myseri`
--
ALTER TABLE `myseri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `nhap`
--
ALTER TABLE `nhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tenmay`
--
ALTER TABLE `tenmay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
