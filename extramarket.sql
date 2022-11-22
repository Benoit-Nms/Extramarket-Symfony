-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 fév. 2022 à 20:56
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `extramarket`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `author_id`) VALUES
(1, 'Un oiseau heureux', '<div><strong><br>Section 1.10.33 du \"De Finibus Bonorum et Malorum\" de Ciceron (45 av. J.-C.)<br></strong><br></div><div>\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis<br><br>&nbsp;voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"<br><br></div>', 'IMG-3085.jpg', '2022-02-04 00:40:17', 51),
(2, 'Un oiseau sympathique', '<div><strong><br>Traduction de H. Rackham (1914)<br></strong><br></div><div>\"On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying<br><br>&nbsp;through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be<br>&nbsp;welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of<br><br>&nbsp;business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.\"<br><br></div>', 'IMG-3080.jpg', '2022-02-04 00:41:02', 51),
(4, 'Un autre oiseau sympa', '<div><strong><br>Le passage de Lorem Ipsum standard, utilisé depuis 1500<br></strong><br></div><div>\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"<br><br></div>', 'oiseau.jpg', '2022-02-04 00:42:00', 28),
(8, 'Drôle de tête', '<div><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur laoreet volutpat mi vitae bibendum.<br>&nbsp;</strong><br>molestie quis ipsum pulvinar, suscipit auctor sapien. Etiam luctus turpis leo, vel egestas sem scelerisque vitae. Cras fermentum diam vel risus gravida sodales. Proin placerat quis erat ac pellentesque. Suspendisse non mi diam. In ac tincidunt urna. Pellentesque vestibulum risus mollis, porttitor nulla eu, ullamcorper urna. Sed interdum ex vel lorem sollicitudin, et consectetur ex ornare. In quam nisl, tincidunt sit amet mauris vel, tempus semper eros. Suspendisse lectus nisl, eleifend in dolor non, ultricies fringilla augue. Fusce faucibus interdum finibus.<br><br></div><div>Cras aliquet sem eu lacus dignissim, ac pulvinar elit convallis. Mauris ac libero turpis. Phasellus malesuada lacus libero, ac facilisis nibh feugiat ut. Quisque convallis vel mi non ornare. In lectus urna, pharetra congue nisi ac, sollicitudin ornare erat. Integer eget pellentesque tellus. Phasellus et felis et diam venenatis pharetra. Aliquam id feugiat est. Aliquam eu ultrices mi. Suspendisse nec augue consequat, iaculis sem ac, sodales justo. Ut tristique bibendum leo et placerat. Ut efficitur auctor augue ut euismod. Aenean eu lectus egestas, condimentum orci ac, sodales magna. In nec magna tristique, vehicula orci et, porta tortor.<br><br></div><div>Fusce non ante ipsum. Duis congue mi a mi euismod lobortis. Cras in urna ex. Vestibulum sit amet nisi et ante viverra lacinia. Pellentesque in dignissim lacus. Mauris a mauris et arcu pharetra luctus at eget leo. Vivamus ultricies dolor ut orci condimentum vehicula. Nullam ut leo vitae mi viverra bibendum nec quis arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed placerat velit aliquet sem mollis condimentum. Suspendisse mattis aliquam sagittis. Nullam auctor dui sed vehicula vulputate.<br><br></div><div>Mauris pulvinar lectus lectus, facilisis malesuada mi congue a. Mauris tortor mauris, imperdiet ac consequat eu, vulputate eget leo. Fusce mattis justo at consectetur ultricies. Mauris sed est interdum, malesuada augue ac, consectetur nulla. Phasellus semper luctus metus non congue. Proin blandit est eu magna condimentum malesuada. Nulla facilisi. Pellentesque sit amet ex ultrices, lacinia sem et, laoreet elit. Donec maximus justo urna, id molestie odio posuere accumsan. Donec auctor condimentum bibendum. Praesent dapibus, purus in blandit commodo, tellus nunc fringilla erat, quis mollis leo enim ut lorem.<br><br></div><div>Donec molestie pretium metus, in consequat urna consectetur ac. Duis rhoncus metus suscipit tellus convallis luctus. Integer at lectus et risus molestie ultrices quis porta leo. Pellentesque mi leo, fermentum non feugiat nec, consequat suscipit sem. Donec rhoncus lacinia consequat. In interdum ac enim et scelerisque. Aliquam vel vehicula purus. Phasellus eget tortor turpis. Proin imperdiet quam eu eleifend sollicitudin. Maecenas euismod diam a orci fermentum condimentum eget nec libero. Fusce purus orci, ultrices sed justo non, lobortis consequat risus. Nam venenatis mi eget nulla blandit molestie. Donec eget magna faucibus, vestibulum urna ac, laoreet risus. Integer auctor augue non varius efficitur. Donec tincidunt tortor euismod elit mattis, sit amet accumsan quam ornare.<br><br></div>', '0320000008283238-photo-jar-jar-binks.jpg', '2022-02-04 00:46:37', 25),
(9, 'Appareil Canon', '<div><strong>Morbi vehicula augue sit amet </strong><br><br>odio porttitor auctor. Maecenas scelerisque augue id fermentum tincidunt. Proin laoreet ante nec metus aliquam, sed cursus erat convallis. Suspendisse mattis risus nec augue auctor, id malesuada risus hendrerit. Phasellus dignissim ante turpis, ac rhoncus tortor feugiat vitae. Vestibulum hendrerit commodo lectus, non vestibulum enim ullamcorper non. Curabitur fermentum risus non massa sodales porttitor. Donec ut tempor eros, ut mattis enim. Sed congue lacinia augue, eu convallis purus porta quis. Nulla sit amet sem ut ligula euismod imperdiet id eu lectus. Phasellus tempor condimentum sollicitudin. Nam laoreet lobortis pellentesque. In congue consequat felis sed eleifend. In porttitor malesuada eleifend.<br><br></div><div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br></div>', 'raw.jpg', '2022-02-04 15:59:32', 51),
(10, 'Promenade à cheval', '<div>Morbi vehicula augue sit amet odio porttitor auctor. Maecenas scelerisque augue id fermentum tincidunt. Proin laoreet ante nec metus aliquam, sed cursus erat convallis. Suspendisse mattis risus nec augue auctor, id malesuada risus hendrerit. Phasellus dignissim auat felis sed eleifend. In porttitor malesuada eleifend.<br><br></div><div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum<br><br>&nbsp;est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br></div>', 'pexels-pixabay-162520 (1).jpg', '2022-02-04 16:00:44', 3),
(11, 'Le caméléon', '<div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br></div>', 'pexels-george-lebada-567540.jpg', '2022-02-04 16:01:17', 45),
(12, 'Grands buildings', '<div><strong>Duis et massa quam. Sed urna libero, feugiat in ullamcorper<br></strong><br>&nbsp;eu, luctus eget leo. Vivamus a dui vel dui tempus accumsan. Nulla eu auctor eros. Etiam sed nisi eget ipsum suscipit lobortis a et quam. Donec quis lobortis risus. Nunc tempor tincidunt eros ut rhoncus. Nulla ultrices nunc sed mauris tempor pretium. Mauris ut vestibulum dui. Sed gravida dui velit, vitae dictum dolor tempor sed. Duis quis volutpat massa, at tincidunt felis.<br>&nbsp;<br>Sed a facilisis velit. Nulla convallis, mi sed accumsan aliquet, massa erat blandit est, ac lobortis nibh elit non tellus.<br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam euismod augue quis fermentum tincidunt. Praesent sed lacus nisi. Curabitur lacus purus, lobortis et convallis vel, auctor sit amet tortor. Nam nec auctor enim. In id mollis ex. Suspendisse a eros in libero luctus ullamcorper et ut diam. Quisque vehicula euismod consequat. Nulla facilisi. Praesent rhoncus odio et metus condimentum, quis finibus orci euismod. Ut molestie ullamcorper vestibulum. Sed a tempus purus, id egestas ipsum. Quisque viverra libero nec viverra porttitor.<br><br></div><div>Morbi vehicula augue sit amet odio porttitor auctor. Maecenas scelerisque augue id fermentum tincidunt. Proin laoreet ante nec metus aliquam, sed cursus erat convallis. Suspendisse mattis risus nec augue auctor, id malesuada risus hendrerit. Phasellus dignissim ante turpis, ac rhoncus tortor feugiat vitae. Vestibulum hendrerit commodo lectus, non vestibulum enim ullamcorper non. Curabitur fermentum risus non massa sodales porttitor. Donec ut tempor eros, ut mattis enim. Sed congue lacinia augue, eu convallis purus porta quis. Nulla sit amet sem ut ligula euismod imperdiet id eu lectus. Phasellus tempor condimentum sollicitudin. Nam laoreet lobortis pellentesque. In congue consequat felis sed eleifend. In porttitor malesuada eleifend.<br><br></div><div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam euismod augue quis fermentum tincidunt. Praesent sed lacus nisi. Curabitur lacus purus, lobortis et convallis vel, auctor sit amet tortor. Nam nec auctor enim. In id mollis ex. Suspendisse a eros in libero luctus ullamcorper et ut diam. Quisque vehicula euismod consequat. Nulla facilisi. Praesent rhoncus odio et metus condimentum, quis finibus orci euismod. Ut molestie ullamcorper vestibulum. Sed a tempus purus, id egestas ipsum. Quisque viverra libero nec viverra porttitor.<br><br></div><div>Morbi vehicula augue sit amet odio porttitor auctor. Maecenas scelerisque augue id fermentum tincidunt. Proin laoreet ante nec metus aliquam, sed cursus erat convallis. Suspendisse mattis risus nec augue auctor, id malesuada risus hendrerit. Phasellus dignissim ante turpis, ac rhoncus tortor feugiat vitae. Vestibulum hendrerit commodo lectus, non vestibulum enim ullamcorper non. Curabitur fermentum risus non massa sodales porttitor. Donec ut tempor eros, ut mattis enim. Sed congue lacinia augue, eu convallis purus porta quis. Nulla sit amet sem ut ligula euismod imperdiet id eu lectus. Phasellus tempor condimentum sollicitudin. Nam laoreet lobortis pellentesque. In congue consequat felis sed eleifend. In porttitor malesuada eleifend.<br><br></div><div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br></div><div><br><br></div>', 'pexels-essow-936722.jpg', '2022-02-04 16:06:09', 51),
(13, 'En pleine nature', '<div>Duis et massa quam. Sed urna libero, feugiat in ullamcorper eu, luctus eget leo. Vivamus a dui vel dui tempus accumsan. Nulla eu auctor eros. Etiam sed nisi eget ipsum<br><br>&nbsp;suscipit lobortis a et quam. Donec quis lobortis risus. Nunc tempor tincidunt eros ut rhoncus. Nulla ultrices nunc sed mauris tempor pretium. Mauris ut vestibulum dui. Sed gravida dui velit, vitae dictum dolor tempor sed.&nbsp;<br><br>Duis quis volutpat massa, at tincidunt felis. Sed a facilisis velit. Nulla convallis, mi sed accumsan aliquet, massa erat blandit est, ac lobortis nibh elit non tellus.<br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam euismod augue quis fermentum tincidunt. Praesent sed lacus nisi. Curabitur lacus purus, lobortis et convallis vel, auctor sit amet tortor. Nam nec auctor enim. In id mollis ex. Suspendisse a eros in libero luctus ullamcorper et ut diam. Quisque vehicula euismod consequat. Nulla facilisi. Praesent rhoncus odio et metus condimentum, quis finibus orci euismod. Ut molestie ullamcorper vestibulum. Sed a tempus purus, id egestas ipsum. Quisque viverra libero nec viverra porttitor.</div><div><br></div><div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br></div>', 'pexels-mirco-violent-blur-4072840.jpg', '2022-02-04 16:06:37', 2),
(14, 'Le grand Ouest !', '<div>Duis et massa quam. Sed urna libero, feugiat in ullamcorper eu, luctus eget leo. Vivamus a dui vel dui tempus accumsan. Nulla eu auctor eros. Etiam sed nisi eget ipsum suscipit lobortis a et quam. Donec quis lobortis risus. Nunc tempor tincidunt eros ut rhoncus. Nulla ultrices nunc sed mauris tempor pretium. Mauris ut vestibulum dui. Sed gravida dui velit, vitae dictum dolor tempor sed. Duis quis volutpat massa, at tincidunt felis. Sed a facilisis velit. Nulla convallis, mi sed accumsan aliquet, massa erat blandit est, ac lobortis nibh elit non tellus.<br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam euismod augue quis fermentum tincidunt. Praesent sed lacus nisi. Curabitur lacus purus, lobortis et convallis vel, auctor sit amet tortor. Nam nec auctor enim. In id mollis ex. Suspendisse a eros in libero luctus ullamcorper et ut diam. Quisque vehicula euismod consequat. Nulla facilisi. Praesent rhoncus odio et metus condimentum, quis finibus orci euismod. Ut molestie ullamcorper vestibulum. Sed a tempus purus, id egestas ipsum. Quisque viverra libero nec viverra porttitor.<br><br></div><div>Morbi vehicula augue sit amet odio porttitor auctor. Maecenas scelerisque augue id fermentum tincidunt. Proin laoreet ante nec metus aliquam, sed cursus erat convallis. Suspendisse mattis risus nec augue auctor, id malesuada risus hendrerit. Phasellus dignissim ante turpis, ac rhoncus tortor feugiat vitae. Vestibulum hendrerit commodo lectus, non vestibulum enim ullamcorper non. Curabitur fermentum risus non massa sodales porttitor. Donec ut tempor eros, ut mattis enim. Sed congue lacinia augue, eu convallis purus porta quis. Nulla sit amet sem ut ligula euismod imperdiet id eu lectus. Phasellus tempor condimentum sollicitudin. Nam laoreet lobortis pellentesque. In congue consequat felis sed eleifend. In porttitor malesuada eleifend.<br><br></div><div>Quisque at sollicitudin mi, ac porttitor nibh. Fusce vel tellus luctus, molestie leo vitae, elementum neque. Suspendisse ac viverra justo. Curabitur ut egestas est. Nam neque odio, consequat eget posuere vel, blandit non mauris. Morbi bibendum est eu tellus fermentum, ac rutrum diam posuere. Mauris et metus aliquam, placerat diam at, porta felis. Vivamus iaculis orci sit amet eros lacinia vestibulum. Sed bibendum pharetra nisl, eget rhoncus diam condimentum eget. In venenatis leo at vestibulum consequat. Cras a enim quam.<br><br></div>', 'pexels-andy-vu-3244513.jpg', '2022-02-04 16:06:59', 1);

