-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-10-2021 a las 19:20:14
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `icontpos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activos`
--

CREATE TABLE `activos` (
  `idactivo` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `codigo` varchar(150) NOT NULL,
  `nombreProducto` varchar(150) NOT NULL,
  `cantidad` varchar(150) NOT NULL,
  `fechaRegistro` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alerta`
--

CREATE TABLE `alerta` (
  `alertaId` int(11) NOT NULL,
  `tipoAlerta` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `mensaje` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alerta`
--

INSERT INTO `alerta` (`alertaId`, `tipoAlerta`, `mensaje`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefonoFijo` varchar(250) NOT NULL,
  `telefonoCelular` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contactoReferencia` varchar(250) NOT NULL,
  `telefonoReferencia` varchar(250) NOT NULL,
  `observaciones` text NOT NULL,
  `fechaRegistro` date NOT NULL,
  `ci` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `foto`, `nombre`, `apellido`, `direccion`, `telefonoFijo`, `telefonoCelular`, `email`, `contactoReferencia`, `telefonoReferencia`, `observaciones`, `fechaRegistro`, `ci`) VALUES
(1, 'fotoproducto/user03.jpg', 'pepitoo', 'perez', ' av siempre viva', '6166166', '3333333333', 'correo@jajaja.com', '', '', '', '2021-09-14', '555555555'),
(3, 'fotoproducto/foto.jpg', 'diego', 'melo mahecha', 'avenidad siempre viva', '3131313131', '3131313131', 'avenida@gmail.com', '', '', '', '2021-10-10', '1118572738'),
(6, 'fotoproducto/user03.jpg', '', 'S/N', '', '', '', '', '', '', '', '2021-10-09', '0'),
(7, 'fotoUsuario/user.png', '', 'nuevoi', '', '', '', '', '', '', '', '2021-10-29', '1212');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientedato`
--

CREATE TABLE `clientedato` (
  `idCliente` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `ci` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `totalApagar` double NOT NULL,
  `efectivo` double NOT NULL,
  `cambio` double NOT NULL,
  `idClientei` varchar(150) NOT NULL,
  `tipoVenta` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientedato`
--

INSERT INTO `clientedato` (`idCliente`, `nombre`, `ci`, `fecha`, `totalApagar`, `efectivo`, `cambio`, `idClientei`, `tipoVenta`) VALUES
(1, 'S/N', '0', '2021-10-29 10:17:22', 20, 20, 0, '1', 'Local'),
(2, 'nuevoi', '1212', '2021-10-29 11:32:15', 20, 2000, 1980, '1', 'Local');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `iddatos` int(11) NOT NULL,
  `propietario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `razon` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nro` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`iddatos`, `propietario`, `razon`, `direccion`, `nro`, `telefono`) VALUES
(1, 'carlos herrera', 'pollos carlitos', 'av. circunvalacion merchor perez', '1517', '4477129');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosclienteventa`
--

CREATE TABLE `datosclienteventa` (
  `idClienteVenta` int(11) NOT NULL,
  `fechaVenta` varchar(150) NOT NULL,
  `nitCliente` varchar(50) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `idVentas` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosclienteventa`
--

