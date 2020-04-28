-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2020 a las 02:05:05
-- Versión del servidor: 5.5.62-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `invernadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `climaData`
--

CREATE TABLE IF NOT EXISTS `climaData` (
`climaDataID` int(11) NOT NULL,
  `humidity` decimal(4,2) NOT NULL,
  `tempC` decimal(4,2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tierraData`
--

CREATE TABLE IF NOT EXISTS `tierraData` (
`tierraDataID` int(11) NOT NULL,
  `moistureValue` int(11) NOT NULL,
  `humedad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `climaData`
--
ALTER TABLE `climaData`
 ADD PRIMARY KEY (`climaDataID`);

--
-- Indices de la tabla `tierraData`
--
ALTER TABLE `tierraData`
 ADD PRIMARY KEY (`tierraDataID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `climaData`
--
ALTER TABLE `climaData`
MODIFY `climaDataID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=469;
--
-- AUTO_INCREMENT de la tabla `tierraData`
--
ALTER TABLE `tierraData`
MODIFY `tierraDataID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=375;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
