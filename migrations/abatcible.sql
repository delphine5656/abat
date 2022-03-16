
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `abatcible`
--

-- --------------------------------------------------------

--
-- Structure de la table `agent`
--

DROP TABLE IF EXISTS `agent`;
CREATE TABLE IF NOT EXISTS `agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` datetime NOT NULL,
  `code_authentification` int(11) NOT NULL,
  `nationality_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_268B9C9D1C9DA55` (`nationality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agent`
--

INSERT INTO `agent` (`id`, `firstname`, `lastname`, `date_naissance`, `code_authentification`, `nationality_id`) VALUES
(1, 'Shaw', 'Houldey', '1985-08-29 06:42:42', 41, 10),
(2, 'Ellwood', 'McKinlay', '1992-10-26 00:00:00', 78, 6),
(3, 'Feodor', 'Armit', '1997-01-28 09:24:05', 56, 3),
(4, 'Burr', 'Hourigan', '1998-06-13 00:54:48', 86, 5),
(5, 'Christiano', 'Gibbs', '1990-05-24 09:17:51', 61, 7),
(6, 'Bill', 'Cutsforth', '1982-08-09 09:06:01', 18, 6),
(7, 'Bonita', 'Runsey', '1989-01-07 21:41:20', 56, 4),
(8, 'Genny', 'Bridgement', '1992-04-17 04:40:35', 55, 13),
(9, 'Madelina', 'Barefoot', '0989-08-25 03:07:10', 96, 15),
(10, 'Junette', 'Fellgatt', '1996-11-02 03:14:02', 4, 16),
(11, 'Haywood', 'Stevenson', '1996-03-24 17:47:43', 68, 9),
(12, 'Aubert', 'Flisher', '1995-11-12 11:12:02', 4, 20),
(13, 'Aymer', 'Matiasek', '2000-03-09 18:05:07', 84, 3),
(14, 'Theobald', 'Biddy', '1999-06-18 05:47:10', 88, 7),
(15, 'Kaitlynn', 'O\'Corr', '1980-04-12 01:21:30', 83, 13),
(16, 'Kimberlee', 'Skilbeck', '1999-09-26 11:11:27', 99, 11),
(17, 'Georgina', 'Schruur', '1996-01-01 19:58:57', 50, 17),
(18, 'Jerrold', 'Gardener', '1993-08-29 16:45:29', 90, 3),
(19, 'Vitia', 'McCrann', '1981-07-09 00:50:12', 54, 8),
(20, 'Brion', 'Hayford', '1986-12-22 16:02:49', 37, 4),
(21, 'Florina', 'Makiver', '1984-10-24 21:14:04', 62, 17),
(22, 'Alexandra', 'Gulberg', '1990-08-06 12:36:08', 26, 7),
(23, 'Aile', 'Roddy', '1994-04-11 00:05:04', 15, 6),
(24, 'Loralie', 'Bourgour', '1987-12-06 09:21:31', 35, 12),
(25, 'Jane', 'Goldes', '1999-08-24 13:55:08', 37, 19),
(26, 'Haven', 'O Mullen', '1989-01-01 07:50:42', 29, 20),
(27, 'Analiese', 'Northall', '1981-07-19 08:49:26', 71, 4),
(28, 'Audre', 'Fandrey', '1998-05-13 14:33:19', 90, 10),
(29, 'Tanitansy', 'Nazareth', '1994-06-02 23:48:51', 82, 14),
(30, 'Burg', 'Garraway', '1998-01-31 04:27:11', 27, 19),
(31, 'Trueman', 'Wraxall', '1993-08-29 00:01:29', 42, 2),
(32, 'Ursulina', 'Shrieves', '1981-02-15 04:47:14', 49, 13),
(33, 'Ellyn', 'Carpe', '1995-03-02 05:56:52', 60, 5),
(34, 'Durand', 'Coldman', '1985-11-13 22:25:26', 29, 17),
(35, 'Anallise', 'Norsworthy', '1998-12-11 01:35:19', 79, 19),
(36, 'Hersh', 'Ladbury', '1988-12-03 15:52:37', 52, 13),
(37, 'Wendell', 'Farryan', '1994-11-23 16:45:15', 6, 16),
(38, 'Nikolas', 'Nerne', '1998-05-25 20:24:38', 23, 1),
(39, 'Humfrey', 'Giovanni', '1987-08-06 15:32:55', 71, 17),
(40, 'Giff', 'Bravey', '1985-12-06 13:28:30', 100, 9),
(41, 'Randolf', 'Ramshaw', '1985-09-17 10:02:04', 49, 16),
(42, 'Micheil', 'Nuzzetti', '1982-06-07 22:53:36', 20, 5),
(43, 'Timothee', 'Andrasch', '1997-07-27 04:54:13', 88, 10),
(44, 'Bennie', 'Natt', '1987-02-03 22:23:42', 44, 6),
(45, 'Sherry', 'Pridding', '1984-07-01 13:36:44', 11, 5),
(46, 'Adair', 'Misselbrook', '1998-04-17 16:02:40', 25, 19),
(47, 'Aeriell', 'Prince', '1994-06-18 06:49:00', 39, 2),
(48, 'Agatha', 'Pedican', '1991-11-05 05:51:11', 85, 11),
(49, 'Wren', 'Abercrombie', '1996-07-14 23:19:02', 78, 1),
(50, 'Kania', 'Grishukov', '1982-06-14 01:55:57', 57, 2);

-- --------------------------------------------------------

--
-- Structure de la table `agent_speciality`
--

DROP TABLE IF EXISTS `agent_speciality`;
CREATE TABLE IF NOT EXISTS `agent_speciality` (
  `agent_id` int(11) NOT NULL,
  `speciality_id` int(11) NOT NULL,
  PRIMARY KEY (`agent_id`,`speciality_id`),
  KEY `IDX_829171813414710B` (`agent_id`),
  KEY `IDX_829171813B5A08D7` (`speciality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agent_speciality`
--

INSERT INTO `agent_speciality` (`agent_id`, `speciality_id`) VALUES
(2, 2),
(2, 6);

-- --------------------------------------------------------

--
-- Structure de la table `cible`
--

DROP TABLE IF EXISTS `cible`;
CREATE TABLE IF NOT EXISTS `cible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` datetime NOT NULL,
  `name_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E15DEC3B1C9DA55` (`nationality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cible`
--

INSERT INTO `cible` (`id`, `firstname`, `lastname`, `date_naissance`, `name_code`, `nationality_id`) VALUES
(1, 'Bil', 'Dicte', '1984-02-19 19:41:00', 'Wood', 28),
(2, 'Angelica', 'Philbrook', '1986-04-06 18:51:47', 'Plastic', 19),
(3, 'Roda', 'Ende', '1999-04-14 09:44:19', 'Vinyl', 1),
(4, 'Sax', 'Yurshev', '1986-06-08 18:41:40', 'Glass', 23),
(5, 'Dalia', 'Bartosinski', '1999-09-27 20:06:19', 'Plastic', 41),
(6, 'Laurene', 'De Carlo', '1983-07-31 13:00:22', 'Granite', 6),
(7, 'Blake', 'Ruusa', '1993-01-18 06:36:59', 'Brass', 14),
(8, 'Marsh', 'Ewins', '1984-09-12 21:37:22', 'Rubber', 5),
(9, 'Chrissy', 'Dracey', '1993-03-17 14:01:55', 'Vinyl', 22),
(10, 'Helaina', 'Avramow', '1987-03-16 01:38:08', 'Granite', 17),
(11, 'Lani', 'Wincer', '1998-08-10 13:33:10', 'Wood', 6),
(12, 'Blondy', 'Bartoshevich', '1985-08-26 20:12:08', 'Wood', 38),
(13, 'Maurita', 'Shovelbottom', '1998-01-05 05:36:59', 'Wood', 31),
(14, 'Kirbie', 'Brailey', '1996-10-10 23:43:13', 'Plastic', 5),
(15, 'Adrianna', 'Sidry', '1997-09-26 21:28:14', 'Stone', 15),
(16, 'Tarrance', 'Nutbeam', '1998-07-18 12:23:22', 'Stone', 3),
(17, 'Ulrick', 'Briscoe', '1992-08-22 20:46:35', 'Aluminum', 33),
(18, 'Marget', 'McGaughey', '1982-02-02 23:00:08', 'Stone', 8),
(19, 'Ursulina', 'Wagenen', '1984-08-15 16:56:25', 'Aluminum', 15),
(20, 'Vincents', 'Wolpert', '1988-04-01 05:42:42', 'Plexiglass', 39),
(21, 'Bev', 'Lorne', '1981-08-21 11:15:44', 'Glass', 1),
(22, 'Robbie', 'Beefon', '1999-05-03 21:48:04', 'Wood', 21),
(23, 'Jacob', 'Coweuppe', '1981-01-01 12:34:14', 'Brass', 12),
(24, 'Kenyon', 'Conrard', '1999-12-17 10:51:19', 'Wood', 15),
(25, 'Ferne', 'Corradi', '1996-12-16 01:50:37', 'Aluminum', 34),
(26, 'Haywood', 'Redbourn', '1991-03-05 22:46:15', 'Aluminum', 41),
(27, 'Kissee', 'Daymont', '1997-06-28 17:38:23', 'Plastic', 19),
(28, 'Adlai', 'Vossing', '1983-12-09 15:04:26', 'Granite', 15),
(29, 'Mariejeanne', 'Milsted', '1998-04-18 04:57:21', 'Wood', 19),
(30, 'Byram', 'Risely', '1986-08-19 22:44:29', 'Brass', 12),
(31, 'Mikel', 'Caught', '1980-05-15 22:41:32', 'Wood', 21),
(32, 'Jonas', 'Wearn', '1984-11-21 11:28:35', 'Steel', 20),
(33, 'Alec', 'Sabberton', '1980-10-03 02:37:29', 'Granite', 21),
(34, 'Frederick', 'McRamsey', '1982-04-22 14:44:43', 'Vinyl', 16),
(35, 'Gilligan', 'McDaid', '1987-02-17 22:17:06', 'Granite', 17),
(36, 'Giacinta', 'Godman', '1986-04-24 03:46:50', 'Plexiglass', 4),
(37, 'Dasya', 'De la Yglesias', '1992-02-14 16:00:01', 'Rubber', 20),
(38, 'Julieta', 'Fidock', '1989-07-11 12:20:21', 'Plexiglass', 34),
(39, 'Tailor', 'Bennough', '1991-10-08 11:43:03', 'Rubber', 27),
(40, 'Allison', 'Housaman', '1981-08-06 21:50:02', 'Steel', 30),
(41, 'Elfrida', 'Rosendall', '1985-04-06 07:06:32', 'Wood', 5),
(42, 'Baxter', 'Faithfull', '1994-06-28 13:16:35', 'Glass', 6),
(43, 'Rice', 'Shanley', '1997-03-31 22:40:56', 'Plexiglass', 27),
(44, 'Lilian', 'Halbeard', '1994-02-19 15:02:15', 'Brass', 5),
(45, 'Coreen', 'Pelham', '1982-10-26 12:36:42', 'Granite', 25),
(46, 'Lucien', 'McOnie', '1998-10-15 18:34:11', 'Wood', 9),
(47, 'Essa', 'Luetkemeyers', '1984-03-06 07:56:54', 'Granite', 21),
(48, 'Carr', 'Joblin', '1989-05-05 00:22:08', 'Wood', 32),
(49, 'Schuyler', 'Crowd', '1989-07-23 17:54:48', 'Aluminum', 36),
(50, 'Oliviero', 'Sarney', '1996-08-28 20:54:46', 'Aluminum', 8),
(51, 'Luelle', 'Maxstead', '1982-02-18 15:30:33', 'Rubber', 19),
(52, 'Trueman', 'Siuda', '1996-02-16 05:08:54', 'Rubber', 32),
(53, 'Salvidor', 'Josilevich', '1996-10-07 09:02:26', 'Glass', 25),
(54, 'Weber', 'Gilks', '1991-03-08 15:32:54', 'Glass', 19),
(55, 'Eryn', 'Union', '1985-07-28 16:42:37', 'Aluminum', 26),
(56, 'Erroll', 'Danilenko', '1999-07-19 19:30:53', 'Granite', 19),
(57, 'Orren', 'Causey', '1994-05-01 18:33:06', 'Vinyl', 21),
(58, 'Kele', 'Galle', '1991-12-12 06:53:59', 'Plastic', 2),
(59, 'Chrystal', 'Dod', '1990-12-25 15:48:03', 'Aluminum', 31),
(60, 'Inger', 'Narup', '1980-06-06 23:57:37', 'Wood', 17),
(61, 'Virgilio', 'Balme', '1997-12-07 17:37:48', 'Brass', 8),
(62, 'Perri', 'Alessandrelli', '1988-06-30 14:01:06', 'Steel', 4),
(63, 'Demetris', 'MacUchadair', '1993-02-09 00:42:03', 'Brass', 16),
(64, 'Aldo', 'Upson', '1997-08-09 16:44:48', 'Aluminum', 15),
(65, 'Boone', 'Alejandre', '1985-07-03 15:16:16', 'Rubber', 16),
(66, 'Carmella', 'Gurnett', '1997-01-03 06:25:55', 'Rubber', 12),
(67, 'Melissa', 'Gapper', '1995-03-12 22:25:29', 'Stone', 32),
(68, 'Norene', 'Geaney', '1985-10-31 14:01:38', 'Granite', 6),
(69, 'Laraine', 'Negri', '1989-09-11 09:21:05', 'Stone', 16),
(70, 'Jeannine', 'Telezhkin', '1998-07-05 22:55:42', 'Granite', 8),
(71, 'Winnah', 'Gookey', '1995-05-16 06:47:30', 'Plexiglass', 12),
(72, 'Terri', 'MacAndrew', '1993-01-02 13:24:46', 'Aluminum', 12),
(73, 'Aeriela', 'Toon', '1982-07-03 10:47:19', 'Granite', 39),
(74, 'Richmound', 'Prewer', '1988-08-07 13:33:48', 'Vinyl', 10),
(75, 'Maddy', 'MacIntosh', '1981-03-12 04:41:50', 'Granite', 38),
(76, 'Winna', 'Petry', '1982-09-15 19:57:19', 'Granite', 19),
(77, 'Hamnet', 'Bedson', '1999-04-12 04:47:59', 'Steel', 3),
(78, 'Phillida', 'Ninnis', '1991-11-21 11:33:29', 'Plastic', 34),
(79, 'Auroora', 'Ayer', '1993-01-11 11:02:38', 'Brass', 10),
(80, 'Hayward', 'Hinksen', '1989-10-07 08:09:06', 'Stone', 28),
(81, 'Ashley', 'Hirsch', '1989-05-18 11:29:15', 'Granite', 26),
(82, 'Glori', 'Boyes', '1999-06-13 04:58:44', 'Granite', 1),
(83, 'Hillary', 'Couttes', '1981-01-06 11:51:43', 'Rubber', 20),
(84, 'Jerrylee', 'Lowy', '1981-07-16 19:47:52', 'Wood', 7),
(85, 'Cynthea', 'Oseland', '1990-09-24 06:40:29', 'Steel', 40),
(86, 'Kailey', 'Kovnot', '1983-10-08 19:59:09', 'Wood', 32),
(87, 'Jocelin', 'Dran', '1986-05-15 14:33:35', 'Plastic', 32),
(88, 'Elizabet', 'Gluyas', '1993-12-21 01:15:08', 'Granite', 38),
(89, 'Rebekkah', 'Deeves', '1999-01-14 06:39:53', 'Plexiglass', 24),
(90, 'Rey', 'Masarrat', '1984-03-25 14:01:40', 'Brass', 11),
(91, 'Daniel', 'Grinstead', '1988-03-18 05:21:25', 'Rubber', 4),
(92, 'Baryram', 'Jansik', '1998-02-17 07:13:50', 'Plexiglass', 18),
(93, 'Kaine', 'Gittis', '1980-09-03 07:20:36', 'Steel', 33),
(94, 'Jessamine', 'Grigs', '1982-05-28 11:38:03', 'Granite', 37),
(95, 'Laurette', 'Pagram', '1984-08-17 06:52:07', 'Steel', 18),
(96, 'Dorise', 'Hartwright', '1986-11-30 12:39:45', 'Brass', 29),
(97, 'Mikol', 'Wikey', '1994-03-01 15:55:14', 'Steel', 41),
(98, 'Tresa', 'Walder', '1992-11-08 23:56:01', 'Steel', 11),
(99, 'Sabrina', 'De Goey', '1982-08-05 20:42:28', 'Vinyl', 22),
(100, 'Michel', 'Hechlin', '1987-03-06 21:49:48', 'Wood', 3);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` datetime NOT NULL,
  `nom_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C62E6381C9DA55` (`nationality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `lastname`, `date_naissance`, `nom_code`, `nationality_id`) VALUES
(1, 'Maddalena', 'Torresi', '1994-04-04 16:26:27', 'Equisetaceae', 16),
(2, 'Dona', 'Real', '1986-04-03 08:07:45', 'Lecideaceae', 27),
(3, 'Konrad', 'Spurling', '1990-10-09 10:06:19', 'Pottiaceae', 37),
(4, 'Booth', 'Gristwood', '1994-03-18 16:15:39', 'Poaceae', 40),
(5, 'Bastien', 'Bunten', '1991-11-28 16:19:18', 'Asteraceae', 24),
(6, 'Garrot', 'Greenard', '1992-03-13 19:28:32', 'Poaceae', 8),
(7, 'Wynne', 'Voaden', '1990-01-22 00:16:05', 'Eriocaulaceae', 40),
(8, 'Carolina', 'Hatwells', '1985-03-25 07:07:07', 'Fagaceae', 12),
(9, 'Shay', 'Belz', '1984-08-02 12:39:25', 'Asteraceae', 35),
(10, 'Bonni', 'Lauritzen', '1986-05-09 17:31:35', 'Pteridaceae', 10),
(11, 'Aarika', 'Gligorijevic', '1994-09-08 07:27:11', 'Onagraceae', 16),
(12, 'Elonore', 'Mulliner', '1989-10-07 01:45:14', 'Stereocaulaceae', 25),
(13, 'Omar', 'Leverton', '1996-05-22 07:59:53', 'Cyperaceae', 6),
(14, 'Barnett', 'Romain', '1994-03-19 00:03:07', 'Poaceae', 19),
(15, 'Adah', 'Horick', '1989-10-14 17:14:04', 'Rosaceae', 30),
(16, 'Cicily', 'Hawtrey', '1999-08-18 03:04:13', 'Orthotrichaceae', 19),
(17, 'Lambert', 'MacDermott', '1997-01-04 10:24:30', 'Fabaceae', 13),
(18, 'Matias', 'Stobart', '1985-07-19 23:46:01', 'Asteraceae', 40),
(19, 'Bailie', 'Pharo', '1997-11-07 06:37:37', 'Verrucariaceae', 3),
(20, 'Hatti', 'Darrel', '1999-06-01 15:22:18', 'Scrophulariaceae', 32),
(21, 'Abdul', 'Rameau', '1980-05-09 18:55:28', 'Clusiaceae', 19),
(22, 'Valaree', 'Barthram', '1999-05-01 21:47:26', 'Fabaceae', 8),
(23, 'Veronique', 'Nolan', '1983-06-13 20:18:07', 'Fabaceae', 37),
(24, 'Rani', 'Scroxton', '1997-10-28 05:58:03', 'Orchidaceae', 37),
(25, 'Lonnie', 'Crewe', '1995-12-14 06:08:31', 'Verbenaceae', 9),
(26, 'Stewart', 'Poupard', '1981-07-23 11:28:25', 'Brassicaceae', 16),
(27, 'Robinson', 'Craster', '1991-05-24 23:41:30', 'Dryopteridaceae', 4),
(28, 'Shaughn', 'Wastall', '1981-06-14 10:10:24', 'Stereocaulaceae', 13),
(29, 'Lana', 'Redgrave', '1993-04-18 20:59:44', 'Rhamnaceae', 21),
(30, 'Herman', 'Jagielski', '1990-03-07 10:52:26', 'Lecanoraceae', 12),
(31, 'Kahaleel', 'Dreakin', '1996-01-06 02:15:13', 'Zygophyllaceae', 31),
(32, 'Dalia', 'Twinterman', '1981-11-10 23:57:20', 'Brachytheciaceae', 4),
(33, 'Josie', 'Kik', '1985-12-22 21:17:15', 'Orchidaceae', 33),
(34, 'Dallas', 'Rosenbush', '1984-03-16 07:10:38', 'Asteraceae', 18),
(35, 'Amabelle', 'Edyson', '1999-06-17 11:32:13', 'Nyctaginaceae', 26),
(36, 'Anet', 'Malia', '1981-08-03 05:01:48', 'Flacourtiaceae', 29),
(37, 'Erek', 'Tooher', '1989-03-16 07:15:23', 'Convolvulaceae', 8),
(38, 'Chloris', 'Spurden', '1996-07-31 13:15:34', 'Geraniaceae', 37),
(39, 'Clem', 'Duetschens', '1980-06-28 06:20:44', 'Lamiaceae', 5),
(40, 'Joyann', 'Laybourne', '1980-05-19 08:59:39', 'Brassicaceae', 25),
(41, 'Vivie', 'O\' Flaherty', '1998-02-17 19:38:21', 'Orobanchaceae', 9),
(42, 'Hew', 'Hamnett', '1987-08-01 14:45:26', 'Physciaceae', 19),
(43, 'Yvonne', 'Najafian', '1987-12-09 11:40:31', 'Fabaceae', 17),
(44, 'Bradford', 'Haversham', '1992-03-15 19:40:11', 'Fabaceae', 14),
(45, 'Brook', 'Becconsall', '1990-11-16 05:39:23', 'Lauraceae', 34),
(46, 'Derrick', 'Rydings', '2000-01-12 09:59:36', 'Hydrophyllaceae', 19),
(47, 'Jacky', 'Dunsmuir', '1990-07-05 14:04:13', 'Ranunculaceae', 30),
(48, 'Rutledge', 'Mc Elory', '1998-10-29 02:40:54', 'Solanaceae', 10),
(49, 'Myrtle', 'Fryer', '1998-01-09 05:24:55', 'Brassicaceae', 13),
(50, 'Grazia', 'Van Rembrandt', '1986-09-04 20:45:52', 'Polygonaceae', 1),
(51, 'Renato', 'Maysor', '1985-05-03 13:31:22', 'Physciaceae', 2),
(52, 'Kellsie', 'O\' Meara', '1999-04-30 19:47:44', 'Campanulaceae', 2),
(53, 'Ebba', 'Hanway', '1993-02-20 12:17:52', 'Asteraceae', 26),
(54, 'Richmound', 'Aberdein', '1980-07-12 01:29:40', 'Anacardiaceae', 8),
(55, 'Pablo', 'Greenrod', '1990-02-17 06:37:17', 'Gleicheniaceae', 20),
(56, 'Fawn', 'Whitbread', '1988-10-12 15:51:55', 'Verbenaceae', 5),
(57, 'Karlis', 'Lawee', '1982-02-13 15:55:27', 'Bryaceae', 34),
(58, 'Tamarah', 'Mico', '1988-07-03 14:31:43', 'Fabaceae', 12),
(59, 'Harli', 'Rossey', '1994-12-04 09:14:19', 'Asteraceae', 16),
(60, 'Symon', 'Whittington', '1985-09-30 11:29:52', 'Liliaceae', 33),
(61, 'Tatum', 'Simson', '1985-08-30 14:59:00', 'Scrophulariaceae', 12),
(62, 'Ekaterina', 'Holbury', '1994-07-05 06:47:16', 'Poaceae', 7),
(63, 'Wallie', 'Goldsberry', '1991-06-23 02:33:09', 'Cyperaceae', 7),
(64, 'Ethe', 'Wardesworth', '1985-11-18 02:31:26', 'Asteraceae', 35),
(65, 'Rory', 'Sydney', '1982-08-18 08:05:58', 'Lamiaceae', 26),
(66, 'Coleen', 'Ciccottio', '1996-11-13 04:43:39', 'Cactaceae', 17),
(67, 'Madalyn', 'Haig', '1997-03-16 00:58:21', 'Lemnaceae', 14),
(68, 'Robin', 'O\'Coskerry', '1993-09-19 23:14:25', 'Liliaceae', 40),
(69, 'Franky', 'Dwerryhouse', '1985-05-02 21:37:20', 'Fabaceae', 8),
(70, 'Charmane', 'Roskell', '1981-06-15 16:57:43', 'Onagraceae', 21),
(71, 'Lyndy', 'Shernock', '1983-03-07 05:11:48', 'Fabaceae', 10),
(72, 'Orelie', 'Hagwood', '1981-02-25 21:57:12', 'Asteraceae', 18),
(73, 'Olav', 'Heino', '1998-08-07 06:17:10', 'Apocynaceae', 34),
(74, 'Dal', 'Guinane', '1994-07-25 15:06:06', 'Brassicaceae', 17),
(75, 'Mercie', 'Ziemens', '1980-10-14 12:03:15', 'Juncaceae', 21),
(76, 'Melva', 'Ainsbury', '1990-08-25 06:32:16', 'Liliaceae', 40),
(77, 'Mattie', 'Heims', '1991-07-22 02:56:32', 'Myrtaceae', 14),
(78, 'Jarred', 'Livingstone', '1991-12-26 17:19:46', 'Lamiaceae', 40),
(79, 'Odo', 'Wennam', '1996-03-10 10:39:40', 'Verrucariaceae', 21),
(80, 'Marcela', 'Brockett', '1994-12-25 14:34:17', 'Lythraceae', 40),
(81, 'Gonzalo', 'Johns', '1985-12-26 21:21:23', 'Liliaceae', 3),
(82, 'Nichol', 'Haye', '1996-11-07 17:10:46', 'Sphagnaceae', 35),
(83, 'Addi', 'Antao', '1981-10-27 15:49:55', 'Asteraceae', 38),
(84, 'Klarika', 'Durram', '1988-03-12 13:44:43', 'Polemoniaceae', 36),
(85, 'Vilma', 'Burnitt', '1988-07-02 08:32:16', 'Fabaceae', 38),
(86, 'Honey', 'Brewse', '1997-02-23 11:34:28', 'Iridaceae', 18),
(87, 'Sophie', 'Pavis', '1990-03-01 19:10:41', 'Cyperaceae', 17),
(88, 'Bron', 'Tembridge', '1989-08-31 16:58:42', 'Fabaceae', 10),
(89, 'Casper', 'De Beauchemp', '1998-11-17 15:35:29', 'Scrophulariaceae', 22),
(90, 'Correy', 'Tedridge', '1982-09-07 01:39:07', 'Rosaceae', 19),
(91, 'Teodoro', 'Harvie', '1997-09-19 19:24:11', 'Cupressaceae', 15),
(92, 'Jacquelynn', 'Runacres', '1987-12-24 03:15:06', 'Euphorbiaceae', 6),
(93, 'Jonathon', 'Burghall', '1995-05-29 03:18:59', 'Polygonaceae', 40),
(94, 'Marsha', 'Kilmaster', '1980-03-21 15:40:13', 'Cyperaceae', 17),
(95, 'Mike', 'Artindale', '1996-08-02 03:11:30', 'Verrucariaceae', 41),
(96, 'Livia', 'Tradewell', '1981-01-31 17:04:04', 'Marattiaceae', 3),
(97, 'Annamarie', 'Whetton', '1996-03-06 06:53:11', 'Hydrophyllaceae', 1),
(98, 'Marj', 'Shutle', '1986-06-01 07:09:28', 'Caryophyllaceae', 28),
(99, 'Gale', 'Biesinger', '1981-12-06 02:49:22', 'Sabiaceae', 39),
(100, 'Margareta', 'Monelle', '1988-05-27 16:14:07', 'Brassicaceae', 28);

-- --------------------------------------------------------

--
-- Structure de la table `mission`
--

DROP TABLE IF EXISTS `mission`;
CREATE TABLE IF NOT EXISTS `mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `non_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `type_mission_id` int(11) NOT NULL,
  `statut_id` int(11) NOT NULL,
  `pays_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9067F23CA36F78B5` (`type_mission_id`),
  KEY `IDX_9067F23CF6203804` (`statut_id`),
  KEY `IDX_9067F23CA6E44244` (`pays_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission`
--

INSERT INTO `mission` (`id`, `non_code`, `titre`, `description`, `slug`, `date_debut`, `date_fin`, `type_mission_id`, `statut_id`, `pays_id`) VALUES
(1, 'Aesculos 30c', 'Senior Cost Accountant', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Natasha', '2024-03-29 00:00:00', '2024-06-11 00:00:00', 1, 1, 34),
(2, 'sodium phosphate', 'Assistant Manager', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 'Basilius', '2022-01-29 11:20:11', '2023-07-28 09:38:34', 2, 1, 20),
(3, 'Octinoxate and Titanium Dioxide', 'Environmental Specialist', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'Fairleigh', '2020-09-24 12:00:21', '2022-01-31 14:26:52', 6, 1, 33),
(4, 'clindamycin phosphate', 'Systems Administrator IV', 'Pellentesque at nulla. Suspendisse potenti.', 'Donn', '2020-12-27 04:25:41', '2024-02-22 07:27:01', 2, 2, 3),
(5, 'valsartan and hydrochlorothiazide', 'Accountant I', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'Hendrik', '2021-06-16 19:49:46', '2019-10-11 08:43:53', 5, 1, 26),
(6, 'Euphrasia Stricta, Aluminum Oxide, Arsenic Trioxide, Apis mellifera, Tribasic Calcium Phosphate, Delphinium Staphisagria Seeds, Sulphur, Calendula Officinalis Flowering Top', 'Clinical Specialist', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 'Dorothee', '2024-12-08 12:53:33', '2020-09-13 05:13:38', 4, 3, 6),
(7, 'Doxycycline', 'Speech Pathologist', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Martainn', '2021-10-25 22:50:50', '2021-01-29 06:29:16', 5, 1, 5),
(8, 'VANCOMYCIN HYDROCHLORIDE', 'Cost Accountant', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 'Bambi', '2018-12-12 21:04:01', '2023-08-31 15:30:04', 1, 3, 13),
(9, 'ACETAMINOPHEN', 'Office Assistant I', 'Curabitur at ipsum ac tellus semper interdum.', 'Bondie', '2020-08-26 15:46:42', '2019-12-05 14:41:40', 3, 1, 16),
(10, 'Salicylic Acid', 'Food Chemist', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'Dara', '2020-10-22 12:31:03', '2019-10-14 21:58:49', 5, 3, 19),
(11, 'Sertraline Hydrochloride', 'Health Coach II', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Essa', '2020-11-27 07:51:13', '2020-02-29 00:57:00', 2, 2, 25),
(12, 'Zinc Oxide, Titanium Dioxide', 'Geologist IV', 'Maecenas ut massa quis augue luctus tincidunt.', 'Perle', '2024-12-01 13:37:32', '2020-11-02 09:20:15', 4, 2, 24),
(13, 'Triclosan', 'Engineer III', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 'Cherilynn', '2020-03-17 20:15:08', '2023-11-20 08:42:40', 4, 3, 16),
(14, 'Carvedilol', 'Director of Sales', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 'Gabbie', '2024-02-16 03:14:36', '2022-08-12 22:56:00', 5, 4, 22),
(15, 'ziprasidone hydrochloride', 'Structural Analysis Engineer', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 'Constanta', '2021-01-10 16:34:56', '2023-06-13 09:47:34', 6, 2, 19),
(16, 'Ibuprofen', 'Director of Sales', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 'Cammy', '2018-05-29 13:51:02', '2024-08-01 02:21:31', 2, 4, 15),
(17, 'Isoniazid', 'Account Coordinator', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 'Aristotle', '2022-09-02 11:05:20', '2019-12-10 23:31:10', 6, 4, 40),
(18, 'ALENDRONATE SODIUM', 'Actuary', 'Sed ante.', 'Muffin', '2019-06-05 18:36:02', '2022-05-25 12:36:48', 5, 4, 41),
(19, 'Hydralazine hydrochloride and Isosorbide dinitrate', 'Biostatistician IV', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 'Connie', '2019-05-06 13:14:42', '2022-01-10 17:32:04', 6, 1, 31),
(20, 'Buckwheat Grain', 'Staff Accountant I', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Bennie', '2019-04-30 21:58:00', '2024-10-24 08:48:30', 1, 2, 26),
(21, 'Sodium Fluoride', 'VP Product Management', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'Joceline', '2023-09-02 02:26:59', '2022-02-08 13:42:24', 3, 2, 4),
(22, 'Carvedilol', 'Analyst Programmer', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 'Brandy', '2023-03-08 12:26:10', '2020-02-17 12:24:31', 2, 2, 17),
(23, 'Olanzapine', 'Pharmacist', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 'Danit', '2020-02-22 19:59:07', '2025-02-03 00:33:37', 2, 3, 30),
(24, 'Benazepril Hydrochloride', 'Human Resources Manager', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Charity', '2018-08-09 03:38:17', '2022-10-07 22:39:01', 6, 1, 4),
(26, 'Hydrochlorothiazide', 'Budget/Accounting Analyst I', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 'Cate', '2019-05-31 06:18:37', '2020-10-07 06:55:40', 1, 2, 36),
(27, 'Amitriptyline Hydrochloride', 'Account Representative I', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Kingsley', '2021-02-19 16:40:09', '2024-05-04 08:22:07', 1, 1, 20),
(28, 'Sulfamethoxazole', 'Director of Sales', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'George', '2020-07-21 05:30:41', '2021-07-19 10:40:22', 2, 1, 5),
(29, 'Levothyroxine Sodium', 'Human Resources Manager', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 'Klemens', '2021-12-22 15:04:35', '2019-12-23 09:42:13', 2, 3, 23),
(30, 'HYDROCODONE, ACETAMINOPHEN, .GAMMA.-AMINOBUTYRIC ACID', 'Budget/Accounting Analyst IV', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.', 'Cammie', '2022-10-08 18:07:48', '2019-04-17 07:44:50', 3, 2, 10),
(31, 'benztropine mesylate', 'Teacher', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 'Darryl', '2019-06-08 01:23:36', '2024-09-16 11:43:21', 6, 2, 21),
(32, 'Benzalkonium chloride', 'Assistant Manager', 'Duis aliquam convallis nunc.', 'Deane', '2023-02-27 08:48:23', '2020-02-24 02:33:14', 5, 4, 13),
(33, 'ENALAPRIL MALEATE', 'Sales Associate', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 'Joana', '2021-03-28 07:50:07', '2019-09-08 03:22:41', 4, 4, 10),
(34, 'butalbital, acetaminophen and caffeine', 'Human Resources Manager', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 'Angus', '2024-05-29 06:02:05', '2021-03-20 17:42:28', 2, 4, 5),
(35, 'TOLNAFTATE', 'Graphic Designer', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor.', 'Prescott', '2020-05-26 09:26:42', '2022-11-05 12:46:07', 6, 4, 5),
(36, 'Leucine, Phenylalanine, Lysine, Methionine, Isoleucine, Valine, Histidine, Threonine, Tryptophan, Alanine, Glycine, Arginine, Proline, Serine, Tyrosine, Sodium Acetate, Dibasic Potassium Phosphate, Ma', 'Civil Engineer', 'Aliquam sit amet diam in magna bibendum imperdiet.', 'Tildi', '2023-01-10 05:20:29', '2020-01-30 09:51:04', 6, 4, 7),
(37, 'Labetalol HCl', 'Editor', 'Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 'Augusta', '2023-11-05 22:55:27', '2024-08-25 23:30:03', 6, 3, 10),
(38, 'dextromethorphan hydrobromide and phenylephrine hydrochloride and pyrilamine maleate', 'Design Engineer', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'Madelina', '2020-05-21 19:06:08', '2024-03-04 06:31:40', 4, 3, 24),
(39, 'Quetiapine fumarate', 'Recruiting Manager', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus.', 'Abran', '2019-01-03 05:04:58', '2023-04-25 17:09:07', 1, 2, 25),
(40, 'Ailanthus', 'Payment Adjustment Coordinator', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 'Ollie', '2020-11-07 10:13:10', '2019-07-18 18:44:50', 2, 3, 16),
(41, 'Acetaminophen, Chlorpheniramine maleate, Dextromethorphan HBr, Phenylephrine HCl', 'Research Associate', 'Duis bibendum. Morbi non quam nec dui luctus rutrum.', 'Bale', '2019-08-21 22:41:37', '2021-05-20 00:58:44', 6, 2, 40),
(42, 'Yellow Dock', 'Assistant Manager', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 'Saul', '2022-04-04 17:47:48', '2025-01-11 20:44:42', 5, 4, 7),
(43, 'LIDOCAINE, MENTHOL', 'Marketing Assistant', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 'Belvia', '2024-05-04 22:57:18', '2023-12-28 05:32:29', 3, 4, 8),
(44, 'Sodium Fluoride', 'Mechanical Systems Engineer', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 'Maryanne', '2018-12-10 11:03:28', '2023-02-14 06:50:57', 3, 4, 29),
(45, 'Chlorzoxazone', 'Account Representative IV', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', 'Kali', '2024-05-12 04:57:47', '2024-06-14 13:04:23', 2, 4, 14),
(46, 'Arsenicum Album, Cocculus Indicus, Ipecacuanha, Kerosotum, Petroleum, Pulsatilla, Sanguinaria Canadensis, Tabacum', 'Senior Sales Associate', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 'Rachel', '2020-04-09 18:14:52', '2020-01-29 05:30:27', 5, 3, 6),
(47, 'Metformin Hydrochloride', 'Teacher', 'Pellentesque viverra pede ac diam.', 'Maurine', '2019-04-30 14:48:08', '2022-06-12 04:35:24', 5, 4, 9),
(48, 'Glimepiride', 'Health Coach I', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Karol', '2023-07-06 12:23:32', '2023-11-24 22:54:44', 2, 2, 34),
(49, 'eucalyptol, menthol, methyl salicylate, thymol', 'Structural Analysis Engineer', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 'Mahala', '2018-12-25 11:17:26', '2024-06-06 12:30:02', 5, 2, 12),
(50, 'Sodium Citrate', 'Electrical Engineer', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 'Leonhard', '2019-07-05 23:42:00', '2019-09-19 12:26:12', 1, 4, 19),
(51, 'Levofloxacin', 'Research Assistant I', 'Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', 'Berny', '2024-08-04 21:27:12', '2019-08-24 10:39:00', 3, 1, 39),
(52, 'levocetirizine dihydrochloride', 'Human Resources Manager', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.', 'Evin', '2020-11-03 11:18:58', '2023-04-03 23:15:18', 6, 2, 19),
(53, 'White Mulberry', 'Marketing Manager', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 'Merv', '2023-10-24 04:47:51', '2019-08-09 23:23:58', 1, 2, 32),
(54, 'Longleaf Pine', 'Marketing Assistant', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 'Gunilla', '2020-09-30 13:23:41', '2020-01-06 11:08:52', 1, 1, 37),
(55, 'Pramipexole Dihydrochloride', 'Structural Engineer', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', 'Bobbie', '2019-04-07 01:35:42', '2019-10-19 14:56:37', 6, 1, 13),
(56, 'BENZETHONIUM CHLORIDE', 'Nurse Practicioner', 'Curabitur in libero ut massa volutpat convallis.', 'Rebecka', '2019-10-12 20:48:15', '2019-09-02 23:51:28', 4, 4, 18),
(57, 'Duloxetine', 'Environmental Specialist', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.', 'Hinze', '2022-01-05 03:31:18', '2022-06-07 00:11:46', 6, 1, 22),
(58, 'LIDOCAINE HYDROCHLORIDE', 'Civil Engineer', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis.', 'Fannie', '2023-07-03 07:22:03', '2019-10-14 17:52:25', 1, 4, 12),
(59, 'Menthol', 'Legal Assistant', 'Duis ac nibh.', 'Halimeda', '2020-09-02 03:00:04', '2020-11-23 21:30:15', 6, 4, 26),
(60, 'Titanium Dioxide, Zinc Oxide', 'Editor', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Lishe', '2024-12-09 14:47:35', '2021-12-29 02:21:01', 5, 4, 28),
(61, 'BENZALKONIUM CHLORIDE', 'Sales Associate', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', 'Corella', '2023-01-27 20:46:51', '2023-11-03 03:52:37', 5, 1, 35),
(62, 'Dimethicone', 'Analyst Programmer', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue.', 'Sol', '2018-04-26 16:11:28', '2022-07-23 05:00:22', 1, 1, 14),
(63, 'Ceftazidime', 'Analog Circuit Design manager', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Lemmie', '2023-07-30 09:31:58', '2021-10-04 09:48:44', 5, 3, 40),
(64, 'ANTIPYRINE AND BENZOCAINE', 'Staff Scientist', 'Praesent blandit.', 'Lamond', '2019-07-31 14:50:29', '2019-12-06 12:41:15', 4, 3, 20),
(65, 'OCTINOXATE', 'Clinical Specialist', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 'Rice', '2018-09-27 10:13:07', '2021-04-20 13:27:03', 3, 3, 38),
(66, 'Ibuprofen', 'Data Coordiator', 'Sed accumsan felis.', 'Myrvyn', '2024-07-16 22:46:40', '2023-03-11 03:49:54', 6, 1, 14),
(67, 'Amlodipine Besylate', 'Quality Engineer', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.', 'Davide', '2018-04-24 05:35:46', '2024-12-12 16:30:52', 2, 2, 23),
(68, 'Mexican Tea', 'Assistant Media Planner', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 'Chauncey', '2020-08-17 20:50:28', '2021-11-17 07:42:47', 5, 2, 16),
(69, 'Fluconazole', 'VP Accounting', 'Etiam faucibus cursus urna. Ut tellus.', 'Michaella', '2019-09-27 18:56:38', '2025-02-27 06:31:33', 3, 2, 24),
(70, 'Promethazine Hydrochloride', 'Safety Technician IV', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 'Dorene', '2024-10-22 19:53:23', '2025-01-27 12:49:48', 1, 4, 7),
(71, 'Olanzapine', 'Assistant Media Planner', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.', 'Marcellus', '2019-10-30 17:56:00', '2020-05-31 07:23:43', 4, 4, 10),
(72, 'Dobutamine Hydrochloride', 'Structural Analysis Engineer', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Sanson', '2022-08-05 14:23:21', '2020-01-01 01:01:33', 1, 1, 28),
(73, 'Avobenzone, Homosalate, Octinoxate, Octocrylene', 'General Manager', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 'Reynold', '2024-03-13 18:14:36', '2022-04-30 20:49:38', 2, 3, 21),
(74, 'MILRINONE LACTATE', 'Director of Sales', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.', 'Bartholomew', '2023-03-18 03:35:47', '2020-04-05 09:41:10', 3, 3, 36),
(75, 'Ensulizole and Octinoxate', 'Cost Accountant', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 'Raimundo', '2022-07-28 21:38:07', '2023-06-09 09:15:43', 2, 3, 20),
(76, 'Ranitidine', 'Senior Developer', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 'Celestina', '2019-06-28 23:41:02', '2023-11-07 04:21:16', 5, 1, 39),
(77, 'Coumarinum,', 'Account Executive', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 'Thibaud', '2022-09-26 07:58:00', '2021-09-12 20:25:54', 3, 4, 32),
(79, 'Sennosides', 'Programmer II', 'Morbi non quam nec dui luctus rutrum.', 'Gwenny', '2021-03-21 22:42:00', '2019-05-11 19:06:37', 4, 2, 27),
(80, 'Naproxen', 'Accountant I', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 'Deana', '2021-10-19 19:13:44', '2020-10-27 03:13:45', 6, 2, 30),
(81, 'Minoxidil', 'Business Systems Development Analyst', 'Duis ac nibh.', 'Fremont', '2024-11-23 21:24:00', '2022-06-17 12:14:31', 5, 1, 22),
(82, 'Calc phos, Mag phos, Nux vom, Rhus tox', 'Media Manager IV', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', 'Phillida', '2024-07-30 13:41:59', '2025-03-02 00:44:52', 3, 2, 11),
(83, 'Allantoin Benzocaine Camphor', 'Research Assistant IV', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 'Angelle', '2018-04-01 11:56:26', '2020-08-25 03:56:19', 3, 1, 32),
(84, 'divalproex sodium', 'Electrical Engineer', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 'Ari', '2022-03-01 00:20:04', '2023-10-09 02:37:12', 6, 2, 5),
(85, 'clonazepam', 'Registered Nurse', 'Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 'Bernadette', '2024-11-28 11:41:16', '2024-02-08 00:09:44', 5, 1, 32),
(86, 'Benzoyl Peroxide', 'Office Assistant IV', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 'Laurie', '2020-07-24 20:12:14', '2024-03-21 09:37:59', 1, 4, 6),
(87, 'Zidovudine', 'Administrative Officer', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 'Lissie', '2021-03-19 06:14:56', '2024-11-19 03:51:24', 4, 3, 28),
(88, 'loxapine', 'Operator', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 'Octavius', '2023-10-11 06:11:13', '2019-09-06 12:31:15', 3, 2, 10),
(89, 'Citalopram', 'Media Manager IV', 'Cras pellentesque volutpat dui.', 'Keefe', '2021-03-25 01:10:55', '2021-08-20 04:23:44', 2, 2, 18),
(90, 'Ibuprofen', 'Senior Editor', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Ted', '2019-03-21 15:10:20', '2020-02-25 12:49:48', 2, 4, 25),
(91, 'metronidazole', 'Chief Design Engineer', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'Georgette', '2019-03-14 11:06:47', '2024-07-06 05:07:41', 5, 2, 40),
(92, 'Buspirone hydrochloride', 'Administrative Assistant III', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', 'Tani', '2023-09-07 14:20:19', '2020-08-22 10:30:51', 5, 1, 22),
(93, 'Flumazenil', 'Structural Analysis Engineer', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 'Sloane', '2021-04-23 00:33:48', '2019-05-31 16:43:42', 2, 1, 11),
(94, 'ARSENIC TRIOXIDE', 'Web Developer I', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', 'Melisenda', '2020-01-06 13:46:54', '2023-10-01 11:23:43', 4, 3, 29),
(95, 'OCTINOXATE, TITANIUM DIOXIDE', 'Occupational Therapist', 'Duis bibendum. Morbi non quam nec dui luctus rutrum.', 'Jephthah', '2024-03-06 21:36:31', '2024-11-17 09:25:23', 3, 1, 10),
(96, 'spironolactone', 'Geologist I', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 'Haven', '2024-07-29 17:43:29', '2023-09-07 14:38:12', 1, 3, 13),
(97, 'phenylephrine hydrochloride and witch hazel', 'Speech Pathologist', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Ingrim', '2022-11-01 19:37:38', '2023-01-23 16:03:36', 5, 4, 26),
(98, 'Mirtazapine', 'Assistant Professor', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.', 'Free', '2023-12-06 13:00:52', '2024-04-06 12:14:37', 5, 2, 16),
(99, 'Amitriptyline Hydrochloride', 'Desktop Support Technician', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', 'Thorpe', '2021-04-04 18:35:11', '2022-12-27 03:09:25', 1, 2, 18),
(100, 'Metformin Hydrochloride', 'Software Test Engineer II', 'Etiam faucibus cursus urna.', 'Katine', '2021-11-26 14:30:47', '2023-08-31 10:15:20', 2, 4, 33),
(101, 'Banana', 'Anti drogue', 'Recherche de dealer dans le métro parisien.', 'anti-drogue', '2022-03-14 00:00:00', '2022-05-14 00:00:00', 3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mission_agent`
--

DROP TABLE IF EXISTS `mission_agent`;
CREATE TABLE IF NOT EXISTS `mission_agent` (
  `mission_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  PRIMARY KEY (`mission_id`,`agent_id`),
  KEY `IDX_B61DC3A0BE6CAE90` (`mission_id`),
  KEY `IDX_B61DC3A03414710B` (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission_agent`
--

INSERT INTO `mission_agent` (`mission_id`, `agent_id`) VALUES
(1, 2),
(1, 5),
(1, 7),
(101, 2);

-- --------------------------------------------------------

--
-- Structure de la table `mission_cible`
--

DROP TABLE IF EXISTS `mission_cible`;
CREATE TABLE IF NOT EXISTS `mission_cible` (
  `mission_id` int(11) NOT NULL,
  `cible_id` int(11) NOT NULL,
  PRIMARY KEY (`mission_id`,`cible_id`),
  KEY `IDX_71CBB306BE6CAE90` (`mission_id`),
  KEY `IDX_71CBB306A96E5E09` (`cible_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission_cible`
--

INSERT INTO `mission_cible` (`mission_id`, `cible_id`) VALUES
(1, 2),
(1, 5),
(1, 8),
(101, 2);

-- --------------------------------------------------------

--
-- Structure de la table `mission_contact`
--

DROP TABLE IF EXISTS `mission_contact`;
CREATE TABLE IF NOT EXISTS `mission_contact` (
  `mission_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`mission_id`,`contact_id`),
  KEY `IDX_DD5E7275BE6CAE90` (`mission_id`),
  KEY `IDX_DD5E7275E7A1254A` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission_contact`
--

INSERT INTO `mission_contact` (`mission_id`, `contact_id`) VALUES
(1, 3),
(1, 6),
(1, 8),
(101, 50),
(101, 97);

-- --------------------------------------------------------

--
-- Structure de la table `mission_planque`
--

DROP TABLE IF EXISTS `mission_planque`;
CREATE TABLE IF NOT EXISTS `mission_planque` (
  `mission_id` int(11) NOT NULL,
  `planque_id` int(11) NOT NULL,
  PRIMARY KEY (`mission_id`,`planque_id`),
  KEY `IDX_DA0690F7BE6CAE90` (`mission_id`),
  KEY `IDX_DA0690F7CE8A20B` (`planque_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission_planque`
--

INSERT INTO `mission_planque` (`mission_id`, `planque_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(101, 138),
(101, 392),
(101, 401);

-- --------------------------------------------------------

--
-- Structure de la table `mission_speciality`
--

DROP TABLE IF EXISTS `mission_speciality`;
CREATE TABLE IF NOT EXISTS `mission_speciality` (
  `mission_id` int(11) NOT NULL,
  `speciality_id` int(11) NOT NULL,
  PRIMARY KEY (`mission_id`,`speciality_id`),
  KEY `IDX_B1D78D15BE6CAE90` (`mission_id`),
  KEY `IDX_B1D78D153B5A08D7` (`speciality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mission_speciality`
--

INSERT INTO `mission_speciality` (`mission_id`, `speciality_id`) VALUES
(1, 3),
(1, 4),
(101, 3),
(101, 4);

-- --------------------------------------------------------

--
-- Structure de la table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
CREATE TABLE IF NOT EXISTS `nationality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nationality`
--

INSERT INTO `nationality` (`id`, `name_nationality`) VALUES
(1, 'France'),
(2, 'Afghanistan'),
(3, 'Russie'),
(4, 'Espagne'),
(5, 'Maroc'),
(6, 'Myamar'),
(7, 'Philiines'),
(8, 'Australie'),
(9, 'Syria'),
(10, 'Latvia'),
(11, 'Thailand'),
(12, 'Argentine'),
(13, 'Indonesia'),
(14, 'Bulgaria'),
(15, 'China'),
(16, 'Angleterre'),
(17, 'Thailand'),
(18, 'Tahiti'),
(19, 'Chili'),
(20, 'Portugal'),
(21, 'Brésil'),
(22, 'Allemagne'),
(23, 'Italy'),
(24, 'Sweden'),
(25, 'Norvège'),
(26, 'Poland'),
(27, 'Japan'),
(28, 'Algérie'),
(29, 'Tanzania'),
(30, 'Canada'),
(31, 'Mali'),
(32, 'Lithuanie'),
(33, 'Suisse'),
(34, 'Nigeria'),
(35, 'Guyane'),
(36, 'Mexique'),
(37, 'Cuba'),
(38, 'Colombie'),
(39, 'United States'),
(40, 'Macedonia'),
(41, 'Egypt');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `name`) VALUES
(1, 'France'),
(2, 'Afghanistan'),
(3, 'Russie'),
(4, 'Espagne'),
(5, 'Maroc'),
(6, 'Myamar'),
(7, 'Philiines'),
(8, 'Australie'),
(9, 'Syria'),
(10, 'Latvia'),
(11, 'Thailand'),
(12, 'Argentine'),
(13, 'Indonesia'),
(14, 'Bulgaria'),
(15, 'China'),
(16, 'Angleterre'),
(17, 'Thailand'),
(18, 'Tahiti'),
(19, 'Chili'),
(20, 'Portugal'),
(21, 'Brésil'),
(22, 'Allemagne'),
(23, 'Italy'),
(24, 'Sweden'),
(25, 'Norvège'),
(26, 'Poland'),
(27, 'Japan'),
(28, 'Algérie'),
(29, 'Tanzania'),
(30, 'Canada'),
(31, 'Mali'),
(32, 'Lithuanie'),
(33, 'Suisse'),
(34, 'Nigeria'),
(35, 'Guyane'),
(36, 'Mexique'),
(37, 'Cuba'),
(38, 'Colombie'),
(39, 'United States'),
(40, 'Macedonia'),
(41, 'Egypt');

-- --------------------------------------------------------

--
-- Structure de la table `planque`
--

DROP TABLE IF EXISTS `planque`;
CREATE TABLE IF NOT EXISTS `planque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `adresse` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4B3A04BAA6E44244` (`pays_id`),
  KEY `IDX_4B3A04BAC54C8C93` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `planque`
--

INSERT INTO `planque` (`id`, `name`, `code`, `adresse`, `pays_id`, `type_id`) VALUES
(1, 'Jackal, indian', 83, '2 Drewry Pass', 32, 12),
(2, 'Caracara (unidentified)', 69, '74 Doe Crossing Circle', 34, 13),
(3, 'Mongoose, yellow', 96, '88 Starling Way', 35, 14),
(4, 'Long-crested hawk eagle', 11, '8209 Springs Pass', 24, 6),
(5, 'Mongoose, yellow', 31, '925 Garrison Place', 18, 5),
(6, 'Sociable weaver', 82, '3 Jenna Drive', 2, 3),
(7, 'Pig-tailed macaque', 96, '99945 Dunning Parkway', 12, 9),
(8, 'Goose, knob-nosed', 57, '1 Lotheville Drive', 28, 2),
(9, 'Brown pelican', 21, '6889 Melrose Pass', 28, 3),
(10, 'Stilt, black-winged', 7, '838 Maywood Center', 6, 1),
(11, 'Lapwing, southern', 28, '1 Pleasure Road', 9, 6),
(12, 'Beaver, american', 73, '4 Mandrake Court', 32, 14),
(13, 'Red-billed toucan', 12, '51353 Melvin Pass', 8, 5),
(14, 'Peccary, white-lipped', 66, '369 Evergreen Pass', 15, 7),
(15, 'Southern sea lion', 61, '37 Anderson Lane', 19, 13),
(16, 'Australian pelican', 41, '366 Buell Alley', 33, 14),
(17, 'Marmot, hoary', 49, '29353 Dryden Street', 12, 13),
(18, 'Paradoxure', 48, '5 Grasskamp Crossing', 41, 9),
(19, 'Black-tailed deer', 87, '0535 Laurel Point', 11, 10),
(20, 'Cape cobra', 12, '1768 Michigan Circle', 38, 14),
(21, 'Squirrel, indian giant', 70, '78 Surrey Avenue', 6, 9),
(22, 'Macaw, blue and gold', 71, '94145 Fairview Drive', 41, 5),
(23, 'Sable antelope', 24, '97850 American Ash Crossing', 29, 14),
(24, 'Falcon, prairie', 93, '6 Pine View Terrace', 21, 8),
(25, 'Bird, magnificent frigate', 85, '4 Sutteridge Parkway', 31, 12),
(26, 'Ibex', 93, '36 Village Green Circle', 22, 2),
(27, 'Albatross, galapagos', 100, '4761 Hovde Drive', 41, 13),
(28, 'Alligator, mississippi', 21, '02 Katie Place', 26, 13),
(29, 'Whale, baleen', 48, '9 Dottie Pass', 31, 13),
(30, 'Sloth, hoffman\'s', 41, '0 Kinsman Trail', 12, 6),
(31, 'Hare, arctic', 61, '997 Holy Cross Crossing', 38, 1),
(32, 'South African hedgehog', 95, '7 Welch Park', 24, 8),
(33, 'Caiman, spectacled', 5, '19300 Quincy Court', 36, 2),
(34, 'Hyena, spotted', 96, '624 Armistice Center', 29, 1),
(35, 'Kingfisher, malachite', 45, '60203 Vera Terrace', 34, 4),
(36, 'Monkey, black spider', 62, '70 Macpherson Court', 7, 9),
(37, 'Bandicoot, long-nosed', 32, '75590 Lakewood Point', 6, 9),
(38, 'Monster, gila', 3, '85501 Pleasure Parkway', 12, 9),
(39, 'Badger, honey', 54, '72864 Twin Pines Park', 3, 6),
(40, 'Lizard, blue-tongued', 75, '172 Sunnyside Avenue', 6, 2),
(41, 'Bustard, kori', 80, '300 Thierer Center', 34, 13),
(42, 'Jaguarundi', 90, '808 La Follette Crossing', 8, 9),
(43, 'European badger', 2, '8 Debra Center', 33, 5),
(44, 'Ring-tailed coatimundi', 21, '101 Fieldstone Alley', 15, 13),
(45, 'Sparrow, house', 38, '97711 Wayridge Road', 33, 3),
(46, 'Arctic fox', 50, '10 Warbler Pass', 10, 1),
(47, 'Goat, mountain', 28, '44 Kings Street', 18, 12),
(48, 'Crimson-breasted shrike', 59, '2773 Packers Drive', 4, 2),
(49, 'Vulture, black', 60, '39230 Novick Way', 14, 11),
(50, 'Dove, white-winged', 24, '24424 Namekagon Pass', 21, 5),
(51, 'Impala', 49, '4 Erie Trail', 4, 12),
(52, 'Coqui partridge', 29, '6054 Reindahl Hill', 25, 11),
(53, 'Gull, kelp', 8, '06 Schurz Alley', 22, 1),
(54, 'Tern, royal', 38, '6642 Grayhawk Point', 28, 1),
(55, 'Miner\'s cat', 90, '3101 Packers Lane', 3, 7),
(56, 'Hen, sage', 78, '37782 Aberg Circle', 29, 13),
(57, 'Australian pelican', 98, '52 Gateway Road', 7, 6),
(58, 'Ringtail, common', 61, '86861 Maryland Lane', 29, 3),
(59, 'Bohor reedbuck', 10, '33297 Marquette Street', 28, 14),
(60, 'Spoonbill, white', 24, '9 Reinke Lane', 25, 1),
(61, 'Tern, arctic', 46, '3 Riverside Avenue', 34, 12),
(62, 'Green heron', 93, '860 Donald Place', 11, 12),
(63, 'Baboon, savanna', 10, '068 Corry Lane', 31, 5),
(64, 'Violet-crested turaco', 73, '1899 Rieder Park', 37, 2),
(65, 'Capuchin, white-fronted', 88, '006 Spohn Circle', 35, 7),
(66, 'Field flicker', 47, '878 Porter Plaza', 22, 3),
(67, 'Barasingha deer', 64, '03896 Independence Street', 24, 7),
(68, 'Baleen whale', 38, '15045 Fieldstone Terrace', 31, 10),
(69, 'Wallaby, agile', 28, '6 Dennis Avenue', 37, 9),
(70, 'Australian spiny anteater', 61, '561 Pearson Pass', 25, 3),
(71, 'Lion, southern sea', 23, '28678 Mccormick Terrace', 19, 12),
(72, 'Squirrel, golden-mantled ground', 3, '02920 Saint Paul Hill', 41, 9),
(73, 'African red-eyed bulbul', 93, '84 Vermont Court', 33, 4),
(74, 'Hummingbird (unidentified)', 2, '9 Village Circle', 14, 5),
(75, 'Striped hyena', 86, '627 Katie Center', 37, 12),
(76, 'Small-spotted genet', 60, '52 Amoth Trail', 21, 1),
(77, 'Cottonmouth', 61, '64 Sloan Parkway', 14, 7),
(78, 'Roseate cockatoo', 27, '4 Thierer Center', 40, 10),
(79, 'Red-billed buffalo weaver', 72, '77 Golden Leaf Way', 8, 4),
(80, 'Red phalarope', 10, '23 Nobel Lane', 19, 2),
(81, 'Chestnut weaver', 63, '51020 Mcbride Avenue', 7, 8),
(82, 'Heron, little', 24, '11066 Sage Plaza', 4, 3),
(83, 'Cape wild cat', 58, '64825 Twin Pines Terrace', 39, 12),
(84, 'Frog (unidentified)', 72, '0181 Eagan Alley', 1, 12),
(85, 'Mountain lion', 56, '69 Armistice Trail', 11, 13),
(86, 'Lion, african', 44, '5953 Chinook Way', 26, 6),
(87, 'Cook\'s tree boa', 51, '92772 Nevada Lane', 37, 6),
(88, 'Ferruginous hawk', 51, '8924 Loftsgordon Circle', 4, 14),
(89, 'Eastern dwarf mongoose', 93, '15 Crowley Trail', 31, 5),
(90, 'Australian sea lion', 68, '4 Cherokee Terrace', 1, 14),
(91, 'Hippopotamus', 23, '22346 Division Park', 34, 3),
(92, 'Roseate cockatoo', 100, '04 Cody Crossing', 8, 9),
(93, 'Chimpanzee', 97, '97 Portage Place', 31, 13),
(94, 'Paddy heron (unidentified)', 62, '921 Little Fleur Hill', 19, 6),
(95, 'Coqui francolin', 98, '110 Warrior Place', 15, 13),
(96, 'American alligator', 12, '6947 Hallows Trail', 8, 5),
(97, 'Barasingha deer', 5, '48 Forest Dale Pass', 1, 12),
(98, 'Openbill stork', 23, '93193 Sutteridge Drive', 3, 1),
(99, 'Falcon, peregrine', 37, '50 Westerfield Pass', 31, 1),
(100, 'Boat-billed heron', 86, '30 8th Street', 37, 2),
(101, 'Southern screamer', 1, '32918 Carberry Center', 15, 4),
(102, 'Brown hyena', 4, '12317 Pierstorff Place', 11, 7),
(103, 'Gray heron', 76, '19 Messerschmidt Avenue', 12, 1),
(104, 'American badger', 80, '02230 Surrey Parkway', 33, 9),
(105, 'Purple moorhen', 97, '755 Sundown Pass', 13, 7),
(106, 'Kiskadee, great', 90, '05013 Clyde Gallagher Point', 7, 10),
(107, 'Bat, asian false vampire', 79, '56 Kim Street', 23, 6),
(108, 'Rufous tree pie', 76, '2 Aberg Park', 24, 4),
(109, 'Monster, gila', 57, '4855 Magdeline Street', 19, 10),
(110, 'Black-necked stork', 55, '1 Susan Court', 6, 9),
(111, 'Owl, burrowing', 21, '713 Glacier Hill Avenue', 16, 12),
(112, 'Striped hyena', 42, '81745 Oak Road', 39, 8),
(113, 'Snake, western patch-nosed', 33, '6710 Gale Hill', 15, 3),
(114, 'Turtle, long-necked', 82, '1 Clove Court', 12, 9),
(115, 'Pig-tailed macaque', 49, '25084 Atwood Terrace', 36, 7),
(116, 'Pig-tailed macaque', 38, '787 Myrtle Plaza', 35, 6),
(117, 'Horned lark', 86, '39 Eggendart Avenue', 13, 6),
(118, 'Fisher', 95, '10018 Duke Place', 11, 3),
(119, 'Raccoon, common', 94, '71774 Lien Way', 17, 7),
(120, 'Onager', 83, '32 6th Road', 2, 11),
(121, 'Raven, white-necked', 16, '6268 Montana Hill', 6, 9),
(122, 'Radiated tortoise', 1, '559 Morning Lane', 31, 12),
(123, 'Galapagos sea lion', 4, '81370 Karstens Terrace', 37, 7),
(124, 'Koala', 3, '6136 Mosinee Center', 31, 3),
(125, 'Black-crowned crane', 61, '94 Cascade Point', 9, 12),
(126, 'Blue shark', 42, '709 Northridge Place', 38, 5),
(127, 'Hippopotamus', 21, '69494 Talmadge Way', 16, 1),
(128, 'Eastern diamondback rattlesnake', 29, '539 Rowland Lane', 22, 4),
(129, 'Robin, white-throated', 43, '2771 Blue Bill Park Circle', 17, 13),
(130, 'Snake, buttermilk', 34, '143 Algoma Circle', 30, 8),
(131, 'Peacock, indian', 42, '0 8th Terrace', 3, 6),
(132, 'Red and blue macaw', 32, '4 Sherman Way', 39, 6),
(133, 'Stork, woolly-necked', 18, '6840 Portage Lane', 13, 4),
(134, 'Paca', 92, '8335 Artisan Junction', 41, 6),
(135, 'Langur, common', 27, '5240 Onsgard Circle', 33, 3),
(136, 'Rufous-collared sparrow', 77, '6 Lunder Road', 32, 4),
(137, 'Vulture, bengal', 56, '310 Roxbury Junction', 6, 10),
(138, 'Ibis, glossy', 56, '9665 Forster Street', 1, 3),
(139, 'Dusky rattlesnake', 3, '1 Buell Alley', 17, 6),
(140, 'Egyptian viper', 17, '36 High Crossing Place', 39, 12),
(141, 'Common palm civet', 92, '59930 Grim Terrace', 24, 9),
(142, 'Alpaca', 87, '85 Carberry Park', 23, 7),
(143, 'Vicuna', 76, '5765 Jay Lane', 22, 5),
(144, 'Fox, asian red', 92, '5673 Mayfield Way', 29, 1),
(145, 'Rhinoceros, black', 33, '81 West Street', 6, 4),
(146, 'Bustard, kori', 60, '1132 Kingsford Way', 27, 5),
(147, 'Possum, pygmy', 68, '97 Susan Trail', 6, 1),
(148, 'Blue shark', 4, '751 Crowley Road', 24, 5),
(149, 'Mocking cliffchat', 56, '5508 Welch Alley', 6, 3),
(150, 'Red-breasted nuthatch', 15, '77578 Kennedy Lane', 4, 7),
(151, 'Mongoose, banded', 6, '5911 Straubel Pass', 7, 5),
(152, 'Caracara (unidentified)', 93, '50 Norway Maple Crossing', 25, 14),
(153, 'Booby, blue-footed', 66, '6235 Center Trail', 3, 4),
(154, 'Hornbill, red-billed', 21, '852 Bellgrove Road', 38, 7),
(155, 'Starling, greater blue-eared', 37, '78036 Union Center', 8, 11),
(156, 'Goose, knob-nosed', 61, '4803 Lakewood Road', 33, 12),
(157, 'Common green iguana', 88, '7 Summerview Circle', 27, 2),
(158, 'Hawk-headed parrot', 64, '9 Crest Line Avenue', 35, 10),
(159, 'Coatimundi, ring-tailed', 31, '190 Grasskamp Pass', 27, 12),
(160, 'Lemming, arctic', 38, '3230 Acker Center', 32, 13),
(161, 'Macaque, rhesus', 57, '7594 Calypso Lane', 26, 1),
(162, 'Indian leopard', 76, '8 Colorado Road', 30, 1),
(163, 'Butterfly (unidentified)', 84, '02086 Anderson Plaza', 4, 2),
(164, 'Jabiru stork', 87, '682 Pennsylvania Plaza', 28, 14),
(165, 'Oriental white-backed vulture', 3, '88520 Bluejay Hill', 7, 12),
(166, 'Openbill stork', 59, '1962 Amoth Point', 33, 3),
(167, 'Black-capped chickadee', 62, '0 Fairfield Way', 38, 5),
(168, 'Baboon, savanna', 57, '3596 Raven Terrace', 21, 11),
(169, 'Snake, green vine', 68, '8919 Rowland Drive', 36, 2),
(170, 'Crab, sally lightfoot', 39, '2 Bunker Hill Terrace', 1, 2),
(171, 'Seal, northern fur', 55, '8399 Lakeland Pass', 17, 1),
(172, 'Cat, tiger', 17, '9 Schlimgen Point', 26, 1),
(173, 'Wallaroo, common', 51, '350 Prentice Hill', 5, 9),
(174, 'Caracal', 72, '80 Ridgeview Place', 35, 8),
(175, 'Two-banded monitor', 95, '710 Hoffman Lane', 11, 12),
(176, 'Mynah, common', 53, '0035 Morning Road', 19, 12),
(177, 'Cormorant, javanese', 53, '41 Maryland Parkway', 9, 8),
(178, 'Slender loris', 58, '080 Continental Street', 4, 7),
(179, 'Vulture, griffon', 77, '3 Golden Leaf Plaza', 29, 2),
(180, 'Banded mongoose', 55, '7873 Barnett Drive', 24, 6),
(181, 'Starling, greater blue-eared', 92, '116 Lakewood Gardens Way', 40, 14),
(182, 'Arctic lemming', 80, '43366 Summer Ridge Road', 1, 2),
(183, 'Egyptian vulture', 90, '9506 Gale Park', 18, 10),
(184, 'Desert spiny lizard', 68, '4734 Browning Road', 18, 11),
(185, 'Magpie, black-backed', 70, '8 Morrow Trail', 35, 4),
(186, 'Butterfly, tropical buckeye', 46, '55348 Dexter Road', 29, 3),
(187, 'Yellow-billed hornbill', 24, '5 Farwell Way', 36, 12),
(188, 'Numbat', 47, '387 Maryland Pass', 5, 3),
(189, 'Mountain goat', 35, '6312 Annamark Point', 32, 7),
(190, 'Cougar', 96, '55 Loftsgordon Junction', 23, 8),
(191, 'Asian openbill', 49, '19277 Prentice Street', 41, 6),
(192, 'Shrew, mandras tree', 80, '3094 Schmedeman Terrace', 31, 3),
(193, 'Turtle, snake-necked', 94, '0 Carey Park', 19, 6),
(194, 'Lizard, frilled', 50, '1833 Dixon Parkway', 41, 6),
(195, 'Macaque, japanese', 11, '56647 Fallview Parkway', 1, 3),
(196, 'Goose, spur-winged', 89, '71 Hoard Court', 40, 10),
(197, 'Nilgai', 62, '0 Eliot Plaza', 28, 13),
(198, 'Bonnet macaque', 64, '66 Thompson Court', 7, 3),
(199, 'Chital', 91, '6 Mifflin Terrace', 3, 12),
(200, 'Dragon, frilled', 99, '526 8th Court', 15, 1),
(201, 'Red squirrel', 62, '30041 Merry Road', 41, 13),
(202, 'Common melba finch', 70, '18 Mandrake Hill', 7, 11),
(203, 'Golden-mantled ground squirrel', 7, '203 John Wall Terrace', 34, 2),
(204, 'Common seal', 74, '6144 Miller Pass', 27, 9),
(205, 'Wallaby, whip-tailed', 78, '185 Blue Bill Park Avenue', 5, 13),
(206, 'Campo flicker', 35, '479 Mccormick Street', 11, 13),
(207, 'Bleu, red-cheeked cordon', 81, '07271 Hudson Lane', 12, 11),
(208, 'Pheasant, ring-necked', 63, '59773 Petterle Park', 29, 5),
(209, 'Anteater, australian spiny', 10, '0556 Thompson Lane', 39, 14),
(210, 'Grouse, greater sage', 76, '45993 Sugar Avenue', 35, 9),
(211, 'Grey heron', 21, '246 Jana Crossing', 6, 12),
(212, 'Lizard, goanna', 97, '6398 Buena Vista Terrace', 9, 5),
(213, 'Red brocket', 83, '11244 Sunnyside Court', 23, 14),
(214, 'Hawk, red-tailed', 100, '18639 Fair Oaks Way', 11, 13),
(215, 'Andean goose', 93, '5 Laurel Circle', 29, 7),
(216, 'Monkey, black spider', 27, '21 Jenna Alley', 10, 5),
(217, 'Canada goose', 4, '51239 High Crossing Terrace', 5, 12),
(218, 'Racer, blue', 33, '3 Kropf Junction', 14, 11),
(219, 'Fox, arctic', 85, '026 Ohio Point', 30, 1),
(220, 'Red-capped cardinal', 37, '12 Duke Avenue', 25, 8),
(221, 'Red-breasted cockatoo', 43, '2329 Fuller Center', 26, 4),
(222, 'White-browed owl', 84, '0 Scofield Drive', 28, 12),
(223, 'Tenrec, tailless', 94, '394 Di Loreto Way', 22, 3),
(224, 'Echidna, short-beaked', 41, '34 Butterfield Street', 10, 12),
(225, 'Echidna, short-beaked', 55, '95098 Dennis Trail', 6, 9),
(226, 'Topi', 71, '399 Scott Crossing', 33, 7),
(227, 'Plains zebra', 68, '35869 Elmside Trail', 25, 5),
(228, 'Southern tamandua', 59, '58398 Russell Plaza', 38, 7),
(229, 'Bleeding heart monkey', 67, '71047 Moose Point', 17, 8),
(230, 'Barbet, black-collared', 12, '576 Longview Drive', 19, 3),
(231, 'Brazilian tapir', 27, '10847 Fisk Center', 3, 8),
(232, 'Sulfur-crested cockatoo', 55, '25579 Myrtle Center', 27, 11),
(233, 'Pheasant, common', 30, '9 Mitchell Terrace', 26, 1),
(234, 'Pied butcher bird', 57, '5 Continental Lane', 29, 8),
(235, 'Stork, jabiru', 14, '7 Meadow Vale Lane', 11, 6),
(236, 'Black-cheeked waxbill', 85, '5 Anhalt Hill', 17, 3),
(237, 'Bettong, brush-tailed', 54, '0296 Corben Park', 19, 11),
(238, 'Bleu, red-cheeked cordon', 86, '438 Corscot Court', 41, 12),
(239, 'Beisa oryx', 70, '7648 Stang Parkway', 8, 7),
(240, 'Penguin, magellanic', 34, '6892 Linden Court', 1, 2),
(241, 'Snake (unidentified)', 89, '682 Goodland Junction', 5, 4),
(242, 'Blue and yellow macaw', 54, '27320 Prairie Rose Crossing', 19, 7),
(243, 'Nubian bee-eater', 43, '0156 4th Junction', 40, 3),
(244, 'Canada goose', 94, '37129 Stone Corner Lane', 8, 13),
(245, 'Badger, european', 60, '14 Northridge Point', 33, 3),
(246, 'Uinta ground squirrel', 1, '8874 Delaware Park', 31, 14),
(247, 'Asian foreset tortoise', 19, '35095 Elgar Avenue', 10, 4),
(248, 'Guanaco', 82, '5698 Summer Ridge Park', 8, 5),
(249, 'Boa, emerald green tree', 86, '2062 Di Loreto Crossing', 29, 4),
(250, 'Mongoose, yellow', 4, '3 Service Alley', 30, 5),
(251, 'Bear, american black', 28, '134 Service Circle', 39, 12),
(252, 'Racer snake', 36, '6814 Carberry Place', 39, 13),
(253, 'Lemur, ring-tailed', 17, '9 Anniversary Point', 14, 11),
(254, 'Greater roadrunner', 55, '91214 Stoughton Hill', 24, 14),
(255, 'Ovenbird', 32, '08 Ruskin Court', 10, 5),
(256, 'Turtle, eastern box', 99, '127 Crowley Road', 34, 6),
(257, 'American black bear', 50, '1314 Laurel Trail', 5, 8),
(258, 'Great skua', 66, '95 Manufacturers Terrace', 32, 10),
(259, 'Otter, african clawless', 38, '30887 Eagan Center', 13, 3),
(260, 'Gonolek, burchell\'s', 52, '9 Mandrake Plaza', 2, 2),
(261, 'Steller\'s sea lion', 86, '046 Hansons Center', 28, 2),
(262, 'Fox, grey', 77, '2 Crownhardt Way', 37, 5),
(263, 'Elegant crested tinamou', 18, '1829 Moland Pass', 27, 10),
(264, 'Moccasin, water', 69, '791 Hazelcrest Alley', 21, 11),
(265, 'Eagle, bateleur', 39, '155 Carey Avenue', 30, 14),
(266, 'Common grenadier', 79, '62 Towne Circle', 32, 13),
(267, 'Quail, gambel\'s', 84, '58 Clarendon Pass', 31, 13),
(268, 'Capuchin, black-capped', 21, '942 Mandrake Hill', 40, 2),
(269, 'Beaver, american', 85, '4 Independence Park', 17, 11),
(270, 'Boa, columbian rainbow', 8, '2 Dapin Point', 18, 2),
(271, 'Crane, wattled', 54, '42331 Laurel Terrace', 36, 9),
(272, 'Squirrel, african bush', 90, '6697 Barnett Junction', 5, 4),
(273, 'Striped skunk', 86, '56 7th Place', 40, 9),
(274, 'Serval', 25, '21363 Fisk Drive', 14, 2),
(275, 'Emerald-spotted wood dove', 50, '71 Dunning Street', 33, 8),
(276, 'Chital', 96, '9895 Loftsgordon Circle', 7, 2),
(277, 'Fox, crab-eating', 36, '2392 Dayton Lane', 19, 12),
(278, 'Malagasy ground boa', 36, '5753 Charing Cross Point', 9, 8),
(279, 'Squirrel, eurasian red', 49, '81487 Delladonna Alley', 18, 2),
(280, 'Squirrel, richardson\'s ground', 50, '75487 Northfield Avenue', 12, 6),
(281, 'Lemur, sportive', 93, '97 Columbus Trail', 37, 14),
(282, 'Cormorant, little', 88, '4971 Prentice Center', 12, 1),
(283, 'Snow goose', 52, '7 Heath Way', 17, 11),
(284, 'Glossy starling (unidentified)', 92, '98458 Marcy Drive', 8, 8),
(285, 'Turkey, common', 82, '25818 Armistice Point', 28, 4),
(286, 'Rattlesnake, eastern diamondback', 74, '25 Swallow Avenue', 27, 9),
(287, 'Water monitor', 45, '55105 Sunbrook Road', 7, 13),
(288, 'Tiger', 61, '3 Clarendon Street', 18, 11),
(289, 'Currasow (unidentified)', 59, '57 Carey Circle', 12, 2),
(290, 'Vicuna', 45, '71 Prentice Plaza', 31, 13),
(291, 'Eastern boa constrictor', 84, '5 Bluejay Crossing', 18, 5),
(292, 'Macaw, scarlet', 41, '38471 Bowman Lane', 17, 13),
(293, 'Kalahari scrub robin', 18, '67220 Ronald Regan Park', 14, 4),
(294, 'Radiated tortoise', 94, '7617 Acker Way', 1, 11),
(295, 'Gazelle, thomson\'s', 27, '0519 Michigan Crossing', 23, 3),
(296, 'Waxbill, violet-eared', 34, '81247 Sutherland Street', 27, 10),
(297, 'Screamer, southern', 83, '9 Hazelcrest Court', 26, 13),
(298, 'Grouse, sage', 91, '0 Hazelcrest Hill', 12, 7),
(299, 'Madagascar fruit bat', 11, '3317 Montana Avenue', 19, 9),
(300, 'Spectacled caiman', 15, '8021 Bobwhite Avenue', 3, 14),
(301, 'Blacksmith plover', 85, '7 Sunfield Crossing', 16, 4),
(302, 'Madagascar hawk owl', 17, '53306 Ruskin Avenue', 38, 10),
(303, 'American marten', 3, '17 Anhalt Hill', 5, 10),
(304, 'Common zebra', 78, '1 Grover Drive', 35, 5),
(305, 'Finch, common melba', 50, '9960 Westport Plaza', 17, 12),
(306, 'White-necked stork', 24, '743 Holy Cross Hill', 5, 13),
(307, 'Tokay gecko', 14, '20186 Shasta Center', 20, 12),
(308, 'Roller, lilac-breasted', 62, '68886 Mccormick Alley', 31, 9),
(309, 'Starling, superb', 52, '47023 Hayes Road', 20, 14),
(310, 'Secretary bird', 98, '71840 Green Ridge Street', 29, 9),
(311, 'Moccasin, water', 83, '882 Warner Junction', 40, 14),
(312, 'Lizard, blue-tongued', 84, '54737 High Crossing Alley', 22, 5),
(313, 'Boar, wild', 98, '51780 Hazelcrest Avenue', 38, 14),
(314, 'Thrasher, curve-billed', 36, '778 Forest Dale Place', 10, 12),
(315, 'Raven, white-necked', 51, '88 Randy Plaza', 30, 12),
(316, 'European wild cat', 32, '69 Dunning Crossing', 21, 3),
(317, 'Indian leopard', 77, '1 Moose Road', 21, 1),
(318, 'Bird, pied butcher', 5, '1 Rutledge Court', 30, 2),
(319, 'Seven-banded armadillo', 38, '7582 Pawling Avenue', 26, 4),
(320, 'Yellow-billed stork', 78, '88628 Moland Terrace', 39, 7),
(321, 'Gemsbok', 86, '77 Dottie Road', 31, 14),
(322, 'Grenadier, purple', 2, '30831 Kim Center', 39, 7),
(323, 'African wild cat', 100, '85 Colorado Court', 11, 4),
(324, 'Tokay gecko', 1, '929 Dixon Center', 37, 4),
(325, 'Black-footed ferret', 26, '7641 Harper Drive', 8, 7),
(326, 'Ring-tailed lemur', 100, '62109 Hanson Road', 19, 13),
(327, 'Dromedary camel', 62, '16485 Fisk Center', 34, 14),
(328, 'Goanna lizard', 24, '5 Sloan Alley', 10, 13),
(329, 'Kalahari scrub robin', 26, '71 Prairieview Place', 37, 3),
(330, 'Starfish, crown of thorns', 33, '2117 Upham Center', 38, 5),
(331, 'Blackbird, red-winged', 12, '823 Fisk Trail', 11, 1),
(332, 'Snake-necked turtle', 2, '192 Golf Plaza', 32, 6),
(333, 'Dingo', 33, '5902 Moland Junction', 23, 10),
(334, 'Heron, green', 83, '44571 Judy Drive', 28, 13),
(335, 'Kirk\'s dik dik', 77, '4547 Colorado Avenue', 40, 13),
(336, 'Devil, tasmanian', 63, '4973 Scott Point', 2, 4),
(337, 'Common shelduck', 91, '800 Jenna Avenue', 12, 7),
(338, 'Wombat, southern hairy-nosed', 10, '6 Sundown Terrace', 16, 4),
(339, 'Wapiti, elk,', 48, '5239 Donald Road', 38, 6),
(340, 'Boar, wild', 11, '68073 Di Loreto Crossing', 5, 7),
(341, 'Civet, common palm', 46, '643 Cordelia Park', 23, 3),
(342, 'Dingo', 96, '1 Milwaukee Drive', 22, 5),
(343, 'Yellow-billed hornbill', 4, '82 Brentwood Avenue', 8, 3),
(344, 'Flicker, field', 69, '404 3rd Pass', 35, 2),
(345, 'Jaguarundi', 26, '63365 Truax Center', 16, 10),
(346, 'Tarantula, salmon pink bird eater', 51, '441 Granby Avenue', 1, 8),
(347, 'Southern brown bandicoot', 64, '1 Clarendon Trail', 38, 12),
(348, 'Macaque, bonnet', 21, '0 Beilfuss Road', 36, 1),
(349, 'Mouse, four-striped grass', 9, '97 Leroy Place', 19, 4),
(350, 'Squirrel, richardson\'s ground', 6, '24 Eagan Parkway', 33, 8),
(351, 'Grebe, little', 19, '28325 Sunbrook Alley', 17, 14),
(352, 'Stork, jabiru', 95, '690 School Trail', 32, 12),
(353, 'Woodchuck', 62, '242 Fieldstone Center', 10, 9),
(354, 'Macaw, red and blue', 91, '13268 Carey Street', 28, 14),
(355, 'Turaco, violet-crested', 82, '30742 Charing Cross Junction', 36, 6),
(356, 'Eastern dwarf mongoose', 57, '05 Sycamore Hill', 33, 5),
(357, 'Turkey, wild', 24, '2 Hallows Junction', 13, 6),
(358, 'Osprey', 55, '9494 Brown Point', 11, 1),
(359, 'Bird, magnificent frigate', 44, '50561 Delaware Point', 32, 14),
(360, 'Yellow-necked spurfowl', 30, '0 7th Road', 2, 2),
(361, 'Honey badger', 11, '2 Petterle Circle', 12, 7),
(362, 'Crowned hawk-eagle', 99, '54 Thackeray Trail', 16, 10),
(363, 'Heron, goliath', 3, '14504 Stephen Place', 41, 9),
(364, 'Quail, gambel\'s', 21, '131 Crescent Oaks Drive', 4, 1),
(365, 'Macaque, pig-tailed', 38, '91318 Melrose Way', 7, 8),
(366, 'African darter', 24, '68809 Nova Drive', 28, 3),
(367, 'Glossy starling (unidentified)', 18, '5561 Riverside Hill', 41, 6),
(368, 'European beaver', 23, '572 7th Street', 32, 5),
(369, 'Tammar wallaby', 66, '79 Transport Circle', 39, 2),
(370, 'Lava gull', 45, '01 Old Shore Circle', 33, 5),
(371, 'Iguana, marine', 44, '191 Muir Drive', 33, 4),
(372, 'Rhinoceros, white', 2, '513 Raven Point', 14, 3),
(373, 'Grizzly bear', 25, '0 Little Fleur Park', 12, 2),
(374, 'Square-lipped rhinoceros', 59, '64 6th Way', 18, 9),
(375, 'Nutcracker, clark\'s', 68, '9689 Bunker Hill Terrace', 3, 12),
(376, 'Macaque, rhesus', 7, '1 Beilfuss Parkway', 11, 11),
(377, 'Horned rattlesnake', 32, '3913 Vermont Crossing', 10, 5),
(378, 'Genet, common', 63, '72 Hayes Parkway', 28, 8),
(379, 'Cockatoo, sulfur-crested', 97, '10 Nova Road', 26, 6),
(380, 'Rufous tree pie', 74, '28747 Maple Wood Terrace', 4, 12),
(381, 'Bear, sloth', 82, '8547 Lawn Drive', 40, 11),
(382, 'Tortoise, galapagos', 100, '12366 Debs Road', 25, 1),
(383, 'Lion, southern sea', 55, '276 Mariners Cove Junction', 6, 5),
(384, 'Fat-tailed dunnart', 90, '1132 Montana Pass', 25, 2),
(385, 'Silver gull', 7, '31857 Kedzie Court', 38, 13),
(386, 'Long-billed corella', 38, '74 Morningstar Crossing', 38, 11),
(387, 'Squirrel, eurasian red', 82, '054 Division Point', 12, 4),
(388, 'White-throated toucan', 13, '31 Columbus Terrace', 5, 10),
(389, 'Bear, sloth', 45, '07223 Independence Plaza', 32, 6),
(390, 'Malabar squirrel', 21, '3978 Acker Point', 13, 14),
(391, 'Weaver, lesser masked', 74, '290 Rusk Trail', 13, 14),
(392, 'African elephant', 85, '43 Saint Paul Court', 1, 10),
(393, 'Cockatoo, red-breasted', 40, '49 Bashford Parkway', 34, 1),
(394, 'Owl, burrowing', 51, '841 American Plaza', 41, 10),
(395, 'Black-necked stork', 71, '8532 Upham Point', 1, 10),
(396, 'Raven, cape', 100, '387 Warner Drive', 41, 6),
(397, 'Sable antelope', 99, '2 Pleasure Terrace', 34, 8),
(398, 'Marshbird, brown and yellow', 57, '28 Hagan Pass', 4, 8),
(399, 'California sea lion', 97, '460 Mandrake Plaza', 19, 14),
(400, 'Griffon vulture', 1, '1925 Arkansas Parkway', 20, 3),
(401, 'White-winged tern', 18, '738 Bultman Place', 1, 4),
(402, 'Swallow (unidentified)', 41, '56338 Dahle Point', 30, 11),
(403, 'Red-headed woodpecker', 11, '5 Londonderry Court', 14, 12),
(404, 'Cardinal, red-capped', 96, '8 Tennessee Avenue', 28, 1),
(405, 'Indian mynah', 26, '055 Spaight Drive', 20, 13),
(406, 'Long-crested hawk eagle', 80, '80 Mayer Crossing', 14, 1),
(407, 'Reedbuck, bohor', 68, '07 Farmco Center', 33, 13),
(408, 'Gerbil (unidentified)', 11, '4 Trailsway Center', 1, 11),
(409, 'Barrows goldeneye', 26, '90906 Walton Drive', 1, 10),
(410, 'Lizard, frilled', 80, '36101 Hollow Ridge Street', 35, 14),
(411, 'Mocking cliffchat', 67, '4 Aberg Pass', 3, 5),
(412, 'Wolf, common', 11, '35113 Little Fleur Street', 40, 8),
(413, 'Peacock, indian', 87, '364 Ilene Crossing', 19, 13),
(414, 'Deer, spotted', 30, '023 Kinsman Trail', 3, 12),
(415, 'Dove, laughing', 10, '2 Westridge Hill', 5, 10),
(416, 'Blesbok', 46, '26603 Burrows Circle', 7, 1),
(417, 'Goldeneye, barrows', 33, '13443 Browning Road', 14, 11),
(418, 'Red-necked wallaby', 32, '954 Riverside Alley', 20, 11),
(419, 'Southern tamandua', 91, '7622 Burrows Alley', 38, 9),
(420, 'Superb starling', 12, '97 Sachtjen Court', 9, 9),
(421, 'Black-crowned night heron', 21, '188 Victoria Alley', 5, 12),
(422, 'Southern ground hornbill', 55, '3 Arapahoe Place', 8, 14),
(423, 'Manatee', 57, '76716 Hansons Place', 20, 3),
(424, 'Spotted deer', 30, '41 Graceland Court', 25, 5),
(425, 'Downy woodpecker', 42, '98574 6th Street', 29, 7),
(426, 'White-faced whistling duck', 16, '439 5th Junction', 26, 11),
(427, 'Gonolek, burchell\'s', 11, '634 Schlimgen Way', 19, 14),
(428, 'Carmine bee-eater', 93, '19112 Clarendon Point', 41, 8),
(429, 'Boar, wild', 65, '32 Hanson Place', 15, 5),
(430, 'Two-banded monitor', 60, '9293 Loftsgordon Lane', 39, 9),
(431, 'Wattled crane', 19, '69 Clarendon Avenue', 6, 12),
(432, 'Nilgai', 10, '10 Mitchell Way', 3, 10),
(433, 'Fairy penguin', 31, '818 Marcy Parkway', 15, 3),
(434, 'Red-tailed cockatoo', 19, '8291 Weeping Birch Crossing', 5, 3),
(435, 'Macaw, blue and yellow', 88, '41868 Anthes Way', 37, 10),
(436, 'Pigeon, feral rock', 66, '98261 Bunting Plaza', 40, 11),
(437, 'Egret, snowy', 96, '13806 Mitchell Way', 33, 10),
(438, 'Wagtail, african pied', 52, '4 Evergreen Crossing', 38, 1),
(439, 'Mynah, common', 42, '92897 Mockingbird Street', 30, 9),
(440, 'Bushbuck', 31, '9 Jenifer Way', 7, 10),
(441, 'Black-footed ferret', 2, '712 Hauk Place', 14, 3),
(442, 'Cobra (unidentified)', 18, '394 Onsgard Road', 14, 1),
(443, 'Booby, masked', 84, '7 Hoepker Crossing', 14, 6),
(444, 'Coatimundi, white-nosed', 52, '39 Gateway Drive', 33, 7),
(445, 'Sandhill crane', 76, '1 Lindbergh Point', 28, 3),
(446, 'Striped dolphin', 66, '54387 Kim Trail', 17, 3),
(447, 'Bontebok', 60, '4620 Oxford Terrace', 30, 2),
(448, 'Common waterbuck', 20, '3516 Donald Circle', 23, 11),
(449, 'Red-breasted cockatoo', 57, '27377 Vahlen Point', 3, 10),
(450, 'Gonolek, burchell\'s', 39, '437 Fieldstone Drive', 4, 5),
(451, 'South American puma', 73, '1 Carpenter Hill', 21, 12),
(452, 'Boat-billed heron', 30, '99 Meadow Valley Center', 10, 14),
(453, 'Numbat', 65, '81 Esch Avenue', 34, 8),
(454, 'Silver-backed jackal', 64, '1 Hudson Alley', 24, 12),
(455, 'Great horned owl', 4, '1 Crowley Lane', 12, 6),
(456, 'Fork-tailed drongo', 92, '646 Meadow Vale Crossing', 17, 1),
(457, 'White-browed sparrow weaver', 14, '07785 Arkansas Street', 4, 1),
(458, 'Sifaka, verreaux\'s', 25, '40 Bartillon Court', 2, 1),
(459, 'Black-eyed bulbul', 62, '1 Hudson Parkway', 39, 6),
(460, 'Eastern dwarf mongoose', 51, '5 Emmet Road', 8, 9),
(461, 'Paca', 17, '420 Tomscot Drive', 24, 12),
(462, 'Boa, cook\'s tree', 52, '749 Summerview Drive', 33, 1),
(463, 'Magistrate black colobus', 55, '98170 Farragut Parkway', 19, 12),
(464, 'Dromedary camel', 37, '7 Del Sol Point', 25, 3),
(465, 'Pale white-eye', 27, '632 Eagan Point', 6, 7),
(466, 'European red squirrel', 67, '70996 Randy Center', 6, 13),
(467, 'Dabchick', 72, '83900 South Plaza', 40, 14),
(468, 'Dragon, ornate rock', 8, '056 Nevada Road', 33, 8),
(469, 'Cormorant, flightless', 16, '87093 Corry Terrace', 36, 14),
(470, 'Short-beaked echidna', 40, '8521 Troy Lane', 17, 6),
(471, 'Lion, south american sea', 51, '3470 Chinook Court', 21, 2),
(472, 'Monitor, water', 66, '2190 Autumn Leaf Point', 27, 8),
(473, 'Margay', 61, '6274 Pierstorff Terrace', 19, 14),
(474, 'American bighorn sheep', 93, '9794 Ilene Center', 34, 12),
(475, 'American badger', 5, '16 Sheridan Junction', 27, 8),
(476, 'Gambel\'s quail', 82, '68885 Colorado Junction', 37, 12),
(477, 'Red-cheeked cordon bleu', 19, '4262 Redwing Circle', 36, 1),
(478, 'Rufous tree pie', 27, '146 Bonner Trail', 19, 7),
(479, 'Gull, pacific', 36, '50116 Holmberg Drive', 34, 8),
(480, 'Snake, racer', 5, '35787 Burning Wood Avenue', 36, 5),
(481, 'Golden eagle', 41, '7 Waxwing Parkway', 23, 2),
(482, 'Darter, african', 47, '2 Golf Course Avenue', 21, 2),
(483, 'Asiatic jackal', 77, '6 Waywood Point', 6, 13),
(484, 'Eastern boa constrictor', 11, '4940 Twin Pines Circle', 34, 7),
(485, 'Herring gull', 49, '587 Carpenter Court', 26, 10),
(486, 'Skua, long-tailed', 14, '97 Hallows Street', 2, 1),
(487, 'Baboon, yellow', 93, '027 Pepper Wood Crossing', 12, 5),
(488, 'Black-cheeked waxbill', 84, '4 Forest Run Court', 21, 8),
(489, 'Macaque, rhesus', 70, '1901 Golf Course Parkway', 27, 7),
(490, 'Red-billed toucan', 56, '267 Sheridan Alley', 3, 10),
(491, 'River wallaby', 60, '2936 Erie Parkway', 30, 11),
(492, 'Collared lizard', 12, '852 Hoard Court', 37, 6),
(493, 'Monkey, rhesus', 32, '721 Pankratz Alley', 28, 12),
(494, 'Antelope, roan', 71, '32588 Tony Parkway', 2, 5),
(495, 'Heron, gray', 39, '26 Bowman Lane', 9, 1),
(496, 'Sugar glider', 13, '73 Memorial Junction', 12, 4),
(497, 'Vulture, turkey', 66, '940 Waxwing Plaza', 19, 3),
(498, 'Bird, pied butcher', 64, '8022 Lawn Park', 15, 12),
(499, 'Marine iguana', 92, '9328 Truax Hill', 17, 10),
(500, 'Dragon, netted rock', 86, '46 Old Gate Center', 41, 7);

-- --------------------------------------------------------

--
-- Structure de la table `speciality`
--

DROP TABLE IF EXISTS `speciality`;
CREATE TABLE IF NOT EXISTS `speciality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `speciality`
--

INSERT INTO `speciality` (`id`, `name`) VALUES
(1, 'Cybersécurity'),
(2, 'Espionnage'),
(3, 'Surveillance'),
(4, 'Infiltration'),
(5, 'Elimination'),
(6, 'Arrestation');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_statut` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statut`
--

INSERT INTO `statut` (`id`, `name_statut`) VALUES
(1, 'En préparation'),
(2, 'En cours'),
(3, 'Terminé'),
(4, 'Echec');

-- --------------------------------------------------------

--
-- Structure de la table `type_mission`
--

DROP TABLE IF EXISTS `type_mission`;
CREATE TABLE IF NOT EXISTS `type_mission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_mission`
--

INSERT INTO `type_mission` (`id`, `name`) VALUES
(1, 'Cybersécurité'),
(2, 'Espionnage'),
(3, 'Surveillance'),
(4, 'Infiltration'),
(5, 'Elimination'),
(6, 'Arrestation');

-- --------------------------------------------------------

--
-- Structure de la table `type_planque`
--

DROP TABLE IF EXISTS `type_planque`;
CREATE TABLE IF NOT EXISTS `type_planque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_planque`
--

INSERT INTO `type_planque` (`id`, `name`) VALUES
(1, 'Grotte'),
(2, 'Voiture'),
(3, 'Batiment'),
(4, 'Restaurant'),
(5, 'Ecole'),
(6, 'Cinema'),
(7, 'Hôtel'),
(8, 'Lieu public'),
(9, 'Montagne'),
(10, 'Désert'),
(11, 'Plage'),
(12, 'Avion'),
(13, 'Bateau'),
(14, 'Campagne');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(1, 'dert@gmail.com', '[]', 'FlorianeDert44', 'Floriane', 'Dert'),
(2, 'mathys@gmail.com', '[]', '$2y$13$wgbYiO2fpMfiF/EwKyq5iuRDjOqQhtrD2ow1ez/zGsDgXVtrbJlA6', 'Mathys', 'HUTER'),
(3, 'vanessa@gmail.com', '[]', '$2y$13$6Tz8Vaekhhd3dgkRsILUvuql1ZPw.M8iS1vz6LY7bEztqWOKTP2o.', 'Vanessa', 'Vittoni'),
(4, 'lucas@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$Vy2bl5g.X04pFm9JE0GvOe.GhZDlXjuXKSYcXNxLAHPMGf8D4uUCa', 'lucas', 'Francorit'),
(5, 'bob@gmail.com', '[]', 'Chaton', 'bob', 'eponge');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `FK_268B9C9D1C9DA55` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`);

--
-- Contraintes pour la table `agent_speciality`
--
ALTER TABLE `agent_speciality`
  ADD CONSTRAINT `FK_829171813414710B` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_829171813B5A08D7` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cible`
--
ALTER TABLE `cible`
  ADD CONSTRAINT `FK_E15DEC3B1C9DA55` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_4C62E6381C9DA55` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`);

--
-- Contraintes pour la table `mission`
--
ALTER TABLE `mission`
  ADD CONSTRAINT `FK_9067F23CA36F78B5` FOREIGN KEY (`type_mission_id`) REFERENCES `type_mission` (`id`),
  ADD CONSTRAINT `FK_9067F23CA6E44244` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `FK_9067F23CF6203804` FOREIGN KEY (`statut_id`) REFERENCES `statut` (`id`);

--
-- Contraintes pour la table `mission_agent`
--
ALTER TABLE `mission_agent`
  ADD CONSTRAINT `FK_B61DC3A03414710B` FOREIGN KEY (`agent_id`) REFERENCES `agent` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B61DC3A0BE6CAE90` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mission_cible`
--
ALTER TABLE `mission_cible`
  ADD CONSTRAINT `FK_71CBB306A96E5E09` FOREIGN KEY (`cible_id`) REFERENCES `cible` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_71CBB306BE6CAE90` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mission_contact`
--
ALTER TABLE `mission_contact`
  ADD CONSTRAINT `FK_DD5E7275BE6CAE90` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DD5E7275E7A1254A` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mission_planque`
--
ALTER TABLE `mission_planque`
  ADD CONSTRAINT `FK_DA0690F7BE6CAE90` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DA0690F7CE8A20B` FOREIGN KEY (`planque_id`) REFERENCES `planque` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mission_speciality`
--
ALTER TABLE `mission_speciality`
  ADD CONSTRAINT `FK_B1D78D153B5A08D7` FOREIGN KEY (`speciality_id`) REFERENCES `speciality` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B1D78D15BE6CAE90` FOREIGN KEY (`mission_id`) REFERENCES `mission` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `planque`
--
ALTER TABLE `planque`
  ADD CONSTRAINT `FK_4B3A04BAA6E44244` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `FK_4B3A04BAC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_planque` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
