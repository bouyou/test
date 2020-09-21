-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 17 sep. 2020 à 13:36
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `borne`
--

-- --------------------------------------------------------

--
-- Structure de la table `borne`
--

DROP TABLE IF EXISTS `borne`;
CREATE TABLE IF NOT EXISTS `borne` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `X` int DEFAULT NULL,
  `Y` int DEFAULT NULL,
  `amenageur` varchar(255) DEFAULT NULL,
  `operateur` varchar(255) DEFAULT NULL,
  `enseigne` varchar(255) DEFAULT NULL,
  `idstation` varchar(255) DEFAULT NULL,
  `station` varchar(255) DEFAULT NULL,
  `adstation` varchar(255) DEFAULT NULL,
  `codeinsee` varchar(255) DEFAULT NULL,
  `Xlongitude` varchar(255) DEFAULT NULL,
  `Ylatitude` varchar(255) DEFAULT NULL,
  `nbrepdc` varchar(255) DEFAULT NULL,
  `idpdc` varchar(255) DEFAULT NULL,
  `puissmax` varchar(255) DEFAULT NULL,
  `typeprise` varchar(12) DEFAULT NULL,
  `accesrecharge` varchar(255) DEFAULT NULL,
  `accessibilité` varchar(255) DEFAULT NULL,
  `observations` varchar(255) DEFAULT NULL,
  `date_maj` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `borne`
--

INSERT INTO `borne` (`X`, `Y`, `amenageur`, `operateur`, `enseigne`, `idstation`, `station`, `adstation`, `codeinsee`, `Xlongitude`, `Ylatitude`, `nbrepdc`, `idpdc`, `puissmax`, `typeprise`, `accesrecharge`, `accessibilité`, `observations`, `date_maj`) VALUES
('2.605599', '49.0055348996909', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.605599', '49.005534899691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929542', '2020-03-16T23:00:00.000Z'),
('2.605668', '49.005528799691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '3.605668', '45.005528799691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929541', '2020-03-16T23:00:00.000Z'),
('2.6057369', '49.005522799691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '1.4557369', '48.005522799691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929540', '2020-03-16T23:00:00.000Z'),
('2.6058059', '49.005516699691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.6058059', '49.005516699691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929539', '2020-03-16T23:00:00.000Z'),
('2.6058749', '49.005510699691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.6058749', '49.005510699691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929538', '2020-03-16T23:00:00.000Z'),
('2.6059438', '49.005504599691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.6059438', '49.005504599691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929537', '2020-03-16T23:00:00.000Z'),
('2.6060128', '49.005498599691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.6060128', '49.005498599691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929536', '2020-03-16T23:00:00.000Z'),
('2.6060818', '49.005492499691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.6060818', '49.005492499691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929535', '2020-03-16T23:00:00.000Z'),
('2.6061495', '49.005486599691', 'Aéroports de Paris SA', 'Sodetrel', 'Paris Aéroports', 'FR*SOD*P*GADP*5*_*_*_', 'false', 'false', '77294', '2.6061495', '49.005486599691', '2', 'false', 'false', 'type2,typee', 'Gratuit', '24/7', 'node/7303929534', '2020-03-16T23:00:00.000Z')
COMMIT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;