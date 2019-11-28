-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 25 nov. 2019 à 11:58
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alumni`
--

-- --------------------------------------------------------

--
-- Structure de la table `degree`
--

DROP TABLE IF EXISTS `degree`;
CREATE TABLE IF NOT EXISTS `degree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `degree`
--

INSERT INTO `degree` (`id`, `names`) VALUES
(125, 'BTS developpement web'),
(126, ' BTS design web'),
(127, 'CAP electricien'),
(128, 'BTS SIO'),
(129, 'BTS Sapeurs Pompiers');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191016085123', '2019-10-16 08:51:48'),
('20191016130349', '2019-10-16 13:05:02'),
('20191017094853', '2019-10-17 09:49:10'),
('20191107081522', '2019-11-07 08:15:37');

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
CREATE TABLE IF NOT EXISTS `promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `degree_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C11D7DD1B35C5756` (`degree_id`),
  KEY `IDX_C11D7DD140C1FEA7` (`year_id`)
) ENGINE=InnoDB AUTO_INCREMENT=624 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`id`, `degree_id`, `year_id`) VALUES
(601, 125, 177),
(602, 125, 178),
(603, 125, 179),
(604, 125, 180),
(605, 125, 181),
(606, 125, 182),
(607, 126, 177),
(609, 126, 179),
(610, 126, 180),
(611, 126, 181),
(612, 126, 182),
(613, 127, 177),
(614, 127, 178),
(615, 127, 179),
(616, 127, 180),
(617, 127, 181),
(619, 128, 177),
(620, 128, 178),
(621, 128, 179),
(622, 128, 180),
(623, 128, 181);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `city`, `birthdate`, `avatar`, `slug`) VALUES
(308, 'Diane', 'Gaillard', 'Diane.Gaillard@yahoo.fr', '$2y$10$RcvIXc50njTlnhBcQimhreAQtGnvelL7E7tIaWa6Gd5dFy2h8J0uS', 'Sanchez-sur-Peltier', '1985-04-01', 'a078201bdb7392153f1245d2934a876e3115ce7e.svg', 'gaillard-diane'),
(309, 'Victor', 'Gros', 'Victor.Gros@yahoo.fr', '$2y$10$6E5CVgY1AMEmUbqCEuh/vuYfu65Z7phZ1Ly9jgxxTCv/uvIjSmfP6', 'Benoit-sur-Maillard', '1978-05-03', 'c330cc59e78e105e163e4dd70943217c138ac79d.svg', 'gros-victor'),
(310, 'Dorothée', 'Blanchet', 'Dorothée.Blanchet@yahoo.fr', '$2y$10$67L1wHzOyrUX/5rBxNOQiehmp/GHVdPqmoDVxnPZkT2Pgsd4B1RbO', 'Tessier', '1970-11-30', 'c873300587564b27be42f4ff237862fcca75c161.svg', 'blanchet-dorothee'),
(311, 'Mathilde', 'Schneider', 'Mathilde.Schneider@tiscali.fr', '$2y$10$PyAqaAWVsEEXEaza9GfPj.aF5DRBs8by8lQe.A0rZnxNUo/tJNORm', 'Guillet', '1983-05-05', '7a4b8830a64b6425908c7c701bc0932c34b32d97.svg', 'schneider-mathilde'),
(312, 'Bertrand', 'Mathieu', 'Bertrand.Mathieu@noos.fr', '$2y$10$p7emnFfa8fFqYf.PrwEUke.0UNzapJB96Tp6e9n5GOQQVBEnllMFm', 'Weber-la-Forêt', '1968-11-06', '71ef8d796635b7b90ddccbab6ee2f83de863d98a.svg', 'mathieu-bertrand'),
(313, 'Emmanuel', 'Goncalves', 'Emmanuel.Goncalves@dbmail.com', '$2y$10$QGN.9VLWMjHDa3ADHfotM.aIN8qw1NIUXOYGHBhRzjPkWiIa5SfDO', 'Guibert', '1979-11-30', 'c9065eb727b1bfdffc4fee2e75ed3e826129edfe.svg', 'goncalves-emmanuel'),
(314, 'Madeleine', 'Delattre', 'Madeleine.Delattre@free.fr', '$2y$10$oNL/eN/yXFLgtlqwgVsRkuZH7rEfN1pL/jydmyQ7kl6vf5vD4gYVS', 'BarbierVille', '1980-05-06', '1170ba7b953db8bfa68132d7e72d59bc15433005.svg', 'delattre-madeleine'),
(315, 'Thierry', 'Chauvet', 'Thierry.Chauvet@voila.fr', '$2y$10$h3zGtkLmSj2wbBdPJbcfx.JJ8TdmUV5XPdLOVbGdTjf81xq/Jjzd6', 'Valette-la-Forêt', '1990-09-03', 'bee19014bdd44d3400f8dbf1172a59febf69f0f1.svg', 'chauvet-thierry'),
(316, 'Isabelle', 'Nguyen', 'Isabelle.Nguyen@free.fr', '$2y$10$MoMW9E1/WJpaSdmkuIJxi.iEzBiIYb01lbDVh.2AjNVHOtUojlFTi', 'Carreboeuf', '1988-02-03', '5a5e515190dc568a93293dfe5f42f19fc4078472.svg', 'nguyen-isabelle'),
(317, 'Stéphane', 'Labbe', 'Stéphane.Labbe@bouygtel.fr', '$2y$10$zbIRVhOCHE96qxaFGwQggu8M7DZvuOiXdttw4SYlC.mHQpMt87.GS', 'Paris', '2001-05-01', '12a026b5b96ab60a4dede89340a08cea2914f9b7.svg', 'labbe-stephane'),
(318, 'Frédérique', 'Duhamel', 'Frédérique.Duhamel@wanadoo.fr', '$2y$10$q07T/f9ESLw9XUK/jYHLXuQWpo73GLat7jJqotwvHwwA0WyGQ2F7C', 'Moreau', '1974-01-01', '3350c542bc57985cc5540b468ff7442781222e0d.svg', 'duhamel-frederique'),
(319, 'Alfred', 'Peltier', 'Alfred.Peltier@voila.fr', '$2y$10$LCNR3q5FLpRgC8SDOML52OO875PnbZivSYeNRBot4P/2ce.f2sf2O', 'Aubrydan', '1977-12-01', 'e6ec96b987d2d27edac1ec59e4ae7c4ddd9ab232.svg', 'peltier-alfred'),
(320, 'Madeleine', 'Georges', 'Madeleine.Georges@tiscali.fr', '$2y$10$7YOLuUOZDrgGhOjUIqJWL.NvGCHjpiDzKX3w2./fGhiDCIMgmx/mO', 'Ferrand', '1988-12-04', '56d5e3b09cd0a0eab83297baac4888915547a6dd.svg', 'georges-madeleine'),
(321, 'Philippine', 'Chevalier', 'Philippine.Chevalier@yahoo.fr', '$2y$10$vGD0qP0MgyGsFOnUGohBZea2ZfSIQOn0ysKcdCBa6r80i1oUbu/Oi', 'GayBourg', '1968-09-06', '7efe1b8f6b82ecf33be9ecceb5d908cce63462d9.svg', 'chevalier-philippine'),
(322, 'Alice', 'Pierre', 'Alice.Pierre@noos.fr', '$2y$10$4XSvhsqzeBSKsEpys2Do9uBkcBMMfBHkXbmz1jqeneJyqzcYtAS2y', 'Legros', '1993-07-05', '0e7fe15b29e08ca2db6cb9cded501c57b4efe2cf.svg', 'pierre-alice'),
(323, 'Margot', 'Vaillant', 'Margot.Vaillant@gmail.com', '$2y$10$Tk7sxbbE4zOnsjKxLKkQV.QhHUnSIITbkeIyz/S/JaM2Fp0zCPJGC', 'Charles', '1974-04-01', '1e2017d07ee8c032b15b6fdcd4338bdb256bea5c.svg', 'vaillant-margot'),
(324, 'Guy', 'Salmon', 'Guy.Salmon@hotmail.fr', '$2y$10$.CTYoZ0vswFSHF8f3JQhxu8eZoOyn0RHGawgs0Ssfs3sf5uwm7lfa', 'Guyon', '1968-03-05', '528c8f2468c31cbc9c0d1e9e7deaab7cc7c5b40b.svg', 'salmon-guy'),
(325, 'Andrée', 'Raymond', 'Andrée.Raymond@wanadoo.fr', '$2y$10$20hr4Zl0kNr2LOdIXVxmF.eqiQSu0X9Bg3Ez4tLRViL3zg8EYCLY6', 'Noelboeuf', '1975-12-31', '4c02bb85d3396d8212d82e38a8d4f02ec88f2dd1.svg', 'raymond-andree'),
(326, 'Jacqueline', 'Lombard', 'Jacqueline.Lombard@tele2.fr', '$2y$10$jp/SRyEcyJ4i.J/XLf68rO4ToEHhiKYMj3hhpR5nN61rqdWA11c1.', 'Fabre', '1979-11-04', 'fec8aa3a2fa1cfc19f02b5fef558a11b150ffa59.svg', 'lombard-jacqueline'),
(327, 'Raymond', 'Lacroix', 'Raymond.Lacroix@hotmail.fr', '$2y$10$9c12T3FGulF9zTbv6qzr7OXVA9az/VDtlUXtGdSXMCWFxmUGrHNCa', 'Grosboeuf', '1990-09-07', 'c12be0c502420b43269da3330497fa77e61ae016.svg', 'lacroix-raymond'),
(328, 'Cécile', 'Gallet', 'Cécile.Gallet@sfr.fr', '$2y$10$anZhpu8ZPPnIqR5zeix8gujgzOLIIe.EMAkGMYR42tHTsWuy4KlcC', 'Berger', '1975-09-05', 'd2b2d39ac2f62c20db8019e617ae23d208750e57.svg', 'gallet-cecile'),
(329, 'Anastasie', 'Cousin', 'Anastasie.Cousin@live.com', '$2y$10$SfYvEKqekbzdd4260zNyGu2KraEnmFyqZjxCgrK2z7GtDn9IbUVz2', 'CharrierBourg', '1978-07-02', '060ebee8a1c277e99ca9f0ee9e4e8e7e22375748.svg', 'cousin-anastasie'),
(330, 'Pierre', 'Pichon', 'Pierre.Pichon@yahoo.fr', '$2y$10$9L.CWqBGSmOqMAuBS4/2HugwzjMCv48bsKheB7j4CIUxpwgQgYy52', 'Bonneau', '1983-03-05', 'ce1c4c2af70220d59821f62995e4173d8184e915.svg', 'pichon-pierre'),
(331, 'Robert', 'Gallet', 'Robert.Gallet@sfr.fr', '$2y$10$fycO3f162drXdFr5OjBaqOgrtmvJPceWZrMnl32MHU8JYTfT4CfAO', 'Rocher', '1975-08-02', '21a9e0d33b5e2213dc9d78bd953f19c3fd24e937.svg', 'gallet-robert'),
(332, 'Thibaut', 'Carlier', 'Thibaut.Carlier@bouygtel.fr', '$2y$10$QAPeuB9RMz.JSUpgxbWZweZAmS4iDQNg.dm8BwPz6Cjp6wsgwyeWq', 'Blanchet', '1995-12-07', 'bcdd337972cce5924181f488a8ed768b68e1e2c2.svg', 'carlier-thibaut'),
(333, 'Noël', 'Petit', 'Noël.Petit@noos.fr', '$2y$10$/Eiatn2Iq8DQ5IgYOsTAh.2YqeCxXn9v9J8PehX2FdlYT7OZOPg/S', 'Pons-sur-Breton', '1997-11-01', '5950ccdc390d47cd27569aea4ffef1c3a654ff23.svg', 'petit-noel'),
(334, 'Capucine', 'Mathieu', 'Capucine.Mathieu@yahoo.fr', '$2y$10$yYm.ZZsT34ZeWjGoUezy.enUB3j0XwBHvO4g2I4gsmmGnEjET458K', 'Bigotnec', '1991-10-02', 'f52f30726b51a361b3313afce1155f4abfafdcb9.svg', 'mathieu-capucine'),
(335, 'Agathe', 'Simon', 'Agathe.Simon@noos.fr', '$2y$10$f01wuNI5O7.FYhPc0XX.X.BwTmLkNU0lrs2gi9GK9xm56mN75po.O', 'Da Silva', '1994-12-05', '451ef8efa53a10aa0f245230f8cbe604c07782ed.svg', 'simon-agathe'),
(336, 'Antoinette', 'Bouvet', 'Antoinette.Bouvet@sfr.fr', '$2y$10$5.u1jM0DnQuxeOpgQN46revBxk7Id327Vqavah1pGAKs9uHMAFhwe', 'Morenoboeuf', '1970-07-06', 'd0b431e03674eef170ad4af3e050ed7d86facf9b.svg', 'bouvet-antoinette'),
(337, 'Dominique', 'Remy', 'Dominique.Remy@noos.fr', '$2y$10$KaF6Y2VEuKWWUpnco7VCiOu9dfKD5L5QV09wY0NCvQSt1T..vrXRe', 'Bourdon', '1994-12-01', 'caa843e9a36ed52cc9fef884cc14fae57b8df8d3.svg', 'remy-dominique'),
(338, 'Marthe', 'Georges', 'Marthe.Georges@club-internet.fr', '$2y$10$e3uPwvl.OPAKQB64aA7eD.wYfGrkjxrp03IOgwpPIaofPzNmPXZXS', 'Albertnec', '1999-11-03', '45042bc06becb6f769de46bf68bebdf5e762be85.svg', 'georges-marthe'),
(339, 'Christiane', 'Vincent', 'Christiane.Vincent@gmail.com', '$2y$10$.1z1dkWtVRY95JbFgf1JPu6qmSYB7X4vvljFEePtI0PJ0tKF8p6FG', 'MalletVille', '1979-06-06', 'e334359f63e8fe58037f0591cc551ee7f4c08551.svg', 'vincent-christiane'),
(340, 'Monique', 'Diallo', 'Monique.Diallo@noos.fr', '$2y$10$Fe13B11IYZ1OGXH/WTBGCeUDAjEidus3bk4h/kB5i.dC7cCcsZaR2', 'BruneauBourg', '1982-03-01', '758b3a5efdc5896e549b416da0a0538604826a2f.svg', 'diallo-monique'),
(341, 'Amélie', 'Riou', 'Amélie.Riou@ifrance.com', '$2y$10$OxBU3Fh5AcAIoE70GY7PIulY7RlLTy.k0jOxTWHA2U8EN6SVRjrq6', 'Durand', '1984-09-02', 'bfab28a5823f5efd443c49d6fbc9fbca9b1f9051.svg', 'riou-amelie'),
(342, 'Noémi', 'Mendes', 'Noémi.Mendes@wanadoo.fr', '$2y$10$BQAi0NgYb7CQRThdHFrBC.Yyr86KXojh2VNjcFLVa9I.JGOhCh1DG', 'Bouvier', '1998-12-04', '88166a0b234b005996a0ed7a9c2c553d5e01ba21.svg', 'mendes-noemi'),
(343, 'Isabelle', 'Guillou', 'Isabelle.Guillou@hotmail.fr', '$2y$10$XeweYkWoRTIQGEwGKQhtXeCWyazgJiKMgkwMKbWy/G6I8NCmqqr5q', 'David', '1998-05-03', 'd5a120c05d63b96edde35015ff071fc57a06520f.svg', 'guillou-isabelle'),
(344, 'René', 'Schneider', 'René.Schneider@live.com', '$2y$10$QJgVt5bbKcUTOw7w1uoM6e7m4WcSeYKDH.gFn3e4H0S5tZxchUW6G', 'Charpentier', '1973-08-02', '9150ed5215ce6c2d9f4e0ceb4c9d1c985c96e369.svg', 'schneider-rene'),
(345, 'Gilles', 'Morvan', 'Gilles.Morvan@voila.fr', '$2y$10$RWGU52miLbK7tWYOjnGNnOFImn2B313vP6KuBHKVFpJAErZHFcd/K', 'MorvanBourg', '1990-01-04', '67cf411fd1af05d6a2b08bad706ed5df5512f03c.svg', 'morvan-gilles'),
(346, 'Victoire', 'Noel', 'Victoire.Noel@tele2.fr', '$2y$10$X/udDKANhTDNkgqF4jvkf.4KIyQZe9LmpExcBRNywkuK1c7Lx7FvW', 'Masson', '1985-12-03', '594745ab141650054f3f27a1aac7bedf4e0788b1.svg', 'noel-victoire'),
(347, 'Vincent', 'Lamy', 'Vincent.Lamy@ifrance.com', '$2y$10$3U4SuO3QQ62w2LM4RDkjAu3Dszot2THqyj7ogltY4lblBCCD/E9Wi', 'Chevallier', '1993-12-07', '147116a19ca54c10927f67e7b93361da72aebaed.svg', 'lamy-vincent'),
(348, 'Capucine', 'Poulain', 'Capucine.Poulain@tiscali.fr', '$2y$10$HExaaA5jc18P1tpB0WYhGO/Ikg1R87ljcWFbLIPmRpJGVr11itfJO', 'Millet-les-Bains', '1980-09-03', '7b2c2a1de3d14700993ea3825021d88b519df9a7.svg', 'poulain-capucine'),
(349, 'Céline', 'Leclercq', 'Céline.Leclercq@hotmail.fr', '$2y$10$9yxdC0EWPVeEE5XpnBTKZu2/O6qWn8Q4DlSUjH4Uq084TkltTn07i', 'Loiseau', '1968-02-29', '38cf70735b220d56880ad652c258c24f319f9aea.svg', 'leclercq-celine'),
(350, 'Stéphane', 'Guillon', 'Stéphane.Guillon@noos.fr', '$2y$10$F348va4Dg/jWqTCifwpI.eG6PzqLSa.4qJnKeHqgGRRMwJBnVjNZi', 'Mercier-sur-Lefevre', '1999-11-01', '39a4c4ca9649b64684c627ec14712dd018078626.svg', 'guillon-stephane'),
(351, 'Thibault', 'Besson', 'Thibault.Besson@laposte.net', '$2y$10$zHZbzs3/Q3s2YAXvAoqN9Ol3mPY1fI/OBfcytwtVM08LYmdS7Z5Ya', 'Deschampsnec', '1995-02-04', '54b8429dad7a0e8d8303f8d5eb6f690e589d0249.svg', 'besson-thibault'),
(352, 'Julien', 'Guilbert', 'Julien.Guilbert@orange.fr', '$2y$10$DJv.VlbwBozdw/hFBZDjvO.C6C3EDfnK/t7K0plS1M4u/hrujnSSq', 'LebretonBourg', '1973-09-03', '30133a337654fb37cfe5f69070b3c843e9cda4ea.svg', 'guilbert-julien'),
(353, 'Laure', 'Samson', 'Laure.Samson@dbmail.com', '$2y$10$JFpOk0wtmYHage/3Xxyh0eTCmGdunWdEku/1MCITnWZdatT7zmFv2', 'DurandBourg', '1983-08-06', '09a3598bd13f4030179fe4339ecaa27c1d509441.svg', 'samson-laure'),
(354, 'Maurice', 'Andre', 'Maurice.Andre@live.com', '$2y$10$ZAW/EGKYd/xVoiTWoWF9su22Kb3LXBXw3U5pmoNpIMIWuRtFtSyVy', 'Mercier', '1983-04-04', '78ff8719cb1f207a44f6282aefff37168b782a31.svg', 'andre-maurice'),
(355, 'François', 'Delorme', 'François.Delorme@hotmail.fr', '$2y$10$Ph28J0lKinxemAz15yds0uviaPQaHAhlYsirQGeoHyF8KUU/lxxtO', 'Levy-sur-Chartier', '1973-11-04', 'c564a3769a8464bb93deb5fc25ff266d8578419c.svg', 'delorme-francois'),
(356, 'Adélaïde', 'Mathieu', 'Adélaïde.Mathieu@wanadoo.fr', '$2y$10$xq/jC6lkNerXQ9mHW/gZkOBxspG.kwoWDCwiR0kVFbemb8EhNV4de', 'Buisson-sur-Mer', '1976-12-06', 'f3f4f5397c1bb9c5dedfcd50667da57bbca5b19a.svg', 'mathieu-adelaide'),
(357, 'Jacques', 'Lombard', 'Jacques.Lombard@noos.fr', '$2y$10$JjBWN8nDO1TWv4FNou854ezrVBsIuDrtSFVfX5CU1X1/et83WYBHy', 'Mailletboeuf', '1995-01-01', '780dff686908386e4f49ad895fa298f8f0ece28b.svg', 'lombard-jacques'),
(358, 'Brigitte', 'Verdier', 'Brigitte.Verdier@gmail.com', '$2y$10$XTE948rx7jnArAy22DlI8ex9YycwZN2yeaQMYOehtSEnqvkCRKIkm', 'Durand-les-Bains', '1975-04-03', 'dacd88652b8b108bd8425091e5aebaf3c5e9921f.svg', 'verdier-brigitte'),
(359, 'Geneviève', 'Masson', 'Geneviève.Masson@tiscali.fr', '$2y$10$h9D4gjYpKfGWl/XOiQMcFOP7LLmhk16hcDmWr35xCTlgydVwCJWUG', 'Carpentier-la-Forêt', '1978-12-07', '40176df928f37f482a83caec0f877a075de92f28.svg', 'masson-genevieve'),
(360, 'Gérard', 'Muller', 'Gérard.Muller@club-internet.fr', '$2y$10$onVaY/RUQUHceuFja/rOkuhaeQ9OuuLi2TdyPChA8TI5yeHdMCD56', 'Gay', '1973-01-31', '29321eb27e50dff809bd6e3b98a189a330c4a5f1.svg', 'muller-gerard'),
(361, 'Augustin', 'Gallet', 'Augustin.Gallet@dbmail.com', '$2y$10$qwEOCRdPxfbkRBTZ5IPzRuqGHvWHpeiDkPKFGwC3biMo1viSYO/oC', 'Legros', '1999-09-04', '127a92acd56d154d03b8beb2501bd603866bd9d1.svg', 'gallet-augustin'),
(362, 'Louis', 'Jacques', 'Louis.Jacques@free.fr', '$2y$10$WK2ZOuXgaOPY8YWUR4pIke.XNeebVW9QZxNlGcYAiZOuC5/zCCeY2', 'Blanchard', '1984-04-04', '138307260bc1726f93b902fee3a402bee50eca0f.svg', 'jacques-louis'),
(363, 'Luc', 'Martins', 'Luc.Martins@sfr.fr', '$2y$10$01rdqcstJaH7TRV6DFpn8OlPmtfFHj2KLKZqNer802bZBqsCpuS4C', 'Wagner', '1996-09-01', '061b4502deb668af040e776e53c0b83c2a9dbb69.svg', 'martins-luc'),
(364, 'Bertrand', 'David', 'Bertrand.David@club-internet.fr', '$2y$10$JVdC7UQF.SJ6kDwlKkHp0uU/.JvC..PdcDAWkys83/jlm5rCxCRVi', 'Dupuis', '1969-01-31', '788d2dd6b9c66592edb76d88205b5938b2efaaf3.svg', 'david-bertrand'),
(365, 'Gilles', 'Gosselin', 'Gilles.Gosselin@sfr.fr', '$2y$10$YXZuSOmF8ACESaVbHlfFcONaCvv7dEo6ukGrEcKTXbL9iFl5bRhFW', 'Carliernec', '1999-04-07', 'd7b27017d0c73bd7eda73603a3cae81a4d6a0e81.svg', 'gosselin-gilles'),
(366, 'Amélie', 'Wagner', 'Amélie.Wagner@noos.fr', '$2y$10$5xeBtkqkQCFp67eACapwdObyVOzEJ2plJtyBly7PEXxw/qZ/tKCv2', 'Chauvetnec', '2001-06-01', '7a9a4c08fcd8de4a1447dfee124a3e37e50f2644.svg', 'wagner-amelie'),
(367, 'Alain', 'Noel', 'Alain.Noel@hotmail.fr', '$2y$10$Nh2EwOSJ6RcWVP7tdHI8qelnDULV6LDjAOxe9HCqcXio5rHBuectK', 'Martinsdan', '1970-12-07', 'e65de11186a16588ccae70371ea455f687e94084.svg', 'noel-alain'),
(368, 'Suzanne', 'Sanchez', 'Suzanne.Sanchez@tiscali.fr', '$2y$10$Rity/4ZqoHDl/UNCikn1/uTjaoNBQUawpiT2AdRwJZT6wBCMRykB.', 'Peltier', '1993-09-04', '25e632f160a6cbaac00828b639c0d1ab663cf9de.svg', 'sanchez-suzanne'),
(369, 'Michelle', 'Seguin', 'Michelle.Seguin@dbmail.com', '$2y$10$0dQV1aleRtzd7JimZejDFOK2L4c82Wk/K8q3q1qEBXKWwEb4dmfVW', 'Gimenez-les-Bains', '1975-09-04', '8a16d500f6134076acb0ec9483ad13d27d33f79b.svg', 'seguin-michelle'),
(370, 'Arnaude', 'Lenoir', 'Arnaude.Lenoir@orange.fr', '$2y$10$hkyOSWGCEzaPBOvjapkKTO2VAS0eP9ff5TnuApxFBufRUj1t3Fcey', 'Sanchez', '1987-07-03', '95cbd41ede7054c1edf6d6755af95752fbcc3a1c.svg', 'lenoir-arnaude'),
(371, 'Marcel', 'Roussel', 'Marcel.Roussel@noos.fr', '$2y$10$kLPHl8oDvIY2n5f/H/diRum4GfoQSK2cHFBxYciu0FVdLvRPQjsDG', 'Gaudin-sur-Dupuis', '1974-04-04', '18dc7e89b3faf26a86cf4a732798f49dc311e36f.svg', 'roussel-marcel'),
(372, 'Hélène', 'Albert', 'Hélène.Albert@dbmail.com', '$2y$10$WWuaA6g6/V1osYKXdueG6.iUSY9ctj3naqZK1cdJDOOCrRbKweCIa', 'Nicolas', '1990-04-05', '2a0d0d6efd4f7fe32c69dce7dfeadf261b397915.svg', 'albert-helene'),
(373, 'Aimé', 'Bourdon', 'Aimé.Bourdon@laposte.net', '$2y$10$H4Ddx/g.xAVmKynfW533Tegfn.NGvJ7xJuy.QiCGYMCApM0hTlY9S', 'Wagner', '1980-07-04', 'a64f596ac3ee43456656f946ebe4d9a24b9c8300.svg', 'bourdon-aime'),
(374, 'Marc', 'Fouquet', 'Marc.Fouquet@live.com', '$2y$10$4t67WVFb61Mzd.AZzznf2.eMGMZZeYpKY3rBjX8WojwXNIhmpAz1a', 'Millet-sur-Fischer', '1997-07-02', '2d7dfd1e243b384424ea98189311a89f054a5372.svg', 'fouquet-marc'),
(375, 'Gilles', 'Dumas', 'Gilles.Dumas@ifrance.com', '$2y$10$OEPV6WSPlxSnveYC/hFIbOK/p5hXqJHRiK40SRFnDTwQvY5YqAoV2', 'Riounec', '1980-07-31', '3c00e16f0ecf3d1c8780afd2ec0fe11e48c8e87b.svg', 'dumas-gilles'),
(376, 'Océane', 'Sanchez', 'Océane.Sanchez@laposte.net', '$2y$10$Wi/cKPpEDbyayYNqwzznMOwypj4pqaUEhQEyzaRnkjZZM1RzGMeBu', 'Leroy-sur-Adam', '1977-06-02', '55fd39b98bc84e17f926567e3f663a22a1fc26e7.svg', 'sanchez-oceane'),
(377, 'Laetitia', 'Poulain', 'Laetitia.Poulain@wanadoo.fr', '$2y$10$sOp.ydX5HJwBDwvAFqPIB.kHEjfvhkNGsmYlKgaPrdlFzffRrZzBG', 'Vidal', '1977-04-05', 'a4804289ef986decbec9cfe0af298d9fe70e3c5c.svg', 'poulain-laetitia'),
(378, 'Hélène', 'Da Silva', 'Hélène.Da Silva@orange.fr', '$2y$10$n03xqr/mB9AxpdRh7zEXHew2q5cM8VxJFavG2zM1r5tRYGvNImGPy', 'Vallet-la-Forêt', '1999-04-05', '4936acd4911fe0205048fac9276e615e378d7d05.svg', 'da-silva-helene'),
(379, 'Célina', 'Vidal', 'Célina.Vidal@dbmail.com', '$2y$10$2LzUINeoSRZHuSeEEMGZc.GaRVI9IpqrfEbdkI1XdJwdhIHH1Qpcm', 'Couturier-la-Forêt', '1985-07-03', '61245743eaf07f291d3e51bd6bd04d1d9a661d24.svg', 'vidal-celina'),
(380, 'Renée', 'Guilbert', 'Renée.Guilbert@voila.fr', '$2y$10$X1pephb/ZG/VjtTyjPOWguZ3osu4l0a0NSCfx/VeHVNfnvVxAe9ii', 'Alves', '1992-04-01', '848f0bb7fd0859462be30842fd22bc150974a029.svg', 'guilbert-renee'),
(381, 'Marguerite', 'Renard', 'Marguerite.Renard@club-internet.fr', '$2y$10$6ZtdauhmkLxc27VcdO3WdOSVclHdJGNnmfql2BIjnZ8WrfFG17vQ.', 'Ramosboeuf', '1988-11-06', '69aa896cdb3efdf13f60a7ef94d5768bc915ee8b.svg', 'renard-marguerite'),
(382, 'Auguste', 'Aubry', 'Auguste.Aubry@live.com', '$2y$10$BS2yGiwwNGQ8Yb6V4cMA/.kR6dc7VV7Mx8dij9SC3nF7/c8BssLpi', 'DuvalBourg', '1975-06-02', 'af78835382cc8f03bd33e4d41f117e644e52aa4b.svg', 'aubry-auguste'),
(383, 'Marianne', 'Gosselin', 'Marianne.Gosselin@tiscali.fr', '$2y$10$bxssHVsJ0kfmEXgHpb9UKOEcBnKoEjFAUVlRObKb19ytnTvjATkJu', 'Mathieu', '1993-10-03', 'a67c1387827968864ed3bb7c645ee98a749fb833.svg', 'gosselin-marianne'),
(384, 'Margaret', 'Jacquet', 'Margaret.Jacquet@bouygtel.fr', '$2y$10$H6.u.OOvy6y/2aTON7FZg.sQqYrfQScDaHbeoeAA99aUkiaHo908u', 'Dufournec', '1985-09-02', 'bea5b57d0c36590a15557b2d8b566071cfebd24e.svg', 'jacquet-margaret'),
(385, 'Michel', 'Nicolas', 'Michel.Nicolas@yahoo.fr', '$2y$10$0QL.8YVamfnhkLqPwk.Di.ZDZwKQ16OVtcd8XSfEdsGkUWp2CDL/u', 'Marques-les-Bains', '1984-07-31', '4e1a0690f1f0df7bbb8deaba393d1800ea6cbbd7.svg', 'nicolas-michel'),
(386, 'Émilie', 'Ruiz', 'Émilie.Ruiz@sfr.fr', '$2y$10$oSaEqfZjBhCtS/MYjslwa.TVwYZpzoqpx/B6UAhkxGRPDMJN7XW36', 'Rodriguesnec', '2002-07-07', 'a6e759cd3e9a8c73d52644e2136f4f98515245d0.svg', 'ruiz-emilie'),
(387, 'Agathe', 'Leveque', 'Agathe.Leveque@sfr.fr', '$2y$10$LSeOrlYqbMFyARfwekQQCuFgbAjBjQvAm2y4Me6FyqYJ4X/ZvKw2a', 'Nguyen', '1973-09-04', '539a3d7d294642a6c3667fa8aee24caf26338529.svg', 'leveque-agathe'),
(388, 'Thibault', 'Dupre', 'Thibault.Dupre@tele2.fr', '$2y$10$nM4ecX4Of/7DdoMmlNqDW.oJW3ogoWbW17MqHuWYHcEe4/6RcG2ta', 'Nicolas', '1973-02-06', 'b84517ff48aa33a113c073a464c59665645c5ae4.svg', 'dupre-thibault'),
(389, 'Daniel', 'Richard', 'Daniel.Richard@tele2.fr', '$2y$10$apczRymbplWLngJ5d8k.2.iqdbLHiu2bwQW1EDhSB7lCCO.gfnRoW', 'Fournier', '1974-06-07', 'b0abb3aa83575c82f318825af112b37361dd602f.svg', 'richard-daniel'),
(390, 'Henri', 'Valette', 'Henri.Valette@free.fr', '$2y$10$A756GN4JvMh/FoRqsn3TguRU93qf8KhPojMrQZp8QpcyQ0hV/18A6', 'Remy', '1980-02-06', 'b628e45898e26d496b1328dd5108e102d2f887c6.svg', 'valette-henri'),
(391, 'Hélène', 'Texier', 'Hélène.Texier@sfr.fr', '$2y$10$mOlhYM5Ha5IY3Cae6NEkd.RG7yYucnQWypiUlYUkBq8nJPW3P/5q2', 'Tanguy-sur-Lucas', '1989-10-01', '344ff5377857d418fe650d58e260af38496927e7.svg', 'texier-helene'),
(392, 'Danielle', 'Hebert', 'Danielle.Hebert@free.fr', '$2y$10$WSrLo8xGplSJ/pHUS/hKZuO9Zn4VOnPCZyWL2s6ofVUmjFNf0N3Ua', 'Samson', '1971-11-07', '6b6a8853a134c575aa7b776c51ebc49ca4c141b0.svg', 'hebert-danielle'),
(393, 'Margaux', 'Roux', 'Margaux.Roux@ifrance.com', '$2y$10$u9CImFl8z0RMyAqGgGF75OcsfuPsZ6fT.j.S6a4gOHlu0Ok8A/Npe', 'KleinVille', '2002-06-04', 'c0a6a573946dc7173a723d446cd19ab9bf767dc2.svg', 'roux-margaux'),
(394, 'Marguerite', 'Humbert', 'Marguerite.Humbert@wanadoo.fr', '$2y$10$F4ckFIzVor8yieMVXyxZhuTdzJiJoZILa413y6Bgw.CQGABQFLjQW', 'Riou', '1968-12-03', '891a4162c69c9cf97325bf5bf61d16c8ab936c2b.svg', 'humbert-marguerite'),
(395, 'Maurice', 'Mallet', 'Maurice.Mallet@orange.fr', '$2y$10$zngyRXZvnk/5/aDxI1pbLeW3EoP1WafC.0qa5zyYZzV4Otktf/ak.', 'Laporte', '1980-11-07', '2f53639f07affb3b0eae77c52dd54f700d7f03f8.svg', 'mallet-maurice'),
(396, 'Christine', 'Voisin', 'Christine.Voisin@tiscali.fr', '$2y$10$wIRxS36Gt8QlkAxnhI3pr..nHDp448QR9BasJd6wLY5mSOxP/sswq', 'Courtoisboeuf', '1988-02-01', '52a5f2686cb857a8bebfbc73eb123816fbd39883.svg', 'voisin-christine'),
(397, 'Robert', 'Pottier', 'Robert.Pottier@tiscali.fr', '$2y$10$wKV8oc7x94YEdVESbYNpy.XMAsNXo/OAgkWjv4xwRxfQ2Y2kkkvXK', 'Collin-les-Bains', '1996-09-06', 'e587eb4d49e3c40902b95b8b22abc4f380aa8ac8.svg', 'pottier-robert'),
(398, 'Sylvie', 'Louis', 'Sylvie.Louis@orange.fr', '$2y$10$fIcGGaOgsD.zE5scC1wCkuw217CZL0nv.fY76T3HPDmEhhxPn4mNO', 'Dupre', '1987-08-02', 'dda6b9c71201975b1d0c6558ccc22ddb8385a069.svg', 'louis-sylvie'),
(399, 'Isabelle', 'Leroux', 'Isabelle.Leroux@bouygtel.fr', '$2y$10$AZ6rt21xdTnJHggY/4x08.vH8VJv99I1mHQTd8r9HskgD3HhL6c0e', 'Ramos', '1976-06-02', '55011fc7d5fbb875805e1b6aeb4793119119ac41.svg', 'leroux-isabelle'),
(400, 'Christiane', 'Allard', 'Christiane.Allard@club-internet.fr', '$2y$10$zGgL1MxJGWoAQgDk5yKvautjSj4zA3XrOFClF6z.DrxW7FjWWvzXe', 'Arnaud', '1995-04-02', 'eddb55169ed8caeb6fbbc05e3eb632b168344cb0.svg', 'allard-christiane'),
(401, 'Alice', 'Morin', 'Alice.Morin@free.fr', '$2y$10$c3wZYTcl3.qBTtSrNstOuemoCl4QsFMCP1Qb1lbql6nCEdaiDak9e', 'Thierry', '1977-03-02', 'd0d614d0e2e2fafb9ac7950f958d3305df69c914.svg', 'morin-alice'),
(402, 'Frédérique', 'Godard', 'Frédérique.Godard@tele2.fr', '$2y$10$fhG44nt1lHYCQ0p97MrsY.lvI4ydLbsAQXbPb02/VeHMgRhuFRSCS', 'Riviereboeuf', '1997-08-05', '29bf341951c98578a63892b53e7f7dcf928359b9.svg', 'godard-frederique'),
(403, 'Luce', 'Marques', 'Luce.Marques@bouygtel.fr', '$2y$10$xt48.d4TIbtMPbDBBl0Mdu4JCA.vpioO5Xnsdc8C65cfq5Tae0tzS', 'Moulin-sur-Mer', '1974-12-05', '9bd8d9965b3930b51ed346f8940408cd5b1ab774.svg', 'marques-luce'),
(404, 'Thibault', 'Neveu', 'Thibault.Neveu@orange.fr', '$2y$10$btypSGIh12uHWefpFqCQzOrkIgBDtkqmpueacRpV/6GVory0E8cqK', 'Langloisboeuf', '1969-09-04', '9f4bf79cb8d08eb94f78c2f99d8364d76a248ec6.svg', 'neveu-thibault'),
(405, 'Simone', 'Blanc', 'Simone.Blanc@sfr.fr', '$2y$10$yyNZ1G8xn24l9OHkv2M7D.uxgGvEY4LxS5VK7Ts9yF1hjTsVHGgeq', 'Samson', '2002-08-04', 'da24b7a349f4e0f00b8ca3492cf9f97b76a50b80.svg', 'blanc-simone'),
(406, 'Marie', 'Boucher', 'Marie.Boucher@laposte.net', '$2y$10$7wYhy2cXx0gwBuWePSg9resjCx0SZ9PFAS7SJCRRcY6Xn4A6pyKuS', 'Boutin-sur-Didier', '1968-04-02', '4de0b629c2d721b0578bca72f508853894fe6548.svg', 'boucher-marie'),
(407, 'Célina', 'Pages', 'Célina.Pages@hotmail.fr', '$2y$10$8nR5.5vm/Yd5AxhHdS/7.O/4TeV5PtatE9uzsDrHLbyPBMDQIAEKy', 'Pichon-sur-Mer', '1980-02-29', 'c89f91c280c60b6aac40c613328091120f5154aa.svg', 'pages-celina');

-- --------------------------------------------------------

--
-- Structure de la table `user_promotion`
--

DROP TABLE IF EXISTS `user_promotion`;
CREATE TABLE IF NOT EXISTS `user_promotion` (
  `user_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`promotion_id`),
  KEY `IDX_C1FDF035A76ED395` (`user_id`),
  KEY `IDX_C1FDF035139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_promotion`
