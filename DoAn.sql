-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 09, 2018 lúc 03:46 PM
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `DoAn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `AccountCompany`
--

CREATE TABLE `AccountCompany` (
  `ComID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CompanyInfo`
--

CREATE TABLE `CompanyInfo` (
  `Id` int(11) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `ComID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Mail`
--

CREATE TABLE `Mail` (
  `ID` int(11) NOT NULL,
  `Subject` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `Requester` varchar(255) NOT NULL,
  `Assigner` varchar(255) NOT NULL,
  `SendTime` datetime NOT NULL,
  `TypeID` int(11) NOT NULL,
  `PriorityID` int(11) NOT NULL,
  `StatusID` int(11) NOT NULL,
  `AttachFile` text,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Messages`
--

CREATE TABLE `Messages` (
  `TopicID` int(11) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `ReceiverID` int(11) NOT NULL,
  `SendTime` datetime NOT NULL,
  `Content` text NOT NULL,
  `TypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Status`
--

CREATE TABLE `Status` (
  `StatusID` int(11) NOT NULL,
  `StatusName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Topic`
--

CREATE TABLE `Topic` (
  `IP` text NOT NULL,
  `VisitorName` text NOT NULL,
  `UnreadMessageCount` int(11) NOT NULL,
  `ServedID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Visitor`
--

CREATE TABLE `Visitor` (
  `IP` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Email` int(11) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `AccountCompany`
--
ALTER TABLE `AccountCompany`
  ADD PRIMARY KEY (`ComID`);

--
-- Chỉ mục cho bảng `CompanyInfo`
--
ALTER TABLE `CompanyInfo`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `Mail`
--
ALTER TABLE `Mail`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`StatusID`);

--
-- Chỉ mục cho bảng `Visitor`
--
ALTER TABLE `Visitor`
  ADD PRIMARY KEY (`IP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `AccountCompany`
--
ALTER TABLE `AccountCompany`
  MODIFY `ComID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `CompanyInfo`
--
ALTER TABLE `CompanyInfo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `Mail`
--
ALTER TABLE `Mail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `Status`
--
ALTER TABLE `Status`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `Visitor`
--
ALTER TABLE `Visitor`
  MODIFY `IP` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
