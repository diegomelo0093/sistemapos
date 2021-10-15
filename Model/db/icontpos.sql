-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 19:28:46
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
(6, 'fotoproducto/user03.jpg', '', 'S/N', '', '', '', '', '', '', '', '2021-10-09', '0');

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
(1, 'S/N', '0', '2021-10-15 19:04:30', 2000, 2000, 0, '1', 'Local'),
(2, 'S/N', '0', '2021-10-15 19:08:46', 2000, 2000, 0, '1', 'Local'),
(3, 'S/N', '0', '2021-10-15 19:08:50', 2000, 2000, 0, '1', 'Local'),
(4, 'S/N', '0', '2021-10-15 19:10:18', 2000, 2000, 0, '1', 'Local'),
(5, 'S/N', '0', '2021-10-15 19:10:27', 2000, 2000, 0, '1', 'Local'),
(6, 'S/N', '0', '2021-10-15 19:10:34', 2000, 2000, 0, '1', 'Local'),
(7, 'S/N', '0', '2021-10-15 19:14:40', 2000, 2000, 0, '1', 'Local'),
(8, 'S/N', '0', '2021-10-15 12:14:43', 2000, 2000, 0, '1', 'Local'),
(9, 'S/N', '0', '2021-10-15 12:14:55', 2000, 2000, 0, '1', 'Local'),
(10, 'S/N', '0', '2021-10-15 19:15:30', 2000, 2000, 0, '1', 'Local'),
(11, 'S/N', '0', '2021-10-15 19:16:15', 2000, 2000, 0, '1', 'Local'),
(12, 'S/N', '0', '2021-10-15 12:16:32', 2000, 2000, 0, '1', 'Local');

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
(1, '29040011007', '1503', '9rCB7Sv4X29d)5k7N%3ab89p-3(5[A', '1689353', '2021-12-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `idficha` int(11) NOT NULL
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

--
-- Volcado de datos para la tabla `preventa`
--

INSERT INTO `preventa` (`idPreventa`, `imagen`, `producto`, `precio`, `idProducto`, `pventa`, `idUser`, `tipo`) VALUES
(1, 'fotoproducto/arte-dragon-ball-super-goku-and-black-goku_7680x4320_xtrafondos.com.jpg', 'figuras dragonball', 2000, '3', '2000', 20, 'Mesa');

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
(4, 'fotoUsuario/user.png', '33', 'fdf', '100', '2021-10-12', '20', 'POLLO', '', '40');

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
-- Indices de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  ADD PRIMARY KEY (`idcodigo`);

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
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientedato`
--
ALTER TABLE `clientedato`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `iddatos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dosificacion`
--
ALTER TABLE `dosificacion`
  MODIFY `idcodigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `idPreventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
