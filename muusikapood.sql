-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 21, 2024 kell 03:12 PL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `muusikapood`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `albumid`
--

CREATE TABLE `albumid` (
  `id` int(10) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `albumid`
--

INSERT INTO `albumid` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(1, 'Onu Bella', 'Fiat', '1998', 100.20),
(2, 'Terrance', 'Fintone', '2007', 21.97),
(3, 'Hendrik', 'Prodder', '2010', 45.54),
(4, 'Almire', 'Mat Lam Tam', '1991', 76.64),
(5, 'Wallis', 'Quo Lux', '1996', 33.89),
(6, 'Davita', 'Fixflex', '2011', 4.15),
(7, 'Pepillo', 'Bigtax', '1996', 85.24),
(8, 'Dania', 'Namfix', '1997', 85.77),
(9, 'Nial', 'Stim', '2002', 85.56),
(10, 'Sal', 'Otcom', '1986', 99.61),
(11, 'Emmery', 'Otcom', '1997', 55.67),
(12, 'Carlina', 'Duobam', '1992', 93.29),
(13, 'Sosanna', 'Quo Lux', '1995', 95.36),
(14, 'Gav', 'Andalax', '2002', 20.21),
(15, 'Devi', 'Greenlam', '2006', 51.10),
(16, 'Stacee', 'Subin', '2007', 74.97),
(17, 'Farleigh', 'Redhold', '2009', 78.25),
(18, 'Teri', 'Zamit', '1996', 17.22),
(19, 'Lindsy', 'Kanlam', '2007', 93.34),
(20, 'Adrien', 'Tin', '2012', 22.75),
(21, 'Timmi', 'It', '1998', 63.01),
(22, 'Fara', 'Quo Lux', '1999', 64.21),
(23, 'Portie', 'Y-Solowarm', '1999', 4.61),
(24, 'Joete', 'Zamit', '2011', 59.90),
(25, 'Corabella', 'Fix San', '1997', 46.72),
(26, 'Hammad', 'Fix San', '2010', 50.24),
(27, 'Sampson', 'Alpha', '2011', 45.06),
(28, 'Nonna', 'Solarbreeze', '1996', 15.46),
(29, 'Antone', 'Namfix', '2012', 6.25),
(30, 'Devora', 'Lotstring', '2008', 91.45),
(31, 'Vivianne', 'Pannier', '1993', 14.12),
(32, 'Hana', 'Tresom', '2002', 63.49),
(33, 'Weylin', 'Sub-Ex', '2006', 74.02),
(34, 'Rosabel', 'Redhold', '2007', 51.95),
(35, 'Norton', 'Pannier', '1993', 23.47),
(36, 'Nanci', 'Kanlam', '1993', 95.55),
(37, 'Westbrook', 'Tempsoft', '2001', 57.91),
(38, 'Elga', 'Stringtough', '2010', 30.08),
(39, 'Burtie', 'Biodex', '2007', 36.07),
(40, 'Fabiano', 'Temp', '2002', 84.11),
(41, 'Karola', 'Konklux', '2006', 83.28),
(42, 'Maia', 'Viva', '1997', 91.72),
(43, 'Shirley', 'Konklab', '1999', 97.75),
(44, 'Chester', 'Greenlam', '1984', 78.79),
(45, 'Gerianna', 'Domainer', '2001', 62.91),
(46, 'Sande', 'Konklux', '2004', 82.50),
(47, 'Maggie', 'Vagram', '1995', 58.91),
(48, 'Zuzana', 'Bitchip', '2001', 17.00),
(49, 'Blondie', 'Y-find', '2011', 88.74),
(50, 'Annamaria', 'Job', '2002', 81.58),
(51, 'Kerrie', 'Sonair', '2012', 58.99),
(52, 'Malia', 'Tresom', '1995', 50.06),
(53, 'Lonnard', 'Sonsing', '2000', 89.54),
(54, 'Tessi', 'Tin', '2009', 20.93),
(55, 'Mufi', 'Redhold', '1999', 17.05),
(56, 'Gannie', 'Overhold', '2000', 66.94),
(57, 'Junie', 'Sonair', '1998', 58.64),
(58, 'Trumaine', 'Cardify', '1992', 81.39),
(59, 'Amerigo', 'Tempsoft', '1987', 75.23),
(60, 'Rusty', 'Vagram', '1993', 89.75),
(61, 'Cheslie', 'Y-find', '2003', 89.79),
(62, 'Wilmar', 'Sonsing', '1997', 59.94),
(63, 'Harlene', 'Job', '2008', 90.77),
(64, 'Brunhilde', 'Flowdesk', '1999', 31.94),
(65, 'Ingar', 'Tampflex', '2011', 94.45),
(66, 'Emlyn', 'Cookley', '2002', 78.59),
(67, 'Cherri', 'Kanlam', '1992', 43.79),
(68, 'Sascha', 'Daltfresh', '1999', 58.63),
(69, 'Brander', 'Sonsing', '1994', 92.48),
(70, 'Cheryl', 'Flowdesk', '1998', 96.70),
(71, 'Mae', 'Keylex', '2005', 93.04),
(72, 'Eulalie', 'Gembucket', '1996', 90.64),
(73, 'Austen', 'Tampflex', '2007', 99.76),
(74, 'Gladi', 'Cookley', '2009', 14.84),
(75, 'Jacquenette', 'Solarbreeze', '1997', 38.98),
(76, 'Jorie', 'Latlux', '1997', 9.92),
(77, 'Nobe', 'Asoka', '1993', 40.22),
(78, 'Modestine', 'Andalax', '2010', 52.00),
(79, 'Yettie', 'Job', '1992', 6.02),
(80, 'Beverie', 'Rank', '1996', 70.75),
(81, 'Sissy', 'Stringtough', '1995', 60.24),
(82, 'Kleon', 'Hatity', '2000', 47.57),
(83, 'Shalne', 'Solarbreeze', '2012', 4.37),
(84, 'Gaelan', 'Sonair', '2003', 72.75),
(85, 'Archaimbaud', 'Quo Lux', '1999', 91.71),
(86, 'Huntington', 'Keylex', '2012', 24.04),
(87, 'Fulvia', 'Duobam', '1991', 75.32),
(88, 'Melody', 'Aerified', '2006', 91.36),
(89, 'Herve', 'Bitwolf', '2006', 40.20),
(90, 'Karlie', 'Temp', '1988', 81.51),
(91, 'Emmeline', 'Veribet', '2006', 82.23),
(92, 'Angy', 'Stringtough', '1997', 8.21),
(93, 'Kile', 'Konklab', '2006', 77.84),
(94, 'Cornelius', 'Sonair', '1996', 48.36),
(95, 'Marleen', 'Zathin', '1992', 78.83),
(96, 'Ericha', 'Latlux', '1963', 71.76),
(97, 'Patricia', 'Ventosanzap', '2005', 42.88),
(98, 'Glenna', 'Pannier', '1997', 55.12),
(99, 'Renaud', 'Bitwolf', '1993', 74.02),
(100, 'Donall', 'Flexidy', '2012', 62.62),
(101, 'Antonius', 'Andalax', '1967', 16.98);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `albumid`
--
ALTER TABLE `albumid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `albumid`
--
ALTER TABLE `albumid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
