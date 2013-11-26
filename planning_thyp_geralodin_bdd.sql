-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 15 Novembre 2013 à 22:45
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `hypermedia`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `idcours` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profs_idprofs` int(11) NOT NULL,
  `salle_idsalle` int(11) NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `types_idtypes` int(11) NOT NULL,
  PRIMARY KEY (`idcours`),
  KEY `fk_cours_profs1_idx` (`profs_idprofs`),
  KEY `fk_cours_salle1_idx` (`salle_idsalle`),
  KEY `types_idtypes` (`types_idtypes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`idcours`, `name`, `profs_idprofs`, `salle_idsalle`, `heure_debut`, `heure_fin`, `types_idtypes`) VALUES
(1, 'Video et Hypermedia', 1, 1, '09:00:00', '12:00:00', 1),
(2, 'Theorie de Hypermedia', 2, 1, '09:00:00', '12:00:00', 1),
(3, 'Design et Hypermedia', 3, 1, '09:00:00', '12:00:00', 1),
(4, 'Base de Donnees, Multimedia et Indexation', 4, 2, '12:00:00', '15:00:00', 2),
(5, 'Langages Hypermedias', 5, 1, '12:00:00', '15:00:00', 2),
(6, 'Les Outils de Conduite de Projets', 7, 1, '12:00:00', '15:00:00', 2),
(7, 'Rencontres Medias', 5, 2, '15:00:00', '18:00:00', 3),
(8, 'E-Services', 3, 1, '15:00:00', '18:00:00', 3),
(9, 'Integration Web', 4, 2, '15:00:00', '18:00:00', 3);

-- --------------------------------------------------------

--
-- Structure de la table `profs`
--

