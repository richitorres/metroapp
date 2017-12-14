-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2017 a las 05:37:32
-- Versión del servidor: 5.7.14
-- Versión de PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_cliente` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bebida` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'whisky',
  `edad` int(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `codigo_cliente`, `email`, `telefono`, `facebook`, `bebida`, `edad`, `fecha_nacimiento`, `created_at`, `updated_at`) VALUES
(1, 'Luis', 'Velazco', 'LuiVel0X3W74Q', 'Luigiveari@hotmail.com', '9871143230', 'luigi', 'Whisky', 22, '1987-03-12', '2017-11-20 23:27:22', '2017-11-20 23:27:22'),
(2, 'Moshe', 'Etzioni', 'MosEtzQ10gdOW', 'metzioni@gmail.com', '9878715620', 'Moshe', 'Vodka', 26, '2017-11-20', '2017-11-21 00:13:11', '2017-11-21 00:13:11'),
(3, 'Samuel', 'Garcia', 'SamGardmjTvOe', 'davilasam10@gmail.com', '9878715625', 'Samuel', 'Ron', 30, '2017-11-20', '2017-11-21 00:15:13', '2017-11-21 00:15:13'),
(4, 'Miguel', 'Lavalle', 'MigLav8G8tetE', 'mikerula@yahoo.com', '9878715624', 'Miguel', 'Ron', 24, '2017-11-20', '2017-11-21 00:17:33', '2017-11-21 00:17:33'),
(5, 'Matias', 'Garrido', 'MatGarug4efQe', 'matias_garrido@hotmail.com', '9878715623', 'MAtias', 'Ron', 23, '2017-11-20', '2017-11-21 00:18:53', '2017-11-21 00:18:53'),
(6, 'Eduardo', 'Gonzalez', 'EduGonde39qou', 'Eglezcidczm@gmail.com', '9878715612', 'Eduardo', 'Ron', 28, '2017-11-20', '2017-11-21 00:20:24', '2017-11-21 00:20:24'),
(7, 'Zaida', 'Espinoza', 'ZaiEspyddeErE', 'Za1da_e@hotmail.com', '9878715645', 'Zaida', 'Ron', 28, '2017-11-20', '2017-11-21 00:21:15', '2017-11-21 00:21:15'),
(8, 'Mario', 'Guendulain', 'MarGueTbrbzl3', 'marinovich.com@hotmail.com', '9878715667', 'Mario', 'Ron', 24, '2017-11-20', '2017-11-21 00:22:18', '2017-11-21 00:22:18'),
(9, 'Alejandro', 'Briceño', 'AleBriMPRDTNX', 'abg@explora-tours.com', '9878715687', 'Alex', 'Ron', 28, '2017-11-20', '2017-11-21 00:23:28', '2017-11-21 00:23:28'),
(10, 'Benny', 'Campos', 'BenCam0w2lw6F', 'benny.campos@clubcorp.com', '9878715669', 'Benny', 'Ron', 27, '2017-11-20', '2017-11-21 00:24:40', '2017-11-21 00:24:40'),
(11, 'Volcan', 'Onay', 'VolOnaf2DhnSy', 'volkanonay@gmail.com', '9878714520', 'Volcan', 'Ron', 29, '2017-11-20', '2017-11-21 00:26:13', '2017-11-21 00:26:13'),
(12, 'Francisco', 'Morales', 'FraClaWYURhIr', 'panchito@loscincosoles.com', '9878711023', 'Francisco', 'Ron', 30, '2017-11-20', '2017-11-21 01:17:12', '2017-11-22 02:06:37'),
(13, 'Ana', 'Arana', 'AnaAra0nRmXO7', 'Ana.aranam@hotmail.com', '9878714528', 'Ana', 'Ron', 32, '2017-11-20', '2017-11-21 01:18:17', '2017-11-21 01:18:17'),
(14, 'Hector', 'Uribe', 'HecUriYbHH9FC', 'hectoruribe@urvisev.com', '9878711237', 'Hector', 'Ron', 26, '2017-11-20', '2017-11-21 01:19:14', '2017-11-22 01:55:58'),
(15, 'Jesus', 'Zetina', 'JesZetkdRFd1K', 'jazt30@hotmail.com', '9878711889', 'Jesus', 'Ron', 28, '2017-11-20', '2017-11-21 01:20:14', '2017-11-21 01:20:14'),
(16, 'Hugo', 'Gonzalez', 'HugGonW29PHyh', 'hugo@publiport.com', '9878718596', NULL, 'Ron', 28, '2017-11-20', '2017-11-21 01:21:22', '2017-11-21 01:21:22'),
(17, 'Javier', 'Aguirre', 'JavAgu20agHlY', 'arq_javier_aguirre@hotmail.com', '9878711257', 'fbfsdsds', 'Ron', 28, '2017-11-20', '2017-11-21 01:22:26', '2017-11-22 00:21:08'),
(18, 'Salvador', 'Martin', 'SalMarkFGzbhu', 'smartinm2004@yahoo.com.mx', '9878711147', NULL, 'Ron', 30, '2017-11-20', '2017-11-21 01:25:36', '2017-11-21 01:25:36'),
(19, 'Alejandra', 'Velasco', 'AleVel23oKZEk', 'Aleveari@hotmail.com', '9878711129', NULL, 'Ron', 27, '2017-11-20', '2017-11-21 01:26:36', '2017-11-21 01:26:36'),
(20, 'Linda', 'Gracia Harrison', 'LinGraTvdWUbr', 'lindagracia@yahoo.com', '9878714478', NULL, 'Ron', 27, '2017-11-20', '2017-11-21 01:27:23', '2017-11-21 01:27:23'),
(21, 'Lupita', 'Sauri', 'LupSauAg7y5WT', 'Lupisauri@hotmail.com', '9878712256', NULL, 'Ron', 25, '2017-11-20', '2017-11-21 01:28:22', '2017-11-21 01:28:22'),
(22, 'Geraldine', 'Sandoval', 'GerSanhNoCPyA', 'di.geraldinesandoval@gmail.com', '9878715569', NULL, 'Ron', 27, '2017-11-20', '2017-11-21 01:29:30', '2017-11-21 01:29:30'),
(23, 'Carlos', 'Gonzalez', 'CarGonTUI0MM7', 'amingonzalez@live.com.mx', '9878714986', NULL, 'Ron', 30, '2017-11-20', '2017-11-21 01:30:27', '2017-11-21 01:30:27'),
(24, 'Aurelio', 'Joaquin', 'AurJoaBU76Rl9', 'Grupocozumel@gmail.com', '9878712036', NULL, 'Ron', 31, '2017-11-20', '2017-11-21 01:31:39', '2017-11-21 01:31:39'),
(26, 'Raymundo', 'Yanez', 'RayYanNB7w3Qt', 'raycozumel@gmail.com', '9878718895', 'df', 'Ron', 30, '2017-11-21', '2017-11-22 01:59:23', '2017-11-22 01:59:23'),
(27, 'Yara', 'Diaz', 'YarDiak9eZ1HC', 'diazyara@gmail.com', '9878745620', 'yara', 'Ron', 30, '2017-11-23', '2017-11-23 21:00:52', '2017-11-23 21:00:52'),
(28, 'Gerardo', 'Soriano', 'GerSorjpYZHW4', 'gerardo.soriano@outlook.es', '9878778956', 'Gerardo', 'Ron', 33, '2017-11-23', '2017-11-23 21:02:36', '2017-11-23 21:02:36'),
(29, 'Chino', 'Enriquez Ibarra', 'ChiEnry1Bz3BR', 'mike.enriquez.ibarra@gmail.com', '9878723658', 'Chino', 'Ron', 29, '2017-11-23', '2017-11-23 21:04:02', '2017-11-23 21:04:02'),
(30, 'Samir', 'Gasca', 'SamGasAGjFHat', 'samir.pgr@hotmail.com', '9878735689', 'Samir', 'Ron', 29, '2017-11-23', '2017-11-23 21:06:36', '2017-11-23 21:06:36'),
(31, 'Balu', 'Arias', 'BalAriv0JWl65', 'ochobalu@gmail.com', '9878745126', 'Balu', 'Ron', 27, '2017-11-23', '2017-11-23 21:08:04', '2017-11-23 21:08:04'),
(32, 'Miguel', 'Castillo Oliva', 'MigCas4E4sFow', 'mcastillo@shopdi.com', '9878757842', 'Miguel', 'Ron', 30, '2017-11-23', '2017-11-23 21:09:13', '2017-11-23 21:09:13'),
(33, 'Adrian', 'Lozano Garza', 'AdrLozz62xCdy', 'Adrianlozanogarza@hotmail.com', '9878768956', 'Adrian', 'Ron', 32, '2017-11-23', '2017-11-23 21:11:26', '2017-11-23 21:11:26'),
(34, 'Manolo', 'Marrufo', 'ManMarBqbzxEe', 'Manolomarrufo@hotmail.com', '9878742059', 'Manolo', 'Ron', 28, '2017-11-23', '2017-11-23 21:13:21', '2017-11-23 21:13:21'),
(35, 'Rafael', 'Montero', 'RafMonQfqPvaO', 'rafael.montero65@gmail.com', '9878758423', 'Rafael', 'Ron', 27, '2017-11-23', '2017-11-23 21:15:40', '2017-11-23 21:15:40'),
(36, 'Cecilio', 'Borge', 'CecBorbpgq1T1', 'cborge88@gmail.com', '9878701520', 'Cecilio', 'Ron', 30, '2017-11-23', '2017-11-23 21:16:58', '2017-11-23 21:16:58'),
(37, 'Maria Fernanda', 'Sosa', 'MarSosnyNodwu', 'marifersosa@outlook.com', '9878705478', 'Mafer', 'Ron', 28, '2017-11-23', '2017-11-23 21:18:14', '2017-11-23 21:18:14'),
(38, 'Nassim', 'Joaquin', 'NasJoaR47Nox4', 'nassimjoaquin@hotmail.com', '9878725684', 'Nassim', 'Ron', 27, '2017-11-23', '2017-11-23 21:19:48', '2017-11-23 21:19:48'),
(39, 'Andrea', 'Cajun', 'AndCaj3sGB617', 'andreacajun0693@gmail.com', '9878747521', 'Andrea', 'Ron', 25, '2017-11-23', '2017-11-23 21:20:56', '2017-11-23 21:20:56'),
(40, 'Ana Lucia', 'Rodriguez', 'AnaRodqjxVLw0', 'analuciarguez@hotmail.com', '9878768952', 'Ana Lu', 'Ron', 28, '2017-11-23', '2017-11-23 21:22:45', '2017-11-23 21:22:45'),
(41, 'Uva', 'RGS', 'UvaRGSJl3RAmL', 'uvaarg@gmail.com', '9878798475', 'Uva', 'Ron', 25, '2017-11-23', '2017-11-23 21:25:18', '2017-11-23 21:25:18'),
(42, 'Amir', 'Mendoza', 'AmiMen66zZbn9', 'amen_amir@hotmail.com', '9878791350', 'Amir', 'Ron', 27, '2017-11-23', '2017-11-23 21:29:25', '2017-11-23 21:29:25'),
(43, 'Sua', 'Gar', 'SuaGarRNTFcO9', 'sualeika@hotmail.com', '1669854284', 'sua', 'Ron', 21, '2017-11-23', '2017-11-24 03:14:04', '2017-11-24 03:14:04'),
(44, 'Nazaret', 'Duarte Islas', 'NazDuaZ4w07rw', 'bonita_jvc@live.com.mx', '10554344243', NULL, 'Ron', 29, '2017-11-23', '2017-11-24 03:15:14', '2017-11-24 03:15:14'),
(45, 'Celinda', 'Cabanas', 'CelCab8oMUNE3', 'caraveo1308@hotmail.com', '34682621047', NULL, 'Ron', 29, '2017-11-23', '2017-11-24 03:15:57', '2017-11-24 03:15:57'),
(46, 'Ignacio', 'Rivera', 'IgnRivgGfJG01', 'irivera@park-royalhotels.com', '10748394577', NULL, 'Ron', 30, '2017-11-23', '2017-11-24 03:16:53', '2017-11-24 03:16:53'),
(47, 'Carlos Enrique', 'Puc Peralta', 'CarPucMLwjFBp', 'cpucperalta@gmail.com', '5273399734', 'pendiente', 'Ron', 28, '2017-11-23', '2017-11-24 03:17:58', '2017-11-24 03:17:58'),
(48, 'Chris', 'Dito', 'ChrDitYnNqlmq', 'tchrisdi@hotmail.com', '86243877910', 'pendiente', 'Ron', 20, '2017-11-23', '2017-11-24 03:18:35', '2017-11-24 03:18:35'),
(49, 'Sandra', 'Anahi', 'SanAnaXLcQRwW', 'sandritabonita2503@gmail.com', '32551045313', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:22:38', '2017-11-24 03:22:38'),
(50, 'Job Josue', 'Gonzalez', 'JobGonGnNPDq9', 'divewithj@hotmail.com', '3885982975', 'pendiente', 'Ron', 28, '2017-11-23', '2017-11-24 03:23:25', '2017-11-24 03:23:25'),
(51, 'Rei', 'Zhydan', 'ReiZhyy3wHnMC', 'zhydanybal@gmail.com', '10558949931', 'pendiente', 'Ron', 33, '2017-11-23', '2017-11-24 03:24:08', '2017-11-24 03:24:08'),
(52, 'Amaury', 'Ojeda', 'AmaOje3Y8agBZ', 'Amauu.94@hotmail.com', '5728155492', 'pendiente', 'Ron', 24, '2017-11-23', '2017-11-24 03:24:48', '2017-11-24 03:24:48'),
(53, 'Miguel Angel', 'Erosa', 'MigEroaYXG3eg', 'erosa_miguel@hotmail.com', '1772138515', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:26:02', '2017-11-24 03:26:02'),
(54, 'Doris', 'Gil', 'DorGil3PFerWl', 'dorisgiil@hotmail.com', '3682451544', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:26:34', '2017-11-24 03:26:34'),
(55, 'Oliver', 'Briceño', 'OliBri6HmSz9y', 'oliverbrieno@hotmail.com', '67325310249', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:27:14', '2017-11-24 03:27:14'),
(56, 'Antonio', 'Huerta Alvarez', 'AntHuemSFvnIA', 'antoniohuerta.a@gmail.com', '5386147815', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:28:18', '2017-11-24 03:28:18'),
(57, 'Sergio', 'Basurto', 'SerBasG1jJ1Tp', 'sbasurto@gmail.com', '41110469985', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:29:01', '2017-11-24 03:29:01'),
(58, 'Adder Yussef', 'Ceballos Aranda', 'AddCebt24cDFa', 'd4m3k_666@hotmail.com', '35274238107', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:30:55', '2017-11-24 03:30:55'),
(59, 'Oscar', 'Euan', 'OscEuapznhg7a', 'oscar_guild@hotmail.com', '2489255719', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:33:59', '2017-11-24 03:33:59'),
(60, 'Freyzaneth', 'Poot', 'FrePooZsCtnfW', 'freyzaneth_donaji_94@hotmail.com', '1357291726', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:34:45', '2017-11-24 03:34:45'),
(61, 'Oscar', 'Garcia', 'OscGarh4ko38U', 'oscargarbravo@live.com.mx', '81016581484', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:38:41', '2017-11-24 03:38:41'),
(62, 'Andrea', 'Cardeña', 'AndCarQLbJDSh', 'cardenamooandrea@gmail.com', '81239825107', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:39:44', '2017-11-24 03:39:44'),
(63, 'Ana Lau', 'Alvarez', 'AnaAlv0An3s4H', 'annaprincess4@hotmail.com', '1259195628', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:40:20', '2017-11-24 03:40:20'),
(64, 'Edy', 'Suarez', 'EdySuaAhVQset', 'edysuarezv@gmail.com', '10328125293', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:42:24', '2017-11-24 03:42:24'),
(65, 'Omar', 'Leon Quiñones', 'OmaLeogMuAV8O', 'osodeleon10@gmail.com', '55241088291', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:43:06', '2017-11-24 03:43:06'),
(66, 'Emma', 'Selva', 'EmmSelAjDnkoQ', 'emmaselva@hotmail.com', '3711079210810', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:44:01', '2017-11-24 03:44:01'),
(67, 'Claudio', 'Vivas', 'ClaVivWaBSHVX', 'claudio_vivas10@hotmail.com', '21651045697', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:45:04', '2017-11-24 03:45:04'),
(68, 'Oscar', 'Salinas Valenzuela', 'OscSaljnWTgc5', 'oscargsalinasv@gmail.com', '1873991597', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:46:48', '2017-11-24 03:46:48'),
(69, 'Mario', 'Martinez Rsendiz', 'MarMarojRHVyC', 'petrucci.666@hotmail.com', '9835139664', 'pendiente', 'Ron', 18, '2017-11-23', '2017-11-24 03:48:44', '2017-11-24 03:48:44'),
(70, 'Elias', 'Izzet Buces', 'EliIzz5lNr9f6', 'Elias_izzet@hotmail.com', '89105826986', 'pendiente', 'Ron', 21, '2017-11-25', '2017-11-26 02:42:25', '2017-11-26 02:42:25'),
(71, 'Angel', 'Pat', 'AngPatglgZboK', 'arquitecturarivieramx@gmail.com', '51815310991', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:44:11', '2017-11-26 02:44:11'),
(72, 'Manolo', 'Ventura', 'ManVenTiwxNdr', 'escoffie08@hotmail.com', '24681077289', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:46:09', '2017-11-26 02:46:09'),
(73, 'Leolpoldo', 'Cabieses C', 'LeoCabX9ZnSXf', 'cleopoldoweb@gmail.com', '61011025103910', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:49:07', '2017-11-26 02:49:07'),
(74, 'Juan Francisco', 'Hernandez Gomez', 'JuaHer2CF5E3f', 'jfhg_11@yahoo.com.mx', '77108594677', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:51:24', '2017-11-26 02:51:24'),
(75, 'Guillermo', 'Mora', 'GuiMor4Wvbj7P', 'lechefcozgmora@gmail.com', '56103537877', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:55:01', '2017-11-26 02:55:01'),
(76, 'Luis', 'Rendon', 'LuiRenppUlqsw', 'luis.rendon.jr@gmail.com', '16728610214', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:56:03', '2017-11-26 02:56:03'),
(77, 'Borja', 'Saura', 'BorSauVb2FTae', 'Borja_s@hotmail.com', '831089821910', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 02:58:15', '2017-11-26 02:58:15'),
(78, 'Luis', 'Siller', 'LuiSilA7kFZU9', 'contacto.luissiller@gmail.com', '7788318959', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:00:04', '2017-11-26 03:00:04'),
(79, 'Bella', 'Aguilar', 'BelAguq58A5C8', 'contact.bellaaguilera@gmail.com', '37499231610', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:03:40', '2017-11-26 03:03:40'),
(80, 'Christian', 'Sodi Islas', 'ChrSod7KMKI1i', 'chrisiansodi@hotmail.com', '3996913641', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:05:59', '2017-11-26 03:05:59'),
(81, 'Aurelio', 'Joaquin Gonzalez', 'AurJoajQYoHse', 'aureliojoaquinfacebook@gmail.com', '3957999425', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:06:50', '2017-11-26 03:06:50'),
(82, 'Mariano', 'Verduzco', 'MarVerMd3RGJz', 'vermuncote@yahoo.com', '521102109369', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:07:31', '2017-11-26 03:07:31'),
(83, 'Magui', 'Vazquez Barrios', 'MagVazsOzu8pA', 'vazquezbarrios@gmail.com', '42183325710', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:08:08', '2017-11-26 03:08:08'),
(84, 'Roberto', 'Pech Novelo', 'RobPecNta8Wyj', 'robertocozpn@hotmail.com', '11012108107310', 'pendiente', 'Ron', 27, '2017-11-25', '2017-11-26 03:09:35', '2017-11-26 03:09:35'),
(85, 'Virginia', 'SCC', 'VirSCC2T0yF7S', 'virsan.2874@gmail.com', '16754109485', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:10:19', '2017-11-26 03:10:19'),
(86, 'Ramon', 'Escalante Cozumel', 'RamEsc8PBNLUN', 'ramon@markt.mx', '154910597107', 'pendiente', 'Ron', 18, '2017-11-25', '2017-11-26 03:10:58', '2017-11-26 03:10:58'),
(87, 'Luis', 'Mex', 'LuiMexs9WyHKF', 'Luismex_a@hotmail.com', '91101242626', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:44:56', '2017-11-28 02:44:56'),
(88, 'Carlos', 'Basto', 'CarBasuRLaw2q', 'Carlosbasto_4@hotmail.com', '4463871362', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:45:42', '2017-11-28 02:45:42'),
(89, 'Carlos', 'Herrera', 'CarHerhCNslfg', 'dr.carlosherrera@hotmail.com', '994241010172', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:46:15', '2017-11-28 02:46:15'),
(90, 'Guillermo de', 'Lara', 'GuiLar2em0Wfs', 'guillenep@hotmail.com', '105266510894', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:48:29', '2017-11-28 02:48:29'),
(91, 'Sandra', 'Salinas Valenzuela', 'SanSal8lftfYB', 'sandrasalinas7788@yahoo.com.mx', '8741985471', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:51:03', '2017-11-28 02:51:03'),
(92, 'Maria Jose', 'Lopez Castillo', 'MarLopUp37Hfj', 'ninadulce0318@gmail.com', '1121741010410', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:51:41', '2017-11-28 02:51:41'),
(93, 'Shirley', 'Rodriguez', 'ShiRodalQXzNM', 'Shirley.rodriguez88@gmail.com', '978101043267', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:52:24', '2017-11-28 02:52:24'),
(94, 'Eva', 'Esqueda', 'EvaEsqIHxaNmv', 'Evangelinaesqueda3@gmail.com', '5239628925', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:53:02', '2017-11-28 02:53:02'),
(95, 'Maria Fernanda', 'Krempovich', 'MarKreAVWd8jf', 'fernandakrem@yahoo.com', '896538108710', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:53:46', '2017-11-28 02:53:46'),
(96, 'Ada', 'Alvarez', 'AdaAlvApGD8vf', 'adaba@hotmail.com', '72246985104', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:55:49', '2017-11-28 02:55:49'),
(97, 'Horacio', 'Iriarte', 'HorIriXN0Jx21', 'horacioiriarte@hotmail.com', '6712722657', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:56:26', '2017-11-28 02:56:26'),
(98, 'Isaac', 'Uribe', 'IsaUrimfR8RqH', 'issaacozu@gmail.com', '98109461277', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:57:10', '2017-11-28 02:57:10'),
(99, 'Daniel', 'Poot', 'DanPoorqTxxM0', 'daniel@front.com.mx', '15210678827', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:57:47', '2017-11-28 02:57:47'),
(100, 'Alejandra', 'Molina', 'AleMol2eYjaK9', 'alemolina73@icloud.com', '1010510931847', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:58:56', '2017-11-28 02:58:56'),
(101, 'Vjudith', 'Love', 'VjuLov2iBAEiM', 'Vjudith_280784@hotmail.com', '10577972812', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 02:59:31', '2017-11-28 02:59:31'),
(102, 'Luis Arturo', 'Aguilar Hernandez', 'LuiAguRSwJ5UM', 'laavanceczm@hotmail.com', '825108111012', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 03:00:33', '2017-11-28 03:00:33'),
(103, 'Octavio', 'Aguilar Vazquez', 'OctAguqRvrlfR', 'loctavius96@gmail.com', '339107104127', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 03:01:09', '2017-11-28 03:01:09'),
(104, 'Javier', 'Aguillar', 'JavAgulsSHPcO', 'Javier_5786@hotmail.com', '1613384952', 'pendiente', 'Ron', 18, '2017-11-27', '2017-11-28 03:03:10', '2017-11-28 03:03:10'),
(105, 'Mirelle Estephania', 'Narvaez Hoy', 'MirNar7QPBOmc', 'Mirellenarvaez@gmail.com', '78210657114', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:21:21', '2017-11-29 03:21:21'),
(106, 'Monserrat', 'Canul', 'MonCan1mlBEZC', 'Monserrat_canul@outlook.com', '21361085445', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:22:05', '2017-11-29 03:22:05'),
(107, 'Erick', 'Salinas', 'EriSal03pySlQ', 'ericksalinasm@gmail.com', '1911476524', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:22:44', '2017-11-29 03:22:44'),
(108, 'Salma', 'Martinez', 'SalMarYb60doq', 'atleta_salmita@hotmail.com', '96461069262', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:23:16', '2017-11-29 03:23:16'),
(109, 'Ale', 'Molina', 'AleMol79tUU6T', 'alemonlina73@icloud.com', '791022410662', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:23:37', '2017-11-29 03:23:37'),
(110, 'Abraham', 'Palma', 'AbrPalFAUDgSW', 'abrahamh.palma@gmail.com', '104197410576', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:24:15', '2017-11-29 03:24:15'),
(111, 'Beatriz', 'Perez Arias', 'BeaPer9NZ1pSD', 'beatrizarias1977@gmail.com', '9556629327', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:24:43', '2017-11-29 03:24:43'),
(112, 'Alex', 'Franco', 'AleFrauSA3cyw', 'alexfranco15@hotmail.com', '755844210104', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:25:08', '2017-11-29 03:25:08'),
(113, 'Mariana', 'Trejo', 'MarTreXvRLyeO', 'mariana_mtr@hotmail.com', '8107451010394', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:25:43', '2017-11-29 03:25:43'),
(114, 'Stephanita', 'Vargas', 'SteVarVAJQ6fQ', 'Linda_stephm@hotmail.com', '6797297467', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:26:23', '2017-11-29 03:26:23'),
(115, 'Ivette', 'Herrero Palma', 'IveHerWRgUykR', 'ivefavio23@yahoo.com', '81698184106', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:27:12', '2017-11-29 03:27:12'),
(116, 'Luis', 'Erives', 'LuiEriMG4KOLc', 'erident16@hotmail.com', '2161632248', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:27:57', '2017-11-29 03:27:57'),
(117, 'Geny', 'Canto', 'GenCan9ONjMad', 'genycozumel@gmail.com', '410781091635', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:29:25', '2017-11-29 03:29:25'),
(118, 'Luis', 'Rangel', 'LuiRantSG1j8J', 'luis@rmoceanfrontrentals.com', '102531108864', 'pendiente', 'Ron', 18, '2017-11-28', '2017-11-29 03:30:07', '2017-11-29 03:30:07'),
(119, 'Adrian', 'Cocom', 'AdrCoc2NXiR0t', 'Adriangrafico@hotmail.com', '31727106896', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:10:13', '2017-12-02 23:10:13'),
(120, 'Jesus', 'Fuentes', 'JesFueOLOr2i0', 'smile_clinique@hotmail.com', '310747810727', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:11:39', '2017-12-02 23:11:39'),
(121, 'Isis', 'Garcia', 'IsiGarG7zAh1c', 'Salflaka@hotmail.com', '44117410594', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:12:11', '2017-12-02 23:12:11'),
(122, 'Anahi', 'Cardenas', 'AnaCarhAbgirB', 'Anycar_86@hotmail.com', '89276361084', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:12:35', '2017-12-02 23:12:35'),
(123, 'Aaron', 'Kuu', 'AarKuunlcJCGH', 'AaronKu88@gmail.com', '5278592939', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:13:05', '2017-12-02 23:13:05'),
(124, 'Eduardo', 'Vega', 'EduVegyAZgxmu', 'Laallitovegx@hotmail.com', '10641215787', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:13:48', '2017-12-02 23:13:48'),
(125, 'Cynthia', 'Leon', 'CynLeoMDyVyjf', 'Csl_86@hotmail.com', '2168328889', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:14:15', '2017-12-02 23:14:15'),
(126, 'Joyce', 'Medina', 'JoyMedusz3UOQ', 'Joyce_Medina@hotmail.com', '14725548510', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:15:14', '2017-12-02 23:15:14'),
(127, 'Sara', 'More', 'SarMor2ps7PIL', 'Sarita030191@hotmail.com', '3686555758', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:15:44', '2017-12-02 23:15:44'),
(128, 'Luis Arturo', 'Tun Rosado', 'LuiTunSu1y3C3', 'Pato_mega_floyd@hotmail.com', '4454138875', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:16:25', '2017-12-02 23:16:25'),
(129, 'Israel', 'Herrera', 'IsrHerb8k3u5b', 'israaelherreraa@hotmail.com', '76107921825', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:17:00', '2017-12-02 23:17:00'),
(130, 'Maria Helena', 'Garces', 'MarGarIOojg0Z', 'Marielena.Garces@outlook.com', '9932438544', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:17:42', '2017-12-02 23:17:42'),
(131, 'Alex', 'Perez', 'AlePerhqoocpR', 'alexperlo_79@hotmail.com', '6138933236', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:18:15', '2017-12-02 23:18:15'),
(132, 'Jasibe', 'Silva', 'JasSilwEWHSJe', 'Jasibe.silva.marentes@gmail.com', '105888910882', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:18:46', '2017-12-02 23:18:46'),
(133, 'Fidel', 'Ladron de Guevara', 'FidLadNp20sBF', 'Fidelccc@gmail.com', '71092518189', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:20:49', '2017-12-02 23:20:49'),
(134, 'Edwina', 'Garcia', 'EdwGaruzqcork', 'Edwina.Garcia.al@gmail.com', '8652352937', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:21:38', '2017-12-02 23:21:38'),
(135, 'Bernardo', 'Alonso', 'BerAloKVViTOn', 'Bcalonchoczm@hotmail.com', '7267936587', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:22:07', '2017-12-02 23:22:07'),
(136, 'Arturo', 'Reyes', 'ArtReyNIhCNQ3', 'arturo.reyes@cuamoc.com.mx', '1895231614', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:22:40', '2017-12-02 23:22:40'),
(137, 'Lenny', 'Escalante Medina', 'LenEsc1LlkpEP', 'Lennyescalante47@gmail.com', '28996261014', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:23:27', '2017-12-02 23:23:27'),
(138, 'Arturo', 'Cirerol Nuñez', 'ArtCirQ7XnN1D', 'Arturocirerol21@gmail.com', '8945837519', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:24:04', '2017-12-02 23:24:04'),
(139, 'Carlos', 'Castro', 'CarCasAWr9yse', 'Chanxcastro@live.com.mx', '4578953954', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:25:25', '2017-12-02 23:25:25'),
(140, 'David', 'Molina', 'DavMoltR5I5C2', 'dqmolina@gmail.com', '2995732773', 'pendiente', 'Ron', 18, '2017-12-02', '2017-12-02 23:26:31', '2017-12-02 23:26:31'),
(141, 'Nancy', 'Panty', 'NanPanlLqgqOi', 'Camila24_456@hotmail.com', '6581012361010', 'pendiente', 'Ron', 18, '2017-12-05', '2017-12-05 23:12:14', '2017-12-05 23:12:14'),
(142, 'Karen', 'Panti', 'KarPan0ysxq8r', 'Karenpanti@hotmail.com', '6776915651', 'pendiente', 'Ron', 18, '2017-12-05', '2017-12-06 04:09:50', '2017-12-06 04:09:50'),
(143, 'Dair', 'Pinto Villanueva', 'DaiPinOS3HZch', 'Dairpinto9@hotmail.com', '22910236445', 'pendiente', 'Ron', 18, '2017-12-05', '2017-12-06 04:11:09', '2017-12-06 04:11:09'),
(144, 'Florina', 'Toledano', 'FloTolNMIiPoi', 'ftoledan@hotmail.com', '8852778686', 'pendiente', 'Ron', 18, '2017-12-05', '2017-12-06 04:11:46', '2017-12-06 04:11:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_16_175529_add_promociones', 1),
(4, '2017_11_16_175736_add_clientes', 1),
(5, '2017_11_16_181019_add_promo_clientes', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_promo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inicio` date NOT NULL,
  `fin` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promo_clientes`
--

CREATE TABLE `promo_clientes` (
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `id_promo` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_codigo_cliente_unique` (`codigo_cliente`),
  ADD UNIQUE KEY `clientes_email_unique` (`email`),
  ADD UNIQUE KEY `clientes_telefono_unique` (`telefono`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promociones_nombre_unique` (`nombre`),
  ADD UNIQUE KEY `promociones_codigo_promo_unique` (`codigo_promo`);

--
-- Indices de la tabla `promo_clientes`
--
ALTER TABLE `promo_clientes`
  ADD KEY `promo_clientes_id_cliente_foreign` (`id_cliente`),
  ADD KEY `promo_clientes_id_promo_foreign` (`id_promo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