--

INSERT INTO `user_promotion` (`user_id`, `promotion_id`) VALUES
(308, 606),
(309, 602),
(309, 623),
(311, 616),
(311, 623),
(313, 601),
(313, 614),
(314, 612),
(314, 620),
(315, 606),
(315, 619),
(316, 613),
(316, 615),
(318, 603),
(318, 611),
(319, 603),
(319, 623),
(320, 603),
(321, 604),
(321, 616),
(322, 606),
(323, 606),
(323, 620),
(324, 619),
(325, 610),
(325, 613),
(327, 615),
(327, 617),
(328, 621),
(329, 616),
(329, 619),
(330, 602),
(331, 610),
(331, 620),
(332, 607),
(333, 601),
(334, 606),
(335, 601),
(335, 623),
(336, 602),
(336, 616),
(337, 620),
(338, 617),
(339, 611),
(339, 620),
(340, 612),
(341, 621),
(342, 606),
(342, 622),
(343, 617),
(344, 602),
(345, 603),
(345, 620),
(347, 609),
(347, 623),
(348, 612),
(348, 621),
(349, 607),
(349, 609),
(350, 615),
(350, 621),
(351, 614),
(351, 621),
(352, 614),
(353, 616),
(354, 615),
(355, 619),
(356, 601),
(356, 623),
(357, 619),
(358, 615),
(359, 601),
(360, 623),
(361, 612),
(362, 607),
(363, 605),
(364, 614),
(365, 613),
(366, 601),
(367, 602),
(367, 606),
(368, 603),
(368, 606),
(369, 607),
(370, 604),
(370, 609),
(371, 605),
(372, 619),
(372, 620),
(373, 610),
(374, 605),
(374, 614),
(375, 606),
(375, 611),
(376, 617),
(377, 601),
(377, 606),
(378, 613),
(379, 604),
(380, 620),
(381, 619),
(382, 622),
(383, 604),
(383, 606),
(384, 606),
(384, 609),
(387, 607),
(387, 612),
(388, 602),
(388, 617),
(389, 616),
(390, 605),
(390, 620),
(391, 602),
(392, 614),
(392, 622),
(393, 613),
(393, 616),
(394, 614),
(395, 616),
(396, 622),
(397, 621),
(398, 610),
(399, 613),
(401, 616),
(402, 601),
(402, 607),
(403, 604),
(404, 606),
(404, 612),
(405, 604),
(406, 601),
(407, 603),
(407, 612);

-- --------------------------------------------------------

--
-- Structure de la table `year`
--

DROP TABLE IF EXISTS `year`;
CREATE TABLE IF NOT EXISTS `year` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `year`
--

INSERT INTO `year` (`id`, `title`) VALUES
(177, '2011/2012'),
(178, '2012/2013'),
(179, '2013/2014'),
(180, '2015/2016'),
(181, '2016/2017'),
(182, '2018/2019'),
(185, '2019/2020'),
(186, '2020/2021'),
(191, '2021/2022'),
(192, '2022/2023'),
(193, '2023/2024');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD CONSTRAINT `FK_C11D7DD140C1FEA7` FOREIGN KEY (`year_id`) REFERENCES `year` (`id`),
  ADD CONSTRAINT `FK_C11D7DD1B35C5756` FOREIGN KEY (`degree_id`) REFERENCES `degree` (`id`);

--
-- Contraintes pour la table `user_promotion`
--
ALTER TABLE `user_promotion`
  ADD CONSTRAINT `FK_C1FDF035139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C1FDF035A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
