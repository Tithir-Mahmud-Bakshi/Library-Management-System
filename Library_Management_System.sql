-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2022 at 12:48 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Library Management System`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `first_name`, `last_name`, `Username`, `Password`, `email`, `phone`) VALUES
('2015-2-15-153', 'Md. Tarikul', 'Islam', 'tarikul', 'tarikul1234', 'tarikul@ewubd.edu', '+8801912436712'),
('2015-2-15-154', 'Debasish', 'Ghosh', 'debasish', 'debasish1234', 'debasish@ewubd.edu', '+8801912436713'),
('2015-2-70-150', 'Santanu', 'Sarkar', 'sarkar', 'sarkar1234', 'santanu@ewubd.edu', '+8801621778341');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `authors_name` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL,
  `book_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `title`, `authors_name`, `edition`, `status`, `quantity`, `book_type`) VALUES
(1, 'Introduction to Electrical Science', 'Adrian Waygood ', '2nd', 'Available', 3, 'Science'),
(2, 'Introduction to Computer Science', ' G.Michael Schneider', '1st', 'Available', 5, 'Science'),
(3, 'Introduction to finance', ' Ronald W. Melicher', '1st', 'Available', 4, 'Bussiness'),
(4, 'Politico-Military Strategy of the Bangladesh Liberation War, 1971', 'Guru Saday Batabyal', '1st', 'Available', 3, 'History'),
(5, 'Introduction to Macroeconomics', 'Alan C. Stockman', '2nd', 'Available', 8, 'Economic');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `username` varchar(100) NOT NULL,
  `book_id` int(20) NOT NULL,
  `approve` varchar(50) DEFAULT NULL,
  `issue_date` varchar(100) DEFAULT NULL,
  `return_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`username`, `book_id`, `approve`, `issue_date`, `return_date`) VALUES
('2016-1-60-095', 3, 'Not approved', '18-12-2021', '28-12-2021'),
('2017-2-60-163', 2, 'Approved', '18-12-2021', '28-12-2021'),
('2', 4, 'APPROVED', '2021-12-28', '2022-01-08');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `Admin_username` varchar(100) NOT NULL,
  `borrower_username` varchar(100) NOT NULL,
  `book_id` int(50) NOT NULL,
  `return_status` varchar(100) NOT NULL,
  `returns_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`Admin_username`, `borrower_username`, `book_id`, `return_status`, `returns_date`) VALUES
('2015-2-70-150', '2017-2-60-160', 3, 'EXPIRED', '2021-12-28'),
('2015-2-15-153', '2017-2-60-163', 2, 'RETURNED', '2021-11-18'),
('2015-2-15-154', '2016-1-60-095', 3, 'RETURNED', '2021-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Std_ID_no` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Std_ID_no`, `first_name`, `last_name`, `Username`, `Password`, `Phone`, `Email`) VALUES
('2016-1-60-095', 'Tithir Mahmud', 'Bakshi', '2016-1-60-095', 'tithir1234', '+880-1621619048', '2016-1-60-095@std.ewubd.edu'),
('2016-2-60-095', 'Hamza Mahmud', 'Takir', '2016-2-60-095', 'tithir1234', '+880-1621619052', '2016-2-60-095@std.ewubd.edu'),
('2017-2-60-160', 'Jashedul Islam', 'Jusef', '2017-2-60-160', 'jashedul1234', '+880-1621619049', '2017-2-60-160@std.ewubd.edu'),
('2017-2-60-163', 'Snehashis Ghosh', 'Pial', '2017-2-60-163', 'pial1234', '+880-1621619047', 'pialghosh32@gmail.com'),
('2018-1-60-147', 'Afrina', 'Mustofa', '2018-1-60-147', 'afrina1234', '+880-1621619049', '2018-1-60-147@std.ewubd.edu');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teach_id` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Teach_id`, `first_name`, `last_name`, `Username`, `Password`, `Phone`, `Email`) VALUES
('1', 'Wasif', 'Reza', 'Wasifreza', 'wakidf1234', '+880166747642', 'wasifreza@ewubd.edu'),
('2', 'Kamrul', 'Reza', 'Wasilreza', 'wasilf1234', '+880166747642', 'wasifreza@ewubd.edu'),
('3', 'Samim', 'Ripon', 'Samimripon', 'Shamimripon1234', '+880166747643', 'shamimripon@ewubd.edu'),
('4', 'Rezwanul', 'Haque', 'Rezwanhaque', 'rezwanhaquef1234', '+880166747648', 'rezwanhaque@ewubd.edu'),
('5', 'Nawab', 'Yousuf', 'nawabyousuf', 'nawabyousuf1234', '+880166747646', 'nawabyousuf@ewubd.edu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Std_ID_no`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teach_id`),
  ADD UNIQUE KEY `Username` (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
