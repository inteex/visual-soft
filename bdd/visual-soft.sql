-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 14 Février 2018 à 18:43
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `visual-soft`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`) VALUES
(1, 'reda'),
(2, 'salim');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(3) NOT NULL,
  `date` date NOT NULL,
  `nom` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contacts`
--

INSERT INTO `contacts` (`id`, `date`, `nom`, `mail`, `telephone`, `message`) VALUES
(1, '2018-02-28', 're', 're', 're', 're'),
(3, '0000-00-00', '2', '3', '4', '5'),
(4, '0118-01-01', 'reda', '', 'aze', 'aze'),
(5, '2018-02-09', 'reda', '', '', '&'),
(6, '2018-02-09', 'reda', '', '', '&aazaz'),
(7, '2018-02-12', 'tabet oual salim', 'gotlm@gmail.com', '0698012154', 'salut, bon site con continuation !! :D ');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `description` text,
  `prix` float NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantite` int(5) NOT NULL,
  `ficheT` varchar(255) DEFAULT NULL,
  `id_Sous_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `image`, `quantite`, `ficheT`, `id_Sous_categories`) VALUES
(1, 'portable', 'portableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportableportable', 1203, 'portable', 5, 'portableTTTTTT', 1),
(2, 'camera', 'super camera 180°', 2500, '2', 0, 'je ne saias pas ', 4),
(3, 'loooooooool', 'loooooooool', 123, 'azeazeq', 0, 'qsdqsdqqq', 4),
(4, 'wifi', 'WI-fi 2,4 GHZ mohime mleh we hadi une description cahbba description cahbba \r\nmohime mleh we hadi une', 450, 'azeazeq', 0, 'qsdqsdqqq', 4);

-- --------------------------------------------------------

--
-- Structure de la table `sous_categories`
--

CREATE TABLE `sous_categories` (
  `id` int(11) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sous_categories`
--

INSERT INTO `sous_categories` (`id`, `nom`, `id_categories`) VALUES
(1, 'reda', 1),
(2, 'salim', 1),
(3, 'reda', 1),
(4, 'salim', 1),
(5, 'reda', 2),
(6, 'ibra', 2);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Produits_id_Sous_categories` (`id_Sous_categories`);

--
-- Index pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Sous_categories_id_categories` (`id_categories`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `FK_Produits_id_Sous_categories` FOREIGN KEY (`id_Sous_categories`) REFERENCES `sous_categories` (`id`);

--
-- Contraintes pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  ADD CONSTRAINT `FK_Sous_categories_id_categories` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
