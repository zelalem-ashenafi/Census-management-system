-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 03:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'admin',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `avatar`) VALUES
('2', 'admin', 'admin', 'admin@gmail.com', '0917043076', '$2y$10$k/48IUOXEUtjggGrhJ/iQuS2oawM/GKugDA26RSqc51NxGJS7w5kO', 'admin', 'avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `enumerators`
--

CREATE TABLE `enumerators` (
  `no` int(11) NOT NULL,
  `enumerator_id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `kebele` varchar(3) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'enumerator',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `address` varchar(30) NOT NULL,
  `supervisor_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enumerators`
--

INSERT INTO `enumerators` (`no`, `enumerator_id`, `fname`, `lname`, `email`, `phone`, `kebele`, `password`, `role`, `avatar`, `status`, `address`, `supervisor_id`) VALUES
(1, 'enum_04', 'getaneh', 'getaw', 'abebe@gmail.com', '0965328741', '15', '$2y$10$8utjvawfGCHjOotaO3XjpesoMNMLHdQ8yH9UAe37vWNN/SbzkOd.C', 'enumerator', 'avatar.png', b'1', 'tebase', ''),
(5, 'enum12', 'Mulu', 'Hailu', 'enum@gmail.com', '0987546234', '12', '$2y$10$TB4nHzcE9v7QSo/Ac7bf6.PrHG8Ux2VnBDSXraQTLnVeH595f3O0C', 'enumerator', 'avatar.png', b'1', 'Tebase', 'super123'),
(7, 'enum_14', 'Abush', 'Mamush', 'abu@gmail.com', '0985425412', '34', '$2y$10$Fd/31D/uOAUIaoYPIc9AteZuDPdX95qJcvJq28/lNSdSv4TSdZrFm', 'enumerator', 'avatar.png', b'1', 'Chacha', 'super333');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `guest_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL,
  `reason` varchar(40) NOT NULL,
  `isnew` bit(1) NOT NULL DEFAULT b'0',
  `status` bit(1) NOT NULL DEFAULT b'0',
  `avatar` varchar(30) NOT NULL DEFAULT 'avatar.png',
  `hobby` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guest_id`, `fname`, `lname`, `email`, `phone`, `password`, `role`, `reason`, `isnew`, `status`, `avatar`, `hobby`) VALUES
(1, 'Henok', 'Selemon', 'heni@gmail.com', '09454542757', '$2y$10$4sDDHuKcVT1rZIR5ic9Y5e4Tf5hWbibjcNbyW8RtfI3DSD5xJy5qS', 'guest', 'group 3project draft.docx', b'0', b'1', 'avatar.png', 'reading'),
(2, 'kebede', 'alemu', 'kebe@gmail.com', '098765543', '$2y$10$.GIuD6dSiRC01RSpfIhjy.EJ6S75eOmKIch2v0E5T5I4JlMBQHfBm', 'guest', 'ethio-art.docx', b'0', b'1', 'avatar.png', 'reading'),
(6, 'Adane', 'Berhe', 'ade@gmail.com', '0954321', '$2y$10$0Tuq0ZD7afmka4IHdsgAZ.rpqZ135cvgbBhJ.B8tsSDXyBXxY278S', 'guest', 'google.txt', b'0', b'1', 'avatar.png', ''),
(15, 'Tenaw', 'Tenaw', 's@gmail.com', '098756321', '$2y$10$ByglD7av51dhC0LAJ6esuOf3K8x8N2tuM1BFIXbjGtJl8eFtPYEmG', 'guest', 'google.txt', b'0', b'1', 'avatar.png', 'football'),
(17, 'abebech', 'kebede', 'ab@gmail.com', '098741254234', '$2y$10$D57xxFxh1pTD0ou8tjdOeuHkA2DAi9tASCSuM9lalkziYoJovQMNq', 'guest', 'google.txt', b'0', b'1', 'avatar.png', 'football'),
(18, 'Adane', 'Girma', 'guest@gmail.com', '0923145678', '$2y$10$sDJyOl69m4zKtwRvoB3uWOS7pDcjS4sl81bOIlC310T3mMCGpe8a6', 'guest', 'photo_2022-07-26_10-24-11.pdf', b'0', b'1', 'avatar.png', 'reading');

-- --------------------------------------------------------

--
-- Table structure for table `house`
--

CREATE TABLE `house` (
  `id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `house_doc` varchar(40) NOT NULL,
  `subcity` varchar(30) NOT NULL,
  `kebele_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `house`
--

INSERT INTO `house` (`id`, `house_id`, `house_doc`, `subcity`, `kebele_id`) VALUES
(1, 398, 'vlanStructure.docx', 'atse zerayakob', '02'),
(2, 367, 'Intel 8086.docx', 'Tebase', '01'),
(3, 125, 'google.txt', 'Minilik', '03'),
(5, 126, 'google.txt', 'Tayetu', '02'),
(6, 236, 'photo_2022-08-12_04-30-58.jpg', 'Minilik', '03'),
(7, 367, 'photo_2022-07-26_10-24-11.pdf', 'Minilik', '02'),
(8, 123, 'Asmare_Minuye(CV).pdf', 'Minilik', '03'),
(9, 123, 'ItAssignment.docx', 'Tayetu', '03');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `not_id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`not_id`, `sender`, `receiver`, `message`, `date`) VALUES
(3, 'kebe@gmail.com', '', 'i think it works', '2024-07-22 08:19:30'),
(5, 'alem@gmail.com', '', 'Hey this is very nice app but why don\'t you add graphs with the report', '2022-07-24 08:58:50'),
(6, 'alemneh@gmail.com', '', 'please add enumerator edit Hey this is very nice app but why don\'t you add graphs with the report', '2022-07-24 08:25:50'),
(7, 'heni@gmail.com', '', 'hello i like the system but please......', '2027-07-22 05:10:01'),
(8, 'abebe@gmail.com', '', 'enumerator check for feedback', '2007-08-22 09:57:45'),
(9, 'alemu@gmail.com', '', 'a check from the supervisor\r\n\r\n', '2007-08-22 10:07:42'),
(11, 'user@user.com', '', 'test for the contact page', '2010-08-22 03:07:27'),
(12, 'abebe@gmail.com', '', 'dggrgebhb', '2013-08-22 12:56:00'),
(13, 's@gmail.com', '', 'last try from the guest thank you\r\n', '2014-08-22 08:37:46'),
(14, '1@1.cc', '', 'hello this is from contat us\r\n', '2014-08-22 10:26:49'),
(15, 'enum12', 'super123', 'hello first chat', '2022-08-16 22:06:24'),
(16, 'super123', 'enum12', 'the first reply', '2016-08-22 10:08:03'),
(17, 'enum12', 'super123', 'hello', '2016-08-22 10:13:52'),
(18, 'enum12', 'super123', 'new message button\r\n', '2016-08-22 10:54:17'),
(19, 'super123', '', 'hello', '2016-08-22 11:06:44'),
(20, 'super123', '', 'hello', '2016-08-22 11:10:30'),
(21, 'super123', '', 'hello', '2016-08-22 11:11:35'),
(22, 'super123', 'enum12', 'hello', '2016-08-22 11:11:53'),
(23, 'super123', 'enum12', 'hello', '2016-08-22 11:14:15'),
(24, 'super123', 'enum12', 'last try for reply button\r\n', '2016-08-22 11:14:56'),
(25, 'super123', 'enum12', 'last try from new', '2016-08-22 11:15:25'),
(26, 'enum12', 'super123', 'last try from reply button enum', '2016-08-22 11:17:01'),
(27, 'enum12', 'super123', 'last try from new button enum', '2016-08-22 11:18:00'),
(28, 'enum_14', 'super333', 'hello ', '2020-08-22 10:21:48'),
(29, 'super333', 'enum_14', 'hello too!', '2020-08-22 10:27:51'),
(30, 'enum_14', 'super333', 'hello from the reply', '2020-08-22 10:28:48'),
(31, 'super333', 'enum_14', 'Hello too from the reply', '2020-08-22 10:29:19'),
(32, 'enum_14', 'super333', 'reply workin', '2020-08-22 10:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` varchar(15) NOT NULL,
  `name` varchar(40) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `gfname` varchar(40) NOT NULL,
  `sex` varchar(1) NOT NULL,
  `age` date NOT NULL,
  `house_id` varchar(5) NOT NULL,
  `married` varchar(15) NOT NULL,
  `disability` varchar(5) NOT NULL,
  `birth_place` varchar(30) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `education` varchar(15) NOT NULL,
  `job` varchar(30) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `pphone` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birth_cert` varchar(40) NOT NULL,
  `educ_cert` varchar(40) NOT NULL,
  `isapproved` bit(1) NOT NULL DEFAULT b'0',
  `enum_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `name`, `fname`, `gfname`, `sex`, `age`, `house_id`, `married`, `disability`, `birth_place`, `religion`, `education`, `job`, `photo`, `pname`, `pphone`, `phone`, `email`, `birth_cert`, `educ_cert`, `isapproved`, `enum_id`) VALUES
('10', 'Hailu', 'Habte', 'Dagnu', 'm', '1960-08-09', '398', 'single', 'yes', 'Debre Birhan', 'orthodox', 'masters', 'unemployed', 'avatar.png', 'selemon hailu', '0987546231', '0987542658', 'tame@gmail.com', 'phsychoGroup.docx', 'google.txt', b'0', 'enum_04'),
('11', 'Abela', 'Takele', 'Girum', 'm', '2022-08-09', '398', 'single', 'yes', 'Debre Birhan', 'orthodox', 'illetrate', 'unemployed', '', 'uggulu bangada', '09674156565', '09874541', '1@1.com', 'HCI_IS_4th_Grade.pdf', 'HCI_IS_4th_Grade.pdf', b'0', 'enum_04'),
('1234/11', 'Zelalem', 'Ashenafi', 'Molla', 'm', '2022-01-06', '398', 'single', 'no', 'Debre Birhan', 'orthodox', 'illiterate', 'unemployed', 'er.JPG', 'Zelalem Ashenafi', '0967410404', '0967410404', 'zolaashenafi48@gmail.com', 'Organizational behavior.docx', 'Project_functionalities_done.docx', b'1', 'enum12'),
('1234/25', 'abebe', 'kebede', 'chala', 'm', '2022-08-10', '367', 'married', 'no', 'Debre Birhan', 'protestan', 'certificate', 'governmental', 'Capture4.JPG', 'Zelalem Ashenafi', '0967410404', '0967410404', 'zolaashenafi48@gmail.com', 'SYSTEMS DEVELOPMENT LIFE CYCLE.docx', 'Asmare_Minuye(Cover_Letter).docx', b'1', 'enum12'),
('13', 'Selemon', 'Bekele', 'Molla', 'm', '2022-08-09', '367', 'married', 'no', 'Chaha', 'protestant', 'masters', 'unemployed', 'images.png', 'heromn selemon', '0988546152', '09214587', 'tame@gmail.com', 'phsycoGroup.docx', 'psycoIndiv.docx', b'0', 'enum_04'),
('14', 'Bekele', 'Bekalu', 'Sew', 'm', '2022-08-09', '398', 'divorced', 'yes', 'Menz', 'protestant', 'phd', 'governmental', 'projectCode.txt', 'Mndaye molla', '098563214', '0923147896', '1@1.cc', 'A Report on Water Supply Problem in Our ', 'ethio-art.docx', b'1', ''),
('15', 'Meselech', 'Girma', 'Alemu', 'f', '2022-08-09', '398', 'single', 'no', 'Debre Birhan', 'muslim', 'phd', 'governmental', '', 'Girma Bekele', '0987546321', '09523654', 'meselu@gmail.com', 'google.txt', 'google.txt', b'0', 'enum_01'),
('1523/11', 'Selemon', 'Mnte', 'Alemu', 'm', '1990-02-20', '125', 'married', 'yes', 'Debre Birhan', 'orthodox', 'illiterate', 'governmental', 'police.jpeg', 'bogale mola', '09874563214', '0954698732', 'abebe@gmail.com', 'mili.docx', 'vlanSructure.docx', b'1', 'enum_14'),
('16', 'Girum', 'Ermias', 'Mulken', 'm', '2000-08-09', '398', 'single', 'yes', 'Addis ababa', 'orthodox', 'certificate', 'unemployed', '', 'Ermias sew', '09784632', '0911224830', 'aa@gmail.com', 'google.txt', 'google.txt', b'0', 'enum_04'),
('17', 'Sirak', 'Tadese', 'Birhanu', 'm', '2022-08-09', '398', 'single', 'yes', 'Debre Birhan', 'orthodox', 'illetrate', 'unemployed', 'google.txt', 'Girma Bekele', '092345678', '0987512341', 'admin@admin.com', 'google.txt', 'google.txt', b'0', 'enum_04'),
('18', 'Selam', 'Tesfayee', 'Selomon', 'f', '2022-08-09', '367', 'married', 'no', 'Addis Ababa', 'protestan', 'certificate', 'non-governmental', 'google.txt', 'abebe gashaw', '0912345634', '0912345678', 'se@gmail.com', 'google.txt', 'google.txt', b'0', 'enum_04'),
('19', 'Helenita', 'Alemu', 'Molla', 'm', '2022-08-09', '126', 'single', 'no', 'Debre Birhan', 'orthodox', 'illiterate', 'unemployed', 'google.txt', 'Alebachew mekonen', '0987451296', '0978546541', 'hell@gmail.com', 'google.txt', 'google.txt', b'1', 'enum12'),
('21', 'Hailu', 'abebe', 'Alemu', 'm', '2022-08-09', '398', 'single', 'no', 'Debre Birhan', 'orthodox', 'illiterate', 'unemployed', 'Capture4.JPG', 'abebe gashaw', '0987654321', '0976543223', 'alemu@gmail.com', 'SYSTEMS DEVELOPMENT LIFE CYCLE.docx', 'google.txt', b'1', 'enum12'),
('5534/11', 'Selam', 'Zelalem', 'Alemu', 'm', '2010-06-08', '398', 'single', 'yes', 'Menz', 'orthodox', 'illiterate', 'unemployed', 'Capture4.JPG', 'Zelalem Ashenafi', '0967410404', '0967410404', 'zolaashenafi48@gmail.com', 'Project_functionalities_done.docx', 'Project_functionalities_done.docx', b'1', 'enum12');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `no` int(11) NOT NULL,
  `supervisor_id` varchar(30) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `subcity` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'supervisor',
  `avatar` varchar(255) NOT NULL DEFAULT 'avatar.png',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`no`, `supervisor_id`, `fname`, `lname`, `email`, `phone`, `subcity`, `password`, `role`, `avatar`, `status`, `address`) VALUES
