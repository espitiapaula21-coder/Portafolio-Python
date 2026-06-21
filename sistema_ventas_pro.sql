-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2026 a las 05:07:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sitema_ventas_pro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `documento`, `nombre`, `email`, `telefono`, `fecha_creacion`) VALUES
(1, '10203040', 'Diana Arbelaez', 'diana@email.com', '3101234567', '2026-06-20 17:17:11'),
(7, '20304050', 'Andres Carvajal', 'andres@email.com', '315999877', '2026-06-20 17:40:22'),
(8, '30405060', 'Camila Ochoa', 'camila@email.com', '3112345678', '2026-06-20 17:40:22'),
(9, '40506070', 'Hector Avila', 'Hectoravila@email.com', '3204923052', '2026-06-20 17:40:22'),
(10, '60708090', 'Valentina peña', 'Vale@email.com', '3123456789', '2026-06-20 17:40:22'),
(11, '70809010', 'Nicolas Burkan', 'Nicolas@email.com', '3001234567', '2026-06-20 17:40:22'),
(12, '80901020', 'Sofia Villalobos', 'sofia@email.com', '3104561234', '2026-06-21 02:25:55'),
(13, '90102030', 'Carlos Mendoza', 'carlos@email.com', '3157894561', '2026-06-21 02:25:55'),
(14, '11223344', 'lucia Fernandez', 'lucia@email.com', '3124567890', '2026-06-21 02:25:55'),
(15, '55667788', 'Daniel Ospina', 'daniel@email.com', '3179876543', '2026-06-21 02:25:55'),
(16, '99001122', 'Mariana Gomez', 'mariana@email.com', '3113216549', '2026-06-21 02:25:55'),
(17, '33445566', 'Juan pablo Rios', 'juan@email.com', '3007654321', '2026-06-21 02:25:55'),
(18, '12345678', 'Elena santamaria', 'elena@email.com', '3141234567', '2026-06-21 02:25:55'),
(19, '87654321', 'Ricardo jorge', 'ricardo@email.com', '3169871234', '2026-06-21 02:25:55'),
(20, '11112222', 'Esteban Quito', 'esteban@email.com', '3217654321', '2026-06-21 02:25:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo_barras` varchar(50) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo_barras`, `descripcion`, `precio_venta`, `stock`) VALUES
(1, '7701234567890', 'computador portatil pro', 350000.00, 10),
(2, '7709876543210', 'Mouse Inalambrico', 120000.00, 50),
(3, '77022222222', 'Monitor Gamer 24 Pulgadas', 920000.00, 12),
(4, '77033333333', 'Teclado Mecanico RGB', 2500000.00, 30),
(5, '77044444444', 'Audifonos Bluetoot Pro', 180000.00, 40),
(6, '77055555555', 'Silla Ergonomica Oficina', 650000.00, 12),
(7, '77066666666', 'Disco Duro Externo 1TB', 320000.00, 25),
(8, '7707777777777', 'Impresora Laser HP', 780000.00, 8),
(9, '7708888888888', 'Memoria RAM DDR4 16GB', 290000.00, 45),
(10, '7709999999999', 'Tarjeta de Video RTX 4060', 1850000.00, 5),
(11, '7701112223334', 'Microfono Condensador USB', 210000.00, 20),
(12, '7704445556667', 'Camara Web Full HD', 150000.00, 25),
(13, '7707778889990', 'Cargador Carga Rapida Tipo C', 65000.00, 100),
(14, '7701122334455', 'Hub USB-C 6 en 1', 110000.00, 35),
(15, '7706677889900', 'Mochila Impermeable Portatil', 135000.00, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  `productos_id` int(11) DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `total_venta` decimal(10,2) NOT NULL,
  `fecha_venta` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `clientes_id`, `productos_id`, `cantidad`, `total_venta`, `fecha_venta`) VALUES
(1, 1, 1, 1, 3500000.00, '2026-06-20 12:27:51'),
(8, 7, 5, 2, 360000.00, '2026-06-20 12:53:19'),
(9, 8, 6, 1, 650000.00, '2026-06-20 12:53:19'),
(10, 9, 3, 1, 850000.00, '2026-06-20 12:53:19'),
(11, 10, 4, 1, 250000.00, '2026-06-20 12:53:19'),
(12, 11, 5, 1, 180000.00, '2026-06-20 12:53:19'),
(13, 7, 7, 2, 640000.00, '2026-06-20 12:53:19'),
(14, 7, 5, 2, 360000.00, '2026-06-20 12:56:06'),
(15, 8, 6, 1, 650000.00, '2026-06-20 12:56:06'),
(16, 9, 3, 1, 850000.00, '2026-06-20 12:56:06'),
(17, 10, 4, 1, 250000.00, '2026-06-20 12:56:06'),
(18, 11, 5, 1, 180000.00, '2026-06-20 12:56:06'),
(19, 7, 7, 2, 640000.00, '2026-06-20 12:56:06'),
(20, 12, 8, 1, 780000.00, '2026-06-20 21:51:05'),
(21, 13, 10, 1, 1850000.00, '2026-06-20 21:51:05'),
(22, 14, 9, 2, 580000.00, '2026-06-20 21:51:05'),
(23, 15, 12, 1, 150000.00, '2026-06-20 21:51:05'),
(24, 16, 13, 3, 195000.00, '2026-06-20 21:51:05'),
(25, 17, 14, 1, 110000.00, '2026-06-20 21:51:05'),
(26, 18, 15, 1, 135000.00, '2026-06-20 21:51:05'),
(27, 19, 11, 1, 210000.00, '2026-06-20 21:51:05'),
(28, NULL, 9, 1, 290000.00, '2026-06-20 21:51:05'),
(29, 20, 3, 1, 850000.00, '2026-06-20 21:51:05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigo_barras` (`codigo_barras`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_id` (`clientes_id`),
  ADD KEY `productos_id` (`productos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