CREATE TABLE IF NOT EXISTS `profs` (
  `idprofs` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofs`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `profs`
--

INSERT INTO `profs` (`idprofs`, `first_name`, `last_name`) VALUES
(1, 'Bellos', 'Stavroula'),
(2, 'Philippe ', 'BOOTZ'),
(3, 'Imad ', 'SALEH'),
(4, 'Nasreddine ', 'BOUHAI'),
(5, 'Samuel ', 'Szonieck'),
(6, 'projets tutores', 'projets tutores'),
(7, 'Khaldoun ', 'ZREIK');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE IF NOT EXISTS `salle` (
  `idsalle` int(11) NOT NULL AUTO_INCREMENT,
  `reference` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsalle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`idsalle`, `reference`) VALUES
(1, 'A190'),
(2, 'A175');

-- --------------------------------------------------------

--
-- Structure de la table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`idusers`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `students`
--

INSERT INTO `students` (`idusers`, `first_name`, `last_name`, `photo`) VALUES
(1, 'Salim', 'Mehdi', 'src="http://lh4.ggpht.com/-2nQfIux5-Ps/UlEOcn6gBWI/AAAAAAAAAAs/YILaAcWXqLk/s288/CAM00043.jpg" alt="CAM00043.jpg"/>'),
(2, 'Katia', 'Himeur', 'src="http://lh6.ggpht.com/--CvdJqDMeNM/UlEOam-O4qI/AAAAAAAAAAc/qMoylJE7JyM/s288/CAM00044.jpg" alt="CAM00044.jpg"/>'),
(3, 'Jihane', 'Moustakbal ', 'src="http://lh6.ggpht.com/-kLGcJ_QyAbU/UlEOcG3YpsI/AAAAAAAAAAo/hA3Me8a8EIA/s288/CAM00045.jpg" alt="CAM00045.jpg"/>'),
(4, 'Frihmat', 'El', 'src="http://lh5.ggpht.com/-1mp0t0va-eo/UlEOegkFXeI/AAAAAAAAAA4/cPUCbW_fm5g/s288/CAM00047.jpg" alt="CAM00047.jpg"/>'),
(5, 'Firdaous', 'Boumarsel', 'src="http://lh5.ggpht.com/-LGS2WxWRMrI/UlEOfHrfBLI/AAAAAAAAAD0/HHXf5jIM-64/s288/CAM00048.jpg" alt="CAM00048.jpg"/>'),
(6, 'Maroua', 'SAID', 'src="http://lh4.ggpht.com/-OfWnOaFWzFY/UlEOg39zabI/AAAAAAAAABI/yKJjVto8oz0/s288/CAM00049.jpg" alt="CAM00049.jpg"/>'),
(7, 'unknown0', 'unknown0', 'src="http://lh6.ggpht.com/-h7KPaIEV9f4/UlEOjTY3qPI/AAAAAAAAABY/R9W-UMsdZ1Y/s288/CAM00050.jpg" alt="CAM00050.jpg"/>'),
(8, 'Soukaina', 'Chttou', 'src="http://lh6.ggpht.com/-VwQWFoNxrjY/UlEOh8uZviI/AAAAAAAAABM/LJvUUe5pbD4/s288/CAM00051.jpg" alt="CAM00051.jpg"/>'),
(9, 'REMKI', 'Billel', 'src="http://lh4.ggpht.com/-4AlY6wzdzn0/UlEOknow0gI/AAAAAAAAABg/arLpMR06j3Y/s288/CAM00052.jpg" alt="CAM00052.jpg"/>'),
(10, 'Naoufel', 'Ghandri', 'src="http://lh5.ggpht.com/-TEFM0UIP54c/UlEOlN7_RXI/AAAAAAAAABo/E_6t19P1PUI/s288/CAM00053.jpg" alt="CAM00053.jpg"/>'),
(11, 'Abdelhafid', 'Bouchentouf', 'src="http://lh5.ggpht.com/-Z-yN5uKkyFM/UlEOlxSQvjI/AAAAAAAAABs/FGszR0K1Vrk/s288/CAM00055.jpg" alt="CAM00055.jpg"/>'),
(12, 'unknown1', 'unknown1', 'src="http://lh3.ggpht.com/-BheDcB64Fck/UlEOoLFd7kI/AAAAAAAAAFs/x-ZfP7PgY0A/s288/CAM00056.jpg" alt="CAM00056.jpg"/>'),
(13, 'Géralodin', 'RANDRIAMBOLOLONTSOA', 'src="http://lh3.ggpht.com/-akh9afwZ--8/UlEOpBcRgQI/AAAAAAAAACE/7JVvAFbCu2g/s288/CAM00057.jpg" alt="CAM00057.jpg"/>'),
(14, 'Souhail', 'Ouhsine', 'src="http://lh3.ggpht.com/-fslXC5AgeMQ/UlEOpW-clpI/AAAAAAAAACI/srT2j1Fqmn0/s288/CAM00059.jpg" alt="CAM00059.jpg"/>'),
(15, 'unknown2', 'unknown2', 'src="http://lh3.ggpht.com/-PA85arMRd8Q/UlEOqVE4hVI/AAAAAAAAACM/uX8S46j2BK4/s288/CAM00060.jpg" alt="CAM00060.jpg"/>'),
(16, 'unknown3', 'unknown3', 'src="http://lh4.ggpht.com/-berXVUwUsgE/UlaIoKxZlEI/AAAAAAAAACw/8j5deyKofwc/s288/CAM00063%25255B1%25255D.jpg" alt="CAM00063[1].jpg"/>'),
(17, 'unknown4', 'unknown4', 'src="http://lh3.ggpht.com/-driLJi3wuok/UlaIrRu7j-I/AAAAAAAAAHI/i-EbE8Uc9GU/s288/CAM00064%25255B1%25255D.jpg" alt="CAM00064[1].jpg"/>'),
(18, 'Souhail', 'JEBALI', 'src="http://lh5.ggpht.com/-1VffkA_yN1A/UlaIvz0vFcI/AAAAAAAAADA/sCBsIv7ZzUA/s288/CAM00065%25255B1%25255D.jpg" alt="CAM00065[1].jpg"/>'),
(19, 'unknown5', 'unknown5', 'src="http://lh4.ggpht.com/-xO37ImLLoY8/UnsapgTmAxI/AAAAAAAAAGg/tmxZuyfisjE/s288/CAM00077.jpg" alt="CAM00077.jpg"/>'),
(20, 'unknown6', 'unknown6', 'src="http://lh5.ggpht.com/-_8CwXCxN-bg/Unsaq0LqIKI/AAAAAAAAAGo/h5opb_yrWEk/s288/CAM00078.jpg" alt="CAM00078.jpg"/>');

-- --------------------------------------------------------

--
-- Structure de la table `students_has_cours`
--

CREATE TABLE IF NOT EXISTS `students_has_cours` (
  `students_idusers` int(11) NOT NULL,
  `cours_idcours` int(11) NOT NULL,
  `date_du_jour` date NOT NULL,
  `presence` tinyint(1) NOT NULL,
  `absence` tinyint(1) DEFAULT NULL,
  `retard` tinyint(1) DEFAULT NULL,
  `excuse` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`students_idusers`,`cours_idcours`,`date_du_jour`),
  KEY `fk_students_has_cours_cours1_idx` (`cours_idcours`),
  KEY `fk_students_has_cours_students_idx` (`students_idusers`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `idtypes` int(11) NOT NULL AUTO_INCREMENT,
  `intitule` varchar(255) NOT NULL,
  PRIMARY KEY (`idtypes`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `types`
--

INSERT INTO `types` (`idtypes`, `intitule`) VALUES
(1, 'matin'),
(2, 'midi'),
(3, 'apres-midi');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
