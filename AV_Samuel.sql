-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2021 at 03:39 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AV_Samuel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(14) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(117) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie`, `description`) VALUES
(1, 'Aventure', 'Les visites « Aventure » regroupent les activités de ski, de plongée, de grimpe et de randonnée.'),
(2, 'Bénévolat', 'Les voyages de bénévolat envoient des volontaires travailler dans des zones touchées par des catastrophes naturelles.'),
(3, 'Culture', 'Les visites « Culture » mettent l\'accent sur les festivals historiques et les échanges culturels.'),
(4, 'Famille', 'Les visites « Famille » concernent des activités de rencontre, mariage et réunion.'),
(5, 'Formation', 'Les visites de formation complètent les acquis scolaires.'),
(6, 'Sport', 'Les visites « Sport » proposent de découvrir les coulisses des grands événements sportifs.'),
(7, 'Visite de site', 'Les visites de sites concentrent les activités sur des attractions touristiques.');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `prenom` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `nom` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `adresse` varchar(28) COLLATE utf8_bin DEFAULT NULL,
  `ville` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `CP` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `telephone` varchar(14) COLLATE utf8_bin DEFAULT NULL,
  `courriel` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `genre` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `premierContact_id` int(11) DEFAULT NULL,
  `motdepasse` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `role` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`prenom`, `nom`, `adresse`, `ville`, `CP`, `telephone`, `courriel`, `genre`, `province_id`, `premierContact_id`, `motdepasse`, `role`, `id`) VALUES
('Bernard', 'Moulineau', '368, rue du Campanile', 'Québec', 'G1X 4G6', '(418) 228/1234', 'bmoulineau@videotron.ca', 'M', 10, 1, NULL, NULL, 1),
('Martine', 'Allard', '996, St-Michel', 'Montréal-Nord', 'H1H 5G7', '(514) 111/6931', 'mmallard@irbc.net', 'F', 10, 1, NULL, NULL, 2),
('Camille', 'Boucher', '540, Bd des Galeries', 'Québec', 'G2K 1N4', '(418) 111/3081', 'cboucher@golfedoman.net', 'M', 10, 2, NULL, NULL, 3),
('Alicia', 'Beaulieu', '220, Bd Le Corbusier', 'Laval', 'H7S 2C9', '(450) 222/9101', 'abeaulieu@cowanind.net', 'F', 10, 2, NULL, NULL, 4),
('Bertrande', 'Bédard', '573, Ferncroft', 'Hampstead', 'H3X 1C4', '(514) 222/7002', 'bbedard@marines.com', 'F', 10, 1, NULL, NULL, 5),
('Christine', 'Renard', '120, Av. de Germain-des-Prés', 'Québec', 'G1V 3M7', '(418) 222/3602', 'crenard@plumearabe.com', 'F', 10, 4, NULL, NULL, 6),
('Denise', 'Chavant', '444, Bd R. Lévesque Ouest', 'Montréal', 'H2Z 1Z6', '(514) 222/8402', 'camel2@jugeorges.com', 'F', 10, 3, NULL, NULL, 7),
('Eugène', 'Clovis', '694, Hochelaga', 'Montréal', 'H1N 1Y9', '(514) 222/5102', 'eclovis@shipwreck.org', 'M', 10, 1, NULL, NULL, 8),
('Jeanne', 'Côté', '338, Bd de la Concorde Est', 'Laval', 'H7E 2C2', '(450) 333/9871', 'jcote@foxnews.com', 'F', 10, 3, NULL, NULL, 9),
('Andrée', 'Ernest', 'Place Ste-Foy', 'Québec', 'G2T 1C4', '(418) 333/0401', 'aernest@chinaoil.com', 'F', 10, 2, NULL, NULL, 10),
('Ginette', 'Déchêne', '659, 3E Avenue', 'Québec', 'G1L 2W5', '(418) 333/0401', 'gdechene@cavutobusiness.com', 'F', 10, 1, NULL, NULL, 11),
('Carole', 'Denault', '117, Sherbrooke Ouest', 'Montréal', 'H3A 1H6', '(514) 444/4404', 'cdenault@colonelsmoutarde.com', 'F', 10, 3, NULL, NULL, 12),
('Marie', 'Durant', '333, rue du Carrefour', 'Québec', 'G1C 5R9', '(418) 444/8844', 'marie@fontanelle.gouv', 'F', 10, 2, NULL, NULL, 13),
('Claude', 'Éloi', 'Place Laurier', 'Québec', 'G1V 2L8', '(418) 444/7414', 'celoy@tremblementdeterre.com', 'M', 10, 4, NULL, NULL, 14),
('Jean', 'Gagnon', '215, avenue Pierre-Péladeau', 'Laval', 'H7T 3C2', '(450) 566/4344', 'gagnon@dalailama.net', 'M', 10, 4, NULL, NULL, 15),
('Louise', 'Garneau', '542 Métropolitain Est', 'Saint-Léonard', 'H1P 1X2', '(514) 666/1324', 'louise.garneau@dowind.com', 'F', 10, 2, NULL, NULL, 16),
('Michel', 'Hébert', '20, Bd d\'Anjou', 'Châteauguay', 'J6K 1C5', '(450) 666/0365', 'mhebert@militarytrends.com', 'M', 10, 2, NULL, NULL, 17),
('Joseph', 'Hervieux', '11, St-Jean-Baptiste', 'Le Bic', 'G5L 3S4', '(418) 777/8774', 'jhervieux@refroidissementglobal.org', 'M', 10, 3, NULL, NULL, 18),
('Claude', 'Huberty', '162, rue Laurier', 'Québec', 'G1V 4T3', '(418) 888/6004', 'chuberty@rechauffementglobal.net', 'F', 10, 1, NULL, NULL, 19),
('Christelle', 'Juneau', '30, Prince-Arthur Ouest', 'Montréal', 'H2X 1S3', '(514) 999/7154', 'chjuneau@nyquilmed.com', 'F', 10, 3, NULL, NULL, 20),
('François', 'Levesque', '447, Métropolitain Est', 'Chomedey', 'H7T 1C8', '(514) 999/8777', 'levesque55@perle.com', 'M', 10, 1, NULL, NULL, 21),
('Nathalie', 'Lussier', '447 Métropolitain Est', 'Saint-Léonard', 'H1R 1Z4', '(514) 222/8908', 'lussier60@visionnaire.com', 'F', 10, 3, NULL, NULL, 22),
('Alban', 'Martin', '15, Laurier Ouest', 'Montréal', 'H2T 2N7', '(450) 333/8505', 'amartin@coteouest.net', 'M', 10, 4, NULL, NULL, 23),
('Catherine', 'Morency', '130, Ste-Catherine Ouest', 'Montréal', 'H3G 1P7', '(514) 444/8505', 'cmorency@bretzelbrot.ca', 'F', 10, 1, NULL, NULL, 24),
('Élise', 'Moulineau', '55, Bd Wilfrid-Hamel', 'Québec', 'G1M 2S6', '(418) 777/9414', 'emoulineau@filigrane.com', 'F', 10, 2, NULL, NULL, 25),
('Robert', 'Maxit', '145, Peel', 'Montréal', 'H3A 1S8', '(514) 888/4514', 'maxit@maximum.com', 'M', 10, 3, NULL, NULL, 26),
('Gaëlle', 'Maillard', '217, Montagne', 'Montréal', 'H3G 1ZB', '(514) 777/6434', 'gmaillard@vastetat.org', 'F', 10, 2, NULL, NULL, 27),
('Grégoire', 'Normand', '820, 19e Avenue', 'Montréal', 'H1Z 4J8', '(514) 666/5084', 'gnormand@seimensindustry.com', 'M', 10, 1, NULL, NULL, 28),
('Marguerite', 'Olive', '119, St-Jean', 'Québec', 'G1R 1S7', '(418) 222/1388', 'molive@kflbanquet.net', 'F', 10, 3, NULL, NULL, 29),
('Gabrielle', 'Ouelet', '447, Métropolitain Est', 'Chomedey', 'H7T 1C8', '(514) 333/2434', 'gouelet@switchcity.org', 'F', 10, 1, NULL, NULL, 30),
('Ange', 'Patel', '31, Bd Labelle Rosemere', 'Sainte-Thérèse', 'H7U 3J8', '(450) 666/4404', 'apatel@quebecassurances.net', 'F', 10, 2, NULL, NULL, 31),
('Jean-Marc', 'Vachon', '780, Bd Thibeau', 'Cap-de-la-Madeleine', 'G8T 6X5', '(819) 777/8504', 'vachonfrere@urgences.net', 'M', 10, 2, NULL, NULL, 32),
('Mérisa', 'Villeneuve', '91, rue Champlain', 'Dieppe', 'E1A 1N4', '(506) 111/0403', 'mvilleneuve@century12.com', 'F', 4, 4, NULL, NULL, 33),
('Camille', 'Turcotte', '30, Barkoff', 'Cap-de-la-Madeleine', 'G8T 2A3', '(819) 222/8503', 'cturcottepresident@trainvoiture.com', 'M', 10, 4, NULL, NULL, 34),
('Alexandra', 'Pelletier', '27, Av. des Pionniers', 'Balmoral', 'E4S 3J5', '(506) 222/8773', 'apelletier@bransonmo.net', 'F', 4, 4, NULL, NULL, 35),
('Samuel', 'VILLEMIN', '18 rue Aristide Hignard', '44000 - NANTES', NULL, '0651894788', 'samgassa@hotmail.fr', 'M', NULL, NULL, '123', 'client', 36),
('Paul', 'Babin', '325 Rue St-Pierre', 'Rivière-du-Loup', NULL, '12345', 'paul@gmail.com', 'M', NULL, NULL, '123', 'client', 37),
('Samuel', 'GASSAMA', '18 rue Aristide Hignard', '44000 - NANTES', NULL, '0651894788', 'sam@hotmail.fr', 'M', NULL, NULL, '123', 'client', 38),
('Lucas', 'VILLEMIN', '18 rue Aristide Hignard', '44000 - NANTES', NULL, '0651894788', 'lucas.villemin@hotmail.fr', 'M', NULL, NULL, '1234', 'client', 39),
('Samuel', 'VILLEMIN', '18 rue Aristide Hignard', '44000 - NANTES', NULL, '651894788', 'samgassa@hotmail.fr', 'M', NULL, NULL, '123', 'client', 40),
('admin', NULL, NULL, NULL, NULL, NULL, 'admin@admin.ca', NULL, NULL, NULL, 'admin', 'admin', 41);

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `codeDepartement` varchar(3) COLLATE utf8_bin NOT NULL,
  `nomDepartement` varchar(23) COLLATE utf8_bin DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id`, `codeDepartement`, `nomDepartement`, `region_id`) VALUES
