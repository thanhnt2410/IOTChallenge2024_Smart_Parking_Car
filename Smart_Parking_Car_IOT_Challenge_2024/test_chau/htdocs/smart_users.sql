-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(2, 'king', 'king123', 'king@gmail.com'),
(3, 'admin', 'admin123', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `attendant`
--

CREATE TABLE `attendant` (
  `id_attendant` int(200) NOT NULL,
  `Fname` varchar(200) NOT NULL,
  `Lname` varchar(200) NOT NULL,
  `mobile_no` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `parking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendant`
--

INSERT INTO `attendant` (`id_attendant`, `Fname`, `Lname`, `mobile_no`, `location`, `username`, `password`, `parking_id`) VALUES
(1, 'chou', 'minh', '070824555', 'Lang Ha', 'attendant1', '12045', 5),
(2, 'king', 'doshi', '0708009360', 'Lang', 'attendant2', '12345', 5),
(3, 'james', 'peter', '0708009360', 'Chua Boc', 'attendant3', '12345', 6),
(4, 'francis', 'mwakidoshi', '0708009360', 'Tran Dai Nghia', 'attendant4', 'nyali', 6),
(6, 'Chau', 'Pham', '0869704356', 'Ca Mau', 'chouchou', '$2y$10$YqK8AGtkwL3QEHO/D5mJxe295SrtpgUhGd7Z5bFIQH7u4k/ePMERK', 3);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `id` int(11) NOT NULL,
  `licence_plate` varchar(20) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `action` varchar(10) DEFAULT NULL,
  `parking_lot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`id`, `licence_plate`, `timestamp`, `action`, `parking_lot_id`) VALUES
(1, '98B2-93240', '2024-07-25 00:10:54', 'entry', 1),
(2, '98B2-93240', '2024-07-25 00:11:22', 'exit', 1),
(3, '98B2-93240', '2024-07-25 00:19:28', 'entry', 1),
(4, '98B2-93240', '2024-07-25 00:25:17', 'exit', 0);

-- --------------------------------------------------------

--

-- --------------------------------------------------------

--
-- Table structure for table `parkinglot`
--

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `street` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slot` int(200) NOT NULL,
  `remaining_slots` varchar(50) NOT NULL,
  `attendant` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `location`, `street`, `name`, `slot`, `remaining_slots`, `attendant`, `date`, `price`) VALUES
(3, 'Hanoi', 'Hoa Lac', 'PARKING LOT #3', 10, '9', 'attendant1', '2024-07-20 13:37:37', '3'),
(4, 'New York City', 'Building ABC', 'PARKINGLOT #4', 20, '18', 'chouchou', '0000-00-00 00:00:00', '4'),
(5, 'Hanoi', 'Ta Quang Buu', 'PARKING LOT #1', 151, '135', 'nyali', '2024-07-15 14:36:11', '2'),
(6, 'TPHCM', 'Bach Khoa', 'PARKING LOT #2', 200, '150', 'nyali', '2024-07-20 14:42:49', '2'),
(8, 'Hanoi', 'Lotte Mart', 'PARKING LOT #5', 30, '20', 'attendant3', '2024-07-20 16:24:29', '5');

-- --------------------------------------------------------

--
-- Table structure for table `parking_lot`
--

CREATE TABLE `parking_lot` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parking_lot`
--

INSERT INTO `parking_lot` (`id`, `name`) VALUES
(1, 'Bãi đỗ xe ngoài trời'),
(2, 'Bãi đỗ xe trong nhà');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(255) NOT NULL,
  `parking_id` int(25) NOT NULL,
  `slots` varchar(25) NOT NULL,
  `hours` int(25) NOT NULL,
  `cost` int(25) NOT NULL,
  `customer` varchar(25) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL,
  `biensoxe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `parking_id`, `slots`, `hours`, `cost`, `customer`, `time`, `status`, `biensoxe`) VALUES
