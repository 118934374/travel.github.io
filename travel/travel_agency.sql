-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Чрв 10 2024 р., 22:23
-- Версія сервера: 10.4.32-MariaDB
-- Версія PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `travel_agency`
--

-- --------------------------------------------------------

--
-- Структура таблиці `tours`
--

CREATE TABLE `tours` (
  `TourID` int(11) NOT NULL,
  `TourName` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `NumberOfDays` int(11) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `tours`
--

INSERT INTO `tours` (`TourID`, `TourName`, `Price`, `Location`, `NumberOfDays`, `Photo`) VALUES
(1, 'Карпатські пригоди', 5000.00, 'Карпати', 7, 'carpathians.jpg'),
(2, 'Чарівна Одеса', 3000.00, 'Одеса', 3, 'odesa.jpg'),
(3, 'Історичний Львів', 4000.00, 'Львів', 4, 'lviv.webp'),
(4, 'Подорож до Чорнобиля', 3500.00, 'Чорнобиль', 2, 'chernobyl.webp'),
(5, 'Екскурсія по Києву', 2500.00, 'Київ', 2, 'kyiv.webp');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`TourID`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `tours`
--
ALTER TABLE `tours`
  MODIFY `TourID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
