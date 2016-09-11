-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2016 a las 00:04:15
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ajax`
--
CREATE DATABASE IF NOT EXISTS `ajax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ajax`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`nombre`, `apellido`, `web`) VALUES
('david', 'fernando', 'rosi.com'),
('calveterio', 'aristizabal', 'cocoliso.com'),
('', '', ''),
('jean', 'ramirez', ''),
('jean ', 'ramirez', 'www.facebook.com'),
('david fernando ramirez gonzalez', 'dkdkdk', 'dddddd'),
('', '', ''),
('', '', ''),
('sacarias', 'tajadas', 'ddldldld'),
('lucas', 'dldld', 'dldldl');
--
-- Base de datos: `cotizacion`
--
CREATE DATABASE IF NOT EXISTS `cotizacion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cotizacion`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(11) NOT NULL,
  `articulo` varchar(255) NOT NULL,
  `nombrearticulo` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `formaempaque` varchar(255) NOT NULL,
  `cantidad` varchar(255) NOT NULL,
  `peso` varchar(255) NOT NULL,
  `unidadpeso` varchar(255) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fotoproducto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `articulo`, `nombrearticulo`, `marca`, `formaempaque`, `cantidad`, `peso`, `unidadpeso`, `id_categoria`, `fotoproducto`) VALUES
(1, 'Papel higienico', 'acolchomax megarrollo ', 'Familia', 'paquete', '12', '42', 'metro cubico', 2, 'img/productos/papelhigienicoacolchomax-12.jpg'),
(2, 'Jabon liquido antibacterial para cuerpo', 'frutos rojos', 'IB', 'Frasco ', '1', '1000', 'gramos', 2, 'img/productos/jabon-antibacterial-ib.jpg'),
(3, 'Barra de jabon para ropa', '', 'Super Riel', 'Barra', '1', '', '', 2, 'img/productos/jabon-super-riel.jpg'),
(4, 'Enjuague bucal', 'fresh burst ', 'Listerine', 'Frasco', '1', '360', 'mililitros', 2, 'img/productos/enjuaguebucalfreshburst-360ml.jpg'),
(5, 'Refresco hidratante', 'tropical fruit', 'Gatorade', 'Frasco', '1', '500', 'mililitros', 1, 'img/productos/gatorade-tropical.jpg'),
(6, 'Eliminador de olores ', 'Baño Pacific', 'Familia', 'Frasco', '1', '300', 'mililitros', 2, 'img/productos/eliminadorolorespacific300ml.jpeg'),
(7, 'Shampo para hombre', 'Black limpieza efectiva', 'Ego', 'Frasco', '1', '400', 'mililitros', 2, 'img/productos/shampooegoblack400ml.jpg'),
(8, 'Shampoo para hombre', 'Black limpieza efectiva', 'Ego', 'Frasco', '1', '230', 'mililitros', 2, 'img/productos/shampooegoblack230ml.jpg'),
(9, 'Copitos', '', 'Jhonsons', 'Tarro', '150', '', '', 2, 'img/productos/copitos-jhonson-150.jpg'),
(10, 'Maquina de afeitar', 'Prestobarba 3 ', 'Gillette', '', '1', '', '', 2, 'img/productos/gilletteprestobarba3.jpg'),
(11, 'Suavizante', 'Aroma intense', 'Suavitel', 'Tarro', '1', '3', 'litros', 2, 'img/productos/suavizante-aromaintense.jpg'),
(12, 'Enjuague bucal', 'Zero ', 'Listerine', 'Frasco', '1', '500', 'mililitros', 2, 'img/productos/listerine-zero500ml.jpg'),
(13, 'Detergente', 'Poder acelerador ', 'Fab', 'Bolsa', '1', '2', 'Kilogramos', 2, 'img/productos/detergente-fab-poder-acelerador-18-kg.jpg'),
(14, 'Limpiador antibacterial', 'Mister musculo', 'Glade', 'Frasco', '1', '500', 'mililitros', 2, 'img/productos/mr-musculo-glade-liquido-para-pisos.jpg'),
(15, 'Refresco', 'Naranja Piña', 'Hit', 'Frasco', '1', '500', 'mililitros', 1, 'img/productos/hit500ml-naranja-piña.jpg'),
(16, 'Gaseosa', 'Toronja', 'Quatro', 'Frasco', '1', '250', 'mililitros', 1, 'img/productos/quatro250ml.jpg'),
(17, 'Refresco', 'Mora', 'Hit', 'Frasco', '1', '500', 'mililitros', 1, 'img/productos/hit500ml.jpg'),
(18, 'Refresco', 'Lulo', 'Hit', 'Frasco', '1', '500', 'mililitros', 1, 'img/productos/hit-lulo-500ml.jpg'),
(19, 'Cerveza', 'Aguila', 'Bavaria', 'Botella', '1', '330', 'mililitros', 4, 'img/productos/cerveza-aguila1382.jpg'),
(20, 'Pan tajado blanco', '', 'horneaditos', 'Paquete', '1', '450', 'gramos', 3, 'img/productos/pantajadoblancohorneaditos.jpg'),
(21, 'Jugo de Naranja', 'Fresh', 'Del Valle', 'Frasco', '1', '3', 'litros', 1, 'img/productos/big_5583674362e5021f00d89f73_3090.jpg'),
(22, 'Talco', 'Efficient', 'Rexona', 'Tarro', '1', '100', 'gramos', 2, 'img/productos/0000527088573478_md_a.jpg'),
(23, 'Jabon  liquido antibacterial  para manos', 'Avena', 'Protex', 'Bolsa', '1', '500', 'mililitros', 2, 'img/productos/0001756209797151_md_a.jpg'),
(24, 'Pan integral', 'Paquete familiar', 'Horneaditos', 'Paquete', '1', '', '', 3, ''),
(25, 'Pan ', 'Super Caiman', 'Horneaditos', 'Paquete', '1', '', '', 3, ''),
(26, 'Pan', 'Paqueton mixto', 'Horneaditos', 'Paquete', '1', '', '', 3, ''),
(27, 'Barra de jabon para ropa', 'Fuerza Azul', 'Puro', 'Barra', '1', '', '', 2, 'img/productos/0000396602536988_md_a.jpg'),
(28, 'Crema de dientes', 'Rapido alivio', 'Sensodyne ', 'Caja', '1', '4', 'onzas', 2, 'img/productos/sensodyne-rapid-relief-2.jpg'),
(29, 'Exprimidor de citricos', '', 'DKASA', '', '1', '', '', 5, ''),
(30, 'Tenedor de madera', 'Espumadera Nylon Basic', 'Imusa', '', '1', '', '', 5, ''),
(31, 'Colador', '', 'Np', '', '1', '', '', 5, ''),
(32, 'Tabla picadora', '', 'Dkasa', '', '1', '', '', 5, ''),
(33, 'Pulpa de fruta', 'Guayaba', 'Desconocida', '', '1', '', '', 6, ''),
(34, 'Quesadillo', '', 'Desconocida', '', '1', '', '', 7, ''),
(35, 'Arepa', ' Mini Tela', 'Desconocida', '', '1', '', '', 9, ''),
(36, 'Arroz', '', 'Roa', 'Bolsa', '1', '500', 'Gramos', 8, ''),
(37, 'Yogur', 'Bebida ligera ', 'Finesse', 'Tarro', '1', '1000', 'Gramos', 1, ''),
(38, 'Granola', '', 'Ekono', 'Bolsa', '1', '400 ', 'Gramos', 10, ''),
(39, 'Recipiente redondo', '', 'Polimes', 'Tarro', '1', '', '', 11, ''),
(40, 'Recipiente ', '2 LTS. RE', 'Desconocida', 'Tarro', '1', '', '', 11, ''),
(41, 'Camarones ', 'Titi', 'Desconocida', 'Bolsa', '1', '1000', 'Gramos', 12, ''),
(42, 'Mortadela', '', 'Ekono', '', '1', '450', 'Gramos', 12, ''),
(43, 'Salchica ', '', 'Ekono', '', '1', '440', 'Gramos', 12, ''),
(44, 'Mantequilla', '', 'La Fina', '', '1', '250', 'Gramos', 12, ''),
(45, 'Pan tajado', '', 'Comapan', 'Bolsa', '1', '520', 'Gramos', 3, ''),
(46, 'Queso', 'Campesino', 'Alpina', '', '1', '250', 'Gramos', 7, ''),
(47, 'Jabon liquido antibacterial para platos', 'agua fresca', 'Blancox lozacrem', 'tarro', '1', '850 ', 'mililitros', 2, 'img/productos/0001145113875902_md_a.jpg'),
(48, 'Veneno para cucarachas', '', 'Baygon', 'tarro', '1', '', '', 13, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombrecategoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombrecategoria`) VALUES
(1, 'Bebidas'),
(2, 'Aseo'),
(3, 'panaderia'),
(4, 'Licores\r\n'),
(5, 'Elementos de cocina'),
(6, 'Pulpas de frutas'),
(7, 'Quesos'),
(8, 'Granos'),
(9, 'Arepas\r\n'),
(10, 'Alimento'),
(11, 'Recipientes'),
(12, 'Alimentos refrigerantes'),
(13, 'Venenos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id_comercio` int(11) NOT NULL,
  `nombrecomercio` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `barrio` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tipocomercio` varchar(255) NOT NULL,
  `nombredeldueño` varchar(255) NOT NULL,
  `nit` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id_comercio`, `nombrecomercio`, `direccion`, `ciudad`, `barrio`, `foto`, `tipocomercio`, `nombredeldueño`, `nit`, `telefono`) VALUES