INSERT INTO `datosclienteventa` (`idClienteVenta`, `fechaVenta`, `nitCliente`, `cliente`, `codigoControl`, `idVentas`, `estado`) VALUES
(1, '2021-10-27 16:45:26', '0', 'S/N', '81-A6-E0-EE', '1', 'NoConsolidado'),
(2, '2021-10-27 17:29:38', '0', 'S/N', '81-A6-E0-EE', '2', 'NoConsolidado'),
(3, '2021-10-27 17:46:51', '0', 'S/N', '81-A6-E0-EE', '3', 'NoConsolidado'),
(4, '2021-10-27 18:09:51', '0', 'S/N', '81-A6-E0-EE', '4', 'NoConsolidado'),
(5, '2021-10-27 18:18:12', '0', 'S/N', '81-A6-E0-EE', '5', 'NoConsolidado'),
(6, '2021-10-27 19:09:39', '0', 'S/N', '81-A6-E0-EE', '6', 'NoConsolidado'),
(7, '2021-10-27 19:11:09', '1118572738', 'melo mahecha', '81-A6-E0-EE', '7', 'NoConsolidado'),
(8, '2021-10-29 17:17:03', '0', 'S/N', '81-A6-E0-EE', '8', 'NoConsolidado'),
(9, '2021-10-29 17:17:15', '0', 'S/N', '81-A6-E0-EE', '9', 'NoConsolidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosfacturaventa`
--

CREATE TABLE `datosfacturaventa` (
  `idDatosFactura` int(11) NOT NULL,
  `nit` varchar(150) NOT NULL,
  `factura` varchar(50) NOT NULL,
  `numeroAutorizacion` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `idVentas` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosfacturaventa`
--

INSERT INTO `datosfacturaventa` (`idDatosFactura`, `nit`, `factura`, `numeroAutorizacion`, `codigoControl`, `idVentas`, `estado`) VALUES
(1, '1689353', '1503', '29040011007', '81-A6-E0-EE', '1', 'NoConsolidado'),
(2, '1689353', '1503', '29040011007', '81-A6-E0-EE', '2', 'NoConsolidado'),
(3, '1689353', '1503', '29040011007', '81-A6-E0-EE', '3', 'NoConsolidado'),
(4, '1689353', '1503', '29040011007', '81-A6-E0-EE', '4', 'NoConsolidado'),
(5, '1689353', '1503', '29040011007', '81-A6-E0-EE', '5', 'NoConsolidado'),
(6, '1689353', '1503', '29040011007', '81-A6-E0-EE', '6', 'NoConsolidado'),
(7, '1689353', '1503', '29040011007', '81-A6-E0-EE', '7', 'NoConsolidado'),
(8, '1118577539', '1503', '29040011007', '81-A6-E0-EE', '8', 'NoConsolidado'),
(9, '1118577539', '1503', '29040011007', '81-A6-E0-EE', '9', 'NoConsolidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosventa`
--

CREATE TABLE `datosventa` (
  `idDatosVentas` int(11) NOT NULL,
  `cantidad` varchar(150) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `idVentas` double NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datosventa`
--

INSERT INTO `datosventa` (`idDatosVentas`, `cantidad`, `descripcion`, `precio`, `total`, `tipo`, `fechaVenta`, `codigoControl`, `idVentas`, `estado`) VALUES
(1, '2', 'figuras dragonball', '2000', '4000', 'Mesa', '2021-10-27 16:45:26', '81-A6-E0-EE', 1, 'NoConsolidado'),
(2, '1', 'un cuarto', '2000', '2000', 'Mesa', '2021-10-27 17:29:38', '81-A6-E0-EE', 2, 'NoConsolidado'),
(3, '1', 'figuras dragonball', '2000', '2000', 'Mesa', '2021-10-27 17:29:38', '81-A6-E0-EE', 2, 'NoConsolidado'),
(4, '2', 'figuras dragonball', '2000', '4000', 'Mesa', '2021-10-27 17:46:51', '81-A6-E0-EE', 3, 'NoConsolidado'),
(5, '1', 'figuras dragonball', '2000', '2000', 'Mesa', '2021-10-27 18:09:51', '81-A6-E0-EE', 4, 'NoConsolidado'),
(6, '1', 'un cuarto', '2000', '2000', 'Mesa', '2021-10-27 18:18:12', '81-A6-E0-EE', 5, 'NoConsolidado'),
(7, '1', 'figuras dragonball', '2000', '2000', 'Mesa', '2021-10-27 19:09:39', '81-A6-E0-EE', 6, 'NoConsolidado'),
(8, '2', 'nugets', '4000', '8000', 'Mesa', '2021-10-27 19:11:09', '81-A6-E0-EE', 7, 'NoConsolidado'),
(9, '1', 'nugets', '4000', '4000', 'Llevar', '2021-10-29 17:17:03', '81-A6-E0-EE', 8, 'NoConsolidado'),
(10, '1', 'fdf', '20', '20', 'Mesa', '2021-10-29 17:17:15', '81-A6-E0-EE', 9, 'NoConsolidado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosventatotal`
--

CREATE TABLE `datosventatotal` (
  `idVentas` int(11) NOT NULL,
  `cliente` varchar(150) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL,
  `fechaVenta` datetime NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dosificacion`
--

CREATE TABLE `dosificacion` (
  `idcodigo` int(11) NOT NULL,
  `autorizacion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `factura` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `llave` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechaL` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dosificacion`
--

INSERT INTO `dosificacion` (`idcodigo`, `autorizacion`, `factura`, `llave`, `nit`, `fechaL`) VALUES
(1, '29040011007', '1503', '9rCB7Sv4X29d)5k7N%3ab89p-3(5[A', '1118577539', '2021-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `idficha` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `idgastos` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `entrada` double NOT NULL,
  `fechaRegistro` date NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `salida` varchar(150) NOT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `idIdioma` int(11) NOT NULL,
  `pais` varchar(150) NOT NULL,
  `idioma` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`idIdioma`, `pais`, `idioma`) VALUES
(1, 'Bolivia', 'Ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `opcion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `color` varchar(150) NOT NULL,
  `acceso` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`idmenu`, `opcion`, `estado`, `icon`, `location`, `color`, `acceso`) VALUES
(14, 'Principal', 'NoActivo', 'icon_house_alt', 'AccessUsers.php', '#0061c2', 'A'),
(15, 'Configuracion', 'NoActivo', 'icon_tools', 'Usuario.php', '#0061c2', 'D'),
(16, 'Proveedores', 'NoActivo', 'icon_briefcase', 'Proveedor.php', '#0061c2', 'D'),
(17, 'Clientes', 'NoActivo', 'icon_group', 'Cliente.php', '#0061c2', 'A'),
(18, 'Productos', 'NoActivo', 'icon_bag_alt', 'Producto.php', '#0061c2', 'A'),
(19, 'Inventario', 'NoActivo', 'icon_refresh', 'Inventario.php', '#0061c2', 'D'),
(20, 'Ventas', 'NoActivo', 'icon_cart', 'Ventas.php', '#0061c2', 'A'),
(21, 'Cuentas', 'NoActivo', 'arrow_down_alt', 'Cuenta.php', '#0061c2', 'D'),
(22, 'Pedidos', 'NoActivo', 'icon_zoom-in_alt', 'Pedido.php', '#0061c2', 'D'),
(23, 'Consolidar', 'NoActivo', 'icon_documents_alt', 'Consolidar.php', '#0061c2', 'D'),
(24, 'Reporte', 'NoActivo', 'icon_piechart', 'ReportesVentas.php', '#0061c2', 'A'),
(25, 'Reportes Graficos', 'NoActivo', 'icon_datareport', 'Estadistica.php', '#0061c2', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moneda`
--

CREATE TABLE `moneda` (
  `idMoneda` int(11) NOT NULL,
  `pais` varchar(150) NOT NULL,
  `tipoMoneda` varchar(150) NOT NULL,
  `contexto` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `moneda`
--

INSERT INTO `moneda` (`idMoneda`, `pais`, `tipoMoneda`, `contexto`) VALUES
(1, 'Colombia', '$', 'peso colombiano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preventa`
--

CREATE TABLE `preventa` (
  `idPreventa` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `producto` varchar(150) NOT NULL,
  `precio` double NOT NULL,
  `idProducto` varchar(150) NOT NULL,
  `pventa` varchar(150) NOT NULL,
  `idUser` int(11) NOT NULL,
  `tipo` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `codigo` varchar(150) NOT NULL,
  `nombreProducto` varchar(150) NOT NULL,
  `cantidad` varchar(150) NOT NULL,
  `fechaRegistro` varchar(150) NOT NULL,
  `precioVenta` varchar(150) NOT NULL,
  `tipo` varchar(150) NOT NULL,
  `proveedor` varchar(150) NOT NULL,
  `precioCompra` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `imagen`, `codigo`, `nombreProducto`, `cantidad`, `fechaRegistro`, `precioVenta`, `tipo`, `proveedor`, `precioCompra`) VALUES
(1, 'fotoproducto/imagen_1349563845.jpg', 'un cuarto', 'un cuarto', '100', '2021-10-07', '2000', 'pollo', '', '20'),
(3, 'fotoproducto/arte-dragon-ball-super-goku-and-black-goku_7680x4320_xtrafondos.com.jpg', '12', 'figuras dragonball', '100', '2021-10-07', '2000', 'REFRESCO GASEOSA', '', '1000'),
(4, 'fotoUsuario/user.png', '33', 'fdf', '100', '2021-10-12', '20', 'POLLO', '', '40'),
(5, 'fotoUsuario/user.png', '3232', 'nugets', '100', '2021-10-27', '4000', 'POLLO', '', '2000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `idproveedor` int(11) NOT NULL,
  `proveedor` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `responsable` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fechaRegistro` date NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fechaAviso` date NOT NULL,
  `valor` double NOT NULL,
  `valorCobrado` double NOT NULL,
  `saldo` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`idproveedor`, `proveedor`, `responsable`, `fechaRegistro`, `direccion`, `telefono`, `estado`, `fechaAviso`, `valor`, `valorCobrado`, `saldo`) VALUES
(1, 'unilever', 'heis calaniJ', '2021-09-14', 'av. virgo entre groselleros', 'av. virgo entre groselleros', '', '0000-00-00', 0, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `idtipoproducto` int(11) NOT NULL,
  `tipoproducto` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`idtipoproducto`, `tipoproducto`) VALUES
(1, 'POLLO'),
(2, 'REFRESCO HERVIDO'),
(3, 'REFRESCO GASEOSA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usu` int(11) NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usu`, `login`, `tipo`, `nombre`, `password`, `foto`) VALUES
(13, 'diego123', 'ADMINISTRADOR', 'diego', 'diego123', 'fotoproducto/user.png'),
(15, '321654', 'ADMINISTRADOR', 'adminis', '321654', 'fotoproducto/user.png'),
(19, '12345', 'ADMINISTRADOR', 'admin', '12345', 'fotoproducto/137313.jpg'),
(20, 'prueba', 'ADMINISTRADOR', 'prueba', 'prueba', 'fotoproducto/4k-minimalist-wallpaper-26.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventatotal`
--

CREATE TABLE `ventatotal` (
  `idVentas` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ci` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `totalApagar` double NOT NULL,
  `efectivo` double NOT NULL,
  `cambio` double NOT NULL,
  `idClientei` varchar(50) NOT NULL,
  `codigoControl` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventatotal`
--

INSERT INTO `ventatotal` (`idVentas`, `nombre`, `ci`, `fecha`, `totalApagar`, `efectivo`, `cambio`, `idClientei`, `codigoControl`) VALUES
(1, 'S/N', '0', '2021-10-27 16:45:26', 4000, 5000, 1000, '6', '81-A6-E0-EE'),
(2, 'S/N', '0', '2021-10-27 17:29:38', 4000, 4000, 0, '6', '81-A6-E0-EE'),
(3, 'S/N', '0', '2021-10-27 17:46:51', 4000, 6000, 2000, '6', '81-A6-E0-EE'),
(4, 'S/N', '0', '2021-10-27 18:09:51', 2000, 3000, 1000, '6', '81-A6-E0-EE'),
(5, 'S/N', '0', '2021-10-27 18:18:12', 2000, 2000, 0, '6', '81-A6-E0-EE'),
(6, 'S/N', '0', '2021-10-27 19:09:39', 2000, 2000, 0, '6', '81-A6-E0-EE'),
(7, 'melo mahecha', '1118572738', '2021-10-27 19:11:09', 8000, 50000, 42000, '3', '81-A6-E0-EE'),
(8, 'S/N', '0', '2021-10-29 17:17:03', 4000, 5000, 1000, '6', '81-A6-E0-EE'),
(9, 'S/N', '0', '2021-10-29 17:17:15', 20, 20, 0, '6', '81-A6-E0-EE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activos`
--
ALTER TABLE `activos`
  ADD PRIMARY KEY (`idactivo`);

--
-- Indices de la tabla `alerta`
--
ALTER TABLE `alerta`
  ADD PRIMARY KEY (`alertaId`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `clientedato`
--
ALTER TABLE `clientedato`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`iddatos`);

--
-- Indices de la tabla `datosclienteventa`
--
ALTER TABLE `datosclienteventa`
  ADD PRIMARY KEY (`idClienteVenta`);

--
-- Indices de la tabla `datosfacturaventa`
--
ALTER TABLE `datosfacturaventa`
  ADD PRIMARY KEY (`idDatosFactura`);

--
-- Indices de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  ADD PRIMARY KEY (`idDatosVentas`);

--
-- Indices de la tabla `datosventatotal`
--
ALTER TABLE `datosventatotal`
  ADD PRIMARY KEY (`idVentas`);

--
-- Indices de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  ADD PRIMARY KEY (`idcodigo`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`idgastos`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`idIdioma`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indices de la tabla `moneda`
--
ALTER TABLE `moneda`
  ADD PRIMARY KEY (`idMoneda`);

--
-- Indices de la tabla `preventa`
--
ALTER TABLE `preventa`
  ADD PRIMARY KEY (`idPreventa`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`idproveedor`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`idtipoproducto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usu`);

--
-- Indices de la tabla `ventatotal`
--
ALTER TABLE `ventatotal`
  ADD PRIMARY KEY (`idVentas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `activos`
--
ALTER TABLE `activos`
  MODIFY `idactivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `alerta`
--
ALTER TABLE `alerta`
  MODIFY `alertaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientedato`
--
ALTER TABLE `clientedato`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `iddatos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datosclienteventa`
--
ALTER TABLE `datosclienteventa`
  MODIFY `idClienteVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `datosfacturaventa`
--
ALTER TABLE `datosfacturaventa`
  MODIFY `idDatosFactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `datosventa`
--
ALTER TABLE `datosventa`
  MODIFY `idDatosVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `datosventatotal`
--
ALTER TABLE `datosventatotal`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  MODIFY `idcodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `idgastos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `idIdioma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `moneda`
--
ALTER TABLE `moneda`
  MODIFY `idMoneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `preventa`
--
ALTER TABLE `preventa`
  MODIFY `idPreventa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `idtipoproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ventatotal`
--
ALTER TABLE `ventatotal`
  MODIFY `idVentas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
