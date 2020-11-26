-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 10.16.1.188:32768
-- Généré le : jeu. 26 nov. 2020 à 05:43
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
  `titre` varchar(250) NOT NULL,
  `date` varchar(4) NOT NULL,
  `note` varchar(3) NOT NULL,
  `genre` varchar(250) NOT NULL,
  `realisateur` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `date`, `note`, `genre`, `realisateur`, `image`, `description`) VALUES
(1, 'HOLD-UP', '2020', '3', 'Documentaire', 'Pierre Barnérias', '/images/hold-up.jpg', 'Hold-Up : Retour sur un chaos est un film documentaire indépendant conspirationniste français sorti le 11 novembre 2020. Il a été produit par Pierre Barnérias, Nicolas Réoutsky et Christophe Cossé et dure 2 h 43 min.'),
(2, 'John Wick: Parabellum', '2019', '4,5', 'Action', 'Chad Stahelski', '/images/john-wick-3.jpg', 'John Wick a transgressé une règle fondamentale : il a tué à l\'intérieur même de l\'Hôtel Continental. Excommunié, tous les services liés au Continental lui sont fermés et sa tête mise à prix. John se retrouve sans soutien, traqué par tous les plus dangereux tueurs du monde.'),
(3, 'Coco', '2017', '4,5', 'Animation', 'Adrian Molina', '/images/coco.jpg', 'Depuis plusieurs générations, la musique est bannie dans la famille de Miguel. Un vrai déchirement pour le jeune garçon dont le rêve est de devenir un musicien aussi accompli que son idole, Ernesto de la Cruz. Bien décidé à prouver son talent, Miguel, par un étrange concours de circonstances, se retrouve propulsé dans un endroit aussi étonnant que coloré : le Pays des Morts. Là, il se lie d\'amitié avec Hector, un gentil garçon mais un peu filou sur les bords.'),
(4, 'Ça : Chapitre 2', '2019', '3', 'Horreur', 'Andrés Muschietti', '/images/ca-2.jpg', 'Tous les 27 ans, une créature maléfique revient hanter les rues de Derry, dans le Maine. Près de trente ans après les événements du premier opus, les membres du Club des Ratés, désormais adultes, se retrouvent.'),
(5, 'Les Aventuriers de l\'arche perdue', '1981', '4', 'Aventure', 'Steven Spielberg', '/images/ladap.jpg', 'Professeur d\'archéologie, Indiana Jones parcourt le monde à la recherche de trésors. Son rival, le Français René Belloq, travaille pour les nazis qui rêvent de retrouver l\'Arche d\'alliance contenant les Tables de la Loi. Or, feu le professeur Ravenwood, père de Marion, l\'ex-petite amie d\'Indiana Jones, détenait une médaille permettant de localiser l\'arche. Jones part sur les traces de Marion au Népal.'),
(6, 'Derrière nos écrans de fumée', '2020', '4,8', 'Documentaire', 'Jeff Orlowski', '/images/dnedf.jpeg', 'Dans ce documentaire inédit, des spécialistes, des militants ou encore des anciens employés des géants de la technologie nous ouvrent les yeux sur la vérité cachée derrière nos écrans. Ils sonnent l\'alarme concernant certaines de leurs inventions, qui provoquent des addictions et déstabilisent les démocraties.'),
(7, 'E.T. l\'extra-terrestre', '1982', '4,5', 'Science-fiction', 'Steven Spielberg', '/images/et.jpg', 'Une soucoupe volante atterrit en pleine nuit près de Los Angeles. Quelques extraterrestres, envoyés sur Terre en mission d\'exploration botanique, sortent de l\'engin, mais un des leurs s\'aventure au-delà de la clairière où se trouve la navette. Celui-ci se dirige alors vers la ville. C\'est sa première découverte de la civilisation humaine. Bientôt traquée par des militaires et abandonnée par les siens, cette petite créature apeurée se nommant E.T. se réfugie dans une résidence de banlieue.'),
(8, 'Rambo', '1983', '4,7', 'Action', 'Ted Kotcheff', '/images/rambo.jpeg', 'Revenu du Viêtnam, abruti autant par les mauvais traitements que lui ont jadis infligés ses tortionnaires que par l\'indifférence de ses concitoyens, le soldat Rambo, un ancien des commandos d\'élite, traîne sa redoutable carcasse de ville en ville. Un shérif teigneux lui interdit l\'accès de sa bourgade. Rambo insiste. Il veut seulement manger. Le shérif le met sous les verrous et laisse son adjoint brutaliser ce divertissant clochard.'),
(9, 'Annabelle', '2014', '3,8', 'Horreur', 'John R. Leonetti', '/images/annabelle.jpg', 'Été 1969, John et Mia, qui attendent leur premier enfant, viennent d\'emménager dans une maison à Santa Monica. John, qui ne sait comment choyer son épouse, lui a offert une poupée ancienne. La nuit suivante, ils sont sauvagement attaqués par un couple lié à une secte satanique. La police leur porte secours rapidement, abattant l\'homme tandis que sa compagne se tranche la gorge, laissant couler quelques gouttes de sang dans l\'oeil de la poupée.'),
(10, 'Le voyage d\'Arlo', '2015', '4,1', 'Animation', 'Peter Sohn', '/images/lvda.jpg', 'Si la catastrophe cataclysmique qui a bouleversé la Terre et provoqué l\'extinction des dinosaures n\'avait jamais eu lieu ? Si les dinosaures ne s\'étaient jamais éteints, et vivaient parmi nous de nos jours ? Arlo, jeune Apatosaure au grand coeur, maladroit et craintif, qui va faire la rencontre et prendre sous son aile un étonnant compagnon : un petit garçon sauvage, très dégourdi, prénommé Spot.'),
(11, 'Bienvenu à Zombieland', '2009', '4,5', 'Comédie', 'Ruben Fleischer', '/images/zombieland.jpg', 'Suite à une mutation du virus de la vache folle, les humains sont transformés en zombies. Deux survivants que tout oppose, sillonnent les routes et affrontent les zombies qui grouillent aux quatre coins du pays.'),
(12, 'Guardians of the Tomb', '2018', '2', 'Aventure', 'Kimble Rendall', '/images/gott.jpg', 'Experte en animaux venimeux, le docteur Jia se rend dans l\'ouest de la Chine à la recherche de son frère, disparu alors qu\'il faisait des recherches dans une tombe renfermant, depuis des siècles, la momie d\'un empereur. Sur place, Jia rejoint une mission de sauvetage et découvre vite que son frère a été attaqué par des araignées sanguinaires.'),
(13, 'FBI : Fausses blondes infiltrées', '2004', '4,8', 'Comédie', 'Keenen Ivory Wayans', '/images/fbi.jpg', 'Deux agents du FBI sont chargés de la protection de deux riches héritières écervelées dont ils vont prendre la place pour piéger de possibles kidnappeurs.'),
(14, 'King Kong', '2005', '4,5', 'Aventure', 'Peter Jackson', '/images/king-kong.jpg', 'New York, 1933. Ann Darrow est une artiste de music-hall dont la carrière a été brisée net par la Dépression. Se retrouvant sans emploi ni ressources, la jeune femme rencontre l\'audacieux explorateur-réalisateur Carl Denham et se laisse entraîner dans la plus périlleuse des aventures. Ce dernier a dérobé à ses producteurs le négatif de son film inachevé. Il n\'a que quelques heures pour trouver une nouvelle star et l\'embarquer pour Singapour avec son scénariste, Jack Driscoll, et une équipe.'),
(15, 'District 9', '2009', '4,6', 'Science-fiction', 'Peter Jackson', '/images/district-9.jpg', 'Il y a plus de 20 ans, des extraterrestres en panne de vaisseau au-dessus de l\'Afrique du Sud ont demandé asile aux Terriens. Ce droit accordé, ils ont été installés dans un camp de la banlieue de Johannesburg, le District 9. Au fil des ans, la situation s\'est dégradée. Leur camp est devenu un ghetto et le voisinage se montre de plus en plus hostile à leur égard.');

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
