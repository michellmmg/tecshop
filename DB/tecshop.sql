-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2018 a las 00:31:14
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tecshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buy`
--

CREATE TABLE `buy` (
  `id` int(11) NOT NULL,
  `k` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `client_id` int(11) NOT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `paymethod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `buy`
--

INSERT INTO `buy` (`id`, `k`, `code`, `client_id`, `coupon_id`, `status_id`, `created_at`, `paymethod_id`) VALUES
(1, 'KcudCeJAU9J', 'Zg8-bzccDhq', 10, NULL, 1, '2018-07-01 18:26:37', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buy_product`
--

CREATE TABLE `buy_product` (
  `id` int(11) NOT NULL,
  `buy_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `q` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `buy_product`
--

INSERT INTO `buy_product` (`id`, `buy_id`, `product_id`, `q`) VALUES
(1, 1, 5, 1),
(2, 1, 4, 1),
(3, 1, 3, 1),
(4, 1, 15, 1),
(5, 1, 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `short_name` varchar(200) NOT NULL,
  `in_home` tinyint(1) NOT NULL DEFAULT '0',
  `in_menu` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`, `short_name`, `in_home`, `in_menu`, `is_active`) VALUES
(1, 'Basico', 'Basico', 0, 0, 0),
(2, 'Accesorios', 'Acces', 0, 0, 1),
(3, 'iPad', 'iPad', 0, 0, 1),
(4, 'Mac', 'Mac', 0, 0, 1),
(5, 'Apple Watch', 'Apple Watch', 0, 0, 1),
(6, 'iPhone', 'iPhone', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `client`
--

INSERT INTO `client` (`id`, `name`, `lastname`, `email`, `phone`, `address`, `password`, `is_active`, `created_at`) VALUES
(1, 'michell', 'mayorga', 'michael-angel1996@hotmail.com', '966886628', 'av 514', '$1$NF4.SU..$TeZDGK4IYm2eIcvCT8PnI.', 1, '2018-06-25 20:23:14'),
(2, 'fernado', 'mayorga', 'michellmmm@gmail.com', '9668866258', 'alto  selva', '$1$zX2.AP5.$jXty.1seqUDKJHPDHUQEV0', 1, '2018-06-25 20:25:35'),
(3, 'michell', 'asdawd', 'toto1234@gmail.com', '7899', 'alto  selva', '$1$Jo4.eU..$2MWu7bMj/EFxV9fBDAfOA0', 1, '2018-06-25 20:38:34'),
(4, 'pablito', 'mayorga', 'mmg12345@gmail.com', '7894656863', '', '$1$Gc..XL5.$EIvkFI3/UoJu9s83bmtQY0', 1, '2018-06-25 20:40:33'),
(5, 'michell', 'mayorga', 'mmmmmm@gmail.com', '555554', '', '$1$K53.Ll1.$e7yBJgLTlpveI8sCh6Rby/', 1, '2018-06-27 12:47:19'),
(6, 'leo', 'asdishb', 'leo@gmail.com', '123235434', '', '15LeP39FrUfSM', 1, '2018-06-27 12:56:42'),
(7, 'pablito', 'perez', 'pablito.perez@gmail.com', '95121266', 'ALTO SELVA  ALEGRE ', '15LeP39FrUfSM', 1, '2018-06-27 13:50:26'),
(8, 'silvia ', 'gutierrez', 'silviavigil@gmail.com', 'vigil', 'ALTO SELVA ALEGRE', '15EO1ymL8inpg', 1, '2018-07-01 12:13:31'),
(9, 'ROSARIO', 'MAYORGA', 'rosario@gmail.com', '12345678', 'ALTO SELVA ALEGRE', '15/SVhe.471Nk', 1, '2018-07-01 16:27:11'),
(10, 'FER', 'MAYORGA', 'fer@gmail.com', '99999', 'CWECEWCWC', '15EO1ymL8inpg', 1, '2018-07-01 18:25:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `label` varchar(200) NOT NULL,
  `kind` int(11) DEFAULT NULL,
  `val` text,
  `cfg_id` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`id`, `name`, `label`, `kind`, `val`, `cfg_id`) VALUES
(1, 'general_main_title', 'Titulo Principal', 1, 'TECSHOP', 1),
(2, 'general_main_email', 'Email Principal', 1, 'michell,mayorga@tecsup.edu.pe', 1),
(3, 'general_country', 'Pais', 1, 'Peru', 1),
(4, 'general_coin', 'Moneda', 1, '$', 1),
(5, 'general_iva_txt', 'Impuesto Texto', 1, 'I.V.A', 1),
(6, 'general_iva', 'Impuesto IVA (%)', 2, '16', 1),
(7, 'general_img_default', 'Imagen Default', 1, 'res/img/default.png', 1),
(8, 'bank_titular', 'Titular de la cuenta', 1, '', 1),
(9, 'bank_name', 'Nombre del Banco', 1, '', 1),
(10, 'bank_account', 'Numero de Cuenta', 1, '', 1),
(11, 'bank_card', 'Numero de Tarjeta', 1, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Argentina'),
(2, 'Chile'),
(3, 'Colombia'),
(4, 'España'),
(5, 'Mexico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `val` double DEFAULT NULL,
  `kind` int(11) NOT NULL DEFAULT '1',
  `is_multiple` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `start_at` date NOT NULL,
  `finish_at` date NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paymethod`
--

CREATE TABLE `paymethod` (
  `id` int(11) NOT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paymethod`
--

INSERT INTO `paymethod` (`id`, `short_name`, `name`, `is_active`) VALUES
(1, 'bank', 'Deposito Bancario', 1),
(2, 'deliver', 'Pago Contra entrega', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `short_name` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(200) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `offer_txt` varchar(1000) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `in_existence` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `order_at` datetime NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `short_name`, `name`, `code`, `description`, `offer_txt`, `image`, `link`, `is_featured`, `is_public`, `in_existence`, `created_at`, `order_at`, `price`, `category_id`, `unit_id`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(2, 'eLOYO3rHC3L', ' MacBook', '01', 'Pantalla Retina de 12 pulgadas (diagonal) retroiluminada por LED\r\nProcesador Intel Core m3 dual core de 1.2 GHz, Intel Core i5 dual core de 1.3 GHz o Intel Core i7 dual core de 1.4 GHz\r\nTurbo Boost de hasta 3.6 GHz\r\nHasta 10 horas de baterÃ­a1\r\nSSD de hasta 512 GB2\r\nTrackpad Force Touch\r\n0.92 kg3', '', 'mac_1.jpg', '', 1, 1, 1, '2018-07-01 16:48:16', '0000-00-00 00:00:00', 1515.15, 4, 1, NULL, NULL, NULL),
(3, '-q8eqr9P0mn', 'MacBook Air de 13 pulgadas', '02', 'MacBook Air de\r\n13 pulgadas\r\n\r\n \r\n\r\nPantalla widescreen de 13.3 pulgadas (diagonal) retroiluminada por LED\r\nProcesador Intel Core i5 dual core de 1.8 GHz o Intel Core i7 dual core de 2.2 GHz\r\nTurbo Boost de hasta 3.2 GHz\r\nHasta 12 horas de baterÃ­a1\r\nSSD de hasta 512 GB2\r\nTrackpad Multi-Touch\r\n1.35 kg3', '', '002.jpg', '', 1, 1, 1, '2018-07-01 16:52:16', '0000-00-00 00:00:00', 604.64, 4, 1, NULL, NULL, NULL),
(4, '3krMLDmDy0m', 'MacBook Pro de 15 pulgadas', '03', 'Pantalla Retina de 15.4 pulgadas (diagonal) retroiluminada por LED\r\nProcesador Intel Core i7 quad core de 2.2 GHz, 2.5 GHz o 2.8 GHz\r\nTurbo Boost de hasta 4.0 GHz\r\nHasta 9 horas de baterÃ­a1\r\nSSD de hasta 1 TB2\r\nTrackpad Force Touch\r\n2.04 kg3', '', '003.jpg', '', 1, 1, 1, '2018-07-01 16:53:35', '0000-00-00 00:00:00', 644.32, 4, 1, NULL, NULL, NULL),
(5, 'Mjo-AzyZSfb', 'iMac de 21.5 pulgadas', '04', 'Pantalla Retina 4K de 21.5 pulgadas (diagonal) retroiluminada por LED\r\nProcesador Intel Core i5 quad core de 3.0 GHz o 3.4 GHz o Intel Core i7 quad core de 3.6 GHz\r\nTurbo Boost de hasta 4.2 GHz\r\nDisco duro de 1 TB (5400 rpm); Fusion Drive de 1 TB, o SSD de hasta 1 TB2\r\nMagic Keyboard y Magic Mouse 2 o Magic Trackpad 2', '', 'mac.jpg', '', 1, 1, 1, '2018-07-01 16:55:14', '0000-00-00 00:00:00', 710.2, 4, 1, NULL, NULL, NULL),
(6, '5GhmydoqPi6', 'iPad Wi-Fi 32 GB ', '001', 'Modelo: Wi-Fi\r\nAcabado: Gris Espacial \r\nAlmacenamiento: 32 GB\r\nPantalla: Pantalla Retina Multi-Touch de 9,7 pulgadas (diagonal) retroiluminada por LED con tecnologÃ­a IPS y con resoluciÃ³n de 2048 x 1536 pixeles a 264 ppi\r\nProcesador: Apple A9 con arquitectura de 64 bits\r\nCoprocesador de movimiento: M9 integrado\r\nGrabaciÃ³n de vÃ­deo: HD de 1080p (30 cps)\r\nDuraciÃ³n de la baterÃ­a: Hasta 10 horas para navegar por Internet a travÃ©s de Wi-Fi, ver videos o escuchar mÃºsica\r\nHasta 10 horas de navegaciÃ³n por internet vÃ­a Wi-Fi y de reproducciÃ³n de vÃ­deo o mÃºsica\r\nPeso: 469 g\r\nGrosor: 7,5 mm\r\nEn la caja: \r\niPad\r\nCable de Lightning a USB\r\nAdaptador de corriente USB ', '', 'ipad.jpg', '', 1, 1, 1, '2018-07-01 17:10:44', '0000-00-00 00:00:00', 423.2, 2, 1, NULL, NULL, NULL),
(7, 'i2tCZWnVhb1', 'iPad Pro', '002', 'Modelo: Wi-Fi\r\nAcabado: Oro Rosa\r\nAlmacenamiento: 64 GB\r\nPantalla: Pantalla Retina Multi-Touch de 10,5 pulgadas (diagonal) retroiluminada por LED con tecnologÃ­a ProMotion y con ResoluciÃ³n de 2224 x 1668 pixeles a 264 ppi\r\nProcesador: Apple 10X con arquitectura de 64 bits\r\nCoprocesador: M10 integrado\r\nGrabaciÃ³n de vÃ­deo: 4K a 30 cps\r\nDuraciÃ³n de la baterÃ­a: Hasta 10 horas para navegar por Internet a travÃ©s de Wi-Fi, ver videos o escuchar mÃºsica\r\nPeso: 469 g\r\nGrosor: 6,1 mm\r\nEn la caja: \r\niPad Pro\r\nCable de Lightning a USB\r\nAdaptador de corriente USB ', '', 'iPad-pro.jpg', '', 1, 1, 1, '2018-07-01 17:14:54', '0000-00-00 00:00:00', 969.39, 3, 1, NULL, NULL, NULL),
(8, 'dl2_fvFflhG', 'iPad mini 4 Gold', '003', 'Modelo: Wi-Fi \r\nAcabado: Gris espacial\r\nAlmacenamiento: 128 GB\r\nPantalla Multi-Touch panorÃ¡mica de 7,9 pulgadas en diagonal (ResoluciÃ³n 2048x1536p a 326 p/p)\r\nProcesador: A8 con arquitectura de 64 bits\r\nCoprocesador de movimiento: M8\r\nGrabaciÃ³n de vÃ­deo: 1080p HD\r\nCÃ¡mara iSight: 8Mpx\r\nDuraciÃ³n de la baterÃ­a: \r\nHasta 10 horas de navegaciÃ³n por internet vÃ­a Wi-Fi y de reproducciÃ³n de vÃ­deo o mÃºsica\r\nPeso: 298.8 g\r\nGrosor: 0,61 cm\r\nSensor Touch ID', '', 'ipad-mini-4-gold.png', '', 1, 1, 1, '2018-07-01 17:17:29', '0000-00-00 00:00:00', 666.3, 3, 1, NULL, NULL, NULL),
(9, 'dhS3My3H4Ij', ' iPad 32 GB Gris Espacial', '004', 'Modelo: Wi-Fi\r\nAcabado: Gris Espacial \r\nAlmacenamiento: 32 GB\r\nPantalla: Pantalla Retina Multi-Touch de 9,7 pulgadas (diagonal) retroiluminada por LED con tecnologÃ­a IPS y con resoluciÃ³n de 2048 x 1536 pixeles a 264 ppi\r\nProcesador: Apple A9 con arquitectura de 64 bits\r\nCoprocesador de movimiento: M9 integrado\r\nGrabaciÃ³n de vÃ­deo: HD de 1080p (30 cps)\r\nDuraciÃ³n de la baterÃ­a: Hasta 10 horas para navegar por Internet a travÃ©s de Wi-Fi, ver videos o escuchar mÃºsica\r\nHasta 10 horas de navegaciÃ³n por internet vÃ­a Wi-Fi y de reproducciÃ³n de vÃ­deo o mÃºsica\r\nPeso: 469 g\r\nGrosor: 7,5 mm\r\nEn la caja: \r\niPad\r\nCable de Lightning a USB\r\nAdaptador de corriente USB ', '', 'ipad-space-123.jpg', '', 1, 1, 1, '2018-07-01 17:26:02', '0000-00-00 00:00:00', 423.12, 3, 1, NULL, NULL, NULL),
(10, 'l7GzTDGtsG9', 'iPhone X Gris Espacial 64GB', '0001', 'Acabado: Gris Espacial\r\nCapacidad: 64GB \r\nTamaÃ±o: 143.6 mm x 70.9 mm x 7.7 mm\r\nPeso: 174 gr\r\nPantalla: Super Retina HD, OLED Multi-Touch de 5,8 pulgadas (diagonal) sin marco\r\n, True Tone. Resistente a las salpicaduras, al agua y al polvo: ClasificaciÃ³n IP67 segÃºn la norma IEC 60529\r\nProcesador: Procesador Apple A11 Bionic con arquitectura de 64 bits, Procesador Neural, Coprocesador de movimiento Apple M11 integrado.\r\nCÃ¡mara: 12 MP con gran angular y teleobjetivo \r\nGran angular: apertura de Æ’/1.8\r\nTeleobjetivo: apertura de Æ’/2.4\r\nZoom Digital: hasta 10x\r\nCÃ¡mara TrueDepth: 7MP\r\nGrabaciÃ³n de Video: 4K a 24 cps, 30 cps o 60 cps\r\nSistema operativo: iOS 11\r\nTarjeta SIM: Nano SIM \r\nEn la Caja: \r\n-	iPhone X\r\n-	EarPods con conector Lightning\r\n-	Adaptador de Lightning a jack de 3,5 mm para audÃ­fonos\r\n-	Cable de Lightning a USB\r\n-	Adaptador de corriente USB\r\n-	DocumentaciÃ³n', '', 'X.jpg', '', 1, 1, 1, '2018-07-01 17:34:56', '0000-00-00 00:00:00', 1.514, 6, 1, NULL, NULL, NULL),
(11, 'SKyrP19EWUG', 'iPhone 8 Plus Oro 64GB', '0001', 'Acabado: Oro\r\nCapacidad: 64GB \r\nTamaÃ±o: 158.4 mm x 78.1 mm x 7.5 mm\r\nPeso: 202 g\r\nPantalla Retina HD: Pantalla widescreen LCD Multi-Touch de 5.5 pulgadas (diagonal) con tecnologÃ­a IPS, ResoluciÃ³n de 1920 x 1080 pixeles a 401 ppi, RelaciÃ³n de contraste 1300:1 (normal)\r\nResistente a las salpicaduras, al agua y al polvo: ClasificaciÃ³n IP67 segÃºn la norma IEC 60529\r\nChip: Chip A11 Bionic con arquitectura de 64 bits, Procesador neural y Coprocesador de movimiento M11 integrado\r\nCÃ¡mara: 12 MP con gran angular y teleobjetivo\r\nGran angular: apertura de Æ’/1.8\r\nTeleobjetivo: apertura de Æ’/2.8\r\nZoom Ã³ptico: 10x\r\nZoom Digital: hasta 10x\r\nCÃ¡mara FaceTime HD: 7MP\r\nGrabaciÃ³n de Video: 4K a 24 cps, 30 cps o 60 cps\r\nSistema operativo: iOS 11\r\nTarjeta SIM: Nano SIM \r\nAudÃ­fonos: EarPods con conector Lightning', '', 'iphone_8_plus_gold.png', '', 1, 1, 0, '2018-07-01 17:39:40', '0000-00-00 00:00:00', 1124.12, 6, 1, NULL, NULL, NULL),
(12, 'iH06w9MHHlt', 'iPhone 7 Plus Negro Brillante 128GB', '0002', 'Acabado: Negro Brillante\r\nCapacidad: 128GB \r\nTamaÃ±o: 158.2 mm x 77.9 mm x 7.3 mm\r\nPeso: 138 g\r\nPantalla Retina HD: Widescreen de 5.5 pulgadas (diagonal) retroiluminada por LED, Multi-Touch con tecnologÃ­a IPS, ResoluciÃ³n de 1920 x 1080 pixeles a 401 ppi, RelaciÃ³n de contraste 1300:1 (normal)\r\nResistente a las salpicaduras, al agua y al polvo: ClasificaciÃ³n IP67 segÃºn la norma IEC 60529\r\nChip: A10 Fusion con arquitectura de 64 bits y coprocesador de movimiento M10 integrado\r\nCÃ¡mara: 12 MP con gran angular y teleobjetivo\r\nGran angular: apertura de Æ’/1.8\r\nTeleobjetivo: apertura de Æ’/2.8\r\nZoom Ã³ptico: 2x\r\nZoom Digital: hasta 10x\r\nSistema operativo: iOS 10\r\nChip: A10 Fusion con arquitectura de 64 bits y coprocesador de movimiento M10 integrado\r\nAudÃ­fonos: EarPods con conector Lightning', '', 'iphone-7-plus-jet-black.jpg', '', 1, 1, 0, '2018-07-01 17:43:23', '0000-00-00 00:00:00', 1215.5, 6, 1, NULL, NULL, NULL),
(13, 'o0zGJFVthHQ', ' iPhone 6s Gris Espacial 32GB', '0003', 'Acabado: Gris Espacial\r\nCapacidad: 32 GB\r\nTamaÃ±o: 138.3 mm x 67.1 mm x 7.1 mm\r\nPeso: 143 g\r\nPantalla: Retina HD con 3D Touch de 4.7 pulgadas (diagonal) retroiluminada por LED\r\nResoluciÃ³n de 1334 x 750 pixeles a 326 ppi, RelaciÃ³n de contraste 1400:1 (normal)\r\nChip: Chip A9 con arquitectura de 64 bits y coprocesador de movimiento M9 integrado\r\nCÃ¡mara: 12 MP, Apertura de Æ’/2.2, Zoom digital de 5x\r\nSistema operativo: iOS 10\r\nAudÃ­fonos: EarPods con entrada de 3.5 mm', '', 'iphone-6.jpg', '', 1, 1, 1, '2018-07-01 17:53:24', '0000-00-00 00:00:00', 669.12, 6, 1, NULL, NULL, NULL),
(14, 'hLaD8ndkbRS', 'Bose Soundsport Wireless Aqua', '11', 'CÃ³digo de Producto: 761529-0020\r\n\r\nBaterÃ­a recargable de iones de litio\r\nTiempo de carga: 2 horas\r\nDuraciÃ³n de la baterÃ­a: 6 horas por carga completa', '', '12.jpg', '', 1, 1, 1, '2018-07-01 18:09:45', '0000-00-00 00:00:00', 188.3, 2, 1, NULL, NULL, NULL),
(15, '7gmaJdowzOb', 'Cable Lightning a USB (1M)', '12', 'CÃ³digo de Producto: MD818AM/A\r\n\r\nEste cable USB 2.0 conecta tu iPhone, iPad o iPod con conector Lightning al puerto USB del ordenador para sincronizarlo o cargarlo, o al Adaptador de corriente USB de Apple para cargarlo con comodidad en una toma de pared.\r\n\r\nCompatibilidad:\r\n\r\niPhone X\r\niPhone 8 Plus\r\niPhone 8\r\niPhone 7 Plus\r\niPhone 7\r\niPad 5ta generaciÃ³n\r\niPad mini 4', '', '2.jpg', '', 1, 1, 1, '2018-07-01 18:11:52', '0000-00-00 00:00:00', 54.3, 2, 1, NULL, NULL, NULL),
(16, 'CCshiKrTCMQ', 'Apple AirPods with Bluetooth', '13', 'CÃ³digo de Producto: MMEF2BE/A\r\n\r\nSe encienden y se conectan automÃ¡ticamente\r\nSe configuran en todos tus dispositivos con sÃ³lo un toque\r\nAcceso rÃ¡pido a Siri con dos toques\r\nMÃ¡s de 24 horas de baterÃ­a con el estuche de carga\r\nSe cargan rÃ¡pidamente en el estuche\r\nAudio y voz de alta calidad\r\nAutomÃ¡ticamente cambian de un dispositivo a otro', '', '3.jpg', '', 1, 1, 1, '2018-07-01 18:13:39', '0000-00-00 00:00:00', 257, 2, 1, NULL, NULL, NULL),
(17, '4PSfvsgbuNe', 'Magic Keyboard - EspaÃ±ol', '', 'CÃ³digo de Producto: MLA22E/A\r\n\r\nMagic Keyboard - EspaÃ±ol', '', '2222.jpeg', '', 1, 1, 0, '2018-07-01 18:16:07', '0000-00-00 00:00:00', 151.3, 2, 1, NULL, NULL, NULL),
(18, '2qvQsqhJRph', ' Apple Mouse 2 - Gris Espacial', '15', 'CÃ³digo de Producto: MRME2LL/A\r\n\r\nEl Magic Mouse 2 ha sido rediseÃ±ado y es completamente recargable para que no tengas que estar utilizando baterÃ­as tradicionales. Es mÃ¡s ligero, tiene menos partes movibles gracias a su baterÃ­a integrada y a su base continua y su parte inferior ha sido optimizada. Todo esto ha hecho que el Magic Mouse 2 se mueva mÃ¡s fÃ¡cilmente y con menos resistencia en todo tu escritorio. La superficie Multi-Touch te permite realizar gestos simples, tal como cambiarte entre pÃ¡ginas web y desplazarte en los documentos. Magic Mouse 2 estÃ¡ listo para que cuando lo saques de la caja se conecte automÃ¡ticamente a tu Mac.', '', '7.jpg', '', 1, 1, 0, '2018-07-01 18:17:59', '0000-00-00 00:00:00', 102.2, 2, 1, NULL, NULL, NULL),
(19, '6LPslJOacm0', 'Apple Watch Serie 3 38mm Gris Espacial', '20', 'CÃ³digo de Producto: MQKV2CL/A\r\n\r\nCaja de aluminio con correa deportiva\r\nProcesador de doble nÃºcleo mÃ¡s rÃ¡pido\r\nResistente al agua (50 metros)\r\nVidrio Ion-X\r\nPantalla Retina OLED de segunda generaciÃ³n con Force Touch, dos veces mÃ¡s brillante (1,000 nits)\r\nCubierta posterior de material compuesto\r\nSensor de frecuencia cardiaca, acelerÃ³metro y giroscopio \r\nSensor de luz ambiental \r\nBluetooth 4.2\r\nHasta 18 horas de baterÃ­a', '', 'mqkv2cl_a.png', '', 1, 1, 1, '2018-07-01 18:21:21', '0000-00-00 00:00:00', 575, 5, 1, NULL, NULL, NULL),
(20, 'uClqyZAUemp', 'APPLE WATCH S1 38mm', '21', 'CÃ³digo de Producto: MQ102CL/A\r\n\r\nCaja de aluminio color oro\r\nProcesador dual core S1P \r\nVidrio Ion-X \r\nPantalla Retina OLED con Force Touch (450 nits) \r\nCubierta posterior de material compuesto \r\nDigital Crown \r\nSensor de frecuencia cardiaca, acelerÃ³metro y giroscopio \r\nSensor de luz ambiental \r\nBocina y micrÃ³fono Wiâ€‘Fi (802.11b/g/n de 2.4 GHz) \r\nBluetooth 4.0 \r\nHasta 18 horas de baterÃ­a\r\nwatchOS 3\r\n\r\n\r\nSeries 1\r\nAlto: 42.5 mm\r\nAncho: 36.4 mm\r\nGrosor: 10.5 mm\r\nPeso de la caja: 30 g', '', 's1_oro_.jpg', '', 1, 1, 1, '2018-07-01 18:23:48', '0000-00-00 00:00:00', 272.33, 5, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_view`
--

CREATE TABLE `product_view` (
  `id` int(11) NOT NULL,
  `viewer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `realip` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_view`
--

INSERT INTO `product_view` (`id`, `viewer_id`, `product_id`, `created_at`, `realip`) VALUES
(1, NULL, 5, '2018-07-01 17:19:13', '::1'),
(2, NULL, 13, '2018-07-01 18:18:37', '::1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `title`, `image`, `is_public`, `position`, `created_at`) VALUES
(15, 'iPhone ', '5_1.jpg', 1, 0, '2018-07-01 13:35:47'),
(16, 'Apple Watch', 'Apple-iWatch_1.jpg', 1, 0, '2018-07-01 13:36:43'),
(17, 'Mac', 'mac-pro.jpg', 1, 0, '2018-07-01 13:39:36'),
(18, 'iPad', 'aaa.png', 1, 0, '2018-07-01 13:42:56'),
(19, 'Accesorios', '11.jpg', 1, 0, '2018-07-01 13:44:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Pendiente'),
(2, 'Pagado'),
(3, 'Cancelado'),
(4, 'Enviado'),
(5, 'Finalizado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `unit`
--

INSERT INTO `unit` (`id`, `name`) VALUES
(1, 'Pieza'),
(2, 'Kit'),
(3, 'Juego'),
(4, 'Caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `email`, `password`, `is_active`, `is_admin`, `created_at`) VALUES
(1, 'Admin', '', 'admin', '', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 1, 1, '2018-06-25 20:17:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymethod_id` (`paymethod_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indices de la tabla `buy_product`
--
ALTER TABLE `buy_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buy_id` (`buy_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `paymethod`
--
ALTER TABLE `paymethod`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `product_view`
--
ALTER TABLE `product_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `viewer_id` (`viewer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `buy`
--
ALTER TABLE `buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `buy_product`
--
ALTER TABLE `buy_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paymethod`
--
ALTER TABLE `paymethod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `product_view`
--
ALTER TABLE `product_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`paymethod_id`) REFERENCES `paymethod` (`id`),
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`coupon_id`) REFERENCES `coupon` (`id`),
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `buy_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Filtros para la tabla `buy_product`
--
ALTER TABLE `buy_product`
  ADD CONSTRAINT `buy_product_ibfk_1` FOREIGN KEY (`buy_id`) REFERENCES `buy` (`id`),
  ADD CONSTRAINT `buy_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `coupon`
--
ALTER TABLE `coupon`
  ADD CONSTRAINT `coupon_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Filtros para la tabla `product_view`
--
ALTER TABLE `product_view`
  ADD CONSTRAINT `product_view_ibfk_1` FOREIGN KEY (`viewer_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `product_view_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
