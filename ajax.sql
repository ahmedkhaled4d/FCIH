-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2015 at 06:00 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `datemade` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `firstname`, `lastname`, `datemade`) VALUES
(1, 'ahmed', 'khaled', '15/10/1994'),
(2, 'ahmed', 'khaled', '15/10/1994'),
(3, 'ahmed', 'khaled', '15/10/1994'),
(4, 'ahmed', 'khaled', '15/10/1994'),
(5, 'ahmed', 'khaled', '15/10/1994'),
(6, 'ahmed', 'khaled', '15/10/1994'),
(7, 'ahmed', 'khaled', '15/10/1994'),
(8, 'ahmed', 'khaled', '15/10/1994'),
(9, 'ahmed', 'khaled', '15/10/1994'),
(10, 'ahmed', 'khaled', '15/10/1994'),
(11, 'ahmed', 'khaled', '15/10/1994'),
(12, 'hosam', 'mohamed', '15/9/1554'),
(13, 'hosam', 'mohamed', '15/9/1554'),
(14, 'hosam', 'mohamed', '15/9/1554'),
(15, 'hosam', 'mohamed', '15/9/1554'),
(16, 'hosam', 'mohamed', '15/9/1554'),
(17, 'hosam', 'mohamed', '15/9/1554'),
(18, 'hosam', 'mohamed', '15/9/1554'),
(19, 'hosam', 'mohamed', '15/9/1554'),
(20, 'hosam', 'mohamed', '15/9/1554'),
(21, 'hosam', 'mohamed', '15/9/1554'),
(22, 'yasmen', 'das', '15/9/1554'),
(23, 'yasmen', 'das', '15/9/1554'),
(24, 'yasmen', 'das', '15/9/1554'),
(25, 'yasmen', 'das', '15/9/1554'),
(26, 'yasmen', 'das', '15/9/1554'),
(27, 'yasmen', 'das', '15/9/1554'),
(28, 'yasmen', 'das', '15/9/1554'),
(29, 'yasmen', 'das', '15/9/1554'),
(30, 'ali', 'abaseas', '85/9/2001'),
(31, 'ali', 'abaseas', '85/9/2001'),
(32, 'ali', 'abaseas', '85/9/2001'),
(33, 'ali', 'abaseas', '85/9/2001'),
(34, 'ali', 'abaseas', '85/9/2001'),
(35, 'ali', 'abaseas', '85/9/2001'),
(36, 'ali', 'abaseas', '85/9/2001'),
(37, 'ali', 'abaseas', '85/9/2001'),
(38, 'mostafa', 'ali', '08/12/2001'),
(39, 'mostafa', 'ali', '08/12/2001'),
(40, 'mostafa', 'ali', '08/12/2001'),
(41, 'mostafa', 'ali', '08/12/2001'),
(42, 'mostafa', 'ali', '08/12/2001'),
(43, 'mostafa', 'ali', '08/12/2001'),
(44, 'mostafa', 'ali', '08/12/2001'),
(45, 'mostafa', 'ali', '08/12/2001'),
(46, 'mostafa', 'ali', '08/12/2001'),
(47, 'mostafa', 'ali', '08/12/2001'),
(48, 'mostafa', 'ali', '08/12/2001'),
(49, 'mostafa', 'ali', '08/12/2001'),
(50, 'mostafa', 'ali', '08/12/2001'),
(51, 'mostafa', 'ali', '08/12/2001'),
(52, 'mostafa', 'ali', '08/12/2001'),
(53, 'mostafa', 'ali', '08/12/2001'),
(54, 'mostafa', 'ali', '08/12/2001'),
(55, 'mostafa', 'ali', '08/12/2001'),
(56, 'mostafa', 'ali', '08/12/2001'),
(57, 'mostafa', 'ali', '08/12/2001'),
(58, 'mostafa', 'ali', '08/12/2001'),
(59, 'mostafa', 'ali', '08/12/2001'),
(60, 'mostafa', 'ali', '08/12/2001'),
(61, 'mostafa', 'ali', '08/12/2001'),
(62, 'mostafa', 'ali', '08/12/2001'),
(63, 'mostafa', 'ali', '08/12/2001'),
(64, 'mostafa', 'ali', '08/12/2001'),
(65, 'mostafa', 'ali', '08/12/2001'),
(66, 'mostafa', 'ali', '08/12/2001'),
(67, 'mostafa', 'ali', '08/12/2001'),
(68, 'mostafa', 'ali', '08/12/2001'),
(69, 'mostafa', 'ali', '08/12/2001'),
(70, 'mostafa', 'ali', '08/12/2001'),
(71, 'mostafa', 'ali', '08/12/2001'),
(72, 'mostafa', 'ali', '08/12/2001'),
(73, 'mostafa', 'ali', '08/12/2001'),
(74, 'mostafa', 'ali', '08/12/2001'),
(75, 'mostafa', 'ali', '08/12/2001'),
(76, 'mostafa', 'ali', '08/12/2001'),
(77, 'mostafa', 'ali', '08/12/2001'),
(78, 'mostafa', 'ali', '08/12/2001'),
(79, 'mostafa', 'ali', '08/12/2001'),
(80, 'mostafa', 'ali', '08/12/2001'),
(81, 'mostafa', 'ali', '08/12/2001'),
(82, 'mostafa', 'ali', '08/12/2001'),
(83, 'mostafa', 'ali', '08/12/2001'),
(84, 'mostafa', 'ali', '08/12/2001'),
(85, 'mostafa', 'ali', '08/12/2001');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
