-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.2.13-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para pizzas
CREATE DATABASE IF NOT EXISTS `pizzas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pizzas`;

-- Volcando estructura para tabla pizzas.t_ingredientes
CREATE TABLE IF NOT EXISTS `t_ingredientes` (
  `ID_INGREDIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` text NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TIPO_UNIDAD` tinytext NOT NULL,
  `FECHA_CADUCIDAD` date NOT NULL,
  `FECHA_ENTRADA` date NOT NULL,
  `FOTO` text NOT NULL,
  PRIMARY KEY (`ID_INGREDIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TABLA PARA LOS INGREDIENTES';

-- Volcando datos para la tabla pizzas.t_ingredientes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `t_ingredientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_ingredientes` ENABLE KEYS */;

-- Volcando estructura para tabla pizzas.t_productos
CREATE TABLE IF NOT EXISTS `t_productos` (
  `ID_PRODUCTOS` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORIA` text NOT NULL,
  `NOMBRE` text NOT NULL,
  `EXISTENCIA` int(11) NOT NULL DEFAULT 0,
  `FECHA_CADUCIDAD` date NOT NULL,
  `FECHA_ENTRADA` date NOT NULL,
  `FOTO` text NOT NULL,
  PRIMARY KEY (`ID_PRODUCTOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tabla para los productos como el caso de bebidas, platillos, etc.';

-- Volcando datos para la tabla pizzas.t_productos: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `t_productos` DISABLE KEYS */;
INSERT INTO `t_productos` (`ID_PRODUCTOS`, `CATEGORIA`, `NOMBRE`, `EXISTENCIA`, `FECHA_CADUCIDAD`, `FECHA_ENTRADA`, `FOTO`) VALUES
	(1, 'Platillo', 'coca', 10, '2018-03-07', '2018-03-07', '');
/*!40000 ALTER TABLE `t_productos` ENABLE KEYS */;

-- Volcando estructura para tabla pizzas.t_usuarios
CREATE TABLE IF NOT EXISTS `t_usuarios` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `TIPO` tinyint(4) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TABLA DE USUARIOS';

-- Volcando datos para la tabla pizzas.t_usuarios: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `t_usuarios` DISABLE KEYS */;
INSERT INTO `t_usuarios` (`ID_USUARIO`, `NOMBRE`, `PASSWORD`, `TIPO`) VALUES
	(3, 'Danii', 'advl123', 1),
	(4, 'any', '123', 0),
	(6, 'da', '987', 1),
	(7, 'dani', 'advl123', 0);
/*!40000 ALTER TABLE `t_usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
