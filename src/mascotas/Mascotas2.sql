-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.7-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para mascotas
CREATE DATABASE IF NOT EXISTS `mascotas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mascotas`;

-- Volcando estructura para tabla mascotas.mascota
CREATE TABLE IF NOT EXISTS `mascota` (
  `propietario` int(4) unsigned zerofill NOT NULL,
  `id_mascota` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `genero` varchar(1) DEFAULT NULL,
  `especie` varchar(20) DEFAULT NULL,
  `raza` varchar(20) DEFAULT NULL,
  `edad` varchar(10) DEFAULT NULL,
  `fecha_Registro` date DEFAULT NULL,
  PRIMARY KEY (`id_mascota`),
  KEY `propietario` (`propietario`),
  CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`propietario`) REFERENCES `propietarios` (`id_propietario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla mascotas.propietarios
CREATE TABLE IF NOT EXISTS `propietarios` (
  `id_propietario` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `apellido1` varchar(20) DEFAULT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `nombres` varchar(30) DEFAULT NULL,
  `fecha_Nacimiento` char(10) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  PRIMARY KEY (`id_propietario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
-- Volcando estructura para tabla mascotas.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
