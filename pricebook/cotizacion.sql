-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2016 a las 21:46:32
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cotizacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprashechas`
--

CREATE TABLE `comprashechas` (
  `id_compra` int(11) NOT NULL,
  `articulo` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `preciounidad` varchar(255) NOT NULL,
  `cantidadcomprada` varchar(255) NOT NULL,
  `tienda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comprashechas`
--

INSERT INTO `comprashechas` (`id_compra`, `articulo`, `categoria`, `fecha`, `preciounidad`, `cantidadcomprada`, `tienda`) VALUES
(1, 'papel higienico familia acolchomax megarrollo x 12 unidades', 'aseo', '2016-05-31', '13.900', '1', 'MERK-DURACION S.A.S (PLAZA DE FLOREZ)'),
(2, 'jabon antibacterial / IB  x 100 ', 'aseo', '2016-05-31', '5.950', '1', 'MERK-DURACION S.A.S (PLAZA DE FLOREZ)'),
(3, 'jabon super riel ', 'aseo', '2016-05-31', '1.400', '1', 'MERK-DURACION S.A.S (PLAZA DE FLOREZ)'),
(4, 'Listerine fresh burst x 360 ml', 'aseo', '2016-06-07', '11.500', '1', 'MERK-DURACION S.A.S (PLAZA DE FLORES) '),
(10, 'Gatorade x 500  ', 'bebidas', '2016-06-22', '2250', '1 ', 'Inversiones super express S.A.'),
(11, 'Eliminador de olores familia ', 'aseo', '2016-06-22', '10500', '1', 'Inversiones super express S.A.'),
(12, 'Shampo ego x 400 ', 'aseo ', '2016-06-22', '11200', '1', 'Inversiones super express S.A.'),
(13, 'Copitos Jhonson x 100 ', 'aseo', '2016-06-22', '9000', '1', 'Inversiones super express S.A.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `correo` varchar(255) NOT NULL,
  `sexo` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `nivel` varchar(255) NOT NULL,
  `fotoperfil` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `correo`, `sexo`, `clave`, `nivel`, `fotoperfil`) VALUES
(1, 'David', 'Ramirez', 'david@hotmail.com', 'Masculino', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'cliente', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprashechas`
--
ALTER TABLE `comprashechas`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprashechas`
--
ALTER TABLE `comprashechas`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
