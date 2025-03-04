-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 31. 16:05
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `boglarkatours`
--
CREATE DATABASE IF NOT EXISTS `boglarkatours` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `boglarkatours`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ember`
--

DROP TABLE IF EXISTS `ember`;
CREATE TABLE `ember` (
  `email` varchar(45) NOT NULL,
  `szemelyigszam` varchar(8) NOT NULL,
  `nev` varchar(45) NOT NULL,
  `lakcim` varchar(45) NOT NULL,
  `telefonszam` varchar(11) NOT NULL,
  `szuletesiido` varchar(25) NOT NULL,
  `biztositas` varchar(20) NOT NULL,
  `fizetve` varchar(20) NOT NULL,
  `velegyerek` int(2) NOT NULL,
  `velekisgyerek` int(2) NOT NULL,
  `velefelnott` int(2) NOT NULL,
  `szobadb` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `ember`
--

INSERT INTO `ember` (`email`, `szemelyigszam`, `nev`, `lakcim`, `telefonszam`, `szuletesiido`, `biztositas`, `fizetve`, `velegyerek`, `velekisgyerek`, `velefelnott`, `szobadb`) VALUES
('bogeszko09@gmail.com', '123456KE', 'Horváth Boglárka', '9700, Szombathely Szent Flórián krt. 39', '06307811285', '2003.12.20', 'egyeni', 'false', 1, 1, 1, 1),
('bogeszko9@gmail.com', '456789KE', 'Horvát dfsjhfkud', '9700, Szombathely Major utca 1', '06307611287', '2003.12.24', 'nalam', 'false', 2, 1, 1, 1),
('janoskiss@gmail.com', '456321KE', 'Kiss János', '9700, Szombathely Petőfi utca 1', '06307911648', '1978.02.20', 'egyeni', 'false', 2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `h_id` int(11) NOT NULL,
  `hotel` varchar(50) NOT NULL,
  `utid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `hotel`
--

INSERT INTO `hotel` (`h_id`, `hotel`, `utid`) VALUES
(1, 'Palmera Beach Hotel & Spa', 1),
(2, 'Palmera Beach Hotel & Spa', 2),
(3, 'Palmera Beach Hotel & Spa', 3),
(4, 'Palmera Beach Hotel & Spa', 4),
(5, 'Palmera Beach Hotel & Spa', 5),
(6, 'Eden Roc Resort', 6),
(7, 'Eden Roc Resort', 7),
(8, 'Eden Roc Resort', 8),
(9, 'Eden Roc Resort', 9),
(10, 'Eden Roc Resort', 10),
(11, 'Hotel Palma', 11),
(12, 'Hotel Palma', 12),
(13, 'Hotel Palma', 13),
(14, 'Hotel Palma', 14),
(15, 'Hotel Palma', 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kapcsolat`
--

DROP TABLE IF EXISTS `kapcsolat`;
CREATE TABLE `kapcsolat` (
  `id` int(11) NOT NULL,
  `ar` int(11) NOT NULL,
  `felpanzio` int(1) NOT NULL,
  `fizetesmod` varchar(20) NOT NULL,
  `utid` int(11) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kapcsolat`
--

INSERT INTO `kapcsolat` (`id`, `ar`, `felpanzio`, `fizetesmod`, `utid`, `email`) VALUES
(1, 409890, 1, 'utalas', 2, 'bogeszko09@gmail.com'),
(2, 743220, 1, 'keszpenz', 13, 'bogeszko9@gmail.com'),
(3, 1229670, 1, 'keszpenz', 1, 'janoskiss@gmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `utak`
--

DROP TABLE IF EXISTS `utak`;
CREATE TABLE `utak` (
  `utid` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `osszfo` int(11) NOT NULL,
  `arfo` int(11) NOT NULL,
  `idopont` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `utak`
--

INSERT INTO `utak` (`utid`, `nev`, `osszfo`, `arfo`, `idopont`) VALUES
(1, 'Kelet-Kréta', 50, 409890, '2024.06.20-06.27'),
(2, 'Kelet-Kréta', 50, 409890, '2024.06.29-07.5'),
(3, 'Kelet-Kréta', 50, 409890, '2024.07.13-07.19'),
(4, 'Kelet-Kréta', 50, 409890, '2024.08.03-08.09'),
(5, 'Kelet-Kréta', 50, 395980, '2024.08.17-08.23'),
(6, 'Rodosz', 50, 540890, '2024.06.15-06.21'),
(7, 'Rodosz', 50, 540890, '2024.06.22-06.28'),
(8, 'Rodosz', 50, 540890, '2024.06.29-07.05'),
(9, 'Rodosz', 50, 540890, '2024.07.20-07.26'),
(10, 'Rodosz', 50, 445890, '2024.08.17-08.23'),
(11, 'Montenegró', 45, 371610, '2024.02.05-02.11'),
(12, 'Montenegró', 45, 371610, '2024.05.11-05.18'),
(13, 'Montenegró', 45, 371610, '2024.05.31-06.06'),
(14, 'Montenegró', 45, 371610, '2024.06.29-07.05'),
(15, 'Montenegró', 45, 451610, '2024.07.29-08.04'),
(16, 'Plitvicei-tavak', 40, 50290, '2024.11.16'),
(17, 'Plitvicei-tavak', 40, 50290, '2024.05.25'),
(18, 'Plitvicei-tavak', 40, 50290, '2024.08.24'),
(19, 'Plitvicei-tavak', 40, 50290, '2024.10.5');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ember`
--
ALTER TABLE `ember`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `utkap` (`utid`);

--
-- A tábla indexei `kapcsolat`
--
ALTER TABLE `kapcsolat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emailkap` (`email`),
  ADD KEY `uakkapcs` (`utid`);

--
-- A tábla indexei `utak`
--
ALTER TABLE `utak`
  ADD PRIMARY KEY (`utid`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `utkap` FOREIGN KEY (`utid`) REFERENCES `utak` (`utid`);

--
-- Megkötések a táblához `kapcsolat`
--
ALTER TABLE `kapcsolat`
  ADD CONSTRAINT `emailkap` FOREIGN KEY (`email`) REFERENCES `ember` (`email`),
  ADD CONSTRAINT `uakkapcs` FOREIGN KEY (`utid`) REFERENCES `utak` (`utid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
