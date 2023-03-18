-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-03-2023 a las 23:34:55
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `desafio_DB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE `account` (
  `id` int(13) NOT NULL,
  `name` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `account`
--

INSERT INTO `account` (`id`, `name`, `lastname`, `gender`) VALUES
(1, 'Juan', 'Quiroga', 'masculino'),
(2, 'Claudia', 'Latrece', 'femenino'),
(3, 'Gabriel', 'Gomez', 'masculino'),
(4, 'Florencia', 'Fernandez', 'femenino'),
(5, 'Esteban', 'Quito', 'masculino'),
(6, 'Sabrina', 'Perez', 'femenino'),
(11, 'Armando', 'Casas', 'masculino'),
(12, 'Ricardo', 'Fort', 'masculino'),
(13, 'Francisco', 'Sosa', 'masculino'),
(14, 'Francisca', 'Pinto', 'femenino'),
(15, 'Pablo', 'Petracini', 'masculino'),
(16, 'Paola', 'Orozco', 'femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `register`
--

CREATE TABLE `register` (
  `type` varchar(13) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `businessLocation` varchar(40) NOT NULL,
  `idEmployee` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `register`
--

INSERT INTO `register` (`type`, `date`, `businessLocation`, `idEmployee`) VALUES
('enter', '2023-03-14 22:33:24', 'Argentina', 11),
('go_out', '2023-03-14 23:33:24', 'Argentina', 11),
('enter', '2023-03-14 22:36:41', 'Argentina', 2),
('go_out', '2023-03-15 00:36:41', 'Argentina', 2),
('enter', '2023-03-14 20:37:53', 'España', 5),
('go_out', '2023-03-14 23:37:53', 'España', 5),
('enter', '2023-03-14 15:37:53', 'Brasil', 4),
('go_out', '2023-03-14 22:37:53', 'Brasil', 4),
('enter', '2023-03-17 13:37:53', 'Argentina', 14),
('go_out', '2023-03-17 19:37:53', 'Argentina', 14),
('enter', '2023-03-15 11:37:53', 'Argentina', 1),
('go_out', '2023-03-15 15:37:53', 'Argentina', 1),
('enter', '2023-03-14 22:37:53', 'España', 3),
('go_out', '2023-03-14 23:37:53', 'España', 3),
('enter', '2023-03-16 12:47:01', 'España', 12),
('go_out', '2023-03-16 22:47:01', 'España', 12),
('enter', '2023-03-17 10:47:01', 'Brasil', 6),
('go_out', '2023-03-17 22:51:55', 'Brasil', 6),
('enter', '2023-03-20 12:47:01', 'Argentina', 13),
('go_out', '2023-03-17 20:47:01', 'Argentina', 13),
('enter', '2023-03-19 10:47:01', 'Argentina', 4),
('go_out', '2023-03-19 22:47:01', 'Argentina', 4),
('enter', '2023-03-19 09:47:01', 'Argentina', 14),
('go_out', '2023-03-19 15:47:01', 'Argentina', 14),
('enter', '2023-03-19 14:47:01', 'Argentina', 1),
('go_out', '2023-03-19 22:47:01', 'Argentina', 1),
('enter', '2023-03-18 20:07:30', 'Brasil', 6),
('go_out', '2023-03-18 20:08:14', 'Brasil', 6),
('enter', '2023-03-18 20:55:38', 'España', 11),
('go_out', '2023-03-18 21:46:56', 'España', 11),
('enter', '2023-03-18 22:10:48', 'Argentina', 6),
('go_out', '2023-03-18 22:12:35', 'Argentina', 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `account`
--
ALTER TABLE `account`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