(1, '1', 'Ain', 27),
(2, '10', 'Aube', 7),
(3, '11', 'Aude', 17),
(4, '12', 'Aveyron', 19),
(5, '13', 'Bouches-du-Rhône', 22),
(6, '14', 'Calvados', 4),
(7, '15', 'Cantal', 3),
(8, '16', 'Charente', 23),
(9, '17', 'Charente-Maritime', 23),
(10, '18', 'Cher', 8),
(11, '19', 'Corrèze', 15),
(12, '2', 'Aisne', 25),
(13, '21', 'Côte-d\'Or', 5),
(14, '22', 'Côtes-d\'Armor', 6),
(15, '23', 'Creuse', 15),
(16, '24', 'Dordogne', 2),
(17, '25', 'Doubs', 10),
(18, '26', 'Drôme', 27),
(19, '27', 'Eure', 13),
(20, '28', 'Eure-et-Loir', 8),
(21, '29', 'Finistère', 6),
(22, '2A', 'Corse-du-Sud', 9),
(23, '2B', 'Haute-Corse', 9),
(24, '3', 'Allier', 3),
(25, '30', 'Gard', 17),
(26, '31', 'Haute-Garonne', 19),
(27, '32', 'Gers', 19),
(28, '33', 'Gironde', 2),
(29, '34', 'Hérault', 17),
(30, '35', 'Ille-et-Vilaine', 6),
(31, '36', 'Indre', 8),
(32, '37', 'Indre-et-Loire', 8),
(33, '38', 'Isère', 27),
(34, '39', 'Jura', 10),
(35, '4', 'Alpes-de-Haute-Provence', 22),
(36, '40', 'Landes', 2),
(37, '41', 'Loir-et-Cher', 8),
(38, '42', 'Loire', 27),
(39, '43', 'Haute-Loire', 3),
(40, '44', 'Loire-Atlantique', 26),
(41, '45', 'Loiret', 8),
(42, '46', 'Lot', 19),
(43, '47', 'Lot-et-Garonne', 2),
(44, '48', 'Lozère', 17),
(45, '49', 'Maine-et-Loire', 26),
(46, '5', 'Hautes-Alpes', 22),
(47, '50', 'Manche', 4),
(48, '51', 'Marne', 7),
(49, '52', 'Haute-Marne', 7),
(50, '53', 'Mayenne', 26),
(51, '54', 'Meurthe-et-Moselle', 16),
(52, '55', 'Meuse', 16),
(53, '56', 'Morbihan', 6),
(54, '57', 'Moselle', 16),
(55, '58', 'Nièvre', 5),
(56, '59', 'Nord', 21),
(57, '6', 'Alpes-Maritimes', 22),
(58, '60', 'Oise', 25),
(59, '61', 'Orne', 4),
(60, '62', 'Pas-de-Calais', 21),
(61, '63', 'Puy-de-Dôme', 3),
(62, '64', 'Pyrénées-Atlantiques', 2),
(63, '65', 'Hautes-Pyrénées', 19),
(64, '66', 'Pyrénées-Orientales', 17),
(65, '67', 'Bas-Rhin', 1),
(66, '68', 'Haut-Rhin', 1),
(67, '69', 'Rhône', 27),
(68, '7', 'Ardèche', 27),
(69, '70', 'Haute-Saône', 10),
(70, '71', 'Saône-et-Loire', 5),
(71, '72', 'Sarthe', 26),
(72, '73', 'Savoie', 27),
(73, '74', 'Haute-Savoie', 27),
(74, '75', 'Paris', 14),
(75, '76', 'Seine-Maritime', 13),
(76, '77', 'Seine-et-Marne', 14),
(77, '78', 'Yvelines', 14),
(78, '79', 'Deux-Sèvres', 23),
(79, '8', 'Ardennes', 7),
(80, '80', 'Somme', 25),
(81, '81', 'Tarn', 19),
(82, '82', 'Tarn-et-Garonne', 19),
(83, '83', 'Var', 22),
(84, '84', 'Vaucluse', 22),
(85, '85', 'Vendée', 26),
(86, '86', 'Vienne', 23),
(87, '87', 'Haute-Vienne', 15),
(88, '88', 'Vosges', 16),
(89, '89', 'Yonne', 5),
(90, '9', 'Ariège', 19),
(91, '90', 'Territoire de Belfort', 10),
(92, '91', 'Essonne', 14),
(93, '92', 'Hauts-de-Seine', 14),
(94, '93', 'Seine-Saint-Denis', 14),
(95, '94', 'Val-de-Marne', 14),
(96, '95', 'Val-d\'Oise', 14),
(97, '971', 'Guadeloupe', 11),
(98, '972', 'Martinique', 18),
(99, '973', 'Guyanne', 12),
(100, '974', 'Réunion', 28),
(101, '987', 'Polynésie française', 24);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_04_183634_create_categorie_table', 0),
(6, '2021_11_04_183634_create_client_table', 0),
(7, '2021_11_04_183634_create_departement_table', 0),
(8, '2021_11_04_183634_create_failed_jobs_table', 0),
(9, '2021_11_04_183634_create_paiement_table', 0),
(10, '2021_11_04_183634_create_password_resets_table', 0),
(11, '2021_11_04_183634_create_personal_access_tokens_table', 0),
(12, '2021_11_04_183634_create_premiercontact_table', 0),
(13, '2021_11_04_183634_create_province_table', 0),
(14, '2021_11_04_183634_create_region_table', 0),
(15, '2021_11_04_183634_create_users_table', 0),
(16, '2021_11_04_183634_create_vente_table', 0),
(17, '2021_11_04_183634_create_voyage_table', 0),
(18, '2021_11_04_183635_add_foreign_keys_to_client_table', 0),
(19, '2021_11_04_183635_add_foreign_keys_to_departement_table', 0),
(20, '2021_11_04_183635_add_foreign_keys_to_paiement_table', 0),
(21, '2021_11_04_183635_add_foreign_keys_to_vente_table', 0),
(22, '2021_11_04_183635_add_foreign_keys_to_voyage_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `datePaiement` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `montantPaiement` decimal(7,2) DEFAULT NULL,
  `vente_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `paiement`
--

INSERT INTO `paiement` (`id`, `datePaiement`, `montantPaiement`, `vente_id`) VALUES
(1, '30-avr-18', '250.00', 1),
(2, '30-avr-18', '450.00', 2),
(3, '30-avr-18', '750.00', 3),
(4, '30-avr-18', '600.00', 4),
(5, '01-juin-18', '600.00', 5),
(6, '01-juin-18', '600.00', 6),
(7, '01-juin-18', '600.00', 7),
(8, '07-juil-18', '100.00', 8),
(9, '08-juil-18', '200.00', 9),
(10, '09-juil-18', '200.00', 10),
(11, '09-juil-18', '200.00', 11),
(12, '09-juil-18', '600.00', 12),
(13, '01-avr-18', '750.00', 13),
(14, '11-juil-18', '750.00', 14),
(15, '23-juil-18', '250.00', 15),
(16, '11-juil-18', '750.00', 16),
(17, '11-juil-18', '750.00', 17),
(18, '11-juil-18', '450.00', 18),
(19, '12-juil-18', '450.00', 19),
(20, '12-juil-18', '450.00', 20),
(21, '13-juil-18', '450.00', 21),
(22, '13-juil-18', '450.00', 22),
(23, '14-juil-18', '1000.00', 23),
(24, '14-juil-18', '600.00', 24),
(25, '15-juil-18', '600.00', 25),
(26, '15-juil-18', '600.00', 26),
(27, '15-juil-18', '600.00', 27),
(28, '19-juil-18', '350.00', 28),
(29, '20-juil-18', '400.00', 29),
(30, '20-juil-18', '400.00', 30),
(31, '21-juil-18', '400.00', 31),
(32, '22-juil-18', '300.00', 32),
(33, '22-juil-18', '300.00', 33),
(34, '26-juil-18', '300.00', 34),
(35, '26-juil-18', '250.00', 35),
(36, '26-juil-18', '300.00', 36),
(37, '26-juil-18', '250.00', 37),
(38, '26-juil-18', '150.00', 38),
(39, '02-janv-19', '150.00', 39),
(40, '02-janv-19', '200.00', 40),
(41, '01-mai-18', '750.00', 13),
(42, '23-juil-18', '750.00', 14),
(43, '11-juil-18', '750.00', 15),
(44, '20-juil-18', '750.00', 16),
(45, '01-juil-18', '100.00', 5),
(46, '30-mai-18', '250.00', 1),
(47, '30-mai-18', '100.00', 4),
(48, '07-août-18', '100.00', 8),
(49, '01-juil-18', '300.00', 6),
(50, '09-août-18', '100.00', 12),
(51, '14-août-18', '100.00', 12),
(52, '23-juil-18', '750.00', 17),
(53, '14-sept-18', '100.00', 24),
(54, '15-août-18', '100.00', 25),
(55, '15-août-18', '100.00', 27),
(56, '14-août-18', '200.00', 28),
(57, '19-août-18', '100.00', 98),
(58, '01-juil-18', '200.00', 7),
(59, '20-août-18', '100.00', 29),
(60, '20-août-18', '100.00', 30),
(61, '21-août-18', '100.00', 31),
(62, '11-août-18', '100.00', 18),
(63, '22-août-18', '100.00', 32),
(64, '12-août-18', '150.00', 19),
(65, '21-août-18', '100.00', 33),
(66, '01-sept-18', '100.00', 34),
(67, '01-sept-18', '50.00', 20),
(68, '01-sept-18', '50.00', 35),
(69, '01-oct-18', '100.00', 36),
(70, '01-oct-18', '100.00', 21),
(71, '01-juil-19', '100.00', 38),
(72, '01-déc-18', '200.00', 22),
(73, '01-juil-19', '100.00', 39),
(74, '30-juin-18', '250.00', 2),
(75, '01-juil-19', '50.00', 40),
(76, '01-août-18', '200.00', 5),
(77, '01-août-18', '200.00', 6),
(78, '01-août-18', '200.00', 7),
(79, '01-sept-18', '200.00', 7),
(80, '01-nov-18', '100.00', 21),
(81, '2021-12-09 00:43:51', '1500.00', 95),
(82, '2021-12-09 00:43:51', '850.00', 95),
(83, '2021-12-09 00:43:51', '750.00', 95),
(84, '2021-12-09 00:43:51', '1900.00', 95),
(85, '2021-12-09 01:37:00', '750.00', 96);

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `panier_id` int(11) NOT NULL,
  `quantiteVoyageur` int(11) NOT NULL,
  `voyage_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `premiercontact`
--

CREATE TABLE `premiercontact` (
  `id` int(11) NOT NULL,
  `premierContact` varchar(8) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `premiercontact`
--

INSERT INTO `premiercontact` (`id`, `premierContact`) VALUES
(1, 'Ami'),
(2, 'Autre'),
(3, 'Internet'),
(4, 'Radio');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `codeProvince` varchar(2) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province`, `codeProvince`) VALUES
(1, 'Alberta', 'AB'),
(2, 'Colombie-Britannique', 'BC'),
(3, 'Manitoba', 'MB'),
(4, 'Nouveau-Brunswick', 'NB'),
(5, 'Terre-Neuve-et-Labrador', 'NL'),
(6, 'Nouvelle-Écosse', 'NS'),
(7, 'Territoires du Nord-Ouest', 'NT'),
(8, 'Ontario', 'ON'),
(9, 'Île-du-Prince-Édouard', 'PE'),
(10, 'Québec', 'QC'),
(11, 'Saskatchewan', 'SK'),
(12, 'Territoires du Yukon', 'YT');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `codeRegion` varchar(4) COLLATE utf8_bin NOT NULL,
  `nomRegion` varchar(35) COLLATE utf8_bin DEFAULT NULL,
  `typeRegion` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `ancienNom` varchar(26) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `codeRegion`, `nomRegion`, `typeRegion`, `ancienNom`) VALUES
(1, 'AL', 'Alsace-Champagne-Ardenne-Lorraine', 'MET', 'Alsace'),
(2, 'AQ', 'Aquitaine-Limousin-Poitou-Charentes', 'MET', 'Aquitaine'),
(3, 'AU', 'Auvergne-Rhône-Alpes', 'MET', 'Auvergne'),
(4, 'BN', 'Normandie', 'MET', 'Basse-Normandie'),
(5, 'BO', 'Bourgogne-Franche-Comté', 'MET', 'Bourgogne'),
(6, 'BR', 'Bretagne', 'MET', 'Bretagne'),
(7, 'CA', 'Alsace-Champagne-Ardenne-Lorraine', 'MET', 'Champagne-Ardenne'),
(8, 'CE', 'Centre-Val de Loire', 'MET', 'Centre'),
(9, 'CO', 'Corse', 'MET', 'Corse'),
(10, 'FC', 'Bourgogne-Franche-Comté', 'MET', 'Franche-Comté'),
(11, 'GD', 'Guadeloupe', 'ROM', 'Guadeloupe'),
(12, 'GN', 'Guyane', 'ROM', 'Guyane'),
(13, 'HN', 'Normandie', 'MET', 'Haute-Normandie'),
(14, 'IF', 'Île-de-France', 'MET', 'Île-de-France'),
(15, 'LI', 'Aquitaine-Limousin-Poitou-Charentes', 'MET', 'Limousin'),
(16, 'LO', 'Alsace-Champagne-Ardenne-Lorraine', 'MET', 'Lorraine'),
(17, 'LR', 'Languedoc-Roussillon-Midi-Pyrénées', 'MET', 'Languedoc-Roussillon'),
(18, 'MA', 'Martinique', 'ROM', 'Martinique'),
(19, 'MP', 'Languedoc-Roussillon-Midi-Pyrénées', 'MET', 'Midi-Pyrrénées'),
(20, 'MY', 'Mayotte', 'COM', 'Mayotte'),
(21, 'NPC', 'Nord-Pas-de-Calais-Picardie', 'MET', 'Nord-Pas de Calais'),
(22, 'PACA', 'Provence-Alpes-Côte d\'Azur', 'MET', 'Provence-Alpes-Côte d\'Azur'),
(23, 'PC', 'Aquitaine-Limousin-Poitou-Charentes', 'MET', 'Poitou-Charentes'),
(24, 'PF', 'Polynésie Française', 'COM', 'Polynésie Française'),
(25, 'PI', 'Nord-Pas-de-Calais-Picardie', 'MET', 'Picardie'),
(26, 'PL', 'Pays-de-la-Loire', 'MET', 'Pays-de-la-Loire'),
(27, 'RA', 'Auvergne-Rhône-Alpes', 'MET', 'Rhône-Alpes'),
(28, 'RE', 'La Réunion', 'ROM', 'La Réunion'),
(29, 'SB', 'Saint-Barthélemy', 'COM', 'Saint-Barthélemy'),
(30, 'SM', 'Saint-Martin', 'COM', 'Saint-Martin'),
(31, 'WF', 'Wallis et Futuna', 'COM', 'Wallis et Futuna');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'GASSAMA SAMUEL', 'samgassa@hotmail.fr', NULL, '$2y$10$2uAy8hZECAxzfBXZmGequuhhupjt0sq.THb27dYWYsCwxVbstguO2', NULL, '2021-12-08 04:36:05', '2021-12-08 04:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `vente`
--

CREATE TABLE `vente` (
  `dateVente` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `voyage_id` int(11) DEFAULT NULL,
  `nbVoyageurs` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `vente`
--

INSERT INTO `vente` (`dateVente`, `client_id`, `voyage_id`, `nbVoyageurs`, `id`) VALUES
('30-avr-18', 6, 3, 3, 1),
('30-mars-18', 32, 1, 3, 2),
('31-mai-18', 34, 1, 2, 3),
('01-juin-18', 6, 47, 4, 4),
('01-juin-18', 4, 36, 5, 5),
('01-juin-18', 8, 36, 5, 6),
('01-juin-18', 15, 36, 2, 7),
('07-juil-18', 6, 51, 1, 8),
('08-juil-18', 7, 51, 3, 9),
('09-juil-18', 8, 51, 2, 10),
('09-juil-18', 9, 51, 2, 11),
('09-juil-18', 9, 36, 3, 12),
('11-juil-18', 1, 2, 4, 13),
('11-juil-18', 2, 2, 1, 14),
('11-juil-18', 3, 2, 2, 15),
('11-juil-18', 5, 2, 1, 16),
('11-juil-18', 11, 2, 4, 17),
('11-juil-18', 19, 3, 2, 18),
('12-juil-18', 21, 3, 3, 19),
('12-juil-18', 24, 3, 1, 20),
('13-juil-18', 28, 3, 2, 21),
('13-juil-18', 30, 3, 2, 22),
('14-juil-18', 10, 4, 2, 23),
('14-juil-18', 11, 5, 2, 24),
('15-juil-18', 12, 5, 3, 25),
('15-juil-18', 13, 5, NULL, 26),
('15-juil-18', 14, 5, NULL, 27),
('19-juil-18', 15, 6, NULL, 28),
('20-juil-18', 16, 6, NULL, 29),
('20-juil-18', 17, 6, NULL, 30),
('21-juil-18', 18, 6, NULL, 31),
('22-juil-18', 20, 7, NULL, 32),
('22-juil-18', 22, 7, NULL, 33),
('26-juil-18', 23, 7, NULL, 34),
('26-juil-18', 25, 8, NULL, 35),
('26-juil-18', 26, 8, NULL, 36),
('26-juil-18', 27, 9, NULL, 37),
('26-juil-18', 29, 9, NULL, 38),
('27-mai-18', 31, 9, NULL, 39),
('27-mai-18', 33, 9, NULL, 40),
('11-juin-18', 3, 12, NULL, 41),
('11-mai-18', 4, 2, NULL, 42),
('11-juil-18', 5, 2, NULL, 43),
('01-juin-18', 6, 36, NULL, 44),
('11-juil-18', 15, 2, NULL, 45),
('30-avr-18', 16, 1, NULL, 46),
('01-juin-18', 16, 36, NULL, 47),
('07-juil-18', 16, 51, NULL, 48),
('08-juil-18', 17, 51, NULL, 49),
('01-juin-18', 18, 36, NULL, 50),
('09-juil-18', 19, 51, NULL, 51),
('09-juil-18', 11, 51, NULL, 52),
('09-juil-18', 12, 36, NULL, 53),
('14-juil-18', 13, 4, NULL, 54),
('11-juil-18', 14, 2, NULL, 55),
('14-juil-18', 15, 5, NULL, 56),
('15-juil-18', 17, 5, NULL, 57),
('15-juil-18', 35, 5, NULL, 58),
('15-juil-18', 34, 5, NULL, 59),
('01-juin-18', 30, 36, NULL, 60),
('19-juil-18', 31, 6, NULL, 61),
('20-juil-18', 32, 6, NULL, 62),
('20-juil-18', 33, 6, NULL, 63),
('21-juil-18', 25, 6, NULL, 64),
('11-juil-18', 26, 3, NULL, 65),
('22-juil-18', 27, 7, NULL, 66),
('12-juil-18', 29, 2, NULL, 67),
('22-juil-18', 28, 7, NULL, 68),
('26-juil-18', 21, 7, NULL, 69),
('12-juil-18', 22, 3, NULL, 70),
('26-juil-18', 23, 8, NULL, 71),
('26-juil-18', 24, 8, NULL, 72),
('30-juin-18', 25, 1, NULL, 73),
('13-juil-18', 29, 3, NULL, 74),
('26-juil-18', 15, 9, NULL, 75),
('13-juil-18', 16, 3, NULL, 76),
('27-mai-18', 17, 10, NULL, 77),
('30-mars-18', 6, 1, NULL, 78),
('27-mai-18', 12, 10, NULL, 79),
('30-avr-18', 19, 1, NULL, 80),
('01-août-18', 1, 53, NULL, 81),
('01-sept-18', 2, 44, NULL, 82),
('2021-12-09 00:12:53', NULL, 2, 1, 83),
('2021-12-09 00:42:03', 36, 2, 1, 84),
('2021-12-09 00:42:03', 36, 3, 1, 85),
('2021-12-09 00:42:03', 36, 1, 1, 86),
('2021-12-09 00:42:03', 36, 4, 1, 87),
('2021-12-09 00:43:20', 36, 2, 1, 88),
('2021-12-09 00:43:20', 36, 3, 1, 89),
('2021-12-09 00:43:20', 36, 1, 1, 90),
('2021-12-09 00:43:20', 36, 4, 1, 91),
('2021-12-09 00:43:51', 36, 2, 1, 92),
('2021-12-09 00:43:51', 36, 3, 1, 93),
('2021-12-09 00:43:51', 36, 1, 1, 94),
('2021-12-09 00:43:51', 36, 4, 1, 95),
('2021-12-09 01:37:00', 36, 1, 1, 96);

-- --------------------------------------------------------

--
-- Table structure for table `voyage`
--

CREATE TABLE `voyage` (
  `id` int(11) NOT NULL,
  `nomVoyage` varchar(41) COLLATE utf8_bin DEFAULT NULL,
  `dateDebut` date DEFAULT NULL,
  `duree` int(2) DEFAULT NULL,
  `ville` varchar(24) COLLATE utf8_bin DEFAULT NULL,
  `prix` decimal(7,2) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `voyage`
--

INSERT INTO `voyage` (`id`, `nomVoyage`, `dateDebut`, `duree`, `ville`, `prix`, `departement_id`, `categorie_id`) VALUES
(1, 'Découverte marine', '2018-07-24', 7, 'Nice', '750.00', 57, 1),
(2, 'Club de plongée Baie de St-Jean', '2018-07-24', 6, 'Saint-Jean-Cap-Ferrat', '1500.00', 57, 1),
(3, 'Club de ski Cyclone', '2019-01-20', 7, 'Tarbes', '850.00', 63, 1),
(4, '6e Troupe de Scouts', '2019-01-31', 10, 'Lourdes', '1900.00', 63, 1),
(5, 'Jachères sauvages', '2019-03-05', 10, 'Arthès-de-Béarn', '1200.00', 62, 1),
(6, 'Réunion familiale Rizières', '2019-03-29', 7, 'Saintes-Maries de la Mer', '700.00', 5, 4),
(7, 'Club de ski Aéronautes', '2019-03-31', 7, 'Châtel', '600.00', 73, 1),
(8, 'Réunion de la famille Lavoie-Mercier', '2019-06-30', 7, 'Bonifacio', '500.00', 22, 4),
(9, 'Séjours séniors en forme', '2019-07-08', 4, 'Bastia', '250.00', 23, 1),
(10, 'Troupe de dance Flamenco', '2018-06-10', 5, 'Arles', '550.00', 5, 7),
(11, 'Omaha Alpha Phi', '2018-06-17', 7, 'Dunkerke', '725.00', 57, 7),
(12, 'Mariage Barilla-Cavuto', '2018-06-17', 7, 'Foix', '825.00', 90, 4),
(13, 'Grands Aventuriers', '2018-06-23', 7, 'Privas', '575.00', 68, 1),
(14, 'Grimpeurs-randonneurs', '2018-06-30', 4, 'Morez', '400.00', 34, 7),
(15, 'Club de débat les Patriotes', '2018-06-30', 7, 'Paris', '605.00', 74, 7),
(16, 'Exploration des calanques', '2018-07-07', 7, 'Cassis', '655.00', 5, 1),
(17, 'Club de randonnée sauvage du Buech', '2018-07-07', 7, 'Aspres-sur-Buech', '695.00', 46, 1),
(18, 'Paradis tropical', '2018-07-07', 7, 'Antibes', '595.00', 57, 1),
(19, 'Découverte de Nous', '2018-07-14', 5, 'Moustier', '550.00', 83, 1),
(20, 'Réserve naturelle de Scandolo', '2018-07-17', 7, 'Porto', '700.00', 23, 1),
(21, 'Vagues idéales', '2018-07-17', 5, 'Capbreton', '500.00', 36, 1),
(22, 'Jeunes forestiers bénévoles', '2018-07-15', 7, 'Orcines', '395.00', 61, 2),
(23, 'Jeunes bénévoles de Saint-Denis', '2018-07-17', 7, 'Saint-Denis', '425.00', 100, 2),
(24, 'Association des jeunes d\'Emmanuelle', '2018-07-19', 7, 'Paris', '500.00', 74, 2),
(25, 'Mariage Metayer-Michel', '2018-07-20', 3, 'Papeete', '300.00', 101, 4),
(26, 'Réunion de la famille Merlot', '2018-07-20', 3, 'Hyacinthe', '350.00', 98, 4),
(27, 'Réunion de la famille Barchon', '2018-07-20', 4, 'Les Anses d\'Arlet', '395.00', 98, 4),
(28, 'Pays de l\'or', '2018-07-31', 14, 'Saint-Girons', '1200.00', 90, 5),
(29, 'Mystères du Rhône', '2018-08-01', 7, 'Lyon', '800.00', 67, 5),
(30, 'Jazz à Juan-les-Pins', '2018-07-31', 7, 'Juan-les-Pins', '890.00', 57, 5),
(31, 'Cinq jours au Paradis', '2019-08-08', 5, 'Hatiheu (Nuku Hiva)', '1600.00', 101, 5),
(32, 'Magazinage sur les Champs-Élysées', '2018-09-11', 7, 'Paris', '1000.00', 74, 5),
(33, 'Architecture coloniale en Guyane', '2018-09-06', 14, 'Saint-Laurent-du-Maroni', '3000.00', 99, 5),
(34, 'Visites du patrimoine de la Liberté', '2018-09-11', 7, 'Paris', '1000.00', 74, 5),
(35, 'Héritage de la noblesse européenne', '2018-09-11', 7, 'Versailles', '1200.00', 77, 5),
(36, 'Musée de volcanologie', '2018-10-02', 7, 'Saint-Denis', '800.00', 100, 5),
(37, 'Fondation pour la préservation de l\'eau', '2018-10-09', 14, 'Rueil-Malmaison', '1300.00', 93, 5),
(38, 'La Nef des Sciences', '2018-08-07', 7, 'Mulhouse', '1000.00', 66, 5),
(39, 'Laboratoire forestier de l\'Ébène vert', '2018-10-17', 14, 'Cambrouze', '1500.00', 99, 5),
(40, 'Musée de préhistoire des gorges du Verdon', '2018-11-06', 10, 'Quinson', '900.00', 35, 7),
(41, 'Échanges en langue française', '2018-09-06', 7, 'Brest', '800.00', 21, 7),
(42, 'Échanges culturels Francophonie-Chine', '2018-09-06', 4, 'Limoges', '424.00', 87, 3),
(43, 'Aventures à la Vallée des Ours', '2018-09-06', 7, 'Arbas', '725.00', 26, 1),
(44, 'Club de randonnée du Mouton noir', '2018-09-13', 4, 'Ajaccio', '525.00', 22, 1),
(45, 'Oueds et Rios radeau', '2018-07-31', 4, 'Guillestre', '455.00', 46, 1),
(46, 'Amicale de dépollution du Mont-Blanc', '2018-08-07', 14, 'Chamonix Mont Blanc', '1100.00', 73, 2),
(47, 'Les bâtisseurs de villages perdus', '2016-08-01', 10, 'Lamothe', '950.00', 36, 2),
(48, 'Viaduc de Millau', '2018-07-31', 10, 'Milleau', '1400.00', 4, 3),
(50, 'Les grands musées d\'art et d\'histoire', '2018-08-07', 9, 'Paris', '800.00', 74, 5),
(51, 'Club de randonnée des canyons du Verdon', '2016-01-08', 7, 'Esparron de Verdon', '950.00', 35, 1),
(52, 'Visite de Paris, vue de la Seine', '2018-12-19', 4, 'Paris', '700.00', 74, 7),
(53, 'Séjour de pèche en rivière d\'altitude', '2018-08-31', 7, 'Cazères', '1400.00', 26, 1),
(54, 'Traversée de la Baie du Mont St-Michel', '2019-10-25', 4, 'Le Mont St-Michel', '500.00', 47, 7),
(55, 'Feux d\'artifice du 1er aout', '2019-07-31', 3, 'Châtel', '300.00', 73, 7),
(56, 'Conservatoire du Saumon', '2019-05-05', 4, 'Chanteuges', '800.00', 39, 1),
(57, 'La Venise des Alpes', '2019-07-04', 3, 'Annecy', '500.00', 73, 7),
(58, 'Croisière épique en Méditerranée', '2019-08-01', 10, 'Marseille', '2000.00', 5, 1),
(59, 'Rapaces du Puy-de-Dôme', '2019-01-09', 7, 'Orcines', '700.00', 61, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie` (`categorie`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prenom` (`prenom`,`nom`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `premierContact_id` (`premierContact_id`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomDepartement` (`nomDepartement`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vente_id` (`vente_id`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`panier_id`),
  ADD KEY `fk_voyage` (`voyage_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `premiercontact`
--
ALTER TABLE `premiercontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `province` (`province`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomRegion` (`nomRegion`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomVoyage` (`nomVoyage`),
  ADD KEY `departement_id` (`departement_id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `departement`
--
ALTER TABLE `departement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `panier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `premiercontact`
--
ALTER TABLE `premiercontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vente`
--
ALTER TABLE `vente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`),
  ADD CONSTRAINT `client_ibfk_2` FOREIGN KEY (`premierContact_id`) REFERENCES `premiercontact` (`id`);

--
-- Constraints for table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`);

--
-- Constraints for table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`vente_id`) REFERENCES `vente` (`id`);

--
-- Constraints for table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `fk_voyage` FOREIGN KEY (`voyage_id`) REFERENCES `voyage` (`id`);

--
-- Constraints for table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`voyage_id`) REFERENCES `voyage` (`id`);

--
-- Constraints for table `voyage`
--
ALTER TABLE `voyage`
  ADD CONSTRAINT `voyage_ibfk_1` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`),
  ADD CONSTRAINT `voyage_ibfk_2` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
