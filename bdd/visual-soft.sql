-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 30 Mars 2018 à 00:36
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

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

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `user`, `mdp`) VALUES
(1, 'salim@tabet', 'azerty13.');

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
(1, 'Equipement Réseaux'),
(2, 'Matériel Informatique'),
(3, 'Standard Telephonique'),
(4, 'Control D\'accés'),
(5, 'Surveillance');

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
-- Structure de la table `pack`
--

CREATE TABLE `pack` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id_produit_pack` int(11) NOT NULL,
  `image` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `ficheT` varchar(30) DEFAULT NULL,
  `id_Sous_categories` int(11) NOT NULL,
  `dateAjout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `image`, `quantite`, `ficheT`, `id_Sous_categories`, `dateAjout`) VALUES
(9, 'azerty', 'azerty123', 1, '3614_(1080x1349).JPG', 1, NULL, 12, '2018-03-01'),
(11, 'MVMT', 'Montre classe', 1, '1.jpg', 1, NULL, 10, '2018-02-20'),
(12, 'dz', 'dz', 1, 'oYKlsG9Dh6yyiAAngTqs.png', 6, NULL, 16, '2018-02-11'),
(14, 'azertyopqrs', 'produit produit produit produit 4587', 4, 'kR8yIyZ4qbqteL2VKkjQ.jpg', 0, 'Rz4io5JwrDk7qPWwfSnV.pdf', 9, '2018-02-12'),
(29, 'abraca85', '57fdgr', 5, 'KHaWvBuseOriY5j97XtR.jpg', 0, NULL, 7, '2018-02-26'),
(30, 'reda himar', 'hahahah hahahaha', 8, 'okdUcrQnF3rT17nIgj22.jpg', 0, '', 16, '2018-01-07'),
(31, 'abcdefghijklmnoopqrstuvwxyzzzz', 'tftftf ftftftf jk jk jk g nc ng  re h k: hkjkhjkjhjgh ftrddgffhgvhbhjbjblgk f cgfddf', 1, 'rdQUPSowwBF4wY22sYh4.png', 0, '', 12, '2017-12-10'),
(32, 'swiwitch', 'zekfnkjhkfjh 6546ergkj erghkjeh', 1, 'IltIUosuoDkqD57CMo3f.jpg', 0, '', 8, '2018-01-08'),
(33, 'tv plasma', 'zegb nk,lvbk 353 gfjnkfj nlk s', 1, 'hf3aW1w2tFSNZhAOrOzu.jpg', 0, '', 11, '2018-03-11'),
(34, 'chaussure', 'zegb nk,lvbk 353 gfjnkfj nlk s', 1, '5XepBgZHEDh7Ufr1TYtj.jpg', 0, '', 11, '2018-01-08'),
(35, 'galaxu', 'fdv g yhyhyhyh yth yteh84 848 498yt 9hetyhjiet', 5, 'XB3S7AY1LceP04vK86ls.jpg', 0, '4DYgr6WIl8XFioyP5Tnh.pdf', 14, '2018-02-06'),
(36, 'casquett', '6+5+ hjj hb jhgfhgfhgf ghfhg fhg hgfhgfhgfhg fhg hgf hgfhhgfhf', 1, 'JOpoqO47PnQAGn8m2gVc.jpg', 0, '', 11, '2018-02-04'),
(37, 'mntre', 'rgerzr zg h oiez iuyioguoieuroigu iieurgioueroi uiozueoriugoi uzerigu  ueozi uggz ', 4, '0IeCY6aVoebWCGi6Rj5q.jpg', 0, '', 7, '2017-12-04'),
(38, 'vetements', 'dwffd qqdf +65df+6 5+6df5 +65qd+f6 hfd h ', 1, 'AldKUCNySUKmXbAfTJGy.jpg', 0, '', 16, '2018-02-28'),
(39, 'etyjbetyjetyjetyj', 'fthsfhstbhgfej jd ', 1, '114BL67lzGZAFTLmwOp9.jpg', 0, '', 9, '2018-03-25'),
(40, 'phoneeeeeeeee', 'fgh sjfs rjhzryjzyrjyztj654 j453j46rzy 654e6ty j4z6r5j', 44, 'OIwwrtWQ4dD4vnkmPEGS.jpeg', 0, '', 14, '2018-02-27'),
(41, 'sony vaio', 'tdy jetyj', 785, 'vwC06igcuibUIzsHVVrv.jpg', 0, '', 17, '2018-03-28'),
(42, 'sac ', 'fhjgfbjhe gvjhegrj k   kejrhkjvr fhjgfbjhegvj hegr jk kejrhkjvrf   jrhkjvrfhjg fb jhe  gvjhe grj  kkejrhkjv  rfhjgfbjhe vjhegrj k ejrhkjvr 653  1 313 jb jhv nbb, ,hgf fhjgfbjhe gvjhegrj k   kejrhkjvr fhjgfbjhegvj hegr jk kejrhkjvrf   jrhkjvrfhjg fb jhe  gvjhe grj  kkejrhkjv  rfhjgfbjhe vjhegrj k ejrhkjvr 653  1 313 jb jhv nbb, ,hgffhjgfbjhe gvjhegrj k   kejrhkjvr fhjgfbjhegvj hegr jk kejrhkjvrf   jrhkjvrfhjg fb jhe  gvjhe grj  kkejrhkjv  rfhjgfbjhe vjhegrj k ejrhkjvr 653  1 313 jb jhv nbb, ,hgffhjgfbjhe gvjhegrj k   kejrhkjvr fhjgfbjhegvj hegr jk kejrhkjvrf   jrhkjvrfhjg fb jhe  gvjhe grj  kkejrhkjv  rfhjgfbjhe vjhegrj k ejrhkjvr 653  1 313 jb jhv nbb, ,hgffhjgfbjhe gvjhegrj k   kejrhkjvr fhjgfbjhegvj hegr jk kejrhkjvrf   jrhkjvrfhjg fb jhe  gvjhe grj  kkejrhkjv  rfhjgfbjhe vjhegrj k ejrhkjvr 653  1 313 jb jhv nbb, ,hgffhjgfbjhe gvjhegrj k   kejrhkjvr fhjgfbjhegvj hegr jk kejrhkjvrf   jrhkjvrfhjg fb jhe  gvjhe grj  kkejrhkjv  rfhjgfbjhe vjhegrj k ejrhkjvr 653  1 313 jb jhv nbb, ,hgf', 75312, '9oRroC0xoDTLPGOH6INp.jpg', 0, 'qb5hDMcVlSpAaQhMUwUc.pdf', 15, '2018-03-02'),
(43, 'gugugugug', 'yughgfkyfgkytfytfytfyktfytfytfhgfkhfkhf kh fkhf khfkhf', 546, 'L72MvPlwPhdf0nGNEU3s.jpg', 0, '', 11, '2018-03-28'),
(44, 'kjk', 'jhgjhgjhgkjhghjgjglj', 2, 'jUzopjFyxkDJjj1GFhLg.jpg', 0, '', 14, '2018-03-28');

-- --------------------------------------------------------

--
-- Structure de la table `produit_pack`
--

CREATE TABLE `produit_pack` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `titre_produit` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(7, 'Routeur', 1),
(8, 'Switch', 1),
(9, 'Armoire', 1),
(10, 'Modem ADSL', 1),
(11, 'Modem 4G', 1),
(12, 'Serveurs', 2),
(13, 'Standar IPBX', 3),
(14, 'Pointage', 4),
(15, 'Système Télésurveillance', 5),
(16, 'Anti-Intrusion', 5),
(17, 'Anti-Incendie', 5);

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
-- Index pour la table `pack`
--
ALTER TABLE `pack`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Produits_id_Sous_categories` (`id_Sous_categories`);

--
-- Index pour la table `produit_pack`
--
ALTER TABLE `produit_pack`
  ADD PRIMARY KEY (`id`,`id_produit`),
  ADD KEY `FK_produitpack_fk` (`id_produit`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `pack`
--
ALTER TABLE `pack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT pour la table `sous_categories`
--
ALTER TABLE `sous_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