(1, 'PP2', 'Calle 54 # 37-18', 'Medellin', 'Boston', '', 'Tienda', 'Luis Fernando Perez Perez', '71675728-8', ''),
(2, 'Super Express', 'carrera 39 # 50', 'Medellin', 'Boston', '', 'Supermercado', '', '', ''),
(3, 'D1', 'carrera 55', 'Medellin', 'Boston', '', 'Tienda', '', '', ''),
(4, 'Exito Suba', 'Carrera 12 # 12', 'Bogota', 'Suba', '', 'Tienda', '', '', ''),
(5, 'Exito San Antonio', '', 'Medellin ', 'Oriental', '', '', '', '', ''),
(6, 'Surtimax', '', 'Medellin', 'Buenos Aires', '', '', '', '', '3660449');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialcompras`
--

CREATE TABLE `historialcompras` (
  `id_compra` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `fechacompra` datetime NOT NULL,
  `id_comercio` int(11) NOT NULL,
  `precio` float(5,3) NOT NULL,
  `cantidadcomprada` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `historialcompras`
--

INSERT INTO `historialcompras` (`id_compra`, `id_usuario`, `id_articulo`, `fechacompra`, `id_comercio`, `precio`, `cantidadcomprada`) VALUES
(1, 2, 29, '2016-07-27 13:25:21', 1, 12.300, '1'),
(11, 2, 30, '2016-07-27 13:00:00', 1, 3.300, '1'),
(12, 2, 31, '2016-07-27 00:00:00', 1, 2.000, '1'),
(13, 2, 32, '2016-07-27 00:00:00', 1, 9.990, '1'),
(14, 2, 33, '2016-08-09 07:45:00', 2, 2.000, '1'),
(15, 2, 34, '2016-08-09 07:45:00', 2, 1.600, '1'),
(16, 2, 35, '2016-08-09 07:45:00', 2, 1.350, '1'),
(17, 2, 36, '2016-08-09 00:00:00', 2, 1.550, '1'),
(18, 2, 37, '2016-08-08 00:00:00', 5, 14.100, '1'),
(19, 2, 37, '2016-09-03 11:15:00', 6, 13.960, '1'),
(20, 2, 38, '2016-08-08 00:00:00', 5, 3.930, '1'),
(21, 2, 39, '2016-08-08 00:00:00', 5, 6.900, '1'),
(22, 2, 40, '2016-08-08 00:00:00', 5, 15.900, '1'),
(23, 2, 41, '2016-08-08 00:00:00', 5, 17.500, '1'),
(24, 2, 42, '2016-09-03 00:00:00', 6, 5.160, '1'),
(25, 2, 43, '2016-09-03 00:00:00', 6, 5.380, '1'),
(26, 2, 44, '2016-09-03 00:00:00', 6, 2.900, '1'),
(27, 2, 45, '2016-09-03 00:00:00', 6, 3.280, '1'),
(28, 2, 46, '2016-09-03 00:00:00', 6, 4.950, ''),
(29, 2, 47, '2016-08-02 13:29:00', 2, 9.600, '1'),
(30, 2, 2, '2016-08-02 00:00:00', 2, 5.900, '1'),
(31, 2, 48, '2016-08-02 00:00:00', 2, 8.450, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonoscomercio`
--

