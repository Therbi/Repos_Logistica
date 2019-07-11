-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 13 Juin 2019 à 21:33
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `suivi_de_commande`
--

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_cde` int(11) NOT NULL,
  `n_bc` varchar(10000) NOT NULL,
  `commande` varchar(25) NOT NULL,
  `fournisseur` varchar(25) NOT NULL,
  `client` varchar(25) NOT NULL,
  `transporteur` varchar(25) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `id_statut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id_cde`, `n_bc`, `commande`, `fournisseur`, `client`, `transporteur`, `date_livraison`, `id_statut`) VALUES
(76, '13', 'tÃ©lÃ©', 'orange', 'aston martin', '', '2019-05-16', 1),
(78, '3', 'video meraki', 'tÃ©lÃ©toon', 'tÃ©lÃ©code', '', '2019-05-16', 2),
(85, '32', 'video meraki', 'orange', 'tÃ©lÃ©code', '', '2019-05-10', 5),
(88, '32', 'video meraki', 'orange', 'tÃ©lÃ©code', '', '2019-05-10', 4),
(89, '21', 'tÃ©lÃ©', 'tÃ©lÃ©toon', 'tÃ©lÃ©code', '', '2019-05-10', 5),
(92, '808', 'materiel', 'HIPERDIST AFRICA', 'TRUVISION', '', '2019-05-24', 1),
(93, 'BC/2019/00808', 'iphone', 'tÃ©lÃ©toon', 'aston martin', NULL, NULL, 6),
(94, 'BC/2019/00808', 'iphone', 'tÃ©lÃ©toon', 'aston martin', NULL, NULL, 6),
(95, 'BC/2019/00808', 'iphone', 'tÃ©lÃ©toon', 'aston martin', NULL, NULL, 6),
(96, '2', 'tÃ©lÃ©', 'tÃ©lÃ©toon', 'tÃ©lÃ©code', NULL, NULL, 6),
(97, 'BC3654', 'ADF', 'DRE', 'HGR', NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id_com` int(11) NOT NULL,
  `id_cde` int(11) NOT NULL,
  `lib_com` varchar(10000) NOT NULL,
  `editeur` varchar(25) NOT NULL,
  `date_com` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`id_com`, `id_cde`, `lib_com`, `editeur`, `date_com`) VALUES
(10, 78, 'Il y\'a pas de blÃ©', 'nuworkpor tété', '23-05-2019 12:56:47'),
(11, 78, 'gfl', 'nuworkpor tété', '24-05-2019 11:34:41'),
(12, 92, 'fournisseur local', 'nuworkpor tété', '24-05-2019 13:17:12'),
(13, 92, 'trop en retard', 'nuworkpor tété', '24-05-2019 13:25:05'),
(14, 92, 'ok', 'nuworkpor tété', '24-05-2019 13:27:22'),
(15, 92, 'oh', 'nuworkpor tété', '24-05-2019 13:29:11'),
(16, 92, 'n,nkkjjllj', 'nuworkpor tété', '24-05-2019 14:19:50'),
(17, 92, 'fsdghgjhkjln,', 'nuworkpor tété', '24-05-2019 14:20:39'),
(18, 92, 'sfdgfhghkjl', 'nuworkpor tété', '24-05-2019 14:25:04'),
(19, 92, 'sfdghgj', 'nuworkpor tété', '24-05-2019 14:27:09'),
(20, 92, 'fdghh', 'nuworkpor tété', '24-05-2019 14:28:53'),
(23, 76, 'xfcgvhbjn', 'nuworkpor tété', '24-05-2019 14:42:38'),
(24, 76, 'sdfgjklkm', 'nuworkpor tété', '24-05-2019 14:47:12'),
(25, 76, 'dfhgjklmoilkh', 'nuworkpor tété', '24-05-2019 14:48:19'),
(26, 78, 'fsdghjkj', 'nuworkpor tété', '24-05-2019 14:49:12'),
(28, 76, 'qsrtklm', 'nuworkpor tété', '24-05-2019 14:51:26'),
(29, 76, 'Angela commence Ã  me fatiguer', 'nuworkpor tété', '24-05-2019 18:27:52'),
(30, 76, 'hfjhjkkhf', 'nuworkpor tété', '25-05-2019 17:34:45');

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE `statut` (
  `id_statut` int(11) NOT NULL,
  `lib_statut` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `statut`
--

INSERT INTO `statut` (`id_statut`, `lib_statut`) VALUES
(1, 'en route'),
(2, 'livrer'),
(3, 'regler'),
(4, 'probleme de reglement'),
(5, 'au port'),
(6, 'nouveau');

-- --------------------------------------------------------

--
-- Structure de la table `taches`
--

CREATE TABLE `taches` (
  `id_tache` int(11) NOT NULL,
  `date_jour` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login_user` varchar(25) NOT NULL,
  `passwd_user` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `fonction` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `login_user`, `passwd_user`, `nom`, `prenom`, `fonction`) VALUES
(1, 'roma@tech', 'test', 'Gueu', 'romi', 'developpeur'),
(2, 'theres@tech', 'test3', 'nuworkpor', 'tété', 'commercial'),
(3, 'angela@tech', 'test', 'djagoné', 'angela', 'chef_log'),
(4, 'edwige@tech', 'test3', 'kpalou', 'edwige', 'chef_log'),
(5, 'georges@tech', 'test', 'kouassi', 'georges', 'DG_BU'),
(6, 'marina@tech', 'test3', 'madame', 'marina', 'DAF');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id_cde`),
  ADD KEY `id_statut` (`id_statut`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `id_cde` (`id_cde`);

--
-- Index pour la table `statut`
--
ALTER TABLE `statut`
  ADD PRIMARY KEY (`id_statut`);

--
-- Index pour la table `taches`
--
ALTER TABLE `taches`
  ADD PRIMARY KEY (`id_tache`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id_cde` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `statut`
--
ALTER TABLE `statut`
  MODIFY `id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `taches`
--
ALTER TABLE `taches`
  MODIFY `id_tache` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`id_cde`) REFERENCES `commandes` (`id_cde`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
