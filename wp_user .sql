-- phpMyAdmin SQL Dump
-- version 4.0.10.12
-- http://www.phpmyadmin.net
--
-- Хост: tanzor.mysql.ukraine.com.ua
-- Время создания: Июл 20 2017 г., 11:22
-- Версия сервера: 5.6.27-75.0-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `tanzor_portfolio`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_user`
--

CREATE TABLE IF NOT EXISTS `wp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `wp_user`
--

INSERT INTO `wp_user` (`id`, `name`, `email`) VALUES
(1, 'Oleg', 'Oleg.Okhrymenko@gmail.com'),
(2, 'Oleg', 'Oleg.Okhrymenko@gmail.com'),
(3, 'Ohrimus148', 'Oleg.Okhrymenko@gmail.com'),
(4, 'Od45f66b', 'Oleg.Okhrymenko@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
