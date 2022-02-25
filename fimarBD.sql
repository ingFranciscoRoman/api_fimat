-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para fimat
CREATE DATABASE IF NOT EXISTS `fimat` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fimat`;

-- Volcando estructura para tabla fimat.asignaturas
CREATE TABLE IF NOT EXISTS `asignaturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreAsignatura` varchar(250) NOT NULL DEFAULT '0',
  `pertenece_curso` int(11) NOT NULL DEFAULT '0',
  `materia` int(11) NOT NULL DEFAULT '0',
  `descripcion` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'A',
  `updated_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fimat.asignaturas: ~12 rows (aproximadamente)
DELETE FROM `asignaturas`;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
INSERT INTO `asignaturas` (`id`, `nombreAsignatura`, `pertenece_curso`, `materia`, `descripcion`, `status`, `updated_at`, `created_at`) VALUES
	(1, 'Biologia', 1, 1, 'estudio biologiqa', 'A', '2021-07-09 04:50:57', '2021-07-09 04:50:57'),
	(2, 'Quimica', 1, 2, 'estudio quimica', 'A', '2021-07-09 04:51:09', '2021-07-09 04:51:09'),
	(17, 'Matemáticas Saber 11 A', 9, 5, 'Contenido Icfes', 'A', '2021-07-15 16:54:51', '2021-07-15 16:54:51'),
	(18, 'Lectura Saber 11 A', 9, 7, 'Contenido Icfes', 'A', '2021-07-15 16:55:12', '2021-07-15 16:55:12'),
	(19, 'Sociales Saber 11 A', 9, 4, 'Contenido Icfes', 'A', '2021-07-15 16:55:36', '2021-07-15 16:55:36'),
	(20, 'Biología Saber 11 A', 9, 1, 'Contenido Icfes', 'A', '2021-07-15 16:55:53', '2021-07-15 16:55:53'),
	(21, 'Física Saber 11 A', 9, 3, 'Contenido Icfes', 'A', '2021-07-15 16:56:08', '2021-07-15 16:56:08'),
	(22, 'Química Saber 11 A', 9, 2, 'Contenido Icfes', 'A', '2021-07-15 16:56:41', '2021-07-15 16:56:41'),
	(23, 'Inglés Saber 11 A', 9, 6, 'Contenido Icfes', 'A', '2021-07-15 16:57:00', '2021-07-15 16:57:00'),
	(24, 'GP - Matemáticas S11A', 16, 5, 'Profundización Matemáticas', 'A', '2021-08-03 16:24:58', '2021-08-03 16:24:58'),
	(25, 'GP - Sociales S11A', 16, 4, 'Profundización Sociales', 'A', '2021-08-03 16:25:32', '2021-08-03 16:25:32'),
	(26, 'GP - Física S11A', 16, 3, 'Profundización Física', 'A', '2021-08-03 16:25:58', '2021-08-03 16:25:58');
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreCurso` varchar(250) NOT NULL DEFAULT '0',
  `descripcion` varchar(250) NOT NULL DEFAULT '0',
  `link` varchar(250) NOT NULL DEFAULT '0',
  `simulacro` varchar(200) DEFAULT NULL,
  `tpcurso` varchar(10) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'A',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fimat.cursos: ~3 rows (aproximadamente)
DELETE FROM `cursos`;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`id`, `nombreCurso`, `descripcion`, `link`, `simulacro`, `tpcurso`, `status`, `updated_at`, `created_at`) VALUES
	(1, 'Prueba cursos', 'Grupo preicfes', 'https://www.google.com/', 'https://www.google.com/', '1', 'A', '2021-07-09 04:50:38', '2021-07-09 04:50:38'),
	(9, 'Saber 11 A', 'Curso preparatorio', 'https://us02web.zoom.us/j/85720413064?pwd=OGIyYkZPOU51ak5tWWJKTmlTYlhUUT09', 'https://docs.google.com/document/d/1r1jlWoV5Xlu9VxvI7T_JtjqtffaO2RBUKBGor7AaIRk/edit', '1', 'A', '2021-07-15 16:54:07', '2021-07-15 16:54:07'),
	(16, 'GP - Saber 11 A', 'Profundización', 'https://us02web.zoom.us/j/87886712049?pwd=OWErd3Nha0ZmT0ZOdDFrVzZTd0xodz09', 'https://docs.google.com/document/d/16jrJz-_edMuFLk6jFO2RDeHRmIOpyyuQQQwo9iUcOKE/edit?usp=sharing', '3', 'A', '2021-08-03 16:21:01', '2021-08-03 16:21:01');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fimat.failed_jobs: ~0 rows (aproximadamente)
DELETE FROM `failed_jobs`;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.materialasignaturas
CREATE TABLE IF NOT EXISTS `materialasignaturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) NOT NULL,
  `asignatura` int(11) NOT NULL DEFAULT '0',
  `tipomaterial` varchar(50) NOT NULL DEFAULT '0',
  `link` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'A',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fimat.materialasignaturas: ~144 rows (aproximadamente)
