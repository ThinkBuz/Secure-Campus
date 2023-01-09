-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 03:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `securecampusdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `anomalydetection`
--

CREATE TABLE `anomalydetection` (
  `id` int(2) NOT NULL,
  `AnomalyName` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `AnomalyStartedTime` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `AnomalyEndedTime` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `CameraId` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `anomalydetection`
--

INSERT INTO `anomalydetection` (`id`, `AnomalyName`, `AnomalyStartedTime`, `AnomalyEndedTime`, `CameraId`) VALUES
(1, 'Fire', '2023-01-01 02:25:30.156129', '2023-01-01 02:26:20.064909', 1),
(2, 'Fire', '2023-01-01 02:48:41.684015', '2023-01-01 02:49:35.867132', 1),
(3, 'Fire', '2023-01-01 02:55:00.142070', '2023-01-01 02:55:20.394251', 1),
(4, 'Fire', '2023-01-01 03:00:01.227287', '2023-01-01 03:00:22.647856', 1),
(5, 'Fire', '2023-01-01 03:07:35.223674', '2023-01-01 03:07:56.708582', 1),
(6, 'Drunk', '2023-01-01 05:33:35.936533', '2023-01-01 05:35:45.748056', 1),
(7, 'Earthquake', '2023-01-02 03:38:30.819665', '2023-01-02 03:40:43.843773', 1),
(8, 'Flood', '2023-01-08 19:58:55.167897', '2023-01-08 20:01:09.575918', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `image_path` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `phone`, `gender`, `image_path`) VALUES
(1, '1bestcsharp blog', '1bestcsharp', '12345', '0911882828', 'Male', 'C:/images/user 2.png'),
(5, 'test admin', 'admin', 'pass', '88110119', 'Female', 'C:/images/user 6.png'),
(6, 'new user', 'newuser', 'userpass', '8811002', 'Male', 'C:/images/user 1.png'),
(7, 'abc lmp', 'abcd', '9999', '2819177123', 'Male', 'C:/images/user9.png'),
(8, 'aaaa', '1bestcsharp2', 'AAAAA', '1919191', 'Male', 'C:/images/user 2.png'),
(9, 'admin', 'admin2', 'admin', '101011010', 'Male', 'C:/images/user 3.png'),
(10, 'the new user', 'thenewuser', 'pass123', '4949494949', 'Female', 'C:/images/book covers using canva.com/book_1.png'),
(11, 'the new admin', 'thenewadmin', 'aaaa', '18181881818', 'Male', 'C:/images/user 1.png'),
(12, 'admin user', 'admin_user', 'mypass', '19191911919', 'Female', 'C:/images/user 5.png'),
(13, 'myfullname', 'myusername', 'mypass', '118181818', 'Female', 'C:/images/user 4.png'),
(14, 'abuzar', 'abuzar', '123', '03174121580', 'Male', 'C:/Users/ABUZAR/Pictures/vlcsnap-2022-11-24-00h22m02s571.png'),
(15, 'shiza', 'shiza', '123', '03004210231', 'Female', 'C:/Users/ABUZAR/Downloads/2.PNG'),
(16, 'ali', 'ali', '123', '03004254085', 'Male', 'C:/Users/ABUZAR/Downloads/FIVERR UI-UX/Level1-1.png'),
(17, 'ahmed', 'ahmed', '123', '03004254085', 'Male', 'C:/Users/ABUZAR/Downloads/FIVERR UI-UX/Level1-2.png'),
(18, 'abubakar', 'abubakar', '123', '0300232323', 'Male', 'C:/Users/ABUZAR/Downloads/pngwing.com (1).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anomalydetection`
--
ALTER TABLE `anomalydetection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anomalydetection`
--
ALTER TABLE `anomalydetection`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
