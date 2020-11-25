-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 10.16.1.188:32768
-- Généré le : mar. 24 nov. 2020 à 05:05
-- Version du serveur :  10.5.8-MariaDB-1:10.5.8+maria~focal
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `note` varchar(250) NOT NULL,
  `genre` varchar(250) NOT NULL,
  `realisateur` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `nom`, `date`, `note`, `genre`, `realisateur`) VALUES
(1, 'HOLD-UP', '2020', '3', 'Documentaire', 'Pierre Barnérias'),
(2, 'John Wick: Parabellum', '2019', '4,5', 'Action', 'Chad Stahelski'),
(3, 'Coco', '2017', '4,5', 'Animation', 'Adrian Molina'),
(4, 'Ça : Chapitre 2', '2019', '3', 'Horreur', 'Andrés Muschietti'),
(5, 'Les Aventuriers de l\'arche perdue', '1981', '4', 'Aventure', 'Steven Spielberg'),
(6, 'Derrière nos écrans de fumée', '2020', '4,8', 'Documentaire', 'Jeff Orlowski'),
(7, 'E.T., l\'extra-terrestre', '1982', '4,5', 'Science-fiction', 'Steven Spielberg'),
(8, 'Rambo', '1983', '4,7', 'Action', 'Ted Kotcheff'),
(9, 'Annabelle', '2014', '3,8', 'Horreur', 'John R. Leonetti'),
(10, 'Le voyage d\'Arlo', '2015', '4,1', 'Animation', 'Peter Sohn'),
(11, 'Bienvenu à Zombieland', '2009', '4,5', 'Comédie', 'Ruben Fleischer'),
(12, 'Guardians of the Tomb', '2018', '2', 'Aventure', 'Kimble Rendall'),
(13, 'FBI : Fausses blondes infiltrées', '2004', '4,8', 'Comédie', 'Keenen Ivory Wayans'),
(14, 'King Kong', '2005', '4,5', 'Aventure', 'Peter Jackson'),
(15, 'District 9', '2009', '4,6', 'Science-fiction', 'Peter Jackson');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
