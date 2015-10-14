-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2015 a las 18:36:22
-- Versión del servidor: 5.6.25
-- Versión de PHP: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `matricula`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alum_cur`
--

CREATE TABLE IF NOT EXISTS `alum_cur` (
  `idcurso` int(11) DEFAULT NULL,
  `idalumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alum_cur`
--

INSERT INTO `alum_cur` (`idcurso`, `idalumno`) VALUES
(3, 4),
(3, 6),
(1, 6),
(1, 4),
(2, 5),
(2, 2),
(3, 6),
(3, 2),
(5, 5),
(1, 1),
(4, 9),
(6, 10),
(9, 11),
(3, 11),
(9, 12),
(8, 3),
(4, 8),
(4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alum_prof`
--

CREATE TABLE IF NOT EXISTS `alum_prof` (
  `idprofesor` int(11) DEFAULT NULL,
  `idalumno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alum_prof`
--

INSERT INTO `alum_prof` (`idprofesor`, `idalumno`) VALUES
(3, 3),
(3, 1),
(5, 1),
(2, 4),
(3, 1),
(2, 5),
(5, 6),
(1, 6),
(3, 6),
(5, 4),
(4, 2),
(2, 6),
(5, 9),
(5, 11),
(1, 2),
(2, 8),
(9, 12),
(6, 8),
(8, 11),
(6, 8),
(7, 10),
(8, 8),
(1, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talumno`
--

CREATE TABLE IF NOT EXISTS `talumno` (
  `idalumno` int(11) NOT NULL,
  `nom_alumno` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ape_alumno` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `dni_alumno` int(11) DEFAULT NULL,
  `edad_alumno` int(11) DEFAULT NULL,
  `sem_alumno` int(11) DEFAULT NULL,
  `gen_alumno` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `talumno`
--

INSERT INTO `talumno` (`idalumno`, `nom_alumno`, `ape_alumno`, `dni_alumno`, `edad_alumno`, `sem_alumno`, `gen_alumno`) VALUES
(1, 'adolfo', 'calle', 44310498, 28, 8, 'masculino'),
(2, 'juan ', 'perez', 45263526, 23, 4, 'masculino'),
(3, 'rosa ', 'cabrera', 41223565, 21, 3, 'femenino'),
(4, 'rosario', 'campian', 19839352, 30, 7, 'femenino'),
(5, 'fiorella ', 'briceño', 43842525, 27, 9, 'femenino'),
(6, 'carlos', 'bartra', 21526358, 20, 5, 'masculino'),
(7, 'ricardo', 'montalvo', 45263589, 25, 6, 'masculino'),
(8, 'micael ', 'salvatierra', 45856523, 19, 3, 'masculino'),
(9, 'jesus', 'martinez', 15263256, 25, 2, 'masculino'),
(10, 'gabriela', 'quintana', 14859655, 26, 2, 'femenino'),
(11, 'cinthya', 'salas', 45265385, 26, 4, 'femenino'),
(12, 'monica', 'vasquez', 56859654, 30, 7, 'femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcurso`
--

CREATE TABLE IF NOT EXISTS `tcurso` (
  `idcurso` int(11) NOT NULL,
  `nom_curso` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cre_curso` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tcurso`
--

INSERT INTO `tcurso` (`idcurso`, `nom_curso`, `cre_curso`) VALUES
(1, 'ing. de control', 5),
(2, 'fisica II', 4),
(3, 'algoritmia y estructura de datos', 5),
(4, 'sistemas operativos', 6),
(5, 'base de datos ', 3),
(6, 'circuitos y sistemas digitales', 5),
(7, 'ing. requermientos', 4),
(8, 'simulacion', 5),
(9, 'seminario de tesis I', 5),
(10, 'derecho informatico', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tprofesor`
--

CREATE TABLE IF NOT EXISTS `tprofesor` (
  `idprofesor` int(11) NOT NULL,
  `nom_profesor` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ape_profesor` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tel_profesor` int(11) DEFAULT NULL,
  `hor_profesor` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tprofesor`
--

INSERT INTO `tprofesor` (`idprofesor`, `nom_profesor`, `ape_profesor`, `tel_profesor`, `hor_profesor`) VALUES
(1, 'luis', 'carbajal', 965855220, 'mañanas'),
(2, 'juan', 'bonilla', 523658965, 'tardes'),
(3, 'roberto', 'pimentel', 125365895, 'noches'),
(4, 'mabel', 'colonio', 45896525, 'mañanas'),
(5, 'norma', 'berrospi', 452158965, 'tardes'),
(6, 'renato', 'torres', 456254, 'mañanas'),
(7, 'dolores', 'sarmiento', 452569, 'noches'),
(8, 'teresa', 'fuentes', 964526865, 'tardes'),
(9, 'carolina', 'cano', 859652565, 'tardes'),
(10, 'faustino', 'asprilla', 951753123, 'noches');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alum_cur`
--
ALTER TABLE `alum_cur`
  ADD KEY `idcurso` (`idcurso`),
  ADD KEY `idalumno` (`idalumno`);

--
-- Indices de la tabla `alum_prof`
--
ALTER TABLE `alum_prof`
  ADD KEY `idprofesor` (`idprofesor`),
  ADD KEY `idalumno` (`idalumno`);

--
-- Indices de la tabla `talumno`
--
ALTER TABLE `talumno`
  ADD PRIMARY KEY (`idalumno`);

--
-- Indices de la tabla `tcurso`
--
ALTER TABLE `tcurso`
  ADD PRIMARY KEY (`idcurso`);

--
-- Indices de la tabla `tprofesor`
--
ALTER TABLE `tprofesor`
  ADD PRIMARY KEY (`idprofesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `talumno`
--
ALTER TABLE `talumno`
  MODIFY `idalumno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tcurso`
--
ALTER TABLE `tcurso`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tprofesor`
--
ALTER TABLE `tprofesor`
  MODIFY `idprofesor` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alum_cur`
--
ALTER TABLE `alum_cur`
  ADD CONSTRAINT `alum_cur_ibfk_1` FOREIGN KEY (`idcurso`) REFERENCES `tcurso` (`idcurso`),
  ADD CONSTRAINT `alum_cur_ibfk_2` FOREIGN KEY (`idalumno`) REFERENCES `talumno` (`idalumno`);

--
-- Filtros para la tabla `alum_prof`
--
ALTER TABLE `alum_prof`
  ADD CONSTRAINT `alum_prof_ibfk_1` FOREIGN KEY (`idprofesor`) REFERENCES `tprofesor` (`idprofesor`),
  ADD CONSTRAINT `alum_prof_ibfk_2` FOREIGN KEY (`idalumno`) REFERENCES `talumno` (`idalumno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
