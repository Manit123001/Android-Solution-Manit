-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 06:02 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `me_rest_ful`
--
CREATE DATABASE IF NOT EXISTS `me_rest_ful` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `me_rest_ful`;

-- --------------------------------------------------------

--
-- Table structure for table `alphabet`
--

CREATE TABLE `alphabet` (
  `ID` int(11) NOT NULL,
  `ALPHABET_NAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alphabet_talk`
--

CREATE TABLE `alphabet_talk` (
  `ID` int(11) NOT NULL,
  `CHARTALK` text NOT NULL,
  `ALPHABETID` int(11) DEFAULT NULL,
  `FLAG` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check_found_list`
--

CREATE TABLE `check_found_list` (
  `ID` int(11) NOT NULL,
  `LICENSE` text NOT NULL,
  `PROVINCE` text NOT NULL,
  `TYPE` text,
  `DATE` text,
  `TIME` text,
  `LATITUDE` int(11) DEFAULT NULL,
  `LONGTITUDE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `check_watch_list`
--

CREATE TABLE `check_watch_list` (
  `ID` int(11) NOT NULL,
  `LICENSE` text NOT NULL,
  `PROVINCE` text NOT NULL,
  `BRAND` text,
  `MODEL` text,
  `COLOR` text,
  `TYPE` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `ID` int(11) NOT NULL,
  `PROVINCE_NAME` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`ID`, `PROVINCE_NAME`) VALUES
(1, 'นครราชสีมา'),
(2, 'เชียงใหม่'),
(3, 'กาญจนบุรี'),
(4, 'ตาก'),
(5, 'อุบลราชธานี'),
(6, 'สุราษฎร์ธานี'),
(7, 'ชัยภูมิ'),
(8, 'แม่ฮ่องสอน'),
(9, 'เพชรบูรณ์'),
(10, 'ลำปาง'),
(11, 'อุดรธานี'),
(12, 'เชียงราย'),
(13, 'น่าน'),
(14, 'เลย'),
(15, 'ขอนแก่น'),
(16, 'พิษณุโลก'),
(17, 'บุรีรัมย์'),
(18, 'นครศรีธรรมราช'),
(19, 'สกลนคร'),
(20, 'นครสวรรค์'),
(21, 'ศรีสะเกษ'),
(22, 'กำแพงเพชร'),
(23, 'ร้อยเอ็ด'),
(24, 'สุรินทร์'),
(25, 'อุตรดิตถ์'),
(26, 'สงขลา'),
(27, 'สระแก้ว'),
(28, 'กาฬสินธุ์'),
(29, 'อุทัยธานี'),
(30, 'สุโขทัย'),
(31, 'แพร่'),
(32, 'ประจวบคีรีขันธ์'),
(33, 'จันทบุรี'),
(34, 'พะเยา'),
(35, 'เพชรบุรี'),
(36, 'ลพบุรี'),
(37, 'ชุมพร'),
(38, 'นครพนม'),
(39, 'สุพรรณบุรี'),
(40, 'ฉะเชิงเทรา'),
(41, 'มหาสารคาม'),
(42, 'ราชบุรี'),
(43, 'ตรัง'),
(44, 'ปราจีนบุรี'),
(45, 'กระบี่'),
(46, 'พิจิตร'),
(47, 'ยะลา'),
(48, 'ลำพูน'),
(49, 'นราธิวาส'),
(50, 'ชลบุรี'),
(51, 'มุกดาหาร'),
(52, 'บึงกาฬ'),
(53, 'พังงา'),
(54, 'ยโสธร'),
(55, 'หนองบัวลำภู'),
(56, 'สระบุรี'),
(57, 'ระยอง'),
(58, 'พัทลุง'),
(59, 'ระนอง'),
(60, 'อำนาจเจริญ'),
(61, 'หนองคาย'),
(62, 'ตราด'),
(63, 'พระนครศรีอยุธยา'),
(64, 'สตูล'),
(65, 'ชัยนาท'),
(66, 'นครปฐม'),
(67, 'นครนายก'),
(68, 'ปัตตานี'),
(69, 'กรุงเทพมหานคร'),
(70, 'ปทุมธานี'),
(71, 'สมุทรปราการ'),
(72, 'อ่างทอง'),
(73, 'สมุทรสาคร'),
(74, 'สิงห์บุรี'),
(75, 'นนทบุรี'),
(76, 'ภูเก็ต'),
(77, 'สมุทรสงคราม');

-- --------------------------------------------------------

--
-- Table structure for table `province_talk`
--

CREATE TABLE `province_talk` (
  `ID` int(11) NOT NULL,
  `PROVINCETALK_NAME` text NOT NULL,
  `PROVINCETALK_PROVINCE_ID` int(11) DEFAULT NULL,
  `FLAG` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alphabet`
--
ALTER TABLE `alphabet`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `alphabet_talk`
--
ALTER TABLE `alphabet_talk`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ALPHABETID` (`ALPHABETID`);

--
-- Indexes for table `check_found_list`
--
ALTER TABLE `check_found_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `check_watch_list`
--
ALTER TABLE `check_watch_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `province_talk`
--
ALTER TABLE `province_talk`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PROVINCETALK_PROVINCE_ID` (`PROVINCETALK_PROVINCE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alphabet`
--
ALTER TABLE `alphabet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alphabet_talk`
--
ALTER TABLE `alphabet_talk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `check_found_list`
--
ALTER TABLE `check_found_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `check_watch_list`
--
ALTER TABLE `check_watch_list`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `province_talk`
--
ALTER TABLE `province_talk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alphabet_talk`
--
ALTER TABLE `alphabet_talk`
  ADD CONSTRAINT `alphabet_talk_ibfk_1` FOREIGN KEY (`ALPHABETID`) REFERENCES `alphabet` (`ID`);

--
-- Constraints for table `province_talk`
--
ALTER TABLE `province_talk`
  ADD CONSTRAINT `province_talk_ibfk_1` FOREIGN KEY (`PROVINCETALK_PROVINCE_ID`) REFERENCES `province` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
