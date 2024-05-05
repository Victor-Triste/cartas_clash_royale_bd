-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2024 a las 18:16:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clash_royale`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cartas`
--

CREATE TABLE `cartas` (
  `c_nombre` varchar(50) NOT NULL,
  `c_elixir` int(11) NOT NULL,
  `c_descripcion` varchar(200) NOT NULL,
  `c_calidad` varchar(30) NOT NULL,
  `c_tipo` varchar(30) NOT NULL,
  `c_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cartas`
--

INSERT INTO `cartas` (`c_nombre`, `c_elixir`, `c_descripcion`, `c_calidad`, `c_tipo`, `c_imagen`) VALUES
('Arquero Mágico', 4, 'No es un mago ni tampoco un arquero. Dispara una flecha mágica que atraviesa y daña a los enemigos que se interponen en su camino. No es ningún truco, ¡es magia!', 'Legendaria', 'Tropa', 'imagenes/arqueroMagico.png'),
('Ballesta', 6, '¡Qué torre tan bien puesta! Sería una pena que esta ballesta la derrumbara desde el otro lado de la arena...', 'Épica', 'Estructura', 'imagenes/ballesta.png'),
('Bárbaros', 5, 'Una horda de atacantes cuerpo a cuerpo con un perverso bigote y un carácter aún peor.', 'Común', 'Tropa', 'imagenes/barbaros.png'),
('Bárbaros de Élite', 6, 'Genera un par de bárbaros de gran nivel. Son bárbaros normales, solo que más duros, veloces y fuerte', 'Común', 'Tropa', 'imagenes/barbarosElite.png'),
('Bebé Dragón', 4, 'Esta unidad voladora escupe bolas de fuego que infligen daño de área. Cuando nacen, los bebés dragón son monísimos, pero también tienen mucha hambre y siempre les apetece un buen churrasco.', 'Épica', 'Tropa', 'imagenes/bebeDragon.png'),
('Bola de Fuego', 2, '', 'Común', 'Tropa', 'imagenes/bolaFuego.png'),
('Bola de Nieve', 2, '', 'Común', 'Hechizo', 'imagenes/bolaNieve.png'),
('Bruja', 5, '', 'Épica', 'Tropa', 'imagenes/bruja.png'),
('Bruja Madre', 4, '', 'Legendaria', 'Tropa', 'imagenes/brujaMadre.png'),
('Cañón con Ruedas', 5, '', 'Épica', 'Tropa', 'imagenes/cañon.png'),
('Cazador', 4, '', 'Épica', 'Tropa', 'imagenes/cazador.png'),
('Cementerio', 5, '', 'Legendaria', 'Hechizo', 'imagenes/cementerio.png'),
('Chispitas', 6, '', 'Legendaria', 'Tropa', 'imagenes/chispitas.png'),
('Choza de Bárbaros', 7, '', 'Especial', 'Estructura', 'imagenes/chozaBarbaros.png'),
('Curandera', 4, '', 'Especial', 'Tropa', 'imagenes/curandera.png'),
('Descarga', 2, '', 'Común', 'Hechizo', 'imagenes/zap.png'),
('Dragón Eléctrico', 5, '', 'Épica', 'Tropa', 'imagenes/dragonElectrico.png'),
('Dragón Esqueletos', 4, '', 'Común', 'Tropa', 'imagenes/dragonEsqueleto.png'),
('Dragón Infernal', 4, '', 'Legendaria', 'Tropa', 'imagenes/dragonInfernal.png'),
('Duende Gigante', 6, '', 'Épica', 'Tropa', 'imagenes/duendeGigante.png'),
('Duendes con lanza', 2, '', 'Común', 'Tropa', 'imagenes/duendesLanza.png'),
('Ejército Esqueletos', 3, '', 'Épica', 'Tropa', 'imagenes/ejercito.png'),
('Espejo', 1, '', 'Épica', 'Hechizo', 'imagenes/espejo.png'),
('Espíritu Eléctrico', 1, '', 'Común', 'Hechizo', 'imagenes/espirituElectrico.png'),
('Espíritu Sanador', 1, '', 'Especial', 'Hechizo', 'imagenes/espirituSanador.png'),
('Esqueletos', 1, '', 'Común', 'Tropa', 'imagenes/calavera.png'),
('Excavadora', 4, '', 'Épica', 'Estructura', 'imagenes/excavadora.jpg'),
('Fantasma Real', 3, '', 'Legendaria', 'Tropa', 'imagenes/fantasma.png'),
('Gigante Eléctrico', 8, '', 'Épica', 'Tropa', 'imagenes/giganteElectrico.png'),
('Gigante Noble', 6, '', 'Común', 'Tropa', 'imagenes/giganteNoble.png'),
('Globo Esqueletos', 3, '', 'Común', 'Tropa', 'imagenes/globoCalaveras.png'),
('Guardias', 3, '', 'Épica', 'Tropa', 'imagenes/guardias.png'),
('Hielo', 4, '', 'Épica', 'Hechizo', 'imagenes/hielo.png'),
('Horda de Esbirros', 5, '', 'Común', 'Tropa', 'imagenes/esbirros.png'),
('Jaula Forzudo', 4, '', 'Especial', 'Estructura', 'imagenes/forzudo.png'),
('Lanzarrocas', 5, '', 'Épica', 'Tropa', 'imagenes/lanzaRocas.png'),
('Leñador', 4, '', 'Legendaria', 'Tropa', 'imagenes/leñador.png'),
('Mago de Fuego', 5, '', 'Especial', 'Tropa', 'imagenes/magoFuego.png'),
('Mago de Hielo', 3, '', 'Legendaria', 'Tropa', 'imagenes/magoHielo.png'),
('Mago Eléctrico', 4, '', 'Legendaria', 'Tropa', 'imagenes/magoElectrico.png'),
('Minero', 3, '', 'Legendaria', 'Tropa', 'imagenes/minero.png'),
('Mini P.E.K.K.A', 4, '', 'Especial', 'Tropa', 'imagenes/miniPeka.png'),
('Monta Carnera', 5, '', 'Legendaria', 'Tropa', 'imagenes/montaCarnera.png'),
('Monta Puercos', 4, '', 'Especial', 'Tropa', 'imagenes/montaPuercos.png'),
('Mortero', 4, '', 'Común', 'Estructura', 'imagenes/mortero.png'),
('P.E.K.K.A', 7, '', 'Épica', 'Tropa', 'imagenes/peka.png'),
('Paquete Real', 3, '', 'Común', 'Tropa', 'imagenes/paqueteReal.png'),
('Pillos', 5, '', 'Común', 'Tropa', 'imagenes/pillos.png'),
('Princesa', 3, '', 'Legendaria', 'Tropa', 'imagenes/princesa.png'),
('Príncipe Oscuro', 4, '', 'Épica', 'Tropa', 'imagenes/principeOscuro.png'),
('Puercos Reales', 5, '', 'Especial', 'Tropa', 'imagenes/puercosReales.png'),
('Rompe Muros', 3, '', 'Épica', 'Tropa', 'imagenes/rompeMuros.png'),
('Terremoto', 3, '', 'Especial', 'Hechizo', 'imagenes/terremoto.png'),
('Tesla', 4, '', 'Común', 'Estructura', 'imagenes/tesla.png'),
('Tornado', 3, '', 'Épica', 'Hechizo', 'imagenes/tornado.png'),
('Trío Mosqueteras', 9, '', 'Especial', 'Tropa', 'imagenes/trioMosqueteras.png'),
('Valquiria', 4, '', 'Especial', 'Tropa', 'imagenes/valquiria.png'),
('Veneno', 4, '', 'Épica', 'Hechizo', 'imagenes/veneno.png'),
('Verdugo', 5, '', 'Épica', 'Tropa', 'imagenes/verdugo.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cartas`
--
ALTER TABLE `cartas`
  ADD PRIMARY KEY (`c_nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
