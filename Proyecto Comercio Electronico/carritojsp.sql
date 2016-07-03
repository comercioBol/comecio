-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2016 a las 23:46:27
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `carritojsp`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectProducto`(in _id_producto int)
select * from productos Where id_producto=_id_producto$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectProductos`()
SELECT * FROM `productos` 
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE IF NOT EXISTS `comentario` (
`id_comentario` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
`id_compra` int(11) NOT NULL,
  `reserva` varchar(50) NOT NULL,
  `precio_compra` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `material`
--

CREATE TABLE IF NOT EXISTS `material` (
`id_material` int(11) NOT NULL,
  `nombre_mat` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precio`
--

CREATE TABLE IF NOT EXISTS `precio` (
`id_precio` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `detalle` varchar(100) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_material` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id_producto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `img_producto` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `img_producto`, `id_categoria`, `precio`, `stock`) VALUES
(1, 'camisa manga larga', 'images/shop/product12.jpg', 20, 150, 200),
(2, 'vestido rojo', 'images/shop/product9.jpg', 20, 250, 20),
(3, 'vestido blanco', 'images/shop/product7.jpg', 20, 200, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `celular` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `clave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
 ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
 ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `material`
--
ALTER TABLE `material`
 ADD PRIMARY KEY (`id_material`);

--
-- Indices de la tabla `precio`
--
ALTER TABLE `precio`
 ADD PRIMARY KEY (`id_precio`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
 ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `material`
--
ALTER TABLE `material`
MODIFY `id_material` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `precio`
--
ALTER TABLE `precio`
MODIFY `id_precio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentario`
--
ALTER TABLE `comentario`
ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `precio`
--
ALTER TABLE `precio`
ADD CONSTRAINT `precio_ibfk_1` FOREIGN KEY (`id_precio`) REFERENCES `material` (`id_material`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