DELETE FROM `materialasignaturas`;
/*!40000 ALTER TABLE `materialasignaturas` DISABLE KEYS */;
INSERT INTO `materialasignaturas` (`id`, `nombre`, `asignatura`, `tipomaterial`, `link`, `status`, `updated_at`, `created_at`) VALUES
	(17, 'Razones Trigonométricas', 17, 'video', 'https://drive.google.com/file/d/1yO8wEWITZV6E8uDZ-FGs-HyBnqRLluyz/preview', 'A', '2021-07-15 16:59:52', '2021-07-15 16:59:52'),
	(18, 'Porcentajes', 17, 'video', 'https://drive.google.com/file/d/1LTcOZEGwaWzmcS2otc8PPcYRQRk5GSY5/preview', 'A', '2021-07-15 17:06:59', '2021-07-15 17:06:59'),
	(19, 'Probabilidad I / Sucesos', 17, 'video', 'https://drive.google.com/file/d/1PY5T2euUfbLoSQ8VuMkoMq_Rkq1b9Fp4/preview', 'A', '2021-07-15 17:08:12', '2021-07-15 17:08:12'),
	(20, 'Probabilidad II / Técnicas de Conteo (Teoría)', 17, 'video', 'https://drive.google.com/file/d/1t5DpB21eVCML6BMtDFZrtwreP-U2kttX/preview', 'A', '2021-07-15 17:09:55', '2021-07-15 17:09:55'),
	(21, 'Probabilidad II / Técnicas de Conteo (Preguntas)', 17, 'video', 'https://drive.google.com/file/d/1RUuZFPctcFJkshLz5Y3uUSmXwUVBqM6A/preview', 'A', '2021-07-15 17:11:11', '2021-07-15 17:11:11'),
	(22, 'Socialización Simulacro J1', 17, 'video', 'https://drive.google.com/file/d/1CI3ERJ6zT1Wt2raDJseOI6FzpMpwy75k/preview', 'A', '2021-07-15 17:12:24', '2021-07-15 17:12:24'),
	(23, 'Introducción / Dinámica / Nivel Jota', 21, 'video', 'https://drive.google.com/file/d/1hfaDKmYulTPpXSeAVWerDwa2BDtYUD4v/preview', 'A', '2021-07-15 17:15:02', '2021-07-15 17:15:02'),
	(27, 'Perímetro y Área', 17, 'video', 'https://drive.google.com/file/d/1hGFRCjbueXaqZh5xPFYzql-S92C4KNOT/preview', 'A', '2021-07-26 15:16:25', '2021-07-26 15:16:25'),
	(28, 'Volumen', 17, 'video', 'https://drive.google.com/file/d/1QScntrJArqCjFswmoRlviGULG_aK3nOw/preview', 'A', '2021-07-26 15:17:14', '2021-07-26 15:17:14'),
	(29, 'Volumen II', 17, 'video', 'https://drive.google.com/file/d/1yuT83-CQIinpY7oI2YkvnxQLLhv1JMJl/preview', 'A', '2021-07-26 15:19:33', '2021-07-26 15:19:33'),
	(30, 'Teorema de Pitágoras', 17, 'video', 'https://drive.google.com/file/d/1Jiq4KTPFgQtQg5PMAgZCE6p1Hd_cw2oS/preview', 'A', '2021-07-26 15:20:15', '2021-07-26 15:20:15'),
	(31, 'Triángulos y Teorema de Thales', 17, 'video', 'https://drive.google.com/file/d/109yKJFFa1mnG0hn0zKDELlWh5BohSet4/preview', 'A', '2021-07-26 15:24:32', '2021-07-26 15:24:32'),
	(32, 'Análisis de Gráficas', 17, 'video', 'https://drive.google.com/file/d/1hj2teIgw0BNQFvblKOnCBe3TxnBalYlD/preview', 'A', '2021-07-26 15:25:10', '2021-07-26 15:25:10'),
	(33, 'Socialización Simulacro I', 17, 'video', 'https://drive.google.com/file/d/1u_i3KWWSXrP-iWQ-_rin6ol9WU8vJD1c/preview', 'A', '2021-07-26 15:25:52', '2021-07-26 15:25:52'),
	(34, 'Razonamiento Cuantitativo', 17, 'video', 'https://drive.google.com/file/d/1JEGDDYRYCUpHKf7E00wiI2hd5DZHreFR/preview', 'A', '2021-07-26 15:26:30', '2021-07-26 15:26:30'),
	(35, 'Preguntas Nivel medio/alto', 17, 'video', 'https://drive.google.com/file/d/1wiImoY4zgNbxvpvE1SAVbQl05mMh1zrP/preview', 'A', '2021-07-26 15:27:11', '2021-07-26 15:27:11'),
	(36, 'Análisis de preguntas (enunciados)', 17, 'video', 'https://drive.google.com/file/d/1zFzHFhIUnpBoFZzk2GUfYU67Nk9Bq8L2/preview', 'A', '2021-07-26 15:28:02', '2021-07-26 15:28:02'),
	(37, 'Profundización Trigonometría', 17, 'video', 'https://drive.google.com/file/d/1Z6GbUbg1zpYvxVkV2sRcMZhoeMK35g7p/preview', 'A', '2021-07-26 15:28:51', '2021-07-26 15:28:51'),
	(38, 'Desarrollo de preguntas (banco 2018 y otros)', 17, 'video', 'https://drive.google.com/file/d/1d9aI5S1ypHF7mowCz9P1D3k_1Vjki5DU/preview', 'A', '2021-07-26 15:29:54', '2021-07-26 15:29:54'),
	(39, 'Tipos de Gráficas', 17, 'video', 'https://drive.google.com/file/d/11s7wUnmGU3J6WpaUi9im4_qCA5h_l_VI/preview', 'A', '2021-07-26 15:30:35', '2021-07-26 15:30:35'),
	(40, 'Secciones Cónicas - Parábola', 17, 'video', 'https://drive.google.com/file/d/1kuRzOVORT_sqiC10ZaGbhfrnBvPSLzmT/preview', 'A', '2021-07-26 15:31:12', '2021-07-26 15:31:12'),
	(41, 'Socialización Simulacro J', 17, 'video', 'https://drive.google.com/file/d/10FP6DuIJpcYdhbH9G-lGdMJD1vZHnaQP/preview', 'A', '2021-07-26 15:31:51', '2021-07-26 15:31:51'),
	(42, 'Socialización Simulacro J - II', 17, 'video', 'https://drive.google.com/file/d/1-JeaHuqQLy8L1Amx59jEwv6r3PT7nyVH/preview', 'A', '2021-07-26 15:32:38', '2021-07-26 15:32:38'),
	(43, 'Introducción / Socialización Simuacro I', 18, 'video', 'https://drive.google.com/file/d/1EW4DYnPoQx7ed8Zvzz8pbvZYqj4pe3Tj/preview', 'A', '2021-07-26 15:41:46', '2021-07-26 15:41:46'),
	(44, 'Desarrollo de preguntas', 18, 'video', 'https://drive.google.com/file/d/1DCW2s0OnW_jC1EG6tceLe8cJrdrS7bvl/preview', 'A', '2021-07-26 15:42:23', '2021-07-26 15:42:23'),
	(45, 'Introducción', 19, 'video', 'https://drive.google.com/file/d/1cELHa-MbqBCqnjFH_eR76r2YY20kK9fF/preview', 'A', '2021-07-26 17:25:55', '2021-07-26 17:25:55'),
	(46, 'Economía / Neoliberalismo', 19, 'video', 'https://drive.google.com/file/d/1IJNxQuYt8YCKNPTd7viQNggXZTvhGKcj/preview', 'A', '2021-07-26 17:26:38', '2021-07-26 17:26:38'),
	(47, 'Economía / Neoliberalismo II', 19, 'video', 'https://drive.google.com/file/d/13lo6H3WpjUY0D7VZfnzm0oGm-90bPiPT/preview', 'A', '2021-07-26 17:27:19', '2021-07-26 17:27:19'),
	(48, 'Liberalismo económico y Capitalismo', 19, 'video', 'https://drive.google.com/file/d/1-6oibHm7WGCyfueYywZShWIO0xHsYl_t/preview', 'A', '2021-07-26 17:29:44', '2021-07-26 17:29:44'),
	(49, 'Socialización Simulacro J1', 19, 'video', 'https://drive.google.com/file/d/1kUBmEgi7e2Ly_ALG6dfZDQv9dC4qiAvT/preview', 'A', '2021-07-26 17:30:23', '2021-07-26 17:30:23'),
	(50, 'Pensamiento Económico Contemporáneo', 19, 'video', 'https://drive.google.com/file/d/1mYLeKZKj7JGu3J0B7k7pyAlBjedqzyEt/preview', 'A', '2021-07-26 17:31:13', '2021-07-26 17:31:13'),
	(51, 'Pensamiento Económico Contemporáneo II', 19, 'video', 'https://drive.google.com/file/d/1DaVg7r0ULoxkgddwGD2iUb23Te9kgE8q/preview', 'A', '2021-07-26 17:31:57', '2021-07-26 17:31:57'),
	(52, 'Estructura del Estado', 19, 'video', 'https://drive.google.com/file/d/1GJRE4aLub2k0cwzbseGVH5ojveNpV2bD/preview', 'A', '2021-07-26 17:32:51', '2021-07-26 17:32:51'),
	(53, 'Estado de bienestar', 19, 'video', 'https://drive.google.com/file/d/1ZbmhbAtF2UlSD3G9UKM0EXtHHmWoobPQ/preview', 'A', '2021-07-26 17:35:33', '2021-07-26 17:35:33'),
	(54, 'Globalización', 19, 'video', 'https://drive.google.com/file/d/1LGrlbewc9OkBMJ-9WtLS2b4PhSNlYhY0/preview', 'A', '2021-07-26 17:36:04', '2021-07-26 17:36:04'),
	(55, 'Características de la Globalización', 19, 'video', 'https://drive.google.com/file/d/1UPc-f3bn1Vd0KDdNy6UbDMIEWZt-r1oC/preview', 'A', '2021-07-26 17:36:41', '2021-07-26 17:36:41'),
	(56, 'Globalización / Guerra Fría', 19, 'video', 'https://drive.google.com/file/d/1Q61uDIfdaEOrVn6HH2IMSZhlMwx5OkZe/preview', 'A', '2021-07-26 17:37:27', '2021-07-26 17:37:27'),
	(57, 'Guerra Fría II', 19, 'video', 'https://drive.google.com/file/d/1uuCAOFFcDGCmidBjeel92yRLniB0pNPi/preview', 'A', '2021-07-26 17:41:47', '2021-07-26 17:41:47'),
	(58, 'Guerra Fría III', 19, 'video', 'https://drive.google.com/file/d/1F52KU-8foVaPYD9dSmpdBkhI-p7u0DJg/preview', 'A', '2021-07-26 17:42:22', '2021-07-26 17:42:22'),
	(59, 'Fin de la Guerra Fría', 19, 'video', 'https://drive.google.com/file/d/1HCy25Mp17oS9iPgmJgxokirCKJtnMF1c/preview', 'A', '2021-07-26 17:42:59', '2021-07-26 17:42:59'),
	(60, 'Regímenes Políticos', 19, 'video', 'https://drive.google.com/file/d/1vQSrKW5qZAEf3jUkyv6RI7cqw1T9di0w/preview', 'A', '2021-07-26 17:44:21', '2021-07-26 17:44:21'),
	(61, 'Regímenes Políticos II', 19, 'video', 'https://drive.google.com/file/d/1CiGnwLkS31-5aR0O9uCr6ITL_QyKXqN3/preview', 'A', '2021-07-26 17:44:55', '2021-07-26 17:44:55'),
	(62, 'Regímenes Políticos / La Democracia', 19, 'video', 'https://drive.google.com/file/d/1CW6qsq4JguqR471NzFC9I6ZRF4EWIZJz/preview', 'A', '2021-07-26 17:45:45', '2021-07-26 17:45:45'),
	(63, 'Preguntas Regímenes Políticos y Democracia', 19, 'video', 'https://drive.google.com/file/d/1ZA6loBbqQn-jmDLch-meFnHUISOKkzvg/preview', 'A', '2021-07-26 17:46:35', '2021-07-26 17:46:35'),
	(64, 'Socialización Simulacro J', 19, 'video', 'https://drive.google.com/file/d/15axPct4seqVuk60Ol2kDIiMXH8Kocjqy/preview', 'A', '2021-07-26 17:47:22', '2021-07-26 17:47:22'),
	(65, 'Socialización Simulacro J - II', 19, 'video', 'https://drive.google.com/file/d/1BBhFGBHIEkOMkvzbFiH0JEWPwEh33_hE/preview', 'A', '2021-07-26 17:48:05', '2021-07-26 17:48:05'),
	(66, 'Competencias Ciencias Naturales', 20, 'video', 'https://drive.google.com/file/d/1isHucOvtvWPwvfLAhOecj3M2qZSCz-ZX/preview', 'A', '2021-07-26 18:12:33', '2021-07-26 18:12:33'),
	(67, 'La Célula', 20, 'video', 'https://drive.google.com/file/d/1dJ-oFqljhtbxbwqJrisRVdCXcS_UkX6h/preview', 'A', '2021-07-26 18:13:22', '2021-07-26 18:13:22'),
	(68, 'Transporte de Membrana', 20, 'video', 'https://drive.google.com/file/d/1bG0zai56h3bfs6e-jzXJs7QMM7Hzjh_m/preview', 'A', '2021-07-26 18:14:04', '2021-07-26 18:14:04'),
	(69, 'Respiración Celular', 20, 'video', 'https://drive.google.com/file/d/1z1SxPVVJkqb4KHIy8wOGfBeE6fSHB-cN/preview', 'A', '2021-07-26 18:14:39', '2021-07-26 18:14:39'),
	(70, 'Socialización Simulacro J1', 20, 'video', 'https://drive.google.com/file/d/1NaRsMvLpEOBqmlSwf7NmJmQ73Z_UDwDw/preview', 'A', '2021-07-26 18:15:19', '2021-07-26 18:15:19'),
	(71, 'Fotosíntesis', 20, 'video', 'https://drive.google.com/file/d/1Dv2Y03OOsATOANh98PMPC3LdFyjjj93l/preview', 'A', '2021-07-26 18:16:00', '2021-07-26 18:16:00'),
	(72, 'Nutrición y Circulación', 20, 'video', 'https://drive.google.com/file/d/1u8hToS_xiyxuOGOM4N0jjn_7q09v09fK/preview', 'A', '2021-07-26 18:18:07', '2021-07-26 18:18:07'),
	(73, 'Excreción', 20, 'video', 'https://drive.google.com/file/d/1pFcgbEqVTZb2jCbWf0ASiVwry9bGl9KN/preview', 'A', '2021-07-26 18:18:40', '2021-07-26 18:18:40'),
	(74, 'Función de relación I / Estímulos', 20, 'video', 'https://drive.google.com/file/d/12K8XoaZDyKaW0gqpryq0LsVrILDi_Ckh/preview', 'A', '2021-07-26 18:23:32', '2021-07-26 18:23:32'),
	(75, 'Función de relación II', 20, 'video', 'https://drive.google.com/file/d/1qoHpCKQlwfjAzntYTlbfjOStdDROxF72/preview', 'A', '2021-07-26 18:25:54', '2021-07-26 18:25:54'),
	(76, 'Inmunidad', 20, 'video', 'https://drive.google.com/file/d/1UPytvYQctD0a40JY5zF_kTPDEYqZp2-D/preview', 'A', '2021-07-26 18:26:24', '2021-07-26 18:26:24'),
	(77, 'Inmunidad II', 20, 'video', 'https://drive.google.com/file/d/13N4mXmjz9SXiNDfN2gQprlKi_k-g8ZwT/preview', 'A', '2021-07-26 18:26:56', '2021-07-26 18:26:56'),
	(78, 'Socialización Simulacro I', 20, 'video', 'https://drive.google.com/file/d/1GzXtTHIFTc27K8JItdLm9V424F1hdsn7/preview', 'A', '2021-07-26 18:50:29', '2021-07-26 18:50:29'),
	(79, 'Socialización Simulacro I - Parte II', 20, 'video', 'https://drive.google.com/file/d/1u7RxyPD2NFR2KiyTAMZgitUcZb7PT4wv/preview', 'A', '2021-07-26 18:51:09', '2021-07-26 18:51:09'),
	(80, 'Hormonas', 20, 'video', 'https://drive.google.com/file/d/1L-Roy5MzvoC0MK-J8Yv-HefL27GRGC7r/preview', 'A', '2021-07-26 18:51:46', '2021-07-26 18:51:46'),
	(81, 'Hormonas II', 20, 'video', 'https://drive.google.com/file/d/11QSQHsf8fIpkiNKy6jekNhkitlFr3sIH/preview', 'A', '2021-07-26 18:52:33', '2021-07-26 18:52:33'),
	(82, 'Ciclo Celular', 20, 'video', 'https://drive.google.com/file/d/1w6367R3e4cGgwuyD3ftbThTcCueltBe4/preview', 'A', '2021-07-26 18:53:03', '2021-07-26 18:53:03'),
	(83, 'Preguntas sobre Mitosis y Meiosis', 20, 'video', 'https://drive.google.com/file/d/1QZ4e0pfzyBIG6ktn4jnmFVDH2ul63wl-/preview', 'A', '2021-07-26 18:53:42', '2021-07-26 18:53:42'),
	(84, 'Genética Mendeliana', 20, 'video', 'https://drive.google.com/file/d/1Fl0IlV8onskrkLEpR0w5tJXK5UMCosx9/preview', 'A', '2021-07-26 18:54:13', '2021-07-26 18:54:13'),
	(85, 'Genética Mendeliana II', 20, 'video', 'https://drive.google.com/file/d/1uODZuZR_nLP81SGrKfIQ78bZMZnNrbGJ/preview', 'A', '2021-07-26 18:54:47', '2021-07-26 18:54:47'),
	(86, 'Socialización Simulacro J', 20, 'video', 'https://drive.google.com/file/d/1WO2_vmB-jY5Hn6b3I75WNPqhjEzSBsvP/preview', 'A', '2021-07-26 18:55:19', '2021-07-26 18:55:19'),
	(87, 'Socialización Simulacro J - II', 20, 'video', 'https://drive.google.com/file/d/1_152Jt21m3-rv8CyybIg7znPlFJGzQsw/preview', 'A', '2021-07-26 18:55:53', '2021-07-26 18:55:53'),
	(88, 'Dinámica II (Fuerzas) / Análisis de ecuaciones', 21, 'video', 'https://drive.google.com/file/d/1SpGHEAZZRulqha9B6E1_5GuZLvmivS7F/preview', 'A', '2021-07-26 19:03:18', '2021-07-26 19:03:18'),
	(89, 'Dinámica III', 21, 'video', 'https://drive.google.com/file/d/1JzzyAb7yBoIRKUTw-po3PoBmUzoo39R-/preview', 'A', '2021-07-26 19:03:52', '2021-07-26 19:03:52'),
	(90, 'Socialización Simulacro J1', 21, 'video', 'https://drive.google.com/file/d/1H40d8aUOBKOav5gMfMc-X02-3__3xCzi/preview', 'A', '2021-07-26 19:04:27', '2021-07-26 19:04:27'),
	(91, 'Energía Mecánica', 21, 'video', 'https://drive.google.com/file/d/1FOfTVrcnHeoL5Q5aGDKfRfGgH9KbQgEY/preview', 'A', '2021-07-26 19:05:00', '2021-07-26 19:05:00'),
	(92, 'Cinemática', 21, 'video', 'https://drive.google.com/file/d/1fqC_xqXT-t1FJV4cmJ-zQS7_MXaGn9RP/preview', 'A', '2021-07-26 19:05:28', '2021-07-26 19:05:28'),
	(93, 'Hidrostática', 21, 'video', 'https://drive.google.com/file/d/1pK-eYScpdKkS1RBDHVkJ61GtxB33SFMG/preview', 'A', '2021-07-26 19:05:56', '2021-07-26 19:05:56'),
	(94, 'Hidrostática II', 21, 'video', 'https://drive.google.com/file/d/1fhwh6rCJLSJRQ3JBJbQtcSghsqJI9dpt/preview', 'A', '2021-07-26 19:06:27', '2021-07-26 19:06:27'),
	(95, 'Calorimetría', 21, 'video', 'https://drive.google.com/file/d/1HxLq7Px1htJO0X5a4xdsK-e25tlLf0mX/preview', 'A', '2021-07-26 19:06:55', '2021-07-26 19:06:55'),
	(96, 'Calorimetría II', 21, 'video', 'https://drive.google.com/file/d/1K9Lx0PWMqRqZz5vd_3igwFsrPLiZoTM6/preview', 'A', '2021-07-26 19:07:21', '2021-07-26 19:07:21'),
	(97, 'Socialización Simulacro I', 21, 'video', 'https://drive.google.com/file/d/1rNKLVOu8CTFXnLlC4MZUP_Y6qMyBzWzn/preview', 'A', '2021-07-26 19:08:06', '2021-07-26 19:08:06'),
	(98, 'Transferencia de Calor / Dilatación Térmica', 21, 'video', 'https://drive.google.com/file/d/1P5hvsjZBlvpZIMr5XHmNIlf3wzpxBRFb/preview', 'A', '2021-07-26 19:08:48', '2021-07-26 19:08:48'),
	(99, 'Leyes de los Gases / 1° ley de la Termodinámica', 21, 'video', 'https://drive.google.com/file/d/1xbO0L5m7xxdcBxy7pW40CUYFsWJCkbvb/preview', 'A', '2021-07-26 19:09:31', '2021-07-26 19:09:31'),
	(100, 'Repaso Dinámica / Fuerza, componentes rectangulares', 21, 'video', 'https://drive.google.com/file/d/13K4YYvZySyrn5syMn5OdukZdJ0o6JUCO/preview', 'A', '2021-07-26 19:10:30', '2021-07-26 19:10:30'),
	(101, 'Preguntas Mecánica Clásica', 21, 'video', 'https://drive.google.com/file/d/1zTTQ3jgtnRcghTFXDXP5RSzR6X8GVs3i/preview', 'A', '2021-07-26 19:11:21', '2021-07-26 19:11:21'),
	(102, 'Eventos Ondulatorios', 21, 'video', 'https://drive.google.com/file/d/13VXJBUOkxzYNN9kMmPl9M9Z4eznMo_1p/preview', 'A', '2021-07-26 19:11:51', '2021-07-26 19:11:51'),
	(103, 'Electrostática', 21, 'video', 'https://drive.google.com/file/d/13A6_CxnKKN2dPZz3K2XoXEPJiPcjGr9z/preview', 'A', '2021-07-26 19:12:24', '2021-07-26 19:12:24'),
	(104, 'Campo Eléctrico', 21, 'video', 'https://drive.google.com/file/d/1WVjYv-G26WiPnytr2zQed2nJpjjOIZLU/preview', 'A', '2021-07-26 19:12:56', '2021-07-26 19:12:56'),
	(105, 'Corriente Eléctrica', 21, 'video', 'https://drive.google.com/file/d/1Auo6-PaerhuDBCcmKzFrVnmr9_jS1_wo/preview', 'A', '2021-07-26 19:13:31', '2021-07-26 19:13:31'),
	(106, 'Socialización Simulacro J', 21, 'video', 'https://drive.google.com/file/d/1fcnb3WrvlVPMm4gZViWgHTecKkIYaf7S/preview', 'A', '2021-07-26 19:14:04', '2021-07-26 19:14:04'),
	(107, 'Socialización Simulacro J - II', 21, 'video', 'https://drive.google.com/file/d/1ouZ3MCmN7WgE3MFrJBmjA1v2vGd8SPMl/preview', 'A', '2021-07-26 19:14:38', '2021-07-26 19:14:38'),
	(108, 'La Materia (generalidades y propiedades)', 22, 'video', 'https://drive.google.com/file/d/1g7-ROCEy4gltk23tjtl4rKstL2i7Vs-J/preview', 'A', '2021-07-26 23:00:18', '2021-07-26 23:00:18'),
	(109, 'Transformaciones de la materia / Reacciones químicas', 22, 'video', 'https://drive.google.com/file/d/1VFV1edcJBnONYFV5fy2qn7gO73IbN4EB/preview', 'A', '2021-07-26 23:01:05', '2021-07-26 23:01:05'),
	(110, 'Estructura de la materia', 22, 'video', 'https://drive.google.com/file/d/1kCp3qWW8s6Pi4bq1KGEIOcGgyfTke6VV/preview', 'A', '2021-07-26 23:01:44', '2021-07-26 23:01:44'),
	(111, 'Socialización Simulacro J1', 22, 'video', 'https://drive.google.com/file/d/1AzzFyZVFcrZ26OsU9X63ftfsdeHZwNPI/preview', 'A', '2021-07-26 23:02:13', '2021-07-26 23:02:13'),
	(112, 'Configuración electrónica', 22, 'video', 'https://drive.google.com/file/d/1EkBGo1dyTbjDm9_rk-LOZ43u7xkviN1V/preview', 'A', '2021-07-26 23:02:46', '2021-07-26 23:02:46'),
	(113, 'Tabla periódica / Configuración electrónica', 22, 'video', 'https://drive.google.com/file/d/1_eTSnFlyxvpkjhrgVJoSNtke-7ijCuCN/preview', 'A', '2021-07-26 23:04:35', '2021-07-26 23:04:35'),
	(114, 'Propiedades periódicas / Tipos de enlace', 22, 'video', 'https://drive.google.com/file/d/1w7WmnrxwbwG35rBLc62WU92_7zS4S34c/preview', 'A', '2021-07-26 23:05:21', '2021-07-26 23:05:21'),
	(115, 'Funciones Inorgánicas', 22, 'video', 'https://drive.google.com/file/d/1VqhEZE5blw27vnsxgA0ZG1l_QTQRmZcO/preview', 'A', '2021-07-26 23:05:54', '2021-07-26 23:05:54'),
	(116, 'Compuestos hidrogenados', 22, 'video', 'https://drive.google.com/file/d/1mwu3OBQ6iO8YzJ90ZSXJJmKBtPZFDEAH/preview', 'A', '2021-07-26 23:06:29', '2021-07-26 23:06:29'),
	(117, 'Funciones Inorgánicas II', 22, 'video', 'https://drive.google.com/file/d/15fiu__03LP1iEig8Lc-6SDy3SLWwoZ8Z/preview', 'A', '2021-07-26 23:07:03', '2021-07-26 23:07:03'),
	(118, 'Introducción a la Estequiometría', 22, 'video', 'https://drive.google.com/file/d/1tcAqlvtPybpJVlnF9PDoUqaJxGLWB1Go/preview', 'A', '2021-07-26 23:07:49', '2021-07-26 23:07:49'),
	(119, 'Socialización Simulacro I', 22, 'video', 'https://drive.google.com/file/d/1jYscStdqW78S09IbH-DplLkXXIBsBti9/preview', 'A', '2021-07-26 23:08:19', '2021-07-26 23:08:19'),
	(120, 'Soluciones', 22, 'video', 'https://drive.google.com/file/d/1Sl5Re75n2Q4f8tuT1GNtQxgSzhI37VsD/preview', 'A', '2021-07-26 23:11:09', '2021-07-26 23:11:09'),
	(121, 'Unidades (física y químicas) de la concentración de las soluciones', 22, 'video', 'https://drive.google.com/file/d/1prYMtTs6wApqwRhts6kNV5BLmXXnU5W_/preview', 'A', '2021-07-26 23:12:12', '2021-07-26 23:12:12'),
	(122, 'Solución de preguntas', 22, 'video', 'https://drive.google.com/file/d/1QxYyL5X72g61eCtUpyUpqzYhBfF2c1gg/preview', 'A', '2021-07-26 23:12:45', '2021-07-26 23:12:45'),
	(123, 'Desarrollo de preguntas de soluciones', 22, 'video', 'https://drive.google.com/file/d/12naw5QBgUJB9w6LdhYuzWETd10x0_sYY/preview', 'A', '2021-07-26 23:13:24', '2021-07-26 23:13:24'),
	(124, 'Resumen Química Orgánica', 22, 'video', 'https://drive.google.com/file/d/1nI3AE2gkt9cWhTsTe0HKYLcvtZna0BwY/preview', 'A', '2021-07-26 23:14:01', '2021-07-26 23:14:01'),
	(125, 'Desarrollo de preguntas II', 22, 'video', 'https://drive.google.com/file/d/1KxhHxonOh8IfbakytnZz1r4ZQhRuJy8b/preview', 'A', '2021-07-26 23:14:33', '2021-07-26 23:14:33'),
	(126, 'Introducción a Ácidos y Bases', 22, 'video', 'https://drive.google.com/file/d/1F-8JiUYo9KX4gR884Ms3llqMKbT64mAk/preview', 'A', '2021-07-26 23:15:06', '2021-07-26 23:15:06'),
	(127, 'Ácidos y Bases', 22, 'video', 'https://drive.google.com/file/d/1zM0OamuYWHsbSEMemz1p0EUIoiQA_5UZ/preview', 'A', '2021-07-26 23:22:28', '2021-07-26 23:22:28'),
	(128, 'Socialización Simulacro J', 22, 'video', 'https://drive.google.com/file/d/13HAGkPqLjkR94doLPk3y9o8irCj5Hd-0/preview', 'A', '2021-07-26 23:23:00', '2021-07-26 23:23:00'),
	(129, 'Textos discontinuos', 18, 'video', 'https://drive.google.com/file/d/1DJVTckvgLld1PNuCaiR_ABnuaCzBI0Mr/preview', 'A', '2021-07-26 23:31:16', '2021-07-26 23:31:16'),
	(130, 'Textos continuos', 18, 'video', 'https://drive.google.com/file/d/1rk5-ftzldRmQVzfLGv7ZMS32zV0tQ842/preview', 'A', '2021-07-26 23:31:45', '2021-07-26 23:31:45'),
	(131, 'Textos discontinuos II', 18, 'video', 'https://drive.google.com/file/d/1N_9T1rcl9oWvgYyhOR2Od1w9V97_UvvA/preview', 'A', '2021-07-26 23:32:18', '2021-07-26 23:32:18'),
	(132, 'Textos continuos II', 18, 'video', 'https://drive.google.com/file/d/1igOXBvfExQR1fNC_EqedMptktnCVYqm2/preview', 'A', '2021-07-26 23:33:02', '2021-07-26 23:33:02'),
	(133, 'Socialización Simulacro J', 18, 'video', 'https://drive.google.com/file/d/1CBfBugzEfltkIACrmPbwfpTdIqh3oRRx/preview', 'A', '2021-07-26 23:33:35', '2021-07-26 23:33:35'),
	(134, 'Socialización Simulacro J - II', 18, 'video', 'https://drive.google.com/file/d/1e_V4FYlETHtNGra2bTSz46m59oeoIB3n/preview', 'A', '2021-07-26 23:34:06', '2021-07-26 23:34:06'),
	(135, 'Introducción / Parte I (Imperativo)', 23, 'video', 'https://drive.google.com/file/d/1SIUL8Rc7lVYOdu2kCfQloCPFYgLPhyOB/preview', 'A', '2021-07-26 23:40:52', '2021-07-26 23:40:52'),
	(136, 'Imperative / Simple Present', 23, 'video', 'https://drive.google.com/file/d/14Wm1F2J3ddzUHZtdryH4XfH-Ws2yDKSG/preview', 'A', '2021-07-26 23:41:37', '2021-07-26 23:41:37'),
	(137, 'Simple Present', 23, 'video', 'https://drive.google.com/file/d/1Q8JDc9P9bnJkFpzqdC_5th-LdwYfnIEV/preview', 'A', '2021-07-27 02:30:08', '2021-07-27 02:30:08'),
	(138, 'Simple Present II', 23, 'video', 'https://drive.google.com/file/d/1hrDZAbF1eyQE-BJ8HSdpekXO4DQl5qQF/preview', 'A', '2021-07-27 02:30:44', '2021-07-27 02:30:44'),
	(139, 'Comparatives and Superlatives', 23, 'video', 'https://drive.google.com/file/d/1rTfJ4T1mvMOyci2KeXjoDJ9VTDaMoGUj/preview', 'A', '2021-07-27 02:31:34', '2021-07-27 02:31:34'),
	(140, 'Socialización Simulacro J1', 23, 'video', 'https://drive.google.com/file/d/1m8HOFamPlfk4DxewDGqBVgdHV1HEh5lN/preview', 'A', '2021-07-27 02:32:06', '2021-07-27 02:32:06'),
	(141, 'Present Continuous', 23, 'video', 'https://drive.google.com/file/d/1fZ8kDL3Om-GyXFnu2Hy8jTS5KAiYD71l/preview', 'A', '2021-07-27 02:33:10', '2021-07-27 02:33:10'),
	(142, 'Past Simple', 23, 'video', 'https://drive.google.com/file/d/1r8CTke8vvnLOzmX2BKUqikxvm0LLGNVC/preview', 'A', '2021-07-27 02:33:43', '2021-07-27 02:33:43'),
	(143, 'Simple present / Simple past - Textos', 23, 'video', 'https://drive.google.com/file/d/1NYYDFHPU0cBR-5Z__WXIZV9kcYwixL7v/preview', 'A', '2021-07-27 02:34:36', '2021-07-27 02:34:36'),
	(144, 'Socialización Simulacro I', 23, 'video', 'https://drive.google.com/file/d/1Gmo7f9jRNZQY4LOK4rC_PSKfIZ_fVrLE/preview', 'A', '2021-07-27 02:35:08', '2021-07-27 02:35:08'),
	(145, 'Socialización Simulacro I - Parte 2', 23, 'video', 'https://drive.google.com/file/d/1D_0xU6zY4k1NGyFU3mAZni47XY1r6dar/preview', 'A', '2021-07-27 02:36:01', '2021-07-27 02:36:01'),
	(146, 'Past Continuous', 23, 'video', 'https://drive.google.com/file/d/1GdLraPAkOUjjukqC5zlTguFAlZAw20To/preview', 'A', '2021-07-27 02:37:02', '2021-07-27 02:37:02'),
	(147, 'Past Continuous', 23, 'video', 'https://drive.google.com/file/d/1-mTcFd6K-7uavCNW9jyYsbRT2NAKPwz7/preview', 'A', '2021-07-27 02:37:32', '2021-07-27 02:37:32'),
	(148, 'Present Perfect', 23, 'video', 'https://drive.google.com/file/d/1xdA6Ed7AfeFZYhwm3M1JdJE1tkNoCh-Z/preview', 'A', '2021-07-27 02:38:06', '2021-07-27 02:38:06'),
	(149, 'Present Perfect II', 23, 'video', 'https://drive.google.com/file/d/1W3NCwX-n3Nv8aSaatdbR0d5YzroVkJv9/preview', 'A', '2021-07-27 02:38:39', '2021-07-27 02:38:39'),
	(150, 'Present Perfect - Questions', 23, 'video', 'https://drive.google.com/file/d/1r6D_PIwKLYryCYwzBSMmkpBFFxytkfVA/preview', 'A', '2021-07-27 02:39:19', '2021-07-27 02:39:19'),
	(151, 'Socialización Simulacro J', 23, 'video', 'https://drive.google.com/file/d/1guWbJHrMq4HSe2kchli6WxUb1d1Q3SR7/preview', 'A', '2021-07-27 02:39:53', '2021-07-27 02:39:53'),
	(152, 'Socialización Simulacro J - III', 17, 'video', 'https://drive.google.com/file/d/1djvABpP7HCsJtYowxzGaaraFvOclzfIh/preview', 'A', '2021-07-29 00:48:10', '2021-07-29 00:48:10'),
	(153, 'Profundización preguntas claves', 19, 'video', 'https://drive.google.com/file/d/1B9_Wi7ShO1OvjGPgodwiV-gdHNNDvJl-/preview', 'A', '2021-07-29 18:27:53', '2021-07-29 18:27:53'),
	(154, 'Socialización Simulacro J - III', 20, 'video', 'https://drive.google.com/file/d/133JzDwCfezcbFD8xjRT_1nimqvVnr1dA/preview', 'A', '2021-07-30 03:19:24', '2021-07-30 03:19:24'),
	(155, 'Socialización Simulacro J - II', 23, 'video', 'https://drive.google.com/file/d/1rKwmIdd5RBSvfrZACw2JvxG3nUuNSeft/preview', 'A', '2021-08-02 22:49:30', '2021-08-02 22:49:30'),
	(156, 'Socialización Simulacro J - III', 18, 'video', 'https://drive.google.com/file/d/1N9R66GJPrWii8HKBMZE2HGKDdrhMdfLM/preview', 'A', '2021-08-02 22:50:48', '2021-08-02 22:50:48'),
	(157, 'Preguntas Circuitos (repaso)', 21, 'video', 'https://drive.google.com/file/d/1vwtJN_INW9JHM7-4DuJr7Ffe7yjvmKbi/preview', 'A', '2021-08-03 14:01:51', '2021-08-03 14:01:51'),
	(158, 'Socialización Simulacro J - IV', 17, 'video', 'https://drive.google.com/file/d/1PqsFGsEUEF0OQ_RH3S7JEEE-hbewnljJ/preview', 'A', '2021-08-04 15:35:14', '2021-08-04 15:35:14'),
	(159, 'Desarrollo de preguntas', 21, 'video', 'https://drive.google.com/file/d/1FTBcYGOUfQ8b7DYewINXhKz6TDsnSOt9/preview', 'A', '2021-08-06 15:24:37', '2021-08-06 15:24:37'),
	(160, 'Socialización Simulacro J - IV', 18, 'video', 'https://drive.google.com/file/d/1IP7Gv9a-use-nN8ydAQRkLQtDULtkGlV/preview', 'A', '2021-08-06 15:25:43', '2021-08-06 15:25:43'),
	(161, 'Profundización preguntas claves II', 19, 'video', 'https://drive.google.com/file/d/1RO5cWfS_27QK4WuJ-6XwsjoruLTvFRLM/preview', 'A', '2021-08-10 15:15:25', '2021-08-10 15:15:25'),
	(162, 'Desarrollo de p\'reguntas', 20, 'video', 'https://drive.google.com/file/d/1kJJBn6pMNoeRh95RuigrQGSY2HhjVqK6/preview', 'A', '2021-08-10 15:40:21', '2021-08-10 15:40:21'),
	(163, 'Socialización Simulacro J - II', 22, 'video', 'https://drive.google.com/file/d/1_7soo8--VKh6F7wxURkDZo19sZIIlcLa/preview', 'A', '2021-08-11 15:00:35', '2021-08-11 15:00:35');
