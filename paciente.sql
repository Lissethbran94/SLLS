-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2017 a las 04:54:36
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `paciente`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expediente`
--

CREATE TABLE IF NOT EXISTS `expediente` (
  `ced_exp` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
`dni_exp` int(11) NOT NULL,
  `ced_paciente` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fec_gen_exp` date NOT NULL,
  `estado_exp` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sala` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grusan` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `expediente`
--

INSERT INTO `expediente` (`ced_exp`, `dni_exp`, `ced_paciente`, `fec_gen_exp`, `estado_exp`, `sala`, `direccion`, `telefono`, `grusan`) VALUES
('', 1, '123', '0000-00-00', '0', '1', 'san miguel', '77201202', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE IF NOT EXISTS `historial` (
`dni_historial` int(11) NOT NULL,
  `ced_pac` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ced_prof` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fec_gen_hist` date NOT NULL,
  `observacion` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diagnostico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tratamiento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `receta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE IF NOT EXISTS `paciente` (
`id_paciente` int(11) NOT NULL,
  `ced` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fec_nac` date NOT NULL,
  `sexo` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre_representante` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pais` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `municipio` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado_civil` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `emergencia` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `grusan` varchar(5) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `vih` varchar(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ocupacion` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `alergico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `med_act` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `enf_act` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `peso` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `talla` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id_paciente`, `ced`, `nombre`, `apellido`, `fec_nac`, `sexo`, `nombre_representante`, `foto`, `pais`, `estado`, `ciudad`, `municipio`, `estado_civil`, `emergencia`, `grusan`, `vih`, `ocupacion`, `alergico`, `med_act`, `enf_act`, `peso`, `talla`) VALUES
(1, '123', 'ROMEO', 'HDZ', '1991-05-10', 'M', '<BR /><B>NOTICE</B>:  UNDEFINED INDEX: NOMREP IN <B>C:XAMPPHTDOCSMEDICALMOD_REGISTROSREG_EST.PHP</B>', 'fotopaciente/123.jpeg', 'E', 'SAN MIGUEL', 'SAN MIGUEL', 'SAN MIGUEL', 'S', 'DOLOR TEESTICULAR', 'OMA', 'N', 'CAJERO COME', 'NO', 'NADA', 'NONEE', '180', '180');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patologia`
--

CREATE TABLE IF NOT EXISTS `patologia` (
`id` int(11) NOT NULL,
  `ced` varchar(100) NOT NULL,
  `patologia_pac` varchar(100) NOT NULL,
  `habitos_personales` varchar(100) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE IF NOT EXISTS `profesional` (
  `ced_prof` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre_apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo_prof` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`ced_prof`, `nombre_apellido`, `tipo_prof`) VALUES
('&lt;br /&gt;&lt;b&gt;Noti', '&LT;BR /&GT;&LT;B&GT;NOTICE&LT;/B&GT;:  UNDEFINED INDEX: NOMBRE_PROF IN &LT;B&GT;C:XAMPPHTDOCSMEDICA', 'MEDICO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE IF NOT EXISTS `sala` (
`id_sala` int(11) NOT NULL,
  `denominacion` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`id_sala`, `denominacion`, `direccion`) VALUES
(1, 'EMERGENCIA', 'PACIENTE'),
(2, 'SALA-A', 'PACIENTE'),
(3, 'LABORATARIO', 'PACIENTE'),
(4, 'RAYOS-X', 'PACIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_prof`
--

CREATE TABLE IF NOT EXISTS `tipo_prof` (
  `cod_prof` int(11) NOT NULL,
  `denominacion_prof` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id_usu` int(11) NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `login`, `tipo`, `nombre`, `password`) VALUES
(27, 'ISCUlises', 'ADMINISTRADOR', 'ULI', '21232f297a57a5a743894a0e4a801fc3'),
(29, 'polio', 'ADMINISTRADOR', 'polio', 'ugb2017'),
(30, 'epolio', 'ADMINISTRADOR', 'LEONIDAS ', 'bc4dbd3fbdb00bd0cc76ad3276082e40');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `expediente`
--
ALTER TABLE `expediente`
 ADD PRIMARY KEY (`dni_exp`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
 ADD PRIMARY KEY (`dni_historial`), ADD UNIQUE KEY `ced_pac` (`ced_pac`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
 ADD PRIMARY KEY (`ced`), ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `patologia`
--
ALTER TABLE `patologia`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
 ADD PRIMARY KEY (`ced_prof`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
 ADD PRIMARY KEY (`id_sala`);

--
-- Indices de la tabla `tipo_prof`
--
ALTER TABLE `tipo_prof`
 ADD PRIMARY KEY (`cod_prof`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `expediente`
--
ALTER TABLE `expediente`
MODIFY `dni_exp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
MODIFY `dni_historial` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `patologia`
--
ALTER TABLE `patologia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
