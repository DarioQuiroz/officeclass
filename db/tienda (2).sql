-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-04-2019 a las 15:51:16
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancosaltos`
--

DROP TABLE IF EXISTS `bancosaltos`;
CREATE TABLE IF NOT EXISTS `bancosaltos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bancosaltos`
--

INSERT INTO `bancosaltos` (`id`, `modelo`, `vista1`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RE-571C', 'RE-571C_1', 'Banco Alto Rewind', 'Banco Alto Rewind terminada en\r\ncromo.', 'Rojo, Verde, Blanco, Gris Oscuro,\r\nArena, Azul, Negro', 2326, 'Banca Italiana de 3 plazas de polipropileno\r\nestructura en acero tubular redondo 1 1/2 cal. 16 y\r\ntravesaño de 1/2 x 2\" cal. 14 terminada en pintura\r\nelectrostática negra, asiento y respaldo inyectados\r\nen polipropileno de alta resistencia con diseño\r\nergonómico para máximo confort.', ' Visita / Espera', 'Altura Piso-Asiento: 45 cm.\r\nAltura Fondo: 50 cm.\r\nAltura Frente: 107 cm.\r\nAltura Total: 80 cm.', ' 2 años', 'Requiez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancosdediseño`
--

DROP TABLE IF EXISTS `bancosdediseño`;
CREATE TABLE IF NOT EXISTS `bancosdediseño` (
  `id` int(254) NOT NULL AUTO_INCREMENT,
  `Modelo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `Nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `Colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `Precio` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventa`
--

DROP TABLE IF EXISTS `detalleventa`;
CREATE TABLE IF NOT EXISTS `detalleventa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `preciounitario` decimal(20,0) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `vendido` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idventa` (`idventa`),
  KEY `idproducto` (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasdediseño`
--

DROP TABLE IF EXISTS `sillasdediseño`;
CREATE TABLE IF NOT EXISTS `sillasdediseño` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasdevisitantes`
--

DROP TABLE IF EXISTS `sillasdevisitantes`;
CREATE TABLE IF NOT EXISTS `sillasdevisitantes` (
  `id` int(254) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sillasdevisitantes`
--

INSERT INTO `sillasdevisitantes` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RE-570N20', NULL, NULL, NULL, 'Silla Rewind ', 'Silla Rewind de brazos fijos\r\nmultifuncional.', 'no especificado', 1682, 'Silla con brazos fijos rewind estructura de acero\r\ntubular redondo de 4 patas calibre 16 terminada\r\nen pintura electrostática color gris y/o negro,\r\nrespaldo fabricado en inyección de polipropileno\r\nde alta resistencia reticulado para permitir\r\ncirculación de aire, mayor confort y diseño\r\nergonómico. Asiento de polipropileno de alto\r\nimpacto con terminación caída en cascada,\r\nestibable, asiento y respaldo concha inferior de\r\nasiento de polipropileno de alto impacto.', 'Multifuncional / Visita /\r\nComedores / Conferencias', 'Altura Piso-Asiento: 47 cm.\r\nAltura Fondo: 59 cm.\r\nAltura Frente: 49 cm.\r\nAltura Total: 84 cm.', '2 años', 'Requiez'),
(2, 'RE-570', NULL, NULL, NULL, 'Silla Rewind ', 'Silla Rewind multifuncional.', 'no especificado', 1388, 'Silla Rewind para eventos estructura de acero\r\ntubular redondo de 4 patas calibre 16 terminada\r\nen pintura electrostática color gris y/o negro,\r\nrespaldo fabricado en inyección de polipropileno\r\nde alta resistencia reticulado para permitir\r\ncirculación de aire, mayor confort y diseño\r\nergonómico, asiento de polipropileno de alto\r\nimpacto con terminación caída en cascada,\r\nasiento y respaldo concha inferior de asiento de\r\npolipropileno de alto impacto.', 'Multifuncional / Visita /\r\nComedores / Conferencias', 'Altura Piso-Asiento: 47 cm.\r\nAltura Fondo: 59 cm.\r\nAltura Frente: 49 cm.\r\nAltura Total: 84 cm. ', ' 2 años', 'Requiez'),
(3, 'RE-685', 'RE-685_1', NULL, NULL, 'Silla Multifuncional\r\nSkip Con Rodajas', 'Silla Multifuncional Skip con\r\nrodajas y respaldo mesh.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate, Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3123, 'Silla apilable Skip estructura acero tubular ovalado\r\ncal-14 en 4 puntos con rodajas duales con\r\nrecubrimiento de poliuretano y bloqueo, terminada\r\nen pintura electrostática gris y brazos estructurales\r\ncon codera de polipropileno. Respaldo mesh gris,\r\nazul, verde, asiento y respaldo tapizado, respaldo\r\nfabricado en marco estructural de polipropileno\r\ntapizado en mesh de nylon con soporte lumbar y\r\nreclinamiento libre, asiento con acojinamiento de\r\npoliuretano inyectado de 53 kgs de densidad con\r\nretardante de flama, parte inferior del asiento\r\ncubierto con concha de polipropileno de alto\r\nimpacto.', 'Aulas de Capacitación /\r\nConferencia / Sala de juntas / Ideal\r\nmesa de trabajo', 'Altura Piso-Asiento: 49 cm.\r\nAltura Fondo: 56 cm.\r\nAltura Frente: 63 cm.\r\nAltura Total: 91 cm', ': 2 años', 'Requiez'),
(4, 'RE-780C', NULL, NULL, NULL, 'Silla Cool Para\r\nVisitantes Asiento\r\nTapizado En Tela', 'Silla Cool para visitante\r\nrespaldo plipropileno y\r\nasiento tapizado en tela.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nNegro, Admiral,\r\nCharcoal, Honey,\r\nPlatinium, Sand, Scarlet,\r\nSlate, Acero, Azul,\r\nGranada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3408, 'Silla Cool para visitante respaldo y asiento\r\ntapizado, estructura acero tubular redondo cal. 13\r\nen forma de trineo terminado en cromo, brazos\r\nestructurales con coderas de polipropileno,\r\nrespaldo fabricado en madera de multiplay con\r\nacojinamiento de poliuretano y tapiz de diseño\r\nergonómico, asiento con acojinamiento de\r\npoliuretano inyectado de 60 kg/m3 de densidad\r\ncon retardante de flama, parte inferior del asiento\r\ncubierta con concha de polipropileno de alto\r\nimpacto, soporte redondo para fijación de respaldo\r\nfabricado en aluminio pulido con vista de\r\npolipropileno.', 'Frente de escritorio / Sala de\r\njuntas / Visitantes', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 52 cm.\r\nAltura Frente: 56 cm.\r\nAltura Total: 81 cm.', '5 años', 'Requiez'),
(5, 'RE-790N', NULL, NULL, NULL, 'Silla Cool Para\r\nVisitantes Asiento\r\nTapizado En Tela', 'Silla Cool para visitante\r\nrespaldo plipropileno y\r\nasiento tapizado en tela.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nNegro, Admiral,\r\nCharcoal, Honey,\r\nPlatinium, Sand, Scarlet,\r\nSlate, Acero, Azul,\r\nGranada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3016, 'Silla Cool para visitante respaldo polipropileno\r\ncolores: negro, gris y/o blanco y asiento tapizado\r\nen tela, estructura acero tubular redondo cal. 13 en\r\nforma de trineo terminado en pintura electrostática\r\nnegra, brazos estructurales con coderas de\r\npolipropileno, respaldo fabricado en polipropileno\r\nde alto impacto con diseño ergonómico color\r\nnegro, gris y blanco, soporte angular para fijación\r\nde respaldo fabricado en aluminio pulido.', 'Visitante', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 52 cm.\r\nAltura Frente: 56 cm.\r\nAltura Total: 81 cm', '2 años', 'Requiez'),
(6, 'RE-790C', NULL, NULL, NULL, 'Silla Cool Para\r\nVisitantes', 'Silla Cool para visitante\r\nrespaldo plipropileno y\r\nasiento tapizado en tela.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nNegro, Admiral,\r\nCharcoal, Honey,\r\nPlatinium, Sand, Scarlet,\r\nSlate, Acero, Azul,\r\nGranada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3357, 'Silla Cool para visitante respaldo polipropileno\r\ncolores: negro, gris y/o blanco y asiento tapizado\r\nen tela, estructura acero tubular redondo cal. 13 en\r\nforma de trineo terminado en cromo, brazos\r\nestructurales con coderas de polipropileno,\r\nasiento con acojinamiento de poliuretano\r\ninyectado de 60 kg/m3 de densidad con retardante\r\nde flama, parte inferior del asiento cubierta con\r\nconcha de polipropileno de alto impacto, soporte\r\nredondo para fijación de respaldo fabricado en\r\naluminio pulido con vista de polipropileno.', 'Frente de escritorio / Sala de\r\njuntas / Visitantes', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 52 cm.\r\nAltura Frente: 56 cm.\r\nAltura Total: 81 cm.', ' 2 años', 'Requiez'),
(7, 'RE-911', 'RE-911_1', NULL, NULL, 'Silla Estibable Para\r\nEventos', 'Silla estimable para eventos\r\ncon estructura en forma de\r\ntrineo', 'Negro, Gris', 1163, 'Silla estibable para eventos, estructura en forma\r\nde trineo elaborada en acero tubular cal-16,\r\nasiento y respaldo inyectado en polipropileno de\r\nalta resistencia con diseño ergonómico para un\r\nmáximo soporte lumbar, estructura pintura\r\nelectrostática y cromada, asiento y respaldo: negro\r\no gris.', ' Eventos/ Visitante / Capacitación', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 52 cm.\r\nAltura Frente: 46 cm.\r\nAltura Total: 73 cm.', '2 años', 'Requiez'),
(8, 'RE-1060', NULL, NULL, NULL, 'Silla De Visita Italiana\r\nTapizada', 'Silla de Visita Italiana\r\ntapizada en tela de\r\nimportación con retardan de\r\nflama y protector de\r\nmanchas Blockaide.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nNegro, Admiral,\r\nCharcoal, Honey,\r\nPlatinium, Sand, Scarlet,\r\nSlate, Acero, Azul,\r\nGranada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 1222, 'Silla visitante italiana tapizada en tela de\r\nimportación con retardante de flama y protector de\r\nmanchas blockaide, estructura acero tubular\r\novalado cal-16 de 4 patas en pintura electrostática\r\ncolores aluminio y negro, diseño ergonómico para\r\nmáximo confort montada en base de polipropileno\r\nreforzado y con conchas plasticas decorativas,\r\nestibable, cople de unión en polipropileno para\r\nformar baterías rectas incluido, regaton protector\r\npara la estiba, espuma de poliuretano inyectado\r\nde 44 kg/m3 de densidad con retardante de flama.', ' Multifuncional / Visita /\r\nComedores / Conferencias', 'Altura Piso-Asiento: 48 cm.\r\nAltura Fondo: 62 cm.\r\nAltura Frente: 53 cm.\r\nAltura Total: 80 cm.', '2 años', 'Requiez'),
(9, 'RE-1090', 'RE-1090_1', NULL, NULL, 'Silla Para Visitante\r\nGran Confort Con\r\nBrazos', 'Silla para Visitante Gran\r\nConfort con brazos y\r\ntapizada en tela de\r\nimportación con retardados\r\nde flama y protector de\r\nmanchas Blockaide.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nNegro, Admiral,\r\nCharcoal, Honey,\r\nPlatinium, Sand, Scarlet,\r\nSlate, Acero, Azul,\r\nGranada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 1970, 'Silla para visitante gran confort con brazos\r\ntapizada en tela de importación con retardante de\r\nflama y protector de manchas blockaide,\r\nestructura acero tubular ovalado cal-16 de 4 patas\r\nterminada en pintura electrostática negra\r\n(desarmable), brazos metálicos con cubierta en\r\npolipropileno, asiento y respaldo diseño\r\nergonómico para máximo confort, acojinamiento\r\nen asiento en espuma de poliuretano inyectado de\r\n35 kg/m3 de densidad con retardante de flama y\r\nrespaldo en poliuretano cortado de 41 kg/m3 de\r\ndensidad con retardante de flama', 'Multifuncional / Visita /\r\nComedores / Conferencias\r\n', 'Altura Piso-Asiento: 47 cm.\r\nAltura Fondo: 59 cm.\r\nAltura Frente: 49 cm.\r\nAltura Total: 84 cm.', '2 años', 'Requiez'),
(10, 'RE-1515', 'RE-1515_1', 'RE-1515_2', NULL, 'Silla Multifuncional 4\r\nPuntos Con Rodajas ', 'Silla Multifuncional 4 Puntos\r\ncon rodajas y asiento\r\nabatible, respaldo en malla\r\nnegra y asiento tapizado en\r\ncolor opcional.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nNegro, Admiral,\r\nCharcoal, Honey,\r\nPlatinium, Sand, Scarlet,\r\nSlate, Acero, Azul,\r\nGranada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 2904, 'Silla multifuncional 4 puntos con rodajas asiento\r\nabatible, colores: respaldo en malla negra. Asiento\r\ntapizado en color opcional. Asiento y respaldo:\r\nrespaldo fabricado en marco estructural de\r\npolipropileno tapizado en mesh de nylon, diseño\r\nergonómico con soporte lumbar. Asiento con\r\nacojinamiento de poliuretano inyectado de 53 kg/\r\nm3 de densidad con retardante de flama, parte\r\ninferior del asiento cubierto con concha de\r\npolipropileno de alto impacto. Estructura de acero\r\ntubular redondo cal. 14, terminada en pintura\r\nelectrostática color negro, brazos estructurales con\r\ncodera de polipropileno, rodajas duales de nylon\r\ncon recubrimiento de poliuretano. ', 'Aulas de capacitación /\r\nConferencia / Sala de junta / Mesas de\r\ntrabajo', 'Altura Piso-Asiento: 46 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 58 cm.\r\nAltura Total: 81 cm.', ' 2 años', 'Requiez'),
(11, 'RE-1765', 'RE-1765_1', NULL, NULL, 'Sillón Retro Visitante\r\nMesh', 'Sillón Retro Visitante en\r\nmesh y malla color negro con\r\nestructura en forma de trineo.', 'Negro', 4771, 'Sillón Retro Visitante Mesh Malla Color Negro,\r\nEstructura En Forma De Trineo En Acero Tubular\r\nCromado Cal-14, Asiento Y Respaldo En Una\r\nSola Pieza Con Diseño Ergonómico,\r\nDescansabrazos Fijos De Aluminio.', 'Frente de escritorio / Visitante /\r\nSala de juntas', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 54 cm.\r\nAltura Total: 92 cm.', '2 años', 'Requiez'),
(12, 'RE-1755', 'RE-1755_1', 'RE-1755_2', NULL, 'Sillón Retro Respaldo\r\nBajo', 'Sillón Retro respaldo bajo\r\ncon tapiz eco-leather.', '\r\nBlanco, Negro, Café', 4743, 'Sillón Retro visitante tapiz eco-leather color blanco,\r\nnegro y/o café, estructura en forma de trineo\r\nelaborada en acero tubular cal-16 terminado en\r\ncromo, asiento y respaldo en una sola pieza con\r\ndiseño ergonómico, descansabrazos en aluminio\r\npulido.', 'Frente de escritorio / Visitante /\r\nSala de juntas', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 55 cm.\r\nAltura Total: 92 cm.', '5 años', 'Requiez'),
(13, 'RM-9005', 'RM-9005_1', NULL, NULL, 'Silla De Visita En\r\nMesh', 'Silla en mesh para visitante\r\ncon base en forma de trineo.', 'Negro', 7075, 'Silla de visita en mesh base en forma de trineo\r\nelaborado en acero tubular cal.14 terminado en\r\ncromo. Respaldo con soporte lumbar integrado,\r\nasiento con caída en cascada para mayor confort.\r\nCoderas integrales en poliuretano tipo gel. ', 'Visitante', 'Altura Piso-Asiento: 46 cm.\r\nAltura Fondo: 69 cm.\r\nAltura Frente: 62 cm.\r\nAltura Total: 94 cm.', '5 años', 'Requiez'),
(14, 'RM-9011', 'RM-9011_1', NULL, NULL, 'Sillón Visitante Staff', 'Silla Staff para visitante con\r\nmalla negra y estructura en\r\nforma de trineo.', 'Negro', 5895, 'Silla Staff versión visitante malla negra, estructura\r\nen forma de trineo, elaborada en acero tubular\r\nredondo cal. 16 ,terminado en pintura\r\nelectroestática color blanco, asiento y respaldo con\r\ndiseño ergonómico tapizado en malla, respaldo\r\ncon sistema reclinable. Descansabrazos fijos de\r\npolipropileno. ', 'Frente de escritorio / Visitante /\r\nSala de juntas', 'Altura Piso-Asiento: 45 cm.\r\nAltura Fondo: 58 cm.\r\nAltura Frente: 56 cm.\r\nAltura Total: 94 cm.', ' 5 años', 'Requiez'),
(15, 'RE-1365', NULL, NULL, NULL, 'Sillón Quadra Con\r\nRespaldo En Mesh', 'Sillón Quadra para visitante\r\ncon respaldo en mesh y base\r\nen forma de trineo.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3571, 'Sillón visitante Quadra respaldo mesh, base en\r\nforma de trineo fabricado en acero tubular redondo\r\ncal.14 terminado en pintura electrostática color gris\r\ncon regatón antiderrapante. Descansa brazos fijos\r\nen polipropileno. ', 'Frente de escritorio / Visitante /\r\nSala de juntas', 'Altura Piso-Asiento: 44 cm.\r\nAltura Fondo: 56 cm.\r\nAltura Frente: 62 cm.\r\nAltura Total: 86 cm.', '5 años', 'Requiez'),
(16, 'RE-1965', 'RE-1965_1', NULL, NULL, 'Sillón Ejecutivo En\r\nMesh/Tela ', 'Sillón Ejecutivo en mesh/tela\r\npara visitante con base e', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 4942, 'Sillón ejecutivo en mesh / tela visitante, base en\r\nforma de trineo, elaborado en acero tubular cal. 14\r\nterminado en cromo. Descansa brazos con ajuste\r\nde altura, codera de poliuretano con alma de acero\r\ny cubierta en aluminio pulido. ', 'Visitante', 'Altura Piso-Asiento: 47 cm.\r\nAltura Fondo: 56 cm.\r\nAltura Frente: 70 – 74 cm.\r\nAltura Total: 101 cm.', '5 años', 'Requiez'),
(17, 'RE-1955', 'RE-1955_1', NULL, NULL, 'Sillón Ejecutivo En\r\nMesh Visitante', 'Sillón Ejecutivo en mesh\r\npara visitante con base en\r\nforma de trineo.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 4705, 'Sillón Ejecutivo en mesh visitante, base en forma\r\nde trineo, elaborada en acero tubular redondo, cal.\r\n14, terminado en pintura electrostática color negro.\r\nDescansa brazos en poliuretano y ajuste de altura.\r\nAcojinamiento del asiento en poliuretano inyectado\r\nde 53 kg/m³ de densidad con retardante de flama.\r\nRespaldo fabricado en malla con ajuste de\r\nprofundidad. ', 'Visitante', 'Altura Piso-Asiento: 47 cm.\r\nAltura Fondo: 56 cm.\r\nAltura Frente: 70 – 74 cm.\r\nAltura Total: 101 cm', '5 años', 'Requiez'),
(18, 'OHV-94G\r\nR', 'OHV-94G\r\nR', NULL, NULL, 'Silla De Visitante\r\nSling', 'Silla de visitante Sling con\r\nbase de trineo, respaldo\r\nergonómico de malla y\r\nasiento de hule espuma.', 'no especificado', 1424, 'Silla visitante base trineo de\r\nacero tubular de 1\" de diámetro,\r\ncalibre 14; soporte del asiento en\r\nlámina de acero (plato) con\r\nacabado de pintura epóxica\r\n(electrostática) color negro mate.\r\nBrazos de poliuretano semirígido.\r\nRespaldo en malla de\r\ndiseño ergonómico. Asiento hule\r\nespuma de poliuretano inyectado\r\nflexible de alta densidad y alta\r\nresistencia. Tapiz respaldo de\r\nmalla de color negro y asiento en\r\ntela color azabache de nuestro\r\ncatálogo office-crep. Peso\r\nmáximo de resistencia 130 kgs.', 'Operativo', 'Altura Piso-Asiento: 38\r\ncm.\r\nFondo Asiento: 49 cm.\r\nAncho Asiento: 47 cm.\r\nAltura Total: 95 cm.', '1 año', 'Offiho'),
(19, 'OHV-94PL\r\nUS', 'OHV-94PL\r\nUS', NULL, NULL, 'Silla de Visitante\r\nSling Negra', 'Silla de Visitante Sling\r\nNegra con base de trineo,\r\nrespaldo ergonómico de\r\nmalla y asiento de hule\r\nespuma.', 'Negro', 1424, 'Silla visitante base trineo de\r\nacero tubular de 1\" de diámetro,\r\ncalibre 14; soporte del asiento en\r\nlámina de acero (plato) con\r\nacabado de pintura epóxica\r\n(electrostática) color negro mate.\r\nBrazos de poliuretano semirígido.\r\nRespaldo en malla de\r\ndiseño ergonómico. Asiento hule\r\nespuma de poliuretano inyectado\r\nflexible de alta densidad y alta\r\nresistencia. Tapiz respaldo de\r\nmalla de color negro y asiento en\r\ntela color azabache de nuestro\r\ncatálogo office-crep. Peso\r\nmáximo de resistencia', 'Operativo', 'Altura Piso-Asiento: 40\r\ncm.\r\nFondo Asiento: 49 cm.\r\nAncho Asiento: 47 cm.\r\nAltura Total: 95 cm.', '1 año', 'Offiho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasdirectivas`
--

DROP TABLE IF EXISTS `sillasdirectivas`;
CREATE TABLE IF NOT EXISTS `sillasdirectivas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sillasdirectivas`
--

INSERT INTO `sillasdirectivas` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RE-1750', 'RE-1750_1', NULL, NULL, 'Sillón Retro Respaldo Alto', 'Sillón Retro de respaldo alto con\r\ntapiz eco-leather, elevación\r\nneumática y perilla para regular la\r\ntensión del reclinamiento.', 'Blanco, Negro', 6569, 'Sillón Retro de respaldo alto, tapizado eco-leather,\r\nelevación neumática, base de 5 puntas en\r\naluminio pulido, mecanismo knee-tilt con 4\r\nposiciones de bloqueo y perilla para regular la\r\ntensión del reclinamiento, asiento y respaldo en\r\nuna sola pieza, descansabrazos en aluminio\r\npulido.', 'Directivo', 'Altura Piso-Asiento: 42 – 52 cm.\r\nAltura Fondo: 63 cm.\r\nAltura Frente: 55 cm.\r\nAltura Total: 120 – 127 cm.', ' 5 años', 'Requiez'),
(2, 'RE-1751', 'RE-1751_1', 'RE-1751_2', 'RE-1751_3', 'Sillón Retro Respaldo Bajo', 'Sillón Retro respaldo bajo con\r\ntapiz eco-leather, elevación\r\nneumática y perilla para regular la\r\ntensión del reclinamiento.', 'Blanco, Negro, Café', 6181, 'Sillón Retro de respaldo bajo, tapizado eco-leather\r\ncolor blanco, negro y/o café, elevación neumática,\r\nbase de 5 puntas en aluminio pulido, mecanismo\r\nknee-tilt con 4 posiciones de bloqueo y perilla para\r\nregular la tensión del reclinamiento, asiento y\r\nrespaldo en una sola pieza, descansabrazos en\r\naluminio pulido.', 'Ejecutivo / Sala de Juntas', 'Altura Piso-Asiento: 42 – 52 cm.\r\nAltura Fondo: 60 cm.\r\nAltura Frente: 55 cm.\r\nAltura Total: 95 – 102 cm', ' 5 años', 'Requiez'),
(3, 'RE-1760', 'RE-1760_1', NULL, NULL, 'Sillón Retro Respaldo Alto', 'Sillón Retro de respaldo alto de\r\ntapiz malla con elevación\r\nneumática.', 'Negro', 6445, 'Sillón Retro respaldo alto tapizado malla color\r\nnegro, elevación neumática, base de 5 puntas\r\nfabricada en aluminio pulido, tapiz malla negro\r\nmecanismo knee-tilt con 4 posiciones de bloqueo\r\ny perilla para regular la tensión del reclinamiento,\r\nasiento y respaldo en una sola pieza con diseño\r\nergonómico, descansabrazos en aluminio pulido.', 'Directivo', 'Altura Piso-Asiento: 42 – 52 cm.\r\nAltura Fondo: 63 cm.\r\nAltura Frente: 55 cm.\r\nAltura Total: 120 – 1127cm', '2 años', 'Requiez'),
(4, 'RM-9000', 'RM-9000_1', NULL, NULL, 'Sillón Presidencial En Mesh', 'Sillón presidencial en mesh con\r\nmecanismo de reclinamiento y 3\r\nposiciones de bloqueo.', 'Negro', 13703, 'Sillón presidencial en mesh mecanismos\r\nreclinamiento synchro monomando con maneral\r\npara regular tensión, 3 posiciones de bloqueo y\r\nsistema antishock. sistema slider para ajuste de\r\nprofundidad de asiento, cubierta de mecanismo en\r\npolipropileno de alta resistencia para su mejor\r\npresentación. elevación neumática base de 5\r\npuntas fabricada en aluminio pulido con parte\r\ninterna terminada en pintura color negro. uso\r\ndirección o presidencial dimensiones altura pisoasiento: 46-56 cm. altura fondo: 69-73 cm. altura\r\nfrente: 67 cm. altura total: 112-126 cm. otros\r\ncabecera con ajuste de altura gradual en tres\r\nposiciones para brindar al usuario máxima\r\ncomodidad. descansa brazos estructurados en\r\naluminio pulido, con coderas en poliuretano tipo\r\ngel, 3d ajuste de altura, giratorios y\r\ndesplazamiento frontal. respaldo con diseño\r\nergonómico y soporte lumbar flotante, ajuste de\r\naltura del respaldo gradual. 5 años de garantía.\r\nmodelo rm-9000 marca requiez', 'Directivo o Presidencia', 'Altura Piso-Asiento: 46-56 cm.\r\nAltura Fondo: 69-73 cm.\r\nAltura Frente: 67 cm.\r\nAltura Total: 112-126 cm.', '5 años', 'Requiez'),
(5, 'RM-9001', 'RM-9001_1', NULL, NULL, 'Sillón Gerencial En Mesh', 'Sillón Gerencial en mesh con\r\nreclinamiento, 3 posiciones de\r\nbloqueo y sistema antishock.', 'Negro', 10515, 'Sillón gerencial en mesh respaldo medio,\r\nmecanismos de reclinamiento synchro\r\nmonomando con maneral para regular tensión, 3\r\nposiciones de bloqueo y sistema antishock.\r\nSistema slider para ajuste de profundidad de\r\nasiento, cubierta de mecanismo en polipropileno\r\nde alta resistencia para su mejor presentación.\r\nElevación neumática, base de 5 puntas fabricada\r\nen aluminio pulido con parte interna terminada en\r\npintura color negro. Cabecera con ajuste de altura\r\ngradual en tres posiciones para brindar al usuario\r\nmáxima comodidad. Descansa brazos\r\nestructurados en aluminio pulido, con coderas en\r\npoliuretano tipo gel, 3D ajuste de altura, giratorios y\r\ndesplazamiento frontal. Respaldo con diseño\r\nergonómico con soporte lumbar integrado y ajuste\r\nde altura gradual por medio de sistema lama\r\n(cremallera).', 'Directivo o Presidencial', 'Altura Piso-Asiento: 46-56 cm.\r\nAltura Fondo: 57-63 cm.\r\nAltura Frente: 67 cm.\r\nAltura Total: 98-119 cm.\r\n', '5 años', 'Requiez'),
(6, 'RM-9010', 'RM-9010_1', NULL, NULL, 'Sillón Ejecutivo Staff', 'Sillón Staff estructura blanca con\r\nmalla negra y elevación\r\nneumática.', 'Negro', 13637, 'Sillón Staff de estructura blanca, malla negra,\r\nelevación neumática, base de 5 puntas en\r\naluminio pulido, mecanismo de reclinamiento\r\nsynchro con 3 posiciones de bloqueo y sistema\r\nantishock y maneral para regular la tensión del\r\nreclinamiento, profundidad del asiento por medio\r\ndel sistema slider, ajuste de altura del respaldo por\r\nmedio de sistema de cremallera lama, asiento y\r\nrespaldo con diseño ergonómico tapizado en\r\nmalla, respaldo con soporte lumbar independiente,\r\ndescansabrazos con ajuste de altura coderas de\r\npoliuretano tipo gel con movimiento giratorio y\r\ndeslizamiento frontal y horizontal.', 'Ejecutivo / Directivo', 'Altura Piso-Asiento: 46 – 56 cm.\r\nAltura Fondo: 64 – 68 cm.\r\nAltura Frente: 66 cm.\r\nAltura Total: 102 – 112 cm', '5 años', 'Requiez'),
(7, 'RM-9014', 'RM-9014_1', NULL, NULL, 'Sillón Ejecutivo Staff', 'Sillón Staff estructura blanca con\r\nmalla verde y con elevación\r\nneumática.', 'Verde', 13637, 'Sillón Staff de estructura blanca malla verde,\r\nelevación neumática, base de 5 puntas en\r\naluminio pulido, mecanismo de reclinamiento\r\nsynchro con 3 posiciones de bloqueo y sistema\r\nantishock y maneral para regular la tensión del\r\nreclinamiento, profundidad del asiento por medio\r\ndel sistema slider (mecanismo que opera con una\r\nsola palanca), ajuste de altura del respaldo por\r\nmedio de sistema de cremallera lama, asiento y\r\nrespaldo con diseño ergonómico tapizado en\r\nmalla, respaldo con soporte lumbar independiente,\r\ndescansabrazos con ajuste de altura, coderas de\r\npoliuretano tipo gel con movimiento giratorio y\r\ndeslizamiento frontal y horizontal.', 'Ejecutivo / Directivo', 'Altura Piso-Asiento: 46 – 56 cm.\r\nAltura Fondo: 64 – 68 cm.\r\nAltura Frente: 66 cm.\r\nAltura Total: 102 – 112 cm', '5 años', 'Requiez'),
(8, 'RP-8000NG', 'RP-8000_1', NULL, NULL, 'Sillón Ejecutivo En Piel', 'Sillón Ejecutivo en piel /símil piel\r\nde respaldo alto con elevación\r\nneumática.', 'Negro, Café', 8991, 'Sillón ejecutivo en piel / símil piel de respaldo alto,\r\nelevación neumática, base 5 puntas en aluminio\r\ncon cubierta de pistón en el mismo material, color\r\nnegro, mecanismo knee tilt con cuatro posiciones\r\nde bloqueo con sistema anti-shock y perilla\r\nestriada para regular la tensión, diseño\r\nergonómico para máximo soporte lumbar, brazos\r\nde aluminio pulido, con codera acojinada,\r\ncabecera integrada.', 'Directivo o Presidencial', 'Altura Piso-Asiento: 50 – 57 cm.\r\nAltura Fondo: 70 cm.\r\nAltura Frente: 65 cm.\r\nAltura Total: 123 – 130 cm.', '5 años', 'Requiez'),
(9, 'OHE-605', 'OHE-605', NULL, NULL, 'Silla Directiva Office\r\nCollection', 'Silla Directiva Office\r\nCollection de respaldo alto\r\ncon brazos tipo 3D\r\ngiratorios.', 'Negro', 0, 'Silla Directiva con base de 5 puntas en\r\nfundición de aluminio, terminado en\r\naluminio pulido y con rodajas tipo dual y/o\r\nregatones, elevación por medio de pistón\r\nneumático que permite ajustar la altura del\r\nasiento, mecanismo de acero reforzado tipo\r\narticulado synchro con anti-shock y slider\r\ncon palanca de bloqueo del pistón\r\nneumático, con palanca de bloqueo de el\r\nángulo del respaldo y otra palanca para el\r\naccionamiento del slider en sus diferentes\r\nposiciones, brazos tipo 3D giratorios y\r\najustables de altura en poliuretano semirígido\r\ny suave, respaldo en malla de diseño\r\nergonómico y cabecera, asiento: en malla\r\nde diseño ergonómico, tapiz en malla de\r\ncolor negro, peso máximo de resistencia\r\n140 kgs.', 'Ejecutivo', 'Altura Piso-Asiento: 41.5-47.5 cm.\r\nFondo Asiento: 43 cm.\r\nAncho Asiento: 49.5 cm.\r\nAltura Total: 87-93 cm.', '1 año', 'Offiho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasejecutivas`
--

DROP TABLE IF EXISTS `sillasejecutivas`;
CREATE TABLE IF NOT EXISTS `sillasejecutivas` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sillasejecutivas`
--

INSERT INTO `sillasejecutivas` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RE-7000', 'RE-7000_1', 'RE-7000_2', NULL, 'Sillón Ejecutivo Con\r\nCabecera Dynamic', 'Sillón Ejecutivo con cabecera\r\ndynamic con 4 posiciones de\r\nbloqueo y ajuste de tensión de\r\nrequinamiento.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 9884, 'Sillón Ejecutivo con cabecera dynamic (mesh/tela),\r\nsistema de reclinamiento synchro dinámico, 4\r\nposiciones de bloqueo con antishock. Ajuste de\r\ntensión de reclinamiento y activación del mismo\r\npor medio de perilla y ajuste de profundidad de\r\nasiento por medio de sistema slider. Cubierta de\r\nmecanismo en polipropileno de alta resistencia\r\npara su mejor presentación. Elevación neumática.\r\nBase de 5 puntas, elaborada en aluminio pulido.\r\nDescansabrazos con ajuste de altura, codera de\r\npoliuretano y cubierta de aluminio pulido. Soporte\r\nlumbar independiente con ajuste de altura. Asiento\r\ncon diseño ergonómico con acojinamiento de\r\npoliuretano inyectado de 53 kg/m3 de densidad\r\ncon retardante de flama. respaldo con diseño\r\nergonómico con marco estructural de aluminio. ', 'Ejecutivo', 'Altura Piso-Asiento: 47 – 55 cm.\r\nAltura Fondo: 64 – 68 cm.\r\nAltura Frente: 64 – 70 cm.\r\nAltura Total: 120 – 135 cm.', '5 años', 'Requiez'),
(2, 'RE-1200GR', 'RE-1200GR_1', NULL, NULL, 'Sillón General Con Cabecera', 'Sillón General con cabecera\r\nestructura gris con regulador de\r\ntensión.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 5241, 'Sillón General con cabecera estructura gris,\r\nmecanismos synchro con regulador de tensión y\r\nbloqueo del mismo. Mecanismo elaborado con\r\nplaca de acero cal.10. ajuste de profundidad de\r\nrespaldo. Elevación neumática. Base de 5 puntas,\r\nelaborada en nylon con cinturón de acero.\r\nAcojinamiento de asiento y respaldo con diseño\r\nergonómico fabricado en poliuretano inyectado de\r\n53 kg/ m³ de densidad y retardante al fuego.\r\nDescansa brazos ajustables con codera de\r\npoliuretano. ', 'Ejecutivo', 'Altura Piso-Asiento: 58 – 68 cm.\r\nAltura Fondo: 60 cm.\r\nAltura Frente: 57 – 62 cm.\r\nAltura Total: 114 – 124 cm.', '5 años', 'Requiez'),
(3, 'RE-1360', 'RE-1360_1', 'RE-1360_2', NULL, 'Sillón Ejecutivo Quadra\r\nRespaldo Alto', 'Sillón Ejecutivo Quadra de\r\nrespaldo alto con mesh y\r\nmecanismo multimodal.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 6067, 'Sillón Ejecutivo Quadra respaldo alto mesh.\r\nMecanismos multimodal. Elaborado con placa de\r\nacero cal. 10. ajuste independiente del ángulo\r\nasiento/respaldo. Reclinamiento mecánico del\r\nrespaldo (contacto permanente). Elevación\r\nneumática. Base de 5 puntas fabricada en\r\naluminio pulido. Respaldo con diseño ergonómico\r\ncon ajuste de altura por medio de sistema lama.\r\nAsiento con diseño ergonómico y acojinamiento\r\nde poliuretano inyectado de 53 kg/m3 de densidad\r\ncon retardante al fuego. Descansa brazos en\r\npoliuretano ajustables 2D vertical y frontal. ', ' Ejecutivo / Cómputo', 'Altura Piso-Asiento: 45 – 55 cm.\r\nAltura Fondo: 64 cm.\r\nAltura Frente: 60 – 64 cm.\r\nAltura Total: 116 – 120 cm', '5 años', 'Requiez'),
(4, 'RE-1361', 'RE-1361_1', 'RE-1361_2', NULL, 'Sillón Ejecutivo Quadra\r\nRespaldo Medio', 'Sillón Ejecutivo Quadra de\r\nrespaldo medio de mesh con\r\nmecanismo multimodal.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 5587, 'Sillón Ejecutivo Quadra respaldo medio mesh.\r\nMecanismos multimodal. Elaborado con placa de\r\nacero cal. 10. Ajuste independiente del ángulo\r\nasiento/respaldo. Reclinamiento mecánico del\r\nrespaldo (contacto permanente). Elevación\r\nneumática. Base de 5 puntas fabricada en\r\naluminio pulido. Respaldo con diseño ergonómico\r\ncon ajuste de altura por medio de sistema lama.\r\nAsiento con diseño ergonómico y acojinamiento\r\nde poliuretano inyectado de 53 kg/m3 de densidad\r\ncon retardante al fuego. Descansa brazos en\r\npoliuretano ajustables 2D vertical y frontal. ', 'Ejecutivo', 'Altura Piso-Asiento: 44 cm.\r\nAltura Fondo: 56 cm.\r\nAltura Frente: 62 cm.\r\nAltura Total: 86 cm.\r\n', '5 años', 'Requiez'),
(5, 'RE-1370', 'RE-1370_1', NULL, NULL, 'Sillón Ejecutivo Quadra\r\nRespaldo Alto', 'Sillón Ejecutivo Quadra Respaldo\r\nAlto de mesh con rechinamiento\r\nautopesante.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 6505, 'Sillón Ejecutivo Quadra respaldo alto mesh.\r\nReclinamiento autopesante. Elaborado con placa\r\nde acero cal. 10. con bloque en 3 posiciones y\r\nsistema antishock. Ajuste de profundidad de\r\nasiento por medio de sistema slider. Elevación\r\nneumática. Base de 5 puntas fabricada en\r\naluminio pulido. Respaldo en mesh de nylon con\r\ndiseño ergonómico, ajuste de altura por medio de\r\nsistema lama. Asiento con diseño ergonómico y\r\nacojinamiento de poliuretano inyectado de 53 kg/\r\nm3 de densidad con retardante al fuego.\r\nDescansa brazos con pad de poliuretano color\r\nnegro, ajustables. ', 'Ejecutivo', 'Altura Piso-Asiento: 45 - 55 cm.\r\nAltura Fondo: 64 cm.\r\nAltura Frente: 460 - 64 cm.\r\nAltura Total: 116 - 120 cm.', '5 años', 'Requiez'),
(6, 'RE-1390', 'RE-1390_1', NULL, NULL, 'Sillón Ejecutivo Quadra\r\nRespaldo Alto', 'Sillón Ejecutivo Quadra de\r\nrespaldo alto de mesh a cuadros y\r\nrechinamiento autopesante.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 5843, 'Sillón Ejecutivo Quadra respaldo alto mesh a\r\ncuadros. Mecanismos reclinamiento autopesante.\r\nElaborado con placa de acero cal. 10. con bloque\r\nen 3 posiciones y sistema antishock. Elevación\r\nneumática base de 5 puntas fabricada en aluminio\r\npulido. Respaldo en mesh de nylon con diseño\r\nergonómico, ajuste de altura por medio de sistema\r\nlama. Asiento con diseño ergonómico y\r\nacojinamiento de poliuretano inyectado de 53 kg/\r\nm3 de densidad con retardante al fuego.\r\nDescansa brazos con pad de poliuretano color\r\nnegro, ajustables. ', 'Ejecutivo', 'Altura Piso-Asiento: 45 – 55 cm.\r\nAltura Fondo: 64 cm.\r\nAltura Frente: 60 - 64 cm.\r\nAltura Total: 116 - 120 cm.', '5 años', 'Requiez'),
(7, 'RE-1500', 'RE-1500_1', 'RE-1500_2', NULL, 'Silla Semi Ejecutiva', 'Silla Semi Ejecutiva con respaldo\r\nbajo mesh con bloqueo y perilla\r\npara regular la tensión del\r\nrechinamiento.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 4321, 'Sillón Ejecutivo respaldo bajo mesh. Mecanismos\r\nsynchro con bloqueo y perilla para regular la\r\ntensión del reclinamiento elaborado con placa de\r\nacero cal.10. Elevación neumática. Base de 5\r\npuntas de nylon con cinturón de acero. Respaldo\r\ncon diseño ergonómico tapizado en malla de nylon\r\ncon ajuste de altura por medio de sistema lama\r\nasiento con diseño ergonómico y acojinamiento de\r\npoliuretano inyectado de 53 kg/m³ de densidad\r\ncon retardante al fuego. Descansa brazos con\r\najuste de altura y codera de poliuretano. ', 'Ejecutivo', 'Altura Piso-Asiento: 46 – 55 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 67 cm.\r\nAltura Frente: 57 – 62 cm.\r\nAltura Total: 102 – 108 cm.', '5 años', 'Requiez'),
(8, 'RE-1510', 'RE-1510_1', NULL, NULL, 'Sillón Semi Ejecutivo\r\nRespaldo Alto', 'Sillón Semi Ejecutivo de respaldo\r\nalto de mesh con bloqueo y perilla\r\npara regular la tensión del\r\nreclinamiento.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 4684, 'Sillón Ejecutivo respaldo alto mesh. Mecanismo\r\nsynchro con bloqueo y perilla para regular la\r\ntensión del reclinamiento elaborado con placa de\r\nacero cal. 10. Elevación neumática base de 5\r\npuntas elaborada en nylon con cinturón de acero.\r\nRespaldo con diseño ergonómico tapizado en\r\nmalla de nylon con ajuste de altura por medio de\r\nsistema lama asiento con diseño ergonómico y\r\nacojinamiento de poliuretano inyectado de 53 kg/\r\nm³ de densidad con retardante al fuego. Descansa\r\nbrazos con ajuste de altura y codera de\r\npoliuretano. ', 'Ejecutivo / Operativo', 'Altura Piso-Asiento: 47 – 55 cm.\r\nAltura Fondo: 62 cm.\r\nAltura Frente: 68 cm.\r\nAltura Total: 89 – 103 cm', '5 años', 'Requiez'),
(9, 'RE-1700', 'RE-1700_1', NULL, NULL, 'Sillón Ejecutivo En Malla\r\nRespaldo Alto', 'Sillón Ejecutivo en Malla Alta con\r\nrespaldo alto con mecanismos\r\ndeclinables tipo rodilla.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 4975, 'Sillón ejecutivo en malla respaldo alto. Mecanismo\r\nreclinable tipo rodilla (knee-tilt) con regulador de\r\ntensión del reclinamiento y bloqueo del mismo.\r\nElevación neumática. Base de 5 puntas\r\nelaboradas en aluminio terminado en pintura color\r\ngris. Descansa brazos fijos de polipropileno.\r\nAcojinamiento en asiento fabricado en poliuretano\r\ninyectado de 53 kg/m³ de densidad con retardante\r\nde flama. Respaldo fabricado en mesh de nylon', 'Ejecutivo', 'Altura Piso-Asiento: 49 – 58 cm.\r\nAltura Fondo: 57 cm.\r\nAltura Frente: 60 cm.\r\nAltura Frente: 57 – 62 cm.\r\nAltura Total: 116 – 125 cm', ' 5 años', 'Requiez'),
(10, 'RE-1800', NULL, NULL, NULL, 'Sillón Ejecutivo Tapizado En\r\nTela Respaldo Alto', 'Sillón Ejecutivo tapizado en tela\r\ncon respaldo alto y mecanismo\r\nrelcinable con bloqueo y perilla\r\npara regular la tensión del\r\nreclinamiento.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 3855, 'Sillón Ejecutivo tapizado en tela respaldo alto.\r\nMecanismo reclinable con bloqueo del mismo y\r\nperilla para regular la tensión del reclinamiento.\r\nElevación neumática. Base de 5 puntas,\r\nelaborada en nylon reforzado con cinturón de\r\nacero. Descansa brazos en poliuretano con alma\r\nde acero. asiento y respaldo con diseño\r\nergonómico, acojinamiento de poliuretano\r\ninyectado de 53kgm3 de densidad con retardante\r\nde flama. ', 'Ejecutivo', 'Altura Piso-Asiento: 46 -55 cm.\r\nAltura Fondo: 69 cm.\r\nAltura Frente: 62 cm.\r\nAltura Total: 108 – 117 cm.', ' 5 años', 'Requiez'),
(11, 'RE-1950', 'RE-1950_1', NULL, NULL, 'Sillón Ejecutivo en Mesh\r\nCon Cabecera', 'Sillón Ejecutivo en mesh con\r\ncabecera, 3 posiciones de bloqueo\r\ny sistema antishock.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 5805, 'Sillón Ejecutivo en mesh con cabecera.\r\nMecanismo synchro con regulador de tensión, 3\r\nposiciones de bloqueo y sistema anti shock.\r\nMecanismo elaborado con placa de acero cal.10.\r\nElevación neumática.Base de 5 puntas elaborada\r\nen nylon con cinturón de acero. Descansa brazos\r\nen poliuretano y ajuste de altura. Acojinamiento del\r\nasiento en poliuretano inyectado de 53 kg/m³ de\r\ndensidad con retardante de flama. Respaldo\r\nfabricado en malla con ajuste de profundidad.\r\nCabecera con ajuste gradual.', 'Ejecutivo', 'Altura Piso-Asiento: 45 – 55 cm.\r\nAltura Fondo: 55 – 74 cm.\r\nAltura Frente: 70 – 74 cm.\r\nAltura Total: 115 – 128 cm.', '5 años', 'Requiez'),
(12, 'RE-1961', 'RE-1961_1', NULL, NULL, 'Sillón Ejecutivo En Mesh /\r\nTela Respaldo Medio', 'Sillón Ejecutivo en Mesh / Tela\r\nRespaldo Medio con\r\nrechinamiento Synchro con\r\nregulador de tensión y 3\r\nposiciones de bloqueo.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 5982, 'Sillón Ejecutivo en malla/tela respaldo medio.\r\nMecanismo de reclinamiento synchro con\r\nregulador de tensión, 3 posiciones de bloqueo y\r\nsistema anti shock. Mecanismo elaborado con\r\nplaca de acero cal.10. Elevación neumática. Base\r\nde 5 puntas elaborada en aluminio pulido.\r\nDescansa brazos con ajuste de altura, codera de\r\npoliuretano con alma de acero y cubierta en\r\naluminio pulido. ', 'Ejecutivo', 'Altura Piso-Asiento: 45 – 55 cm.\r\nAltura Fondo: 55 – 74 cm.\r\nAltura Frente: 70 – 74 cm.\r\nAltura Total: 102 – 112 cm.', '5 años', 'Requiez'),
(13, 'RP-4601', 'RP-4601_1', NULL, NULL, 'Sillón General En Piel / Mesh\r\nRespaldo Medio', 'Sillón General en Piel / Mesh\r\nRespaldo Medio con elevación\r\nneumática.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 7905, 'Sillón General en piel/malla respaldo medio,\r\nelevación neumática, base 5 puntas elaborada en\r\nacero con troquel de refuerzo en cada brazo\r\nterminada en cromo, color negro, mecanismo\r\nsynchro con regulador de tensión, 3 posiciones de\r\nbloqueo y sistema antishock, placa de acero cal.\r\n10, descansabrazos en poliuretano con alma de\r\nacero y cubierta de aluminio pulido con ajuste de\r\naltura, acojinamiento del asiento en poliuretano\r\ninyectado de 53 kg/m3 de densidad con retardante\r\nde flama, respaldo fabricado en malla con ajuste\r\nde profundidad, asiento tapizado en fina piel,\r\nrespaldo elaborado en malla de poliéster.', 'Ejecutivo', 'Altura Piso-Asiento: 45 – 55 cm.\r\nAltura Fondo: 55 – 74 cm.\r\nAltura Frente: 70 – 74 cm.\r\nAltura Total: 102 – 112 cm.', '5 años', 'Requiez'),
(14, 'OHE-98B\r\nL', 'OHE-98bl', NULL, '', 'Silla Ejecutiva Flash\r\nCollection', 'Silla Ejecutiva de la línea\r\nFlash Collection con\r\nrespaldo medio, de diseño\r\nergonómico y selección de\r\ncolor tanto de respaldo\r\ncomo de asiento.', 'No especificado', 3514, 'Sillon Ejecutivo respaldo medio, base:\r\nestrella de 5 puntas en nylon reforzado,\r\nrodajas tipo dual y/o regatones. Elevación:\r\npor medio de pistón neumático que permite\r\najustar la altura del asiento. Mecanismo:\r\nplato de acero reforzado con sistema de\r\nreclinación y palanca de bloqueo, perilla de\r\nregulacion de tension para el sistema de\r\nreclinación.Brazos de poliuretano semirigido.\r\nRespaldo en malla de diseño\r\nergonómico. Asiento: hule espuma de\r\npoliuretano inyectadode alta densidad y alta\r\nresilencia. Tapiz: respaldo en malla al color\r\nde su elección de nuestra colección malla\r\nfurny y asiento en tela o vinil al color de su\r\nelección de nuestro catálogo. Peso máximo\r\nde resistencia: 130 kgs aproximadamente.', 'Ejecutivo', 'Altura Piso-Asiento: 480 cm.\r\nFondo Asiento: 46 cm.\r\nAncho Asiento: 49 cm.\r\nAltura Total: 100-113 cm.', '2 años', 'Offiho'),
(15, 'OHE-135', 'OHE-135', NULL, NULL, 'Silla Ejecutiva Tao\r\nCollection', 'Silla Ejecutiva de la línea\r\nTao Collection con respaldo\r\nergonómico y\r\ndescansabrazos.', 'Negro', 4464, 'Silla Ejecutiva base estrella de 5 puntas en\r\nlámina de acero troqueleada, con terminado\r\nen cromo, rodajas tipo dual y/o regatones,\r\nelevación por medio de pistón neumático\r\nque permite ajustar la altura del asiento,\r\ncuenta con un mecanismo de acero\r\nreforzado tipo rodilla articulado (knee-titt)\r\ncon sistema de reclinación y palanca de\r\nbloqueo para la posición de inclinación de\r\nrespaldo, asiento y respaldo de hule\r\nespuma laminado flexible, de alta densidad\r\ny alta resilencia; con descansa brazos de\r\npoliuretano rígido forrados. Tapiz: soft\r\nrevolving leather, peso máximo de\r\nresistencia de 200 kgs aproximadamente.', 'Ejecutivo', 'Altura Piso-Asiento: 38-45 cm.\r\nFondo Asiento: 52 cm.\r\nAncho Asiento: 51 cm.\r\nAltura Total: 104-111 cm.', '1 año', 'Offiho'),
(16, 'OHE-185', 'OHE-185', NULL, NULL, 'Silla Ejecutiva Equa\r\nCollection', 'Silla Ejecutiva de la línea\r\nEqua Collection de respaldo\r\nalto con sistema de\r\nreclinación y palanca de\r\nbloqueo.', 'no especififcado', 0, 'Silla Ejecutiva de base de 5 puntas en\r\nestrella de aluminio fundido y pulido, rodajas\r\ntipo dual y/o regatones, elevación por medio\r\nde pistón neumático que permite ajustar la\r\naltura del asiento, mecanismo de plato de\r\nacero reforzado con sistema de reclinación\r\ny palanca de bloqueo, perilla de regulación\r\nde tensión para el sistema de reclinación,\r\nbrazos de polipropileno semi-rígido,\r\nrespaldo alto en malla de diseño\r\nergonómico con cabecera, asiento de hule\r\nespuma laminado flexible con densidad de\r\n60 kgs/m3 con retardante a la flama y alta\r\nresilencia, tapiz respaldo en malla de color\r\ngris y asiento en tela o vinil al color de su\r\nelección de nuestro catálogo, peso máximo\r\nde resistencia: 120 kgs.', 'Ejecutivo', 'Altura Piso-Asiento: 37-45 cm.\r\nFondo Asiento: 50 cm.\r\nAncho Asiento: 50 cm.\r\nAltura Total: 118-126 cm.', '1 año', 'Offiho'),
(17, 'OHE-195', 'OHE-195', NULL, NULL, 'Silla Ejecutiva Croma\r\nCollection', 'Silla Ejecutiva de la línea\r\nCroma Collection de\r\nrespaldo alto con sistema\r\nde reclinación y palanca de\r\nbloqueo.', 'Negro', 5025, 'Silla Ejecutiva base estrella de 5 puntas en\r\nmetal, terminada en cromo y con rodajas\r\ntipo dual y/o regatones, elevación por medio\r\nde pistón neumático que permite ajustar la\r\naltura del asiento. Mecanismo en acero\r\nreforzado tipo rodilla articulado (knee -tit)\r\ncon sistema de reclinación y palanca de\r\nbloqueo, perilla de regulación de tensión\r\npara el sistema de reclinación y palanca de\r\nbloqueo para la posición de inclinación del\r\nrespaldo (contacto permanente), brazos de\r\npoliuretano semi-rígido con soporte de\r\nacero y de 7 posiciones, respaldo en malla\r\nde diseño ergonómico con cabecera\r\nacojinada y tapizada, asiento de hule\r\nespuma laminado flexible de alta densidad y\r\nalta resilencia, respaldo de malla de color\r\nnegro y asiento en soft revolving leather,\r\npeso máximo de resistencia de 160 kgs\r\naproximadamente.', 'Ejecutivo', 'Altura Piso-Asiento: 39-46 cm.\r\nFondo Asiento: 52 cm.\r\nAncho Asiento: 51 cm.\r\nAltura Total: 105-112cm.', '1 año', 'Offiho'),
(18, 'OHE-505', 'OHE-505', NULL, NULL, 'Silla Ejecutiva Paoli\r\nCollection', 'Silla Ejecutiva de la línea\r\nPaoli Collection de respaldo\r\nalto con elevación por\r\nmedio de pistón neumático.', 'Negro', 4749, 'Silla Ejecutiva base de 5 puntas en estrella\r\nen fundición de aluminio, terminado en\r\naluminio pulido y con rodajas tipo dual y/o\r\nregatones, elevación por medio de pistón\r\nneumático que permite ajustar la altura del\r\nasiento, mecanismo en acero reforzado tipo\r\narticulado synchro con anti-shock con\r\npalanca de bloqueo, perilla de regulación de\r\ntensión para el sistema de reclinación,\r\nbrazos de aluminio fundido y pulidos con\r\nterminado natural. Acojinados y tapizados\r\nen soft revolving leather color negro, asiento\r\nde respaldo alto, hule espuma laminado\r\nflexible de alta densidad y alta resilencia,\r\ntapizado en soft revolving leather color\r\nnegro, peso máximo de resistencia\r\naproximado de 160 kgs.', 'Ejecutivo', 'Altura Piso-Asiento: 34.5-42.5\r\ncm.\r\nFondo Asiento: 50 cm.\r\nAncho Asiento: 51.5 cm.\r\nAltura Total: 115-123 cm.', '1 año', 'Offiho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasescolares`
--

DROP TABLE IF EXISTS `sillasescolares`;
CREATE TABLE IF NOT EXISTS `sillasescolares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sillasescolares`
--

INSERT INTO `sillasescolares` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RE-921N', 'RE-921_1', NULL, NULL, 'Butaca Universitaria', 'Butaca Universitaria de alta\r\nresistencia con diseño ergonómico\r\npara un máximo soporte lumbar.', 'Negro, Gris', 1703, 'Butaca Universitaria, estructura en forma de trineo\r\nelaborada en acero tubular cal-16, asiento y\r\nrespaldo inyectado en polipropileno de alta\r\nresistencia, con diseño ergonómico para un\r\nmáximo soporte lumbar, colores estructura: negro\r\ny/o gris en pintura electrostática, asiento y\r\nrespaldo: negro o gris, paleta fabricada en canto\r\nrígido y laminado plástico colores negro y gris,\r\nincluye canastilla, portalibros fabricados en varilla\r\nredonda pulida cal. 3/16.', 'Escolar / Capacitación', 'Altura Piso-Asiento: 43 cm.\r\nAltura Fondo: 67 cm.\r\nAltura Frente: 54 cm.\r\nAltura Total: 73 cm', '2 años', 'Requiez'),
(2, 'RE-981', 'RE-981_1', NULL, NULL, 'Butaca Universitaria', 'Butaca Universitaria de alta\r\nresistencia con diseño de respaldo\r\ncon perforaciones verticales,\r\nconfortable y ergonómico para un\r\nmáximo soporte lumbar.', 'Negro', 2104, 'Butaca Universitaria, estructura fabricada en acero\r\ntubular cal-14 de cuatro patas terminada en pintura\r\nelectrostática color negro, asiento y respaldo en\r\nuna sola pieza fabricado en polipropileno\r\ninyectado de alta resistencia, diseño de respaldo\r\ncon perforaciones verticales, confortable y\r\nergonómico para máximo soporte lumbar, color\r\nnegro, polipropileno de alto impacto con marco de\r\nacero tubular cal 16 y sistema abatible anti pánico,\r\ntamaño de la paleta 47 x 32 cms., estibable.', 'Escolar / Capacitación', 'Altura Piso-Asiento:45 cm.\r\nAltura Fondo: 76 cm.\r\nAltura Frente: 56 cm.\r\nAltura Total: 84 cm', ' 2 años', 'Requiez'),
(3, 'RE-1061', 'RE-1061_1', NULL, NULL, 'Butaca Universitaria Italiana', 'Butaca Universitaria Italiana\r\ntapizada en tela de importación\r\ncon retardan de flama y protector\r\nde manchas Blockaide.', 'Azul', 2815, 'Butaca Universitaria Italiana tapizado en tela de\r\nimportación con retardante de flama y protector de\r\nmanchas blockaide, estructura acero tubular\r\novalado cal-16 de 4 patas en pintura electrostática\r\ncolores aluminio y negro, diseño ergonómico para\r\nmáximo confort, estibable, regaton protector para\r\nestibar, paleta abatible sistema anti pánico,\r\ncanastilla opcional, espuma de poliuretano\r\ninyectado de 44 kg/m3 de densidad con retardante\r\nde flama.', 'Escolar / Capacitación', 'Altura Piso-Asiento: 48 cm.\r\nAltura Fondo: 62 cm.\r\nAltura Frente: 62 cm.\r\nAltura Total: 80 cm.', '2 años', 'Requiez'),
(4, 'RE-1069', 'RE-1069_1', NULL, NULL, 'Butaca Universitaria Italiana', 'Butaca Universitaria Italiana\r\ntapizada en tela de importación\r\ncon retardan de flama y protector\r\nde manchas Blockaide.', 'Negro', 2500, 'Butaca Universitaria Italiana en polipropileno,\r\nestructura en acero tubular cal-14 de 4 patas\r\nterminada en pintura electrostática colores negro y\r\naluminio, asiento y respaldo en polipropileno\r\ninyectado en colores negro, gris, azul, gris oscuro,\r\ndiseño ergonómico para máximo confort,\r\nestibable, regaton protector para estibar, paleta\r\nabatible, sistema anti pánico, canastilla opcional.', 'Escolar / Capacitación', 'Altura Piso-Asiento: 46 cm.\r\nAltura Fondo: 62 cm.\r\nAltura Frente: 60 cm.\r\nAltura Total: 79 cm.', ' 2 años', 'Requiez'),
(5, 'RM-9026', 'RM-9026_1', NULL, NULL, 'Pupitre Skate Con Reposa\r\nPies', 'Pupitre Skate con espacio\r\ndiseñado para colocar artículos y\r\nreposa pies.', 'Negro', 10316, 'Pupitre Skate, base estructural de polipropileno de\r\nalto impacto color negro con diseño circular y\r\nrodajas duales de nylon. Cuenta con espacio\r\ndiseñado para colocar artículos varios y reposa\r\npies. Colores: estructura color negro, mesh: negro,\r\npaleta: blanco. Asiento y respaldo con diseño\r\nergonómico, marco estructural de polipropileno de\r\nalto impacto en asiento y respaldo, tapizado en\r\nmesh, descansabrazos estructurales con coderas\r\nde poliuretano, porta paleta de acero con sistema\r\ngiratorio multiposicional con diferentes posturas de\r\ntrabajo. ', 'Escolar / Capacitación', 'Altura Piso-Asiento: 46 cm.\r\nAltura Fondo: 62 cm.\r\nAltura Frente: 60 cm.\r\nAltura Total: 79 cm', '5 años', 'Requiez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasindustriales`
--

DROP TABLE IF EXISTS `sillasindustriales`;
CREATE TABLE IF NOT EXISTS `sillasindustriales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sillasindustriales`
--

INSERT INTO `sillasindustriales` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RI-50', 'RI-50', NULL, NULL, 'Banco Industrial Antifatiga /\r\nPuliuretano', 'Banco Industrial Antifatiga /\r\nPuliuretano con elevación\r\nneumática.', 'negro', 2245, 'Banco Industrial Antifatiga, elevación neumÁtica,\r\nbase estrella de 5 puntas elaborada en nylon\r\nreforzado con cinturón de acero, mecanismo\r\nantifatiga con reclinamiento y perilla de fijación de\r\nla inclinación del asiento.Fabricado en placa\r\nmetálica calibre 10, pistón neumático extra largo,\r\nacojinamiento en poliuretano de alta resiliencia con\r\ndiseño ergonómico', ' Industrial / Líneas de producción /\r\nMesas de trabajo', 'Altura Piso-Asiento: 34 – 77 cm.\r\nAltura Fondo: 52 cm.\r\nAltura Frente: 33 cm.', ' 2 años', 'Requiez'),
(2, 'RI-10045', 'RE-100-45_1', NULL, NULL, 'Silla Alta Industrial /\r\nPuliuretano', 'Silla Industrial / Puliuretano con\r\ndescansareis y elevación\r\nneumática.', 'negro', 3858, 'Silla alto industrial descansapies en nylon,\r\nelevación neumática, base de 5 puntas en nylon\r\nreforzado color negro, ajuste de altura y\r\nprofundidad de respaldo, asiento y respaldo en\r\npoliuretano de alta resistencia.', 'Industrial / Líneas de producción', 'Altura Piso-Asiento: 38 – 52 cm.\r\nAltura Fondo: 49 – 52 cm.\r\nAltura Frente: 43 cm.\r\nAltura Total: 79 – 93 cm', '2 años', 'Requiez'),
(3, 'RI-100', 'RI-100_1', NULL, NULL, 'Silla Industrial / Puliuretano', 'Silla Industrial / Puliuretano Con\r\nElevación Neumática.', 'negro', 3383, 'Silla industrial, elevación neumática, base de 5\r\npuntas en nylon reforzado color negro, ajuste de\r\naltura y profundidad de respaldo, asiento y\r\nrespaldo en poliuretano de alta resistencia.', ' Industrial / Líneas de producción', 'Altura Piso-Asiento: 38 – 52 cm.\r\nAltura Fondo: 49 – 52 cm.\r\nAltura Frente: 43 cm.\r\nAltura Total: 79 – 93 cm', ' 2 años', 'Requiez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sillasoperativas`
--

DROP TABLE IF EXISTS `sillasoperativas`;
CREATE TABLE IF NOT EXISTS `sillasoperativas` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `modelo` text COLLATE utf8_spanish2_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` text COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `colores` text COLLATE utf8_spanish2_ci NOT NULL,
  `precio` int(60) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sillasoperativas`
--

INSERT INTO `sillasoperativas` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `colores`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(2, 'RS-46045', 'RS-46045_1', NULL, NULL, 'Silla De Trabajo\r\nVersión Banco Alto', 'Silla de Trabajo versión\r\nbanco alto con descansa\r\npies.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3006, 'Silla de trabajo versión banco alto con descansa\r\npies en nylon. Mecanismo básico, elaborado con\r\nplaca de acero cal. 10. Elevación neumática. Base\r\nde 5 puntas, elaborada en nylon reforzado y con\r\ncinturón de acero. Ajuste de altura y profundidad\r\nde respaldo. Asiento y respaldo con diseño\r\nergonómico para máximo confort. acojinamiento\r\nen poliuretano inyectado de 53 kg/ m³ de densidad\r\ncon retardante de flama', 'Cajero / Mesa de trabajo /\r\nRecepción', 'Altura Piso-Asiento: 62 – 71 cm.\r\nAltura Fondo: 57 – 60 cm.\r\nAltura Frente: 50 cm.\r\nAltura Total: 103 – 122 cm.', '5 años', 'Requiez'),
(3, 'RS-430', 'RS-430_1', NULL, NULL, '0 Silla Operativa Con\r\nReclinamiento', 'Silla Operativa con\r\nreclinamiento y brazos fijos.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 2818, 'Silla Operativa con reclinamiento y brazos\r\nfijos. Mecanismo de reclinamiento de tipo\r\ncontacto permanente y perilla para regular la\r\ntensión del mismo. Elaborado con placa de\r\nacero cal. 10. Elevación neumática base de\r\n5 puntas, elaborada en nylon reforzado y con\r\ncinturón de acero. Ajuste de altura y\r\nprofundidad de respaldo. Asiento y respaldo\r\ncon diseño ergonómico para máximo confort\r\nacojinamiento en poliuretano inyectado de 53\r\nkg/m3 de densidad con retardante de flama.', 'Operativo/ Ejecutivo', 'Altura Piso-Asiento: 41 – 54 cm.\r\nAltura Fondo: 51 – 54 cm.\r\nAltura Frente: 47 cm.\r\nAltura Total: 86 – 105 cm.', ' 5 años', 'Requiez'),
(5, 'RS-460', 'RS-460_1', NULL, NULL, 'Silla De Trabajo', 'Silla de Trabajo con\r\nelevación neumática.', '\r\nBasting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 0, 'Silla de trabajo sin descansa brazos, mecanismo\r\nbásico elaborado con placa de acero cal.10,\r\nelevación neumática, base de 5 puntas elaborada\r\nen nylon reforzado y con cinturón de acero', 'Operativo Básico', 'Altura Piso-Asiento: 43 – 52 cm.\r\nAltura Fondo: 57 – 60 cm.\r\nAltura Frente: 50 cm.\r\nAltura Total: 87 – 102 cm.', '5 años', 'Requiez'),
(6, 'RS-49045', 'RS-68045GR_1', NULL, NULL, 'Silla Operativa Version\r\nBanco Alto Tipo Cajero', 'Silla Operativa version banco\r\nalto tipo cajero con descansa\r\npies de Nylon.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3197, 'Silla operativa version banco alto con descansa\r\npies en nylon. Mecanismo básico, elaborado con\r\nplaca de acero cal. 10. Elevación neumática. Base\r\nde 5 puntas, elaborada en nylon reforzado y con\r\ncinturón de acero. Ajuste de altura por medio\r\nsistema lama del respaldo. Asiento y respaldo con\r\ndiseños ergonómicos para máximo confort.\r\nAcojinamiento en el asiento de poliuretano\r\ninyectado de kg/m³ de densidad con retardante de\r\nflama.Respaldo en mesh. ', ' Cajero / Mesa de trabajo /\r\nRecepción', 'Altura Piso-Asiento: 61 – 75 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 47 cm.\r\nAltura Total: 112 – 128 cm.', '5 años', 'Requiez'),
(7, 'RS-490', 'rs-490_1', 'RS-490_2', NULL, 'Silla De Trabajo\r\nRespaldo En Mesh', 'Silla de Trabajo Respaldo\r\nen mesh y elevación\r\nneumática.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 0, 'Silla de trabajo versión banco alto con descansa\r\npies en nylon. Mecanismo básico, elaborado con\r\nplaca de acero cal. 10. Elevación neumática.\r\nBase de 5 puntas, elaborada en acero con\r\ncubierta plástica decorativa. Asiento y respaldo\r\ncon diseños ergonómicos para máximo confort,\r\nacojinamiento de asiento y respaldo en\r\npoliuretano inyectado de 53 kg/m³ de densidad\r\ncon retardante de flama. Ajuste de altura y\r\nprofundidad de respaldo.', 'Operativo/ Ejecutivo', 'Altura Piso-Asiento: 42 – 56 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 47 cm.\r\nAltura Total: 111 – 128 cm.', '5 años', 'Requiez'),
(8, 'RS-50045', 'RS-50045', NULL, NULL, 'Silla De Lujo Version\r\nBanco Alto', 'Silla de Lujo Version Banco\r\nAlto con descansa pies.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3020, 'Silla operativa Quadra respaldo mesh con\r\ndescansabrazos. Mecanismo básico. Elaborado\r\ncon placa de acero cal. 10. Elevación neumática.\r\nBase de 5 puntas, elaborada en nylon reforzado y\r\ncon cinturón de acero. Ajuste de altura de respaldo\r\npor medio de sistema lama. Asiento y respaldo\r\nergonómicamente diseñados para máximo confort\r\ncon acojinamiento en el asiento de poliuretano\r\ninyectado de 53 kg/m3 de densidad con retardante\r\nde flama. ', ' Operativo Básico', 'Altura Piso-Asiento: 64 – 77 cm.\r\nAltura Fondo: 60 – 64 cm.\r\nAltura Frente: 63 cm.\r\nAltura Total: 105 – 124 cm', '5 años', 'Requiez'),
(9, 'RS-68045GR', 'RS-68045GR_1', NULL, NULL, 'Silla Operativa Quadra', 'Silla Operativa Quadra\r\nversión banco alto con\r\ndescansa pies.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 3661, 'Silla operativa Quadra versión banco alto con\r\ndescansa pies en nylon. Mecanismos básico,\r\nelaborado con placa de acero cal. 10. Elevación\r\nneumática. Base de 5 puntas, elaborada en nylon\r\nreforzado y con cinturón de acero. Ajuste de altura\r\npor medio sistema cremallera lama. Asiento y\r\nrespaldo con diseños ergonómicos para máximo\r\nconfort. Acojinamiento en el asiento de poliuretano\r\ninyectado de kg/m³ de densidad con retardante de\r\nflama. Respaldo en mesh. ', 'Operativo/ Ejecutivo', 'Altura Piso-Asiento: 63– 76 cm.\r\nAltura Fondo: 60 cm.\r\nAltura Frente: 48 cm.\r\nAltura Total: 106 – 122 cm.', '5 años', 'Requiez'),
(10, 'RS-680', 'RS-680_1', NULL, NULL, 'Silla Operativa\r\nQuadra Respaldo\r\nMesh', 'Silla Operativa Quadra con\r\nrespaldo mesh.', 'Basting, Bobbin, Seam,\r\nShears, Thimble, Thread,\r\nAdmiral, Charcoal,\r\nHoney, Platinium, Sand,\r\nScarlet, Slate,Acero,\r\nAzul, Granada, Naranja,\r\nOxford, Verde, Artico,\r\nCactus, Ocean, Onix,\r\nTrebol, Vid, Volcano,\r\nArak, Armeida,\r\nCarmania, Lori, Pashto,\r\nCabernet, Cinder,\r\nIntensity, Olivo, Pinery', 0, 'Silla operativa Quadra versión banco alto con\r\ndescansa pies en nylon. Mecanismo básico,\r\nelaborado con placa de acero cal. 10, elevación\r\nneumática, de 5 puntas, elaborada en nylon\r\nreforzado y con cinturón de acero', 'Operativo Básico', 'Altura Piso-Asiento: 47 – 60 cm.\r\nAltura Fondo: 60 cm.\r\nAltura Frente: 48 cm.\r\nAltura Total: 96 – 106 cm.', '5 años', 'Requiez'),
(11, 'OHE-53', 'OHE-53', NULL, NULL, 'Sillón Ejecutivo\r\nTherapy', 'Sillón Ejecutivo Therapy de\r\nrespaldo bajo con diseño\r\nergonómico y con soporte\r\nlumbar.', 'no especificado', 1614, 'Sillón Ejecutivo respaldo bajo,\r\nbase estrella de 5 puntas y\r\ndiámetro 24” nervada aro en\r\nacero para el asiento del pistón,\r\nrodajas doble color negro mate,\r\nsistema de elevación pistón\r\nneumático de gas, perillas: para\r\najuste de profundidad del\r\nrespaldo (sólo un tornillo).\r\nMecanismo en acero con\r\npalanca de accionamiento y\r\nbloqueo del pistón neumático,\r\nreclinable con regulador de\r\ntensión de la inclinación y\r\nbloqueo, respaldo bastidor de\r\npolipropileno de alta densidad\r\ndiseño ergonómico y de respaldo\r\nbajo con soporte lumbar, asiento\r\nacojinado con hule espuma de\r\npoliuretano inyectado y\r\ndimensionada en 50 mm de\r\nespesor de alta densidad (57\r\nkgs/m3) y de alta resilencia, tapiz\r\nrespaldo de malla al color de su\r\nelección de nuestra colección\r\nmalla furny y asiento en tela o\r\nvinil al color de su elección de\r\nnuestro catálogo, peso máximo\r\nde resistencia 130 kgs.', 'Operativo', 'Altura Piso-Asiento:\r\n41-54cm.\r\nFondo Asiento: 44 cm.\r\nAncho Asiento: 47 cm.\r\nAltura Total: 90.5-103.5\r\ncm.', '1 año', 'Offiho'),
(12, 'OHE-94G\r\nR', 'OHE-94G\r\nR', NULL, NULL, 'Sillón Ejecutivo Sling', 'Sillón Ejecutivo Sling con\r\nrespaldo bajo con elevación\r\nneumática por medio de un\r\npistón que le permite ajustar\r\nla altura del asiento', 'no especificado', 1424, 'Sillón Ejecutivo base estrella de\r\n5 puntas en nylon reforzado,\r\nrodajas tipo dual y/o regatones,\r\nelevación neumático por medio\r\nde un pistón que permite ajustar\r\nla altura del asiento, plato de\r\nacero reforzado con sistema de\r\nreclinación y palanca de\r\nbloqueo, perilla de regulación de\r\ntensión para el sistema de\r\nreclinación, brazos de\r\npoliuretano semi-rígido, respaldo\r\nen malla de diseño ergonómico\r\ncolor negro, asiento de hule\r\nespuma de poliuretano inyectado\r\nflexible de alta densidad y alta\r\nresistencia, tapizado en tela\r\ncolor azabache de nuestro\r\ncatálogo office-crepe, con un\r\npeso máximo de resistencia: 130\r\nkgs aproximadamente. 1 año de\r\ngarantia modelo ohe-94 plus\r\nmarca offiho.', 'Operativo', 'Altura Piso-Asiento:\r\n36-46 cm.\r\nFondo Asiento: 49 cm.\r\nAncho Asiento: 47 cm.\r\nAltura Total: 92.5-102.5\r\ncm.', '1 año', 'Offiho'),
(13, 'OHE-94P\r\nLUS', 'OHE-94P\r\nLUS', NULL, NULL, 'Sillón Ejecutivo Sling\r\nNegro', 'Sillón Ejecutivo Sling Negro\r\ncon elevación neumática\r\npor medio de un pistón que\r\nle permite ajustar la altura\r\ndel asiento', 'Negro, Gris', 1424, 'Sillón Ejecutivo base estrella de\r\n5 puntas en nylon reforzado,\r\nrodajas tipo dual y/o regatones,\r\nelevación neumático por medio\r\nde un pistón que permite ajustar\r\nla altura del asiento, plato de\r\nacero reforzado con sistema de\r\nreclinación y palanca de\r\nbloqueo, perilla de regulación de\r\ntensión para el sistema de\r\nreclinación, brazos de\r\npoliuretano semi-rígido, respaldo\r\nen malla de diseño ergonómico', 'Operativo', 'Altura Piso-Asiento:\r\n38-45 cm.\r\nFondo Asiento: 49 cm.\r\nAncho Asiento: 47 cm.\r\nAltura Total: 94-101\r\ncm.', '1 año', 'Offiho'),
(14, 'OHE-99', 'OHE-99', NULL, NULL, 'Sillón Ejecutivo\r\nEvolution', 'Sillón Ejecutivo Evolution\r\ncon elevación por medio de\r\npistón neumático que\r\npermite ajustar la altura del\r\nasiento', 'Negro, Gris', 2564, 'Sillón ejecutivo respaldo medio,\r\nbase estrella de 5 puntas en\r\nnylon reforzado, rodajas tipo dual\r\ny/o regatones. Elevación por\r\nmedio de pistón neumático que\r\npermite ajustar la altura del\r\nasiento. Mecanismo plato de\r\nacero reforzado con sistema de\r\nreclinación y palanca de\r\nbloqueo, perilla de regulación de', 'Operativo', 'Altura Piso-Asiento:\r\n43-50 cm.\r\nFondo Asiento: 47 cm.\r\nAncho Asiento: 48 cm.\r\nAltura Total: 91-98 cm.', '1 año', 'no se'),
(15, 'OHS-42', 'OHS-42', NULL, NULL, 'Silla Secretaria\r\nProchair', 'Silla Secretarial Prochair\r\ncon elevación por medio de\r\npistón neumático que\r\npermite ajustar la altura del\r\nasiento', 'no especifiado', 1709, 'Silla secretarial con kit estándar\r\nbase estrella de 5 puntas en\r\nnylon reforzado, rodajas tipo\r\ndual, elevación por medio de\r\npistón neumático que permite\r\najustar la altura del asiento,\r\nmecanismo plato de acero\r\nreforzado con palanca de\r\naccionamiento y bloqueo del\r\npistón neumático, asiento y\r\nrespaldo acojinado con hule\r\nespuma inyectado de alta\r\ndensidad y alta resilencia, tapiz\r\ntela o vinil al color de su elección\r\nde nuestro catálogo, peso\r\nmáximo de resistencia de 130\r\nkgs.', 'Operativo', 'Altura Piso-Asiento:\r\n43-56.5 cm.\r\nFondo Asiento: 44 cm.\r\nAncho Asiento: 50 cm.\r\nAltura Total: 90-103.5\r\ncm.', '1 año', 'Offiho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

DROP TABLE IF EXISTS `tblproductos`;
CREATE TABLE IF NOT EXISTS `tblproductos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `precio` decimal(22,0) NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`id`, `nombre`, `precio`, `descripcion`, `imagen`) VALUES
(1, 'RC-1043.png', '1005', 'RC-1043', 'RC-1043.png'),
(4, 'RE-941.jpg', '1005', 'no se', 'RE-941.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

DROP TABLE IF EXISTS `tblventas`;
CREATE TABLE IF NOT EXISTS `tblventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clavetransaccion` varchar(250) COLLATE utf8_spanish2_ci NOT NULL,
  `paypaldatos` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `correo` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `total` decimal(60,0) NOT NULL,
  `status` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, `total`, `status`) VALUES
(1, '6kn1e8n1b6nmhuppkdtfut7din', '', '2019-04-15 10:38:48', 'gil.q.c.dq@gmail.com', '15076', 'vendido'),
(2, '6kn1e8n1b6nmhuppkdtfut7din', '', '2019-04-15 10:40:30', 'gil.q.c.dq@gmail.com', '15076', 'vendido'),
(3, '6kn1e8n1b6nmhuppkdtfut7din', '', '2019-04-15 10:40:57', 'gil.q.c.dq@gmail.com', '28713', 'vendido'),
(4, '6kn1e8n1b6nmhuppkdtfut7din', '', '2019-04-15 10:48:39', 'gil.q.c.dq@gmail.com', '28713', 'vendido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vancas`
--

DROP TABLE IF EXISTS `vancas`;
CREATE TABLE IF NOT EXISTS `vancas` (
  `id` int(254) NOT NULL AUTO_INCREMENT,
  `modelo` varchar(254) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `vista1` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista2` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `vista3` varchar(254) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(254) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `color` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` int(30) NOT NULL,
  `Descripcin_Tecnica` text COLLATE utf8_spanish2_ci NOT NULL,
  `Uso` text COLLATE utf8_spanish2_ci NOT NULL,
  `Dimensiones` text COLLATE utf8_spanish2_ci NOT NULL,
  `Garantia` text COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` text COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vancas`
--

INSERT INTO `vancas` (`id`, `modelo`, `vista1`, `vista2`, `vista3`, `nombre`, `descripcion`, `color`, `precio`, `Descripcin_Tecnica`, `Uso`, `Dimensiones`, `Garantia`, `Marca`) VALUES
(1, 'RE-573', 'RE-573-1', NULL, NULL, 'Banca Rewind De 3 Plazas', 'Banca Rewind de 3 plazas con\r\nmayor confort y diseño\r\nergonómico.', 'Rojo, Verde, Blanco, Gris, Arena, Azul,\r\nNegro', 5897, 'Banca Rewind 3 plazas de estructura acero\r\ntubular redondo de 1 1/2\" cal.-16 y travesaño de\r\n1/2 x 2\" cal. 14 terminada en cromo, asiento y\r\nrespaldo fabricado en inyección de polipropileno\r\nde alta resistencia y reticulado para permitir mayor\r\ncirculación de aire, mayor confort y diseño\r\nergonómico, con terminación caida de cascada.', 'Visita / Espera', '\r\nAltura Piso-Asiento: 47 cm.\r\nAltura Fondo: 59 cm.\r\nAltura Frente: 160 cm.\r\nAltura Total: 84 cm.', ' 2 años', 'Requiez'),
(3, 'RE-941C', 'RE-941C', NULL, NULL, 'Banca De Polipropileno 4\r\nPlazas', 'Banca de polipropileno de 4\r\nplazas de alta resistencia y diseño\r\nergonómico para máximo soporte\r\nlumbar.', 'Negro, Gris', 7643, 'Banca Confortable 3 plazas, estructura tubular\r\nelíptico en acero de 60 mm con tapón decorativo\r\nen polipropileno y regatones, asiento y respaldo\r\nestructura con alma de acero en inyección de\r\npoliuretano de 53 kg/m3 de densidad con\r\nretardante de flama, travesaños construidos en\r\nperfil de acero tubular cuadrado de 2\" cal 14.,\r\nconectores de acero de 3/16 x 1 1/8.', ' Visita / Espera', 'Altura Piso-Asiento: 44 cm.\r\nAltura Fondo: 70 cm.\r\nAltura Frente: 63 – 219 cm.\r\nAltura Total: 80 cm.', '2 años', 'Requiem'),
(4, 'RC-1043B', 'RC-1043', NULL, NULL, 'Banca Confortable 3 Plazas', 'Banca Confortable de 3 plazas\r\ncon retardan de flama.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 18150, 'Banca Italiana de 3 plazas, tapizada en tela de\r\nimportación con retardante de flama y protector de\r\nmanchas lockaide, estructura en acero tubular\r\nredondo 1 1/2 cal. 16 y travesaño de 1/2 x 2\" cal.\r\n14 terminada en pintura electrostática negra,\r\nasiento y respaldo con diseño ergonómico\r\ntapizado en tela, acojinamiento en poliuretano\r\ninyectado de 44 kg/m3 de densidad con retardante\r\nal fuego.', ' Visita / Espera', 'Altura Piso-Asiento: 48 cm.\r\nAltura Fondo: 60 cm.\r\nAltura Frente: 160 cm.\r\nAltura Total: 82 cm.', ' 2 años', 'Requiez'),
(5, 'RE-1063', 'RE-1063', NULL, NULL, 'Banca Italiana 3 Plazas', 'Banca Italiana de 3 plazas\r\ntapizada en tela de importación\r\ncon retardan de flama y protector\r\nde manchas blockaide.', 'Basting, Bobbin, Seam, Shears,\r\nThimble, Thread, Admiral, Charcoal,\r\nHoney, Platinium, Sand, Scarlet,\r\nSlate,Acero, Azul, Granada, Naranja,\r\nOxford, Verde, Artico, Cactus, Ocean,\r\nOnix, Trebol, Vid, Volcano, Arak,\r\nArmeida, Carmania, Lori, Pashto,\r\nCabernet, Cinder, Intensity, Olivo, Pinery', 4967, 'Banca de polipropileno 4 plazas, estructura acero\r\ntubular redondo de 2\" cal.-16 de 4 patas\r\ncromadas y travesaño de 2\", asiento y respaldo\r\ninyectados en polipropileno de alta resistencia con\r\ndiseño ergonómico para máximo soporte lumbar,\r\nlo que permite estar sentado largo tiempo sin sentir\r\nincomodidad, colores asiento y respaldo negro o\r\ngris', ' Visita / Espera', 'Altura Piso-Asiento: 44 cm.\r\nAltura Fondo: 61 cm.\r\nAltura Frente: 163 – 219 cm.\r\nAltura Total: 83 cm.', ' 2 años', 'Requiez'),
(6, 'RE-1073', 'RE-1073', NULL, NULL, 'Banca Italiana 3 Plazas', 'Banca Italiana de polipropileno de\r\n3 plazas.', 'Negro, Gris, Oscuro, Gris Claro, Azul', 3985, 'Banca Italiana de 3 plazas de polipropileno\r\nestructura en acero tubular redondo 1 1/2 cal. 16 y\r\ntravesaño de 1/2 x 2\" cal. 14 terminada en pintura\r\nelectrostática negra, asiento y respaldo inyectados\r\nen polipropileno de alta resistencia con diseño\r\nergonómico para máximo confort.', ' Visita / Espera', 'Altura Piso-Asiento: 45 cm.\r\nAltura Fondo: 50 cm.\r\nAltura Frente: 107 cm.\r\nAltura Total: 80 cm.', '2 años', 'Requiez');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventa`
--
ALTER TABLE `detalleventa`
  ADD CONSTRAINT `detalleventa_ibfk_1` FOREIGN KEY (`idventa`) REFERENCES `tblventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleventa_ibfk_2` FOREIGN KEY (`idproducto`) REFERENCES `tblproductos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
