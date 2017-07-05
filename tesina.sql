-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2017 a las 20:42:58
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tesina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad_insumos` int(11) NOT NULL,
  `alto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ancho` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_id` int(10) UNSIGNED NOT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `talle_id` int(10) UNSIGNED DEFAULT NULL,
  `costo` double NOT NULL,
  `margen` double NOT NULL,
  `ganancia` double NOT NULL,
  `iva_id` int(10) UNSIGNED NOT NULL,
  `montoIva` double UNSIGNED NOT NULL,
  `precioVta` double UNSIGNED NOT NULL,
  `horas_produccion` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `nombre`, `cantidad_insumos`, `alto`, `ancho`, `tipo_id`, `color_id`, `user_id`, `talle_id`, `costo`, `margen`, `ganancia`, `iva_id`, `montoIva`, `precioVta`, `horas_produccion`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Pin imantado 4 colores 55mm', 1, '0', '0', 1, 0, 1, 0, 2, 200, 4, 1, 1.26, 7.26, '0.5', 'no hay', 'se produce', '2016-12-05 02:50:09', '2016-12-05 02:50:09'),
(2, 'Gorra blanca estampa simple', 1, '', '', 2, 0, 1, 0, 3, 166.66666666667, 5, 2, 0, 8, '0.5', 'no hay', 'se produce', '2016-12-05 03:07:06', '2017-07-04 01:37:15'),
(3, 'Destapador Quilmes', 1, '', '', 1, 0, 2, 0, 3.5, 75.15, 2.63, 1, 1.62, 7.76, '0.5', 'no hay', 'se produce', '2016-12-05 19:56:00', '2017-01-27 22:49:17'),
(4, 'Destapador Bud', 1, '', '', 1, 0, 1, 0, 3, 100, 3, 1, 1.26, 7.26, '0.5', 'no hay', 'se produce', '2016-12-05 19:56:54', '2016-12-05 19:56:54'),
(5, 'Destapador 55m Quilmes', 1, '', '', 1, 0, 1, 0, 3, 100, 3, 1, 1.26, 7.26, '0.5', 'no hay', 'se produce', '2016-12-05 20:41:42', '2016-12-05 20:41:42'),
(9, 'Dispersor de olor "Moira" tubo', 1, '15', '2.5', 1, 0, 1, 0, 21.7, 100, 21.7, 1, 9.11, 39.68, '0.5', 'no hay', 'se produce', '2017-01-12 17:12:48', '2017-06-25 03:22:29'),
(10, 'Iman p/ heladera full color 150x100', 1, '150', '100', 1, 0, 1, 0, 4, 425, 17, 2, 0, 21, '0.5', 'no hay', 'se produce', '2017-01-15 22:25:33', '2017-02-27 12:33:37'),
(12, 'Globo 12" estampa simple', 1, '', '', 0, 0, 1, 0, 2, 100, 2, 1, 0.04, 4.04, '0.5', 'no hay', 'se produce', '2017-02-19 02:11:04', '2017-02-19 02:11:04'),
(15, 'Lapicera Eco personalizada 1 color', 1, '', '', 1, 0, 1, 0, 4.7, 110, 5.17, 1, 2.07, 11.94, '0.5', 'no hay', 'se produce', '2017-02-27 02:21:30', '2017-02-27 02:21:30'),
(16, 'Calendario A3 full color', 1, '', '', 3, 0, 1, 0, 2.04, 150, 3.06, 1, 1.07, 6.17, '0.5', 'no hay', 'se produce', '2017-02-27 20:38:16', '2017-02-27 20:38:16'),
(17, 'Sobre Oficio tipo ingles 60gr personalizado', 1, '12', '23.5', 3, 0, 1, 0, 1, 210, 2.1, 1, 0.65, 3.75, '0.5', 'no hay', 'se produce', '2017-02-28 13:00:40', '2017-02-28 13:00:40'),
(19, 'Calendario A4 full color', 1, '21', '29.7', 3, 0, 1, 0, 10.120000000000001, 170, 17.2, 1, 5.73, 33.05, '0.5', 'no hay', 'se produce', '2017-02-28 19:35:31', '2017-02-28 19:35:31'),
(20, 'Llavero personalizado 44mm', 1, '', '', 1, 0, 1, 0, 3, 300, 9, 1, 2.52, 14.52, '3', 'no hay', 'se produce', '2017-03-01 17:55:02', '2017-03-01 17:55:02'),
(22, 'Remera Blanca XL Estampa Simple', 1, '', '', 2, 1, 2, 4, 46.39, 150, 69.58, 1, 24.35, 140.32, '2', 'no hay', 'se produce', '2017-04-02 20:53:04', '2017-04-02 20:53:04'),
(24, 'Remera Algodon Roja Talle L', 1, '', '', 2, 4, 2, 3, 27.5, 120, 33, 1, 12.7, 73.2, '3', 'no hay', 'se produce', '2017-04-02 21:43:50', '2017-04-02 21:43:50'),
(26, 'Remera Algodon Roja Talle M', 1, '', '', 2, 4, 1, 2, 40, 100, 40, 1, 16.8, 96.8, '4', 'no hay', 'se produce', '2017-04-02 23:15:31', '2017-04-03 02:15:10'),
(27, 'Gorra Verde Militar Personalizada', 1, '', '', 2, 0, 2, 0, 36, 84.947777777778, 30.5812, 1, 17.6988, 84.28, '2', 'no hay', 'se produce', '2017-04-28 23:15:17', '2017-06-08 15:47:18'),
(28, 'Repasador descartable 3 colores', 1, '245', '150', 3, 0, 2, 0, 2.84, 110.29577464789, 3.1324, 1, 1.5876, 7.56, '10', 'no hay', 'se produce', '2017-06-08 03:02:23', '2017-07-04 01:37:15'),
(29, 'Posavaso 80mm ', 1, '0.5', '0.5', 3, 4, 2, 0, 17.5, 80, 14, 1, 6.61, 38.11, '0.2', 'no hay', 'se produce', '2017-06-08 23:05:14', '2017-06-24 03:39:29'),
(30, 'Caja p/ pizzas 40x40', 1, '40', '40', 0, 0, 2, 0, 9.75, 0, 0, 1, 2.5872, 12.32, '0.1', 'no hay', 'se produce', '2017-06-09 09:33:22', '2017-06-09 09:49:21'),
(31, 'Gorra Negra estampa fosforescente', 1, '', '', 2, 5, 1, 0, 25, 200, 50, 1, 15.75, 90.75, '0.1', 'no hay', 'se produce', '2017-06-26 17:50:40', '2017-06-26 17:50:40'),
(32, 'Lona 40 x 60 3 colores', 1, '40', '60', 1, 0, 1, 0, 1065, 70, 745.5, 1, 380.2, 2190.7, '', 'no hay', 'se produce', '2017-06-26 19:15:54', '2017-06-26 19:15:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos_ventas`
--

CREATE TABLE `articulos_ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` double NOT NULL,
  `precio_unitario` double NOT NULL,
  `articulo_id` int(10) UNSIGNED NOT NULL,
  `venta_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `articulos_ventas`
--

INSERT INTO `articulos_ventas` (`id`, `cantidad`, `importe`, `precio_unitario`, `articulo_id`, `venta_id`, `created_at`, `updated_at`) VALUES
(1, 11, 79.86, 7.26, 4, 1, '2017-06-05 15:59:13', '2017-06-05 15:59:13'),
(2, 2, 14.52, 7.26, 4, 2, '2017-06-06 02:21:21', '2017-06-06 02:21:21'),
(3, 1, 11.94, 11.94, 15, 3, '2017-06-07 12:39:07', '2017-06-07 12:39:07'),
(4, 1, 7, 7, 2, 4, '2017-06-07 12:44:46', '2017-06-07 12:44:46'),
(5, 2, 14, 7, 2, 5, '2017-06-07 15:45:33', '2017-06-07 15:45:33'),
(6, 4, 31.04, 7.76, 3, 6, '2017-06-07 15:56:52', '2017-06-07 15:56:52'),
(7, 3, 21.78, 7.26, 4, 7, '2017-06-07 16:09:36', '2017-06-07 16:09:36'),
(8, 2, 15.52, 7.76, 3, 8, '2017-06-07 16:16:45', '2017-06-07 16:16:45'),
(9, 2, 15.52, 7.76, 3, 9, '2017-06-07 16:17:38', '2017-06-07 16:17:38'),
(10, 5, 411.4, 82.28, 27, 10, '2017-06-07 17:18:16', '2017-06-07 17:18:16'),
(11, 1, 33.05, 33.05, 19, 11, '2017-06-07 17:22:21', '2017-06-07 17:22:21'),
(12, 8, 30, 3.75, 17, 11, '2017-06-07 17:22:21', '2017-06-07 17:22:21'),
(13, 1, 140.32, 140.32, 22, 11, '2017-06-07 17:22:22', '2017-06-07 17:22:22'),
(14, 15, 60.6, 4.04, 12, 12, '2017-06-07 17:24:55', '2017-06-07 17:24:55'),
(15, 15, 315, 21, 10, 13, '2017-06-07 17:27:33', '2017-06-07 17:27:33'),
(16, 7, 101.64, 14.52, 20, 13, '2017-06-07 17:27:34', '2017-06-07 17:27:34'),
(17, 2, 66.1, 33.05, 19, 14, '2017-06-07 17:29:21', '2017-06-07 17:29:21'),
(18, 150, 1089, 7.26, 5, 15, '2017-06-07 17:31:10', '2017-06-07 17:31:10'),
(19, 14, 56.56, 4.04, 12, 16, '2017-06-07 17:38:25', '2017-06-07 17:38:25'),
(20, 30, 435.59, 14.52, 20, 17, '2017-06-08 16:15:30', '2017-06-08 16:15:30'),
(21, 1, 11.94, 11.94, 15, 18, '2017-06-08 23:31:48', '2017-06-08 23:31:48'),
(22, 25, 2420, 96.8, 26, 18, '2017-06-08 23:31:49', '2017-06-08 23:31:49'),
(23, 100, 1232, 12.32, 30, 19, '2017-06-09 09:56:26', '2017-06-09 09:56:26'),
(24, 1, 6.17, 6.17, 16, 19, '2017-06-09 09:56:27', '2017-06-09 09:56:27'),
(25, 4, 47.76, 11.94, 15, 20, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(26, 50, 202, 4.04, 12, 20, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(27, 3, 116.76, 38.92, 29, 20, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(31, 1, 39.68, 39.68, 9, 22, '2017-06-25 22:42:21', '2017-06-25 22:42:21'),
(32, 1, 39.68, 39.68, 9, 23, '2017-06-25 22:47:30', '2017-06-25 22:47:30'),
(33, 5, 59.69, 11.94, 15, 23, '2017-06-25 22:47:30', '2017-06-25 22:47:30'),
(34, 9, 36.36, 4.04, 12, 23, '2017-06-25 22:47:31', '2017-06-25 22:47:31'),
(35, 1, 39.68, 39.68, 9, 24, '2017-06-26 00:54:29', '2017-06-26 00:54:29'),
(36, 2, 8.08, 4.04, 12, 24, '2017-06-26 00:54:29', '2017-06-26 00:54:29'),
(37, 5, 36.3, 7.26, 4, 25, '2017-06-26 11:44:23', '2017-06-26 11:44:23'),
(38, 1, 7.26, 7.26, 1, 25, '2017-06-26 11:44:23', '2017-06-26 11:44:23'),
(39, 15, 56.25, 3.75, 17, 26, '2017-06-26 13:09:04', '2017-06-26 13:09:04'),
(40, 12, 84, 7, 2, 27, '2017-06-26 14:16:08', '2017-06-26 14:16:08'),
(41, 5, 18.75, 3.75, 17, 27, '2017-06-26 14:16:09', '2017-06-26 14:16:09'),
(42, 2, 193.6, 96.8, 26, 27, '2017-06-26 14:16:09', '2017-06-26 14:16:09'),
(43, 1, 6.17, 6.17, 16, 28, '2017-06-26 17:02:33', '2017-06-26 17:02:33'),
(44, 10, 1403.19, 140.32, 22, 29, '2017-06-26 19:22:38', '2017-06-26 19:22:38'),
(45, 1, 2190.7, 2190.7, 32, 29, '2017-06-26 19:22:38', '2017-06-26 19:22:38'),
(46, 1, 11.94, 11.94, 15, 30, '2017-07-01 02:52:27', '2017-07-01 02:52:27'),
(47, 2, 168.56, 84.28, 27, 31, '2017-07-03 01:11:43', '2017-07-03 01:11:43'),
(48, 4, 561.28, 140.32, 22, 32, '2017-07-03 01:41:16', '2017-07-03 01:41:16'),
(49, 11, 436.48, 39.68, 9, 33, '2017-07-04 02:52:47', '2017-07-04 02:52:47'),
(50, 34, 714, 21, 10, 33, '2017-07-04 02:52:47', '2017-07-04 02:52:47'),
(51, 4, 30.24, 7.56, 28, 33, '2017-07-04 02:52:47', '2017-07-04 02:52:47'),
(52, 2, 76.22, 38.11, 29, 33, '2017-07-04 02:52:47', '2017-07-04 02:52:47'),
(53, 15, 56.25, 3.75, 17, 34, '2017-07-04 03:09:33', '2017-07-04 03:09:33'),
(54, 1, 38.11, 38.11, 29, 34, '2017-07-04 03:09:33', '2017-07-04 03:09:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditorias`
--

CREATE TABLE `auditorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `tabla` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elemento_id` int(11) NOT NULL,
  `accion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dato_nuevo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dato_anterior` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auditorias`
--

INSERT INTO `auditorias` (`id`, `tabla`, `elemento_id`, `accion`, `dato_nuevo`, `dato_anterior`, `usuario_id`, `created_at`, `updated_at`) VALUES
(1, 'paises', 8, 'alta', 'Colombia', NULL, 1, '2017-01-29 16:57:01', '2017-01-29 16:57:01'),
(2, 'paises', 8, 'modificacion', 'Panamá', 'Colombia', 1, '2017-01-29 17:09:55', '2017-01-29 17:09:55'),
(10, 'paises', 19, 'alta', 'Cuba', NULL, 1, '2017-01-30 19:04:42', '2017-01-30 19:04:42'),
(11, 'paises', 18, 'eliminacion', NULL, 'Eslovaquia', 1, '2017-01-30 19:13:16', '2017-01-30 19:13:16'),
(12, 'provincias', 14, 'alta', 'San Luis', NULL, 1, '2017-01-30 19:25:53', '2017-01-30 19:25:53'),
(13, 'provincias', 15, 'alta', 'nombre: Mato Grosso, pais_id: 3', NULL, 1, '2017-01-30 19:48:37', '2017-01-30 19:48:37'),
(14, 'provincias', 9, 'modificacion', 'nombre: Neuquén| pais_id: 1', 'La Pampa', 1, '2017-01-30 19:51:12', '2017-01-30 19:51:12'),
(15, 'provincias', 9, 'modificacion', 'nombre: Tierra del Fuego| pais_id: 1', 'Neuquén', 1, '2017-01-30 19:52:19', '2017-01-30 19:52:19'),
(16, 'provincias', 9, 'modificacion', 'nombre: Neuquén| pais_id: 1', 'nombre: Tierra del Fuego| pais_id: 1', 1, '2017-01-30 19:54:34', '2017-01-30 19:54:34'),
(17, 'paises', 8, 'eliminacion', NULL, 'Santa Fe', 1, '2017-01-30 19:56:07', '2017-01-30 19:56:07'),
(18, 'localidades', 15, 'alta', 'nombre: Aristobulo del Valle|| provincia_id: 2', NULL, 1, '2017-01-30 20:05:49', '2017-01-30 20:05:49'),
(19, 'localidades', 14, 'modificacion', 'nombre: Junin || provincia_id: 4', 'nombre: San Lorenzo || provincia_id: 11', 1, '2017-01-30 20:12:19', '2017-01-30 20:12:19'),
(20, 'localidades', 14, 'eliminacion', NULL, 'nombre: Junin || provincia_id: 4', 1, '2017-01-30 20:14:25', '2017-01-30 20:14:25'),
(21, 'colores', 9, 'alta', 'nombre: Verdegrisaceo || codigo: #66b9b0', NULL, 1, '2017-01-30 20:27:05', '2017-01-30 20:27:05'),
(22, 'colores', 9, 'modificacion', 'nombre: Marrón || codigo: #6f2e22', 'nombre: Verdegrisaceo || codigo: #66b9b0', 1, '2017-01-30 20:28:16', '2017-01-30 20:28:16'),
(23, 'localidades', 9, 'eliminacion', NULL, 'nombre: Marrón || codigo: #6f2e22', 1, '2017-01-30 20:29:37', '2017-01-30 20:29:37'),
(24, 'unidades_medidas', 11, 'alta', 'unidad:  || detalle: tumina', NULL, 1, '2017-01-31 13:36:40', '2017-01-31 13:36:40'),
(25, 'materiales', 8, 'alta', 'nombre material: Cobre', NULL, 1, '2017-01-31 14:15:51', '2017-01-31 14:15:51'),
(26, 'materiales', 8, 'modificacion', 'nombre material: Atun', 'nombre: Cobre', 1, '2017-01-31 14:21:02', '2017-01-31 14:21:02'),
(27, 'materiales', 8, 'eliminacion', NULL, 'nombre: Atun', 1, '2017-01-31 14:22:23', '2017-01-31 14:22:23'),
(28, 'tipos', 5, 'alta', 'nombre: coso || descripcion: papelitos, lapices', NULL, 1, '2017-01-31 14:32:14', '2017-01-31 14:32:14'),
(29, 'tipos', 4, 'modificacion', 'nombre: Papeleria copada || descripcion: papelitos, lapices', 'nombre: Papeleria ameo || descripcion: papelitos, lapices', 1, '2017-01-31 14:39:34', '2017-01-31 14:39:34'),
(30, 'materiales', 4, 'eliminacion', NULL, 'nombre: Papeleria copada || descripcion: papelitos, lapices', 1, '2017-01-31 14:39:59', '2017-01-31 14:39:59'),
(31, 'responiva', 5, 'alta', 'nombre: Excento || iva: 21 || Factura: W', NULL, 1, '2017-01-31 14:56:39', '2017-01-31 14:56:39'),
(32, 'responiva', 5, 'modificacion', 'nombre: Monotributista || iva: gg || Factura: Y', 'nombre: Excento || iva: 21 || Factura: W', 1, '2017-01-31 15:00:47', '2017-01-31 15:00:47'),
(33, 'responiva', 5, 'eliminacion', NULL, 'nombre: Monotributista || iva: 0 || Factura: Y', 1, '2017-01-31 15:02:08', '2017-01-31 15:02:08'),
(34, 'responiva', 6, 'alta', 'nombre: nas || iva: 100 || Factura: F', NULL, 1, '2017-01-31 19:49:03', '2017-01-31 19:49:03'),
(35, 'responiva', 7, 'alta', 'nombre: nas || iva: 78 || Factura: C', NULL, 1, '2017-01-31 19:51:30', '2017-01-31 19:51:30'),
(36, 'responiva', 7, 'eliminacion', NULL, 'nombre: nas || iva: 78 || Factura: C', 1, '2017-01-31 19:56:01', '2017-01-31 19:56:01'),
(37, 'responiva', 8, 'alta', 'nombre: nas || iva: 423 || Factura: 6', NULL, 1, '2017-01-31 19:56:20', '2017-01-31 19:56:20'),
(38, 'responiva', 8, 'eliminacion', NULL, 'nombre: nas || iva: 423 || Factura: 6', 1, '2017-01-31 19:57:46', '2017-01-31 19:57:46'),
(39, 'responiva', 6, 'eliminacion', NULL, 'nombre: nas || iva: 100 || Factura: F', 1, '2017-01-31 19:57:54', '2017-01-31 19:57:54'),
(40, 'ivas', 2, 'alta', 'iva: 78%', NULL, 1, '2017-01-31 20:37:47', '2017-01-31 20:37:47'),
(41, 'ivas', 2, 'modificacion', 'iva: 50%', 'iva: 78%', 1, '2017-01-31 20:41:55', '2017-01-31 20:41:55'),
(42, 'ivas', 2, 'eliminacion', NULL, 'iva: 50%', 1, '2017-01-31 20:42:26', '2017-01-31 20:42:26'),
(43, 'bancos', 3, 'alta', 'nombre: HSBC', NULL, 1, '2017-01-31 20:53:09', '2017-01-31 20:53:09'),
(44, 'bancos', 3, 'modificacion', 'nombre: HSBC', 'nombre: HSBC', 1, '2017-01-31 21:02:22', '2017-01-31 21:02:22'),
(45, 'bancos', 3, 'modificacion', 'nombre: Boston', 'nombre: HCBC', 1, '2017-01-31 21:04:08', '2017-01-31 21:04:08'),
(46, 'unidades_medidas', 3, 'eliminacion', NULL, 'unidad:  || detalle: metros cuadrados', 1, '2017-01-31 21:05:25', '2017-01-31 21:05:25'),
(47, 'bancos', 3, 'eliminacion', NULL, 'nombre: Boston', 1, '2017-01-31 21:08:13', '2017-01-31 21:08:13'),
(48, 'talles', 8, 'alta', 'talle: Talle nuevo', NULL, 1, '2017-02-01 13:09:02', '2017-02-01 13:09:02'),
(49, 'talles', 7, 'modificacion', 'talle: Talle modificado', 'talle: Talle nuevo', 1, '2017-02-01 13:19:54', '2017-02-01 13:19:54'),
(50, 'talles', 7, 'eliminacion', NULL, 'talle: Talle modificado', 1, '2017-02-01 13:23:49', '2017-02-01 13:23:49'),
(51, 'talles', 8, 'eliminacion', NULL, 'talle: Talle nuevo', 1, '2017-02-01 13:23:59', '2017-02-01 13:23:59'),
(52, 'clientes', 6, 'alta', 'nombre: Bione || apellido: Leonardo || empresa: El Toba Tano SRL || responsabilidad tributaria:1 || CUIT:20645978045 || DNI:  || descripcion: Usan nuestra indumentaria y solicitan nuestro merchandising || teléfono: 3624744011 || email: bione@toba.com || l', NULL, 1, '2017-02-01 13:44:36', '2017-02-01 13:44:36'),
(53, 'clientes', 6, 'modificacion', 'nombre: Leandro || apellido: Bione || empresa: El Toba Tano SRL || responsabilidad tributaria:1 || CUIT:20645978045 || DNI:  || descripcion: Solicitan nuestro merchandising periodicamente desde 2014 || teléfono: 3624744011 || email: bione@toba.com || loca', 'nombre: Bione || apellido: Leonardo || empresa: El Toba Tano SRL || responsabilidad tributaria:1 || CUIT:20645978045 || DNI:  || descripcion: Usan nuestra indumentaria y solicitan nuestro merchandising || teléfono: 3624744011 || email: bione@toba.com || l', 1, '2017-02-01 13:59:51', '2017-02-01 13:59:51'),
(54, 'clientes', 6, 'eliminacion', NULL, 'nombre: Leandro || apellido: Bione || empresa: El Toba Tano SRL || responsabilidad tributaria:1 || CUIT:20645978045 || DNI:  || descripcion: Solicitan nuestro merchandising periodicamente desde 2014 || teléfono: 3624744011 || email: bione@toba.com || loca', 1, '2017-02-01 14:00:38', '2017-02-01 14:00:38'),
(55, 'insumos', 42, 'alta', 'nombre: Remera Negra (Talle: M) || unidad_medida_id: 6 || alto:  || ancho: || stock:20 || stock minimo: 10 || costo: 14.50 || costo anterior:  || descripcion:  || talle_id: 2 || color_id: 5 || material_id: 2', NULL, 1, '2017-02-01 14:44:49', '2017-02-01 14:44:49'),
(56, 'insumos', 7, 'modificacion', 'nombre: remera negra cambiaaaadaaa XDDDD || unidad_medida_id: 6 || alto:  || ancho: || stock:0 || stock minimo: 250 || costo: 0 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', 'nombre: Remera Algodon Negra XXL || unidad_medida_id: 6 || alto:  || ancho: || stock:0 || stock minimo: 250 || costo: 0 || costo anterior:  || descripcion:  || talle_id: 5 || color_id: 5 || material_id: 1', 1, '2017-02-01 14:50:44', '2017-02-01 14:50:44'),
(57, 'insumos', 7, 'eliminacion', NULL, 'nombre: remera negra cambiaaaadaaa XDDDD || unidad_medida_id: 6 || alto:  || ancho: || stock:0 || stock minimo: 250 || costo: 0 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', 1, '2017-02-01 14:51:09', '2017-02-01 14:51:09'),
(58, 'compras', 75, 'alta', 'concepto: Esto es una prueba || importe insumos: 1020 || costo envio: 50 || importe total: 1070 || fecha_solicitud: 01-02-2017 || hora_solicitud: 12:35 || fecha compra:01-02-2017 || hora_compra:12:35 || confirmado: 1 || pagado: 1 || recibido: 1 || userCom', NULL, 1, '2017-02-01 15:35:09', '2017-02-01 15:35:09'),
(59, 'paises', 20, 'alta', 'nombre: Uzbekisqtan', NULL, 1, '2017-02-02 21:51:48', '2017-02-02 21:51:48'),
(60, 'users', 3, 'alta', 'nombre: Cranson Brian || email: bcranson@mallcom.com || password: $2y$10$V1inJuY.Rh5oQmDNZieTl.1L9yhgecXAH1t6yNo0oGvMAfByUxLNq || imagen:usuario_1486128533.jpg || rol_id:2', NULL, 1, '2017-02-03 13:28:53', '2017-02-03 13:28:53'),
(61, 'proveedores', 10, 'alta', 'nombre: TuHermana En-MiKma SRL || cuit: 45645845109 || localidad_id: 2 || direccion:Salta 978 || horario de atencion: 10:00 a  y de 18:00 a 21:00 || teléfono:322245117 || celular:2165187779 || web:www.nada.com || rubro_id:8 || imagen:GN_1486131240.PNG', NULL, 1, '2017-02-03 14:14:00', '2017-02-03 14:14:00'),
(62, 'proveedores', 10, 'modificacion', 'nombre: maruSA || cuit: 45645845109 || localidad_id: 2 || direccion:Salta 978 || horario de atencion: 10:00 a  y de 18:00 a 21:00 || teléfono:322245117 || celular:2165187779 || web:www.nada.com || rubro_id:8 || imagen:GN_1486131240.PNG', 'nombre: TuHermana En-MiKma SRL || cuit: 45645845109 || localidad_id: 2 || direccion:Salta 978 || horario de atencion: 10:00 a  y de 18:00 a 21:00 || teléfono:322245117 || celular:2165187779 || web:www.nada.com || rubro_id:8 || imagen:GN_1486131240.PNG', 1, '2017-02-03 15:25:53', '2017-02-03 15:25:53'),
(63, 'proveedor', 10, 'eliminacion', NULL, 'nombre: maruSA || cuit: 45645845109 || localidad_id: 2 || direccion:Salta 978 || horario de atencion: 10:00 a  y de 18:00 a 21:00 || teléfono:322245117 || celular:2165187779 || web:www.nada.com || rubro_id:8 || imagen:GN_1486131240.PNG', 1, '2017-02-03 15:26:22', '2017-02-03 15:26:22'),
(64, 'clientes', 6, 'alta', 'nombre: Mario || apellido: Baracus || empresa:  || responsabilidad tributaria:2 || CUIT:20355647119 || DNI:  || descripcion: El humorista\r\n || teléfono: 3624123123 || email: marito@baracus.com || localidad_id: 9 || direccion: Peru 701', NULL, 1, '2017-02-05 22:54:36', '2017-02-05 22:54:36'),
(65, 'insumos', 20, 'modificacion', 'nombre: Destapador 55mm || unidad_medida_id: 6 || alto:  || ancho: || stock:1155 || stock minimo: 190 || costo: 3.5 || costo anterior: 3 || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', 'nombre: Destapador 55mm || unidad_medida_id: 6 || alto:  || ancho: || stock:1155 || stock minimo: 200 || costo: 3.5 || costo anterior: 3 || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', 1, '2017-02-10 19:18:15', '2017-02-10 19:18:15'),
(66, 'compras', 76, 'alta', 'concepto: Esto es una prueba || importe insumos: 2850 || costo envio: 150 || importe total: 3000 || fecha_solicitud: 14-02-2017 || hora_solicitud: 10:22 || fecha compra:14-02-2017 || hora_compra:10:22 || confirmado: 1 || pagado: 1 || recibido: 1 || userCo', NULL, 1, '2017-02-14 13:22:08', '2017-02-14 13:22:08'),
(67, 'compras', 77, 'alta', 'concepto: Esto es una prueba || importe insumos: 2850 || costo envio: 150 || importe total: 3000 || fecha_solicitud: 14-02-2017 || hora_solicitud: 11:23 || fecha compra:14-02-2017 || hora_compra:11:23 || confirmado: 1 || pagado: 1 || recibido: 1 || userCo', NULL, 1, '2017-02-14 14:23:29', '2017-02-14 14:23:29'),
(68, 'compras', 78, 'alta', 'concepto: Esto es una prueba || importe insumos: 216 || costo envio: 4 || importe total: 220 || fecha_solicitud: 14-02-2017 || hora_solicitud: 11:25 || fecha compra:14-02-2017 || hora_compra:11:25 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra', NULL, 1, '2017-02-14 14:25:58', '2017-02-14 14:25:58'),
(69, 'compras', 79, 'alta', 'concepto: Reposicion de stock || importe insumos: 216 || costo envio: 4 || importe total: 220 || fecha_solicitud: 14-02-2017 || hora_solicitud: 11:44 || fecha compra:14-02-2017 || hora_compra:11:44 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 14:44:10', '2017-02-14 14:44:10'),
(70, 'compras', 80, 'alta', 'concepto: Reposicion de stock || importe insumos: 85 || costo envio: 25 || importe total: 110 || fecha_solicitud: 14-02-2017 || hora_solicitud: 11:49 || fecha compra:14-02-2017 || hora_compra:11:49 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 14:49:37', '2017-02-14 14:49:37'),
(71, 'compras', 81, 'alta', 'concepto: Reposicion de stock || importe insumos: 126 || costo envio: 4 || importe total: 130 || fecha_solicitud: 14-02-2017 || hora_solicitud: 12:53 || fecha compra:14-02-2017 || hora_compra:12:53 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 15:53:26', '2017-02-14 15:53:26'),
(72, 'compras', 82, 'alta', 'concepto: Reposicion de stock || importe insumos: 78 || costo envio: 12 || importe total: 90 || fecha_solicitud: 14-02-2017 || hora_solicitud: 13:00 || fecha compra:14-02-2017 || hora_compra:13:00 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 16:00:00', '2017-02-14 16:00:00'),
(73, 'compras', 83, 'alta', 'concepto: Reposicion de stock || importe insumos: 102 || costo envio: 34 || importe total: 136 || fecha_solicitud: 14-02-2017 || hora_solicitud: 13:03 || fecha compra:14-02-2017 || hora_compra:13:03 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 16:03:06', '2017-02-14 16:03:06'),
(74, 'compras', 84, 'alta', 'concepto: Reposicion de stock || importe insumos: 750 || costo envio: 50 || importe total: 800 || fecha_solicitud: 14-02-2017 || hora_solicitud: 19:30 || fecha compra:14-02-2017 || hora_compra:19:30 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 22:30:04', '2017-02-14 22:30:04'),
(75, 'compras', 85, 'alta', 'concepto: Reposicion de stock || importe insumos: 37142.74 || costo envio:  || importe total: 37142.74 || fecha_solicitud: 14-02-2017 || hora_solicitud: 19:33 || fecha compra:14-02-2017 || hora_compra:19:33 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 22:33:07', '2017-02-14 22:33:07'),
(76, 'compras', 86, 'alta', 'concepto: Reposicion de stock || importe insumos: 452.64 || costo envio:  || importe total: 452.64 || fecha_solicitud: 14-02-2017 || hora_solicitud: 19:36 || fecha compra:14-02-2017 || hora_compra:19:36 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 22:36:22', '2017-02-14 22:36:22'),
(77, 'compras', 87, 'alta', 'concepto: Reposicion de stock || importe insumos: 4 || costo envio: 4 || importe total: 8 || fecha_solicitud: 14-02-2017 || hora_solicitud: 20:37 || fecha compra:14-02-2017 || hora_compra:20:37 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 23:37:58', '2017-02-14 23:37:58'),
(78, 'compras', 88, 'alta', 'concepto: Reposicion de stock || importe insumos: 1387.5 || costo envio:  || importe total: 1387.5 || fecha_solicitud: 14-02-2017 || hora_solicitud: 20:42 || fecha compra:14-02-2017 || hora_compra:20:42 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 23:42:03', '2017-02-14 23:42:03'),
(79, 'compras', 89, 'alta', 'concepto: Reposicion de stock || importe insumos: 130 || costo envio: 14 || importe total: 144 || fecha_solicitud: 14-02-2017 || hora_solicitud: 20:49 || fecha compra:14-02-2017 || hora_compra:20:49 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 23:49:20', '2017-02-14 23:49:20'),
(80, 'compras', 90, 'alta', 'concepto: Reposicion de stock || importe insumos: 680 || costo envio: 19 || importe total: 699 || fecha_solicitud: 14-02-2017 || hora_solicitud: 20:56 || fecha compra:14-02-2017 || hora_compra:20:56 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-14 23:56:45', '2017-02-14 23:56:45'),
(81, 'compras', 91, 'alta', 'concepto: Reposicion de stock || importe insumos: 147 || costo envio: 12 || importe total: 159 || fecha_solicitud: 14-02-2017 || hora_solicitud: 21:04 || fecha compra:14-02-2017 || hora_compra:21:04 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 00:04:57', '2017-02-15 00:04:57'),
(82, 'compras', 92, 'alta', 'concepto: Reposicion de stock || importe insumos: 259 || costo envio:  || importe total: 259 || fecha_solicitud: 14-02-2017 || hora_solicitud: 21:45 || fecha compra:14-02-2017 || hora_compra:21:45 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 00:45:08', '2017-02-15 00:45:08'),
(83, 'compras', 93, 'alta', 'concepto: Reposicion de stock || importe insumos: 31.49 || costo envio: 41 || importe total: 72.49 || fecha_solicitud: 14-02-2017 || hora_solicitud: 21:56 || fecha compra:14-02-2017 || hora_compra:21:56 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 00:56:50', '2017-02-15 00:56:50'),
(84, 'compras', 94, 'alta', 'concepto: Reposicion de stock || importe insumos: 984 || costo envio: 25 || importe total: 1009 || fecha_solicitud: 14-02-2017 || hora_solicitud: 22:16 || fecha compra:14-02-2017 || hora_compra:22:16 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 01:16:17', '2017-02-15 01:16:17'),
(85, 'compras', 95, 'alta', 'concepto: Reposicion de stock || importe insumos: 984 || costo envio: 25 || importe total: 1009 || fecha_solicitud: 14-02-2017 || hora_solicitud: 22:17 || fecha compra:14-02-2017 || hora_compra:22:17 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 01:17:19', '2017-02-15 01:17:19'),
(86, 'compras', 96, 'alta', 'concepto: Reposicion de stock || importe insumos: 875 || costo envio: 50 || importe total: 925 || fecha_solicitud: 14-02-2017 || hora_solicitud: 22:23 || fecha compra:14-02-2017 || hora_compra:22:23 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 01:23:13', '2017-02-15 01:23:13'),
(87, 'compras', 97, 'alta', 'concepto: Reposicion de stock || importe insumos: 875 || costo envio: 50 || importe total: 925 || fecha_solicitud: 14-02-2017 || hora_solicitud: 22:23 || fecha compra:14-02-2017 || hora_compra:22:23 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 01:23:24', '2017-02-15 01:23:24'),
(88, 'compras', 98, 'alta', 'concepto: Reposicion de stock || importe insumos: 2484 || costo envio: 12 || importe total: 2496 || fecha_solicitud: 14-02-2017 || hora_solicitud: 22:40 || fecha compra:14-02-2017 || hora_compra:22:40 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 01:40:45', '2017-02-15 01:40:45'),
(89, 'compras', 99, 'alta', 'concepto: Reposicion de stock || importe insumos: 49 || costo envio: 14 || importe total: 63 || fecha_solicitud: 14-02-2017 || hora_solicitud: 22:46 || fecha compra:14-02-2017 || hora_compra:22:46 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 01:46:26', '2017-02-15 01:46:26'),
(90, 'compras', 100, 'alta', 'concepto: Reposicion de stock || importe insumos: 162 || costo envio: 15 || importe total: 177 || fecha_solicitud: 15-02-2017 || hora_solicitud: 16:11 || fecha compra:15-02-2017 || hora_compra:16:11 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-15 19:11:30', '2017-02-15 19:11:30'),
(91, 'compras', 101, 'alta', 'concepto: Reposicion de stock || importe insumos: 270 || costo envio: 6 || importe total: 276 || fecha_solicitud: 17-02-2017 || hora_solicitud: 10:34 || fecha compra:17-02-2017 || hora_compra:10:34 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-17 13:34:01', '2017-02-17 13:34:01'),
(92, 'compras', 102, 'alta', 'concepto: Reposicion de stock || importe insumos: 1998 || costo envio: 50 || importe total: 2048 || fecha_solicitud: 18-02-2017 || hora_solicitud: 11:41 || fecha compra:18-02-2017 || hora_compra:11:41 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-18 14:41:19', '2017-02-18 14:41:19'),
(93, 'localidades', 16, 'alta', 'nombre: Quitilipi || provincia_id: 1', NULL, 1, '2017-02-18 20:45:15', '2017-02-18 20:45:15'),
(94, 'compras', 103, 'alta', 'concepto: Reposicion de stock || importe insumos: 175 || costo envio: 50 || importe total: 225 || fecha_solicitud: 19-02-2017 || hora_solicitud: 00:53 || fecha compra:19-02-2017 || hora_compra:00:53 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-19 03:53:41', '2017-02-19 03:53:41'),
(95, 'localidades', 17, 'alta', 'nombre: Villa Carlos Paz || provincia_id: 6', NULL, 2, '2017-02-20 00:25:00', '2017-02-20 00:25:00'),
(96, 'proveedores', 1, 'eliminacion', NULL, 'nombre: Textil Mandiyu || cuit: 30456887139 || localidad_id: 1 || direccion:Belgrano 1700 || horario de atencion: 08:00 a  y de 16:30 a 21:00 || teléfono:3764875112 || celular:3764875541 || web:www.textilmandi.com.ar || rubro_id:2 || imagen:GN_1480942086.jpg', 2, '2017-02-20 00:25:51', '2017-02-20 00:25:51'),
(97, 'provincias', 16, 'alta', 'nombre: Antofagasta|| pais_id: 7', NULL, 2, '2017-02-20 00:31:43', '2017-02-20 00:31:43'),
(98, 'localidades', 18, 'alta', 'nombre: Cobresal || provincia_id: 16', NULL, 2, '2017-02-20 00:32:04', '2017-02-20 00:32:04'),
(99, 'proveedores', 2, 'eliminacion', NULL, 'nombre: Crocs || cuit: 25456456711 || localidad_id: 10 || direccion:Belgrano 152 || horario de atencion: 07:30 a  y de 17:00 a 20:00 || teléfono:3766982011 || celular:3766551197 || web:www.crocsdev.com || rubro_id:3 || imagen:GN_1480954110.png', 2, '2017-02-20 00:34:17', '2017-02-20 00:34:17'),
(100, 'proveedores', 10, 'modificacion', 'nombre: Textil Mandiyu || cuit: 30456887139 || localidad_id: 1 || direccion:Belgrano 1700 || horario de atencion: 08:30 a  y de 17:00 a 20:30 || teléfono:3764875112 || celular:3764875541 || web:www.textilmandi.com.ar || rubro_id:2 || imagen:GN_1487553657.jpg', 'nombre: Textil Mandiyu || estado: activo || cuit: 30456887139 || localidad_id: 1 || direccion:Belgrano 1700 || horario de atencion:  a  y de  a  || teléfono:3764875112 || celular:3764875541 || web:www.textilmandi.com.ar || rubro_id:2 || imagen:sin imagen', 2, '2017-02-20 01:20:57', '2017-02-20 01:20:57'),
(101, 'proveedores', 11, 'modificacion', 'nombre: Insumos Parana SH || cuit: 2045689034 || localidad_id: 2 || direccion:Neuquen 2013 || horario de atencion: 07:30 a  y de 16:30 a 20:30 || teléfono:3624558401 || celular:362487749 || web:www.parana.com.ar || rubro_id:3 || imagen:GN_1487553951.png', 'nombre: Insumos Parana SH || estado: activo || cuit: 2045689034 || localidad_id: 2 || direccion:Neuquen 2013 || horario de atencion:  a  y de  a  || teléfono:3624558401 || celular:362487749 || web:www.parana.com.ar || rubro_id:3 || imagen:sin imagen', 2, '2017-02-20 01:25:51', '2017-02-20 01:25:51'),
(102, 'proveedores', 12, 'modificacion', 'nombre: Plasticos Castelli || cuit: 2033689034 || localidad_id: 16 || direccion:Jujuy 745 || horario de atencion: 08:00 a  y de 17:00 a 20:00 || teléfono:3624558991 || celular:362487749 || web:www.pcastelli.com || rubro_id:4 || imagen:GN_1487554094.jpg', 'nombre: Plasticos Castelli || estado: activo || cuit: 2033689034 || localidad_id: 1 || direccion:Jujuy 745 || horario de atencion:  a  y de  a  || teléfono:3624558991 || celular:362487749 || web:www.pcastelli.com || rubro_id:4 || imagen:sin imagen', 2, '2017-02-20 01:28:14', '2017-02-20 01:28:14'),
(103, 'proveedores', 8, 'eliminacion', NULL, 'nombre: Obbi One SH || estado: inactivo || cuit: 22564585664 || localidad_id: 12 || direccion:San Martin 241 || horario de atencion: 08:00 a  y de 17:00 a 21:00 || teléfono:3624236411 || celular:362415236411 || web:www.lafuerza.com || rubro_id:4 || imagen:GN_1483994098.jpg', 2, '2017-02-20 02:09:31', '2017-02-20 02:09:31'),
(104, 'paises', 10, 'eliminacion', NULL, 'Camerun', 2, '2017-02-20 17:59:32', '2017-02-20 17:59:32'),
(105, 'localidades', 19, 'alta', 'nombre: Puerto Iguazú || provincia_id: 1', NULL, 2, '2017-02-20 19:27:30', '2017-02-20 19:27:30'),
(106, 'localidades', 19, 'modificacion', 'nombre: Puerto Iguazú || provincia_id: 2', 'nombre: Puerto Iguazú || provincia_id: 1', 2, '2017-02-20 19:27:57', '2017-02-20 19:27:57'),
(107, 'compras', 104, 'alta', 'concepto: Reposicion de stock || importe insumos: 88 || costo envio: 21 || importe total: 109 || fecha_solicitud: 20-02-2017 || hora_solicitud: 16:31 || fecha compra:20-02-2017 || hora_compra:16:31 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 2, '2017-02-20 19:31:32', '2017-02-20 19:31:32'),
(108, 'paises', 13, 'eliminacion', NULL, 'Inglaterra', 2, '2017-02-20 23:50:52', '2017-02-20 23:50:52'),
(109, 'clientes', 6, 'modificacion', 'nombre: Mario || apellido: Baracus || empresa:  || responsabilidad tributaria:2 || CUIT:20355647119 || DNI:  || descripcion: El humorista\r\n || teléfono: 3624123123 || email: marito@baracus.com || localidad_id: 17 || direccion: Peru 701', 'nombre: Mario || apellido: Baracus || empresa:  || responsabilidad tributaria:2 || CUIT:20355647119 || DNI:  || descripcion: El humorista\r\n || teléfono: 3624123123 || email: marito@baracus.com || localidad_id: 9 || direccion: Peru 701', 2, '2017-02-20 23:52:01', '2017-02-20 23:52:01'),
(110, 'insumos', 43, 'alta', 'nombre: Gorra Negra || unidad_medida_id: 6 || alto:  || ancho: || stock:333 || stock minimo: 4444 || costo: 5 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 2', NULL, 1, '2017-02-21 12:37:42', '2017-02-21 12:37:42'),
(111, 'insumos', 43, 'eliminacion', NULL, 'nombre: Gorra Negra || unidad_medida_id: 6 || alto:  || ancho: || stock:333 || stock minimo: 4444 || costo: 5 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 2', 1, '2017-02-21 12:38:02', '2017-02-21 12:38:02'),
(112, 'insumos', 17, 'eliminacion', NULL, 'nombre: Pin Imantado 55mm || unidad_medida_id: 6 || alto:  || ancho: || stock:171 || stock minimo: 200 || costo: 2 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 6', 1, '2017-02-21 12:56:06', '2017-02-21 12:56:06'),
(113, 'compras', 105, 'alta', 'concepto: Reposicion de stock || importe insumos: 2800 || costo envio: 50 || importe total: 2850 || fecha_solicitud: 25-02-2017 || hora_solicitud: 16:11 || fecha compra:25-02-2017 || hora_compra:16:11 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 2, '2017-02-25 19:11:56', '2017-02-25 19:11:56'),
(114, 'roles', 5, 'alta', 'nombre: Repositor', NULL, 2, '2017-02-25 19:38:23', '2017-02-25 19:38:23'),
(115, 'roles', 5, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 00:24:07', '2017-02-26 00:24:07'),
(116, 'roles', 5, 'alta', 'nombre: true modulos: usuarios_roles parametros insumos_compras articulos proveedores_rubros clientes ventas cajas auditorias adminweb', NULL, 1, '2017-02-26 12:42:42', '2017-02-26 12:42:42'),
(117, 'roles', 5, 'eliminacion', NULL, 'true', 1, '2017-02-26 12:43:29', '2017-02-26 12:43:29'),
(118, 'roles', 6, 'alta', 'nombre:  modulos: usuarios_roles parametros insumos_compras articulos proveedores_rubros clientes ventas cajas auditorias adminweb', NULL, 1, '2017-02-26 12:48:48', '2017-02-26 12:48:48'),
(119, 'roles', 6, 'eliminacion', NULL, '', 1, '2017-02-26 12:50:17', '2017-02-26 12:50:17'),
(120, 'roles', 7, 'alta', 'nombre: Repositor modulos: usuarios_roles parametros insumos_compras articulos proveedores_rubros clientes ventas cajas auditorias adminweb', NULL, 1, '2017-02-26 12:50:47', '2017-02-26 12:50:47'),
(121, 'roles', 7, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:12:04', '2017-02-26 14:12:04'),
(122, 'roles', 8, 'alta', 'nombre: Repositor modulos: Usuarios_Roles ;Parametros ;Insumos_Compras ;Articulos ;Proveedores_Rubros ;Clientes ;Ventas ;Cajas ;Auditorias ;AdminWeb', NULL, 1, '2017-02-26 14:13:09', '2017-02-26 14:13:09'),
(123, 'roles', 8, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:14:56', '2017-02-26 14:14:56'),
(124, 'roles', 9, 'alta', 'nombre: Repositor modulos: Usuarios_Roles ; Parametros ; Insumos_Compras ; Articulos ; Proveedores_Rubros ; Clientes ; Ventas ; Cajas ; Auditorias ; AdminWeb', NULL, 1, '2017-02-26 14:15:29', '2017-02-26 14:15:29'),
(125, 'roles', 9, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:17:10', '2017-02-26 14:17:10'),
(126, 'roles', 10, 'alta', 'nombre: Repositor modulos: Usuarios_Roles | Parametros | Insumos_Compras | Articulos | Proveedores_Rubros | Clientes | Ventas | Cajas | Auditorias | AdminWeb', NULL, 1, '2017-02-26 14:18:27', '2017-02-26 14:18:27'),
(127, 'roles', 10, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:21:04', '2017-02-26 14:21:04'),
(128, 'roles', 11, 'alta', 'nombre: Repositor modulos: Usuarios_Roles', NULL, 1, '2017-02-26 14:21:29', '2017-02-26 14:21:29'),
(129, 'roles', 11, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:23:28', '2017-02-26 14:23:28'),
(130, 'roles', 12, 'alta', 'nombre: Repo modulos: Usuarios_Roles', NULL, 1, '2017-02-26 14:23:48', '2017-02-26 14:23:48'),
(131, 'roles', 12, 'eliminacion', NULL, 'Repo', 1, '2017-02-26 14:29:10', '2017-02-26 14:29:10'),
(132, 'roles', 13, 'alta', 'nombre: Repositor modulos: Usuarios_Roles | Parametros | Insumos_Compras | Proveedores_Rubros', NULL, 1, '2017-02-26 14:29:40', '2017-02-26 14:29:40'),
(133, 'roles', 13, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:34:58', '2017-02-26 14:34:58'),
(134, 'roles', 14, 'alta', 'nombre: Repositor modulos:  | Parametros | Insumos_Compras | Proveedores_Rubros', NULL, 1, '2017-02-26 14:35:25', '2017-02-26 14:35:25'),
(135, 'roles', 14, 'eliminacion', NULL, 'Repositor', 1, '2017-02-26 14:40:41', '2017-02-26 14:40:41'),
(136, 'roles', 15, 'alta', 'nombre: Repositor modulos:  Parametros | Insumos_Compras | Proveedores_Rubros |', NULL, 1, '2017-02-26 14:41:06', '2017-02-26 14:41:06'),
(137, 'users', 4, 'alta', 'nombre: Donaruma Julian || email: vetas1@gmail.com || password: $2y$10$MTJb4fx2j5KQhuoUMtKtze26wMZoYOSsM0xatrgB19S7k5lEtPS0i || imagen:usuario_1488134988.jpg || rol_id:4', NULL, 1, '2017-02-26 18:49:49', '2017-02-26 18:49:49'),
(138, 'insumos', 31, 'eliminacion', NULL, 'nombre: Lapicera Eco || unidad_medida_id: 6 || alto: 0 || ancho:0 || stock:0 || stock minimo: 50 || costo: 3 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', 1, '2017-02-26 18:56:17', '2017-02-26 18:56:17'),
(139, 'insumos', 32, 'eliminacion', NULL, 'nombre: Lapicera Eco || unidad_medida_id: 6 || alto: 0 || ancho:0 || stock:34 || stock minimo: 50 || costo: 3 || costo anterior: 3 || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', 1, '2017-02-26 18:56:39', '2017-02-26 18:56:39'),
(140, 'ivas', 2, 'alta', 'iva: 0%', NULL, 1, '2017-02-26 19:54:09', '2017-02-26 19:54:09'),
(141, 'bancos', 3, 'alta', 'nombre: Galicia', NULL, 1, '2017-02-26 19:57:29', '2017-02-26 19:57:29'),
(142, 'bancos', 4, 'alta', 'nombre: HSBC', NULL, 1, '2017-02-26 19:57:53', '2017-02-26 19:57:53'),
(143, 'clientes', 7, 'alta', 'nombre: Javier Enrique || apellido: Sandoval || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 31844048 || descripcion:  || teléfono:  || email: sando458@gmail.com || localidad_id: 6 || direccion: Guatambu 458', NULL, 1, '2017-02-27 02:20:03', '2017-02-27 02:20:03'),
(144, 'articulos', 15, 'alta', 'nombre: Lapicera Eco personalizada 1 color || alto:  || ancho:  || tipo_id:1  || color_id: 0 || costo:4.7 || margen:110 || ganancia:5.17 || precioVta:11.94 || estado:se fabrica', NULL, 1, '2017-02-27 02:21:30', '2017-02-27 02:21:30'),
(145, 'clientes', 8, 'alta', 'nombre: Juan Pablo || apellido: Cáceres || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 34478385 || descripcion: Soy yo || teléfono: 34478385 || email: jpcaceres.nea@gmail.com || localidad_id: 1 || direccion: Monteagudo 695', NULL, 1, '2017-02-27 12:58:52', '2017-02-27 12:58:52'),
(146, 'provincias', 17, 'alta', 'nombre: Santa Catarina|| pais_id: 3', NULL, 1, '2017-02-27 14:23:40', '2017-02-27 14:23:40'),
(147, 'clientes', 9, 'alta', 'nombre: Paulo || apellido: Garnier || empresa:  || responsabilidad tributaria:2 || CUIT:20256456848 || DNI:  || descripcion: El policia de la seccional 145 sobre calle Rivadavia || teléfono: 3752740152 || email: paulo1982@gmail.com || localidad_id: 5 || direccion: Salta y Gral. Paz', NULL, 1, '2017-02-27 17:41:01', '2017-02-27 17:41:01'),
(148, 'clientes', 10, 'alta', 'nombre: Paulo || apellido: Garnier || empresa:  || responsabilidad tributaria:2 || CUIT:20256456848 || DNI:  || descripcion: El policia de la seccional 145 sobre calle Rivadavia || teléfono: 3752740152 || email: paulo1982@gmail.com || localidad_id: 5 || direccion: Salta y Gral. Paz', NULL, 1, '2017-02-27 17:41:02', '2017-02-27 17:41:02'),
(149, 'clientes', 10, 'modificacion', 'nombre: Marianela || apellido: Sanchez Rodriguez || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 28456208 || descripcion: La bruja del 71 || teléfono: 3624477022 || email: marukita@gmail.com || localidad_id: 12 || direccion: Valentin Alsina 608', 'nombre: Paulo || apellido: Garnier || empresa:  || responsabilidad tributaria:2 || CUIT:20256456848 || DNI:  || descripcion: El policia de la seccional 145 sobre calle Rivadavia || teléfono: 3752740152 || email: paulo1982@gmail.com || localidad_id: 5 || direccion: Salta y Gral. Paz', 1, '2017-02-27 18:55:06', '2017-02-27 18:55:06'),
(150, 'bancos', 5, 'alta', 'nombre: Comafi', NULL, 2, '2017-02-27 19:27:07', '2017-02-27 19:27:07'),
(151, 'roles', 16, 'alta', 'nombre: Fulanito modulos:  Insumos_Compras | Articulos | Ventas |', NULL, 1, '2017-02-27 20:22:17', '2017-02-27 20:22:17'),
(152, 'articulos', 16, 'alta', 'nombre: Calendario A3 full color || alto:  || ancho:  || tipo_id:3  || color_id: 0 || costo:2.04 || margen:150 || ganancia:3.06 || precioVta:6.17 || estado:se fabrica', NULL, 1, '2017-02-27 20:38:16', '2017-02-27 20:38:16'),
(153, 'bancos', 6, 'alta', 'nombre: Hipotecario', NULL, 1, '2017-02-27 20:49:34', '2017-02-27 20:49:34'),
(154, 'paises', 21, 'alta', 'nombre: Congo', NULL, 1, '2017-02-27 20:53:59', '2017-02-27 20:53:59'),
(155, 'compras', 106, 'alta', 'concepto: Reposicion de stock || importe insumos: 8100 || costo envio: 150 || importe total: 8250 || fecha_solicitud: 27-02-2017 || hora_solicitud: 18:10 || fecha compra:27-02-2017 || hora_compra:18:10 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-27 21:10:39', '2017-02-27 21:10:39'),
(156, 'localidades', 20, 'alta', 'nombre: Puerto Rico || provincia_id: 2', NULL, 2, '2017-02-27 22:36:54', '2017-02-27 22:36:54'),
(157, 'talles', 7, 'alta', 'talle: XS', NULL, 2, '2017-02-27 22:56:52', '2017-02-27 22:56:52'),
(158, 'articulos', 17, 'alta', 'nombre: Sobre Oficio tipo ingles 60gr personalizado || alto: 12 || ancho: 23.5 || tipo_id:3  || color_id: 0 || costo:1 || margen:210 || ganancia:2.1 || precioVta:3.75 || estado:se fabrica', NULL, 1, '2017-02-28 13:00:40', '2017-02-28 13:00:40'),
(159, 'articulos', 18, 'alta', 'nombre: Sobre Oficio tipo ingles 60gr personalizado || alto: 12 || ancho: 23.5 || tipo_id:3  || color_id: 0 || costo:1 || margen:210 || ganancia:2.1 || precioVta:3.75 || estado:se fabrica', NULL, 1, '2017-02-28 13:01:07', '2017-02-28 13:01:07'),
(160, 'ventas', 141, 'alta', 'fecha_pedido: 28-02-2017 || hora_pedido: 13:39 || fecha entrega estimada: 2017-02-28 || señado: 30 || usuario que tomo pedido: 1 || cliente_id: 7', NULL, 1, '2017-02-28 16:39:19', '2017-02-28 16:39:19'),
(161, 'ventas', 142, 'alta', 'fecha_pedido: 28-02-2017 || hora_pedido: 14:04 || fecha entrega estimada: 2017-02-28 || señado: 2279.1 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-02-28 17:04:46', '2017-02-28 17:04:46'),
(162, 'ventas', 143, 'alta', 'fecha_pedido: 28-02-2017 || hora_pedido: 14:04 || fecha entrega estimada: 2017-02-28 || señado: 2279.1 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-02-28 17:04:53', '2017-02-28 17:04:53'),
(163, 'ventas', 144, 'alta', 'fecha_pedido: 28-02-2017 || hora_pedido: 14:31 || fecha entrega estimada: 2017-02-28 || señado: 1995.94 || usuario que tomo pedido: 1 || cliente_id: 9', NULL, 1, '2017-02-28 17:31:09', '2017-02-28 17:31:09'),
(164, 'ventas', 145, 'alta', 'fecha_pedido: 28-02-2017 || hora_pedido: 14:43 || fecha entrega estimada: 02/28/2017 || señado: 1086.39 || usuario que tomo pedido: 1 || cliente_id: 9', NULL, 1, '2017-02-28 17:43:59', '2017-02-28 17:43:59'),
(165, 'colores', 9, 'alta', 'nombre: Marron || codigo: #874d47', NULL, 1, '2017-02-28 18:32:18', '2017-02-28 18:32:18'),
(166, 'compras', 107, 'alta', 'concepto: Reposicion de stock || importe insumos: 5600 || costo envio: 20 || importe total: 5620 || fecha_solicitud: 28-02-2017 || hora_solicitud: 15:33 || fecha compra:28-02-2017 || hora_compra:15:33 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-02-28 18:33:26', '2017-02-28 18:33:26'),
(167, 'articulos', 19, 'alta', 'nombre: Calendario A4 full color || alto: 21 || ancho: 29.7 || tipo_id:3  || color_id: 0 || costo:10.120000000000001 || margen:170 || ganancia:17.2 || precioVta:33.05 || estado:se fabrica', NULL, 1, '2017-02-28 19:35:31', '2017-02-28 19:35:31'),
(168, 'clientes', 11, 'alta', 'nombre: Christa || apellido: Kasey Lebsack || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 36019985 || descripcion:  || teléfono:  || email: Ellsworth96@yahoo.com || localidad_id: 17 || direccion: Deshaun Kuhlman 554', NULL, 1, '2017-03-01 17:52:43', '2017-03-01 17:52:43'),
(169, 'articulos', 20, 'alta', 'nombre: Llavero personalizado 44mm || alto:  || ancho:  || tipo_id:1  || color_id: 0 || costo:3 || margen:300 || ganancia:9 || precioVta:14.52 || estado:se fabrica', NULL, 1, '2017-03-01 17:55:02', '2017-03-01 17:55:02'),
(170, 'ventas', 146, 'alta', 'fecha_pedido: 01-03-2017 || hora_pedido: 14:57 || fecha entrega estimada: 2017-03-03 || señado: 217.79 || usuario que tomo pedido: 1 || cliente_id: 11', NULL, 1, '2017-03-01 17:57:04', '2017-03-01 17:57:04'),
(171, 'users', 5, 'alta', 'nombre: Porzingis Kristaps || email: porzingis@gmail.com || password: $2y$10$chVaVwPHaU7xou648V36C.dqdIceKxrEJX3HfsYN0pqT4kPHxr7.K || imagen:usuario_1489775444.jpg || rol_id:3', NULL, 1, '2017-03-17 18:30:45', '2017-03-17 18:30:45'),
(172, 'provincias', 18, 'alta', 'nombre: Salta|| pais_id: 1', NULL, 3, '2017-03-18 15:07:42', '2017-03-18 15:07:42'),
(173, 'talles', 8, 'alta', 'talle: XXS', NULL, 3, '2017-03-18 15:29:54', '2017-03-18 15:29:54'),
(174, 'compras', 108, 'alta', 'concepto: Reposicion de stock || importe insumos: 1700 || costo envio: 50 || importe total: 1750 || fecha_solicitud: 20-03-2017 || hora_solicitud: 19:03 || fecha compra:20-03-2017 || hora_compra:19:03 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: ', NULL, 1, '2017-03-20 22:03:36', '2017-03-20 22:03:36'),
(175, 'ventas', 147, 'alta', 'fecha_pedido: 20-03-2017 || hora_pedido: 20:06 || fecha entrega estimada: 03/20/2017 || señado: 3.75 || usuario que tomo pedido: 1 || cliente_id: 11', NULL, 1, '2017-03-20 23:06:12', '2017-03-20 23:06:12'),
(176, 'ventas', 148, 'alta', 'fecha_pedido: 20-03-2017 || hora_pedido: 20:34 || fecha entrega estimada: 2017-03-20 || señado: 1309.44 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-03-20 23:34:24', '2017-03-20 23:34:24'),
(177, 'ventas', 149, 'alta', 'fecha_pedido: 29-03-2017 || hora_pedido: 19:30 || fecha entrega estimada: 2017-03-30 || señado: 60.6 || usuario que tomo pedido: 1 || cliente_id: 5', NULL, 1, '2017-03-29 22:30:16', '2017-03-29 22:30:16'),
(178, 'ventas', 151, 'alta', 'fecha_pedido: 01-04-2017 || hora_pedido: 10:12 || fecha entrega estimada: 2017-04-03 || señado: 10 || usuario que tomo pedido: 1 || cliente_id: 9', NULL, 1, '2017-04-01 13:12:06', '2017-04-01 13:12:06'),
(179, 'ventas', 152, 'alta', 'fecha_pedido: 01-04-2017 || hora_pedido: 11:35 || fecha entrega estimada: 04/01/2017 || señado: 23.88 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-04-01 14:35:19', '2017-04-01 14:35:19'),
(180, 'cheques', 50, 'alta', 'nro_serie: 5877421544 || monto: 1352.96 || cliente_id: 4 || fecha_emision: 2017-04-01 || fecha_cobro: 2017-04-20 || banco_id: 1 || sucursal: 3', NULL, 1, '2017-04-01 19:03:29', '2017-04-01 19:03:29'),
(181, 'ventas', 153, 'alta', 'fecha_pedido: 01-04-2017 || hora_pedido: 16:03 || fecha entrega estimada: 2017-04-03 || señado: 1352.96 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-01 19:03:29', '2017-04-01 19:03:29'),
(182, 'ventas', 154, 'alta', 'fecha_pedido: 02-04-2017 || hora_pedido: 09:38 || fecha entrega estimada: 04/02/2017 || señado: 36.3 || usuario que tomo pedido: 2 || cliente_id: 8', NULL, 2, '2017-04-02 12:38:55', '2017-04-02 12:38:55'),
(183, 'ventas', 155, 'alta', 'fecha_pedido: 02-04-2017 || hora_pedido: 10:42 || fecha entrega estimada: 04/02/2017 || señado: 42 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-04-02 13:42:41', '2017-04-02 13:42:41'),
(184, 'ventas', 156, 'alta', 'fecha_pedido: 02-04-2017 || hora_pedido: 11:09 || fecha entrega estimada: 2017-04-03 || señado: 0 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-04-02 14:09:49', '2017-04-02 14:09:49'),
(186, 'articulos', 22, 'alta', 'nombre: Remera Blanca XL Estampa Simple || alto:  || ancho:  || tipo_id:2 4 || color_id: 1 || costo:46.39 || margen:150 || ganancia:69.58 || precioVta:140.32 || estado:se fabrica', NULL, 2, '2017-04-02 20:53:05', '2017-04-02 20:53:05'),
(187, 'articulos', 23, 'alta', 'nombre: Remera Roja Algodon Talle L || alto:  || ancho:  || tipo_id:2 3 || color_id: 4 || costo:24 || margen:100 || ganancia:24 || precioVta:58.08 || estado:se fabrica', NULL, 2, '2017-04-02 21:25:41', '2017-04-02 21:25:41'),
(213, 'ventas', 171, 'alta', 'fecha_pedido: 06-04-2017 || hora_pedido: 14:40 || fecha entrega estimada: 2017-04-06 || señado: 31.04 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-04-06 17:40:00', '2017-04-06 17:40:00'),
(214, 'ventas', 172, 'alta', 'fecha_pedido: 06-04-2017 || hora_pedido: 14:55 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 8.08 || usuario que tomo pedido: 1 || cliente_id: 5', NULL, 1, '2017-04-06 17:55:53', '2017-04-06 17:55:53'),
(215, 'cheques', 54, 'alta', 'nro_serie: 25887461 || monto: 20 || cliente_id: 12 || fecha_emision: 2017-04-06 || fecha_cobro: 2017-04-14 || banco_id: 2 || sucursal: 3', NULL, 1, '2017-04-06 18:09:03', '2017-04-06 18:09:03'),
(216, 'ventas', 173, 'alta', 'fecha_pedido: 06-04-2017 || hora_pedido: 15:09 || fecha entrega estimada: 2017-04-06 || seÃ±ado: 20 || usuario que tomo pedido: 1 || cliente_id: 12', NULL, 1, '2017-04-06 18:09:03', '2017-04-06 18:09:03'),
(217, 'ventas', 174, 'alta', 'fecha_pedido: 09-04-2017 || hora_pedido: 13:29 || fecha entrega estimada: 04/09/2017 || señado: 15.52 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-04-09 16:29:18', '2017-04-09 16:29:18'),
(218, 'ventas', 175, 'alta', 'fecha_pedido: 09-04-2017 || hora_pedido: 20:35 || fecha entrega estimada: 2017-04-09 || seÃ±ado: 0 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-04-09 23:35:39', '2017-04-09 23:35:39'),
(219, 'ventas', 176, 'alta', 'fecha_pedido: 10-04-2017 || hora_pedido: 00:48 || fecha entrega estimada: 04/10/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-04-10 03:48:25', '2017-04-10 03:48:25'),
(220, 'ventas', 177, 'alta', 'fecha_pedido: 10-04-2017 || hora_pedido: 00:50 || fecha entrega estimada:  || seÃ±ado: 15.02 || usuario que tomo pedido: 2 || cliente_id: 11', NULL, 2, '2017-04-10 03:50:54', '2017-04-10 03:50:54'),
(221, 'cheques', 55, 'alta', 'nro_serie: 47445 || monto: 10 || cliente_id: 4 || fecha_emision: 0077-05-08 || fecha_cobro: 2017-04-29 || banco_id: 6 || sucursal: 3', NULL, 1, '2017-04-11 22:23:08', '2017-04-11 22:23:08'),
(222, 'ventas', 178, 'alta', 'fecha_pedido: 11-04-2017 || hora_pedido: 19:23 || fecha entrega estimada: 10/04/2017 || seÃ±ado: 10 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-11 22:23:08', '2017-04-11 22:23:08'),
(223, 'ventas', 179, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 16:14 || fecha entrega estimada: 04/12/2017 || seÃ±ado: 72.6 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-12 19:14:00', '2017-04-12 19:14:00'),
(224, 'ventas', 180, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 17:25 || fecha entrega estimada: 04/12/2017 || seÃ±ado: 72.6 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-12 20:25:15', '2017-04-12 20:25:15'),
(225, 'ventas', 181, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 17:36 || fecha entrega estimada:  || seÃ±ado: 21.78 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-12 20:36:09', '2017-04-12 20:36:09'),
(226, 'ventas', 182, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 18:02 || fecha entrega estimada: 10/04/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 1 || cliente_id: 2', NULL, 1, '2017-04-12 21:02:53', '2017-04-12 21:02:53'),
(227, 'ventas', 183, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 18:32 || fecha entrega estimada: 10/04/2017 || seÃ±ado: 31.04 || usuario que tomo pedido: 1 || cliente_id: 2', NULL, 1, '2017-04-12 21:32:45', '2017-04-12 21:32:45'),
(228, 'ventas', 184, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 18:47 || fecha entrega estimada: 17/04/2017 || seÃ±ado: 5 || usuario que tomo pedido: 1 || cliente_id: 13', NULL, 1, '2017-04-12 21:47:15', '2017-04-12 21:47:15'),
(229, 'ventas', 185, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 18:57 || fecha entrega estimada: 19/04/2017 || seÃ±ado: 21 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-12 21:57:34', '2017-04-12 21:57:34'),
(230, 'ventas', 186, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 19:02 || fecha entrega estimada: 28/04/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 1 || cliente_id: 7', NULL, 1, '2017-04-12 22:02:02', '2017-04-12 22:02:02'),
(231, 'ventas', 187, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 19:06 || fecha entrega estimada: 29/04/2017 || seÃ±ado: 29.04 || usuario que tomo pedido: 1 || cliente_id: 11', NULL, 1, '2017-04-12 22:06:40', '2017-04-12 22:06:40'),
(232, 'ventas', 188, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 20:00 || fecha entrega estimada: 25/04/2017 || seÃ±ado: 7.76 || usuario que tomo pedido: 1 || cliente_id: 6', NULL, 1, '2017-04-12 23:00:41', '2017-04-12 23:00:41'),
(233, 'ventas', 189, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 20:06 || fecha entrega estimada: 14/04/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-04-12 23:06:48', '2017-04-12 23:06:48'),
(234, 'ventas', 190, 'alta', 'fecha_pedido: 12-04-2017 || hora_pedido: 20:09 || fecha entrega estimada: 13/04/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-04-12 23:09:04', '2017-04-12 23:09:04'),
(235, 'ventas', 191, 'alta', 'fecha_pedido: 16-04-2017 || hora_pedido: 20:15 || fecha entrega estimada: 17/04/2017 || seÃ±ado: 7 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-16 23:15:09', '2017-04-16 23:15:09'),
(236, 'ventas', 192, 'alta', 'fecha_pedido: 18-04-2017 || hora_pedido: 17:38 || fecha entrega estimada: 20/04/2017 || seÃ±ado: 73.2 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-04-18 20:38:39', '2017-04-18 20:38:39'),
(237, 'bancos', 7, 'alta', 'nombre: Nación', NULL, 2, '2017-04-28 14:44:46', '2017-04-28 14:44:46'),
(238, 'ventas', 193, 'alta', 'fecha_pedido: 28-04-2017 || hora_pedido: 11:49 || fecha entrega estimada: 04/05/2017 || seÃ±ado: 180 || usuario que tomo pedido: 2 || cliente_id: 6', NULL, 2, '2017-04-28 14:49:18', '2017-04-28 14:49:18'),
(239, 'articulos', 27, 'alta', 'nombre: Gorra Verde Militar Personalizada || alto:  || ancho:  || tipo_id:2 0 || color_id: 0 || costo:34 || margen:100 || ganancia:34 || precioVta:82.28 || estado:se fabrica', NULL, 2, '2017-04-28 23:15:17', '2017-04-28 23:15:17'),
(240, 'compras', 1, 'alta', 'concepto: Reposicion de stock || importe insumos: 70 || costo envio:  || importe total: 70 || fecha_solicitud: 28-04-2017 || hora_solicitud: 20:32 || fecha compra:28-04-2017 || hora_compra:20:32 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 2', NULL, 2, '2017-04-28 23:32:25', '2017-04-28 23:32:25'),
(241, 'ventas', 194, 'alta', 'fecha_pedido: 02/05/2017 || hora_pedido: 23:37 || fecha entrega estimada: 02/05/2017 || seÃ±ado: 103.28 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-05-03 02:37:59', '2017-05-03 02:37:59'),
(242, 'ventas', 195, 'alta', 'fecha_pedido: 06/05/2017 || hora_pedido: 09:39 || fecha entrega estimada: 06/05/2017 || seÃ±ado: 202.95 || usuario que tomo pedido: 1 || cliente_id: 9', NULL, 1, '2017-05-06 12:39:26', '2017-05-06 12:39:26'),
(243, 'ventas', 196, 'alta', 'fecha_pedido: 06/05/2017 || hora_pedido: 17:28 || fecha entrega estimada: 06/05/2017 || seÃ±ado: 6.17 || usuario que tomo pedido: 1 || cliente_id: 7', NULL, 1, '2017-05-06 20:28:58', '2017-05-06 20:28:58'),
(244, 'ventas', 197, 'alta', 'fecha_pedido: 06/05/2017 || hora_pedido: 17:44 || fecha entrega estimada: 06/05/2017 || seÃ±ado: 18.93 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-06 20:44:26', '2017-05-06 20:44:26'),
(245, 'cheques', 56, 'alta', 'nro_serie: 4564848994 || monto: 140.32 || cliente_id: 12 || fecha_emision: 2017-05-06 || fecha_cobro: 2017-06-10 || banco_id: 1 || sucursal: 4', NULL, 1, '2017-05-06 21:11:31', '2017-05-06 21:11:31'),
(246, 'ventas', 198, 'alta', 'fecha_pedido: 06/05/2017 || hora_pedido: 18:11 || fecha entrega estimada: 06/05/2017 || seÃ±ado: 140.32 || usuario que tomo pedido: 1 || cliente_id: 12', NULL, 1, '2017-05-06 21:11:31', '2017-05-06 21:11:31'),
(247, 'ventas', 199, 'alta', 'fecha_pedido: 21/05/2017 || hora_pedido: 16:10 || fecha entrega estimada: 21/05/2017 || seÃ±ado: 23.28 || usuario que tomo pedido: 1 || cliente_id: 8', NULL, 1, '2017-05-21 19:10:57', '2017-05-21 19:10:57'),
(248, 'ventas', 200, 'alta', 'fecha_pedido: 23/05/2017 || hora_pedido: 09:58 || fecha entrega estimada: 24/05/2017 || seÃ±ado: 21.78 || usuario que tomo pedido: 1 || cliente_id: 8', NULL, 1, '2017-05-23 12:58:39', '2017-05-23 12:58:39');
INSERT INTO `auditorias` (`id`, `tabla`, `elemento_id`, `accion`, `dato_nuevo`, `dato_anterior`, `usuario_id`, `created_at`, `updated_at`) VALUES
(249, 'ventas', 201, 'alta', 'fecha_pedido: 25/05/2017 || hora_pedido: 19:02 || fecha entrega estimada: 25/05/2017 || seÃ±ado: 10 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-25 22:02:27', '2017-05-25 22:02:27'),
(250, 'ventas', 202, 'alta', 'fecha_pedido: 26/05/2017 || hora_pedido: 00:40 || fecha entrega estimada: 26/05/2017 || seÃ±ado: 23.88 || usuario que tomo pedido: 2 || cliente_id: 1', NULL, 2, '2017-05-26 03:40:07', '2017-05-26 03:40:07'),
(251, 'ventas', 203, 'alta', 'fecha_pedido: 26/05/2017 || hora_pedido: 00:51 || fecha entrega estimada: 26/05/2017 || seÃ±ado: 246.84 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-26 03:51:55', '2017-05-26 03:51:55'),
(252, 'ventas', 204, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 19:32 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 290.4 || usuario que tomo pedido: 2 || cliente_id: 1', NULL, 2, '2017-05-28 22:32:39', '2017-05-28 22:32:39'),
(253, 'ventas', 205, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 20:58 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 29.04 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-28 23:58:57', '2017-05-28 23:58:57'),
(254, 'ventas', 206, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 21:13 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 11.94 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-29 00:13:47', '2017-05-29 00:13:47'),
(255, 'ventas', 207, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 21:21 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 63 || usuario que tomo pedido: 2 || cliente_id: 1', NULL, 2, '2017-05-29 00:21:04', '2017-05-29 00:21:04'),
(256, 'ventas', 208, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 21:25 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 140.32 || usuario que tomo pedido: 2 || cliente_id: 8', NULL, 2, '2017-05-29 00:25:59', '2017-05-29 00:25:59'),
(257, 'ventas', 209, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 21:33 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 155.48 || usuario que tomo pedido: 2 || cliente_id: 1', NULL, 2, '2017-05-29 00:33:43', '2017-05-29 00:33:43'),
(258, 'ventas', 210, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 22:08 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 21.78 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-29 01:08:04', '2017-05-29 01:08:04'),
(259, 'ventas', 211, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 22:17 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 7.76 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-29 01:17:36', '2017-05-29 01:17:36'),
(260, 'ventas', 212, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 22:22 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 39.68 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-29 01:22:16', '2017-05-29 01:22:16'),
(261, 'ventas', 213, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 22:29 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 33.05 || usuario que tomo pedido: 2 || cliente_id: 1', NULL, 2, '2017-05-29 01:29:48', '2017-05-29 01:29:48'),
(262, 'ventas', 214, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 22:39 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-05-29 01:39:23', '2017-05-29 01:39:23'),
(263, 'ventas', 215, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 23:02 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-29 02:02:09', '2017-05-29 02:02:09'),
(264, 'ventas', 216, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 23:10 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-29 02:10:49', '2017-05-29 02:10:49'),
(265, 'ventas', 217, 'alta', 'fecha_pedido: 28/05/2017 || hora_pedido: 23:17 || fecha entrega estimada: 28/05/2017 || seÃ±ado: 29.04 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-29 02:17:27', '2017-05-29 02:17:27'),
(266, 'ventas', 218, 'alta', 'fecha_pedido: 29/05/2017 || hora_pedido: 21:48 || fecha entrega estimada: 29/05/2017 || seÃ±ado: 33.05 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-30 00:48:12', '2017-05-30 00:48:12'),
(267, 'ventas', 219, 'alta', 'fecha_pedido: 29/05/2017 || hora_pedido: 22:03 || fecha entrega estimada: 29/05/2017 || seÃ±ado: 43.56 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-30 01:03:05', '2017-05-30 01:03:05'),
(268, 'ventas', 220, 'alta', 'fecha_pedido: 29/05/2017 || hora_pedido: 22:27 || fecha entrega estimada: 29/05/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 1 || cliente_id: 7', NULL, 1, '2017-05-30 01:27:57', '2017-05-30 01:27:57'),
(269, 'ventas', 221, 'alta', 'fecha_pedido: 30/05/2017 || hora_pedido: 10:53 || fecha entrega estimada: 30/05/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 1 || cliente_id: 7', NULL, 1, '2017-05-30 13:53:56', '2017-05-30 13:53:56'),
(270, 'cheques', 57, 'alta', 'nro_serie: 62628354221 || monto: 7.26 || cliente_id: 4 || fecha_emision: 2017-05-30 || fecha_cobro: 2017-05-31 || banco_id: 5 || sucursal: 4', NULL, 1, '2017-05-30 14:14:55', '2017-05-30 14:14:55'),
(271, 'ventas', 222, 'alta', 'fecha_pedido: 30/05/2017 || hora_pedido: 11:14 || fecha entrega estimada: 30/05/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-05-30 14:14:55', '2017-05-30 14:14:55'),
(272, 'ventas', 223, 'alta', 'fecha_pedido: 30/05/2017 || hora_pedido: 12:55 || fecha entrega estimada: 30/05/2017 || seÃ±ado: 57.51 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-30 15:55:43', '2017-05-30 15:55:43'),
(273, 'cheques', 58, 'alta', 'nro_serie: 75995979 || monto: 14.52 || cliente_id: 1 || fecha_emision: 2017-05-26 || fecha_cobro: 2017-06-04 || banco_id: 5 || sucursal: 2', NULL, 1, '2017-05-30 16:46:07', '2017-05-30 16:46:07'),
(274, 'ventas', 224, 'alta', 'fecha_pedido: 30/05/2017 || hora_pedido: 13:46 || fecha entrega estimada: 30/05/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 1 || cliente_id: 1', NULL, 1, '2017-05-30 16:46:08', '2017-05-30 16:46:08'),
(275, 'ventas', 225, 'alta', 'fecha_pedido: 31/05/2017 || hora_pedido: 10:03 || fecha entrega estimada: 02/06/2017 || seÃ±ado: 2 || usuario que tomo pedido: 1 || cliente_id: 5', NULL, 1, '2017-05-31 13:03:34', '2017-05-31 13:03:34'),
(276, 'ventas', 226, 'alta', 'fecha_pedido: 01/06/2017 || hora_pedido: 13:31 || fecha entrega estimada: 02/06/2017 || seÃ±ado: 4 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-06-01 16:31:27', '2017-06-01 16:31:27'),
(277, 'ventas', 227, 'alta', 'fecha_pedido: 01/06/2017 || hora_pedido: 13:39 || fecha entrega estimada: 01/06/2017 || seÃ±ado: 4 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-06-01 16:39:28', '2017-06-01 16:39:28'),
(278, 'ventas', 228, 'alta', 'fecha_pedido: 02/06/2017 || hora_pedido: 00:08 || fecha entrega estimada: 03/06/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-06-02 03:08:12', '2017-06-02 03:08:12'),
(279, 'ventas', 229, 'alta', 'fecha_pedido: 02/06/2017 || hora_pedido: 11:01 || fecha entrega estimada: 02/06/2017 || seÃ±ado: 36.3 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-06-02 14:01:11', '2017-06-02 14:01:11'),
(280, 'ventas', 230, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 11:56 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 73.2 || usuario que tomo pedido: 2 || cliente_id: 8', NULL, 2, '2017-06-04 14:56:48', '2017-06-04 14:56:48'),
(281, 'ventas', 231, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 12:38 || fecha entrega estimada:  || seÃ±ado: 7 || usuario que tomo pedido: 2 || cliente_id: 7', NULL, 2, '2017-06-04 15:38:06', '2017-06-04 15:38:06'),
(282, 'ventas', 232, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 12:38 || fecha entrega estimada: 22/06/2017 || seÃ±ado: 7 || usuario que tomo pedido: 2 || cliente_id: 7', NULL, 2, '2017-06-04 15:38:51', '2017-06-04 15:38:51'),
(283, 'cheques', 59, 'alta', 'nro_serie: 34235 || monto: 7 || cliente_id: 4 || fecha_emision: 2017-06-04 || fecha_cobro: 2017-06-10 || banco_id: 4 || sucursal: 3', NULL, 2, '2017-06-04 15:40:51', '2017-06-04 15:40:51'),
(284, 'ventas', 233, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 12:40 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 7 || usuario que tomo pedido: 2 || cliente_id: 4', NULL, 2, '2017-06-04 15:40:51', '2017-06-04 15:40:51'),
(285, 'ventas', 234, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 13:43 || fecha entrega estimada: 21/06/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 2 || cliente_id: 8', NULL, 2, '2017-06-04 16:43:58', '2017-06-04 16:43:58'),
(286, 'ventas', 235, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 13:44 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 2 || cliente_id: 8', NULL, 2, '2017-06-04 16:44:37', '2017-06-04 16:44:37'),
(287, 'ventas', 236, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 14:00 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 2 || cliente_id: 7', NULL, 2, '2017-06-04 17:00:15', '2017-06-04 17:00:15'),
(288, 'ventas', 237, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 14:01 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 7.26 || usuario que tomo pedido: 2 || cliente_id: 7', NULL, 2, '2017-06-04 17:01:11', '2017-06-04 17:01:11'),
(289, 'ventas', 238, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 14:02 || fecha entrega estimada: 04/06/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 2 || cliente_id: 13', NULL, 2, '2017-06-04 17:02:13', '2017-06-04 17:02:13'),
(290, 'cheques', 60, 'alta', 'nro_serie: 71235190 || monto: 7.76 || cliente_id: 1 || fecha_emision: 2017-06-04 || fecha_cobro: 2017-06-30 || banco_id: 3 || sucursal: 8', NULL, 2, '2017-06-04 17:11:02', '2017-06-04 17:11:02'),
(291, 'ventas', 239, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 14:11 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 7.76 || usuario que tomo pedido: 2 || cliente_id: 1', NULL, 2, '2017-06-04 17:11:02', '2017-06-04 17:11:02'),
(292, 'clientes', 14, 'alta', 'nombre: Facundo || apellido: Yatchesen || empresa:  || responsabilidad tributaria:2 || CUIT:20324175754 || DNI:  || descripcion: Licenciado asesor de la catedra Proyecto Software || teléfono: 3752668874 || email: facundoyatchesen@gmail.com || localidad_id: 5 || direccion: Bolivar 677', NULL, 2, '2017-06-04 17:33:00', '2017-06-04 17:33:00'),
(293, 'ventas', 240, 'alta', 'fecha_pedido: 04/06/2017 || hora_pedido: 14:42 || fecha entrega estimada: 05/06/2017 || seÃ±ado: 210 || usuario que tomo pedido: 2 || cliente_id: 14', NULL, 2, '2017-06-04 17:42:21', '2017-06-04 17:42:21'),
(294, 'ventas', 1, 'alta', 'fecha_pedido: 05/06/2017 || hora_pedido: 12:59 || fecha entrega estimada: 05/06/2017 || seÃ±ado: 79.86 || usuario que tomo pedido: 1 || cliente_id: 2', NULL, 1, '2017-06-05 15:59:13', '2017-06-05 15:59:13'),
(295, 'ventas', 2, 'alta', 'fecha_pedido: 05/06/2017 || hora_pedido: 23:21 || fecha entrega estimada: 06/06/2017 || seÃ±ado: 14.52 || usuario que tomo pedido: 2 || cliente_id: 14', NULL, 2, '2017-06-06 02:21:21', '2017-06-06 02:21:21'),
(296, 'ventas', 3, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 09:39 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 11.94 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-06-07 12:39:07', '2017-06-07 12:39:07'),
(297, 'ventas', 4, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 09:44 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 7 || usuario que tomo pedido: 2 || cliente_id: 25', NULL, 2, '2017-06-07 12:44:46', '2017-06-07 12:44:46'),
(298, 'ventas', 5, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 12:45 || fecha entrega estimada: 09/06/2017 || seÃ±ado: 5 || usuario que tomo pedido: 2 || cliente_id: 7', NULL, 2, '2017-06-07 15:45:33', '2017-06-07 15:45:33'),
(299, 'ventas', 6, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 12:56 || fecha entrega estimada: 10/06/2017 || seÃ±ado: 10 || usuario que tomo pedido: 2 || cliente_id: 14', NULL, 2, '2017-06-07 15:56:52', '2017-06-07 15:56:52'),
(300, 'ventas', 7, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 13:09 || fecha entrega estimada: 09/06/2017 || seÃ±ado: 4 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-06-07 16:09:36', '2017-06-07 16:09:36'),
(301, 'ventas', 8, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 13:16 || fecha entrega estimada: 09/06/2017 || seÃ±ado: 15.52 || usuario que tomo pedido: 2 || cliente_id: 7', NULL, 2, '2017-06-07 16:16:45', '2017-06-07 16:16:45'),
(302, 'ventas', 9, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 13:17 || fecha entrega estimada: 10/06/2017 || seÃ±ado: 5 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-06-07 16:17:38', '2017-06-07 16:17:38'),
(303, 'ventas', 10, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:18 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 15 || usuario que tomo pedido: 2 || cliente_id: 6', NULL, 2, '2017-06-07 17:18:16', '2017-06-07 17:18:16'),
(304, 'ventas', 11, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:22 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 50 || usuario que tomo pedido: 2 || cliente_id: 10', NULL, 2, '2017-06-07 17:22:21', '2017-06-07 17:22:21'),
(305, 'ventas', 12, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:24 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 20 || usuario que tomo pedido: 2 || cliente_id: 9', NULL, 2, '2017-06-07 17:24:55', '2017-06-07 17:24:55'),
(306, 'ventas', 13, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:27 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 15 || usuario que tomo pedido: 2 || cliente_id: 8', NULL, 2, '2017-06-07 17:27:33', '2017-06-07 17:27:33'),
(307, 'ventas', 14, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:29 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 20 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-06-07 17:29:21', '2017-06-07 17:29:21'),
(308, 'ventas', 15, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:31 || fecha entrega estimada: 09/06/2017 || seÃ±ado: 200 || usuario que tomo pedido: 2 || cliente_id: 12', NULL, 2, '2017-06-07 17:31:10', '2017-06-07 17:31:10'),
(309, 'ventas', 16, 'alta', 'fecha_pedido: 07/06/2017 || hora_pedido: 14:38 || fecha entrega estimada: 09/06/2017 || seÃ±ado: 30 || usuario que tomo pedido: 2 || cliente_id: 2', NULL, 2, '2017-06-07 17:38:25', '2017-06-07 17:38:25'),
(310, 'articulos', 28, 'alta', 'nombre: Repasador descartable 3 colores || alto: 245 || ancho: 150 || tipo_id:3  || color_id: 0 || costo:2.34 || margen:150 || ganancia:3.51 || precioVta:7.06 || estado:se fabrica', NULL, 2, '2017-06-08 03:02:23', '2017-06-08 03:02:23'),
(311, 'compras', 2, 'alta', 'concepto: Reposicion de stock || importe insumos: 4275 || costo envio: 0 || importe total: 4275 || fecha_solicitud: 08-06-2017 || hora_solicitud: 12:13 || fecha compra:08-06-2017 || hora_compra:12:13 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 2', NULL, 2, '2017-06-08 15:13:17', '2017-06-08 15:13:17'),
(312, 'compras', 3, 'alta', 'concepto: Reposicion de stock || importe insumos: 11400 || costo envio: 0 || importe total: 11400 || fecha_solicitud: 08-06-2017 || hora_solicitud: 12:38 || fecha compra:08-06-2017 || hora_compra:12:38 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 2', NULL, 2, '2017-06-08 15:38:31', '2017-06-08 15:38:31'),
(313, 'compras', 4, 'alta', 'concepto: Reposicion de stock || importe insumos: 1750 || costo envio:  || importe total: 1750 || fecha_solicitud: 08-06-2017 || hora_solicitud: 12:47 || fecha compra:08-06-2017 || hora_compra:12:47 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 2', NULL, 2, '2017-06-08 15:47:18', '2017-06-08 15:47:18'),
(314, 'ventas', 17, 'alta', 'fecha_pedido: 08/06/2017 || hora_pedido: 13:15 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 435.59 || usuario que tomo pedido: 2 || cliente_id: 29', NULL, 2, '2017-06-08 16:15:30', '2017-06-08 16:15:30'),
(315, 'proveedores', 14, 'alta', 'nombre: Descartables Quomm''pinche || cuit: 2031456621 || localidad_id: 1 || direccion:Laprita 744 || horario de atencion: 08:30 a  y de 16:00 a 19:30 || teléfono:3624558410 || celular:3624236411 || web:elquommpinche.com || rubro_id:7 || imagen:GN_1496941631.png', NULL, 2, '2017-06-08 17:07:11', '2017-06-08 17:07:11'),
(316, 'insumos', 44, 'alta', 'nombre: Carton Corrugado || unidad_medida_id: 6 || alto: 500 || ancho:250 || stock:10 || stock minimo: 10 || costo: 8.5 || costo anterior:  || descripcion:  || talle_id:  || color_id: 0 || material_id: 5', NULL, 2, '2017-06-08 23:00:26', '2017-06-08 23:00:26'),
(317, 'articulos', 29, 'alta', 'nombre: Posavaso 80mm  || alto: 0.5 || ancho: 0.5 || tipo_id:3  || color_id: 0 || costo:19.5 || margen:65 || ganancia:12.67 || precioVta:38.92 || estado:se fabrica', NULL, 2, '2017-06-08 23:05:14', '2017-06-08 23:05:14'),
(318, 'ventas', 18, 'alta', 'fecha_pedido: 08/06/2017 || hora_pedido: 20:31 || fecha entrega estimada: 08/06/2017 || seÃ±ado: 2431.94 || usuario que tomo pedido: 2 || cliente_id: 12', NULL, 2, '2017-06-08 23:31:48', '2017-06-08 23:31:48'),
(319, 'insumos', 45, 'alta', 'nombre: Carton Mocrocorrugado 115x80 || unidad_medida_id: 6 || alto: 115 || ancho:80 || stock:0 || stock minimo: 25 || costo: 7 || costo anterior:  || descripcion:  || talle_id:  || color_id: 0 || material_id: 5', NULL, 2, '2017-06-09 09:30:41', '2017-06-09 09:30:41'),
(320, 'articulos', 30, 'alta', 'nombre: Caja p/ pizzas 40x40 || alto: 40 || ancho: 40 || tipo_id:0  || color_id: 0 || costo:8.75 || margen:7 || ganancia:0.61 || precioVta:11.32 || estado:se fabrica', NULL, 2, '2017-06-09 09:33:22', '2017-06-09 09:33:22'),
(321, 'compras', 5, 'alta', 'concepto: Reposicion de stock || importe insumos: 4135 || costo envio: 150 || importe total: 4285 || fecha_solicitud: 09-06-2017 || hora_solicitud: 06:49 || fecha compra:09-06-2017 || hora_compra:06:49 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 2', NULL, 2, '2017-06-09 09:49:20', '2017-06-09 09:49:20'),
(322, 'ventas', 19, 'alta', 'fecha_pedido: 09/06/2017 || hora_pedido: 06:56 || fecha entrega estimada: 11/06/2017 || seÃ±ado: 1238.17 || usuario que tomo pedido: 2 || cliente_id: 26', NULL, 2, '2017-06-09 09:56:26', '2017-06-09 09:56:26'),
(323, 'cheques', 61, 'alta', 'nro_serie: 45361223854894102 || monto: 366.52 || cliente_id: 9 || fecha_emision: 2017-06-23 || fecha_cobro: 2017-06-24 || banco_id: 2 || sucursal: 45', NULL, 2, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(324, 'ventas', 20, 'alta', 'fecha_pedido: 23/06/2017 || hora_pedido: 10:04 || fecha entrega estimada: 26/06/2017 || seÃ±ado: 366.52 || usuario que tomo pedido: 2 || cliente_id: 9', NULL, 2, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(325, 'articulos', 29, 'eliminacion', NULL, 'nombre: Posavaso 80mm  || alto:  || ancho: 0.5 || tipo_id:3 0 || color_id: 4 || costo:17.5 || margen:80 || ganancia:14 || precioVta:38.11 || estado:se fabrica', 2, '2017-06-24 03:31:19', '2017-06-24 03:31:19'),
(326, 'articulos', 29, 'eliminacion', NULL, 'nombre: Posavaso 80mm  || alto:  || ancho: 0.5 || tipo_id:3 0 || color_id: 4 || costo:17.5 || margen:80 || ganancia:14 || precioVta:38.11 || estado:se fabrica', 2, '2017-06-24 03:39:29', '2017-06-24 03:39:29'),
(327, 'compras', 6, 'alta', 'concepto: Reposicion de stock || importe insumos: 8 || costo envio: 50 || importe total: 58 || fecha_solicitud: 25-06-2017 || hora_solicitud: 00:22 || fecha compra:25-06-2017 || hora_compra:00:22 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 2', NULL, 2, '2017-06-25 03:22:29', '2017-06-25 03:22:29'),
(328, 'cheques', 62, 'alta', 'nro_serie: 1101681681381 || monto: 200 || cliente_id: 14 || fecha_emision: 2017-06-25 || fecha_cobro: 2017-07-15 || banco_id: 7 || sucursal: 61', NULL, 2, '2017-06-25 03:52:06', '2017-06-25 03:52:06'),
(329, 'ventas', 21, 'alta', 'fecha_pedido: 25/06/2017 || hora_pedido: 00:52 || fecha entrega estimada: 27/06/2017 || seÃ±ado: 200 || usuario que tomo pedido: 2 || cliente_id: 14', NULL, 2, '2017-06-25 03:52:06', '2017-06-25 03:52:06'),
(330, 'ventas', 22, 'alta', 'fecha_pedido: 25/06/2017 || hora_pedido: 19:42 || fecha entrega estimada: 26/06/2017 || seÃ±ado: 10 || usuario que tomo pedido: 1 || cliente_id: 2', NULL, 1, '2017-06-25 22:42:21', '2017-06-25 22:42:21'),
(331, 'ventas', 23, 'alta', 'fecha_pedido: 25/06/2017 || hora_pedido: 19:47 || fecha entrega estimada: 26/06/2017 || seÃ±ado: 125 || usuario que tomo pedido: 1 || cliente_id: 29', NULL, 1, '2017-06-25 22:47:30', '2017-06-25 22:47:30'),
(332, 'clientes', 10, 'modificacion', 'nombre: Marianela Eliana || apellido: Sanchez Rodriguez || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 35466765 || descripcion: ❤️ || teléfono: 3624770022 || email: me.sanchezrodriguez@gmail.com || localidad_id: 1 || direccion: Ameghino 93', 'nombre: Marianela || apellido: Sanchez Rodriguez || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 28456208 || descripcion: La bruja del 71 || teléfono: 3624477022 || email: marukita@gmail.com || localidad_id: 12 || direccion: Valentin Alsina 608', 1, '2017-06-26 00:45:49', '2017-06-26 00:45:49'),
(333, 'ventas', 24, 'alta', 'fecha_pedido: 25/06/2017 || hora_pedido: 21:54 || fecha entrega estimada: 26/06/2017 || seÃ±ado: 47.76 || usuario que tomo pedido: 1 || cliente_id: 10', NULL, 1, '2017-06-26 00:54:29', '2017-06-26 00:54:29'),
(334, 'ventas', 25, 'alta', 'fecha_pedido: 26/06/2017 || hora_pedido: 08:44 || fecha entrega estimada: 07/07/2017 || seÃ±ado: 35 || usuario que tomo pedido: 2 || cliente_id: 6', NULL, 2, '2017-06-26 11:44:23', '2017-06-26 11:44:23'),
(335, 'clientes', 33, 'alta', 'nombre: Eugenia || apellido: Zimermann || empresa:  || responsabilidad tributaria:3 || CUIT: || DNI: 35694131 || descripcion:  || teléfono: 3743258402 || email:  || localidad_id: 20 || direccion: San Martin 745', NULL, 2, '2017-06-26 12:16:37', '2017-06-26 12:16:37'),
(336, 'ventas', 26, 'alta', 'fecha_pedido: 26/06/2017 || hora_pedido: 10:09 || fecha entrega estimada: 20/07/2017 || seÃ±ado: 30 || usuario que tomo pedido: 2 || cliente_id: 33', NULL, 2, '2017-06-26 13:09:04', '2017-06-26 13:09:04'),
(337, 'config', 1, 'modificacion', 'nombre: GN Soluciones || Permitir pago con Cheque a CF:  || Permitir ventas s/ stock: 1 || Editar precio de venta:  || imagen:configuraciones_1488201704.PNG', 'nombre: GN Soluciones || Permitir pago con Cheque a CF:  || Permitir ventas s/ stock: 1 || Editar precio de venta:  || imagen:configuraciones_1488201704.PNG', 2, '2017-06-26 13:48:34', '2017-06-26 13:48:34'),
(338, 'ventas', 27, 'alta', 'fecha_pedido: 26/06/2017 || hora_pedido: 11:16 || fecha entrega estimada: 13/07/2017 || seÃ±ado: 150 || usuario que tomo pedido: 2 || cliente_id: 30', NULL, 2, '2017-06-26 14:16:08', '2017-06-26 14:16:08'),
(339, 'ventas', 28, 'alta', 'fecha_pedido: 26/06/2017 || hora_pedido: 14:02 || fecha entrega estimada: 11/07/2017 || seÃ±ado: 6.17 || usuario que tomo pedido: 1 || cliente_id: 7', NULL, 1, '2017-06-26 17:02:33', '2017-06-26 17:02:33'),
(340, 'insumos', 46, 'alta', 'nombre: Tinta Vahugan 3 fluo || unidad_medida_id: 12 || alto:  || ancho: || stock:2000 || stock minimo: 100 || costo: 0.75 || costo anterior:  || descripcion:  || talle_id: 0 || color_id: 0 || material_id: 0', NULL, 1, '2017-06-26 17:47:17', '2017-06-26 17:47:17'),
(341, 'articulos', 31, 'alta', 'nombre: Gorra Negra estampa fosforescente || alto:  || ancho:  || tipo_id:2  || color_id: 5 || costo:25 || margen:200 || ganancia:50 || precioVta:90.75 || estado:se fabrica', NULL, 1, '2017-06-26 17:50:41', '2017-06-26 17:50:41'),
(342, 'insumos', 47, 'alta', 'nombre: Lona negra 40 x 60 || unidad_medida_id: 6 || alto:  || ancho: || stock:50 || stock minimo: 15 || costo: 15 || costo anterior:  || descripcion:  || talle_id:  || color_id: 0 || material_id: 0', NULL, 1, '2017-06-26 19:12:43', '2017-06-26 19:12:43'),
(343, 'articulos', 32, 'alta', 'nombre: Lona 40 x 60 3 colores || alto: 40 || ancho: 60 || tipo_id:1  || color_id: 0 || costo:1065 || margen:70 || ganancia:745.5 || precioVta:2190.7 || estado:se produce', NULL, 1, '2017-06-26 19:15:54', '2017-06-26 19:15:54'),
(344, 'cheques', 65, 'alta', 'nro_serie: 45648613518 || monto: 2000 || cliente_id: 26 || fecha_emision: 2017-06-26 || fecha_cobro: 2017-07-14 || banco_id: 6 || sucursal: 45', NULL, 1, '2017-06-26 19:22:37', '2017-06-26 19:22:37'),
(345, 'ventas', 29, 'alta', 'fecha_pedido: 26/06/2017 || hora_pedido: 16:22 || fecha entrega estimada: 28/06/2017 || seÃ±ado: 2000 || usuario que tomo pedido: 1 || cliente_id: 26', NULL, 1, '2017-06-26 19:22:37', '2017-06-26 19:22:37'),
(346, 'ventas', 30, 'alta', 'fecha_pedido: 30/06/2017 || hora_pedido: 23:52 || fecha entrega estimada: 03/07/2017 || seÃ±ado: 11.94 || usuario que tomo pedido: 1 || cliente_id: 5', NULL, 1, '2017-07-01 02:52:27', '2017-07-01 02:52:27'),
(347, 'ventas', 31, 'alta', 'fecha_pedido: 02/07/2017 || hora_pedido: 22:11 || fecha entrega estimada: 12/07/2017 || seÃ±ado: 168.56 || usuario que tomo pedido: 2 || cliente_id: 6', NULL, 2, '2017-07-03 01:11:42', '2017-07-03 01:11:42'),
(348, 'ventas', 32, 'alta', 'fecha_pedido: 02/07/2017 || hora_pedido: 22:41 || fecha entrega estimada: 22/07/2017 || seÃ±ado: 200 || usuario que tomo pedido: 2 || cliente_id: 5', NULL, 2, '2017-07-03 01:41:16', '2017-07-03 01:41:16'),
(349, 'compras', 7, 'alta', 'concepto: Reposicion de stock || importe insumos: 1529.75 || costo envio:  || importe total: 1529.75 || fecha_solicitud: 03-07-2017 || hora_solicitud: 22:37 || fecha compra:03-07-2017 || hora_compra:22:37 || confirmado: 1 || pagado: 1 || recibido: 1 || userCompra_id: 1', NULL, 1, '2017-07-04 01:37:14', '2017-07-04 01:37:14'),
(350, 'ventas', 33, 'alta', 'fecha_pedido: 03/07/2017 || hora_pedido: 23:52 || fecha entrega estimada: 12/07/2017 || seÃ±ado: 1256.94 || usuario que tomo pedido: 1 || cliente_id: 26', NULL, 1, '2017-07-04 02:52:47', '2017-07-04 02:52:47'),
(351, 'ventas', 34, 'alta', 'fecha_pedido: 04/07/2017 || hora_pedido: 00:09 || fecha entrega estimada: 04/07/2017 || seÃ±ado: 94.36 || usuario que tomo pedido: 1 || cliente_id: 4', NULL, 1, '2017-07-04 03:09:33', '2017-07-04 03:09:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`nombre`, `created_at`, `updated_at`, `id`) VALUES
('Santander', '2017-01-31 20:52:33', '0000-00-00 00:00:00', 1),
('Macro', '2017-01-31 20:52:33', '0000-00-00 00:00:00', 2),
('Galicia', '2017-02-26 19:57:29', '2017-02-26 19:57:29', 3),
('HSBC', '2017-02-26 19:57:53', '2017-02-26 19:57:53', 4),
('Comafi', '2017-02-27 19:27:07', '2017-02-27 19:27:07', 5),
('Hipotecario', '2017-02-27 20:49:34', '2017-02-27 20:49:34', 6),
('Nación', '2017-04-28 14:44:46', '2017-04-28 14:44:46', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_apertura` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora_apertura` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `saldo_inicial` double NOT NULL,
  `fecha_cierre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora_cierre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cerrado` tinyint(1) NOT NULL,
  `userApertura_id` int(10) UNSIGNED DEFAULT NULL,
  `userCierre_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `fecha_apertura`, `hora_apertura`, `saldo_inicial`, `fecha_cierre`, `hora_cierre`, `cerrado`, `userApertura_id`, `userCierre_id`, `created_at`, `updated_at`) VALUES