/*!40000 ALTER TABLE `materialasignaturas` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fimat.migrations: ~6 rows (aproximadamente)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
	(6, '2021_02_18_041518_create_sessions_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fimat.password_resets: ~1 rows (aproximadamente)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('franciscoromansierra@gmail.com', '$2y$10$WrsmmCg2pQ8Mz684Xs/pOO7BjniwrTRFAhBO7MYVwYjy4Qf0HsJ06', '2021-02-23 03:17:25');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fimat.personal_access_tokens: ~0 rows (aproximadamente)
DELETE FROM `personal_access_tokens`;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fimat.sessions: ~1 rows (aproximadamente)
DELETE FROM `sessions`;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('MppNoYq4rwdX3WYLtOhmPMQ3q8KU01DmxTL5mZSb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTozOntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiZGFqYWhaY0NXeGtaYkNYc0ZhNm1TYXJsakN3M0lLakI5dHBjbGxQbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9sb2dpbiI7fX0=', 1628886954);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.tipoidentificacion
CREATE TABLE IF NOT EXISTS `tipoidentificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTipoIdentificacion` varchar(50) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fimat.tipoidentificacion: ~6 rows (aproximadamente)
DELETE FROM `tipoidentificacion`;
/*!40000 ALTER TABLE `tipoidentificacion` DISABLE KEYS */;
INSERT INTO `tipoidentificacion` (`id`, `nombreTipoIdentificacion`, `descripcion`) VALUES
	(1, 'CC', 'Cedula'),
	(2, 'RC', 'Registro Civil'),
	(3, 'TI', 'Tarjeta Identidad'),
	(4, 'CE', 'Cedula Extranjeria'),
	(5, 'NIT', 'Numero de identificacion Personal'),
	(6, 'TP', 'Pasaporte');
