-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2024 a las 16:25:42
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
-- Base de datos: `empresa`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_crear` (IN `_valor` INT(11), IN `_tipo` VARCHAR(20))   BEGIN

	INSERT INTO `pago`(`valor`, `tipo_pago`) VALUES (_valor, _tipo);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar` (IN `_id` INT, IN `_valor` INT(11), IN `_tipo` VARCHAR(20))   BEGIN

	UPDATE `pago` SET `valor`=_valor,`tipo_pago`=_tipo WHERE id = _id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_elim` (IN `_id` INT)   BEGIN

DELETE FROM `pago` WHERE id = _id;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listar` ()   BEGIN

	SELECT * FROM pago;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mostrar1` (IN `_id` INT)   BEGIN

	SELECT * FROM pago WHERE id = _id;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `tipo_pago` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`id`, `valor`, `tipo_pago`) VALUES
(3, 2000, 'Efectivo'),
(5, 1000, 'Efectivo'),
(7, 1000, 'Efectivo'),
(8, 1000, 'Efectivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