(19, 5, '1', 2, 4, 'john@gmail.com', '2024-06-27 18:56:42', 'accepted', '29BD00868'),
(20, 5, '1', 2, 4, 'john@gmail.com', '2024-06-27 19:02:32', 'rejected', '29BD00868'),
(21, 5, '1', 2, 4, 'john@gmail.com', '2024-06-27 19:02:53', 'rejected', '29BD00868'),
(22, 5, '1', 2, 4, 'john@gmail.com', '2024-06-27 19:03:11', 'rejected', '29BD00868'),
(23, 5, '1', 1, 2, 'john@gmail.com', '2024-07-04 17:51:38', 'accepted', '29BD00868'),
(24, 5, '1', 2, 4, 'john@gmail.com', '2024-07-04 18:12:21', 'accepted', '29BD00868'),
(25, 5, '1', 2, 4, 'john@gmail.com', '2024-07-04 18:52:25', 'rejected', '29BD00868'),
(26, 3, '1', 1, 2, 'chou@gmail.com', '2024-07-04 19:24:59', 'accepted', '29BD-1234553'),
(27, 5, '1', 1, 2, 'john@gmail.com', '2024-07-04 19:27:37', 'rejected', '29BD00868'),
(29, 3, '1', 1, 3, 'chou@gmail.com', '2024-07-20 05:04:55', 'accepted', '29BD-1234553');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_diem_do`
--

CREATE TABLE `thong_tin_diem_do` (
  `id` int(11) NOT NULL,
  `address` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `fire` float NOT NULL,
  `battery` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parking_lot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thong_tin_diem_do`
--

INSERT INTO `thong_tin_diem_do` (`id`, `address`, `status`, `fire`, `battery`, `last_update`, `parking_lot_id`) VALUES
(1, '0x68DB', 0, 0, 242, '2024-07-24 17:22:41', 1),
(2, '0x68DB', 0, 0, 242, '2024-07-24 17:22:41', 1),
(3, '0x68DB', 0, 0, 242, '2024-07-24 17:22:41', 1),
(4, '0x68DB', 0, 0, 242, '2024-07-24 17:22:41', 1),
(5, '', 0, 0, 0, '2024-07-24 17:22:50', 2);

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_ve_xe`
--

CREATE TABLE `thong_tin_ve_xe` (
  `id` int(11) NOT NULL,
  `licence_plate` varchar(30) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thong_tin_ve_xe`
--

INSERT INTO `thong_tin_ve_xe` (`id`, `licence_plate`, `trang_thai`) VALUES
(1, '98B2-93240', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_confirm` varchar(255) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `biensoxe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `password_confirm`, `sdt`, `biensoxe`) VALUES
(1, 'john', 'john@gmail.com', 'john1234', 'john1234', '098765432', '29BD00868'),
(2, 'king', 'king@gmail.com', 'king1234', 'king1234', '0987654356', '28ABgdsk'),
(3, 'john', 'kuku@gmail.com', '123456789', '123456789', '045677654', 'XYZCD'),
(4, 'rapho', 'rapho@gmail.com', '123456789', '123456789', '0987654567', 'ABCDED'),
(5, 'patty', 'patty@gmail.com', 'king12345', 'king12345', '091762588', 'fyd563'),
(10, 'Chau Pham', 'chou@gmail.com', '$2y$10$iG5XZYa.o1uRZfnMm1FKJ.lfPmhCEtSUnnijNJlYWQQjPSqh83ZLa', '$2y$10$BmDx5TOVZW1Ira0ABCPPTernu.skv9hBvoOSau4TKpm38G3bmmGEK', '0869704356', '29BD-1234553');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendant`
--
ALTER TABLE `attendant`
  ADD PRIMARY KEY (`id_attendant`),
  ADD KEY `attendant_parkings_fk` (`parking_id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderlines`
--
ALTER TABLE `orderlines`
  ADD PRIMARY KEY (`orderline_id`);

--
-- Indexes for table `parkinglot`
--
ALTER TABLE `parkinglot`
  ADD PRIMARY KEY (`parkinglot_id`),
  ADD KEY `parkinglot_parkings_fk` (`parking_id`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_lot`
--
ALTER TABLE `parking_lot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_diem_do`
--
ALTER TABLE `thong_tin_diem_do`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_ve_xe`
--
ALTER TABLE `thong_tin_ve_xe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendant`
--
ALTER TABLE `attendant`
  MODIFY `id_attendant` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parking_lot`
--
ALTER TABLE `parking_lot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `thong_tin_diem_do`
--
ALTER TABLE `thong_tin_diem_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `thong_tin_ve_xe`
--
ALTER TABLE `thong_tin_ve_xe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendant`
--
ALTER TABLE `attendant`
  ADD CONSTRAINT `attendant_parkings_fk` FOREIGN KEY (`parking_id`) REFERENCES `parkings` (`id`);

--
-- Constraints for table `parkinglot`
--
ALTER TABLE `parkinglot`
  ADD CONSTRAINT `parkinglot_parkings_fk` FOREIGN KEY (`parking_id`) REFERENCES `parkings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