/*!40000 ALTER TABLE `tipoidentificacion` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.tipousuarios
CREATE TABLE IF NOT EXISTS `tipousuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombreTipoUsuario` varchar(50) NOT NULL DEFAULT '0',
  `descripcion` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla fimat.tipousuarios: ~4 rows (aproximadamente)
DELETE FROM `tipousuarios`;
/*!40000 ALTER TABLE `tipousuarios` DISABLE KEYS */;
INSERT INTO `tipousuarios` (`id`, `nombreTipoUsuario`, `descripcion`) VALUES
	(1, 'Administrador', 'Administrador del Sistema'),
	(2, 'Coordinador', 'Coordinado'),
	(3, 'Docentes', 'Docentes'),
	(4, 'Estudiantes', 'Estudiantes');
/*!40000 ALTER TABLE `tipousuarios` ENABLE KEYS */;

-- Volcando estructura para tabla fimat.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso` int(11) DEFAULT NULL,
  `vacacional` int(11) DEFAULT NULL,
  `piloto` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion` int(11) DEFAULT NULL,
  `tipoDocumento` int(11) DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipoUsuario` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla fimat.users: ~91 rows (aproximadamente)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `apellidos`, `email`, `direccion`, `curso`, `vacacional`, `piloto`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `identificacion`, `tipoDocumento`, `telefono`, `tipoUsuario`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'admin@gmail.com', '0', 1, 0, 0, NULL, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, 112, NULL, NULL, 1, 'A', '2021-07-09 19:35:39', '2021-07-09 19:35:40'),
	(4, 'Jhonatan', 'DelaCruz', 'jrdb31@gmail.com', 'Labucaramanga', 1, 0, 0, '2021-02-21 21:39:28', '08fe2d639045470465ac1f349ea6a5e9', '', '', NULL, 1102847086, NULL, '3002491495', 4, 'A', '2021-07-11 23:38:33', '2021-07-11 23:38:33'),
	(5, 'Paola', 'Duque', 'paodm28@gmail.com', 'Sincelejo', 9, 0, 16, '2021-02-21 21:39:28', 'cbf4866593dfd73effa88d231b0a1e58', '', '', NULL, 1102862363, NULL, '3002491495', 4, 'A', '2021-07-12 00:04:45', '2021-07-12 00:04:45'),
	(6, 'MARIA JOSE', 'ARGEL BUELVAS', 'majoargelb2005@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '0c9d92e4793c6c5a0e9a44f1c3849f6d', '', '', NULL, 1137974889, NULL, '3003803519', 4, 'A', '2021-07-29 16:21:47', '2021-07-29 16:21:47'),
	(7, 'IVANA', 'ROMERO PAYARES', 'ivanaromero0912@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '550880244590d6abdae24b87e618f7a8', '', '', NULL, 1099960588, NULL, '3202876090', 4, 'A', '2021-07-29 16:35:11', '2021-07-29 16:35:11'),
	(17, 'MARIA JOSE', 'SALGADO BELLO', 'mariajsalgado2005@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '58db741b04884ee626076b5e2426ac98', '', '', NULL, 1102808824, NULL, '3126389866', 4, 'A', '2021-07-29 20:51:31', '2021-07-29 20:51:31'),
	(18, 'ALICIA ESTHER', 'CARVAJAL LOPEZ', 'aliciacarvajal1905@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '3ccc2e1497189a4504b3a3299ae75f47', '', '', NULL, 1064981499, NULL, '3148364073', 4, 'A', '2021-07-29 20:57:46', '2021-07-29 20:57:46'),
	(19, 'ROSAURA', 'GOMEZ GARCIA', 'rosauragomez0801@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'a7069555efe0bd6f2765ce1394a2b246', '', '', NULL, 1103739489, NULL, '3225564918', 4, 'A', '2021-07-29 20:59:01', '2021-07-29 20:59:01'),
	(20, 'EVELIS', 'ABADIA', 'evelisabh@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'fb2f7d8cd0f00d4ec6f05853fc861d5d', '', '', NULL, 1142914147, NULL, '3145511264', 4, 'A', '2021-07-29 20:59:55', '2021-07-29 20:59:55'),
	(21, 'CLARA', 'MACHACON RODELO', 'claramachaconrodelo@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '543d4b892ac698e3bab59b39e56a04f5', '', '', NULL, 1102807673, NULL, '3216390293', 4, 'A', '2021-07-29 21:00:36', '2021-07-29 21:00:36'),
	(22, 'SALMA ISABEL', 'RIBÓN DE LA OSSA', 'salma24ribon@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '237df180a09ccd62ca830864d1d8a862', '', '', NULL, 1102879166, NULL, '3042936806', 4, 'A', '2021-07-29 21:02:25', '2021-07-29 21:02:25'),
	(23, 'MARIA FERNANDA', 'MERCADO HERNÁNDEZ', 'mafe.mercado16@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'df4074c22ced59af525265ad3195cb61', '', '', NULL, 1103098029, NULL, '3126846422', 4, 'A', '2021-07-29 21:04:36', '2021-07-29 21:04:36'),
	(24, 'DANNA MARCELA', 'POLO MESA', 'dannapolomesa@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '8932e39c2794b9bfa64c1a09dca36417', '', '', NULL, 1102825326, NULL, '3023624950', 4, 'A', '2021-07-29 21:05:39', '2021-07-29 21:05:39'),
	(25, 'MARIA', 'CRISTINA HERRERA', 'mherreracontreras9@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'd404180e42845856573f53ab9e48fe79', '', '', NULL, 1040490063, NULL, '3204767439', 4, 'A', '2021-07-29 21:06:19', '2021-07-29 21:06:19'),
	(26, 'CAMILA', 'HENAO REGINO', 'camihr25@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '0e8a9d7750402bef8219cb4d15fc6ee0', '', '', NULL, 1103497863, NULL, '3003540924', 4, 'A', '2021-07-29 21:07:03', '2021-07-29 21:07:03'),
	(27, 'YUVERLIS LEANNYS', 'GUERRA DURANGO', 'guerradurangoyuverlis@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '397ec38163574f0853ff8f21fd1184e3', '', '', NULL, 1102801062, NULL, '3006219828', 4, 'A', '2021-07-29 21:23:25', '2021-07-29 21:23:25'),
	(30, 'KAIRA SOJAN', 'ROLDAN GONZÁLES', 'kairasojan360@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'd7ce687e97c38d605ff82d086b8ba578', '', '', NULL, 1103739706, NULL, '3043995758', 4, 'A', '2021-07-29 21:26:08', '2021-07-29 21:26:08'),
	(31, 'ALEJANDRA', 'SIERRA VERGARA', 'alejandrasierrav29@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '056ea2d084c273d8d612c372e2f14850', '', '', NULL, 1102804179, NULL, '3205070135', 4, 'A', '2021-07-29 21:28:45', '2021-07-29 21:28:45'),
	(32, 'ANDRES FELIPE', 'BUVOLI VERBEL', 'iselaverbel@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'f325a51c5ff6f8e8f366393eed6ecbff', '', '', NULL, 1103859670, NULL, '3113146853', 4, 'A', '2021-07-29 21:29:29', '2021-07-29 21:29:29'),
	(33, 'JOSE DIEGO', 'DIAZ SUAREZ', 'jdieguis09@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ddefce4705d3ef07dfd20ec17f5506df', '', '', NULL, 1103498008, NULL, '3225075729', 4, 'A', '2021-07-29 21:30:12', '2021-07-29 21:30:12'),
	(34, 'CARLOS DAVID', 'PEÑATEALVAREZ', 'carvidpeal20@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '5809a4c45963ca3b41afab1083825ae9', '', '', NULL, 1103741386, NULL, '3108246576', 4, 'A', '2021-07-29 21:31:03', '2021-07-29 21:31:03'),
	(35, 'SANTIAGO JOSÉ', 'ROMERO SOLANA', 'romerosantiago5002@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '9336f54b1bd230ea7649ba2e89d36607', '', '', NULL, 1103498192, NULL, '3146654681', 4, 'A', '2021-07-29 21:31:44', '2021-07-29 21:31:44'),
	(36, 'MARIA FERNANDA', 'SANCHEZ SALCEDO', '1marifersalce@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '52a303a9c0c38af9c6ac73a4cd301752', '', '', NULL, 1102581552, NULL, '3004026631', 4, 'A', '2021-07-29 21:32:39', '2021-07-29 21:32:39'),
	(37, 'MARÍA JOSÉ', 'ARTEAGA MONTERROZA', 'marteagamonterroza12@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'a7edb6d156bb5c284cc0987b661ceb85', '', '', NULL, 1100335024, NULL, '3105067520', 4, 'A', '2021-07-29 21:33:29', '2021-07-29 21:33:29'),
	(38, 'DIANA CAROLINA', 'SUAREZ RAMOS', 'suarezdiana110@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '14f6386dddbe710494b3b422cad70322', '', '', NULL, 1102813535, NULL, '3046550769', 4, 'A', '2021-07-29 21:34:05', '2021-07-29 21:34:05'),
	(39, 'LUIS DANIEL', 'RIVERA BALDOVINO', 'luisdariverab@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'a96b7c7f15ed0309a6287911d82dbc2d', '', '', NULL, 1103497164, NULL, '3214174431', 4, 'A', '2021-07-29 21:35:19', '2021-07-29 21:35:19'),
	(40, 'MARY PAZ', 'RODRIGUEZ MEDINA', 'mary20rome@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'b5399b1234ed474db2c9e709b43e10fd', '', '', NULL, 1103097805, NULL, '3008894364', 4, 'A', '2021-07-29 21:36:23', '2021-07-29 21:36:23'),
	(41, 'ARIANA PAOLA', 'QUIROZ PANIZA', 'quirozpanizaariana@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '4db64de4f47dec259ee2336d3c11b0b7', '', '', NULL, 1104256998, NULL, '3007723787', 4, 'A', '2021-07-29 21:37:00', '2021-07-29 21:37:00'),
	(42, 'SAMUEL DAVID', 'AGUAS FLOREZ', 'agsam0019@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '3e69496cff5fb5ed8de9b558a583bed8', '', '', NULL, 1104256772, NULL, '3235242254', 4, 'A', '2021-07-29 21:37:36', '2021-07-29 21:37:36'),
	(43, 'MARIANA', 'PACHECO', 'mariana.pacheco569@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '77d8c2356142e40b731836534989e86f', '', '', NULL, 1011080999, NULL, '3226535799', 4, 'A', '2021-07-29 21:38:16', '2021-07-29 21:38:16'),
	(44, 'ANDREA', 'MOGUEA VILORIA', 'mogueaandrea@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '90530a0eaa5cd2994823838967a68e3d', '', '', NULL, 1102804999, NULL, '3006737286', 4, 'A', '2021-07-29 21:38:52', '2021-07-29 21:38:52'),
	(45, 'ANA MARIA', 'REDONDO BERMON', 'anam2005r@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '8fdcfe5c2612fe13639c8ead9c29fc1a', '', '', NULL, 1102807071, NULL, '3003541716', 4, 'A', '2021-07-29 21:39:28', '2021-07-29 21:39:28'),
	(46, 'CAMILO', 'BRIEVA PÉREZ', 'camilobrieva2012@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '672a8832414f5f0d004adbcfef96cdf3', '', '', NULL, 1125228041, NULL, '3005088911', 4, 'A', '2021-07-29 21:40:08', '2021-07-29 21:40:08'),
	(47, 'SHIRIT GABRIELA', 'LÓPEZ PATERNINA', 'shiritlopez15@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'eb9946437abbb94520983c35e61af245', '', '', NULL, 1104257173, NULL, '3242528849', 4, 'A', '2021-07-29 21:40:46', '2021-07-29 21:40:46'),
	(48, 'MARLON YOSETH', 'GUZMÁN NOVOA', 'marlonyoseth22@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '9651ccbc201270af2275b8e482a6ddfb', '', '', NULL, 1100623080, NULL, '3222670868', 4, 'A', '2021-07-29 21:41:21', '2021-07-29 21:41:21'),
	(49, 'DAVE JOSEPH', 'ATENCIA MANJARRES', 'daveelproportoaz@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ac003552598c7d824414a965c122dfd5', '', '', NULL, 1010051089, NULL, '3046051296', 4, 'A', '2021-07-29 21:41:59', '2021-07-29 21:41:59'),
	(50, 'LORAINE', 'JIMÉNEZ MARTÍNEZ', 'jimenezloraine00@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '774c6a1c6265a28c8943cacd91648777', '', '', NULL, 1102809195, NULL, '3114231197', 4, 'A', '2021-07-29 21:42:33', '2021-07-29 21:42:33'),
	(51, 'LIDA MARGARITA', 'PEREZ ACEVEDO', 'lidamargarita.perez@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '8a8d8b021b7c44ab0cab82c5d3a492f7', '', '', NULL, 1103862147, NULL, '3012413050', 4, 'A', '2021-07-29 21:43:16', '2021-07-29 21:43:16'),
	(52, 'MARIANA', 'RODRIGUEZ ARRIETA', 'marianarodriguez212004@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '14e870bc4acae51c9493dff9f8873a62', '', '', NULL, 1102805646, NULL, '3008087403', 4, 'A', '2021-07-29 21:43:54', '2021-07-29 21:43:54'),
	(53, 'NATALIA ISABELLA', 'BARBOSA PÁJARO', 'nataliabp1602@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'c17cce30bde1e28458c4e4354f0f5303', '', '', NULL, 1062958659, NULL, '3016445848', 4, 'A', '2021-07-29 21:44:28', '2021-07-29 21:44:28'),
	(54, 'VALENTINA', 'GUZMAN DE LAS SALAS', 'guzmanvalentina109@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '917b9e3fe62df36f1d8a2409dca8f12a', '', '', NULL, 1103497191, NULL, '3023477081', 4, 'A', '2021-07-29 21:50:01', '2021-07-29 21:50:01'),
	(55, 'GUSTAVO ALDOFO', 'GOMEZ PEREZ', 'panoramacorozal830@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '4e261f490d9ac354800aa490d35f9838', '', '', NULL, 1103094429, NULL, '3052970402', 4, 'A', '2021-07-29 21:50:38', '2021-07-29 21:50:38'),
	(56, 'JUAN CAMILO', 'ALVAREZ MUFARRY', 'juancamiloalvrez30@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '402d3173155cdd3384f353ee5227d3f8', '', '', NULL, 1103740014, NULL, '3013817243', 4, 'A', '2021-07-29 21:51:22', '2021-07-29 21:51:22'),
	(57, 'SANTIAGO ANGEL', 'FERIA OVIEDO', 'santiagoferia61@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '82fee2251f9a427c666a2870f3251f5d', '', '', NULL, 1103497561, NULL, '3015209239', 4, 'A', '2021-07-29 21:51:57', '2021-07-29 21:51:57'),
	(58, 'LILY MARCELA', 'TAPIA VILLADIEGO', 'lilymarce2004@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'd69e856646df507449f9430fb57c6851', '', '', NULL, 1103497150, NULL, '3188671117', 4, 'A', '2021-07-29 21:52:33', '2021-07-29 21:52:33'),
	(59, 'OSCAR ANDRES', 'PEREZ PALLARES', 'oscarmontespvp@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '75f69fa936a68feed7b206d25e0db866', '', '', NULL, 1103497969, NULL, '3113613910', 4, 'A', '2021-07-29 21:53:08', '2021-07-29 21:53:08'),
	(60, 'CAMILO ANTONIO', 'IBARRA QUICENO', 'oryquiceno@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'c289f9e6868c46010fd812d44c54f3d4', '', '', NULL, 1092524543, NULL, '3106109220', 4, 'A', '2021-07-29 21:53:55', '2021-07-29 21:53:55'),
	(61, 'ZHARICK', 'ECHEVERRIA BARRETO', 'zhari.milena@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '4e68b1831acee5e47fced82d7594b582', '', '', NULL, 1043643310, NULL, '3127660422', 4, 'A', '2021-07-29 21:54:30', '2021-07-29 21:54:30'),
	(62, 'MARIA PAULA', 'HOYOS ARAUJO', 'mariapaulahoyosaraujo1@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '4e4a1031b150125b2071bd40d6472b3a', '', '', NULL, 1006538902, NULL, '3138866080', 4, 'A', '2021-07-29 21:55:06', '2021-07-29 21:55:06'),
	(63, 'JUAN ESTEBAN', 'TRILLOS MONTERROZA', 'juanestrillosm@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '3c78d4610f1110f06b87ba571ccabfc4', '', '', NULL, 1102802207, NULL, '3002660798', 4, 'A', '2021-07-29 21:55:47', '2021-07-29 21:55:47'),
	(64, 'LAURA DAYANA', 'PITALUA SEVERICHE', 'pitaluaseverichel@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '6ef91215f006f805641c265ae82e0064', '', '', NULL, 1102802169, NULL, '3206117287', 4, 'A', '2021-07-29 21:56:24', '2021-07-29 21:56:24'),
	(65, 'MÓNICA', 'PÉREZ JIMÉNEZ', 'perezjimenezm88@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '8fbd6b06675068a12557ea4171257ff8', '', '', NULL, 1104256888, NULL, '3104713321', 4, 'A', '2021-07-29 21:57:41', '2021-07-29 21:57:41'),
	(66, 'DENILSON', 'PATERNINA MENDEZ', 'paterninadenilson052@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '7ebe0e25acf229d010271038c43608b1', '', '', NULL, 1104256765, NULL, '3183956174', 4, 'A', '2021-07-29 21:59:23', '2021-07-29 21:59:23'),
	(67, 'MARÍA ANGÉLICA', 'PADILLA RAMOS', 'maripara005@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '2ab92eda250f73d1ed63c93ea79dad28', '', '', NULL, 1103740520, NULL, '3017195470', 4, 'A', '2021-07-29 22:00:03', '2021-07-29 22:00:03'),
	(68, 'NICOLL ANDREA', 'CAMARGO FLÓREZ', 'nicollandreacamargo@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '5ea67af6b1d14d064bb66fac78523e5e', '', '', NULL, 1042849477, NULL, '3017931572', 4, 'A', '2021-07-29 22:00:46', '2021-07-29 22:00:46'),
	(69, 'CARLOS MARIO', 'SALGADO MERCADO', 'carlosmariosalgado18@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '7ef68e2bec57569098532947748a220a', '', '', NULL, 1102807832, NULL, '3117860224', 4, 'A', '2021-07-29 22:01:29', '2021-07-29 22:01:29'),
	(70, 'SALMA', 'TORRES SANES', 'salmatorres1524@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '232184a720622a4941707ed09203d3d9', '', '', NULL, 1103496809, NULL, '3103666742', 4, 'A', '2021-07-29 22:03:09', '2021-07-29 22:03:09'),
	(71, 'KARLA', 'VERGARA JARABA', 'vergarakarla31@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '8499d3ffa0b047f0938436e0ab111a53', '', '', NULL, 1103498235, NULL, '3015229971', 4, 'A', '2021-07-29 22:03:51', '2021-07-29 22:03:51'),
	(72, 'LUISA FERNANDA', 'HERAZO ZUBIRIA', 'luherazo2002@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '649bac8860c5a2d1ea1237dd95d08921', '', '', NULL, 1005663684, NULL, '3003493170', 4, 'A', '2021-07-29 22:04:32', '2021-07-29 22:04:32'),
	(73, 'LUZ ANGELA', 'ARRIETA ALMANZA', 'luchi.291004@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'eca430fe719962512128dff01a80bb7e', '', '', NULL, 1103739252, NULL, '3017953709', 4, 'A', '2021-07-29 22:05:11', '2021-07-29 22:05:11'),
	(74, 'JOHAN SEBASTIAN', 'SALCEDO CUMPLIDO', 'salcedocumplido@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '411965a011e2778c170cab3476a3e487', '', '', NULL, 1109662041, NULL, '3013399340', 4, 'A', '2021-07-29 22:05:52', '2021-07-29 22:05:52'),
	(75, 'YORGELIS BEATRIZ', 'FERNANDEZ BRACHO', 'yorgefer18@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ec98b84cb022d8bf4f62ce2c26102724', '', '', NULL, 30479446, NULL, '3014611111', 4, 'A', '2021-07-29 22:06:39', '2021-07-29 22:06:39'),
	(76, 'VALENTINA', 'PRADA GENEY', 'valentinapradageney@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '4869c5d31d11298283acccf400baf21d', '', '', NULL, 1104256644, NULL, '3216385482', 4, 'A', '2021-07-29 22:07:14', '2021-07-29 22:07:14'),
	(77, 'LUZ KARELYS', 'BERTEL BUSTAMANTE', 'silathbertelbustamante@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'd41d8cd98f00b204e9800998ecf8427e', '', '', NULL, 1103498288, NULL, '3126907001', 4, 'I', '2021-07-29 22:07:59', '2021-07-29 22:07:59'),
	(78, 'KAROL MILEISY', 'SANEZ CAMPUZANO', 'kmsanez@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '2ba728ccb101a667b69e512cc763fa93', '', '', NULL, 1103738133, NULL, '3128529425', 4, 'A', '2021-07-29 22:08:49', '2021-07-29 22:08:49'),
	(79, 'DANIELA ISABEL', 'VILLA ARROYO', 'dannyviar17@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'cccb77c00493b04be6471bb87bb1d835', '', '', NULL, 1104256032, NULL, '3012663930', 4, 'A', '2021-07-29 22:09:24', '2021-07-29 22:09:24'),
	(80, 'SARA SOFIA', 'PÉREZ HERAZO', 'saraherazo56@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ad91693e5b007b9ee45ebc5fd8d5601d', '', '', NULL, 1103738768, NULL, '3052611331', 4, 'A', '2021-07-29 22:10:01', '2021-07-29 22:10:01'),
	(81, 'LINA MARCELA', 'ORTIZ MONTES', 'linamarcelaortizmontes@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '04380464353690e15e4b229d67fc05f7', '', '', NULL, 1082844409, NULL, '3003810270', 4, 'A', '2021-07-29 22:10:36', '2021-07-29 22:10:36'),
	(82, 'MARGARITA', 'QUIROZ MEDINA', 'quirozmargarita21@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'fd8c94a491abfb2dae63e6e8e822b37d', '', '', NULL, 1103739294, NULL, '3044535281', 4, 'A', '2021-07-29 22:11:09', '2021-07-29 22:11:09'),
	(83, 'VALERIE SOFÍA', 'GONZÁLEZ ROMERO', 'valeriegonzalezromero@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'b7885fd9f3ef37e12cba6aa038a1befe', '', '', NULL, 1103496915, NULL, '3153911453', 4, 'A', '2021-07-29 22:11:45', '2021-07-29 22:11:45'),
	(84, 'SANTIAGO', 'MONTERROZA', 'santimonterroza16@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'a8fa06e21f6b8b07615896ccacada68e', '', '', NULL, 1104255184, NULL, '3183973391', 4, 'A', '2021-07-29 22:12:20', '2021-07-29 22:12:20'),
	(85, 'JULIANA MARIETA', 'OSPINO MEDINA', 'juliospino125@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '97e6795208881005056be3606a296ac8', '', '', NULL, 1103498549, NULL, '3207169582', 4, 'A', '2021-07-29 22:13:25', '2021-07-29 22:13:25'),
	(86, 'ISABELENA', 'VASQUEZ BUENO', 'isabelena808@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '7ef4ab13e8c2dcac58b84a25e6d35867', '', '', NULL, 1100011082, NULL, '3102142917', 4, 'A', '2021-07-29 22:13:59', '2021-07-29 22:13:59'),
	(87, 'MANUEL JOSE', 'AGUIRRE CORRALES', 'aguirrecorralesmanueljose@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '94474c171e084af29b4d8eba4f0050ae', '', '', NULL, 1069471421, NULL, '3003215817', 4, 'A', '2021-07-29 22:14:35', '2021-07-29 22:14:35'),
	(88, 'REINA', 'FLOREZ', 'reinadelasflorez@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '83309179d695ab7233c403ae2954ac8d', '', '', NULL, 1007450805, NULL, '3023290506', 4, 'A', '2021-07-29 22:15:11', '2021-07-29 22:15:11'),
	(89, 'JESUS DAVID', 'GUEVARA CANTERO', 'jesusguev2810@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '9255c2c2ed31e195d160fddf77fb8f94', '', '', NULL, 1101125115, NULL, '3216718652', 4, 'A', '2021-07-29 22:15:47', '2021-07-29 22:15:47'),
	(90, 'MARÍA GABRIELA', 'SANABRIA ELJADUE', 'mariagabrielasanabriaeljadue@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '5b1c4e800804d839d264786944536da4', '', '', NULL, 1043436949, NULL, '3008262179', 4, 'A', '2021-07-29 22:16:24', '2021-07-29 22:16:24'),
	(91, 'MARIANA', 'OLIVARES GÓMEZ', 'molivaresgomez1@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'eede1c076120f78c80e447d3b97b755b', '', '', NULL, 1103497620, NULL, '3023688560', 4, 'A', '2021-07-29 22:16:58', '2021-07-29 22:16:58'),
	(92, 'KIARA MELISSA', 'ARRIETA DOMINGUEZ', 'kiaramarrietad00@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'a066ee57f388c3c7aac68816ad009f3d', '', '', NULL, 1005575777, NULL, '3004127351', 4, 'A', '2021-07-29 22:17:40', '2021-07-29 22:17:40'),
	(93, 'DIANA LUCÍA', 'MARTÍNEZ', 'dianalucia2906@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'f17f0b0395e5fe3111560dbde158ab03', '', '', NULL, 1104256949, NULL, '3113594823', 4, 'A', '2021-07-31 11:16:20', '2021-07-31 11:16:20'),
	(95, 'VALENTINA', 'BRAVO RAMIREZ', 'vale18octubrebravo2016@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '559cd101b5f57d855c78f3d46ca58bad', '', '', NULL, 1104255771, NULL, '3126148860', 4, 'A', '2021-08-02 11:51:13', '2021-08-02 11:51:13'),
	(96, 'SHARIT DANIELA', 'FERNÁNDEZ GUERRERO', 'sharitfg05@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ca65cb8176f0752306e348aba72e86d9', '', '', NULL, 1103097530, NULL, '3052347346', 4, 'A', '2021-08-02 15:27:46', '2021-08-02 15:27:46'),
	(97, 'ISABELLA SOFÍA', 'GONZÁLEZ BERONA', 'isabellagonzalezbe00@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '3d5b37ea4bce490313ae8d0fcf6f16d4', '', '', NULL, 1062604698, NULL, '3023326552', 4, 'A', '2021-08-03 11:10:17', '2021-08-03 11:10:17'),
	(98, 'DANNA VALENTINA', 'GALE URBANO', 'dannagaleurbano@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ff7dee602829825ce5c9d70f87bab5d2', '', '', NULL, 1043663281, NULL, '3185573374', 4, 'A', '2021-08-03 14:37:37', '2021-08-03 14:37:37'),
	(99, 'DANIELA SOFIA', 'PINTO LIÑAN', 'dpintolinan@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '63671f040c10b78c829f8f28131835e0', '', '', NULL, 1064984027, NULL, '3103664573', 4, 'A', '2021-08-03 14:38:15', '2021-08-03 14:38:15'),
	(100, 'FRANCESCO', 'ROSA', 'franzeskorch@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'ab0fc630c75f007b0e3a0da56507d4ed', '', '', NULL, 1102799870, NULL, '3042418718', 4, 'A', '2021-08-04 10:52:26', '2021-08-04 10:52:26'),
	(101, 'SOFIA', 'MENDOZA ALVAREZ', 'sofim3817@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '2bc91e5da8c81bebeed05c2d904a85f2', '', '', NULL, 1103739982, NULL, '3002764775', 4, 'A', '2021-08-06 09:35:39', '2021-08-06 09:35:39'),
	(102, 'LUISA FERNANDA', 'CERRO CUMPLIDO', 'luisacerro2004@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', '102ca35b868514a3f680ea419d079573', '', '', NULL, 1104255578, NULL, '3217626209', 4, 'A', '2021-08-06 10:22:14', '2021-08-06 10:22:14'),
	(103, 'ISABELLA LUCIA', 'GENEY DE ARCE', 'isabellageney0616@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'e8456ad4c5160c80514dccfa3893cc34', '', '', NULL, 1103740665, NULL, '3014216418', 4, 'A', '2021-08-06 22:38:03', '2021-08-06 22:38:03'),
	(104, 'SEBASTIAN', 'ALVAREZ MONSALVE', 'sebastian.alvarez.mon@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'c814106b7bc610908191edd1e2781580', '', '', NULL, 1103739338, NULL, '3165048669', 4, 'A', '2021-08-06 22:38:36', '2021-08-06 22:38:36'),
	(105, 'LAURA', 'MONTENEGRO B', 'lauritamb1206@gmail.com', 'Sincelejo', 9, 0, 0, '2021-02-21 21:39:28', 'c1b3959ddd8189448e2880e17cec0eb0', '', '', NULL, 1032937000, NULL, '3007984854', 4, 'A', '2021-08-10 09:23:41', '2021-08-10 09:23:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