(1, '05-06-2017', '12:57', 0, '24-06-2017', '09:14', 1, 1, 2, '2017-06-05 15:57:34', '2017-06-24 12:14:43'),
(2, '24-06-2017', '09:15', 0, '04-07-2017', '00:28', 1, 2, 1, '2017-06-24 12:15:21', '2017-07-04 03:29:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ccorrientes`
--

CREATE TABLE `ccorrientes` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `debe` double DEFAULT NULL,
  `haber` double DEFAULT NULL,
  `saldo_inicial` double NOT NULL,
  `saldo` double DEFAULT NULL,
  `fecha_apertura` varchar(10) DEFAULT NULL,
  `hora_apertura` varchar(10) DEFAULT NULL,
  `userApertura_id` int(11) NOT NULL,
  `activa` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ccorrientes`
--

INSERT INTO `ccorrientes` (`id`, `cliente_id`, `debe`, `haber`, `saldo_inicial`, `saldo`, `fecha_apertura`, `hora_apertura`, `userApertura_id`, `activa`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 0, 0, 0, '05-06-2017', '21:30', 1, 1, '2017-05-09 02:57:30', '0000-00-00 00:00:00'),
(8, 1, 0, 0, 0, 0, '08-05-2017', '14:59', 1, 1, '2017-05-08 17:59:48', '2017-05-08 17:59:48'),
(12, 8, 0, 0, 0, 0, '08-05-2017', '15:23', 1, 1, '2017-05-08 18:25:20', '2017-05-08 18:25:20'),
(13, 7, 0, 0, 0, 0, '16-05-2017', '13:10', 1, 1, '2017-05-16 16:10:47', '2017-05-16 16:10:47'),
(14, 14, 0, 0, 0, 0, '04-06-2017', '14:38', 2, 1, '2017-06-04 17:39:20', '2017-06-04 17:39:20'),
(15, 10, 0, 0, 0, -500, '05-06-2017', '23:16', 2, 1, '2017-06-06 02:17:01', '2017-06-06 02:17:01'),
(16, 25, 0, 0, 0, -100, '08-06-2017', '20:21', 2, 1, '2017-06-08 23:22:04', '2017-06-08 23:22:04'),
(17, 9, 0, 0, 0, 0, '23-06-2017', '09:37', 2, 1, '2017-06-23 12:38:41', '2017-06-23 12:38:41'),
(18, 26, 0, 0, 0, 0, '25-06-2017', '00:52', 2, 1, '2017-06-25 03:54:19', '2017-06-25 03:54:19'),
(19, 29, 0, 0, 0, 0, '25-06-2017', '00:54', 2, 1, '2017-06-25 03:54:32', '2017-06-25 03:54:32'),
(20, 34, 0, 0, 0, 0, '26-06-2017', '09:36', 2, 1, '2017-06-26 12:53:40', '2017-06-26 12:53:40'),
(21, 33, 0, 0, 0, 0, '04-07-2017', '00:04', 1, 1, '2017-07-04 03:06:13', '2017-07-04 03:06:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cheques`
--

CREATE TABLE `cheques` (
  `id` int(10) UNSIGNED NOT NULL,
  `nro_serie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cliente_id` int(11) NOT NULL,
  `banco_id` int(5) DEFAULT NULL,
  `sucursal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `fecha_emision` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_cobro` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cobrado` tinyint(1) DEFAULT NULL,
  `usuario_cobro_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cheques`
--

INSERT INTO `cheques` (`id`, `nro_serie`, `cliente_id`, `banco_id`, `sucursal`, `monto`, `fecha_emision`, `fecha_cobro`, `cobrado`, `usuario_cobro_id`, `created_at`, `updated_at`) VALUES
(54, '25887461', 12, 2, '3', 20, '2017-04-06', '2017-04-14', 1, NULL, '2017-04-06 18:09:03', '2017-06-20 02:22:14'),
(55, '47445', 4, 6, '3', 10, '0077-05-08', '2017-04-29', 1, NULL, '2017-04-11 22:23:08', '2017-06-08 14:20:33'),
(56, '4564848994', 12, 1, '4', 140.32, '2017-05-06', '2017-06-10', 1, NULL, '2017-05-06 21:11:31', '2017-06-08 14:23:01'),
(57, '62628354221', 4, 5, '4', 7.26, '2017-05-30', '2017-05-31', 1, NULL, '2017-05-30 14:14:55', '2017-06-08 14:21:44'),
(58, '75995979', 1, 5, '2', 14.52, '2017-05-26', '2017-06-04', 1, NULL, '2017-05-30 16:46:07', '2017-06-09 10:03:52'),
(59, '34235', 4, 4, '3', 7, '2017-06-04', '2017-06-10', 1, NULL, '2017-06-04 15:40:51', '2017-06-20 04:17:12'),
(60, '71235190', 1, 3, '8', 7.76, '2017-06-04', '2017-06-30', 1, NULL, '2017-06-04 17:11:02', '2017-06-08 14:41:42'),
(61, '45361223854894102', 9, 2, '45', 366.52, '2017-06-23', '2017-06-24', 0, NULL, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(62, '1101681681381', 14, 7, '61', 200, '2017-06-25', '2017-07-15', 0, NULL, '2017-06-25 03:52:05', '2017-06-25 03:52:05'),
(63, '63411231', 14, 5, '65', 302, '2017-06-25', '2017-07-06', 0, NULL, '2017-06-25 13:06:00', '2017-06-25 13:06:00'),
(64, '48641616167', 6, 1, '24', 9, '2017-06-27', '2017-07-03', 1, NULL, '2017-06-26 18:08:44', '2017-06-26 18:09:50'),
(65, '45648613518', 26, 6, '45', 2000, '2017-06-26', '2017-07-14', 1, NULL, '2017-06-26 19:22:37', '2017-06-26 19:26:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `responiva_id` int(10) UNSIGNED NOT NULL,
  `empresa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cuit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dni` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `localidad_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `responiva_id`, `empresa`, `descripcion`, `cuit`, `dni`, `telefono`, `email`, `direccion`, `localidad_id`, `created_at`, `updated_at`) VALUES
(1, 'Sergio', 'Sanabria', 1, 'SECHEP', 'se creo usando Tinker', '24351203694', '', '3743421585', 'sergiolilo@gmail.com', 'San Martin 700', 5, '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(2, 'Johny', 'Katz', 3, '', 'se creo usando Tinker', '', '31125569', '363331585', 'katz@gmail.com', 'Cordoba 345', 5, '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(4, 'Sergio', 'Caballero', 1, 'IPSM', 'se creo usando Tinker', '20309803694', '', '3764899104', 'sergiocaballero@gmail.com', 'Junin 1223', 5, '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(5, 'Robert', 'Langdon', 3, '', 'se creo usando Tinker', '', '29456584', '327331585', 'danbrown@gmail.com', 'Castelli 345', 4, '2016-12-05 18:25:36', '2016-12-05 18:25:36'),
(6, 'Mario', 'Barcos', 2, '', 'El humorista\r\n', '20355647119', '', '3624123123', 'marito@baracus.com', 'Peru 701', 17, '2017-02-05 22:54:36', '2017-02-20 23:52:01'),
(7, 'Javier Enrique', 'Sandoval', 3, '', '', '', '31844048', '', 'sando458@gmail.com', 'Guatambu 458', 6, '2017-02-27 02:20:03', '2017-02-27 02:20:03'),
(8, 'Juan Pablo', 'Cáceres', 3, '', 'Soy yo', '', '34478385', '34478385', 'jpcaceres.nea@gmail.com', 'Monteagudo 695', 1, '2017-02-27 12:58:52', '2017-02-27 12:58:52'),
(9, 'Paulo', 'Garnier', 2, '', 'El policia de la seccional 145 sobre calle Rivadavia', '20256456848', '', '3752740152', 'paulo1982@gmail.com', 'Salta y Gral. Paz', 5, '2017-02-27 17:41:01', '2017-02-27 17:41:01'),
(10, 'Marianela Eliana', 'Sanchez Rodriguez', 3, '', '❤️', '', '35466765', '3624770022', 'me.sanchezrodriguez@gmail.com', 'Ameghino 93', 1, '2017-02-27 17:41:02', '2017-06-26 00:45:48'),
(11, 'Christa', 'Kasey Lebsack', 3, '', '', '', '36019985', '', 'Ellsworth96@yahoo.com', 'Deshaun Kuhlman 554', 17, '2017-03-01 17:52:43', '2017-03-01 17:52:43'),
(12, 'Lisandro Matías', 'Blanco', 1, 'El Rojo SRL', 'Presidente de la peña "Tierra Roja" (CA Independiente)', '20347530984', '', '3764560274', 'lisandro.blanco73@gmail.com', '3 de Febrero 1575', 5, '2017-04-02 22:29:02', '2017-04-03 14:56:37'),
(13, 'Eliana', 'Baumgratz', 3, '', 'Estudiante de Farmacia FCEQyN, del Centro de Estudiantes', '', '33132195', '3764760222', 'elianafblanco@gmail.com', 'Mariano Moreno 369', 20, '2017-04-03 14:51:49', '2017-04-03 14:51:49'),
(14, 'Facundo', 'Yatchesen', 2, '', 'Licenciado asesor de la catedra Proyecto Software', '20325547124', '', '3752668874', 'facundoyatchesen@gmail.com', 'Bolivar 677', 5, '2017-06-04 17:33:00', '2017-06-04 17:33:00'),
(25, 'Julio', 'Cristenssen', 3, '', '', '', '31555781', '3624558870', 'cris_eventos@gmail.com', 'Gral. Fellmann 1455', 5, '2017-06-06 02:10:42', '2017-06-06 02:10:42'),
(26, 'Rodrigo', 'Pillud', 1, 'Distribuidora Abril SA', 'Distribuidora que generalmente nos solicita panfletos y cajas ploteadas', '30534045219', '', '3654452136', 'distribuidoraabril@yahoo.com.ar', 'Gonzaga 2874', 2, '2017-06-08 01:46:37', '2017-06-08 01:46:37'),
(29, 'Jane', 'Garcia', 1, 'VGM Sistemas', 'La patrona', '27178477701', '', '3624587945', 'info@vgmsistemas.com.ar', 'Mitre 244', 1, '2017-06-08 02:21:34', '2017-06-08 02:21:34'),
(30, 'Bonnaventura', 'Julieta', 1, 'INSSSEP', '', '30709501352', '', '3624023974', 'insssep@gob.com.ar', '9 de Julio 589', 17, '2017-06-08 02:36:53', '2017-06-08 02:36:53'),
(31, 'Raul', 'Kamada', 1, 'Sol de Mayo SRL', 'El japo', '20306647104', '', '3743520784', 'kmda_japo@gmail.com', 'Los Proceres 892', 7, '2017-06-08 02:44:03', '2017-06-08 02:44:03'),
(32, 'Adriel Ernesto', 'Höjberg', 1, 'Hierros Lider SRL', '', '30324658791', '', '3624558924', 'info@hlider.com', 'Arturo Illia 145', 1, '2017-06-26 11:38:59', '2017-06-26 11:38:59'),
(33, 'Eugenia', 'Zimermann', 3, '', '', '', '35694131', '3743258402', '', 'San Martin 745', 20, '2017-06-26 12:16:37', '2017-06-26 12:16:37'),
(34, 'Oscar', 'Barrios', 2, 'Electronica B&B', 'Barrios ', '30245556667', '', '3764558891', 'barrios_bb@gmail.com', 'Salados 741', 2, '2017-06-26 12:35:06', '2017-06-26 12:35:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE `colores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `colores`
--

INSERT INTO `colores` (`id`, `nombre`, `codigo`, `created_at`, `updated_at`) VALUES
(0, 'Ninguno', '', '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(1, 'Blanco', '#FFFFFF', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(2, 'Gris Topo', '#5D5D5D', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(3, 'Beige', '#DBDCAE', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(4, 'Rojo', '#FF0000', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(5, 'Negro', '#000000', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(6, 'Azul', '#0026FF', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(7, 'Coral', '#FF7366', '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(8, 'Verde Militar', '#156800', '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(9, 'Marron', '#874d47', '2017-02-28 18:32:18', '2017-02-28 18:32:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_pedidoCompra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora_pedidoCompra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_compra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora_compra` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmado` tinyint(1) DEFAULT NULL,
  `pagado` tinyint(1) DEFAULT NULL,
  `recibido` tinyint(1) DEFAULT NULL,
  `importe_insumos` double NOT NULL,
  `importe_costo_envio` double NOT NULL,
  `importe` double NOT NULL,
  `concepto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `userCompra_id` int(10) UNSIGNED DEFAULT NULL,
  `nro_cte_asociado` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `fecha_pedidoCompra`, `hora_pedidoCompra`, `fecha_compra`, `hora_compra`, `confirmado`, `pagado`, `recibido`, `importe_insumos`, `importe_costo_envio`, `importe`, `concepto`, `userCompra_id`, `nro_cte_asociado`, `created_at`, `updated_at`) VALUES
(1, '28-04-2017', '20:32', '28-04-2017', '20:32', 1, 1, 1, 70, 0, 70, 'Reposicion de stock', 2, NULL, '2017-04-28 23:32:24', '2017-04-28 23:32:24'),
(2, '08-06-2017', '12:13', '08-06-2017', '12:13', 1, 1, 1, 4275, 0, 4275, 'Reposicion de stock', 2, NULL, '2017-06-08 15:13:17', '2017-06-08 15:13:17'),
(3, '08-06-2017', '12:38', '08-06-2017', '12:38', 1, 1, 1, 11400, 0, 11400, 'Reposicion de stock', 2, NULL, '2017-06-08 15:38:31', '2017-06-08 15:38:31'),
(4, '08-06-2017', '12:47', '08-06-2017', '12:47', 1, 1, 1, 1750, 0, 1750, 'Reposicion de stock', 2, NULL, '2017-06-08 15:47:18', '2017-06-08 15:47:18'),
(5, '09-06-2017', '06:49', '09-06-2017', '06:49', 1, 1, 1, 4135, 150, 4285, 'Reposicion de stock', 2, NULL, '2017-06-09 09:49:20', '2017-06-09 09:49:20'),
(6, '25-06-2017', '00:22', '25-06-2017', '00:22', 1, 1, 1, 8, 50, 58, 'Reposicion de stock', 2, '4684', '2017-06-25 03:22:28', '2017-06-25 03:22:28'),
(7, '03-07-2017', '22:37', '03-07-2017', '22:37', 1, 1, 1, 1529.75, 0, 1529.75, 'Reposicion de stock', 1, '', '2017-07-04 01:37:14', '2017-07-04 01:37:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante`
--

CREATE TABLE `comprobante` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comprobante` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comprobante`
--

INSERT INTO `comprobante` (`id`, `cliente_id`, `user_id`, `comprobante`, `created_at`, `updated_at`) VALUES
(98, 5, 1, 'Nota de Pedido', '2017-04-06 17:55:55', '2017-04-06 17:55:55'),
(99, 12, 1, 'Nota de Pedido', '2017-04-06 18:09:04', '2017-04-06 18:09:04'),
(100, 2, 2, 'Nota de Pedido', '2017-04-09 23:35:40', '2017-04-09 23:35:40'),
(101, 2, 2, 'Nota de Pedido', '2017-04-10 03:48:26', '2017-04-10 03:48:26'),
(102, 11, 2, 'Nota de Pedido', '2017-04-10 03:50:55', '2017-04-10 03:50:55'),
(103, 4, 1, 'Nota de Pedido', '2017-04-11 22:23:09', '2017-04-11 22:23:09'),
(104, 4, 1, 'Nota de Pedido', '2017-04-12 19:14:01', '2017-04-12 19:14:01'),
(105, 4, 1, 'Nota de Pedido', '2017-04-12 20:25:15', '2017-04-12 20:25:15'),
(106, 4, 1, 'Nota de Pedido', '2017-04-12 20:36:12', '2017-04-12 20:36:12'),
(107, 2, 1, 'Nota de Pedido', '2017-04-12 21:02:53', '2017-04-12 21:02:53'),
(108, 2, 1, 'Nota de Pedido', '2017-04-12 21:32:46', '2017-04-12 21:32:46'),
(109, 13, 1, 'Nota de Pedido', '2017-04-12 21:47:16', '2017-04-12 21:47:16'),
(110, 4, 1, 'Nota de Pedido', '2017-04-12 21:57:34', '2017-04-12 21:57:34'),
(111, 7, 1, 'Nota de Pedido', '2017-04-12 22:02:03', '2017-04-12 22:02:03'),
(112, 11, 1, 'Nota de Pedido', '2017-04-12 22:06:40', '2017-04-12 22:06:40'),
(113, 6, 1, 'Nota de Pedido', '2017-04-12 23:00:42', '2017-04-12 23:00:42'),
(114, 5, 2, 'Nota de Pedido', '2017-04-12 23:06:49', '2017-04-12 23:06:49'),
(115, 5, 2, 'Nota de Pedido', '2017-04-12 23:09:05', '2017-04-12 23:09:05'),
(116, 4, 1, 'Nota de Pedido', '2017-04-16 23:15:11', '2017-04-16 23:15:11'),
(117, 4, 1, 'Nota de Pedido', '2017-04-18 20:38:41', '2017-04-18 20:38:41'),
(118, 6, 2, 'Nota de Pedido', '2017-04-28 14:49:18', '2017-04-28 14:49:18'),
(119, 8, 2, 'Recibo de Compra', '2017-04-28 23:32:25', '2017-04-28 23:32:25'),
(120, 2, 2, 'Nota de Pedido', '2017-05-03 02:38:00', '2017-05-03 02:38:00'),
(121, 9, 1, 'Nota de Pedido', '2017-05-06 12:39:28', '2017-05-06 12:39:28'),
(122, 7, 1, 'Nota de Pedido', '2017-05-06 20:28:59', '2017-05-06 20:28:59'),
(123, 1, 1, 'Nota de Pedido', '2017-05-06 20:44:28', '2017-05-06 20:44:28'),
(124, 12, 1, 'Nota de Pedido', '2017-05-06 21:11:32', '2017-05-06 21:11:32'),
(125, 8, 1, 'Nota de Pedido', '2017-05-21 19:10:58', '2017-05-21 19:10:58'),
(126, 8, 1, 'Nota de Pedido', '2017-05-23 12:58:40', '2017-05-23 12:58:40'),
(127, 1, 1, 'Nota de Pedido', '2017-05-25 22:02:28', '2017-05-25 22:02:28'),
(128, 1, 2, 'Nota de Pedido', '2017-05-26 03:40:08', '2017-05-26 03:40:08'),
(129, 4, 2, 'Nota de Pedido', '2017-05-26 03:51:56', '2017-05-26 03:51:56'),
(130, 1, 2, 'Nota de Pedido', '2017-05-28 22:32:40', '2017-05-28 22:32:40'),
(131, 4, 2, 'Nota de Pedido', '2017-05-28 23:58:58', '2017-05-28 23:58:58'),
(132, 4, 2, 'Nota de Pedido', '2017-05-29 00:13:47', '2017-05-29 00:13:47'),
(133, 1, 2, 'Nota de Pedido', '2017-05-29 00:21:05', '2017-05-29 00:21:05'),
(134, 8, 2, 'Nota de Pedido', '2017-05-29 00:26:00', '2017-05-29 00:26:00'),
(135, 1, 2, 'Nota de Pedido', '2017-05-29 00:33:44', '2017-05-29 00:33:44'),
(136, 4, 2, 'Nota de Pedido', '2017-05-29 01:08:04', '2017-05-29 01:08:04'),
(137, 4, 2, 'Nota de Pedido', '2017-05-29 01:17:37', '2017-05-29 01:17:37'),
(138, 4, 2, 'Nota de Pedido', '2017-05-29 01:22:17', '2017-05-29 01:22:17'),
(139, 1, 2, 'Nota de Pedido', '2017-05-29 01:29:48', '2017-05-29 01:29:48'),
(140, 4, 2, 'Nota de Pedido', '2017-05-29 01:39:24', '2017-05-29 01:39:24'),
(141, 1, 1, 'Nota de Pedido', '2017-05-29 02:02:09', '2017-05-29 02:02:09'),
(142, 1, 1, 'Nota de Pedido', '2017-05-29 02:10:50', '2017-05-29 02:10:50'),
(143, 1, 1, 'Nota de Pedido', '2017-05-29 02:17:28', '2017-05-29 02:17:28'),
(144, 1, 1, 'Nota de Pedido', '2017-05-30 00:48:13', '2017-05-30 00:48:13'),
(145, 1, 1, 'Nota de Pedido', '2017-05-30 01:03:05', '2017-05-30 01:03:05'),
(146, 7, 1, 'Nota de Pedido', '2017-05-30 01:27:57', '2017-05-30 01:27:57'),
(147, 7, 1, 'Nota de Pedido', '2017-05-30 13:53:57', '2017-05-30 13:53:57'),
(148, 4, 1, 'Nota de Pedido', '2017-05-30 14:14:55', '2017-05-30 14:14:55'),
(149, 1, 1, 'Nota de Pedido', '2017-05-30 15:55:44', '2017-05-30 15:55:44'),
(150, 1, 1, 'Nota de Pedido', '2017-05-30 16:46:08', '2017-05-30 16:46:08'),
(151, 5, 1, 'Nota de Pedido', '2017-05-31 13:03:35', '2017-05-31 13:03:35'),
(152, 2, 2, 'Nota de Pedido', '2017-06-01 16:31:28', '2017-06-01 16:31:28'),
(153, 2, 2, 'Nota de Pedido', '2017-06-01 16:39:29', '2017-06-01 16:39:29'),
(154, 2, 2, 'Nota de Pedido', '2017-06-02 03:08:13', '2017-06-02 03:08:13'),
(155, 4, 2, 'Nota de Pedido', '2017-06-02 14:01:11', '2017-06-02 14:01:11'),
(156, 8, 2, 'Nota de Pedido', '2017-06-04 14:56:48', '2017-06-04 14:56:48'),
(157, 7, 2, 'Nota de Pedido', '2017-06-04 15:38:07', '2017-06-04 15:38:07'),
(158, 7, 2, 'Nota de Pedido', '2017-06-04 15:38:52', '2017-06-04 15:38:52'),
(159, 4, 2, 'Nota de Pedido', '2017-06-04 15:40:52', '2017-06-04 15:40:52'),
(160, 8, 2, 'Nota de Pedido', '2017-06-04 16:43:58', '2017-06-04 16:43:58'),
(161, 8, 2, 'Nota de Pedido', '2017-06-04 16:44:38', '2017-06-04 16:44:38'),
(162, 7, 2, 'Nota de Pedido', '2017-06-04 17:00:16', '2017-06-04 17:00:16'),
(163, 7, 2, 'Nota de Pedido', '2017-06-04 17:01:12', '2017-06-04 17:01:12'),
(164, 13, 2, 'Nota de Pedido', '2017-06-04 17:02:14', '2017-06-04 17:02:14'),
(165, 1, 2, 'Nota de Pedido', '2017-06-04 17:11:02', '2017-06-04 17:11:02'),
(166, 14, 2, 'Nota de Pedido', '2017-06-04 17:42:22', '2017-06-04 17:42:22'),
(167, 2, 1, 'Nota de Pedido', '2017-06-05 15:59:14', '2017-06-05 15:59:14'),
(168, 14, 2, 'Nota de Pedido', '2017-06-06 02:21:21', '2017-06-06 02:21:21'),
(169, 5, 2, 'Nota de Pedido', '2017-06-07 12:39:07', '2017-06-07 12:39:07'),
(170, 25, 2, 'Nota de Pedido', '2017-06-07 12:44:49', '2017-06-07 12:44:49'),
(171, 7, 2, 'Nota de Pedido', '2017-06-07 15:45:34', '2017-06-07 15:45:34'),
(172, 14, 2, 'Nota de Pedido', '2017-06-07 15:56:53', '2017-06-07 15:56:53'),
(173, 2, 2, 'Nota de Pedido', '2017-06-07 16:09:36', '2017-06-07 16:09:36'),
(174, 7, 2, 'Nota de Pedido', '2017-06-07 16:16:45', '2017-06-07 16:16:45'),
(175, 5, 2, 'Nota de Pedido', '2017-06-07 16:17:39', '2017-06-07 16:17:39'),
(176, 6, 2, 'Nota de Pedido', '2017-06-07 17:18:17', '2017-06-07 17:18:17'),
(177, 10, 2, 'Nota de Pedido', '2017-06-07 17:22:22', '2017-06-07 17:22:22'),
(178, 9, 2, 'Nota de Pedido', '2017-06-07 17:24:55', '2017-06-07 17:24:55'),
(179, 8, 2, 'Nota de Pedido', '2017-06-07 17:27:34', '2017-06-07 17:27:34'),
(180, 5, 2, 'Nota de Pedido', '2017-06-07 17:29:22', '2017-06-07 17:29:22'),
(181, 12, 2, 'Nota de Pedido', '2017-06-07 17:31:11', '2017-06-07 17:31:11'),
(182, 2, 2, 'Nota de Pedido', '2017-06-07 17:38:26', '2017-06-07 17:38:26'),
(183, 10, 2, 'Recibo de Compra', '2017-06-08 15:38:32', '2017-06-08 15:38:32'),
(184, 11, 2, 'Recibo de Compra', '2017-06-08 15:47:19', '2017-06-08 15:47:19'),
(185, 29, 2, 'Nota de Pedido', '2017-06-08 16:15:31', '2017-06-08 16:15:31'),
(186, 12, 2, 'Nota de Pedido', '2017-06-08 23:31:49', '2017-06-08 23:31:49'),
(187, 13, 2, 'Recibo de Compra', '2017-06-09 09:49:22', '2017-06-09 09:49:22'),
(188, 26, 2, 'Nota de Pedido', '2017-06-09 09:56:28', '2017-06-09 09:56:28'),
(189, 9, 2, 'Nota de Pedido', '2017-06-23 13:04:28', '2017-06-23 13:04:28'),
(190, 13, 2, 'Recibo de Compra', '2017-06-25 00:50:22', '2017-06-25 00:50:22'),
(191, 13, 2, 'Recibo de Compra', '2017-06-25 01:30:08', '2017-06-25 01:30:08'),
(192, 11, 2, 'Recibo de Compra', '2017-06-25 01:44:48', '2017-06-25 01:44:48'),
(193, 11, 2, 'Recibo de Compra', '2017-06-25 01:48:28', '2017-06-25 01:48:28'),
(194, 13, 2, 'Recibo de Compra', '2017-06-25 02:31:20', '2017-06-25 02:31:20'),
(195, 8, 2, 'Recibo de Compra', '2017-06-25 03:19:05', '2017-06-25 03:19:05'),
(196, 8, 2, 'Recibo de Compra', '2017-06-25 03:22:31', '2017-06-25 03:22:31'),
(197, 14, 2, 'Nota de Pedido', '2017-06-25 03:52:07', '2017-06-25 03:52:07'),
(198, 2, 1, 'Nota de Pedido', '2017-06-25 22:42:22', '2017-06-25 22:42:22'),
(199, 29, 1, 'Nota de Pedido', '2017-06-25 22:47:31', '2017-06-25 22:47:31'),
(200, 10, 1, 'Nota de Pedido', '2017-06-26 00:54:30', '2017-06-26 00:54:30'),
(201, 6, 2, 'Nota de Pedido', '2017-06-26 11:44:24', '2017-06-26 11:44:24'),
(202, 33, 2, 'Nota de Pedido', '2017-06-26 13:09:04', '2017-06-26 13:09:04'),
(203, 30, 2, 'Nota de Pedido', '2017-06-26 14:16:10', '2017-06-26 14:16:10'),
(204, 7, 1, 'Nota de Pedido', '2017-06-26 17:02:36', '2017-06-26 17:02:36'),
(205, 26, 1, 'Nota de Pedido', '2017-06-26 19:22:39', '2017-06-26 19:22:39'),
(206, 5, 1, 'Nota de Pedido', '2017-07-01 02:52:28', '2017-07-01 02:52:28'),
(207, 6, 2, 'Nota de Pedido', '2017-07-03 01:11:44', '2017-07-03 01:11:44'),
(208, 5, 2, 'Nota de Pedido', '2017-07-03 01:41:18', '2017-07-03 01:41:18'),
(209, 13, 1, 'Recibo de Compra', '2017-07-04 01:37:16', '2017-07-04 01:37:16'),
(210, 26, 1, 'Nota de Pedido', '2017-07-04 02:52:48', '2017-07-04 02:52:48'),
(211, 4, 1, 'Nota de Pedido', '2017-07-04 03:09:37', '2017-07-04 03:09:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cuit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `responiva_id` int(10) UNSIGNED NOT NULL,
  `localidad_id` int(10) UNSIGNED NOT NULL,
  `pago_cheque_cf` tinyint(1) DEFAULT NULL,
  `ventas_sin_stock` tinyint(1) DEFAULT NULL,
  `ingresar_precio_venta` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`id`, `nombre`, `cuit`, `telefono`, `email`, `direccion`, `imagen`, `responiva_id`, `localidad_id`, `pago_cheque_cf`, `ventas_sin_stock`, `ingresar_precio_venta`, `created_at`, `updated_at`) VALUES
(1, 'GN Soluciones', '34333355665', '3624456123', 'gnsoluciones@gmail.com', 'Arbo y Blanco 900', 'configuraciones_1488201704.PNG', 1, 1, NULL, NULL, NULL, '2016-12-05 02:21:57', '2017-06-26 13:48:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos`
--

CREATE TABLE `insumos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` double NOT NULL,
  `stockMinimo` double NOT NULL,
  `costo` double NOT NULL,
  `costo_anterior` double DEFAULT NULL,
  `alto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ancho` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `talle_id` int(10) UNSIGNED DEFAULT NULL,
  `material_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `unidad_medida_id` int(10) UNSIGNED DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `insumos`
--

INSERT INTO `insumos` (`id`, `nombre`, `stock`, `stockMinimo`, `costo`, `costo_anterior`, `alto`, `ancho`, `talle_id`, `material_id`, `color_id`, `unidad_medida_id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Remera Algodon Blanca S', 0, 250, 0, NULL, '', '', 1, 1, 1, 6, '', '2016-12-05 02:27:00', '2016-12-05 02:27:00'),
(2, 'Remera Algodon Blanca XL', 846, 250, 42.89, 0, '', '', 4, 1, 1, 6, '', '2016-12-05 02:27:00', '2017-07-03 01:41:17'),
(3, 'Remera Algodon Negra S', 55, 250, 26, 0, '', '', 1, 1, 5, 6, '', '2016-12-05 02:27:00', '2016-12-05 06:22:15'),
(4, 'Remera Algodon Negra M', 89, 250, 19.5, 18.5, '', '', 2, 1, 5, 6, '', '2016-12-05 02:27:00', '2017-02-15 00:45:08'),
(5, 'Remera Algodon Negra L', 0, 250, 0, NULL, '', '', 3, 1, 5, 6, '', '2016-12-05 02:27:00', '2016-12-05 02:27:00'),
(6, 'Remera Algodon Negra XL', 300, 250, 38, 0, '', '', 4, 1, 5, 6, '', '2016-12-05 02:27:00', '2017-06-08 15:38:31'),
(8, 'Remera Algodon Roja L', 65, 250, 24, 24, '', '', 3, 1, 4, 6, '', '2016-12-05 02:27:00', '2017-06-04 14:56:48'),
(9, 'Remera Algodon Gris Topo L', 50, 250, 34, 0, '', '', 3, 1, 2, 6, '', '2016-12-05 02:27:00', '2017-03-20 22:03:36'),
(10, 'Gorra Blanca', 242, 250, 54, 53, '', '', 0, 1, 1, 6, '', '2016-12-05 02:27:00', '2017-07-04 01:37:14'),
(11, 'Gorra Negra', 68, 250, 22, 22, '', '', 0, 1, 5, 6, '', '2016-12-05 02:27:00', '2017-06-08 15:47:18'),
(13, 'Gorra Verde Militar', 22, 250, 36, 34, '', '', 0, 1, 8, 6, '', '2016-12-05 02:27:00', '2017-07-03 01:11:43'),
(14, 'Iman 70x50', 0, 250, 0, NULL, '70', '50', 0, 0, 0, 6, '', '2016-12-05 02:27:00', '2016-12-05 02:27:00'),
(15, 'Iman 70x100', 0, 250, 0, NULL, '70', '100', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2016-12-05 02:27:01'),
(16, 'Iman 150x100', 703, 250, 4, 7, '150', '100', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2017-07-04 02:52:47'),
(18, 'Llavero 44mm', 118, 200, 3, 3, '', '', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2017-06-08 16:15:30'),
(19, 'Llavero 55mm', 0, 200, 3, NULL, '', '', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2016-12-05 02:27:01'),
(20, 'Destapador 55mm', 341, 190, 3.5, 3.5, '', '', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2017-06-26 11:44:23'),
(21, 'Sobre Oficio Tipo Ingles', 1447, 100, 2.85, 2.85, '12', '23.5', 0, 4, 0, 6, '', '2016-12-05 02:27:01', '2017-07-04 03:09:33'),
(22, 'Sobre A4', 585, 100, 2.5, 2, '270', '370', 0, 4, 0, 6, '', '2016-12-05 02:27:01', '2017-07-04 02:52:47'),
(23, 'Papel Ilustracion A4 (220g)', -4, 100, 0.26, 1, '210', '297', 0, 4, 0, 6, '', '2016-12-05 02:27:01', '2017-06-07 17:29:21'),
(24, 'Papel Ilustracion A3 (220g)', 186, 100, 0.34, 1, '305', '457', 0, 4, 0, 6, '', '2016-12-05 02:27:01', '2017-07-04 02:52:47'),
(25, 'Calco Redonda 54mm', 1008, 100, 9, 11, '210', '297', 0, 4, 0, 6, '', '2016-12-05 02:27:01', '2017-07-04 03:09:33'),
(26, 'Tarjeta PVC', 184, 100, 2.46, 1, '54', '85', 0, 6, 0, 6, '', '2016-12-05 02:27:01', '2017-02-14 22:36:22'),
(29, 'Lapicera Micro Ziro', 26, 50, 3, 3, '0', '0', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2017-02-14 16:00:00'),
(30, 'Lapicera Micro City', 42, 50, 3, 3, '0', '0', 0, 0, 0, 6, '', '2016-12-05 02:27:01', '2017-02-14 15:53:26'),
(33, 'Lapicera Eco', 787, 50, 7, 7, '0', '0', 0, 0, 0, 6, '', '2016-12-05 02:29:12', '2017-07-04 01:37:14'),
(34, 'Globo 12"', 836, 250, 2, 1, '', '', 0, 6, 0, 6, '', '2016-12-05 02:29:15', '2017-06-26 00:54:29'),
(36, 'Tubo de ensayo plastico', 697, 40, 7, 7, '1000', '13', 0, 6, 0, 6, '', '2016-12-05 05:47:13', '2017-07-04 02:52:47'),
(37, 'Tinta HP 4 colours Chronhos', 26.26, 3, 35, 35, '', '', 0, 0, 0, 13, '', '2016-12-05 18:42:50', '2017-07-04 01:37:15'),
(40, 'Aromatizante "lavanda" liquido', 30.97, 4, 14, 13, '', '', 0, 0, 0, 10, '', '2017-01-12 04:43:28', '2017-07-04 02:52:47'),
(41, 'Sopapa 30mm', 85, 10, 0.7, 0.7, '', '', 0, 6, 0, 6, '', '2017-01-12 15:53:14', '2017-07-04 02:52:47'),
(42, 'Remera Negra (Talle: M)', 20, 10, 14.5, NULL, '', '', 2, 2, 5, 6, '', '2017-02-01 14:44:49', '2017-02-01 14:44:49'),
(43, 'Remera Roja (Talle: M)', 20, 20, 40, NULL, '', '', 2, 2, 4, 6, '', '2017-04-02 22:34:31', '2017-06-26 14:16:09'),
(44, 'Carton Corrugado', 4, 10, 8.5, NULL, '500', '250', NULL, 5, 0, 6, '', '2017-06-08 23:00:26', '2017-07-04 03:09:33'),
(45, 'Carton Mocrocorrugado 115x80', 400, 25, 8, 7, '115', '80', NULL, 5, 0, 6, '', '2017-06-09 09:30:41', '2017-06-09 09:56:26'),
(46, 'Tinta Vahugan 3 fluo', 2000, 100, 0.75, NULL, '', '', 0, 0, 0, 12, '', '2017-06-26 17:47:17', '2017-06-26 17:47:17'),
(47, 'Lona negra 40 x 60', 49, 15, 15, NULL, '', '', NULL, 0, 0, 6, '', '2017-06-26 19:12:43', '2017-06-26 19:22:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_articulos`
--

CREATE TABLE `insumos_articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` double NOT NULL,
  `precio_unitario` double NOT NULL,
  `importe_insumo` double NOT NULL,
  `insumo_id` int(10) UNSIGNED NOT NULL,
  `articulo_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `insumos_articulos`
--

INSERT INTO `insumos_articulos` (`id`, `cantidad`, `precio_unitario`, `importe_insumo`, `insumo_id`, `articulo_id`, `created_at`, `updated_at`) VALUES
(2, 1, 0, 0, 10, 2, '2016-12-05 03:07:06', '2016-12-05 03:07:06'),
(3, 1, 3, 3, 20, 3, '2016-12-05 19:56:00', '2016-12-05 19:56:00'),
(4, 1, 3, 3, 20, 4, '2016-12-05 19:56:54', '2016-12-05 19:56:54'),
(5, 1, 3, 3, 20, 5, '2016-12-05 20:41:42', '2016-12-05 20:41:42'),
(15, 1, 7, 7, 36, 9, '2017-01-12 17:12:48', '2017-01-12 17:12:48'),
(16, 0.03, 14, 0.5, 40, 9, '2017-01-12 17:12:49', '2017-01-12 17:12:49'),
(17, 1, 0.7, 0.7, 41, 9, '2017-01-12 17:12:49', '2017-01-12 17:12:49'),
(18, 1, 7, 7, 16, 10, '2017-01-15 22:25:33', '2017-01-15 22:25:33'),
(19, 1, 2, 2, 34, 12, '2017-02-19 02:11:05', '2017-02-19 02:11:05'),
(20, 1, 4, 4, 33, 15, '2017-02-27 02:21:30', '2017-02-27 02:21:30'),
(21, 0.02, 35, 0.7, 37, 15, '2017-02-27 02:21:30', '2017-02-27 02:21:30'),
(22, 6, 0.34, 2.04, 24, 16, '2017-02-27 20:38:16', '2017-02-27 20:38:16'),
(23, 1, 1, 1, 21, 17, '2017-02-28 13:00:40', '2017-02-28 13:00:40'),
(25, 12, 0.26, 3.12, 23, 19, '2017-02-28 19:35:31', '2017-02-28 19:35:31'),
(26, 0.2, 35, 7, 37, 19, '2017-02-28 19:35:31', '2017-02-28 19:35:31'),
(27, 1, 3, 3, 18, 20, '2017-03-01 17:55:02', '2017-03-01 17:55:02'),
(29, 0.1, 35, 3.5, 37, 22, '2017-04-02 20:53:05', '2017-04-02 20:53:05'),
(30, 1, 42.89, 42.89, 2, 22, '2017-04-02 20:53:05', '2017-04-02 20:53:05'),
(32, 1, 24, 24, 8, 24, '2017-04-02 21:43:50', '2017-04-02 21:43:50'),
(33, 0.1, 35, 3.5, 37, 24, '2017-04-02 21:43:50', '2017-04-02 21:43:50'),
(35, 1, 40, 40, 43, 26, '2017-04-02 23:15:31', '2017-04-02 23:15:31'),
(36, 1, 34, 34, 13, 27, '2017-04-28 23:15:17', '2017-04-28 23:15:17'),
(37, 1, 0.34, 0.34, 24, 28, '2017-06-08 03:02:24', '2017-06-08 03:02:24'),
(38, 1, 2, 2, 22, 28, '2017-06-08 03:02:24', '2017-06-08 03:02:24'),
(39, 1, 8.5, 8.5, 44, 29, '2017-06-08 23:05:14', '2017-06-08 23:05:14'),
(40, 1, 11, 11, 25, 29, '2017-06-08 23:05:14', '2017-06-08 23:05:14'),
(41, 1, 7, 7, 45, 30, '2017-06-09 09:33:22', '2017-06-09 09:33:22'),
(42, 0.05, 35, 1.75, 37, 30, '2017-06-09 09:33:22', '2017-06-09 09:33:22'),
(43, 4, 0.75, 3, 46, 31, '2017-06-26 17:50:41', '2017-06-26 17:50:41'),
(44, 1, 22, 22, 11, 31, '2017-06-26 17:50:41', '2017-06-26 17:50:41'),
(45, 1, 15, 15, 47, 32, '2017-06-26 19:15:54', '2017-06-26 19:15:54'),
(46, 30, 35, 1050, 37, 32, '2017-06-26 19:15:54', '2017-06-26 19:15:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumos_compras`
--

CREATE TABLE `insumos_compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` double NOT NULL,
  `importe_insumo` double NOT NULL,
  `importe` double NOT NULL,
  `insumo_id` int(10) UNSIGNED NOT NULL,
  `compra_id` int(10) UNSIGNED NOT NULL,
  `proveedor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `insumos_compras`
--

INSERT INTO `insumos_compras` (`id`, `cantidad`, `precio_unitario`, `importe_insumo`, `importe`, `insumo_id`, `compra_id`, `proveedor_id`, `created_at`, `updated_at`) VALUES
(1, 100, 0.7, 70, 0, 41, 1, 8, '2017-04-28 23:32:25', '2017-04-28 23:32:25'),
(2, 1500, 2.85, 4275, 0, 21, 2, 13, '2017-06-08 15:13:17', '2017-06-08 15:13:17'),
(3, 300, 38, 11400, 0, 6, 3, 10, '2017-06-08 15:38:31', '2017-06-08 15:38:31'),
(4, 55, 22, 1210, 0, 11, 4, 11, '2017-06-08 15:47:18', '2017-06-08 15:47:18'),
(5, 15, 36, 540, 0, 13, 4, 11, '2017-06-08 15:47:18', '2017-06-08 15:47:18'),
(6, 500, 8, 4000, 0, 45, 5, 13, '2017-06-09 09:49:20', '2017-06-09 09:49:20'),
(7, 15, 9, 135, 0, 25, 5, 13, '2017-06-09 09:49:21', '2017-06-09 09:49:21'),
(8, 4, 2, 8, 0, 40, 6, 8, '2017-06-25 03:22:29', '2017-06-25 03:22:29'),
(9, 10, 53, 530, 0, 10, 7, 13, '2017-07-04 01:37:14', '2017-07-04 01:37:14'),
(10, 20, 7, 140, 0, 33, 7, 13, '2017-07-04 01:37:14', '2017-07-04 01:37:14'),
(11, 2, 54, 108, 0, 10, 7, 13, '2017-07-04 01:37:14', '2017-07-04 01:37:14'),
(12, 20, 35, 700, 0, 37, 7, 13, '2017-07-04 01:37:15', '2017-07-04 01:37:15'),
(13, 15, 2.5, 37.5, 0, 22, 7, 13, '2017-07-04 01:37:15', '2017-07-04 01:37:15'),
(14, 5, 2.85, 14.25, 0, 21, 7, 13, '2017-07-04 01:37:15', '2017-07-04 01:37:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ivas`
--

CREATE TABLE `ivas` (
  `id` int(11) NOT NULL,
  `iva` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ivas`
--

INSERT INTO `ivas` (`id`, `iva`, `created_at`, `updated_at`) VALUES
(1, '21', '2017-01-31 20:12:38', '2017-01-31 20:12:38'),
(2, '0', '2017-02-26 19:54:09', '2017-02-26 19:54:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cod_postal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provincia_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `nombre`, `cod_postal`, `provincia_id`, `created_at`, `updated_at`) VALUES
(1, 'Resistencia', '3500', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(2, 'Barranqueras', '3510', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(4, 'Fontana', '3519', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(5, 'Posadas', '3300', 2, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(6, 'Capiovi', '3332', 2, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(7, 'Apostoles', '3350', 2, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(8, 'Jardin America', '3340', 2, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(9, 'Corrientes', '3450', 3, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(10, 'Itacaruare', '3400', 3, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(11, 'Mercedes', '3410', 3, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(12, 'Paso de la patria', '3422', 3, '2016-12-05 02:19:36', '2016-12-05 02:19:36'),
(13, 'Ituzaingo', '3490', 3, '2016-12-05 02:19:37', '2016-12-05 02:19:37'),
(15, 'Aristobulo del Valle', '', 2, '2017-01-30 20:05:49', '2017-01-30 20:05:49'),
(16, 'Quitilipi', '', 1, '2017-02-18 20:45:15', '2017-02-18 20:45:15'),
(17, 'Villa Carlos Paz', '', 6, '2017-02-20 00:25:00', '2017-02-20 00:25:00'),
(18, 'Cobresal', '', 16, '2017-02-20 00:32:04', '2017-02-20 00:32:04'),
(19, 'Puerto Iguazú', '', 2, '2017-02-20 19:27:30', '2017-02-20 19:27:57'),
(20, 'Puerto Rico', '', 2, '2017-02-27 22:36:54', '2017-02-27 22:36:54'),
(21, 'Bernardo Irigoyen', NULL, 2, '2017-04-06 15:03:09', '2017-04-06 15:03:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(0, 'Otro', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(1, 'Poliester', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(2, 'Algodon', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(3, 'Papel Ilustracion', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(4, 'Papel Madera', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(5, 'Carton', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(6, 'Plastico', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(7, 'Liquido aromatizante', '2016-12-05 02:21:56', '2016-12-05 02:21:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_15_152832_migracion_roles', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_03_05_143430_add_colores_table', 1),
('2015_05_05_224622_add_tipos_table', 1),
('2015_05_06_231250_add_talles_table', 1),
('2016_03_10_231434_unidades_medidas', 1),
('2016_03_13_201850_compras_table', 1),
('2016_04_05_214313_responiva', 1),
('2016_04_08_165249_migracion_rubros', 1),
('2016_04_09_182805_add_paises_table', 1),
('2016_04_09_183257_add_provincias_table', 1),
('2016_04_09_183830_add_localidades_table', 1),
('2016_04_09_185526_add_clientes_table', 1),
('2016_04_09_192102_add_proveedores_table', 1),
('2016_04_10_143430_add_cheques_table', 1),
('2016_04_10_231434_add_materiales_table', 1),
('2016_04_11_235715_add_articulos_table', 1),
('2016_04_12_001928_add_ventas_table', 1),
('2016_04_13_143531_migracion_caja', 1),
('2016_04_13_143553_migracion_movimiento', 1),
('2016_04_14_135511_migracion_articulosVentas', 1),
('2016_04_18_153148_migracion_configs', 1),
('2016_04_18_230057_add_tipo_publicado_tabla', 1),
('2016_09_15_152832_migracion_auditorias', 1),
('2016_09_29_230240_add_producto_publicado_tabla', 1),
('2016_11_13_150451_insumos', 1),
('2016_11_13_203938_insumosCompras_table', 1),
('2016_11_13_204633_insumosArticulos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` enum('entrada','salida') COLLATE utf8_unicode_ci DEFAULT NULL,
  `forma` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monto` double DEFAULT NULL,
  `concepto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caja_id` int(10) UNSIGNED DEFAULT NULL,
  `ccorriente_id` int(11) DEFAULT NULL,
  `cuenta_corriente_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `venta_id` int(10) UNSIGNED DEFAULT NULL,
  `compra_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`id`, `fecha`, `hora`, `tipo`, `forma`, `monto`, `concepto`, `caja_id`, `ccorriente_id`, `cuenta_corriente_id`, `user_id`, `venta_id`, `compra_id`, `created_at`, `updated_at`) VALUES
(1, '05/06/2017', '12:59', 'entrada', NULL, 79.86, 'Venta de artículos por un monto de $79.86', 1, NULL, NULL, 1, 1, NULL, '2017-06-05 15:59:13', '2017-06-05 15:59:13'),
(2, '05-06-2017', '21:20', 'entrada', 'CC', 500, 'Abono de crédito mensual mes Mayo', 1, 14, 14, 2, NULL, NULL, '2017-06-06 00:28:54', '2017-06-06 00:28:54'),
(3, '05/06/2017', '23:21', 'salida', 'CC', 14.52, 'pago Totalidad con Cuenta Corriente', NULL, 14, 14, 2, 2, NULL, '2017-06-06 02:21:20', '2017-06-06 02:21:20'),
(4, '07/06/2017', '09:39', 'entrada', NULL, 11.94, 'Pago por anticipado de un pedido por un monto de $11.94', 1, NULL, NULL, 2, 3, NULL, '2017-06-07 12:39:06', '2017-06-07 12:39:07'),
(5, '07/06/2017', '09:44', 'entrada', NULL, 7, 'Pago por anticipado de un pedido por un monto de $7', 1, NULL, NULL, 2, 4, NULL, '2017-06-07 12:44:46', '2017-06-07 12:44:48'),
(6, '07/06/2017', '12:45', 'entrada', NULL, 5, 'Pago por anticipado de un pedido por un monto de $5', 1, NULL, NULL, 2, 5, NULL, '2017-06-07 15:45:33', '2017-06-07 15:45:33'),
(7, '07/06/2017', '12:56', 'entrada', NULL, 10, 'Pago por anticipado de un pedido por un monto de $10', 1, NULL, NULL, 2, 6, NULL, '2017-06-07 15:56:52', '2017-06-07 15:56:53'),
(8, '07/06/2017', '13:09', 'entrada', NULL, 4, 'Pago por anticipado de un pedido por un monto de $4', 1, NULL, NULL, 2, 7, NULL, '2017-06-07 16:09:36', '2017-06-07 16:09:36'),
(9, '07/06/2017', '13:16', 'entrada', NULL, 15.52, 'Pago por anticipado de un pedido por un monto de $15.52', 1, NULL, NULL, 2, 8, NULL, '2017-06-07 16:16:45', '2017-06-07 16:16:45'),
(10, '07/06/2017', '13:17', 'entrada', NULL, 5, 'Pago por anticipado de un pedido por un monto de $5', 1, NULL, NULL, 2, 9, NULL, '2017-06-07 16:17:38', '2017-06-07 16:17:38'),
(11, '07/06/2017', '14:18', 'entrada', NULL, 15, 'Pago por anticipado de un pedido por un monto de $15', 1, NULL, NULL, 2, 10, NULL, '2017-06-07 17:18:16', '2017-06-07 17:18:17'),
(12, '07/06/2017', '14:22', 'entrada', NULL, 50, 'Pago por anticipado de un pedido por un monto de $50', 1, NULL, NULL, 2, 11, NULL, '2017-06-07 17:22:21', '2017-06-07 17:22:22'),
(13, '07/06/2017', '14:24', 'entrada', NULL, 20, 'Pago por anticipado de un pedido por un monto de $20', 1, NULL, NULL, 2, 12, NULL, '2017-06-07 17:24:55', '2017-06-07 17:24:55'),
(14, '07/06/2017', '14:27', 'entrada', NULL, 15, 'Pago por anticipado de un pedido por un monto de $15', 1, NULL, NULL, 2, 13, NULL, '2017-06-07 17:27:33', '2017-06-07 17:27:34'),
(15, '07/06/2017', '14:29', 'entrada', NULL, 20, 'Pago por anticipado de un pedido por un monto de $20', 1, NULL, NULL, 2, 14, NULL, '2017-06-07 17:29:21', '2017-06-07 17:29:22'),
(16, '07/06/2017', '14:31', 'entrada', NULL, 200, 'Pago por anticipado de un pedido por un monto de $200', 1, NULL, NULL, 2, 15, NULL, '2017-06-07 17:31:10', '2017-06-07 17:31:10'),
(17, '07/06/2017', '14:38', 'entrada', NULL, 30, 'Pago por anticipado de un pedido por un monto de $30', 1, NULL, NULL, 2, 16, NULL, '2017-06-07 17:38:25', '2017-06-07 17:38:25'),
(18, '08/06/2017', '11:41', 'entrada', NULL, 7.76, 'Cobro de Cheque de cliente Sergio Sanabria', 1, NULL, NULL, 2, NULL, NULL, '2017-06-08 14:41:42', '2017-06-08 14:41:42'),
(19, '08-06-2017', '12:47', 'salida', NULL, 1750, 'Compra de insumos por un monto de $1750', 1, NULL, NULL, 2, NULL, 4, '2017-06-08 15:47:19', '2017-06-08 15:47:19'),
(20, '08-06-2017', '12:48', 'entrada', NULL, 16000, 'Pago de acreedores', 1, NULL, NULL, 2, NULL, NULL, '2017-06-08 15:56:10', '2017-06-08 15:56:10'),
(21, '08/06/2017', '12:57', 'entrada', NULL, 21.04, 'Se termino de pagar un pedido por el monto de: $21.04', 1, NULL, NULL, 2, 6, NULL, '2017-06-08 15:57:54', '2017-06-08 15:57:54'),
(22, '08/06/2017', '13:15', 'entrada', NULL, 435.59, 'Venta de artículos por un monto de $435.59', 1, NULL, NULL, 2, 17, NULL, '2017-06-08 16:15:29', '2017-06-08 16:15:30'),
(23, '08/06/2017', '20:31', 'entrada', NULL, 2431.94, 'Venta de artículos por un monto de $2431.94', 1, NULL, NULL, 2, 18, NULL, '2017-06-08 23:31:48', '2017-06-08 23:31:49'),
(24, '09/06/2017', '06:49', 'salida', NULL, 4285, 'Compra de insumos por un monto de $4285', 1, NULL, NULL, 2, NULL, 5, '2017-06-09 09:49:21', '2017-06-09 09:49:21'),
(25, '09/06/2017', '06:56', 'entrada', NULL, 1238.17, 'Pago por anticipado de un pedido por un monto de $1238.17', 1, NULL, NULL, 2, 19, NULL, '2017-06-09 09:56:25', '2017-06-09 09:56:27'),
(26, '09/06/2017', '07:03', 'entrada', NULL, 14.52, 'Cobro de Cheque de cliente Sergio Sanabria', 1, NULL, NULL, 2, NULL, NULL, '2017-06-09 10:03:53', '2017-06-09 10:03:53'),
(27, '15/06/2017', '09:11', 'entrada', NULL, 26.56, 'Se termino de pagar un pedido por el monto de: $26.56', 1, NULL, NULL, 1, 16, NULL, '2017-06-15 12:11:44', '2017-06-15 12:11:44'),
(28, '15/06/2017', '10:00', 'entrada', NULL, 26.56, 'Se termino de pagar un pedido por el monto de: $26.56', 1, NULL, NULL, 1, 16, NULL, '2017-06-15 13:00:29', '2017-06-15 13:00:29'),
(29, '15/06/2017', '10:08', 'entrada', NULL, 26.56, 'Se termino de pagar un pedido por el monto de: $26.56', 1, NULL, NULL, 1, 16, NULL, '2017-06-15 13:08:09', '2017-06-15 13:08:09'),
(30, '19/06/2017', '23:22', 'entrada', NULL, 20, 'Cobro de Cheque de cliente Lisandro Matías Blanco', 1, NULL, NULL, 2, NULL, NULL, '2017-06-20 02:22:14', '2017-06-20 02:22:14'),
(31, '20/06/2017', '01:17', 'entrada', NULL, 7, 'Cobro de Cheque de cliente Sergio Caballero', 1, NULL, NULL, 2, NULL, NULL, '2017-06-20 04:17:12', '2017-06-20 04:17:12'),
(32, '23/06/2017', '10:04', 'salida', 'CC', 366.52, 'pago Totalidad en cheque', NULL, 17, 17, 2, 20, NULL, '2017-06-23 13:04:27', '2017-06-23 13:04:27'),
(33, '25/06/2017', '00:20', 'entrada', NULL, 5499, 'Ingreso Externo', 2, NULL, NULL, 2, NULL, NULL, '2017-06-25 03:22:08', '2017-06-25 03:22:08'),
(34, '25/06/2017', '00:22', 'salida', NULL, 58, 'Compra de insumos por un monto de $58', 2, NULL, NULL, 2, NULL, 6, '2017-06-25 03:22:29', '2017-06-25 03:22:29'),
(41, '25/06/2017', '19:42', 'entrada', NULL, 10, 'Pago por anticipado de un pedido por un monto de $10', 2, NULL, NULL, 1, 22, NULL, '2017-06-25 22:42:21', '2017-06-25 22:42:21'),
(42, '25/06/2017', '19:45', 'entrada', NULL, 29.68, 'Se termino de pagar un pedido por el monto de: $29.68', 2, NULL, NULL, 1, 22, NULL, '2017-06-25 22:45:24', '2017-06-25 22:45:24'),
(43, '25/06/2017', '19:47', 'entrada', NULL, 125, 'Pago por anticipado de un pedido por un monto de $125', 2, NULL, NULL, 1, 23, NULL, '2017-06-25 22:47:30', '2017-06-25 22:47:31'),
(44, '25/06/2017', '20:00', 'entrada', NULL, 10.73, 'Se termino de pagar un pedido por el monto de: $10.73', 2, NULL, NULL, 1, 23, NULL, '2017-06-25 23:00:36', '2017-06-25 23:00:36'),
(45, '25/06/2017', '21:54', 'salida', 'CC', 47.76, 'pago Totalidad con Cuenta Corriente', NULL, 15, 15, 1, 24, NULL, '2017-06-26 00:54:28', '2017-06-26 00:54:28'),
(46, '26/06/2017', '08:44', 'entrada', NULL, 35, 'Pago por anticipado de un pedido por un monto de $35', 2, NULL, NULL, 2, 25, NULL, '2017-06-26 11:44:23', '2017-06-26 11:44:23'),
(47, '26/06/2017', '10:09', 'entrada', NULL, 30, 'Pago por anticipado de un pedido por un monto de $30', 2, NULL, NULL, 2, 26, NULL, '2017-06-26 13:09:04', '2017-06-26 13:09:04'),
(48, '26/06/2017', '10:25', 'entrada', NULL, 46.1, 'Se termino de pagar un pedido por el monto de: $46.1', 2, NULL, NULL, 2, 14, NULL, '2017-06-26 13:25:16', '2017-06-26 13:25:16'),
(49, '26/06/2017', '11:16', 'entrada', NULL, 150, 'Pago por anticipado de un pedido por un monto de $150', 2, NULL, NULL, 2, 27, NULL, '2017-06-26 14:16:08', '2017-06-26 14:16:09'),
(50, '26/06/2017', '14:02', 'salida', 'CC', 6.17, 'pago Totalidad con Cuenta Corriente', NULL, 13, 13, 1, 28, NULL, '2017-06-26 17:02:33', '2017-06-26 17:02:33'),
(51, '26/06/2017', '15:08', 'entrada', NULL, 8.56, 'Se termino de pagar un pedido c/ cheque por $8.56', 2, NULL, NULL, 1, 25, NULL, '2017-06-26 18:08:44', '2017-06-26 18:08:44'),
(53, '26/06/2017', '16:22', 'salida', 'CC', 2000, 'pago seña c/ cheque', NULL, 18, 18, 1, 29, NULL, '2017-06-26 19:22:37', '2017-06-26 19:22:37'),
(54, '26/06/2017', '16:26', 'entrada', NULL, 2000, 'Cobro de Cheque de cliente Rodrigo Pillud', 2, NULL, NULL, 1, NULL, NULL, '2017-06-26 19:26:41', '2017-06-26 19:26:41'),
(55, '30/06/2017', '23:52', 'entrada', NULL, 11.94, 'Pago por anticipado de un pedido por un monto de $11.94', 2, NULL, NULL, 1, 30, NULL, '2017-07-01 02:52:27', '2017-07-01 02:52:27'),
(56, '02/07/2017', '22:11', 'entrada', NULL, 168.56, 'Pago por anticipado de un pedido por un monto de $168.56', 2, NULL, NULL, 2, 31, NULL, '2017-07-03 01:11:42', '2017-07-03 01:11:43'),
(57, '02/07/2017', '22:41', 'entrada', NULL, 200, 'Pago por anticipado de un pedido por un monto de $200', 2, NULL, NULL, 2, 32, NULL, '2017-07-03 01:41:16', '2017-07-03 01:41:17'),
(58, '03-07-2017', '22:37', 'salida', NULL, 1529.75, 'Compra de insumos por un monto de $1529.75', 2, NULL, NULL, 1, NULL, 7, '2017-07-04 01:37:15', '2017-07-04 01:37:15'),
(59, '03/07/2017', '23:52', 'salida', 'CC', 1256.94, 'pago Totalidad con Cuenta Corriente', NULL, 18, 18, 1, 33, NULL, '2017-07-04 02:52:46', '2017-07-04 02:52:46'),
(60, '04/07/2017', '00:02', 'entrada', NULL, 401.64, 'Se termino de pagar un pedido por el monto de: $401.64', 2, NULL, NULL, 1, 13, NULL, '2017-07-04 03:02:33', '2017-07-04 03:02:33'),
(61, '04/07/2017', '00:09', 'salida', 'CC', 94.36, 'pago Totalidad con Cuenta Corriente', NULL, 1, 1, 1, 34, NULL, '2017-07-04 03:09:33', '2017-07-04 03:09:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', '2016-12-05 02:19:34', '2016-12-05 02:19:34'),
(2, 'Paraguay', '2016-12-05 02:19:34', '2016-12-05 02:19:34'),
(3, 'Brasil', '2016-12-05 02:19:34', '2016-12-05 02:19:34'),
(4, 'Perú', '2016-12-05 02:19:34', '2016-12-05 15:15:59'),
(7, 'Chile', '2017-01-29 16:56:20', '2017-01-29 16:56:20'),
(9, 'Uruguay', '2017-01-29 17:59:25', '2017-01-29 17:59:25'),
(11, 'Guatemala', '2017-01-29 18:02:20', '2017-01-29 18:04:24'),
(12, 'Ucrania', '2017-01-29 23:40:21', '2017-01-29 23:40:21'),
(14, 'Japon', '2017-01-30 18:49:18', '2017-01-30 18:51:05'),
(15, 'Australia', '2017-01-30 18:54:25', '2017-01-30 18:54:25'),
(16, 'Suiza', '2017-01-30 19:01:00', '2017-01-30 19:01:00'),
(17, 'Turquia', '2017-01-30 19:02:00', '2017-01-30 19:02:00'),
(19, 'Cuba', '2017-01-30 19:04:42', '2017-01-30 19:04:42'),
(20, 'Uzbekisqtan', '2017-02-02 21:51:48', '2017-02-02 21:51:48'),
(21, 'Congo', '2017-02-27 20:53:59', '2017-02-27 20:53:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_publicados`
--

CREATE TABLE `productos_publicados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `tipo_publicado_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos_publicados`
--

INSERT INTO `productos_publicados` (`id`, `nombre`, `descripcion`, `imagen`, `estado`, `tipo_publicado_id`, `created_at`, `updated_at`) VALUES
(1, 'Remera Los Simpsons', '', 'GN_Producto_1480897130.jpg', 1, 1, '2016-12-05 03:18:50', '2016-12-05 03:18:50'),
(2, 'Camiseta Personalizada', 'Trae a tu equipo y llevate la camiseta del barrio!!!', 'GN_Producto_1480897179.jpg', 1, 1, '2016-12-05 03:19:39', '2016-12-05 03:19:39'),
(3, 'Calcos 40x40', 'Veni con tu imagen y llevate tu calco personalizada!', 'GN_Producto_1480959217.png', 1, 4, '2016-12-05 20:33:37', '2016-12-05 20:33:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `cuit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora_a_manana` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `hora_c_manana` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `hora_a_tarde` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `hora_c_tarde` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `localidad_id` int(10) UNSIGNED NOT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `altura` int(11) NOT NULL,
  `telefono` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rubro_id` int(10) UNSIGNED NOT NULL,
  `estado` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `cuit`, `imagen`, `nombre`, `hora_a_manana`, `hora_c_manana`, `hora_a_tarde`, `hora_c_tarde`, `localidad_id`, `calle`, `altura`, `telefono`, `celular`, `email`, `web`, `rubro_id`, `estado`, `created_at`, `updated_at`) VALUES
(8, '22564585664', 'GN_1483994098.jpg', 'Obbi One SH', '08:00', '12:30', '17:00', '21:00', 12, 'San Martin', 241, '3624236411', '362415236411', 'info.obi@yahoo.com', 'www.lafuerza.com', 4, 'inactivo', '2017-01-09 23:34:58', '2017-02-20 02:09:31'),
(9, '21333666844', 'GN_1483994282.png', 'Arcor', '08:15', '12:00', '17:30', '20:30', 9, 'Formosa', 445, '362456458', '', '', 'www.arcor.com.ar', 7, NULL, '2017-01-09 23:38:02', '2017-01-09 23:38:02'),
(10, '30456887139', 'GN_1487553657.jpg', 'Textil Mandiyu', '08:30', '12:30', '17:00', '20:30', 1, 'Belgrano', 1700, '3764875112', '3764875541', 'info@mandiyu.com.ar', 'www.textilmandi.com.ar', 2, 'activo', '2017-02-20 01:17:35', '2017-02-20 01:20:57'),
(11, '2045689034', 'GN_1487553951.png', 'Insumos Parana SH', '07:30', '12:00', '16:30', '20:30', 2, 'Neuquen', 2013, '3624558401', '362487749', 'info@paranainsumos.com.ar', 'www.parana.com.ar', 3, 'activo', '2017-02-20 01:18:09', '2017-02-20 01:25:51'),
(12, '2033689034', 'GN_1487554094.jpg', 'Plasticos Castelli', '08:00', '13:00', '17:00', '20:00', 16, 'Jujuy', 745, '3624558991', '362487749', 'info@plasticoscastelli.com', 'www.pcastelli.com', 4, 'activo', '2017-02-20 01:18:09', '2017-02-20 01:28:14'),
(13, '2029180034', 'sin imagen', 'Papeleria Rivadavia SRL', '', '', '', '', 5, '25 de Mayo', 806, '3624558401', '362487749', 'info@paranainsumos.com.ar', 'www.rivadavia-papeles.com', 2, 'activo', '2017-02-20 01:18:11', '2017-02-20 01:18:11'),
(14, '2031456621', 'GN_1496941631.png', 'Descartables Quomm''pinche', '08:30', '12:00', '16:00', '19:30', 1, 'Laprita', 744, '3624558410', '3624236411', 'qomm@hotmail.com', 'elquommpinche.com', 7, 'activo', '2017-06-08 17:07:11', '2017-06-08 17:07:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pais_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombre`, `pais_id`, `created_at`, `updated_at`) VALUES
(1, 'Chaco', 1, '2016-12-05 02:19:34', '2016-12-05 02:19:34'),
(2, 'Misiones', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(3, 'Corrientes', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(4, 'Buenos Aires', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(5, 'Formosa', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(6, 'Cordoba', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(7, 'Rio Negro', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(9, 'Neuquén', 1, '2016-12-05 02:19:35', '2017-01-30 19:54:34'),
(10, 'Entre Rios', 1, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(11, 'Itapua', 2, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(12, '3 de Febrero', 2, '2016-12-05 02:19:35', '2016-12-05 02:19:35'),
(13, 'Tucuman', 1, '2017-01-30 19:23:44', '2017-01-30 19:23:44'),
(14, 'San Luis', 1, '2017-01-30 19:25:53', '2017-01-30 19:25:53'),
(15, 'Mato Grosso', 3, '2017-01-30 19:48:37', '2017-01-30 19:48:37'),
(16, 'Antofagasta', 7, '2017-02-20 00:31:43', '2017-02-20 00:31:43'),
(17, 'Santa Catarina', 3, '2017-02-27 14:23:40', '2017-02-27 14:23:40'),
(18, 'Salta', 1, '2017-03-18 15:07:42', '2017-03-18 15:07:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responiva`
--

CREATE TABLE `responiva` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `iva` double NOT NULL,
  `factura` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `responiva`
--

INSERT INTO `responiva` (`id`, `nombre`, `iva`, `factura`, `created_at`, `updated_at`) VALUES
(1, 'Responsable Inscripto', 21, 'A', '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(2, 'Monotributista', 21, 'B', '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(3, 'Consumidor Final', 21, 'B', '2016-12-05 02:21:57', '2016-12-05 02:21:57'),
(4, 'Excento', 21, 'B', '2016-12-05 02:21:57', '2016-12-05 02:21:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nivel_acceso` int(11) DEFAULT NULL,
  `modulos` varchar(350) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `nivel_acceso`, `modulos`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 1, 'Usuarios_Roles | Parametros | Insumos_Compras | Articulos | Proveedores_Rubros |  Clientes | Ventas | Cajas | Auditorias | AdminWeb', '2016-12-04 03:00:00', NULL),
(2, 'Administrador Web', 2, 'Parametros | AdminWeb', '2016-12-04 03:00:00', NULL),
(3, 'Vendedor', 3, '| Articulos | Clientes | Ventas |', '2017-02-03 13:20:05', '2017-02-03 13:20:05'),
(4, 'Cajero', 4, '| Articulos | Clientes | Ventas | Cajas |', '2017-02-03 13:20:06', '2017-02-03 13:20:06'),
(15, 'Repositor', NULL, ' Parametros | Insumos_Compras | Proveedores_Rubros |', '2017-02-26 14:41:06', '2017-02-26 14:41:06'),
(16, 'Fulanito', NULL, ' Insumos_Compras | Articulos | Ventas |', '2017-02-27 20:22:17', '2017-02-27 20:22:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubros`
--

CREATE TABLE `rubros` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `rubros`
--

INSERT INTO `rubros` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Merchandisign', '2016-12-05 02:21:54', '2016-12-05 02:21:54'),
(2, 'Textil', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(3, 'Libreria', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(4, 'Insumos Varios', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(5, 'Papeleria', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(6, 'Otro', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(7, 'Cotillon', '2016-12-05 05:34:55', '2016-12-05 05:34:55'),
(8, 'Gigantografias', '2016-12-05 05:35:22', '2016-12-05 05:35:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talles`
--

CREATE TABLE `talles` (
  `id` int(10) UNSIGNED NOT NULL,
  `talle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alto` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ancho` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `talles`
--

INSERT INTO `talles` (`id`, `talle`, `alto`, `ancho`, `created_at`, `updated_at`) VALUES
(0, 'Ninguno', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(1, 'S', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(2, 'M', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(3, 'L', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(4, 'XL', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(5, 'XXL', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(6, 'XXXL', NULL, NULL, '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(7, 'XS', '', '', '2017-02-27 22:56:51', '2017-02-27 22:56:51'),
(8, 'XXS', '', '', '2017-03-18 15:29:53', '2017-03-18 15:29:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(0, 'Otro', '', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(1, 'Merchandising', 'Destinados a la promocion de empresas o eventos: imanes para heladeras, destapadores, pines, llaveros', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(2, 'Indumentaria', 'Remeras, Chombas, Gorras, Chaquetas Profesionales', '2016-12-05 02:21:55', '2016-12-05 02:21:55'),
(3, 'Libreria', 'Calendarios, Tarjetas, Afiches, Carpetas, etc', '2016-12-05 02:21:56', '2016-12-05 02:21:56'),
(5, 'coso', 'papelitos, lapices', '2017-01-31 14:32:14', '2017-01-31 14:32:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_publicados`
--

CREATE TABLE `tipos_publicados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_publicados`
--

INSERT INTO `tipos_publicados` (`id`, `nombre`, `estado`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Indumentaria', 1, 'GN_1480896906.jpg', '2016-12-05 03:15:06', '2016-12-05 03:15:06'),
(2, 'Cotillon', 1, 'GN_1480896934.jpg', '2016-12-05 03:15:34', '2016-12-05 03:15:34'),
(3, 'Ploteos', 1, 'GN_1480897048.jpg', '2016-12-05 03:17:28', '2016-12-05 03:17:28'),
(4, 'Ploteo Vehicular', 1, 'GN_1480959130.png', '2016-12-05 20:32:10', '2016-12-05 20:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_medidas`
--

CREATE TABLE `unidades_medidas` (
  `id` int(10) UNSIGNED NOT NULL,
  `unidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detalle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `unidades_medidas`
--

INSERT INTO `unidades_medidas` (`id`, `unidad`, `detalle`, `created_at`, `updated_at`) VALUES
(1, 'mm²', 'milimetros cuadrados', '2016-12-05 02:23:03', '2016-12-05 02:23:03'),
(2, 'cm', 'centimetros cuadrados', '2016-12-05 02:23:03', '2016-12-05 02:23:03'),
(4, 'mm³', 'milimetros cubicos', '2016-12-05 02:23:04', '2016-12-05 02:23:04'),
(5, 'dm³', 'decimetros cubicos', '2016-12-05 02:23:04', '2016-12-05 02:23:04'),
(6, 'unidades', 'Cantidad por Unidad', '2016-12-05 02:23:04', '2016-12-05 02:23:04'),
(7, 'cm', 'centimetros', '2016-12-05 02:23:04', '2016-12-05 02:23:04'),
(8, 'mm', 'milimetros', '2016-12-05 02:23:04', '2016-12-05 02:23:04'),
(9, 'm', 'metros', '2016-12-05 02:23:04', '2016-12-05 02:23:04'),
(10, 'litro', 'litros', '2016-12-05 02:23:05', '2016-12-05 02:23:05'),
(12, 'ml', 'mililitros', NULL, NULL),
(13, 'ml', 'mililitros', '2016-12-05 18:42:50', '2017-02-28 17:31:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rol_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `imagen`, `password`, `rol_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan Pablo Caceres', 'jpaulnava@gmail.com', 'usuario_1488286701.jpg', '$2y$10$neE/ldNdmdO9X8.SUCgCg.W..XdiOORJTICaj35gkJ7ojByimSNyS', 1, 'PfXKHnQ9eemkluQrtAHH6KvzPbnAzuQ4CzUV4hsD5MKJup7d29DgphZlYEJQ', '2016-12-05 02:16:40', '2017-07-04 02:54:32'),
(2, 'Moira Ronconi', 'info@gnsoluciones.com', 'usuario_1486845052.jpg', '$2y$10$ENB3o1uIwb/Ub1b0WjRYJevMnzwXqavsL35qmqvHDRQqBjRJ0uZqm', 1, 't1fWCtNMzNSXoi3lrDN2FnraJe2AoQnFxaSpZvMx3xsIz3RAQm0HwoqoXD3g', '2016-12-05 02:16:42', '2017-07-04 01:31:56'),
(3, 'Cranson Brian', 'bcranson@mallcom.com', 'usuario_1486128533.jpg', '$2y$10$V1inJuY.Rh5oQmDNZieTl.1L9yhgecXAH1t6yNo0oGvMAfByUxLNq', 2, 'D317Xw6qN66eIgd91YON58emcdweUVG5SBgeYC9cY5lwKD3vTziaMbeSno4l', '2017-02-03 13:28:53', '2017-03-20 20:54:03'),
(4, 'Donaruma Julian', 'ventas@gmail.com', 'usuario_1488134988.jpg', '$2y$10$MTJb4fx2j5KQhuoUMtKtze26wMZoYOSsM0xatrgB19S7k5lEtPS0i', 4, NULL, '2017-02-26 18:49:49', '2017-02-26 18:49:49'),
(5, 'Porzingis Kristaps', 'porzingis@gmail.com', 'usuario_1489775444.jpg', '$2y$10$chVaVwPHaU7xou648V36C.dqdIceKxrEJX3HfsYN0pqT4kPHxr7.K', 3, 'd6Ckp1bbMDCAn0jVqXhj9z5p1I0kNP1QFyh5xuuzTUzuJ2LEkKLWo9i05qJr', '2017-03-17 18:30:44', '2017-03-20 21:54:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_pedido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hora_pedido` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_entrega_estimada` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_venta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_venta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_facturacion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hora_facturacion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagado` tinyint(1) DEFAULT NULL,
  `entregado` tinyint(1) DEFAULT NULL,
  `senado` double DEFAULT NULL,
  `forma_pago` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cheque_id` int(10) UNSIGNED DEFAULT NULL,
  `userPedido_id` int(10) UNSIGNED DEFAULT NULL,
  `horas_produccion` double DEFAULT NULL,
  `progreso` double DEFAULT NULL,
  `userVenta_id` int(10) UNSIGNED DEFAULT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `nro_cae` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha_vencimiento_cae` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha_pedido`, `hora_pedido`, `fecha_entrega_estimada`, `fecha_venta`, `hora_venta`, `fecha_facturacion`, `hora_facturacion`, `pagado`, `entregado`, `senado`, `forma_pago`, `cheque_id`, `userPedido_id`, `horas_produccion`, `progreso`, `userVenta_id`, `cliente_id`, `nro_cae`, `fecha_vencimiento_cae`, `created_at`, `updated_at`) VALUES
(1, '05/06/2017', '12:59', '05/06/2017', '05-06-2017', '12:59', '05/06/2017', NULL, 1, 1, 79.86, 'Totalidad Efectivo', NULL, 1, 5.5, 0, 1, 2, '5236662', '2017-06-22', '2017-06-05 15:59:13', '2017-06-05 16:01:31'),
(2, '05/06/2017', '23:21', '06/06/2017', '07-06-2017', '00:29', '15/06/2017', NULL, 1, 1, 14.52, 'Totalidad con Cuenta Corriente', NULL, 2, 1, 100, 1, 14, '456879', '2017-06-22', '2017-06-06 02:21:19', '2017-06-07 03:29:40'),
(3, '07/06/2017', '09:39', '08/06/2017', '07-06-2017', '12:10', NULL, NULL, 1, 1, 11.94, 'Totalidad Efectivo', NULL, 2, 0.5, 100, 2, 5, '5423130008879', '2017-06-08', '2017-06-07 12:39:06', '2017-06-07 15:10:26'),
(4, '07/06/2017', '09:44', '08/06/2017', '03-07-2017', '22:21', NULL, NULL, 1, 1, 7, 'Totalidad Efectivo', NULL, 2, 0.5, 100, 2, 25, '22354687', '2017-06-09', '2017-06-07 12:44:46', '2017-07-04 01:21:44'),
(5, '07/06/2017', '12:45', '09/06/2017', NULL, NULL, NULL, NULL, 0, 0, 5, 'Seña en Efectivo', NULL, 2, 0, 0, NULL, 7, NULL, NULL, '2017-06-07 15:45:33', '2017-06-07 15:45:33'),
(6, '07/06/2017', '12:56', '10/06/2017', '08-06-2017', '12:57', NULL, NULL, 1, 1, 10, 'Seña en Efectivo', NULL, 2, 2, 100, 2, 14, NULL, NULL, '2017-06-07 15:56:52', '2017-06-08 15:57:54'),
(7, '07/06/2017', '13:09', '09/06/2017', NULL, NULL, NULL, NULL, 0, 0, 4, 'Seña en Efectivo', NULL, 2, 1.5, 0, NULL, 2, NULL, NULL, '2017-06-07 16:09:35', '2017-06-07 16:09:35'),
(8, '07/06/2017', '13:16', '09/06/2017', NULL, NULL, NULL, NULL, 1, 0, 15.52, 'Totalidad Efectivo', NULL, 2, 1, 0, NULL, 7, NULL, NULL, '2017-06-07 16:16:45', '2017-06-07 16:16:45'),
(9, '07/06/2017', '13:17', '10/06/2017', NULL, NULL, NULL, NULL, 0, 0, 5, 'Seña en Efectivo', NULL, 2, 1, 0, NULL, 5, NULL, NULL, '2017-06-07 16:17:38', '2017-06-07 16:17:38'),
(10, '07/06/2017', '14:18', '08/06/2017', NULL, NULL, NULL, NULL, 0, 0, 15, 'Seña en Efectivo', NULL, 2, 10, 0, NULL, 6, NULL, NULL, '2017-06-07 17:18:16', '2017-06-07 17:18:16'),
(11, '07/06/2017', '14:22', '08/06/2017', NULL, NULL, NULL, NULL, 0, 0, 50, 'Seña en Efectivo', NULL, 2, 0, 0, NULL, 10, NULL, NULL, '2017-06-07 17:22:21', '2017-06-07 17:22:21'),
(12, '07/06/2017', '14:24', '08/06/2017', NULL, NULL, NULL, NULL, 0, 0, 20, 'Seña en Efectivo', NULL, 2, 7.5, 0, NULL, 9, NULL, NULL, '2017-06-07 17:24:55', '2017-06-07 17:24:55'),
(13, '07/06/2017', '14:27', '08/06/2017', '04-07-2017', '00:02', NULL, NULL, 1, 1, 15, 'Seña en Efectivo y saldo en efectivo y saldo en efectivo', NULL, 2, 28.5, 100, 1, 8, NULL, NULL, '2017-06-07 17:27:33', '2017-07-04 03:02:46'),
(14, '07/06/2017', '14:29', '08/06/2017', NULL, NULL, '26/06/2017', '11:13', 1, 0, 20, 'Seña en Efectivo y saldo en efectivo', NULL, 2, 1, 100, NULL, 5, '7464394682462', '2017-07-31', '2017-06-07 17:29:21', '2017-06-26 14:13:15'),
(15, '07/06/2017', '14:31', '09/06/2017', NULL, NULL, NULL, NULL, 0, 0, 200, 'Seña en Efectivo', NULL, 2, 75, 0, NULL, 12, NULL, NULL, '2017-06-07 17:31:10', '2017-06-07 17:31:10'),
(16, '07/06/2017', '14:38', '09/06/2017', '15-06-2017', '09:11', NULL, NULL, 1, 1, 30, 'Seña en Efectivo y saldo en efectivo', NULL, 2, 7, 76, 1, 2, NULL, NULL, '2017-06-07 17:38:25', '2017-06-19 15:01:30'),
(17, '08/06/2017', '13:15', '08/06/2017', '08-06-2017', '13:15', NULL, NULL, 1, 1, 435.59, 'Totalidad Efectivo', NULL, 2, 90, 0, 2, 29, NULL, NULL, '2017-06-08 16:15:29', '2017-06-08 16:15:29'),
(18, '08/06/2017', '20:31', '08/06/2017', '08-06-2017', '20:31', NULL, NULL, 1, 1, 2431.94, 'Totalidad Efectivo', NULL, 2, 100.5, 0, 2, 12, '6754221879413', '2017-06-18', '2017-06-08 23:31:48', '2017-06-08 23:32:19'),
(19, '09/06/2017', '06:56', '11/06/2017', '09-06-2017', '06:59', NULL, NULL, 1, 1, 1238.17, 'Totalidad Efectivo', NULL, 2, 10.5, 100, 2, 26, '654846123545', '2017-06-19', '2017-06-09 09:56:25', '2017-06-09 09:59:38'),
(20, '23/06/2017', '10:04', '26/06/2017', NULL, NULL, '23/06/2017', '10:06', 1, 0, 366.52, 'Totalidad en cheque', 61, 2, 27.6, 80, NULL, 9, '15681318196', '2017-07-09', '2017-06-23 13:04:27', '2017-07-04 03:16:19'),
(22, '25/06/2017', '19:42', '26/06/2017', NULL, NULL, NULL, NULL, 1, 0, 10, 'Seña en Efectivo y saldo en efectivo', NULL, 1, 0.5, 60, NULL, 2, NULL, NULL, '2017-06-25 22:42:21', '2017-06-25 22:45:24'),
(23, '25/06/2017', '19:47', '26/06/2017', NULL, NULL, NULL, NULL, 1, 0, 125, 'Seña en Efectivo y saldo en efectivo', NULL, 1, 7.5, 30, NULL, 29, NULL, NULL, '2017-06-25 22:47:30', '2017-06-25 23:00:36'),
(24, '25/06/2017', '21:54', '26/06/2017', '04-07-2017', '00:15', '25/06/2017', '22:02', 1, 1, 47.76, 'Totalidad con Cuenta Corriente y saldo en efectivo', NULL, 1, 1.5, 100, 1, 10, '723472347', '2017-08-31', '2017-06-26 00:54:28', '2017-07-04 03:15:25'),
(25, '26/06/2017', '08:44', '07/07/2017', '26-06-2017', '15:35', NULL, NULL, 1, 1, 35, 'Seña en Efectivo y saldo en efectivo y saldo en efectivo', 64, 2, 3, 100, 1, 6, NULL, NULL, '2017-06-26 11:44:23', '2017-06-26 18:35:29'),
(26, '26/06/2017', '10:09', '20/07/2017', NULL, NULL, NULL, NULL, 0, 0, 30, 'Seña en Efectivo', NULL, 2, 7.5, 0, NULL, 33, NULL, NULL, '2017-06-26 13:09:04', '2017-06-26 13:09:04'),
(27, '26/06/2017', '11:16', '13/07/2017', NULL, NULL, NULL, NULL, 0, 0, 150, 'Seña en Efectivo', NULL, 2, 16.5, 0, NULL, 30, NULL, NULL, '2017-06-26 14:16:08', '2017-06-26 14:16:08'),
(28, '26/06/2017', '14:02', '11/07/2017', '26-06-2017', '15:53', '26/06/2017', '14:36', 1, 1, 6.17, 'Totalidad con Cuenta Corriente y saldo en efectivo y saldo en efectivo', NULL, 1, 0.5, 100, 1, 7, '424624', '2017-06-29', '2017-06-26 17:02:32', '2017-06-26 18:53:44'),
(29, '26/06/2017', '16:22', '28/06/2017', NULL, NULL, NULL, NULL, 0, 0, 2000, 'seña c/ cheque', 65, 1, 20, 0, NULL, 26, NULL, NULL, '2017-06-26 19:22:37', '2017-06-26 19:22:37'),
(30, '30/06/2017', '23:52', '03/07/2017', NULL, NULL, '30/06/2017', '23:55', 1, 0, 11.94, 'Totalidad Efectivo', NULL, 1, 0.5, 0, NULL, 5, '55534661121', '2017-07-11', '2017-07-01 02:52:27', '2017-07-01 02:55:33'),
(31, '02/07/2017', '22:11', '12/07/2017', NULL, NULL, '02/07/2017', '22:13', 1, 0, 168.56, 'Totalidad Efectivo', NULL, 2, 4, 0, NULL, 6, '4646213848', '2017-07-15', '2017-07-03 01:11:42', '2017-07-03 01:13:26'),
(32, '02/07/2017', '22:41', '22/07/2017', NULL, NULL, NULL, NULL, 0, 0, 200, 'Seña en Efectivo', NULL, 2, 8, 0, NULL, 5, NULL, NULL, '2017-07-03 01:41:16', '2017-07-03 01:41:16'),
(33, '03/07/2017', '23:52', '12/07/2017', NULL, NULL, NULL, NULL, 1, 0, 1256.94, 'Totalidad con Cuenta Corriente', NULL, 1, 62.9, 0, NULL, 26, NULL, NULL, '2017-07-04 02:52:46', '2017-07-04 02:52:46'),
(34, '04/07/2017', '00:09', '04/07/2017', NULL, NULL, '04/07/2017', '00:11', 1, 0, 94.36, 'Totalidad con Cuenta Corriente', NULL, 1, 7.7, 0, NULL, 4, '64813216871', '2017-07-16', '2017-07-04 03:09:33', '2017-07-04 03:11:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulos_tipo_id_foreign` (`tipo_id`),
  ADD KEY `articulos_color_id_foreign` (`color_id`),
  ADD KEY `articulos_user_id_foreign` (`user_id`),
  ADD KEY `articulos_talle_id_foreign` (`talle_id`);

--
-- Indices de la tabla `articulos_ventas`
--
ALTER TABLE `articulos_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articulos_ventas_articulo_id_foreign` (`articulo_id`),
  ADD KEY `articulos_ventas_venta_id_foreign` (`venta_id`);

--
-- Indices de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cajas_userapertura_id_foreign` (`userApertura_id`),
  ADD KEY `cajas_usercierre_id_foreign` (`userCierre_id`);

--
-- Indices de la tabla `ccorrientes`
--
ALTER TABLE `ccorrientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `userApertura_id` (`userApertura_id`);

--
-- Indices de la tabla `cheques`
--
ALTER TABLE `cheques`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_responiva_id_foreign` (`responiva_id`),
  ADD KEY `clientes_localidad_id_foreign` (`localidad_id`);

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compras_usercompra_id_foreign` (`userCompra_id`);

--
-- Indices de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_responiva_id_foreign` (`responiva_id`),
  ADD KEY `configs_localidad_id_foreign` (`localidad_id`);

--
-- Indices de la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insumos_talle_id_foreign` (`talle_id`),
  ADD KEY `insumos_material_id_foreign` (`material_id`),
  ADD KEY `insumos_color_id_foreign` (`color_id`),
  ADD KEY `insumos_unidad_medida_id_foreign` (`unidad_medida_id`);

--
-- Indices de la tabla `insumos_articulos`
--
ALTER TABLE `insumos_articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insumos_articulos_articulo_id_foreign` (`articulo_id`),
  ADD KEY `insumos_articulos_insumo_id_foreign` (`insumo_id`);

--
-- Indices de la tabla `insumos_compras`
--
ALTER TABLE `insumos_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `insumos_compras_insumo_id_foreign` (`insumo_id`),
  ADD KEY `insumos_compras_compra_id_foreign` (`compra_id`),
  ADD KEY `insumos_compras_proveedor_id_foreign` (`proveedor_id`);

--
-- Indices de la tabla `ivas`
--
ALTER TABLE `ivas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `localidades_provincia_id_foreign` (`provincia_id`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movimientos_caja_id_foreign` (`caja_id`),
  ADD KEY `movimientos_user_id_foreign` (`user_id`),
  ADD KEY `movimientos_venta_id_foreign` (`venta_id`),
  ADD KEY `movimientos_compra_id_foreign` (`compra_id`),
  ADD KEY `ccorriente_id` (`ccorriente_id`),
  ADD KEY `cuenta_corriente_id` (`cuenta_corriente_id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `productos_publicados`
--
ALTER TABLE `productos_publicados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_publicados_tipo_publicado_id_foreign` (`tipo_publicado_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedores_localidad_id_foreign` (`localidad_id`),
  ADD KEY `proveedores_rubro_id_foreign` (`rubro_id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provincias_pais_id_foreign` (`pais_id`);

--
-- Indices de la tabla `responiva`
--
ALTER TABLE `responiva`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubros`
--
ALTER TABLE `rubros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talles`
--
ALTER TABLE `talles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_publicados`
--
ALTER TABLE `tipos_publicados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unidades_medidas`
--
ALTER TABLE `unidades_medidas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_nivel_acceso_id_foreign` (`rol_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_cheque_id_foreign` (`cheque_id`),
  ADD KEY `ventas_userpedido_id_foreign` (`userPedido_id`),
  ADD KEY `ventas_userventa_id_foreign` (`userVenta_id`),
  ADD KEY `ventas_cliente_id_foreign` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `articulos_ventas`
--
ALTER TABLE `articulos_ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT de la tabla `auditorias`
--
ALTER TABLE `auditorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;
--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `ccorrientes`
--
ALTER TABLE `ccorrientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `cheques`
--
ALTER TABLE `cheques`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `comprobante`
--
ALTER TABLE `comprobante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `insumos`
--
ALTER TABLE `insumos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `insumos_articulos`
--
ALTER TABLE `insumos_articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de la tabla `insumos_compras`
--
ALTER TABLE `insumos_compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `ivas`
--
ALTER TABLE `ivas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `productos_publicados`
--
ALTER TABLE `productos_publicados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `responiva`
--
ALTER TABLE `responiva`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `rubros`
--
ALTER TABLE `rubros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `talles`
--
ALTER TABLE `talles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipos_publicados`
--
ALTER TABLE `tipos_publicados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `unidades_medidas`
--
ALTER TABLE `unidades_medidas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articulos_talle_id_foreign` FOREIGN KEY (`talle_id`) REFERENCES `talles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articulos_tipo_id_foreign` FOREIGN KEY (`tipo_id`) REFERENCES `tipos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articulos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `articulos_ventas`
--
ALTER TABLE `articulos_ventas`
  ADD CONSTRAINT `articulos_ventas_articulo_id_foreign` FOREIGN KEY (`articulo_id`) REFERENCES `articulos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articulos_ventas_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD CONSTRAINT `cajas_userapertura_id_foreign` FOREIGN KEY (`userApertura_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cajas_usercierre_id_foreign` FOREIGN KEY (`userCierre_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_localidad_id_foreign` FOREIGN KEY (`localidad_id`) REFERENCES `localidades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clientes_responiva_id_foreign` FOREIGN KEY (`responiva_id`) REFERENCES `responiva` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_usercompra_id_foreign` FOREIGN KEY (`userCompra_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_localidad_id_foreign` FOREIGN KEY (`localidad_id`) REFERENCES `localidades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `configs_responiva_id_foreign` FOREIGN KEY (`responiva_id`) REFERENCES `responiva` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `insumos`
--
ALTER TABLE `insumos`
  ADD CONSTRAINT `insumos_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insumos_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materiales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insumos_talle_id_foreign` FOREIGN KEY (`talle_id`) REFERENCES `talles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insumos_unidad_medida_id_foreign` FOREIGN KEY (`unidad_medida_id`) REFERENCES `unidades_medidas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `insumos_articulos`
--
ALTER TABLE `insumos_articulos`
  ADD CONSTRAINT `insumos_articulos_articulo_id_foreign` FOREIGN KEY (`articulo_id`) REFERENCES `articulos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insumos_articulos_insumo_id_foreign` FOREIGN KEY (`insumo_id`) REFERENCES `insumos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `insumos_compras`
--
ALTER TABLE `insumos_compras`
  ADD CONSTRAINT `insumos_compras_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insumos_compras_insumo_id_foreign` FOREIGN KEY (`insumo_id`) REFERENCES `insumos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `insumos_compras_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `localidades_provincia_id_foreign` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `movimientos_caja_id_foreign` FOREIGN KEY (`caja_id`) REFERENCES `cajas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movimientos_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movimientos_cuenta_corriente_id_foreign` FOREIGN KEY (`ccorriente_id`) REFERENCES `ccorrientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movimientos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movimientos_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos_publicados`
--
ALTER TABLE `productos_publicados`
  ADD CONSTRAINT `productos_publicados_tipo_publicado_id_foreign` FOREIGN KEY (`tipo_publicado_id`) REFERENCES `tipos_publicados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_localidad_id_foreign` FOREIGN KEY (`localidad_id`) REFERENCES `localidades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `proveedores_rubro_id_foreign` FOREIGN KEY (`rubro_id`) REFERENCES `rubros` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `provincias_pais_id_foreign` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_nivel_acceso_id_foreign` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_cheque_id_foreign` FOREIGN KEY (`cheque_id`) REFERENCES `cheques` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ventas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ventas_userpedido_id_foreign` FOREIGN KEY (`userPedido_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ventas_userventa_id_foreign` FOREIGN KEY (`userVenta_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