-- --------------------------------------------------------

--
-- Structure de la table `article_category`
--

CREATE TABLE `article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_category`
--

INSERT INTO `article_category` (`article_id`, `category_id`) VALUES
(1, 16),
(2, 16),
(3, 13),
(4, 16),
(5, 3),
(6, 13),
(7, 13),
(8, 17),
(9, 9),
(9, 15),
(10, 2),
(10, 3),
(10, 5),
(11, 13),
(11, 16),
(12, 4),
(12, 14),
(13, 14),
(13, 16),
(14, 3),
(14, 16),
(15, 14),
(16, 13),
(17, 6),
(18, 13),
(19, 9),
(20, 13),
(21, 7),
(22, 5),
(23, 15),
(24, 5),
(25, 5),
(26, 12),
(27, 1),
(28, 13),
(29, 14),
(30, 2),
(31, 4),
(32, 14),
(33, 5),
(34, 8),
(35, 11),
(36, 8),
(37, 12),
(38, 6),
(39, 3),
(40, 8),
(41, 2),
(42, 10),
(43, 11),
(44, 10),
(45, 2),
(46, 14),
(47, 9),
(48, 9),
(49, 3),
(50, 8),
(51, 14),
(52, 9),
(53, 11),
(54, 1),
(55, 15),
(56, 6),
(57, 4),
(58, 2),
(59, 13),
(60, 5),
(61, 9),
(62, 2),
(63, 6),
(64, 5),
(65, 3),
(66, 14),
(67, 5),
(68, 7),
(69, 7),
(70, 12),
(71, 3),
(72, 10),
(73, 2),
(74, 7),
(75, 12),
(76, 15),
(77, 15),
(78, 10),
(79, 5),
(80, 14),
(81, 1),
(82, 12),
(83, 9),
(84, 4),
(85, 12),
(86, 8),
(87, 11),
(88, 11),
(89, 5),
(90, 13),
(91, 13),
(92, 14),
(93, 12),
(94, 15),
(95, 15),
(96, 8),
(97, 9),
(98, 7),
(99, 10),
(100, 13),
(102, 4),
(102, 6),
(102, 10),
(103, 2),
(103, 6),
(103, 13),
(104, 2),
(104, 12),
(104, 14);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `image`) VALUES
(1, 'Ut esse a mollitia at qui ab laudantium.', 'Quo natus odit facilis illo. Repudiandae impedit voluptas voluptas qui unde repellendus cum. Fuga veritatis tempora sequi exercitationem aspernatur in.', 'http://lorempixel.com/640/480/?29730'),
(2, 'Velit pariatur nihil non.', 'Nulla dolore neque ut ab. Quos voluptatem reprehenderit ducimus dolore. Sit modi ut harum.', 'http://lorempixel.com/640/480/?10535'),
(3, 'Quia fugiat totam nisi numquam in dolores et.', 'Fuga libero praesentium quasi aut est. Quisquam voluptatem debitis expedita aliquam pariatur. Voluptas debitis voluptas consequatur voluptas blanditiis dolorem animi. Nihil assumenda optio odio voluptatibus ratione sed voluptatem corporis.', 'http://lorempixel.com/640/480/?38863'),
(4, 'Blanditiis voluptas rem esse officiis commodi et.', 'Unde dolore quaerat saepe optio totam est molestias praesentium. Laborum adipisci itaque dolor qui dolore atque. Quam ut incidunt ut voluptatem optio atque reprehenderit.', 'http://lorempixel.com/640/480/?69483'),
(5, 'Voluptatem cumque alias error.', 'Eveniet mollitia dolor quia ipsa. Earum ipsam aliquam ullam necessitatibus et. Cupiditate vel maxime error voluptas molestias ullam.', 'http://lorempixel.com/640/480/?72683'),
(6, 'Optio cupiditate eum rerum nemo est magni.', 'Ex corrupti deserunt dolor similique. Cupiditate minima et quidem veritatis itaque. Fugit dolores ratione cumque et magnam ullam. Eos ab sed perspiciatis culpa mollitia molestias. At corporis placeat neque deserunt est vel.', 'http://lorempixel.com/640/480/?43907'),
(7, 'Nam sequi ex aperiam autem.', 'Molestiae eius nam veritatis. Eos ut consectetur ex ut doloremque. Earum consequuntur dolores quis consequatur sit enim velit qui. Officia molestiae repudiandae quia quia itaque ipsa ratione.', 'http://lorempixel.com/640/480/?50428'),
(8, 'Aperiam enim placeat doloremque.', 'Qui aut aut a eius minima nobis libero maxime. Numquam qui sit eius dolorem quisquam animi aut sit. Recusandae ex reprehenderit nisi nihil aliquid. Aliquid libero sapiente aut nostrum molestias.', 'http://lorempixel.com/640/480/?88646'),
(9, 'Labore quo sit ut maxime dicta pariatur incidunt.', 'Vero nam esse libero blanditiis velit sapiente et explicabo. Nemo maiores eveniet tenetur optio et iure accusamus. Quas enim iusto asperiores temporibus sint.', 'http://lorempixel.com/640/480/?45646'),
(10, 'Numquam explicabo et voluptatem esse aliquid sit.', 'Ea cum animi sed animi quo voluptas. Hic repellendus ducimus qui architecto repudiandae vitae sit. Nobis et ut eos non rerum. Reprehenderit facere ab dolore qui illum. Sunt consequatur omnis ullam quasi sunt ut.', 'http://lorempixel.com/640/480/?27582'),
(11, 'Quasi fugiat laudantium id tempore quo eos.', 'Labore ea laudantium sunt voluptates dolores aut facilis vero. Sed debitis velit reiciendis facere. Voluptas tenetur illum corrupti dolor. Deserunt aperiam eos itaque vel est. Nostrum magni id numquam aperiam.', 'http://lorempixel.com/640/480/?94146'),
(12, 'Autem voluptas ut in reiciendis delectus.', 'Veniam tenetur necessitatibus perferendis est reiciendis labore officia. Esse ipsam vitae qui et eos quidem ut. Explicabo accusamus et voluptatem dolores nam esse placeat.', 'http://lorempixel.com/640/480/?97748'),
(13, 'Vel eum accusantium eaque eligendi.', 'Quos voluptatem aut non aut. Magnam nam earum exercitationem quis exercitationem rem beatae. Natus molestias iusto adipisci aspernatur voluptas ea aliquam. Inventore commodi excepturi modi enim nisi molestias explicabo.', 'http://lorempixel.com/640/480/?34588'),
(14, 'Mollitia et sint iste ex.', 'Sed dolores culpa officiis alias unde. In deserunt ipsam laboriosam iusto veritatis. Architecto ut debitis non praesentium officia molestiae perspiciatis. Harum officia sed magni deserunt sit aut.', 'http://lorempixel.com/640/480/?26214'),
(15, 'Suscipit deserunt sed sit consequatur repellat.', 'Est vero modi debitis maiores ratione. Provident et quas praesentium ipsa. Sint ipsa perspiciatis excepturi ipsum cum. Recusandae quasi consequatur voluptate id omnis reprehenderit et consequatur.', 'http://lorempixel.com/640/480/?81317'),
(16, 'Nature', '<div>Tout ce qui concerne la nature.</div>', 'wallpapers-brazil-windows-seven-2.jpg'),
(17, 'Humour', '<div>Concerne les articles marrant</div>', 'smiley01c4d0005.png');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220202172324', '2022-02-02 18:25:03', 569),
('DoctrineMigrations\\Version20220202174714', '2022-02-02 18:48:43', 57);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `email`, `password`, `created_at`) VALUES
(1, 'Joany Labadie PhD', 'Icie', 'Gusikowski', 'Stark.Noemi@gmail.com', 'aXe}&%}xvHI', '2022-02-02 19:46:50'),
(2, 'Kylee Hoeger I', 'Jaycee', 'Dibbert', 'Elva.Schmitt@Nitzsche.biz', 'O>Ld{nfG5Bm:yD=f', '2022-02-02 19:46:50'),
(3, 'Mrs. Jackie Lebsack MD', 'Emely', 'Ortiz', 'rKuvalis@hotmail.com', '=6[tN~69:Ow`W4{Co|\'\"', '2022-02-02 19:46:50'),
(4, 'Mrs. Mia Armstrong Jr.', 'Tillman', 'Jenkins', 'bReichert@gmail.com', 'Q*$K+%k', '2022-02-02 19:46:50'),
(5, 'Herman Bartell', 'Lela', 'White', 'Renner.Kailey@gmail.com', '+HOD}(J<CF/O', '2022-02-02 19:46:50'),
(6, 'Madisen Zieme', 'Chelsey', 'Schmeler', 'Gaylord.Delilah@hotmail.com', 'lVLefK|Yl\"<nlVe=#|r}', '2022-02-02 19:46:50'),
(7, 'Leonora Fadel', 'Edna', 'Schiller', 'uMante@gmail.com', '!I0@b>y?3rhahEn|Ni', '2022-02-02 19:46:50'),
(8, 'Maurine Cormier', 'Ephraim', 'Abernathy', 'eLind@gmail.com', 'k{E3\"}&og', '2022-02-02 19:46:50'),
(9, 'Dr. Henriette Nicolas', 'Annabell', 'Connelly', 'Shyann84@Wintheiser.com', '@&%M)2ig', '2022-02-02 19:46:50'),
(10, 'Antwan Hoeger', 'Trevor', 'Kozey', 'Kovacek.Darrin@yahoo.com', '\\|<!_N/XKJ', '2022-02-02 19:46:50'),
(11, 'Daron Kris', 'Gerda', 'Shields', 'Aida18@gmail.com', '&jU\'Z7]', '2022-02-02 19:46:50'),
(12, 'Mr. Roberto Weimann I', 'Caitlyn', 'Runolfsson', 'fCarter@yahoo.com', '&Zy-3?0$m\"hOh(oZ', '2022-02-02 19:46:50'),
(13, 'Taurean Frami', 'Vivien', 'Howe', 'Bode.Raoul@Kub.biz', 'Qj2OxB/_', '2022-02-02 19:46:50'),
(14, 'Trey Greenholt', 'Fabiola', 'Keeling', 'Jermain68@Aufderhar.info', '/y3(`0T', '2022-02-02 19:46:50'),
(15, 'Howard Reilly', 'Broderick', 'Price', 'xBlock@Pollich.com', '(x3D\"f$M,Ds`a', '2022-02-02 19:46:50'),
(16, 'Dr. Morris Sauer', 'Shany', 'Fadel', 'Reichert.Nathanial@hotmail.com', 'Ui(iq&KZp%@M', '2022-02-02 19:46:50'),
(17, 'Prof. Gaston Kuhn IV', 'Freddy', 'Kulas', 'Pollich.Lorenza@Collier.biz', 'B&*@uR+9[qGEUwd<;dNe', '2022-02-02 19:46:50'),
(18, 'Rashad Senger Jr.', 'Joanne', 'Wilkinson', 'Bode.Reese@Oberbrunner.org', '+m?.WTQvYXV>oZu$LPTM', '2022-02-02 19:46:50'),
(19, 'Dallin Howe', 'Mason', 'Borer', 'Eda09@gmail.com', 'L(DZ|xem2cgJa', '2022-02-02 19:46:50'),
(20, 'Delphia Hammes', 'Stuart', 'King', 'Schneider.Cora@hotmail.com', '+Jpe:b,OK', '2022-02-02 19:46:50'),
(21, 'Alexandria Harber', 'Sarina', 'Emmerich', 'Barton.Jordane@Lueilwitz.com', '{}|-d|x]*2*!3&^', '2022-02-02 19:46:50'),
(22, 'Melissa Zieme', 'Izaiah', 'Wolff', 'Maximilian28@Hartmann.com', '{-z1wx4;0+O', '2022-02-02 19:46:50'),
(23, 'Dr. Lewis West I', 'Brett', 'Smith', 'wHeidenreich@yahoo.com', '60\\IksAG4okO9~', '2022-02-02 19:46:50'),
(24, 'Prof. Nona Von V', 'Jessyca', 'Veum', 'Jaylon34@yahoo.com', '#P/*T&SI', '2022-02-02 19:46:50'),
(25, 'Dave Zieme PhD', 'Fleta', 'Kozey', 'Milford.Durgan@yahoo.com', 'wfi5]dX\"[^', '2022-02-02 19:46:50'),
(26, 'Diana Casper', 'Bridgette', 'Becker', 'lStehr@hotmail.com', '!JLWvoa.H4HFYbA|pJ', '2022-02-02 19:46:50'),
(27, 'Shaniya Cormier', 'Jillian', 'Tillman', 'Iliana.Ward@Little.org', '90\\(R*', '2022-02-02 19:46:50'),
(28, 'Mr. Elliott Dickens DVM', 'Christa', 'Romaguera', 'uTorp@gmail.com', 'b%@9]ldaQnXkB^', '2022-02-02 19:46:50'),
(29, 'Kamren Pollich', 'Johnson', 'O\'Hara', 'Stanford30@hotmail.com', ']V`Q@h{>r]t$sMvL,', '2022-02-02 19:46:50'),
(30, 'Micah Casper', 'Katlynn', 'Flatley', 'Elyse.Bradtke@Emmerich.com', '%\"qpI:N3x|xNAp\"eV', '2022-02-02 19:46:50'),
(31, 'Arianna Leuschke DDS', 'Garnet', 'Parisian', 'xAdams@yahoo.com', 'sM,yPP5mH%L,g}`8', '2022-02-02 19:46:50'),
(32, 'Clotilde Ratke', 'Alba', 'King', 'uRosenbaum@yahoo.com', '.\'%n9VBQb5c-', '2022-02-02 19:46:50'),
(33, 'Lincoln Luettgen', 'Weston', 'Glover', 'Ashtyn.Zboncak@Altenwerth.net', 'cRkP!E%\"{w\'Q', '2022-02-02 19:46:50'),
(34, 'Dr. Noe Metz', 'Irwin', 'Dickinson', 'eOReilly@Quigley.com', '/]p@[;M~(SgQM46hj', '2022-02-02 19:46:50'),
(35, 'Mrs. Sadye McGlynn Jr.', 'Maximillia', 'Weimann', 'Marisol.Auer@yahoo.com', '8i9cXx*C`0.', '2022-02-02 19:46:50'),
(36, 'Dylan Effertz', 'Velda', 'Bogisich', 'Mathilde42@hotmail.com', 'r\'\\\\|zr-|p', '2022-02-02 19:46:50'),
(37, 'Trey Lakin', 'Shyanne', 'Franecki', 'Johnnie.Lubowitz@yahoo.com', 'SxJdU^yrhw$?r', '2022-02-02 19:46:50'),
(38, 'Freeman Roberts III', 'Graham', 'Williamson', 'zBednar@Crooks.info', 'e<o<[<>+{Sl', '2022-02-02 19:46:50'),
(39, 'Prof. Simeon Schimmel', 'Annette', 'Mitchell', 'Hand.Hassie@Morissette.com', '+*y\"Ilf3[W=#%`?', '2022-02-02 19:46:50'),
(40, 'Mrs. Magnolia Towne I', 'Fae', 'Upton', 'eHarber@Emmerich.com', ';+~r|<t_2(tR^', '2022-02-02 19:46:50'),
(41, 'Buck Volkman', 'Jarret', 'Thiel', 'Annabel59@Hoeger.info', '`Lop:7,A;T<$aF', '2022-02-02 19:46:50'),
(42, 'Prof. Jeanne Gaylord IV', 'Lonny', 'Greenfelder', 'Simone22@Abshire.org', 'oS!,>X9bkd~', '2022-02-02 19:46:50'),
(43, 'Fabian Rath DVM', 'Pattie', 'Baumbach', 'sBechtelar@gmail.com', '>=yA*=Q\\', '2022-02-02 19:46:50'),
(44, 'Hailie Roob', 'Green', 'Spencer', 'Cruickshank.Ned@hotmail.com', 'dg&T1\'z3]A3qur7iWJl/', '2022-02-02 19:46:50'),
(45, 'Mr. Brandt Brekke PhD', 'Dangelo', 'Heidenreich', 'Roberts.Julian@Fisher.com', 'NM^1lg>l\":}v&G9y8dg', '2022-02-02 19:46:50'),
(46, 'Dr. Emile Kuvalis IV', 'Melvin', 'Bayer', 'gHeaney@hotmail.com', 'p7N:\"aop=.\'nE^{r9', '2022-02-02 19:46:50'),
(47, 'Mr. Irwin Moen DVM', 'Gretchen', 'Jenkins', 'mEffertz@yahoo.com', 'xPB%A,)N\'Py19*R,R:', '2022-02-02 19:46:50'),
(48, 'Carolina Wuckert', 'Javier', 'Anderson', 'Maximus.Fahey@Brakus.com', '0wr25a^-}|2$+KP', '2022-02-02 19:46:50'),
(49, 'Sam Johnston', 'Katelyn', 'Cronin', 'Lolita66@Carroll.net', '\'|}&jW=Th3&D5T}(b:6', '2022-02-02 19:46:50'),
(50, 'Mr. Cecil Smith MD', 'Ramona', 'Schmeler', 'Senger.Kellen@gmail.com', '#>ST-~+)}hA-Fr?oy@', '2022-02-02 19:46:50'),
(51, 'Ben_33', 'Benoît', 'Namous', 'benoit_6589@gmail.com', 'azerty', '2022-02-04 01:02:45'),
(52, 'Ben_33', 'Bgyhjghj', 'Nghjghj', 'benoit7898@gmail.c', 'azerty123', '2022-02-06 17:06:42'),
(54, 'Ben_33', 'Benoit', 'Namous', 'benoit@gmail.com', '$2y$13$OaNQ6Ei4IvAHrLixUVcoK.tpTy9cJDoUAfGl3ohwV2JmWEeJo2DSC', '2022-02-06 18:32:10'),
(55, 'Jannot789', 'Jean', 'Percier', 'jean.percier@hotmail.com', '$2y$13$DItmiJuORd0u.V3010iZEeHNrJJH7tRuw9KA2QLp9RjhTIq.givuW', '2022-02-06 18:44:45'),
(56, 'Nico44', 'Nicolas', 'Bulle', 'n.bulle@gmail.com', '$2y$13$LrlELGy46WsHdcxBatYLzunCxqQ6WRDwB4DdDv.H0nAfUELKSI8Ya', '2022-02-06 19:03:19'),
(58, 'Benito33', 'Ben', 'Nam', 'benoitnam@gmail.com', '$2y$13$sIBzkkvERPhhkDqwRUh8DOWQGlaa7c/GamA/M.RnEA36BHTkYa/V.', '2022-02-07 14:21:13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66F675F31B` (`author_id`);

--
-- Index pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_53A4EDAA7294869C` (`article_id`),
  ADD KEY `IDX_53A4EDAA12469DE2` (`category_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `FK_53A4EDAA12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_53A4EDAA7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
