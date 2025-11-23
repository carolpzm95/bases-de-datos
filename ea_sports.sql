-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2025 a las 02:00:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ea_sports`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comuna_barrio`
--

CREATE TABLE `comuna_barrio` (
  `id` int(11) NOT NULL,
  `comuna` varchar(45) NOT NULL,
  `barrio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comuna_barrio`
--

INSERT INTO `comuna_barrio` (`id`, `comuna`, `barrio`) VALUES
(1, 'Comuna 1', 'Popular'),
(2, 'Comuna 2', 'Santa Cruz'),
(3, 'Comuna 3', 'Manrique'),
(4, 'Comuna 4', 'Aranjuez'),
(5, 'Comuna 5', 'Castilla'),
(6, 'Comuna 6', 'Doce de Octubre'),
(7, 'Comuna 7', 'Robledo'),
(8, 'Comuna 8', 'Villa Hermosa'),
(9, 'Comuna 9', 'Buenos Aires'),
(10, 'Comuna 10', 'La Candelaria'),
(11, 'Comuna 11', 'Laureles'),
(12, 'Comuna 12', 'La América'),
(13, 'Comuna 13', 'San Javier'),
(14, 'Comuna 14', 'El Poblado'),
(15, 'Comuna 15', 'Guayabal'),
(16, 'Comuna 16', 'Belén'),
(17, 'Comuna 17', 'San Cristóbal'),
(18, 'Comuna 18', 'Altavista'),
(19, 'Comuna 19', 'San Antonio'),
(20, 'Comuna 20', 'Prado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consola`
--

CREATE TABLE `consola` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `existencia_inventario` int(11) NOT NULL,
  `dir_ip` varchar(45) DEFAULT NULL,
  `dir_mac` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consola`
--

INSERT INTO `consola` (`id`, `nombre`, `existencia_inventario`, `dir_ip`, `dir_mac`) VALUES
(1, 'PS4', 10, '192.168.0.1', 'AA:BB:CC:DD:01'),
(2, 'PS5', 8, '192.168.0.2', 'AA:BB:CC:DD:02'),
(3, 'Xbox One', 6, '192.168.0.3', 'AA:BB:CC:DD:03'),
(4, 'Xbox Series X', 4, '192.168.0.4', 'AA:BB:CC:DD:04'),
(5, 'Nintendo Switch', 12, '192.168.0.5', 'AA:BB:CC:DD:05'),
(6, 'PC Gamer', 5, '192.168.0.6', 'AA:BB:CC:DD:06'),
(7, 'PS3', 3, '192.168.0.7', 'AA:BB:CC:DD:07'),
(8, 'Xbox 360', 7, '192.168.0.8', 'AA:BB:CC:DD:08'),
(9, 'Wii U', 2, '192.168.0.9', 'AA:BB:CC:DD:09'),
(10, 'Wii', 4, '192.168.0.10', 'AA:BB:CC:DD:0A'),
(11, 'PS Vita', 1, '192.168.0.11', 'AA:BB:CC:DD:0B'),
(12, '3DS', 2, '192.168.0.12', 'AA:BB:CC:DD:0C'),
(13, 'Steam Deck', 5, '192.168.0.13', 'AA:BB:CC:DD:0D'),
(14, 'Meta Quest 3', 3, '192.168.0.14', 'AA:BB:CC:DD:0E'),
(15, 'HTC Vive', 3, '192.168.0.15', 'AA:BB:CC:DD:0F'),
(16, 'Arcade', 1, '192.168.0.16', 'AA:BB:CC:DD:10'),
(17, 'Retro Mini', 2, '192.168.0.17', 'AA:BB:CC:DD:11'),
(18, 'GameCube', 1, '192.168.0.18', 'AA:BB:CC:DD:12'),
(19, 'Sega Genesis', 1, '192.168.0.19', 'AA:BB:CC:DD:13'),
(20, 'SNES', 1, '192.168.0.20', 'AA:BB:CC:DD:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control`
--

CREATE TABLE `control` (
  `id` int(11) NOT NULL,
  `numero_serie` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `id_consola` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `control`
--

INSERT INTO `control` (`id`, `numero_serie`, `tipo`, `id_consola`) VALUES
(1, 'CTRL-01', 'Inalámbrico', 1),
(2, 'CTRL-02', 'Inalámbrico', 2),
(3, 'CTRL-03', 'Cableado', 3),
(4, 'CTRL-04', 'Inalámbrico', 4),
(5, 'CTRL-05', 'Inalámbrico', 5),
(6, 'CTRL-06', 'Cableado', 6),
(7, 'CTRL-07', 'Inalámbrico', 7),
(8, 'CTRL-08', 'Cableado', 8),
(9, 'CTRL-09', 'Inalámbrico', 9),
(10, 'CTRL-10', 'Inalámbrico', 10),
(11, 'CTRL-11', 'Cableado', 11),
(12, 'CTRL-12', 'Inalámbrico', 12),
(13, 'CTRL-13', 'Inalámbrico', 13),
(14, 'CTRL-14', 'Cableado', 14),
(15, 'CTRL-15', 'Inalámbrico', 15),
(16, 'CTRL-16', 'Inalámbrico', 16),
(17, 'CTRL-17', 'Cableado', 17),
(18, 'CTRL-18', 'Inalámbrico', 18),
(19, 'CTRL-19', 'Inalámbrico', 19),
(20, 'CTRL-20', 'Cableado', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_juego`
--

CREATE TABLE `equipo_juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `horas` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `juego` varchar(45) DEFAULT NULL,
  `id_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo_juego`
--

INSERT INTO `equipo_juego` (`id`, `nombre`, `horas`, `nivel`, `juego`, `id_juego`) VALUES
(1, 'Alpha Squad', 120, 5, 'Fortnite', 1),
(2, 'Los Titanes', 98, 4, 'FIFA 25', 2),
(3, 'Eagles eSports', 225, 7, 'MW3', 3),
(4, 'Miners Club', 310, 8, 'Minecraft', 4),
(5, 'Turbo League', 80, 3, 'Rocket League', 5),
(6, 'Valor Kings', 150, 6, 'Valorant', 6),
(7, 'LoL Legends', 190, 9, 'LOL', 7),
(8, 'Sniper Elite', 119, 5, 'CS2', 8),
(9, 'Apex Wolves', 132, 6, 'Apex', 9),
(10, 'OverPower', 145, 7, 'OW2', 10),
(11, 'Horizon Racers', 86, 4, 'Forza', 11),
(12, 'San Andreas Crew', 203, 8, 'GTA V', 12),
(13, 'CyberRunners', 120, 5, 'Cyberpunk', 13),
(14, 'Roblox Studio Team', 72, 3, 'Roblox', 14),
(15, 'PUBG Veterans', 167, 7, 'PUBG', 15),
(16, 'Kart Masters', 90, 4, 'Mario Kart', 16),
(17, 'Smash Bros Team', 60, 3, 'Smash', 17),
(18, 'Halo Force', 110, 6, 'Halo', 18),
(19, 'Warzone Elite', 200, 7, 'Warzone', 19),
(20, 'Ring Slayers', 99, 4, 'Elden Ring', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juego`
--

CREATE TABLE `juego` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `clasificasion_ESRB` varchar(45) DEFAULT NULL,
  `estudio_dev` varchar(45) DEFAULT NULL,
  `plataforma_disponibles` varchar(45) DEFAULT NULL,
  `numero_jugadores` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `existencias_inventario` int(11) DEFAULT NULL,
  `plataforma_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `juego`
--

INSERT INTO `juego` (`id`, `nombre`, `clasificasion_ESRB`, `estudio_dev`, `plataforma_disponibles`, `numero_jugadores`, `tipo`, `existencias_inventario`, `plataforma_id`) VALUES
(1, 'Fortnite', 'T', 'Epic Games', 'PC, PS4, Xbox', '100', 'Battle Royale', 50, 1),
(2, 'FIFA 25', 'E', 'EA Sports', 'PC, Consolas', '22', 'Deportes', 30, 2),
(3, 'Call of Duty MW3', 'M', 'Activision', 'PC, PS5', '12', 'Shooter', 40, 3),
(4, 'Minecraft', 'E10', 'Mojang', 'Todas', '8', 'Sandbox', 60, 4),
(5, 'Rocket League', 'E', 'Psyonix', 'PC/PS', '8', 'Deportes', 20, 5),
(6, 'Valorant', 'T', 'Riot Games', 'PC', '10', 'Shooter', 33, 6),
(7, 'League of Legends', 'T', 'Riot Games', 'PC', '10', 'MOBA', 70, 7),
(8, 'CS2', 'M', 'Valve', 'PC', '10', 'Shooter', 44, 8),
(9, 'Apex Legends', 'T', 'Respawn', 'PC/PS/Xbox', '3', 'Shooter', 21, 9),
(10, 'Overwatch 2', 'T', 'Blizzard', 'PC/PS/Xbox', '10', 'Shooter', 25, 10),
(11, 'Forza Horizon 5', 'E', 'Playground Games', 'Xbox/PC', '12', 'Carreras', 18, 11),
(12, 'GTA V', 'M', 'Rockstar', 'PC/PS/Xbox', '1', 'Acción', 52, 12),
(13, 'Cyberpunk 2077', 'M', 'CDPR', 'PC', '1', 'RPG', 15, 13),
(14, 'Roblox', 'E', 'Roblox Corp', 'PC/Mobile', '∞', 'Sandbox', 90, 14),
(15, 'PUBG', 'M', 'Krafton', 'PC/Mobile', '100', 'Shooter', 33, 15),
(16, 'Mario Kart 8', 'E', 'Nintendo', 'Switch', '4', 'Carreras', 16, 16),
(17, 'Smash Bros', 'E10', 'Nintendo', 'Switch', '8', 'Lucha', 14, 17),
(18, 'Halo Infinite', 'T', '343 Industries', 'Xbox', '16', 'Shooter', 22, 18),
(19, 'Warzone', 'M', 'Activision', 'PC/PS/Xbox', '150', 'Shooter', 47, 19),
(20, 'Elden Ring', 'M', 'FromSoftware', 'PC/PS/Xbox', '1', 'RPG', 28, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logro_trofeo`
--

CREATE TABLE `logro_trofeo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `puntos_req` int(11) DEFAULT NULL,
  `id_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `logro_trofeo`
--

INSERT INTO `logro_trofeo` (`id`, `nombre`, `puntos_req`, `id_juego`) VALUES
(1, 'Primer Paso', 10, 1),
(2, 'Campeón FIFA', 20, 2),
(3, 'Soldado Élite', 30, 3),
(4, 'Arquitecto', 15, 4),
(5, 'Super Goleador', 18, 5),
(6, 'Headshot Master', 25, 6),
(7, 'Ace Pentakill', 40, 7),
(8, 'Francotirador', 22, 8),
(9, 'Apex Predator', 35, 9),
(10, 'Heroe del Equipo', 28, 10),
(11, 'Piloto Experto', 40, 11),
(12, 'Criminal Legendario', 50, 12),
(13, 'Cyber Ninja', 33, 13),
(14, 'Constructor Maestro', 12, 14),
(15, 'Superviviente', 45, 15),
(16, 'Rey de la Pista', 20, 16),
(17, 'Super Smash', 30, 17),
(18, 'Guardián Halo', 32, 18),
(19, 'Warzone Killer', 44, 19),
(20, 'Ancestral', 38, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plataforma`
--

CREATE TABLE `plataforma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plataforma`
--

INSERT INTO `plataforma` (`id`, `nombre`, `marca`) VALUES
(1, 'PlayStation 4', 'Sony'),
(2, 'PlayStation 5', 'Sony'),
(3, 'Xbox One', 'Microsoft'),
(4, 'Xbox Series X', 'Microsoft'),
(5, 'Nintendo Switch', 'Nintendo'),
(6, 'PC Gaming', 'Custom'),
(7, 'Steam Deck', 'Valve'),
(8, 'Meta Quest 3', 'Meta'),
(9, 'PlayStation VR2', 'Sony'),
(10, 'Mobile Android', 'Google'),
(11, 'Mobile iOS', 'Apple'),
(12, 'Arcade', 'Retro Corp'),
(13, 'Sega Genesis Mini', 'Sega'),
(14, 'SNES Mini', 'Nintendo'),
(15, 'PS Vita', 'Sony'),
(16, 'Xbox 360', 'Microsoft'),
(17, 'Wii U', 'Nintendo'),
(18, '3DS', 'Nintendo'),
(19, 'PC Esports', 'Intel'),
(20, 'VR HTC Vive', 'HTC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion_entrenamiento`
--

CREATE TABLE `sesion_entrenamiento` (
  `id` int(11) NOT NULL,
  `hora_ini` datetime DEFAULT NULL,
  `hora_fin` datetime DEFAULT NULL,
  `id_juego` int(11) NOT NULL,
  `id_arbitro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `id` int(11) NOT NULL,
  `tipo_telefono` varchar(45) NOT NULL,
  `numero_telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id`, `tipo_telefono`, `numero_telefono`) VALUES
(1, 'Celular', '3001110001'),
(2, 'Celular', '3001110002'),
(3, 'Celular', '3001110003'),
(4, 'Celular', '3001110004'),
(5, 'Celular', '3001110005'),
(6, 'Celular', '3001110006'),
(7, 'Celular', '3001110007'),
(8, 'Celular', '3001110008'),
(9, 'Celular', '3001110009'),
(10, 'Celular', '3001110010'),
(11, 'Fijo', '3001110011'),
(12, 'Fijo', '3001110012'),
(13, 'Fijo', '3001110013'),
(14, 'Fijo', '3001110014'),
(15, 'Fijo', '3001110015'),
(16, 'Fijo', '3001110016'),
(17, 'Fijo', '3001110017'),
(18, 'Fijo', '3001110018'),
(19, 'Fijo', '3001110019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Jugador', 'Participante activo'),
(2, 'Entrenador', 'Lidera entrenamientos'),
(3, 'Administrador', 'Gestiona el sistema'),
(4, 'Arbitro', 'Supervisa sesiones'),
(5, 'Invitado', 'Acceso limitado'),
(6, 'Streamer', 'Crea contenido'),
(7, 'Analista', 'Evalúa estadísticas'),
(8, 'Manager', 'Coordina equipos'),
(9, 'Coach Mental', 'Apoyo emocional'),
(10, 'Jugador Pro', 'Nivel competitivo'),
(11, 'Organizador', 'Coordina eventos'),
(12, 'Soporte', 'Atención técnica'),
(13, 'Staff', 'Ayuda general'),
(14, 'Marketing', 'Publicidad'),
(15, 'Comunicador', 'Manejo de redes'),
(16, 'Tester', 'Prueba videojuegos'),
(17, 'Desarrollador', 'Crea software'),
(18, 'Diseñador', 'Arte y diseño'),
(19, 'Creador', 'Contenido multimedia'),
(20, 'Director', 'Máxima autoridad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `tipo_documento` varchar(45) NOT NULL,
  `numero_documento` varchar(45) NOT NULL,
  `primer_nombre` varchar(45) NOT NULL,
  `primer_apellidos` varchar(45) NOT NULL,
  `segundo_nombre` varchar(45) DEFAULT NULL,
  `segundo_apellido` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) NOT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `direccion_domicilio` varchar(45) NOT NULL,
  `nickname` varchar(45) DEFAULT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `acudiente` int(11) DEFAULT NULL,
  `id_comuna_barrio` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_equipo_juego` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `tipo_documento`, `numero_documento`, `primer_nombre`, `primer_apellidos`, `segundo_nombre`, `segundo_apellido`, `fecha_nacimiento`, `sexo`, `direccion_domicilio`, `nickname`, `clave`, `acudiente`, `id_comuna_barrio`, `id_tipo`, `id_equipo_juego`) VALUES
(21, 'CC', '1234567890', 'Carlos', 'Mendoza', 'Alberto', 'Silva', '1988-03-15', 'm', 'Calle 45 #12-34', 'CarlosM', 'pass123', NULL, 1, 1, 1),
(22, 'CC', '9876543210', 'Lucia', 'Rodriguez', 'Maria', 'Fernandez', '1992-07-22', 'f', 'Carrera 80 #25-10', 'LuciRF', 'pass456', NULL, 2, 2, 2),
(23, 'TI', '5551234567', 'Miguel', 'Santos', 'Jose', 'Perez', '2005-11-08', 'm', 'Avenida 68 #40-15', 'MiguelS', 'pass789', NULL, 3, 3, 3),
(24, 'CE', '4567891230', 'Sofia', 'Martinez', 'Carolina', 'Lopez', '1995-04-30', 'f', 'Calle 100 #18-22', 'SofiMC', 'pass321', NULL, 4, 4, 4),
(25, 'CC', '3216549870', 'Roberto', 'Diaz', 'Fernando', 'Morales', '1990-09-12', 'm', 'Carrera 7 #32-45', 'RobertoD', 'pass654', NULL, 5, 5, 5),
(26, 'CC', '7418529630', 'Valentina', 'Castro', 'Andrea', 'Ruiz', '1997-01-25', 'f', 'Calle 26 #50-33', 'ValeCR', 'pass987', NULL, 6, 6, 6),
(27, 'CC', '9517538426', 'Diego', 'Hernandez', 'Luis', 'Vargas', '1985-06-18', 'm', 'Carrera 15 #70-12', 'DiegoHL', 'pass147', NULL, 7, 7, 7),
(28, 'TI', '1472583690', 'Isabella', 'Ramirez', 'Juliana', 'Torres', '2006-12-03', 'f', 'Avenida 30 #88-20', 'IsaRT', 'pass258', NULL, 8, 8, 8),
(29, 'CC', '8529637410', 'Alejandro', 'Moreno', 'Pablo', 'Gonzalez', '1993-02-14', 'm', 'Calle 72 #15-40', 'AlejMG', 'pass369', NULL, 9, 9, 9),
(30, 'CE', '3691472580', 'Camila', 'Jimenez', 'Daniela', 'Suarez', '1999-08-07', 'f', 'Carrera 50 #22-18', 'CamiJS', 'pass741', NULL, 10, 10, 10),
(31, 'CC', '2583691470', 'Mateo', 'Rojas', 'Andres', 'Ortiz', '1991-10-20', 'm', 'Calle 85 #42-28', 'MateoRO', 'pass852', NULL, 11, 11, 11),
(32, 'CC', '1593574862', 'Ana', 'Navarro', 'Isabel', 'Cortes', '1994-05-16', 'f', 'Carrera 13 #65-30', 'AnaNC', 'pass963', NULL, 12, 12, 12),
(33, 'CC', '7539514826', 'Nicolas', 'Parra', 'Santiago', 'Medina', '1987-03-29', 'm', 'Avenida 19 #55-12', 'NicolasPM', 'pass159', NULL, 13, 13, 13),
(34, 'TI', '8526419730', 'Mariana', 'Gil', 'Alejandra', 'Rios', '2004-09-11', 'f', 'Calle 53 #38-25', 'MariGR', 'pass357', NULL, 14, 14, 14),
(35, 'CC', '4561237890', 'Fernando', 'Lara', 'Javier', 'Campos', '1989-12-05', 'm', 'Carrera 22 #77-19', 'FerLC', 'pass753', NULL, 15, 15, 15),
(36, 'CC', '6543217890', 'Patricia', 'Vega', 'Elena', 'Blanco', '1996-07-28', 'f', 'Calle 90 #30-40', 'PatriVB', 'pass951', NULL, 16, 16, 16),
(37, 'CE', '1237894560', 'Sergio', 'Montoya', 'Ricardo', 'Duarte', '1984-11-22', 'm', 'Carrera 40 #20-55', 'SergioMD', 'pass159', NULL, 17, 17, 17),
(38, 'CC', '9874561230', 'Daniela', 'Acosta', 'Paola', 'Muñoz', '2000-02-17', 'f', 'Avenida 68 #45-33', 'DaniAM', 'pass753', NULL, 18, 18, 18),
(39, 'CC', '3217896540', 'Gustavo', 'Salazar', 'Enrique', 'Prado', '1986-04-09', 'm', 'Calle 63 #28-10', 'GustavoSP', 'pass852', NULL, 19, 19, 19),
(40, 'CC', '6549873210', 'Andrea', 'Beltran', 'Cristina', 'Soto', '1998-10-31', 'f', 'Carrera 9 #82-44', 'AndrBS', 'pass741', NULL, 20, 20, 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comuna_barrio`
--
ALTER TABLE `comuna_barrio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consola`
--
ALTER TABLE `consola`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_consola` (`id_consola`);

--
-- Indices de la tabla `equipo_juego`
--
ALTER TABLE `equipo_juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_juego` (`id_juego`);

--
-- Indices de la tabla `juego`
--
ALTER TABLE `juego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plataforma_id` (`plataforma_id`);

--
-- Indices de la tabla `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_juego` (`id_juego`);

--
-- Indices de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_juego` (`id_juego`),
  ADD KEY `id_arbitro` (`id_arbitro`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_comuna_barrio` (`id_comuna_barrio`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_equipo_juego` (`id_equipo_juego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comuna_barrio`
--
ALTER TABLE `comuna_barrio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `consola`
--
ALTER TABLE `consola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `control`
--
ALTER TABLE `control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `equipo_juego`
--
ALTER TABLE `equipo_juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `juego`
--
ALTER TABLE `juego`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `plataforma`
--
ALTER TABLE `plataforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `control`
--
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`id_consola`) REFERENCES `consola` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo_juego`
--
ALTER TABLE `equipo_juego`
  ADD CONSTRAINT `equipo_juego_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `juego`
--
ALTER TABLE `juego`
  ADD CONSTRAINT `juego_ibfk_1` FOREIGN KEY (`plataforma_id`) REFERENCES `plataforma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `logro_trofeo`
--
ALTER TABLE `logro_trofeo`
  ADD CONSTRAINT `logro_trofeo_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesion_entrenamiento`
--
ALTER TABLE `sesion_entrenamiento`
  ADD CONSTRAINT `sesion_entrenamiento_ibfk_1` FOREIGN KEY (`id_juego`) REFERENCES `juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sesion_entrenamiento_ibfk_2` FOREIGN KEY (`id_arbitro`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_comuna_barrio`) REFERENCES `comuna_barrio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`id_equipo_juego`) REFERENCES `equipo_juego` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
