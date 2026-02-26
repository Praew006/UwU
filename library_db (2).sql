-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2026 at 07:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `type_name` varchar(100) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `book_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `type_name`, `author`, `status`, `book_image`) VALUES
(3, 'คู่กรรม 2', 'วรรณกรรมไทย', 'ทมยันตี', 'available', 'uploads/books/book_1771837802_430.jpg'),
(4, 'Artificial Intelligence: A Modern Approach (Fourth Edition)', 'เทคโนโลยี / ปัญญาประดิษฐ์', 'Stuart Russell, Peter Norvig', 'available', 'uploads/books/book_1771837876_788.jpg'),
(5, 'แคลคูลัส 1 สำหรับวิศวกร', 'วิศวกรรม / คณิตศาสตร์', 'รศ. ดร.ธีระศักดิ์ อุรัจนานนท์', 'available', 'uploads/books/book_1771837782_748.jpg'),
(6, 'หลักการบัญชี', 'บัญชี / ธุรกิจ', 'ทีฆะทัศน์ ทองกูล', 'available', 'uploads/books/book_1771838017_262.jpg'),
(7, 'ประวัติศาสตร์ไทย', 'ประวัติศาสตร์ไทย', 'รงรอง วงศ์โอบอ้อม', 'available', 'uploads/books/book_1771838044_819.jpg'),
(8, 'อารยธรรมโลก', 'ประวัติศาสตร์โลก', 'พระครูปลัดสุวัฒนโพธิคุณ (สมชาย ฐานวุฑฺโฒ)', 'available', 'uploads/books/book_1771838062_871.jpg'),
(9, 'PHYSICS เจาะลึกพื้นฐานฟิสิกส์ ม.ต้น', 'วิทยาศาสตร์', 'ครูปอนด์ (END)', 'available', 'uploads/books/book_1771837983_281.jpg'),
(10, 'เพชรพระอุมา ตอน ไพรมหากาฬ (เล่ม 1)', 'วรรณกรรมไทย', 'พนมเทียน', 'available', 'uploads/books/book_1771837962_552.jpg'),
(11, 'PHP and MySQL Web Development (Fifth Edition)', 'โปรแกรมมิ่ง / เว็บ', 'Luke Welling, Laura Thomson', 'available', 'uploads/books/book_1771837928_702.jpg'),
(12, 'เปลี่ยนชีวิต ได้ทันใจ ด้วยความคิดบวก', 'พัฒนาตนเอง', 'พัฒน์สุกา สมิร', 'borrowed', 'uploads/books/book_1771837893_548.jpg'),
(13, 'สารานุกรม ดนตรีและเพลงไทย', 'ดนตรี / ศิลปวัฒนธรรม', 'รศ. กาญจนา อินทรสุนานนท์', 'borrowed', 'uploads/books/book_1771837748_738.jpg'),
(14, 'คู่มือ สุขภาพดี ดูแลได้ด้วยตนเอง', 'สุขภาพ', 'นพ. ธีระ ศิริอาชาวัฒนา', 'available', 'uploads/books/book_1771837730_795.jpg'),
(15, 'The Art of Portrait Photography', 'การถ่ายภาพ / ศิลปะ', 'ดร.ชลิดา ทรงประสิทธิ์', 'borrowed', 'uploads/books/book_1771837703_577.jpg'),
(16, 'Data Science and Analytics with Python', 'Data Science', 'K. Munonye, N. Wonu', 'available', 'uploads/books/book_1771838076_234.jpg'),
(17, 'การเป็นน้องแพรว เล่ม 1', 'พัฒนาตนเอง', 'น้องเเพรว', 'available', 'uploads/books/book_1771837635_517.png'),
(18, 'การเป็นน้องแพรว เล่ม 2', 'พัฒนาตนเอง', 'น้องเเพรว', 'borrowed', 'uploads/books/book_1771999684_650.png');

-- --------------------------------------------------------

--
-- Table structure for table `book_types`
--

CREATE TABLE `book_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `book_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_types`
--

