-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 fév. 2023 à 08:57
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cogip_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `types_id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `tva` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `types_id`, `country`, `tva`, `created_at`, `updated_at`) VALUES
(6, 'Chocopie', 1, 'Japan', 'coucou', '2023-02-02 12:09:47', '2023-02-10 15:57:06'),
(18, 'Musical Ants Organization', 1, 'India', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Les galettes de mamy', 1, 'USA', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Farewell, Neverland', 1, 'Japan', 'JSQldkj', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Paradise Lost', 1, 'Korea', 'JSKJQSD-DJS982', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Jordaline Cookies', 1, 'USA', 'US 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Pepper and Pizza', 1, 'FR', 'FR 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Dimanche et Jeudi', 1, 'BE', 'BE 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'DécoMeubles', 1, 'FR', 'FR 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'PaparazziSolo', 1, 'IT', 'IT 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'PAWSHOP', 1, 'DE', 'DE 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'NettoiVit', 1, 'NL', 'NL 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'MDM', 1, 'GB', 'GB 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'ParisCouture', 1, 'FR', 'FR 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'NettoiVit', 1, 'NL', 'NL 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'MDM', 1, 'GB', 'GB 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'ParisCouture', 1, 'FR', 'FR 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'GAMERZ', 1, 'FR', 'FR 480 045 540', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `company_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `contact_img` varchar(256) NOT NULL DEFAULT 'cameron',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `company_id`, `email`, `phone`, `contact_img`, `created_at`, `updated_at`) VALUES
(10, 'Julian', 6, 'Arandommail@djqskldjfl.com', '04504800', 'cameron', '0000-00-00 00:00:00', '2023-02-10 15:58:38'),
(11, 'Juliette Capulet', 41, 'romeoleplusbo@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Mercutio Montaigu', 45, 'romeotufaitnimp@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Romeo Montaigu', 40, 'jaimejuliette@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Juliette Capulet', 41, 'romeoleplusbo@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Mercutio Montaigu', 42, 'romeotufaitnimp@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Mario Mario', 43, 'sauvonspeach@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Luigi Mario', 44, 'jesuisplusgrandquemario@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Donkey Kong', 45, 'bananesdorees@mailbidon.com', '0123456789', 'cameron', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `date_due` date NOT NULL,
  `id_company` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `invoices`
--

INSERT INTO `invoices` (`id`, `ref`, `date_due`, `id_company`, `created_at`, `updated_at`) VALUES
(33, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:00:43', '2023-02-11 12:00:43'),
(34, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:07:03', '2023-02-11 12:07:03'),
(35, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:09:41', '2023-02-11 12:09:41'),
(36, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:29:29', '2023-02-11 12:29:29'),
(37, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:29:31', '2023-02-11 12:29:31'),
(38, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:29:31', '2023-02-11 12:29:31'),
(39, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:29:31', '2023-02-11 12:29:31'),
(40, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:29:32', '2023-02-11 12:29:32'),
(41, 'F29392939-203', '2023-02-12', 6, '2023-02-11 12:29:32', '2023-02-11 12:29:32'),
(42, 'F29392939-203', '2023-02-12', 18, '2023-02-11 12:29:42', '2023-02-11 12:29:42');

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrateur', '2023-02-03 14:12:03', '2023-02-03 14:12:03'),
(2, 'modérateur', '2023-02-03 14:12:19', '2023-02-03 14:12:19'),
(3, 'guest', '2023-02-03 14:12:19', '2023-02-03 14:12:19');

-- --------------------------------------------------------

--
-- Structure de la table `roles_permission`
--

CREATE TABLE `roles_permission` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Supplier', '2023-02-02 11:57:42', '2023-02-02 11:57:42'),
(2, 'Client', '2023-02-02 12:15:38', '2023-02-02 12:15:38');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `role_id`, `last_name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(12, 'Jean-Christian', 1, 'Ranu', 'jchristian.ranu@mail.com', '$2y$10$HC4WZ/SzvB41yesUFzg0a.F/5AX0jqedjxGl.6kZLCqsUY62I5cOa', '2023-02-11 12:58:12', '2023-02-11 12:58:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`types_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company` (`company_id`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies` (`id_company`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles_permission`
--
ALTER TABLE `roles_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_permission_ibfk_1` (`permission_id`),
  ADD KEY `roles_permission_ibfk_2` (`role_id`);

--
-- Index pour la table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_1` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `roles_permission`
--
ALTER TABLE `roles_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `type` FOREIGN KEY (`types_id`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Contraintes pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `company` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `companies` FOREIGN KEY (`id_company`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `roles_permission`
--
ALTER TABLE `roles_permission`
  ADD CONSTRAINT `roles_permission_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `roles_permission_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
