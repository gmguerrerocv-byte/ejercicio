-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2025 a las 21:11:04
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
-- Base de datos: `jugeteria`
--
CREATE DATABASE IF NOT EXISTS `jugeteria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jugeteria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'muñeco'),
(2, 'autos/coleccinables'),
(3, 'electronica'),
(4, 'juegos de mesa'),
(5, 'jugando a ser grande');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edades`
--

CREATE TABLE `edades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `edades`
--

INSERT INTO `edades` (`id`, `nombre`) VALUES
(1, '6- 12 meses'),
(2, '7-9 años'),
(3, '1 -3 años'),
(4, '2- 5 años'),
(5, '9-10 años');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(11) DEFAULT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `rol`) VALUES
(1, 'david', 'cajero'),
(2, 'santiago', 'repositor'),
(3, 'franco', 'encargado'),
(4, 'roberto', 'dueño'),
(5, 'juancito', 'gerente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`) VALUES
(1, 'hot wheels'),
(2, 'jugetin'),
(3, 'inteligents'),
(4, 'toptoys'),
(5, 'yogoteen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `destacado` varchar(30) NOT NULL,
  `stock` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `destacado`, `stock`) VALUES
(1, 'Reloj Digital Infantil', 'Proyector De Imágenes Minnie Disney\r\n\r\n', 13700.00, 'si', 15),
(2, ' Reloj Digital Infantil', 'Proyector De Imágenes Frozen Disney', 13700.00, 'si', 15),
(3, 'Reloj Proyector Infantil', 'De Stitch', 11100.00, 'si', 20),
(4, 'Juego Antiestres Poppit Electronico', ' De Pato', 13700.00, 'si', 15),
(5, 'Juego de Mesa', 'Whale Attack', 13700.00, 'si', 15),
(6, 'Juego De Mesa ', 'Dinosaur Attack', 13700.00, 'si', 15),
(7, 'Juego de Mesa ', 'Monky Loco\r\n', 13700.00, 'no', 15),
(8, 'Juego de Memoria de Bolsillo ', 'Estilo Simon con Luces y Sonidos Círculos', 12300.00, 'si', 15),
(9, 'Juego de Mesa Familiar ', 'Vermichelli & Tomato', 11400.00, 'si', 15),
(10, 'Juego De Mesa ', 'Taco Gato Cabra Queso Pizza Cartas\r\n\r\n', 12300.00, 'no', 20),
(11, 'Aspiradora Infantil', 'Realista Con Luz Y Sonido', 12300.00, 'no', 20),
(12, 'Valija De Herramientas', 'Llave Inglesa Y Accesorios', 12300.00, 'no', 20),
(13, 'Juliana Valija Peluquería', 'Con Acceorios', 13200.00, 'si', 30),
(14, 'Hot Wheels Autos Coleccionables', 'colección 2024 Factory Fresh 7/10', 10000.00, 'si', 30),
(15, 'Sanitation Truck ', 'Recolector de Basura a Radio Control con Luces\r\n\r\n', 12300.00, 'si', 20),
(16, 'Hot Wheels Autos Coleccionables ', 'colección Tooned 5/5', 13000.00, 'si', 40),
(17, 'Camioneta Colección', 'Go Metal Speed TRD Verde', 13700.00, 'si', 50),
(18, 'peluche', 'de stich', 10000.00, 'si', 15),
(19, 'peluche', 'del gatos con botas', 11400.00, 'si', 50),
(20, 'muñeco ', 'iron-man', 12300.00, 'si', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `nickname`, `password`, `correo`) VALUES
(1, 'juancito', 'juancito_456', '123', 'usuario@lafarola.com'),
(2, 'david', 'david_123', '123', 'usuario@lafarola.com'),
(3, 'roberto', 'robertito_123', '123', 'usuario@lafarola.com'),
(4, 'santiago', 'santiago_12234', '123', 'usuario@lafarola.com'),
(5, 'franco', 'franquito_456', '123', 'usuario@lafarola.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `edades`
--
ALTER TABLE `edades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `edades`
--
ALTER TABLE `edades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