INSERT INTO `book_types` (`type_id`, `type_name`, `book_id`, `book_name`) VALUES
(3, 'วรรณกรรมไทย', 3, 'คู่กรรม 2'),
(4, 'เทคโนโลยี / ปัญญาประดิษฐ์', 4, 'Artificial Intelligence: A Modern Approach (Fourth Edition)'),
(5, 'คณิตศาสตร์ / วิศวกรรม', 5, 'แคลคูลัส 1 สำหรับวิศวกร'),
(6, 'บัญชี / ธุรกิจ', 6, 'หลักการบัญชี'),
(7, 'ประวัติศาสตร์', 7, 'ประวัติศาสตร์ไทย'),
(8, 'ประวัติศาสตร์ / สังคม', 8, 'อารยธรรมโลก'),
(9, 'วิทยาศาสตร์', 9, 'PHYSICS เจาะลึกพื้นฐานฟิสิกส์ ม.ต้น'),
(10, 'วรรณกรรมไทย', 10, 'เพชรพระอุมา ตอน ไพรมหากาฬ (เล่ม 1)'),
(11, 'โปรแกรมมิ่ง / เว็บ', 11, 'PHP and MySQL Web Development (Fifth Edition)'),
(12, 'จิตวิทยา / พัฒนาตนเอง', 12, 'เปลี่ยนชีวิต ได้ทันใจ ด้วยความคิดบวก'),
(13, 'ดนตรี / ศิลปวัฒนธรรม', 13, 'สารานุกรม ดนตรีและเพลงไทย'),
(14, 'สุขภาพ', 14, 'คู่มือ สุขภาพดี ดูแลได้ด้วยตนเอง'),
(15, 'การถ่ายภาพ / ศิลปะ', 15, 'The Art of Portrait Photography'),
(16, 'Data Science', 16, 'Data Science and Analytics with PYTHON: A Comprehensive Guide'),
(32, 'พัฒนาตนเอง', 17, 'การเป็นน้องแพรว เล่ม 1'),
(33, 'พัฒนาตนเอง', 18, 'การเป็นน้องแพรว เล่ม 2');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_history`
--

CREATE TABLE `borrow_history` (
  `history_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_history`
--

INSERT INTO `borrow_history` (`history_id`, `user_id`, `book_id`, `borrow_date`, `return_date`, `status`) VALUES
(2, 1, 18, '2026-02-25', '2026-03-12', 'borrowed'),
(3, 1, 12, '2026-02-25', '2026-03-12', 'borrowed'),
(4, 1, 13, '2026-02-25', '2026-03-12', 'borrowed'),
(5, 3, 15, '2026-02-25', '2026-03-12', 'borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`favorite_id`, `user_id`, `book_id`, `created_at`) VALUES
(4, 1, 15, '2026-02-18 17:38:49'),
(6, 1, 13, '2026-02-25 13:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `fines`
--

CREATE TABLE `fines` (
  `fine_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `category` enum('เก่า','ขาด','ใหม่','หาย') DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `age`, `email`, `password`) VALUES
(1, 'Somchai', 'Dee', 20, 'a@mail.com', '12345678'),
(2, 'admin', 'admin', 40, 'admin002@gmail.com', 'admin123456'),
(3, 'ภัทราพร', 'อรรคนันท์', 12, 'dee@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_types`
--
ALTER TABLE `book_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD UNIQUE KEY `uq_user_book` (`user_id`,`book_id`),
  ADD KEY `fk_favorites_book` (`book_id`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fine_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `book_types`
--
ALTER TABLE `book_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `borrow_history`
--
ALTER TABLE `borrow_history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_types`
--
ALTER TABLE `book_types`
  ADD CONSTRAINT `book_types_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE;

--
-- Constraints for table `borrow_history`
--
ALTER TABLE `borrow_history`
  ADD CONSTRAINT `borrow_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `borrow_history_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `fk_favorites_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_favorites_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fines_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fines_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
