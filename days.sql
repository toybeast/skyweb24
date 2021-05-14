-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 14 2021 г., 08:41
-- Версия сервера: 8.0.19
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `days`
--

CREATE TABLE `days` (
  `id` int NOT NULL,
  `mday` int NOT NULL,
  `month` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `days`
--

INSERT INTO `days` (`id`, `mday`, `month`, `status`) VALUES
(1, 26, 4, 0),
(2, 27, 4, 1),
(3, 28, 4, 0),
(4, 29, 4, 0),
(5, 30, 4, 0),
(6, 1, 5, 1),
(7, 2, 5, 0),
(8, 3, 5, 1),
(9, 4, 5, 0),
(10, 5, 5, 0),
(11, 6, 5, 0),
(12, 7, 5, 0),
(13, 8, 5, 0),
(14, 9, 5, 1),
(15, 10, 5, 0),
(16, 11, 5, 0),
(17, 12, 5, 0),
(18, 13, 5, 0),
(19, 14, 5, 1),
(20, 15, 5, 1),
(21, 16, 5, 1),
(22, 17, 5, 0),
(23, 18, 5, 0),
(24, 19, 5, 0),
(25, 20, 5, 1),
(26, 21, 5, 0),
(27, 22, 5, 0),
(28, 23, 5, 0),
(29, 24, 5, 0),
(30, 25, 5, 0),
(31, 26, 5, 1),
(32, 27, 5, 0),
(33, 28, 5, 1),
(34, 29, 5, 1),
(35, 30, 5, 1),
(36, 31, 5, 1),
(37, 1, 6, 0),
(38, 2, 6, 0),
(39, 3, 6, 0),
(40, 4, 6, 1),
(41, 5, 6, 1),
(42, 6, 6, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `days_id_uindex` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `days`
--
ALTER TABLE `days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
