-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2017 a las 05:28:03
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `porciweb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `codagenda` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `turno` time NOT NULL,
  `mascota` text NOT NULL,
  `servicio` text NOT NULL,
  `dueno` text NOT NULL,
  `agendado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`codagenda`, `fecha`, `turno`, `mascota`, `servicio`, `dueno`, `agendado`) VALUES
(1, '2017-04-23', '10:30:00', 'Sombra', 'Peluqueria', 'eknalj@hotmail.com', '0'),
(2, '2017-04-23', '10:00:00', 'Sombra', 'Peluqueria', 'eknalj@hotmail.com', '1'),
(3, '2017-04-23', '11:00:00', 'lulu', 'BaÃ±o y Peluqueria', 'eknalj@hotmail.com', '1'),
(4, '2017-04-23', '11:30:00', 'rayo', 'BaÃ±o y Peluqueria', 'eknalj@hotmail.com', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alarmas`
--

CREATE TABLE `alarmas` (
  `idalarma` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idhembra` int(11) DEFAULT NULL,
  `estado` text NOT NULL,
  `idproxeven` int(11) NOT NULL,
  `proxevento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fproxevento` date NOT NULL,
  `Eventorealizado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alarmas`
--

INSERT INTO `alarmas` (`idalarma`, `fecha`, `idhembra`, `estado`, `idproxeven`, `proxevento`, `fproxevento`, `Eventorealizado`) VALUES
(1, '2016-01-03', 1, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(2, '2016-01-03', 2, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(3, '2016-01-03', 3, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(4, '2016-01-03', 4, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(5, '2016-01-03', 5, 'Cubierta', 2, 'Diagnostico de Pre&ntilde;ez', '2016-01-03', 'no'),
(6, '2016-01-03', 6, 'Cubierta', 2, 'Diagnostico de Pre&ntilde;ez', '2016-01-03', 'no'),
(7, '2016-01-03', 7, 'Cubierta', 2, 'Diagnostico de Pre&ntilde;ez', '2016-01-03', 'no'),
(8, '2016-01-03', 8, 'Cubierta', 2, 'Diagnostico de Pre&ntilde;ez', '2016-01-03', 'no'),
(9, '2016-01-03', 9, 'Preñada', 3, 'Vacuna E-Coli y Cambio de Alimento', '2016-01-03', 'no'),
(10, '2016-01-03', 10, 'Preñada', 3, 'Vacuna E-Coli y Cambio de Alimento', '2016-01-03', 'no'),
(11, '2016-01-03', 11, 'Preñada', 3, 'Vacuna E-Coli y Cambio de Alimento', '2016-01-03', 'no'),
(12, '2016-01-03', 12, 'Preñada', 3, 'Vacuna E-Coli y Cambio de Alimento', '2016-01-03', 'no'),
(13, '2016-01-03', 13, 'Preñada', 4, 'Vacuna E-Coli', '2016-01-03', 'no'),
(14, '2016-01-03', 14, 'Preñada', 4, 'Vacuna E-Coli', '2016-01-03', 'no'),
(15, '2016-01-03', 15, 'Preñada', 4, 'Vacuna E-Coli', '2016-01-03', 'no'),
(16, '2016-01-03', 16, 'Preñada', 4, 'Vacuna E-Coli', '2016-01-03', 'no'),
(17, '2016-01-03', 17, 'Preñada', 5, 'Desparacitacion', '2016-01-03', 'no'),
(18, '2016-01-03', 18, 'Preñada', 5, 'Desparacitacion', '2016-01-03', 'no'),
(19, '2016-01-03', 19, 'Preñada', 5, 'Desparacitacion', '2016-01-03', 'no'),
(20, '2016-01-03', 20, 'Preñada', 5, 'Desparacitacion', '2016-01-03', 'no'),
(21, '2016-01-03', 21, 'Preñada', 6, 'Cambio de Nave', '2016-01-03', 'no'),
(22, '2016-01-03', 22, 'Preñada', 6, 'Cambio de Nave', '2016-01-03', 'no'),
(23, '2016-01-03', 23, 'Preñada', 6, 'Cambio de Nave', '2016-01-03', 'no'),
(24, '2016-01-03', 24, 'Preñada', 6, 'Cambio de Nave', '2016-01-03', 'no'),
(25, '2016-01-03', 25, 'Preñada', 7, 'Parto', '2016-01-03', 'no'),
(26, '2016-01-03', 26, 'Preñada', 7, 'Parto', '2016-01-03', 'no'),
(27, '2016-01-03', 27, 'Preñada', 7, 'Parto', '2016-01-03', 'no'),
(28, '2016-01-03', 28, 'Preñada', 7, 'Parto', '2016-01-03', 'no'),
(29, '2016-01-03', 29, 'Vacia', 8, 'Vacuna Parvovirus y Leptospira', '2016-01-03', 'no'),
(30, '2016-01-03', 30, 'Vacia', 8, 'Vacuna Parvovirus y Leptospira', '2016-01-03', 'no'),
(31, '2016-01-03', 31, 'Vacia', 8, 'Vacuna Parvovirus y Leptospira', '2016-01-03', 'no'),
(32, '2016-01-03', 32, 'Vacia', 8, 'Vacuna Parvovirus y Leptospira', '2016-01-03', 'no'),
(33, '2016-01-03', 33, 'Vacia', 9, 'Destete, Cambio de Nave y Alimento', '2016-01-03', 'no'),
(34, '2016-01-03', 34, 'Vacia', 9, 'Destete, Cambio de Nave y Alimento', '2016-01-03', 'no'),
(35, '2016-01-03', 35, 'Vacia', 9, 'Destete, Cambio de Nave y Alimento', '2016-01-03', 'no'),
(36, '2016-01-03', 36, 'Vacia', 9, 'Destete, Cambio de Nave y Alimento', '2016-01-03', 'no'),
(37, '2016-01-03', 37, 'Vacia', 10, 'Celo y Cubrición', '2016-01-03', 'no'),
(38, '2016-01-03', 38, 'Vacia', 10, 'Celo y Cubrición', '2016-01-03', 'no'),
(39, '2016-01-03', 39, 'Vacia', 10, 'Celo y Cubrición', '2016-01-03', 'no'),
(40, '2016-01-03', 40, 'Vacia', 10, 'Celo y Cubrición', '2016-01-03', 'no'),
(41, '2016-01-03', 41, 'Vacia', 10, 'Celo y Cubrición', '2016-01-03', 'no'),
(42, '2016-01-03', 42, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(43, '2016-01-03', 43, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(44, '2016-01-03', 44, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(45, '2016-01-03', 45, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no'),
(46, '2016-01-03', 46, 'Vacia', 0, 'Cubricion', '2016-01-03', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bajas_abortos`
--

CREATE TABLE `bajas_abortos` (
  `idevento` int(11) NOT NULL,
  `idhembra` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `comentarios` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hembras`
--

CREATE TABLE `hembras` (
  `IDHEMBRA` int(11) NOT NULL,
  `RAZA` text NOT NULL,
  `FLLEGADA` date NOT NULL,
  `FNACIMIENTO` date NOT NULL,
  `PESO` int(11) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `COMENTARIO` varchar(300) NOT NULL,
  `USUARIO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `ID` int(30) NOT NULL,
  `TIPO` text NOT NULL,
  `NOMBRE` varchar(30) NOT NULL,
  `CANTIDAD` float(10,2) NOT NULL,
  `LOTE` text NOT NULL,
  `FVENCIMIENTO` date NOT NULL,
  `FDESCUEN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`ID`, `TIPO`, `NOMBRE`, `CANTIDAD`, `LOTE`, `FVENCIMIENTO`, `FDESCUEN`) VALUES
(1, 'M', 'E-COLI', 490.00, '1245RT', '2017-04-14', '0000-00-00'),
(2, 'M', 'PARVOVIRUS', 445.00, '5678TY', '2017-07-21', '0000-00-00'),
(3, 'M', 'LECTOSPIRA', 500.00, '8945YU', '2017-09-21', '0000-00-00'),
(4, 'A', 'LACTANCIA', 5385.00, '', '0000-00-00', '2017-04-16'),
(5, 'A', 'GESTACION', 4726.00, '', '0000-00-00', '2017-04-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `codmascota` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `tipo` text NOT NULL,
  `sexo` text NOT NULL,
  `raza` text NOT NULL,
  `fnacimiento` date NOT NULL,
  `peso` int(11) NOT NULL,
  `dueno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`codmascota`, `nombre`, `tipo`, `sexo`, `raza`, `fnacimiento`, `peso`, `dueno`) VALUES
(1, 'lulu', 'Perro', '', 'Rotweiler', '2015-01-13', 32, 'eknalj@hotmail.com'),
(2, 'kira', 'Perro', '', 'Pit Bull', '2016-12-01', 50, 'kcastro@hotmail.com'),
(6, 'Lucas', 'Perro', '', 'Beagle', '2016-09-14', 23, 'joricapu@hotmail.com'),
(7, 'Sombra', 'Perro', 'Hembra', 'Golden Retriever', '2014-10-15', 40, 'eknalj@hotmail.com'),
(8, 'rayo', 'Perro', 'Macho', 'Pastor AlemÃ¡n', '2016-10-25', 25, 'eknalj@hotmail.com'),
(9, 'Lucas', 'Perro', 'Macho', 'Beagle', '2016-09-20', 30, 'nicolljuranny0267@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partos`
--

CREATE TABLE `partos` (
  `IDPARTO` int(11) NOT NULL,
  `IDHEMBRA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `VIVOS` int(11) NOT NULL,
  `MUERTOS` int(11) NOT NULL,
  `MOMIFICADOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usertbl`
--

CREATE TABLE `usertbl` (
  `idusu` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `username` text NOT NULL,
  `direccion` text NOT NULL,
  `ncelular` text NOT NULL,
  `password` text NOT NULL,
  `fcreacion` date NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usertbl`
--

INSERT INTO `usertbl` (`idusu`, `full_name`, `username`, `direccion`, `ncelular`, `password`, `fcreacion`, `estado`) VALUES
(1, 'Administrador', 'administrador@huellasyrazas.com', 'admin', '3002058620', 'admin', '0000-00-00', 1),
(5, 'Elkin Castro Tarazona', 'eknalj@hotmail.com', 'Trav 48B # 69D -18 Sur', '2147483647', '2220131001', '2017-04-15', 1),
(6, 'Karen Castro', 'kcastro@hotmail.com', 'sfasfasf', '3194568753', '7894561230', '2017-04-15', 1),
(7, 'Nicoll Castro', 'nicolljuranny0267@gmail.com', 'Trav 48B # 69D -18 Sur', '3194567897', '7186593', '2017-04-15', 1),
(8, 'Catalina Castro', 'ccastro@hotmail.com', 'Trav 48B # 69D -18 Sur', '3214567879', '0123456789', '2017-04-15', 1),
(9, 'Ricardo Castro', 'joricapu@hotmail.com', 'Trav 48B # 69D -18 Sur', '3194567891', '1024475493', '2017-04-15', 1),
(10, 'Luis castro', 'luadcapu@hotmail.com', 'Trav 48B # 69D-18 Sur ', '3118986975', '2274039', '2017-04-15', 1),
(11, 'Diana Gonzalez', 'dgonzalez@hotmail.com', 'Trav 48B # 69D -18 Sur', '3157894562', '789456', '2017-04-15', 1),
(12, 'Pepito Peres', 'elkin.tarazona@uniagustiniana.edu.co', 'trav 48b', '3167894582', '1234', '2017-04-22', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `verracos`
--

CREATE TABLE `verracos` (
  `ID` int(11) NOT NULL,
  `RAZA` text NOT NULL,
  `FLLEGADA` date NOT NULL,
  `FNACIMIENTO` date NOT NULL,
  `PESO` int(11) NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `USUARIO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `verracos`
--

INSERT INTO `verracos` (`ID`, `RAZA`, `FLLEGADA`, `FNACIMIENTO`, `PESO`, `PRECIO`, `USUARIO`) VALUES
(23, '', '0000-00-00', '0000-00-00', 0, 0, 'admin'),
(56, 'Hamsphire', '2016-04-05', '2014-07-05', 59, 850000, 'Kaju'),
(89, 'Duroc', '2016-08-02', '2016-01-08', 146, 355000, 'cokis'),
(237, '', '0000-00-00', '0000-00-00', 0, 0, 'admin'),
(345, '', '0000-00-00', '0000-00-00', 0, 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`codagenda`);

--
-- Indices de la tabla `alarmas`
--
ALTER TABLE `alarmas`
  ADD UNIQUE KEY `idalarma` (`idalarma`);

--
-- Indices de la tabla `bajas_abortos`
--
ALTER TABLE `bajas_abortos`
  ADD PRIMARY KEY (`idevento`);

--
-- Indices de la tabla `hembras`
--
ALTER TABLE `hembras`
  ADD PRIMARY KEY (`IDHEMBRA`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`codmascota`);

--
-- Indices de la tabla `partos`
--
ALTER TABLE `partos`
  ADD PRIMARY KEY (`IDPARTO`);

--
-- Indices de la tabla `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`idusu`);

--
-- Indices de la tabla `verracos`
--
ALTER TABLE `verracos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `codagenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `alarmas`
--
ALTER TABLE `alarmas`
  MODIFY `idalarma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `bajas_abortos`
--
ALTER TABLE `bajas_abortos`
  MODIFY `idevento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `codmascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `partos`
--
ALTER TABLE `partos`
  MODIFY `IDPARTO` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `idusu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
