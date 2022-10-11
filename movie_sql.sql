-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 01:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `name` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `sl` int(100) NOT NULL,
  `url` varchar(250) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`name`, `year`, `rating`, `genre`, `sl`, `url`, `language`) VALUES
('KGF:Chapter 2', '2022-04-14', 0, 'Action', 1, 'https://i.pinimg.com/736x/e9/b5/5e/e9b55e95839fd3932dfd4a0a017d9fdf.jpg', 'Kannada'),
('vikram', '03-06-22', 0, 'Action/Mystery', 2, 'https://st1.latestly.com/wp-content/uploads/2021/07/Vikram--784x441.jpg', 'Tamil'),
('Thor: Love and Thunder', '2022-06-06', 0, 'Adventure', 9, 'https://tse1.mm.bing.net/th?id=OIP.-nnuIZ6APgKDeiwl5VR_NgHaKL&pid=Api&P=0', 'English'),
('RRR', '2022-06-06', 0, 'Drama', 10, 'https://stat2.bollywoodhungama.in/wp-content/uploads/2019/03/RRR-2022-306x393.jpeg', 'Telugu'),
('God father', '05-10-22', 0, 'Thriller/Crime', 33, 'https://1847884116.rsc.cdn77.org/tamil/home/godfather10102022m.jpg', 'Telugu'),
('kurup', '2022-11-12', 0, 'THRILLER', 40, 'https://tse3.mm.bing.net/th?id=OIP.bl-yCU8p-sJa8A1fyJrR-QHaK6&pid=Api&P=0', 'Malayalam'),
('Jai bhim', '2022-11-02', 0, 'Legal drama', 41, 'https://www.mixindia.com/wp-content/uploads/2021/07/jai-bhim-movie-first-look-poster.jpg', 'Tamil'),
('777 charlie', '2022-06-10', 0, 'Drama/Adventure', 42, 'https://tse3.mm.bing.net/th?id=OIP.um4GSjQ9QrFzRbPC27OZeQHaKx&pid=Api&P=0', 'Telugu');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `sl` int(10) NOT NULL,
  `movie_id` int(100) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_role` int(100) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`sl`, `movie_id`, `user_id`, `user_role`, `rating`, `value`) VALUES
(4, 2, 'admin@gmail.com', 1, 9, 'assasa'),
(5, 1, 'ghouse@gmail.com', 0, 5, 'saaddfadf'),
(6, 33, 'ghouse@gmail.com', 0, 5, 'adaadf'),
(10, 9, 'raju@gmail.com', 0, 6, 'good movie'),
(18, 2, 'raju@gmail.com', 0, 7, 'very good movie'),
(24, 1, 'raju@gmail.com', 0, 8, 'good'),
(26, 33, 'raju@gmail.com', 2, 8, 'good movie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sl` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sl`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 1),
(8, 'raju', 'raju@gmail.com', '123', 2),
(9, 'Ghouse', 'ghouse@gmail.com', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `movie_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sl` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
