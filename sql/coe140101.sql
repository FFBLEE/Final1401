-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 03:02 AM
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
-- Database: `final1401`
--

-- --------------------------------------------------------

--
-- Table structure for table `coe140101`
--

CREATE TABLE `coe140101` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coe140101`
--

INSERT INTO `coe140101` (`id`, `name`, `phone`, `email`, `country`, `currency`) VALUES
(1, 'Nita Hunt', '1-462-532-4815', 'ac@google.couk', 'Philippines', '$31.28'),
(2, 'Kelly Francis', '(767) 238-3527', 'aliquam@hotmail.net', 'Mexico', '$90.92'),
(3, 'Kirsten Combs', '(714) 521-2642', 'libero.et.tristique@aol.edu', 'Italy', '$23.34'),
(4, 'Illiana Melton', '1-491-564-4427', 'lobortis.mauris@icloud.org', 'Mexico', '$38.35'),
(5, 'Uriel Macias', '(942) 397-9688', 'nunc@protonmail.couk', 'Austria', '$22.28'),
(6, 'Randall Woodward', '(483) 676-5747', 'at.augue@outlook.com', 'Sweden', '$55.27'),
(7, 'Megan Terry', '1-481-714-0888', 'proin.velit@icloud.org', 'South Africa', '$35.73'),
(8, 'Clio Avila', '(564) 595-1395', 'sed@protonmail.ca', 'Belgium', '$12.75'),
(9, 'Xander Spencer', '(171) 853-5363', 'fringilla@yahoo.edu', 'Canada', '$3.09'),
(10, 'Bianca Castillo', '(365) 786-4362', 'lorem@google.ca', 'Australia', '$85.11'),
(11, 'Allistair Walter', '1-222-291-6051', 'ac@protonmail.com', 'Australia', '$55.47'),
(12, 'Murphy Fisher', '(187) 915-2484', 'risus.in@protonmail.com', 'Netherlands', '$49.47'),
(13, 'Silas Keith', '1-392-522-4016', 'sagittis@google.org', 'Costa Rica', '$37.66'),
(14, 'Duncan Pickett', '1-418-137-7107', 'fermentum@icloud.edu', 'Poland', '$61.96'),
(15, 'Ross Noble', '1-852-247-5941', 'magna.suspendisse@protonmail.org', 'Indonesia', '$71.79'),
(16, 'Justina Hammond', '1-225-393-4761', 'velit.cras@outlook.ca', 'South Korea', '$1.32'),
(17, 'Mari Nash', '1-688-456-5416', 'ipsum.ac@google.com', 'Italy', '$51.39'),
(18, 'Chloe Arnold', '(212) 553-2032', 'vivamus.euismod.urna@icloud.org', 'Netherlands', '$12.34'),
(19, 'Channing Head', '(380) 310-7206', 'eget.odio.aliquam@aol.edu', 'New Zealand', '$41.13'),
(20, 'Martina Hubbard', '(427) 208-2252', 'nec.tempus.mauris@outlook.net', 'Ukraine', '$81.41'),
(21, 'Camille Lawson', '(923) 438-0273', 'urna.nullam@yahoo.net', 'Canada', '$31.44'),
(22, 'Natalie Garrett', '1-534-599-1676', 'posuere.cubilia.curae@protonmail.com', 'Chile', '$35.83'),
(23, 'Madeline Durham', '(848) 350-8073', 'justo.nec@icloud.net', 'Canada', '$82.36'),
(24, 'Dai Hoffman', '1-490-563-2155', 'posuere.cubilia@google.org', 'United Kingdom', '$41.31'),
(25, 'Nissim Zimmerman', '(188) 776-9568', 'ante@yahoo.org', 'Belgium', '$5.44'),
(26, 'Zachery Brooks', '(420) 565-0781', 'velit.justo@protonmail.org', 'Ireland', '$96.92'),
(27, 'Tucker Mcbride', '(940) 836-5363', 'ac.libero.nec@aol.com', 'Chile', '$79.62'),
(28, 'Kyle Wall', '(898) 831-9622', 'eu.odio@icloud.edu', 'New Zealand', '$66.24'),
(29, 'Bevis Oneil', '(788) 775-3808', 'urna.nunc@yahoo.edu', 'United States', '$14.74'),
(30, 'Dale Wolf', '1-226-535-1672', 'magna.sed@icloud.couk', 'Germany', '$14.86'),
(31, 'Bethany Koch', '(792) 682-4522', 'eget.varius@outlook.com', 'Canada', '$62.86'),
(32, 'Elaine Reed', '1-876-531-7061', 'dolor.tempus@hotmail.ca', 'Mexico', '$27.94'),
(33, 'Tara Trevino', '(844) 405-2133', 'eu.sem.pellentesque@aol.ca', 'Vietnam', '$49.56'),
(34, 'Colorado Higgins', '1-323-237-5806', 'senectus.et@protonmail.edu', 'Ukraine', '$5.36'),
(35, 'Brody Blake', '(354) 320-9921', 'vel.est@aol.com', 'South Africa', '$2.37'),
(36, 'Sydney Colon', '(742) 282-3468', 'eu.placerat@protonmail.couk', 'Australia', '$8.13'),
(37, 'Beau Figueroa', '1-774-966-3083', 'dapibus.rutrum.justo@icloud.edu', 'Canada', '$52.10'),
(38, 'Denise Wilson', '1-274-628-0596', 'blandit.enim@outlook.com', 'Colombia', '$40.36'),
(39, 'Kennan Hensley', '(421) 583-7726', 'senectus.et@yahoo.net', 'South Africa', '$42.88'),
(40, 'Kiona Acosta', '1-935-817-2207', 'auctor@protonmail.edu', 'Spain', '$25.49'),
(41, 'Inez Thomas', '1-382-813-1767', 'lobortis.class.aptent@icloud.net', 'Vietnam', '$71.48'),
(42, 'Kameko Chapman', '(329) 264-8462', 'sed@google.org', 'Vietnam', '$72.20'),
(43, 'Scarlett Kelly', '(354) 529-4467', 'auctor@hotmail.couk', 'Indonesia', '$96.28'),
(44, 'Zahir Burt', '1-666-583-5294', 'elit.curabitur@hotmail.ca', 'Brazil', '$59.33'),
(45, 'Paul Workman', '1-334-587-2563', 'sed.tortor@icloud.ca', 'New Zealand', '$22.30'),
(46, 'Howard Bates', '(583) 501-3375', 'curabitur@protonmail.ca', 'Poland', '$86.68'),
(47, 'Lewis Sykes', '(541) 209-3385', 'mi@outlook.edu', 'Chile', '$26.15'),
(48, 'Yoko Hayes', '1-972-860-8385', 'tristique.senectus@icloud.edu', 'Ireland', '$30.94'),
(49, 'Nash Wade', '(841) 571-3677', 'netus@google.org', 'Netherlands', '$94.04'),
(50, 'Emerald Berger', '(757) 481-9585', 'sodales.at@yahoo.ca', 'Brazil', '$37.16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coe140101`
--
ALTER TABLE `coe140101`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coe140101`
--
ALTER TABLE `coe140101`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