(5, 'super_03', 'Tade', 'Mekonene', 'tade@gmail.com', '0985236541', 'Tebase', '$2y$10$EXYNDOnKmgcUp3YOg2GsaOOISWxAJSNdm3Swa7dpG42BhFjJTpOmy', 'supervisor', 'avatar.png', b'1', 'Chacha'),
(6, 'super001', 'Tadesse', 'Molla', 'tade@yahoo.com', '0956712222', 'Minilik', '$2y$10$jsNSlqxv78D4q.QKNxClru/SxCiFjZxKDFagDYCsgmARzjL7tvg5u', 'supervisor', 'avatar.png', b'1', 'Tebase'),
(7, 'super123', 'Teka', 'Molla', 'super@gmail.com', '0912345678', 'Atse zerayakob', '$2y$10$qokp8OHpSgr3h2IELJyEte2w.IXoC0/mZjdqvDhZnXtSu7ERPOvRm', 'supervisor', 'avatar.png', b'1', 'Chaha'),
(8, 'super345', 'Zelalem', 'Ashenafi', 'zolaashenafi48@gmail.com', '0967410404', 'Tayetu', '$2y$10$zOOfVSVINXrLu4gfQXYdvOMu5Ec43hTb.f9ax.nhQTMFCpmYDXTJq', 'supervisor', 'avatar.png', b'1', 'A/k subcity'),
(9, 'super123', 'Asefa', 'Safi', 'hello@gmail.com', '0987456523', 'Minilik', '$2y$10$8ink1RuwHNFewvJV15kNz.NkKQnZsffEi.4cQCDhXP/LdpEMN88ti', 'supervisor', 'avatar.png', b'1', 'Chaha'),
(10, 'super333', 'Aster', 'Alemayew', 'cha@gmail.com', '0912365478', 'Minilik', '$2y$10$D/HCeZuXz/8L/eBahvAg0OPlAyQQi7Aq6ySWGF6ujbFmjL55BKeAq', 'supervisor', 'avatar.png', b'1', 'Chacha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `enumerators`
--
ALTER TABLE `enumerators`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`not_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enumerators`
--
ALTER TABLE `enumerators`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `house`
--
ALTER TABLE `house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `not_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
