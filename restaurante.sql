-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2025 a las 19:24:03
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `producto`, `precio`, `stock`, `tipo`, `foto`) VALUES
(1, 'Milanesa Completo', 13000, 15, 'pollo y carne', 'milanesa.jpg'),
(3, 'Milanesa Farola', 13700, 15, 'pollo y carne', 'milanesa.jpg'),
(4, 'Milanesa Farola', 13700, 15, 'pollo y carne', 'milanesa.jpg'),
(5, 'Milanesa Napolitano', 13200, 15, 'pollo y carne', 'milanesa.jpg'),
(6, 'Milanesa Napolitano', 13200, 15, 'pollo y carne', 'milanesa.jpg'),
(7, 'Pollo Simple', 11200, 15, 'pollo', 'pollo.jpg'),
(8, 'Pollo Simple', 11200, 15, 'pollo', 'pollo.jpg'),
(9, 'Pollo Criollo', 12300, 15, 'pollo', 'pollo.jpg'),
(10, 'Pollo Porteñito', 12300, 15, 'pollo', 'pollo.jpg'),
(11, 'Pollo Porteñito', 12300, 15, 'pollo', 'pollo.jpg'),
(12, 'Pollo Completo', 12300, 15, 'pollo', 'pollo.jpg'),
(13, 'Pollo Completo', 12300, 15, 'pollo', 'pollo.jpg'),
(14, 'Pollo Farola', 13700, 15, 'pollo', 'pollo.jpg'),
(15, 'Pollo Farola', 13700, 15, 'pollo', 'pollo.jpg'),
(16, 'Pollo Napolitano', 13700, 15, 'pollo', 'pollo.jpg'),
(17, 'Pollo Napolitano', 13700, 15, 'pollo', 'pollo.jpg'),
(18, 'Pollo Thames', 13700, 15, 'pollo', 'pollo.jpg'),
(19, 'Pollo Thames', 13700, 15, 'pollo', 'pollo.jpg'),
(20, 'Hamburguesa Simple', 11400, 15, 'pollo', 'pollo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `numero` smallint(6) NOT NULL,
  `reservado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `numero`, `reservado`) VALUES
(1, 1, 'si'),
(2, 2, 'no'),
(3, 3, 'si'),
(4, 4, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `descuento` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `descuento`) VALUES
(1, 20),
(2, 25),
(3, 15),
(4, 30),
(5, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `nickname`, `password`, `correo`) VALUES
(1, 'juancito', 'juancito_456', '123', 'usuario@lafarola.com'),
(2, 'david', 'david_123', '123', 'usuario@lafarola.com'),
(3, 'franquito', 'franquito_456', '123', 'usuario@lafarola.com'),
(4, 'santiago', 'santiago_12234', '123', 'usuario@lafarola.com'),
(5, ' roberto', 'robertito_123', '123', 'usuario@lafarola.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `horario` time NOT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `comensales` int(11) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `fecha`, `total`, `horario`, `cantidad`, `comensales`, `estado`) VALUES
(1, '2022-09-15', 30, '13:10:00', 10, 2, '10'),
(2, '2015-09-09', 16, '13:10:00', 10, 2, '10'),
(3, '2019-09-30', 20, '13:10:00', 10, 2, '10'),
(4, '2019-09-30', 25, '13:10:00', 10, 2, '10'),
(5, '2022-09-15', 35, '13:10:00', 10, 5, '10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
