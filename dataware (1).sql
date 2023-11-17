-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 17 nov. 2023 à 22:23
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dataware`
--

-- --------------------------------------------------------

--
-- Structure de la table `equipes`
--

CREATE TABLE `equipes` (
  `ID_Equipe` int(11) NOT NULL,
  `Nom_equipe` varchar(255) NOT NULL,
  `Date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `equipes`
--

INSERT INTO `equipes` (`ID_Equipe`, `Nom_equipe`, `Date_creation`) VALUES
(1, 'Équipe de Développement', '2023-01-01'),
(2, 'Équipe de Support Technique', '2023-03-01'),
(3, 'Équipe Marketing', '2023-08-01'),
(4, 'Équipe de Vente', '2023-06-01');

-- --------------------------------------------------------

--
-- Structure de la table `membre_personnel`
--

CREATE TABLE `membre_personnel` (
  `ID_Personnel` int(255) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `ID_Equipe` int(11) NOT NULL,
  `Statut` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `membre_personnel`
--

INSERT INTO `membre_personnel` (`ID_Personnel`, `Nom`, `Prenom`, `Email`, `Telephone`, `Role`, `ID_Equipe`, `Statut`) VALUES
(1, 'Yassir', 'Ait', 'yassir.ait@gmail.com', '+123456789', 'Développeur', 1, 'Actif'),
(2, 'Ayoub', 'Snini', 'ayoub.snini@gmail.com', '+987654321', 'Responsable', 2, 'Actif'),
(3, 'Zouhair', 'Ghoumri', 'zouhair.ghoumri@gmail.com', '+1122334455', 'Designer', 1, 'Actif'),
(4, 'Brown', 'Sarah', 'sarah.brown@gmail.com', '+9988776655', 'Vendeur', 4, 'Actif'),
(5, 'Lee', 'David', 'david.lee@gmail.com', '+5544332211', 'Concepteur', 1, 'Inactif'),
(6, 'Kim', 'Hyejin', 'hyejin.kim@gmail.com', '+6677889900', 'Marketing Assistant', 3, 'Actif'),
(7, 'Chen', 'Wei', 'wei.chen@gmail.com', '+1122334455', 'Coordinateur', 3, 'Actif'),
(8, 'Garcia', 'Ana', 'ana.garcia@gmail.com', '+9988776655', 'Vendeur', 4, 'Inactif'),
(9, 'Kumar', 'Raj', 'raj.kumar@gmail.com', '+123456789', 'Ingénieur', 2, 'Actif'),
(10, 'Park', 'Minji', 'minji.park@gmail.com', '+6677889900', 'Marketing Specialist', 3, 'Inactif'),
(11, 'Wang', 'Wei', 'wei.wang@gmail.com', '+5544332211', 'Technicien', 2, 'Actif'),
(12, 'Cruz', 'Maria', 'maria.cruz@gmail.com', '+1122334455', 'Vendeur', 4, 'Actif');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`ID_Equipe`);

--
-- Index pour la table `membre_personnel`
--
ALTER TABLE `membre_personnel`
  ADD PRIMARY KEY (`ID_Personnel`),
  ADD KEY `ID_Equipe` (`ID_Equipe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `equipes`
--
ALTER TABLE `equipes`
  MODIFY `ID_Equipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `membre_personnel`
--
ALTER TABLE `membre_personnel`
  MODIFY `ID_Personnel` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `membre_personnel`
--
ALTER TABLE `membre_personnel`
  ADD CONSTRAINT `membre_personnel_ibfk_1` FOREIGN KEY (`ID_Equipe`) REFERENCES `equipes` (`ID_Equipe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