CREATE TABLE `telefonoscomercio` (
  `id_telefono` int(11) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `id_comercio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `telefonoscomercio`
--

INSERT INTO `telefonoscomercio` (`id_telefono`, `telefono`, `id_comercio`) VALUES
(1, '3222300', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposenvases`
--

CREATE TABLE `tiposenvases` (
  `id_envase` int(11) NOT NULL,
  `envase` varchar(255) NOT NULL,
  `fotoenvase` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tiposenvases`
--

INSERT INTO `tiposenvases` (`id_envase`, `envase`, `fotoenvase`) VALUES
(1, 'plástico', 'img/tipoenvase/plastico.gif'),
(2, 'lata', 'img/tipoenvase/lata.jpg'),
(3, 'brik', 'img/tipoenvase/brik.jpg'),
(5, 'Caja ', 'img/tipoenvase/carton.jpg'),
(6, 'vidrio', 'img/tipoenvase/vidrio.jpg');

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
(1, 'David', 'Ramirez', 'david@hotmail.com', 'Masculino', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'cliente', ''),
(2, 'lucas', 'aristizabal', '', NULL, NULL, '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);
ALTER TABLE `articulos` ADD FULLTEXT KEY `articulo` (`articulo`);
ALTER TABLE `articulos` ADD FULLTEXT KEY `nombrearticulo` (`nombrearticulo`);
ALTER TABLE `articulos` ADD FULLTEXT KEY `marca` (`marca`);
ALTER TABLE `articulos` ADD FULLTEXT KEY `articulo_2` (`articulo`,`nombrearticulo`,`marca`);
ALTER TABLE `articulos` ADD FULLTEXT KEY `FullText` (`articulo`,`nombrearticulo`,`marca`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id_comercio`);
ALTER TABLE `comercio` ADD FULLTEXT KEY `localization` (`ciudad`,`barrio`);

--
-- Indices de la tabla `historialcompras`
--
ALTER TABLE `historialcompras`
  ADD PRIMARY KEY (`id_compra`);

--
-- Indices de la tabla `telefonoscomercio`
--
ALTER TABLE `telefonoscomercio`
  ADD PRIMARY KEY (`id_telefono`);

--
-- Indices de la tabla `tiposenvases`
--
ALTER TABLE `tiposenvases`
  ADD PRIMARY KEY (`id_envase`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id_comercio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `historialcompras`
--
ALTER TABLE `historialcompras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `telefonoscomercio`
--
ALTER TABLE `telefonoscomercio`
  MODIFY `id_telefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tiposenvases`
--
ALTER TABLE `tiposenvases`
  MODIFY `id_envase` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Base de datos: `logincorrecto`
--
CREATE DATABASE IF NOT EXISTS `logincorrecto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `logincorrecto`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `amigos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id`, `usuario`, `amigos`) VALUES
(133, 6, 2),
(134, 2, 6),
(135, 10, 6),
(136, 6, 10),
(137, 10, 2),
(138, 2, 10),
(139, 10, 3),
(140, 3, 10),
(141, 2, 3),
(142, 3, 2),
(143, 9, 2),
(144, 2, 9),
(147, 5, 9),
(148, 9, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigoscomunes`
--

CREATE TABLE `amigoscomunes` (
  `id_amigocomun` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `amigo` int(11) NOT NULL,
  `amigoencomun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `amigoscomunes`
--

INSERT INTO `amigoscomunes` (`id_amigocomun`, `usuario`, `amigo`, `amigoencomun`) VALUES
(459, 10, 2, 6),
(460, 2, 10, 6),
(461, 10, 6, 2),
(462, 6, 10, 2),
(463, 2, 3, 10),
(464, 3, 2, 10),
(465, 2, 10, 3),
(466, 10, 2, 3),
(467, 2, 6, 10),
(468, 6, 2, 10),
(469, 9, 5, 2),
(470, 5, 9, 2),
(473, 2, 5, 9),
(474, 5, 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fsexos`
--

CREATE TABLE `fsexos` (
  `id_fotosexo` int(11) NOT NULL,
  `fotosex` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fsexos`
--

INSERT INTO `fsexos` (`id_fotosexo`, `fotosex`, `sexo`) VALUES
(1, '../fotos/hombre.jpg', 'Masculino'),
(2, '../fotos/mujer.jpg', 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsfeed`
--

CREATE TABLE `newsfeed` (
  `id_news` int(11) NOT NULL,
  `evento` varchar(255) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `codigoevento` int(11) DEFAULT NULL,
  `recipient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `newsfeed`
--

INSERT INTO `newsfeed` (`id_news`, `evento`, `usuario`, `hora`, `fecha`, `codigoevento`, `recipient`) VALUES
(66, 'envio', 3, '16:34:00', '2014-06-08', NULL, 1),
(67, 'envio', 3, '16:35:00', '2014-06-08', NULL, 2),
(68, 'aceptado', 2, '17:08:00', '2014-06-08', 27, 0),
(69, 'envio', 2, '17:26:00', '2014-06-08', NULL, 3),
(70, 'envio', 3, '17:29:00', '2014-06-08', NULL, 4),
(71, 'aceptado', 4, '17:29:00', '2014-06-08', 29, 0),
(72, 'envio', 4, '17:47:00', '2014-06-08', NULL, 2),
(73, 'aceptado', 2, '17:49:00', '2014-06-08', 31, 0),
(74, 'envio', 2, '17:49:00', '2014-06-08', NULL, 4),
(75, 'aceptado', 4, '17:50:00', '2014-06-08', 33, 0),
(76, 'envio', 2, '17:58:00', '2014-06-08', NULL, 3),
(77, 'envio', 4, '20:00:00', '2014-06-08', NULL, 2),
(78, 'aceptado', 2, '20:00:00', '2014-06-08', 34, 0),
(79, 'aceptado', 2, '20:00:00', '2014-06-08', 35, 0),
(80, 'envio', 2, '00:15:00', '2014-07-23', NULL, 5),
(81, 'aceptado', 5, '00:15:00', '2014-07-23', 35, 0),
(82, 'envio', 5, '00:15:00', '2014-07-23', NULL, 4),
(83, 'aceptado', 4, '00:16:00', '2014-07-23', 37, 0),
(84, 'envio', 2, '00:24:00', '2014-07-23', NULL, 6),
(85, 'aceptado', 6, '00:24:00', '2014-07-23', 39, 0),
(86, 'envio', 5, '00:34:00', '2014-07-23', NULL, 6),
(87, 'envio', 5, '00:34:00', '2014-07-23', NULL, 3),
(88, 'aceptado', 3, '00:34:00', '2014-07-23', 41, 0),
(89, 'aceptado', 6, '00:34:00', '2014-07-23', 43, 0),
(90, 'envio', 2, '11:48:00', '2014-07-23', NULL, 6),
(91, 'aceptado', 6, '11:48:00', '2014-07-23', 45, 0),
(92, 'envio', 4, '16:32:00', '2014-07-24', NULL, 8),
(93, 'aceptado', 8, '16:33:00', '2014-07-24', 47, 0),
(94, 'envio', 8, '16:41:00', '2014-07-24', NULL, 6),
(95, 'aceptado', 6, '16:41:00', '2014-07-24', 49, 0),
(96, 'envio', 8, '16:45:00', '2014-07-24', NULL, 2),
(97, 'aceptado', 2, '16:47:00', '2014-07-24', 51, 0),
(98, 'envio', 8, '19:42:00', '2014-07-24', NULL, 5),
(99, 'aceptado', 5, '19:42:00', '2014-07-24', 53, 0),
(100, 'envio', 8, '19:48:00', '2014-07-24', NULL, 1),
(101, 'envio', 8, '19:48:00', '2014-07-24', NULL, 7),
(102, 'aceptado', 7, '19:49:00', '2014-07-24', 55, 0),
(103, 'envio', 2, '21:48:00', '2014-07-24', NULL, 7),
(104, 'aceptado', 7, '21:48:00', '2014-07-24', 57, 0),
(105, 'envio', 2, '14:17:00', '2014-07-25', NULL, 9),
(106, 'aceptado', 9, '14:17:00', '2014-07-25', 59, 0),
(107, 'envio', 7, '18:12:00', '2014-07-27', NULL, 10),
(108, 'aceptado', 10, '18:12:00', '2014-07-27', 61, 0),
(109, 'envio', 2, '18:14:00', '2014-07-27', NULL, 10),
(110, 'aceptado', 10, '18:14:00', '2014-07-27', 63, 0),
(111, 'envio', 10, '21:11:00', '2014-07-27', NULL, 6),
(112, 'aceptado', 6, '21:11:00', '2014-07-27', 65, 0),
(113, 'envio', 2, '23:12:00', '2014-07-27', NULL, 11),
(114, 'aceptado', 11, '23:13:00', '2014-07-27', 67, 0),
(115, 'envio', 5, '23:13:00', '2014-07-27', NULL, 11),
(116, 'aceptado', 11, '23:13:00', '2014-07-27', 69, 0),
(117, 'envio', 2, '11:21:00', '2014-07-28', NULL, 12),
(118, 'envio', 2, '11:21:00', '2014-07-28', NULL, 13),
(119, 'aceptado', 12, '11:21:00', '2014-07-28', 71, 0),
(120, 'aceptado', 13, '11:21:00', '2014-07-28', 73, 0),
(121, 'envio', 11, '11:21:00', '2014-07-28', NULL, 12),
(122, 'envio', 11, '11:21:00', '2014-07-28', NULL, 13),
(123, 'aceptado', 12, '11:22:00', '2014-07-28', 75, 0),
(124, 'aceptado', 13, '11:22:00', '2014-07-28', 77, 0),
(125, 'envio', 12, '11:27:00', '2014-07-28', NULL, 3),
(126, 'envio', 12, '11:27:00', '2014-07-28', NULL, 7),
(127, 'envio', 12, '11:27:00', '2014-07-28', NULL, 8),
(128, 'aceptado', 3, '11:28:00', '2014-07-28', 79, 0),
(129, 'aceptado', 7, '11:28:00', '2014-07-28', 81, 0),
(130, 'aceptado', 8, '11:28:00', '2014-07-28', 83, 0),
(131, 'envio', 2, '21:56:00', '2014-07-29', NULL, 9),
(132, 'aceptado', 9, '21:58:00', '2014-07-29', 85, 0),
(133, 'envio', 2, '21:59:00', '2014-07-29', NULL, 9),
(134, 'aceptado', 9, '22:00:00', '2014-07-29', 87, 0),
(135, 'envio', 9, '22:01:00', '2014-07-29', NULL, 7),
(136, 'envio', 9, '22:04:00', '2014-07-29', NULL, 2),
(137, 'envio', 9, '22:04:00', '2014-07-29', NULL, 5),
(138, 'envio', 9, '09:01:00', '2014-07-30', NULL, 4),
(139, 'envio', 9, '09:04:00', '2014-07-30', NULL, 3),
(140, 'envio', 9, '09:04:00', '2014-07-30', NULL, 12),
(141, 'envio', 9, '09:10:00', '2014-07-30', NULL, 8),
(142, 'envio', 9, '09:16:00', '2014-07-30', NULL, 6),
(143, 'envio', 9, '09:53:00', '2014-07-30', NULL, 6),
(144, 'envio', 9, '09:57:00', '2014-07-30', NULL, 10),
(145, 'envio', 2, '16:32:00', '2014-07-30', NULL, 10),
(146, 'envio', 2, '16:32:00', '2014-07-30', NULL, 7),
(147, 'aceptado', 3, '16:33:00', '2014-07-30', 89, 0),
(148, 'aceptado', 10, '16:33:00', '2014-07-30', 91, 0),
(149, 'aceptado', 10, '16:33:00', '2014-07-30', 93, 0),
(150, 'aceptado', 7, '16:33:00', '2014-07-30', 95, 0),
(151, 'envio', 2, '17:10:00', '2014-07-30', NULL, 7),
(152, 'envio', 2, '17:10:00', '2014-07-30', NULL, 10),
(153, 'aceptado', 10, '17:12:00', '2014-07-30', 97, 0),
(154, 'aceptado', 7, '17:13:00', '2014-07-30', 99, 0),
(155, 'envio', 2, '17:52:00', '2014-07-30', NULL, 10),
(156, 'envio', 2, '17:52:00', '2014-07-30', NULL, 7),
(157, 'aceptado', 7, '17:52:00', '2014-07-30', 101, 0),
(158, 'aceptado', 10, '17:53:00', '2014-07-30', 103, 0),
(159, 'envio', 2, '18:02:00', '2014-07-30', NULL, 7),
(160, 'aceptado', 7, '18:02:00', '2014-07-30', 105, 0),
(161, 'envio', 2, '18:05:00', '2014-07-30', NULL, 10),
(162, 'aceptado', 10, '18:05:00', '2014-07-30', 107, 0),
(163, 'envio', 2, '18:28:00', '2014-07-30', NULL, 7),
(164, 'aceptado', 7, '18:29:00', '2014-07-30', 109, 0),
(165, 'envio', 2, '18:51:00', '2014-07-30', NULL, 7),
(166, 'aceptado', 7, '18:51:00', '2014-07-30', 111, 0),
(167, 'envio', 2, '19:01:00', '2014-07-30', NULL, 7),
(168, 'aceptado', 7, '19:01:00', '2014-07-30', 113, 0),
(169, 'envio', 2, '19:13:00', '2014-07-30', NULL, 7),
(170, 'aceptado', 7, '19:13:00', '2014-07-30', 115, 0),
(171, 'envio', 2, '19:19:00', '2014-07-30', NULL, 7),
(172, 'aceptado', 7, '19:20:00', '2014-07-30', 117, 0),
(173, 'envio', 2, '19:31:00', '2014-07-30', NULL, 7),
(174, 'aceptado', 7, '19:31:00', '2014-07-30', 119, 0),
(175, 'envio', 2, '19:38:00', '2014-07-30', NULL, 7),
(176, 'envio', 2, '19:38:00', '2014-07-30', NULL, 9),
(177, 'aceptado', 7, '19:39:00', '2014-07-30', 121, 0),
(178, 'aceptado', 9, '19:39:00', '2014-07-30', 123, 0),
(179, 'envio', 2, '22:10:00', '2014-07-30', NULL, 7),
(180, 'envio', 2, '22:10:00', '2014-07-30', NULL, 12),
(181, 'aceptado', 7, '22:11:00', '2014-07-30', 125, 0),
(182, 'aceptado', 12, '22:11:00', '2014-07-30', 127, 0),
(183, 'envio', 2, '11:52:00', '2014-07-31', NULL, 3),
(184, 'aceptado', 3, '20:00:00', '2014-07-31', 129, 0),
(185, 'envio', 2, '10:58:00', '2014-08-01', NULL, 6),
(186, 'aceptado', 6, '10:59:00', '2014-08-01', 131, 0),
(187, 'envio', 2, '11:06:00', '2014-08-01', NULL, 6),
(188, 'aceptado', 6, '11:07:00', '2014-08-01', 133, 0),
(189, 'envio', 6, '11:07:00', '2014-08-01', NULL, 10),
(190, 'aceptado', 10, '11:07:00', '2014-08-01', 135, 0),
(191, 'envio', 2, '11:09:00', '2014-08-01', NULL, 10),
(192, 'aceptado', 10, '11:09:00', '2014-08-01', 137, 0),
(193, 'envio', 3, '11:09:00', '2014-08-01', NULL, 2),
(194, 'envio', 3, '11:10:00', '2014-08-01', NULL, 10),
(195, 'aceptado', 10, '11:10:00', '2014-08-01', 139, 0),
(196, 'aceptado', 2, '11:10:00', '2014-08-01', 141, 0),
(197, 'envio', 2, '11:11:00', '2014-08-01', NULL, 5),
(198, 'envio', 2, '11:11:00', '2014-08-01', NULL, 9),
(199, 'aceptado', 9, '11:12:00', '2014-08-01', 143, 0),
(200, 'aceptado', 5, '11:12:00', '2014-08-01', 145, 0),
(201, 'envio', 9, '11:13:00', '2014-08-01', NULL, 5),
(202, 'aceptado', 5, '11:13:00', '2014-08-01', 147, 0),
(203, 'envio', 2, '11:00:00', '2014-08-04', NULL, 4),
(204, 'envio', 2, '11:11:00', '2014-08-04', NULL, 4),
(205, 'envio', 2, '11:18:00', '2014-08-04', NULL, 4),
(206, 'envio', 2, '11:21:00', '2014-08-04', NULL, 4),
(207, 'envio', 2, '11:30:00', '2014-08-04', NULL, 4),
(208, 'envio', 2, '11:32:00', '2014-08-04', NULL, 4),
(209, 'envio', 2, '11:34:00', '2014-08-04', NULL, 4),
(210, 'envio', 2, '11:36:00', '2014-08-04', NULL, 4),
(211, 'envio', 2, '11:39:00', '2014-08-04', NULL, 4),
(212, 'envio', 2, '11:51:00', '2014-08-04', NULL, 4),
(213, 'envio', 2, '11:56:00', '2014-08-04', NULL, 4),
(214, 'envio', 2, '11:58:00', '2014-08-04', NULL, 4),
(215, 'envio', 2, '12:00:00', '2014-08-04', NULL, 4),
(216, 'envio', 2, '12:02:00', '2014-08-04', NULL, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id_solicitud` int(11) NOT NULL,
  `emisor` int(11) NOT NULL,
  `receptor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id_solicitud`, `emisor`, `receptor`) VALUES
(14, 2, 4);

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
(1, 'David', 'Aristizabal', 'deivy@hotmail.com', 'Masculino', 'admin', 'Admin', ''),
(2, 'Falcao', 'Garcia', 'falcao@hotmail.com', 'Masculino', '123', 'cliente', '../fotos/1.jpg'),
(3, 'Jean Carlo ', 'Cardona', 'Jean@hotmail.com', 'Masculino', '123', 'cliente', ''),
(4, 'Tatiana', 'Moreno', 'tatis@hotmail.com', 'Femenino', '123', 'cliente', '../fotos/2.jpg'),
(5, 'yeison', 'cardona', 'yeison@hotmail.com', 'masculino', '123', 'cliente', ''),
(6, 'damian', 'ortega', 'damian@hotmail.com', 'masculino', '123', 'cliente', ''),
(7, 'michael', 'guzman', 'michael@hotmail.com', 'masculino', '123', 'cliente', ''),
(8, 'Jorge', 'vanegas', 'jorge@hotmail.com', 'masculino', '123', 'cliente', ''),
(9, 'javier', 'ramirez', 'javier@hotmail.com', 'masculino', '123', 'cliente', ''),
(10, 'diana', 'gonzalez', 'diana@hotmail.com', 'femenino', '123', 'cliente', ''),
(11, 'victor ', 'urrego', 'victor@hotmail.com', 'masculino', '123', 'cliente', ''),
(12, 'Teresa', 'echeverri', 'teresa@hotmail.com', 'femenino', '123', 'cliente', ''),
(13, 'Paula', 'Gonzalez', 'paula@hotmail.com', 'femenino', '123', 'cliente', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `amigoscomunes`
--
ALTER TABLE `amigoscomunes`
  ADD PRIMARY KEY (`id_amigocomun`);

--
-- Indices de la tabla `fsexos`
--
ALTER TABLE `fsexos`
  ADD PRIMARY KEY (`id_fotosexo`);

--
-- Indices de la tabla `newsfeed`
--
ALTER TABLE `newsfeed`
  ADD PRIMARY KEY (`id_news`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id_solicitud`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amigos`
--
ALTER TABLE `amigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT de la tabla `amigoscomunes`
--
ALTER TABLE `amigoscomunes`
  MODIFY `id_amigocomun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;
--
-- AUTO_INCREMENT de la tabla `fsexos`
--
ALTER TABLE `fsexos`
  MODIFY `id_fotosexo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `newsfeed`
--
ALTER TABLE `newsfeed`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id_solicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"cotizacion","table":"historialcompras"},{"db":"cotizacion","table":"articulos"},{"db":"cotizacion","table":"categorias"},{"db":"cotizacion","table":"comercio"},{"db":"ajax","table":"empleados"},{"db":"cotizacion","table":"telefonoscomercio"},{"db":"cotizacion","table":"articu"},{"db":"cotizacion","table":"artic"},{"db":"cotizacion","table":"index"},{"db":"cotizacion","table":"Telefonoscomercio"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'cotizacion', 'comprashechas', '[]', '2016-07-01 03:58:56'),
('root', 'cotizacion', 'historialcompras', '[]', '2016-08-23 14:42:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-06-25 21:14:32', '{"lang":"es","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
