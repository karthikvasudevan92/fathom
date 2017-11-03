-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2017 at 11:55 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `acl`
--

CREATE TABLE `acl` (
  `ai` int(10) UNSIGNED NOT NULL,
  `action_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `action_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `action_desc` varchar(100) NOT NULL COMMENT 'Human readable description',
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_categories`
--

CREATE TABLE `acl_categories` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_code` varchar(100) NOT NULL COMMENT 'No periods allowed!',
  `category_desc` varchar(100) NOT NULL COMMENT 'Human readable description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aliase`
--

CREATE TABLE `aliase` (
  `id` int(11) NOT NULL,
  `word` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aliase`
--

INSERT INTO `aliase` (`id`, `word`) VALUES
(1, 'gram'),
(2, 'GM'),
(3, 'picogram'),
(4, 'picograms'),
(5, 'pg'),
(6, 'pgs'),
(7, 'metre'),
(8, 'metres'),
(9, 'meters'),
(10, 'meter'),
(11, 'm'),
(12, 'km'),
(13, 'kms'),
(14, 'kilometer'),
(15, 'kilometers'),
(16, 'minute'),
(17, 'min'),
(18, 'mins'),
(19, 'Minutes'),
(20, 'second'),
(21, 'seconds'),
(22, 'hour'),
(23, 'Hours'),
(24, 'Day'),
(25, 'days'),
(26, 'one'),
(27, 'ones'),
(28, 'million'),
(29, 'millions'),
(30, 'quintillion'),
(31, 'quintillions'),
(32, 'trillion'),
(33, 'trillions'),
(34, 'septillion'),
(35, 'septillions'),
(36, 'sextillion'),
(37, 'sextillions'),
(38, 'octillion'),
(39, 'octillions'),
(40, 'nonillion'),
(41, 'nonillions'),
(42, 'quadrillion'),
(43, 'quadrillions'),
(44, 'decillion'),
(45, 'decillions'),
(46, 'undecillion'),
(47, 'undecillions'),
(48, 'duodecillion'),
(49, 'duodecillions'),
(50, 'tredecillion'),
(51, 'tredecillions'),
(52, 'quattuordecillion'),
(53, 'quattuordecillions'),
(54, 'quindecillion'),
(55, 'quindecillions'),
(56, 'novemdecillion'),
(57, 'novemdecillions'),
(58, 'sexdecillion'),
(59, 'sexdecillions'),
(60, 'vigintillion'),
(61, 'vigintillions'),
(62, 'septendecillion'),
(63, 'septendecillions'),
(64, 'octodecillion'),
(65, 'octodecillions'),
(66, 'unvigintillion'),
(67, 'unvigintillions'),
(68, 'duovigintillion'),
(69, 'duovigintillions'),
(70, 'quattuorvigintillion'),
(71, 'quattuorvigintillions'),
(72, 'trevigintillion'),
(73, 'trevigintillions'),
(74, 'quinvigintillion'),
(75, 'quinvigintillions'),
(76, 'sexvigintillion'),
(77, 'sexvigintillions'),
(78, 'septenvigintillion'),
(79, 'septenvigintillions'),
(80, 'octovigintillion'),
(81, 'octovigintillions'),
(82, 'novemvigintillion'),
(83, 'novemvigintillions'),
(84, 'trigintillion'),
(85, 'trigintillions'),
(86, 'billion'),
(87, 'billions'),
(88, 'untrigintillion'),
(89, 'untrigintillions'),
(90, 'quintrigintillion'),
(91, 'quintrigintillions'),
(92, 'tretrigintillion'),
(93, 'tretrigintillions'),
(94, 'quattuortrigintillion'),
(95, 'quattuortrigintillions'),
(96, 'duotrigintillion'),
(97, 'duotrigintillions'),
(98, 'sextrigintillion'),
(99, 'sextrigintillions'),
(100, 'septentrigintillion'),
(101, 'septentrigintillions'),
(102, 'duoquadragintillion'),
(103, 'duoquadragintillions'),
(104, 'unquadragintillion'),
(105, 'unquadragintillions'),
(106, 'octotrigintillion'),
(107, 'octotrigintillions'),
(108, 'quadragintillion'),
(109, 'quadragintillions'),
(110, 'novemtrigintillion'),
(111, 'novemtrigintillions'),
(112, 'trequadragintillion'),
(113, 'trequadragintillions'),
(114, 'quattuorquadragintillion'),
(115, 'quattuorquadragintillions'),
(116, 'quinquadragintillion'),
(117, 'quinquadragintillions'),
(118, 'septenquadragintillion'),
(119, 'septenquadragintillions'),
(120, 'octoquadragintillion'),
(121, 'octoquadragintillions'),
(122, 'sexquadragintillion'),
(123, 'sexquadragintillions'),
(124, 'novemquadragintillion'),
(125, 'novemquadragintillions'),
(126, 'quinquagintillion'),
(127, 'quinquagintillions'),
(128, 'duoquinquagintillion'),
(129, 'duoquinquagintillions'),
(130, 'trequinquagintillion'),
(131, 'trequinquagintillions'),
(132, 'unquinquagintillion'),
(133, 'unquinquagintillions'),
(134, 'quattuorquinquagintillion'),
(135, 'quattuorquinquagintillions'),
(136, 'sexquinquagintillion'),
(137, 'sexquinquagintillions'),
(138, 'quinquinquagintillion'),
(139, 'quinquinquagintillions'),
(140, 'septenquinquagintillion'),
(141, 'septenquinquagintillions'),
(142, 'novemquinquagintillion'),
(143, 'novemquinquagintillions'),
(144, 'octoquinquagintillion'),
(145, 'octoquinquagintillions'),
(146, 'sexagintillion'),
(147, 'sexagintillions'),
(148, 'unsexagintillion'),
(149, 'unsexagintillions'),
(150, 'duosexagintillion'),
(151, 'duosexagintillions'),
(152, 'tresexagintillion'),
(153, 'tresexagintillions'),
(154, 'quattuorsexagintillion'),
(155, 'quattuorsexagintillions'),
(156, 'sexsexagintillion'),
(157, 'sexsexagintillions'),
(158, 'quinsexagintillion'),
(159, 'quinsexagintillions'),
(160, 'octosexagintillion'),
(161, 'octosexagintillions'),
(162, 'septensexagintillion'),
(163, 'septensexagintillions'),
(164, 'novemsexagintillion'),
(165, 'novemsexagintillions'),
(166, 'septuagintillion'),
(167, 'septuagintillions'),
(168, 'unseptuagintillion'),
(169, 'unseptuagintillions'),
(170, 'duoseptuagintillion'),
(171, 'duoseptuagintillions'),
(172, 'quattuorseptuagintillion'),
(173, 'quattuorseptuagintillions'),
(174, 'treseptuagintillion'),
(175, 'treseptuagintillions'),
(176, 'septenseptuagintillion'),
(177, 'septenseptuagintillions'),
(178, 'quinseptuagintillion'),
(179, 'quinseptuagintillions'),
(180, 'unoctogintillion'),
(181, 'unoctogintillions'),
(182, 'octogintillion'),
(183, 'octogintillions'),
(184, 'sexseptuagintillion'),
(185, 'sexseptuagintillions'),
(186, 'novemseptuagintillion'),
(187, 'novemseptuagintillions'),
(188, 'octoseptuagintillion'),
(189, 'octoseptuagintillions'),
(190, 'treoctogintillion'),
(191, 'treoctogintillions'),
(192, 'quattuoroctogintillion'),
(193, 'quattuoroctogintillions'),
(194, 'quinoctogintillion'),
(195, 'quinoctogintillions'),
(196, 'duooctogintillion'),
(197, 'duooctogintillions'),
(198, 'novemoctogintillion'),
(199, 'novemoctogintillions'),
(200, 'septenoctogintillion'),
(201, 'septenoctogintillions'),
(202, 'octooctogintillion'),
(203, 'octooctogintillions'),
(204, 'sexoctogintillion'),
(205, 'sexoctogintillions'),
(206, 'nonagintillion'),
(207, 'nonagintillions'),
(208, 'unnonagintillion'),
(209, 'unnonagintillions'),
(210, 'duononagintillion'),
(211, 'duononagintillions'),
(212, 'quattuornonagintillion'),
(213, 'quattuornonagintillions'),
(214, 'novemnonagintillion'),
(215, 'novemnonagintillions'),
(216, 'trenonagintillion'),
(217, 'trenonagintillions'),
(218, 'octononagintillion'),
(219, 'octononagintillions'),
(220, 'sexnonagintillion'),
(221, 'sexnonagintillions'),
(222, 'centillion'),
(223, 'centillions'),
(224, 'quinnonagintillion'),
(225, 'quinnonagintillions'),
(226, 'septennonagintillion'),
(227, 'septennonagintillions'),
(228, 'pm'),
(229, 'pms'),
(230, 'picometre'),
(231, 'picometres'),
(232, 'dm'),
(233, 'dms'),
(234, 'decimetre'),
(235, 'decimetres'),
(236, 'Âµm'),
(237, 'Âµms'),
(238, 'micrometre'),
(239, 'micrometres'),
(240, 'mm'),
(241, 'mms'),
(242, 'millimetre'),
(243, 'millimetres'),
(244, 'cm'),
(245, 'cms'),
(246, 'centimetre'),
(247, 'centimetres'),
(248, 'nm'),
(249, 'nms'),
(250, 'nanometre'),
(251, 'nanometres'),
(252, 'am'),
(253, 'ams'),
(254, 'attometre'),
(255, 'attometres'),
(256, 'zm'),
(257, 'zms'),
(258, 'zeptometre'),
(259, 'zeptometres'),
(260, 'ym'),
(261, 'yms'),
(262, 'yoctometre'),
(263, 'yoctometres'),
(264, 'fm'),
(265, 'fms'),
(266, 'femtometre'),
(267, 'femtometres'),
(268, 'hectogram'),
(269, 'hectograms'),
(270, 'hg'),
(271, 'hgs'),
(272, 'decametre'),
(273, 'decametres'),
(274, 'dam'),
(275, 'dams'),
(276, 'terametre'),
(277, 'terametres'),
(278, 'Tm'),
(279, 'Tms'),
(280, 'petametre'),
(281, 'petametres'),
(282, 'gigametre'),
(283, 'gigametres'),
(284, 'Gms'),
(285, 'megametre'),
(286, 'megametres'),
(287, 'hectometre'),
(288, 'hectometres'),
(289, 'hm'),
(290, 'hms'),
(291, 'yottametre'),
(292, 'yottametres'),
(293, 'exametre'),
(294, 'exametres'),
(295, 'Em'),
(296, 'Ems'),
(297, 'zettametre'),
(298, 'zettametres'),
(299, 'decagram'),
(300, 'decagrams'),
(301, 'dag'),
(302, 'dags'),
(303, 'kilogram'),
(304, 'kilograms'),
(305, 'kg'),
(306, 'kgs'),
(307, 'megagram'),
(308, '('),
(309, 'tonne'),
(310, ')'),
(311, 's'),
(312, 'Mg'),
(313, 'Mgs'),
(314, 'gigagram'),
(315, 'gigagrams'),
(316, 'Gg'),
(317, 'Ggs'),
(318, 'teragram'),
(319, 'teragrams'),
(320, 'Tg'),
(321, 'Tgs'),
(322, 'petagram'),
(323, 'petagrams'),
(324, 'exagram'),
(325, 'exagrams'),
(326, 'Eg'),
(327, 'Egs'),
(328, 'zettagram'),
(329, 'zettagrams'),
(330, 'Zg'),
(331, 'Zgs'),
(332, 'yottagram'),
(333, 'yottagrams'),
(334, 'Yg'),
(335, 'Ygs'),
(336, 'centigram'),
(337, 'centigrams'),
(338, 'cg'),
(339, 'cgs'),
(340, 'nanogram'),
(341, 'nanograms'),
(342, 'ng'),
(343, 'ngs'),
(344, 'milligram'),
(345, 'milligrams'),
(346, 'decigram'),
(347, 'decigrams'),
(348, 'dg'),
(349, 'dgs'),
(350, 'microgram'),
(351, 'micrograms'),
(352, 'Âµg'),
(353, 'Âµgs'),
(354, 'femtogram'),
(355, 'femtograms'),
(356, 'fg'),
(357, 'fgs'),
(358, 'attogram'),
(359, 'attograms'),
(360, 'ag'),
(361, 'ags'),
(362, 'yoctogram'),
(363, 'yoctograms'),
(364, 'zeptogram'),
(365, 'zeptograms'),
(366, 'decisecond'),
(367, 'deciseconds'),
(368, 'ds'),
(369, 'dss'),
(370, 'millisecond'),
(371, 'milliseconds'),
(372, 'ms'),
(373, 'mss'),
(374, 'centisecond'),
(375, 'centiseconds'),
(376, 'cs'),
(377, 'css'),
(378, 'microsecond'),
(379, 'microseconds'),
(380, 'µs'),
(381, 'µss'),
(382, 'nanosecond'),
(383, 'nanoseconds'),
(384, 'ns'),
(385, 'nss'),
(386, 'femtosecond'),
(387, 'femtoseconds'),
(388, 'fs'),
(389, 'fss'),
(390, 'attosecond'),
(391, 'attoseconds'),
(392, 'as'),
(393, 'ass'),
(394, 'yoctosecond'),
(395, 'yoctoseconds'),
(396, 'ys'),
(397, 'yss'),
(398, 'zeptosecond'),
(399, 'zeptoseconds'),
(400, 'zs'),
(401, 'zss'),
(402, 'picosecond'),
(403, 'picoseconds'),
(404, 'ps'),
(405, 'pss'),
(406, 'hectosecond'),
(407, 'hectoseconds'),
(408, 'hs'),
(409, 'hss'),
(410, 'decasecond'),
(411, 'decaseconds'),
(412, 'das'),
(413, 'dass'),
(414, 'gigasecond'),
(415, 'gigaseconds'),
(416, 'Gs'),
(417, 'Gss'),
(418, 'megasecond'),
(419, 'megaseconds'),
(420, 'kilosecond'),
(421, 'kiloseconds'),
(422, 'ks'),
(423, 'kss'),
(424, 'terasecond'),
(425, 'teraseconds'),
(426, 'Ts'),
(427, 'Tss'),
(428, 'petasecond'),
(429, 'petaseconds'),
(430, 'yottasecond'),
(431, 'yottaseconds'),
(432, 'exasecond'),
(433, 'exaseconds'),
(434, 'Es'),
(435, 'Ess'),
(436, 'zettasecond'),
(437, 'zettaseconds'),
(438, 'week'),
(439, 'weeks'),
(440, 'years'),
(441, 'year'),
(442, 'grams');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add redditcontent', 1, 'add_redditcontent'),
(2, 'Can change redditcontent', 1, 'change_redditcontent'),
(3, 'Can delete redditcontent', 1, 'delete_redditcontent'),
(4, 'Can add log entry', 2, 'add_logentry'),
(5, 'Can change log entry', 2, 'change_logentry'),
(6, 'Can delete log entry', 2, 'delete_logentry'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add user', 5, 'add_user'),
(14, 'Can change user', 5, 'change_user'),
(15, 'Can delete user', 5, 'delete_user'),
(16, 'Can add content type', 6, 'add_contenttype'),
(17, 'Can change content type', 6, 'change_contenttype'),
(18, 'Can delete content type', 6, 'delete_contenttype'),
(19, 'Can add session', 7, 'add_session'),
(20, 'Can change session', 7, 'change_session'),
(21, 'Can delete session', 7, 'delete_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_sessions`
--

CREATE TABLE `auth_sessions` (
  `id` varchar(128) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_sessions`
--

INSERT INTO `auth_sessions` (`id`, `user_id`, `login_time`, `modified_at`, `ip_address`, `user_agent`) VALUES
('a7086aa5c1d853b6664214f47ec139cd8738e2cf', 2147484848, '2017-05-17 00:43:23', '2017-05-17 00:43:23', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('3884128c22bf947f2399b9d096ad5c66e636b6fd', 2147484848, '2017-05-17 01:25:56', '2017-05-17 01:31:01', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('51c81a823c15370617beb6f50823b29a5d41e0cc', 2147484848, '2017-05-17 08:06:25', '2017-05-17 08:29:36', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('ccf490fec43c35867e854da5871063b825386f8e', 2147484848, '2017-05-18 12:05:05', '2017-05-18 13:19:18', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('86c1f75d97d0ee8805f8eeeeb6a59e70e0b5f69f', 2147484848, '2017-05-18 13:19:38', '2017-05-18 14:16:49', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('f993284de7d4e0fed22614eef33d6d0ce2f470f0', 2147484848, '2017-05-19 16:49:12', '2017-05-19 17:02:44', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('9c73fe9d188efdc199aed73b1c76b633e094ef67', 2147484848, '2017-05-19 17:03:06', '2017-05-19 17:33:47', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('12406f56918fc73c50c4aceec890bccff755649b', 2147484848, '2017-05-19 17:55:33', '2017-05-19 18:16:58', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('d254dd3fba7ccf6eb14aec12ee5dd79531a76739', 2147484848, '2017-05-19 20:36:16', '2017-05-19 21:05:08', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('26719b88eb90041805b9d0a4de2e76491ee25bea', 2147484848, '2017-05-19 23:54:58', '2017-05-20 00:18:02', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('625be3f55b77164a7f09df86261b3f07fd71996c', 2147484848, '2017-05-20 08:53:53', '2017-05-20 10:46:17', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('43598f516bff97c0057c083568d2bf0f919f77c0', 2147484848, '2017-05-22 11:21:19', '2017-05-22 11:34:56', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('a960e10ceddc8ca0f1e6ddf74f7bbfe6e308ef1b', 2147484848, '2017-05-22 11:45:52', '2017-05-22 11:51:38', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('5f5732dbefff06644a9aa9a73df5fcb09af20552', 2147484848, '2017-05-22 14:05:32', '2017-05-22 14:05:33', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('de61b99c25c3ce2da66b6d68e67992d07609aa6b', 2147484848, '2017-05-22 23:28:44', '2017-05-23 00:12:30', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('8a4d5edc48fa6ab4dd441043e793266382b305a6', 2147484848, '2017-05-23 11:38:07', '2017-05-23 11:38:08', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('913ea397ba8676441a21427d060cc1c66b0e1d89', 2147484848, '2017-05-24 06:47:07', '2017-05-24 06:58:17', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('9f2798be6e9503feb809f694ea2c01162c50b32b', 2147484848, '2017-05-24 06:58:30', '2017-05-24 07:19:08', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('9d45a07a88d618361e34d23da0da56b12c4f2666', 2147484848, '2017-05-24 11:23:14', '2017-05-24 11:23:15', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('dd9225bc3aedc106175687c4aa299d94e35fd9a3', 2147484848, '2017-05-27 15:09:47', '2017-05-27 15:47:09', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('0f4e47a0e631cdd15784b8f912d09ab6b7029664', 2147484848, '2017-05-27 15:47:22', '2017-05-27 15:52:23', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('2a32cfc38086c33e4dc104479a769171796c7c9d', 2147484848, '2017-05-27 21:15:04', '2017-05-27 21:15:04', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('5a85cb32273facb162e84494810ea8d794e019d9', 2147484848, '2017-05-28 18:49:29', '2017-05-28 20:11:00', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('f1e14a7275bd42f378e9a594b45d086917396d56', 2147484848, '2017-05-29 22:10:44', '2017-05-29 23:05:51', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('7669f2396f140386fcf8d9908cdd91b4cab6a1b7', 2147484848, '2017-05-29 23:06:02', '2017-05-29 23:18:20', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('ddffcb31cab745b03c380ca78d8ec3f75dffe562', 2147484848, '2017-05-30 08:07:40', '2017-05-30 08:58:26', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('5b815eb66923486aeb1f6798f5e581e20b49070d', 2147484848, '2017-05-30 11:02:10', '2017-05-30 11:56:55', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('0142722270a6089da9307d6546e04cbdbde30e17', 2147484848, '2017-06-02 11:00:45', '2017-06-02 12:13:12', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('6b029359e8734a1138abe4d30727efe65169277d', 2147484848, '2017-06-02 22:01:25', '2017-06-02 22:26:21', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('3bf701b74fc1a5efb4b41bea7d724f516765f73e', 2147484848, '2017-06-03 16:25:23', '2017-06-03 17:01:30', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('9bf5e734a08899488dc64a6ad7da861aba5df123', 2147484848, '2017-06-03 20:14:46', '2017-06-03 22:21:20', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('27521745e58f9f94e844a87db13811cdd72d8f03', 2147484848, '2017-06-04 07:31:29', '2017-06-04 09:30:44', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('3176db73676574ab8b8792a8687fc1ea57a5d27c', 2147484848, '2017-06-04 09:30:58', '2017-06-04 09:42:24', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('af56bc74a2ad303d1d45218a2b76eb0e664fc98c', 2147484848, '2017-06-04 09:42:36', '2017-06-04 10:05:35', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('2ab4e026c0320d437c8970089799045c80e2b459', 2147484848, '2017-06-04 15:13:47', '2017-06-04 16:43:06', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('a594a177b7bce977c69bd6c0b72b31f5901774d2', 2147484848, '2017-06-08 13:49:33', '2017-06-08 14:59:07', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('72f7b860b02c924dbb26790278575566b96bdab5', 2147484848, '2017-06-11 20:25:14', '2017-06-11 22:33:51', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('5a81feda0462c5f6d417023ddbf9a745d38e20c1', 2147484848, '2017-06-28 22:07:08', '2017-06-28 22:42:48', '::1', 'Chrome 58.0.3029.110 on Windows 7'),
('7153581c5619f5d275d9627f3824c36533b27002', 2147484848, '2017-07-04 21:21:59', '2017-07-05 01:23:19', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('d75b3d5a71e827895743d66edd30b1c84726831e', 2147484848, '2017-07-13 22:06:07', '2017-07-13 22:36:57', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('b312c8166841c40c68237f550e4315bc42db714d', 2147484848, '2017-07-16 09:45:37', '2017-07-16 10:21:33', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('610e4242a8c50d1ba3adf545b4c0c8930735526b', 2147484848, '2017-07-17 10:16:27', '2017-07-17 10:16:30', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('e31813db404d35fd0eb763db2902af3c4f86b61a', 2147484848, '2017-07-18 21:47:05', '2017-07-18 22:34:59', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('c2d0717e39bbe162c6ea53ee3574d18026098088', 2147484848, '2017-07-19 12:30:36', '2017-07-19 12:30:37', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('4ba1b8ed45781b491e843c6d149917879cd0eba5', 2147484848, '2017-07-23 02:52:47', '2017-07-23 02:52:47', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('9ee76a2905870c31d84a4474cc76a7cf7d9b7af3', 2147484848, '2017-07-23 05:16:10', '2017-07-23 05:49:23', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('079485c22ce46616440e75bce036202841bfc4d7', 2147484848, '2017-07-23 19:15:44', '2017-07-23 21:38:24', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('656d5787794ab835f46b6d2af0c032e607431612', 2147484848, '2017-07-23 21:49:25', '2017-07-23 23:01:07', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('880dde57eb96b4543ed7855793c24d9dae76b538', 2147484848, '2017-07-23 23:14:51', '2017-07-23 23:19:58', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('3b7dd732d7a95d619c101165dd429b98a8928785', 2147484848, '2017-07-24 19:55:38', '2017-07-24 20:32:24', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('5a1f551c0ce6bc849d7fa21ad5f2ce9cf801bf3c', 2147484848, '2017-07-25 20:45:22', '2017-07-25 23:44:53', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('e35a6437d1f2722e5a4a06c1082513ecccd1cae7', 2147484848, '2017-07-25 23:45:12', '2017-07-26 00:40:38', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('d013654a801fefc78a78d8bfaaa4c843e80db739', 2147484848, '2017-07-26 00:40:49', '2017-07-26 00:40:49', '::1', 'Chrome 59.0.3071.115 on Windows 7'),
('36c486ff4553a3faf2fa9031d4f94f6050e1db1d', 2147484848, '2017-08-14 19:14:37', '2017-08-14 19:14:38', '::1', 'Chrome 60.0.3112.90 on Windows 7');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$OHUqsMKAvMom$gtssq9R9pDUdfRkVlaljNMouTKzSWXpKlexVaWjs2Ak=', '2017-10-21 19:58:28.453786', 1, 'karthik', '', '', 'karthikwasudevan@gmail.com', 1, 1, '2017-09-08 02:29:36.740393');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `candidate` varchar(30) CHARACTER SET utf8 NOT NULL,
  `com_id` int(11) NOT NULL,
  `word_index` int(11) NOT NULL,
  `word_tag` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `candidate`, `com_id`, `word_index`, `word_tag`) VALUES
(1, '100', 1, 2, 'CD'),
(2, '16', 5, 15, 'CD'),
(3, '100', 10, 12, 'CD'),
(4, '10', 11, 1, 'CD'),
(5, 'D9', 12, 148, 'NNP'),
(6, '85', 12, 150, 'CD'),
(7, 'D8', 12, 152, 'NNP'),
(8, 'D8', 12, 156, 'NNP'),
(9, 'A7', 12, 158, 'NNP'),
(10, 'D9', 12, 160, 'NNP'),
(11, '88', 12, 162, 'CD'),
(12, 'D9', 12, 164, 'NNP'),
(13, '84', 12, 166, 'CD'),
(14, 'D8', 12, 168, 'NNP'),
(15, 'A9_', 12, 170, 'NNP'),
(16, 'D8', 12, 172, 'NNP'),
(17, 'A7', 12, 174, 'NNP'),
(18, 'D9', 12, 176, 'NNP'),
(19, '86', 12, 178, 'CD'),
(20, 'D9', 12, 180, 'NNP'),
(21, '82', 12, 182, 'CD'),
(22, 'D9', 12, 184, 'NNP'),
(23, '84', 12, 186, 'CD'),
(24, 'D8', 12, 188, 'NNP'),
(25, 'A7', 12, 190, 'NNP'),
(26, 'D8', 12, 192, 'NNP'),
(27, 'A8_', 12, 194, 'NNP'),
(28, 'D8', 12, 196, 'NNP'),
(29, 'A3', 12, 198, 'NNP'),
(30, 'D9', 12, 200, 'NNP'),
(31, '88', 12, 202, 'CD'),
(32, 'D9', 12, 204, 'NNP'),
(33, '81', 12, 206, 'CD'),
(34, 'D9', 12, 208, 'NNP'),
(35, '82', 12, 210, 'CD'),
(36, 'D9', 12, 212, 'NNP'),
(37, '8A', 12, 214, 'CD'),
(38, 'D8', 12, 216, 'NNP'),
(39, 'B1', 12, 218, 'NNP'),
(40, '1', 19, 2, 'CD'),
(41, 'Boeing727', 23, 10, 'NNP'),
(42, '100', 26, 2, 'CD'),
(43, '4', 33, 5, 'CD'),
(44, '20', 48, 1, 'CD'),
(45, '16', 52, 11, 'CD'),
(46, '1971', 53, 14, 'CD'),
(47, '1971', 53, 74, 'CD'),
(48, '16:45', 53, 85, 'CD'),
(49, '6', 54, 3, 'CD'),
(50, '1', 54, 15, 'CD'),
(51, '102', 54, 17, 'CD'),
(52, 'C3', 54, 26, 'NNP'),
(53, '2', 54, 32, 'CD'),
(54, '157', 54, 34, 'CD'),
(55, '1970s', 62, 19, 'NNS'),
(56, 'WW2', 62, 25, 'NNP'),
(57, '1904', 65, 2, 'CD'),
(58, 'E2', 65, 12, 'NNP'),
(59, '80', 65, 14, 'CD'),
(60, '93_Men', 65, 16, 'CD'),
(61, '1325', 67, 16, 'CD'),
(62, '1st', 68, 13, 'CD'),
(63, '1945', 68, 15, 'CD'),
(64, '14', 71, 7, 'CD'),
(65, '14th', 77, 4, 'CD'),
(66, '17th', 77, 6, 'CD'),
(67, '2', 79, 11, 'CD'),
(68, '10,000', 79, 20, 'CD'),
(69, '1995', 80, 1, 'CD'),
(70, '1971', 85, 11, 'CD'),
(71, '90-day', 85, 15, 'JJ'),
(72, '20th', 89, 31, 'JJ'),
(73, '10', 91, 6, 'CD'),
(74, '1942', 91, 8, 'CD'),
(75, '18', 91, 29, 'CD'),
(76, 'B-17', 91, 42, 'NNP'),
(77, '17', 91, 68, 'CD'),
(78, '1', 92, 3, 'CD'),
(79, '10', 92, 36, 'CD'),
(80, '10', 92, 176, 'CD'),
(81, '2', 92, 197, 'CD'),
(82, '1916', 92, 248, 'CD'),
(83, '2', 92, 250, 'CD'),
(84, '1986', 93, 27, 'CD'),
(85, '1936', 95, 85, 'CD'),
(86, '1919', 97, 5, 'CD'),
(87, '21', 97, 17, 'CD'),
(88, '150', 97, 21, 'CD'),
(89, '35', 97, 25, 'CD'),
(90, '1618', 100, 2, 'CD'),
(91, '1419', 100, 40, 'CD'),
(92, '7', 100, 45, 'CD'),
(93, '335', 101, 1, 'CD'),
(94, '1651', 101, 15, 'CD'),
(95, '1986', 101, 19, 'CD'),
(96, '100', 105, 11, 'CD'),
(97, '80', 106, 9, 'CD'),
(98, '81', 106, 14, 'CD'),
(99, '100', 107, 16, 'CD'),
(100, '1', 107, 23, 'CD'),
(101, 'ww3', 109, 9, 'NNS'),
(102, '19', 110, 20, 'CD'),
(103, '20', 113, 45, 'CD'),
(104, '20th', 117, 5, 'JJ'),
(105, '10', 117, 43, 'CD'),
(106, '70s', 118, 30, 'CD'),
(107, '80s', 118, 32, 'CD'),
(108, '1000s', 118, 63, 'CD'),
(109, '2', 119, 5, 'CD'),
(110, '1939', 120, 13, 'CD'),
(111, '1660', 122, 7, 'CD'),
(112, '14th', 125, 6, 'CD'),
(113, '17th', 125, 8, 'CD'),
(114, '17', 133, 163, 'CD'),
(115, '25', 135, 44, 'CD'),
(116, '1994-2011', 135, 48, 'JJ'),
(117, '30-40', 135, 62, 'JJ'),
(118, '150', 141, 127, 'CD'),
(119, '100', 161, 35, 'CD'),
(120, '200,00', 169, 13, 'CD'),
(121, '2', 175, 124, 'CD'),
(122, '3', 175, 129, 'CD'),
(123, '1', 178, 117, 'CD'),
(124, '5000', 178, 120, 'CD'),
(125, '2', 178, 127, 'CD'),
(126, '30', 179, 395, 'CD'),
(127, '10^-4', 180, 131, 'JJ'),
(128, '10^-8', 180, 136, 'CD'),
(129, '3', 182, 39, 'CD'),
(130, '4', 182, 47, 'CD'),
(131, '1', 183, 21, 'CD'),
(132, '2', 183, 36, 'CD'),
(133, '3', 183, 64, 'CD'),
(134, 'a=0.14', 188, 15, 'NN'),
(135, 'r=0.02', 188, 17, 'NN'),
(136, '1-r', 188, 27, 'JJ'),
(137, '0.14/0.98', 188, 30, 'CD'),
(138, '14/98', 188, 32, 'CD'),
(139, '1/7', 188, 34, 'CD'),
(140, '1/7', 189, 1, 'CD'),
(141, '2/7', 189, 5, 'CD'),
(142, '3/7', 189, 9, 'CD'),
(143, '4/7', 189, 13, 'CD'),
(144, '5/7', 189, 17, 'CD'),
(145, '6/7', 189, 21, 'CD'),
(146, '.85714285', 189, 23, 'NN'),
(147, '1', 189, 35, 'CD'),
(148, '4', 189, 37, 'CD'),
(149, '2', 189, 39, 'CD'),
(150, '8', 189, 41, 'CD'),
(151, '5', 189, 43, 'CD'),
(152, '7', 189, 45, 'CD'),
(153, '7', 189, 55, 'CD'),
(154, '1/17', 190, 12, 'CD'),
(155, '1/7', 191, 89, 'CD'),
(156, '1/6', 191, 103, 'CD'),
(157, '1/11', 191, 105, 'CD'),
(158, '1/13', 191, 107, 'CD'),
(159, '1/7', 191, 118, 'CD'),
(160, '2/7', 191, 120, 'CD'),
(161, '3/7', 191, 122, 'CD'),
(162, '4/7', 191, 124, 'CD'),
(163, '1/4', 191, 147, 'CD'),
(164, '7', 191, 150, 'CD'),
(165, '20171030', 193, 50, 'CD'),
(166, '10000000x', 193, 58, 'CD'),
(167, '10000000x', 193, 63, 'CD'),
(168, '9999999x', 193, 67, 'CD'),
(169, '20171030', 193, 69, 'CD'),
(170, '1/89', 194, 9, 'CD'),
(171, '1/9899', 194, 11, 'CD'),
(172, '1/998999', 194, 13, 'CD'),
(173, '89', 194, 25, 'CD'),
(174, '100', 194, 27, 'CD'),
(175, '10', 194, 29, 'CD'),
(176, '1', 194, 31, 'CD'),
(177, 'x^2', 194, 33, 'NNP'),
(178, '1', 194, 37, 'CD'),
(179, '89', 194, 57, 'CD'),
(180, '1/98', 195, 5, 'CD'),
(181, '1/998', 195, 7, 'CD'),
(182, '1/9998', 195, 9, 'CD'),
(183, '1/99998', 195, 11, 'CD'),
(184, '1/81', 195, 32, 'CD'),
(185, '1/9801', 195, 34, 'CD'),
(186, '1/998001', 195, 36, 'CD'),
(187, '10^6', 197, 6, 'CD'),
(188, '142857', 197, 13, 'CD'),
(189, '10^6', 197, 17, 'CD'),
(190, '1', 197, 19, 'CD'),
(191, '142857', 197, 23, 'CD'),
(192, '142857', 197, 26, 'CD'),
(193, '10^6', 197, 29, 'CD'),
(194, '1', 197, 31, 'CD'),
(195, '1/7', 197, 34, 'CD'),
(196, '10^b', 197, 51, 'CD'),
(197, '1', 197, 53, 'CD'),
(198, '10^b', 197, 72, 'CD'),
(199, '1', 197, 74, 'CD'),
(200, '2', 197, 107, 'CD'),
(201, '5', 197, 109, 'CD'),
(202, '4cm', 202, 9, 'CD'),
(203, '250', 202, 20, 'CD'),
(204, '9/10', 205, 23, 'CD'),
(205, '120', 206, 5, 'CD'),
(206, 'ELI5', 212, 0, 'NNP'),
(207, '4th', 214, 15, 'JJ'),
(208, '100', 218, 7, 'CD'),
(209, '1', 218, 60, 'CD'),
(210, '1', 218, 199, 'CD'),
(211, '0.3', 227, 9, 'CD'),
(212, '1', 227, 12, 'CD'),
(213, '70', 227, 24, 'CD'),
(214, '105', 227, 27, 'CD'),
(215, '40', 229, 30, 'CD'),
(216, '100', 229, 75, 'CD'),
(217, '100W', 230, 83, 'CD'),
(218, '60C', 230, 88, 'CD'),
(219, '100W', 230, 106, 'CD'),
(220, '200C', 230, 111, 'CD'),
(221, '1', 231, 57, 'CD'),
(222, '1500', 232, 10, 'CD'),
(223, '99.5', 232, 28, 'CD'),
(224, '1500', 232, 31, 'CD'),
(225, '100', 232, 52, 'CD'),
(226, '99.9', 232, 60, 'CD'),
(227, '1', 233, 29, 'CD'),
(228, '2000', 233, 31, 'CD'),
(229, '50,000', 233, 47, 'CD'),
(230, '3', 240, 34, 'CD'),
(231, 'C02', 249, 1, 'NNP'),
(232, '0', 252, 6, 'CD'),
(233, 'k-1', 252, 16, 'JJ'),
(234, '100', 253, 25, 'CD'),
(235, '2', 255, 18, 'CD'),
(236, '1/3', 260, 86, 'CD'),
(237, 'y-1-x/2', 260, 90, 'NN'),
(238, '2', 260, 94, 'CD'),
(239, '+3x^', 260, 96, 'NN'),
(240, '2', 260, 98, 'CD'),
(241, '/4', 260, 100, 'NN'),
(242, '1:1:1', 261, 27, 'CD'),
(243, '5:2:3', 261, 34, 'CD'),
(244, '6:2:2', 261, 36, 'CD'),
(245, '8:1:1', 261, 50, 'CD'),
(246, '=0', 263, 42, 'NN'),
(247, '=0', 263, 55, 'NN'),
(248, 'x=0', 263, 59, 'CD'),
(249, '=0', 263, 65, 'NN'),
(250, '=0', 263, 75, 'NN'),
(251, '0', 265, 26, 'CD'),
(252, '0', 265, 40, 'CD'),
(253, '0', 265, 68, 'JJ'),
(254, 'R^2', 266, 7, 'NNP'),
(255, 'R^2', 266, 24, 'NNP'),
(256, 'y,0,0', 266, 29, 'PRP'),
(257, 'R^4', 266, 32, 'NNP'),
(258, 'R^3', 266, 42, 'NNP'),
(259, 'R^4', 266, 49, 'NNP'),
(260, '0,0,1', 266, 54, 'CD'),
(261, 'R^2', 266, 76, 'NNP'),
(262, 'x1', 266, 81, 'NNP'),
(263, 'x2', 266, 83, 'NNP'),
(264, 'x1', 266, 87, 'UH'),
(265, 'x2,0', 266, 89, 'JJ'),
(266, 'R^3', 266, 103, 'NNP'),
(267, '1', 268, 82, 'CD'),
(268, 'F=mu_0', 269, 31, 'NNP'),
(269, '2*r', 269, 35, 'CD'),
(270, '2', 269, 56, 'CD'),
(271, '-1', 272, 11, 'NN'),
(272, '+k*2pi', 273, 24, 'NNP'),
(273, '-pi/2', 273, 31, 'SYM'),
(274, 'k*2pi', 273, 33, 'NN'),
(275, '0', 275, 5, 'CD');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_id` int(11) NOT NULL,
  `com_link_id` varchar(20) NOT NULL,
  `score` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`, `score`) VALUES
(1, 'Speech : 100', 1, 'dp4g5up', '4737'),
(2, 'The Bugs Bunny School of Quelling Rebellion .', 1, 'dp4frm0', '1063'),
(3, 'Mission failed . We \'ll get them next time', 1, 'dp4futo', '912'),
(4, 'All you had to do was shoot down the plane , CJ !', 1, 'dp4roye', '480'),
(5, '> Oufkir [ coup leader ] was found dead of multiple gunshot wounds later on 16 August , ostensibly from suicide . Ah yes , shot himself in the back with several machine guns , I hear . Edit : Yes , I get it , /r/The_Donald : `` Just like Hillary \'\' har har har well memed !', 1, 'dp4tvob', '1395'),
(6, 'See this is why he \'s king and you \'re not .', 1, 'dp4u22d', '194'),
(7, 'They were bamboozled', 1, 'dp4h2wt', '288'),
(8, 'That \'s some self awareness right there .', 1, 'dp4sjsr', '30'),
(9, 'I doubt he said it in English .', 1, 'dp4ff30', '292'),
(10, 'Maaaan I am Moroccan but I do n\'t think this could be 100 % true , people try to glorify the king at every possible way ... but his loss at that time might have caused the country a lot , however it \'s during that time also where he made the platform for good investments for his successor ( feeeew benefits for the people ) .', 1, 'dp4scmp', '191'),
(11, 'Top 10 anime betrayals', 1, 'dp4vd4u', '21'),
(12, 'The English wiki seems to be fabricated ; wherein , if you head to the Arabic article ( origin ) and read it , you \'d come to understand that the events did not even remotely resemble whats written on the English page . In the Arabic one , it states that plane pilot , not the king , told the plane engineer ( who was present on the plane ) to radio the attackers . Informing them that both the pilot and the copilot have been killed ; furthermore , the King has been wounded by a bullet to the neck and is not expected to survive . [ After which he pleaded the attackers to think about the wife and the child he \'d leave behind . **This** prompted the attacking planes to retreat after getting the kill confirmation . ] ( https : //ar.wikipedia.org/wiki/ % D9 % 85 % D8 % AD % D8 % A7 % D9 % 88 % D9 % 84 % D8 % A9_ % D8 % A7 % D9 % 86 % D9 % 82 % D9 % 84 % D8 % A7 % D8 % A8_ % D8 % A3 % D9 % 88 % D9 % 81 % D9 % 82 % D9 % 8A % D8 % B1 # .D9.82.D8.B5.D9.81_.D8.A7.D9.84.D8.B7.D8.A7.D8.A6.D8.B1.D8.A9 ) In reality , The king did not intervene nor was he the piolt .', 1, 'dp4whv1', '1'),
(13, 'Smart man', 1, 'dp4hxup', '15'),
(14, 'Well played', 1, 'dp4engl', '30'),
(15, 'Amateurs . If the whole point was to shoot down the plane , why not follow through just in case', 1, 'dp4on1e', '74'),
(16, 'i have to say , it sounds very cartoony in English , some seriousness was lost in the translation', 1, 'dp4ubtj', '10'),
(17, 'The CIA ca n\'t get anything right .', 1, 'dp4v1ed', '10'),
(18, 'Politicians are only good for lying .', 1, 'dp4vhbl', '7'),
(19, 'Rule # 1 Tell them what they want to hear', 1, 'dp4te37', '15'),
(20, 'pilot : `` can you confirm his dead ? \'\' `` Your bullet broke the lamp of the bathroom the glass shattered into his eye now he died from breast cancer \'\' pilot : `` thanks \'\'', 1, 'dp4v6jm', '16'),
(21, 'Slippery guys always act that way，the only difference is he succeeded this time .', 1, 'dp4t6b1', '6'),
(22, 'I have no idea why but I first read that as `` TIL during a routine coup attempt \'\' .', 1, 'dp4tfld', '13'),
(23, 'What kind of modern jet could n\'t shoot down a Boeing727 with a single attack ? Were they ramming and throwing ropes to board for an epic swordfight ? In an actual attack the king should be dead or unconcious before even he knows what \'s happening', 1, 'dp4sh9z', '20'),
(24, 'Those are the dumbest assasins I \'ve ever heard of .', 1, 'dp4vw2h', '4'),
(25, 'thats pretty smart , i guess thats why he was a king', 1, 'dp4rxdu', '7'),
(26, 'ILLUSION : 100', 1, 'dp4vnw9', '7'),
(27, 'Mother of all the poker bluffs .', 1, 'dp4u6au', '3'),
(28, 'If we can get this mentioned on Fox and Friends it could lead to one of the funniest Twitler moments ever .', 1, 'dp4vru8', '2'),
(29, 'That \'s why he \'s the king .', 1, 'dp4vx25', '2'),
(30, 'Did he deserve to be killed ?', 1, 'dp4ujbm', '2'),
(31, 'Morocco was never the same politically after king Hassan II died , it ’ s a shitshow now . He might have gone overboard sometimes with his strictness , but that was necessary to keep things in check . His political prowess , eloquence and long term vision were unmatched . When he had a speech , the whole country listened .', 1, 'dp4w8kj', '1'),
(32, '[ Relevant ] ( https : //youtu.be/dLJTgvKFZoQ )', 1, 'dp4tur6', '1'),
(33, 'So what became of those 4 pilots ? And what \'s their backstory ?', 1, 'dp4u6fg', '1'),
(34, 'Got ta respect the tyrant', 1, 'dp4vb8p', '1'),
(35, 'aaa', 1, 'dp4vdxr', '1'),
(36, 'Almost all crown princes are pilots , but that \'s hella cool !', 1, 'dp4vlvt', '1'),
(37, 'What a fucking legend .', 1, 'dp4vscs', '1'),
(38, 'Four Airplanes , an entire base and NO Missiles ? Why ?', 1, 'dp4vxuw', '1'),
(39, 'Aaaand that \'s when the `` Guantanamo \'\' of Morocco was built ... Tazmamaret ! ! !', 1, 'dp4w22o', '1'),
(40, '`` the tyrant is dead \'\' so he knows ?', 1, 'dp4w2h0', '1'),
(41, 'A remarkable level of self-awareness .', 1, 'dp4w6er', '1'),
(42, 'Sounds like a scene from team America', 1, 'dp4w8lj', '1'),
(43, 'Tyrant \'s gon na tyrant .', 1, 'dp4w916', '1'),
(44, 'Can you imagine his thought process as he landed . “ I ’ m about to hang a bunch of people ” .', 1, 'dp4w9ae', '1'),
(45, 'Big joke !', 1, 'dp4wfwi', '1'),
(46, 'Another happy landing', 1, 'dp4wneu', '1'),
(47, 'Sounds far fetched .', 1, 'dp4wqb2', '1'),
(48, 'Nat 20 on Bluff check .', 1, 'dp4wtuk', '1'),
(49, 'Jebaited', 1, 'dp4wusj', '1'),
(50, 'That is a next level game theorist right there ...', 1, 'dp4wxc4', '1'),
(51, 'So was he a tyrant ?', 1, 'dp4wz3v', '1'),
(52, '« Oufkir was found dead of multiple gunshot wounds later on 16 August , ostensibly from suicide »', 1, 'dp4x5xr', '1'),
(53, 'Haha , I wrote the English Wikipedia article on the previous coup attempt in 1971 : https : //en.wikipedia.org/wiki/1971_Moroccan_coup_attempt Some pieces of information are highly controversial but we put them anyways because we do n\'t have better sources . There was a strong cult of personality surrounding the king at the time and it continues to this day . The king most likely never said that phrase . This is what supposedly happened in 1971 : `` When the firing died down , at about 16:45 , the king re-emerged to find himself face to face with one of the rebel commanders . Keeping eye contact , he recited the opening verse of the Koran , and the rebel knelt and kissed his hand \'\' North Korean vibes ?', 1, 'dp4xass', '1'),
(54, 'Repost from [ 6 weeks ago ] ( https : //reddit.com/r/todayilearned/comments/704g97/til_that_a_failed_coup_lead_by_pilots_of_kings/ ) See also [ 1 year 102 days ago ] ( https : //reddit.com/r/todayilearned/comments/4tvd18/til_of_1972_moroccan_coup_d % C3 % A9tat_attempt_during/ ) And [ 2 years 157 days ago ] ( https : //reddit.com/r/todayilearned/comments/37h17q/til_the_king_of_morocco_hassan_ii_grabbed_the/ ) Just saying .', 1, 'dp4tjw8', '-4'),
(55, 'Hmm', 1, 'dp4fk3o', '1'),
(56, 'I too read Going Clear .', 1, 'dp4q2au', '1'),
(57, 'One job . They had one job .', 1, 'dp4veya', '1'),
(58, 'The Moroccan king is really good , he has really helped the country progress', 1, 'dp4vu4x', '1'),
(59, 'There was probably a good reason they were trying to kill him .', 1, 'dp4vv54', '0'),
(60, 'That would n\'t work today because of cockpit security rules ...', 1, 'dp4qcf3', '-25'),
(61, 'That time Emperor Napoleon escaped from the island he was imprisoned on after his army was finally defeated , snuck back into France under the nose of King Louis XVIII and literally every royal guard and roadblock from Marseillais to Paris , then when he was actually caught just outside of Paris , he managed to persuade the soldiers ( who just so happened to be former Bonapartists ) to escort him into Paris where he managed to successfully cause the king to flee , on top of raising a full army to wage war against Europe AGAIN . The only time in history an emperor took back an entire country just by waving his hat .', 2, 'dp4i1cl', '13640'),
(62, 'I already posted once , but I got another one : There were still Japanese soldiers well into the 1970s who had no idea the WW2 was over . Like , they just got left behind by the Navy and held out on isolated islands . For decades . One guy in particular spent his time feuding with the Filipino police . Everyone tried to tell him the war was over , but he thought it was a bunch of propoganda . Word eventually got back to Japan , where they had to look up his commanding officer ( who had since left the military for a career as a businessman ) and fly him to the Philippines . Only after receiving a direct order from his commanding officer did the guy stand down .', 2, 'dp4n6mb', '4982'),
(63, 'President John Adams once sent an alligator to Marquis de Lafayette . Lafayette had no idea what the fuck to do with it , so he gave it back .', 2, 'dp4ki9o', '981'),
(64, 'The Battle of Teutoburg Forest . So there \'s this Germanic Chieftain , Segimerus , and as punishment for fighting Rome , the Romans took his son Arminius and attempted to turn him into one of them . He was raised by a Roman family , given a Roman military education , and ended up as an officer in a force under general Publius Quinctilius Varus . In the meantime , Segimerus dies , so his son is by all rights , the Chieftain of this tribe . Varus was sent to Germany to fight Arminius \' tribe , and , would n\'t you know it , Arminius disappears one night . In the morning , the army moves off through the forest , and , shockingly , gets ambushed by Arminius and and army of angry Germans , who wipe out Varus \' army . Varus himself commits suicide to avoid facing punishment for this disaster , and Rome never tried to take territory on that side of the Rhine ever again .', 2, 'dp4bt38', '460'),
(65, '[ The 1904 Summer Olympics Marathon ] ( https : //en.wikipedia.org/wiki/Athletics_at_the_1904_Summer_Olympics_ % E2 % 80 % 93_Men % 27s_marathon ) , where the winner was given a mixture of rat poison and brandy by his trainers , a Cuban postman finished in fourth despite getting food poisoning midway through the race , and a couple runners were nearly killed due to the generally poor conditions and organization/officiating of the race .', 2, 'dp4cv2s', '5926'),
(66, 'This dude , [ Emperor Norton ] ( https : //en.wikipedia.org/wiki/Emperor_Norton ) , was a real hoot . Declared himself emperor of the US and many just sort of went along with it - he even exchanged letters with the Queen .', 2, 'dp491ls', '3741'),
(67, '[ War of the Bucket ] ( https : //en.m.wikipedia.org/wiki/War_of_the_Bucket ) This was a war in 1325 between Bologna and Modena fought because , I shit you not , Modena stole Bologna \'s town bucket . Modena won and still holds the bucket today .', 2, 'dp48xev', '10578'),
(68, 'According to “ The last battle ” by Cornelius Ryan : On May 1st , 1945 , the day after Adolf Hitler commited suicide , general Hans Krebs was sent under a white flag to deliver a letter to General Vasily Chuikov of the Red Army , containing surrender terms acceptable to Joseph Goebbels , then acting as Chancellor of Germany . Krebs had not announced that he was coming , taking Chuikov by surprise . At that time , he was being interviewed by two war correspondents , Konstantin Simonov and Yevgeniy Dolmatovsky , accompanied by musician Matvey Blanter ( Who wrote the internationally famous “ Katyusha ” ) When he was informed that Krebs was waiting for him outside , Chuikov , wanting to speak to Krebs as soon as possible , while making sure the meeting would seem official , quickly gave the interviewers , who were dressed in uniform , medals so that they would act as his staff . Not knowing what to do with Blanter , however , since he was dressed in civilian clothing , Chuikov hastily shoved him into a cupboard and ordered him to keep quiet , which he managed to do for the duration of the meeting . Unfortunately , the meeting came to nothing , as the Soviets would accept nothing but unconditional surrender . Once the meeting is over , just as Krebs and his men are leaving with the bad news , Blanter passes out from lack of oxygen , and falls out of the cupboard onto the floor of the room right in front of them . There was a scene in the film “ Downfall ” showing the events of this meeting , but the scene was removed out of worry that it would not be taken seriously , even though it really happened .', 2, 'dp4akw9', '2721'),
(69, 'The Newport sex scandal . IIRC , this was shortly after WWI . There was an investigation launched to root out homosexuals in the Navy . The investigation was conducted by having undercover agents , well ... have sex with men . And to report their `` findings \'\' in *very* vivid detail to the guys heading the investigation . No homo . Also , FDR was Secretary of the Navy at the time and signed off on the whole thing .', 2, 'dp4bajq', '3178'),
(70, 'That moment when one petty pope dug up the corpse of another dead pope just so he could de-pope him in front of a jury of his peers .', 2, 'dp44flh', '11442'),
(71, '[ That one time a fleet of 14 dutch warships got captured by French cavalry ] ( https : //en.wikipedia.org/wiki/Capture_of_the_Dutch_fleet_at_Den_Helder )', 2, 'dp4b1lx', '1453'),
(72, 'That a Roman Emperor died because he gave himself a brain aneurysm from yelling so much at some envoys .', 2, 'dp3uvap', '6870'),
(73, 'That time America dropped a nuke on North Carolina', 2, 'dp41xc8', '7401'),
(74, 'The Romans would flood the colosseum with water and have naval battles there', 2, 'dp4g715', '5324'),
(75, 'Did n\'t Australia name a pool after a drowned PM ? ? ? Like , really guys ? ?', 2, 'dp438f5', '1727'),
(76, 'John Dillinger escaped prison by carving a potato into the shape of a gun .', 2, 'dp3vi82', '3019'),
(77, 'Dancing plague around the 14th and 17th centuries , large groups of people dancing on the streets until they collapsed from exhaustion . It is so strange that is hard to believe .', 2, 'dp3vcw1', '7583'),
(78, 'Can someone help me with this one ? It was during the Civil War where a general actually found the battle plans of the enemy but was such a shitty general that he still lost', 2, 'dp3y52c', '4600'),
(79, 'I forgot what year , but in the Renaissance era , 2 massive Austrian armies mistakenly attacked each other . 10,000 men were lost', 2, 'dp4bs3x', '1086'),
(80, 'The 1995 break in at Sussex Drive ( Canadian prime ministers home ) . Attempted murder thwarted by PM \'s wife brandishing loon statue . My favourite part is PM Chrétien , after his wife woke him in a panic , tried to tell her `` it \'s just a dream \'\' https : //en.m.wikipedia.org/wiki/André_Dallaire # The_break-in Tl ; dr very Canadian assassination attempt', 2, 'dp4704a', '1852'),
(81, 'When ya boi Caesar was kidnapped by pirates and he laughed at them for low ransom and told them to raise it . Then over the course of time it took the Romans to raise the money , Caesar developed something of a friendship with the pirates to the point where he was joining in with their games and exercises . When the ransom arrived , he handed it over to the pirates and was set free . With his freedom he returned to the pirate ship ( which was still where he left it ) , took them as prisoners and then crucified them . ( Edit : yeah I forgot to mention that he told them previously he \'d crucify them , but they thought he was joking )', 2, 'dp4i9bi', '1242'),
(82, 'An illiterate 14-year-old French farmgirl claimed to see visions and hear the voice of God , so she enlisted in the French army and led them to miraculous victories , until she was condemned for heresy and burned at the stake . Later , she was canonized as a saint .', 2, 'dp43dup', '13866'),
(83, 'The Great Emu War', 2, 'dp3unpu', '4446'),
(84, 'Viking seige of paeis . Leader pretended he was dead and asked to be buried in paris . The french let him in , he jumped out the coffin and opened the city gates to his army EDIT : was n\'t paris I believe it was an italian town near rome . Leader was bjorn ironside not Ragnar', 2, 'dp45f3m', '1591'),
(85, 'I ca n\'t believe Richard Nixon issued an executive order in 1971 which imposed a 90-day freeze on all wages and prices in the United States in order to arrest price inflation . How did anyone believe that would be a good idea or think that it would even be possible to enforce such a policy ?', 2, 'dp49qnz', '261'),
(86, 'The [ Christmas Truce ] ( https : //en.wikipedia.org/wiki/Christmas_truce ) in World War I . Guys from both sides crossed the lines and celebrated Christmas with each other , then went back to their respective lines and resumed killing each other . Some people find it touching , I find it straight up bizarre .', 2, 'dp4loa5', '457'),
(87, 'The most respectful territory control that currently happens . Hans Island is a small island that is contested territory between Canada and Denmark . Every few months , a platoon from one of the nations goes to the island , takes down the other country \'s flag to put up their own , drinks a crate of booze left behind by the other army . They \'ll drop a crate of their own booze and then leave .', 2, 'dp4osji', '893'),
(88, 'Just how many times nuclear war was avoided during the Cold War because one person , despite their orders/protocol being to push the big red button thought `` Yea ... no . I would prefer not to be the person who pushes the button that causes human extinction . I have enough shit on my conscience as it is \'\'', 2, 'dp4ezg1', '631'),
(89, 'Rwanda . I still ca n\'t believe that I was in high school during one of the most well planned and carried out genocidal massacres of the second half of the 20th century . Everyone watched it happen , and still we just went on with our lives . If you have n\'t seen *Hotel Rwanda* yet , watch it .', 2, 'dp4f5ae', '516'),
(90, 'Polish dudes with wings on their back scared off the Ottoman empire at vienna', 2, 'dp4c41o', '425'),
(91, 'I have one : On March 10 , 1942 , just over three months after Pearl Harbor , the Americans fled Java Island . But they inadvertently left behind 18 Americans . So a person called Master Sergeant Harry Hayes repaired a B-17 and , despite having no flight training before , let alone flown a plane , he successfully piloted the bomber , along with the other 17 Americans , to Australia , even without maps and instruments .', 2, 'dp4f9vm', '4965'),
(92, 'That world war 1 started because a serbian terrorist plot to assassinate archduke franz ferdinand of Austria-Hungary failed miserably . When a terrorist threw a bomb at the Archdukes car , he _forgot there was a 10 second delay_ and so it harmlessly bounced off the Archduke \'s car and exploded under the car behind him . The terrorist who threw the bomb then tried to swallow a cyanide capsule and drown himself in a river but the river was only a few inches deep and the capsule just made him sick and so he was arrested . Then Ferdinands driver got lost looking for the hospital so the archduke could visit those injured in the attack and during his search for the hospital went down a street that he had to slowly reverse out of . That street just happened to be the street where one of the terrorists decided to stop for lunch _at a deli_ after his failed assassination plot and so the terrorist whose group \'s initial attempt failed suddenly found himself 10 feet ( literally ) away from the Archduke and was able to kill both the archduke and his wife with 2 shots from his gun which promptly jammed . ( The Archduke was hit in the jugular his wife in the abdomen ) All of this was done in the name of Serbian independence from Austria-Hungary and at the behest of Serbian military officers . Serbia then dissolved the group in 1916 ( 2 years after the start of the war ) and executed its leaders .', 2, 'dp40gpj', '3923'),
(93, 'As a former soldier in the UK army , for me it \'s the Northern Ireland peace process . I served a tour of South Armagh in 1986 and I could never see peace happening . So it \'s huge compliments to all involved in bringing peace .', 2, 'dp41bmj', '2164'),
(94, 'A Japanese guy started slithering on the floor claiming he was a snake . His parents thought he was possessed by a snakeso they bit and headbutted their son , killing him .', 2, 'dp4ac2g', '864'),
(95, 'I have several : * [ Sakoku : Wherein Japan pretty much shut itself off from the outside world except for the Dutch and Chinese in a wee part of Nagasaki . ] ( https : //en.wikipedia.org/wiki/Sakoku ) * [ The Naval investigative Service thought `` Friend of Dorothy \'\' referred to an actual woman in Chicago who knew *all* the gay men and women in the Navy . ] ( https : //en.wikipedia.org/wiki/Friend_of_Dorothy # Misunderstanding ) * [ Anarchists ran parts of Catalonia in 1936 ] ( https : //en.wikipedia.org/wiki/Anarchism_in_Spain # 1936_Revolution ) * [ James IV of Scotland tried to conduct the Forbidden Experiment on an Island in the Firth of Forth . ] ( https : //en.wikipedia.org/wiki/Inchkeith # James_IV.27s_linguistic_experiment ) * [ Someone entered a Horse on a treadmill into the Rainhill Trials . ] ( https : //en.wikipedia.org/wiki/Cycloped ) * [ Someone tried to start a Military Dictatorship/Principality on an unpopulated island off the coast of Brazil . ] ( https : //en.wikipedia.org/wiki/Principality_of_Trinidad ) * [ There was once an unrecognised county in New hampshire that tried to break away from the US . ] ( https : //en.wikipedia.org/wiki/Republic_of_Indian_Stream ) * [ ... and another one that tried to break away twice called `` Van Zandt \'\' . The second time it tried to break away it initially fought off and won against US troops who came to get the County back , but they got drunk and the US troops just walked in the next day and took it from the hungover defenders . ] ( https : //en.wikipedia.org/wiki/Van_Zandt_County , _Texas # History )', 2, 'dp47opf', '701'),
(96, 'Not being old enough to remember it happening , it \'s really difficult for me to imagine what it would be like if someone literally shot the US president . Like I ca n\'t even imagine seeing that news come across the wire . It seems like the biggest `` holy shit \'\' moment I can imagine .', 2, 'dp3tjk4', '1833'),
(97, 'The great molasses flood of 1919 . A storage tank at a factory in Boston burst killing 21 people and injuring 150 more in a 35 mph tidal wave of molasses .', 2, 'dp4nt93', '89'),
(98, 'Harold Holt , the Australian Prime Minister who went in the ocean for a swim and disappeared .', 2, 'dp4hacp', '255'),
(99, 'Landing men on the moon using processing technology that I would n\'t want powering my phone .', 2, 'dp3u7mw', '6721'),
(100, 'That in 1618 , a political dispute between Catholics and Protestants was attempted to be settle by throwing the Catholics regents out of a window in Prague . It would n\'t be so unbelievable except for the fact that in 1419 , radical Catholics threw 7 members of the Prague city council out of a window . https : //en.wikipedia.org/wiki/Defenestrations_of_Prague', 2, 'dp4fshe', '89'),
(101, 'The 335 Years ’ War between the island of Scilly and the Netherlands started in 1651 and ended in 1986 when a historian was trying to debunk the myth that the two countries were at war . He discovered that the two were in fact at war and didn ’ t know it . This prompted the signing of a peace treaty to end the longest war to have zero battles and no bloodshed . The Dutch more or less declared war and forgot about it . The Dutch ambassador joked that it must have been harrowing for the Scillians “ to know we could have attacked at any moment ” .', 2, 'dp4poe4', '171'),
(102, 'Every time I read about the Battle of Stalingrad I \'m just astounded human beings went through that and how Russian victory was actually achieved .', 2, 'dp4elvu', '623'),
(103, 'Australia lost a war against the emus', 2, 'dp3vd4o', '1920'),
(104, 'The fact that Thomas jefferson and James Monroe were both presidents when America was at war with pirates , and that no one has made a fucking movie about it yet . That shit would be siiiiiick', 2, 'dp4i5lo', '472'),
(105, '[ The Taiping Rebellion ] ( https : //en.wikipedia.org/wiki/Taiping_Rebellion ) Nearly 100 million people dead because some guy failed his exams to become a government official and had horrible stress-induced fever dreams he deemed to be \'visions . \' Five years later , he decided the visions meant he was the younger brother of Jesus Christ , meant to spread Christianity throughout China and overthrow the existing dynasty . So he gathered a following , created an army , and killed his way across China . *MORE PEOPLE DIED THAN THE COMBATANTS OF BOTH WORLD WARS , COMBINED* If someone wrote a movie with that plot , you \'d think it was ridiculous beyond belief . Such an immense loss of life , and most people in the western world do n\'t even know that it happened ! !', 2, 'dp47z4w', '1288'),
(106, 'The time Lichtenstein invaded Italy with an army of 80 soldiers and returned with 81 .', 2, 'dp4r7so', '126'),
(107, 'The Armenian Genocide and the whole death march . Even crazier because it only happened about 100 years ago . Like literally just 1 and a half million people , walking across a desert , until they died of exhaustion or reached a concentration camp to die . Completely awful , has to be one of the worst ways to die , not to mention it was n\'t really talked about at all for a veryyyyyy long time .', 2, 'dp4by2d', '783'),
(108, 'I \'d like to redirect you to \'Citation Needed \' on YouTube by tom Scott , which is ( usually ) about unbelievable things that happened in history .', 2, 'dp404v5', '552'),
(109, 'https : //en.m.wikipedia.org/wiki/Stanislav_Petrov That one time we almost had ww3', 2, 'dp40bbq', '263'),
(110, 'That a Greek city-state practicing democracy managed to defeat an invading empire , twice . Later on , some random 19 year old would go on to conquer all of that empire in one shot , stopping at India .', 2, 'dp47h0d', '1259'),
(111, 'A guy manages to sneak up to Andrew Jackson with two pistols and tries to shoot him . Both his pistols misfire , despite that being statistically impossible , and Jackson realizes what just happened . Jackson proceeds to nearly beat the would be assassin to death , and probably would have , if he had n\'t been pulled apart from the man by several congressmen , including then incumbent Davy Crockett .', 2, 'dp4j7mw', '166'),
(112, 'A man formed his own church ( with himself as the head ) just because the pope would n\'t grant him a divorce for another wife .', 2, 'dp4ifcz', '87'),
(113, 'concentration camps ... It ’ s just hard to conceive of something like that happening in today ’ s world . Millions of people being loaded onto trains and systematically killed . Also the sheer number of soldiers who died in the great wars . 20 Million russians alone . So many people ...', 2, 'dp3tguw', '1733'),
(114, 'The Jonestown mass suicide', 2, 'dp4hltg', '184'),
(115, 'Nixon used to get blackout drunk and order tactical nuclear strikes but his cabinet would `` delay \'\' the order until he sobered up . According to Kissinger this happened like once a week !', 2, 'dp4gkzs', '300'),
(116, 'There were three popes at one time that all excommunicated each other from the church', 2, 'dp4f8mj', '79'),
(117, 'In the middle of the 20th century , a first world country successfully pulled off a genocide and they did it for years before anyone stopped them . It still boggles my mind . We were using televisions and launching rockets and meanwhile 10 million were being systematically murdered .', 2, 'dp3vzb5', '815'),
(118, 'The fall of the Soviet Union . I know it \'s very easy in retrospect to say , `` Yeah , they were doomed . \'\' Growing up in the 70s and 80s , though , it was n\'t so easy to see . We did n\'t know what they were doing , or why . All we knew was , they had 1000s of missiles pointed at us . Even when Gorbachev instituted перестройка and гласност as a way to reach detente with us , there was still a sense of secrets . That Iron Curtain did n\'t come down so easily . I remember when Chernobyl melted down we knew it had happened about a week before they admitted it [ it was picked up by satellites ) . That last coup ... it was an utter shock . To have Yeltsin step forward and tell everyone he was President of Russia ? I about fell out of my chair .', 2, 'dp4g0sf', '224'),
(119, 'Country declares independence twice in 2 months . Fails immensely both times , like r/madlads but worse .', 2, 'dp4cs1s', '109'),
(120, 'The united states turned away a ship of Jewish refugees from Germany in 1939 and more than a quarter of them ended up dying in the Holocaust', 2, 'dp3v7f4', '710'),
(121, 'After being exiled , Napoleon returned to France in his Hundred Days . When he arrived , his former armies faced him . He exposed his chest and told them to shoot their emperor if they so wished . No one shot him up , so we got Waterloo to read about in the textbooks .', 2, 'dp4ggo5', '191'),
(122, 'When the English monarchy was restored in 1660 , King Charles II ordered the posthumous execution of the Members of Parliament involved in his dad \'s execution who had died during the Interregnum . Basically , he was n\'t going to let the fact that the guys were dead get in the way of vengeance . He literally had them dug up , hung the corpses , and then beheaded them .', 2, 'dp4mpd1', '37'),
(123, 'That a Roman Emporer loved his horse so much he made him Senator .', 2, 'dp4geep', '106'),
(124, 'I recently learned in History class that in WWI during Trench Warfare , the soldiers on both sides stopped fighting to celebrate Christmas by doing things like play football together .', 2, 'dp4hjkj', '342'),
(125, 'The dancing mania outbreaks between the 14th and 17th centuries .', 2, 'dp3v2h1', '227'),
(126, 'The US political group `` The Tea Party \'\' publicly called themselves `` The Teabaggers \'\' for several months before learning it was a slang term for resting your testicles on someone \'s face while they sleep .', 2, 'dp4bpbz', '636'),
(127, 'A rag-tag , volunteer Army , took on and defeated a world superpower . The comments have been awesome . This is a story repeated by many people , many times , throughout history . We should all be proud of our ancestors .', 2, 'dp3umwh', '2232'),
(128, 'The dude who first wore a top hat caused a riot by wearing it out on the street . Apparently women fainted and a mob of screaming people formed . He was arrested for breaching the peace . For wearing a top hat .', 2, 'dp4rmqf', '27'),
(129, 'Mad Jack Churchill fight ing in WWII with only a bow and a claymore', 2, 'dp3zy2b', '127'),
(130, 'Remember that part in Braveheart where Wallace gets shot in the chest and not only survives but keeps fighting ? The historical account actually says he got shot in the throat . The directors changed because duh .', 2, 'dp4ljcs', '24'),
(131, 'The Wright Brothers were absolute geniouses , some of the greatest minds of mankind . However , I find that not a lot of people mention the time that they found a rat in their kitchen and started to chase it around the shack with a gun .', 2, 'dp4afax', '66'),
(132, 'The time that Nero tried to kill his mother by putting her on a ship that was supposed to sink . Except it did n\'t work because she climbed onto a bed and floated back to the shore . To fix this , he sent a small group of soldiers to go meet her on the beach and stab her to death .', 2, 'dp4o7fs', '23'),
(133, 'That time the first treasury of the secretary was shot and killed by the third Vice President That time a senator beat the living shit out of another senator for talking shit with a gold tipped cane on the senate floor That time Buisness interests got a progressive reformer as the Vice President to keep him from doing anything ( because what the hell does a VP do ) shortly before the president was shot That time a president who had been shot died a torturous death over the course of two months because the man treating him thought that germs were n\'t proven science and would n\'t wash his hands That time the United States spent years talking about `` consent of the governerd \' and spent a century governing Puerto Rico without its consent That time the man who spent a lifetime decrying civil rights and was an ardent segregationist had a child by his black house maid when she was 17', 2, 'dp4f7y5', '59'),
(134, 'When George osbourne sent a letter to the DOJ asking them not to prosecute HSBC for money laundering as it would effect the UKs economy cementing that banks are too big to jail .', 2, 'dp4adnv', '41'),
(135, 'Abstract : > This paper studies the effects of legal street prostitution zones on registered and perceived crime . We exploit a unique setting in the Netherlands where these tippelzones were opened in nine cities under different regulation systems . Our difference-in-difference analysis of 25 Dutch cities between 1994-2011 shows that opening a tippelzone decreases registered sexual abuse and rape by about 30-40 percent in the first two years . For cities which enforced licensing in tippelzones , we also find reductions in drug-related crime and long-term effects on sexual assaults . Effects on perceived drug nuisance depend on the regulation system and the proximity of respondents to the tippelzone . [ Ungated working paper ] ( http : //conference.iza.org/conference_files/riskonomics2015/kastoryano_s6317.pdf )', 3, 'dp3ep1s', '2271'),
(136, '[ removed ]', 3, 'dp3i19q', '4152'),
(137, 'I thought the big objection to legal prostitution is that it led to a massive increase in sex tourism and human trafficking .', 3, 'dp3uas4', '1095'),
(138, 'How did the prostitutes fare ? I mean , were any of them abused by the customers ? Do they have recourse , a way to prosecute customers who are abusive ? Just because someone is a prostitute does not mean they are not being hurt , but it does mean they might not be able to do anything about it . Do the Dutch have a magic way of dealing with this ?', 3, 'dp3o7hn', '757'),
(139, 'To be honest , I \'ve never understood why prostitution is illegal . If I want to go out and meet a random person and then have sex with them , that is fine . If I want to go out and give a random person money , that is fine . However , if I want to go out and give a random person money and have sex with them , then that is not fine . It makes absolutely no sense .', 3, 'dp40r7p', '382'),
(140, '[ removed ]', 3, 'dp41lcz', '145'),
(141, 'Before you get too excited , [ read this study that looks at how legalized prostitution affects human trafficking . ] ( https : //papers.ssrn.com/sol3/papers.cfm ? abstract_id=1986065 ) I \'ll save you some time , this study found that legalized prostitution lead to an increase in human trafficking . **Abstract : ** > > This paper investigates the impact of legalized prostitution on human trafficking inflows . According to economic theory , there are two opposing effects of unknown magnitude . The scale effect of legalized prostitution leads to an expansion of the prostitution market , increasing human trafficking , while the substitution effect reduces demand for trafficked women as legal prostitutes are favored over trafficked ones . Our empirical analysis for a cross-section of up to 150 countries shows that the scale effect dominates the substitution effect . On average , countries where prostitution is legal experience larger reported human trafficking inflows . Perhaps this problem could be avoided with enhanced regulation , but that might drive people back to the black market , defeating the purpose . I think this study shows the issue is much more complicated than we might assume . I personally assumed legalization and regulation could nearly eliminate sex slavery , but this study makes me question that belief .', 3, 'dp4262p', '46'),
(142, 'It ’ s important to realize it has not been all good though . The legalization has greatly increased human trafficking from disadvantaged areas in Europe . A lot of demand needs a lot of supply . It has also brought in more organized crime , because the pimps and drug lords go hand in hand . There have even been steps taken to reverse the legalization in different zones of The Netherlands . So while there might be some positive aspects , it has not been the greatest outcome . https : //www.spectator.co.uk/2013/02/flesh-for-sale/ http : //m.huffingtonpost.co.uk/jacqui-hunt/legalising-prostitution-is-a-terrible-idea_b_2644337.html', 3, 'dp40sd9', '45'),
(143, 'So this suggests that sexual abuse and rape ARE about sex and not control ?', 3, 'dp3vbms', '194'),
(144, 'Men and women are already exchanging goods and services for the goods/services , why fight it . Consenting adults and all that .', 3, 'dp486a9', '5'),
(145, '[ removed ]', 3, 'dp3klrr', '91'),
(146, 'This thread is depressing .', 3, 'dp4lyxi', '4'),
(147, 'The problem is that in many cases the prostitutes are effectively being abused/raped themselves . The laws on prostitution do need reform but it is very complex and the Dutch model does n\'t seem to be the answer .', 3, 'dp3tli1', '71'),
(148, 'Does it really though ? Human trafficking is quite a big problem when it comes to Dutch prostitution ( that and seducing young girls and then blackmailing them into prostitution ) . A very high percentage of the women working in prostitution are n\'t there by choice . By saying yay prostitution means less rape , what we are really saying is , yay less \'regular \' girls/women are being raped while we legalise the rape of hundreds of other girls . Perhaps a trade off that will make you sleep well at night , but really it \'s just a transfer of rape to a group that \'s less visible .', 3, 'dp3ver3', '120'),
(149, '[ removed ]', 3, 'dp3vnwu', '40'),
(150, 'What steps should I take to start a campaign to legalize it ? Seriously', 3, 'dp43vqx', '3'),
(151, 'I believe their non illegal cannabis was a positive too .', 3, 'dp4ff35', '3'),
(152, 'Did n\'t they also see an increase in sex workers being smuggled into the country , as well as an increase in pimping and exploitation of underage women ?', 3, 'dp4u39g', '3'),
(153, 'I wonder instead , if the crimes were commited during the legal sale of sex and thus went unreported .', 3, 'dp3zqc9', '15'),
(154, '[ removed ]', 3, 'dp3gkxj', '30'),
(155, 'But I thought rape/sexual assault were acts of violence , motivated by anger/hatred/violence and not sexual frustration . How would legalizing prostitution resolve that ?', 3, 'dp3zlo3', '11'),
(156, 'what is so bad about prostitution ?', 3, 'dp3tzyb', '26'),
(157, 'Was there an increase in : - other crime ? - unwanted pregnancies - infant mortality rates - STD transmission ?', 3, 'dp3znb6', '6'),
(158, 'If this is in fact true , can a cogent moral argument even be made that sex work should be illegal ?', 3, 'dp3zplx', '3'),
(159, '[ removed ]', 3, 'dp3izpk', '25'),
(160, 'Why isn ’ t prostitution legal in all seriousness . People already are forced to do something with their bodies that they don ’ t want to for dirt cheap In the form of factory labor .', 3, 'dp413wj', '2'),
(161, 'That sounds fantastic , but is there more to the story in that would be offenders became violent with sex workers ? Hate to bring up a possible negative repercussion with something I am behind 100 % . Hopefully my thought is unfounded , or its implications directed at the willing .', 3, 'dp42a6f', '2'),
(162, 'What happened after the first two years ?', 3, 'dp42ht9', '2'),
(163, 'Serious question ; I \'ve always been told rape and sexual abuse is about having power over someone and not about the act of sex itself . Would n\'t this prove that in alot of cases , but not most , that this rule is in fact false ? Should n\'t that also change the potential profile of a rapist as well ? I guess we would have to look at what kind of acts these prostitutes were requested to do to get a more clear answer .', 3, 'dp441pj', '2'),
(164, 'Although I am happy to read about a decrease in the level of sex crimes , I feel as though this identifies another underlying issue when it comes to healthy relationships . For example , if the individuals who originally committed the sex crimes are no longer committing them due to the legalization , what factors played a role in their decision to engage in the criminal behavior when it was outlawed ?', 3, 'dp44ggg', '2'),
(165, 'While I agree that sex work should be legal , I find the statistic disturbing . Even when sex work is illegal , that shouldn ’ t be cause for predators to rape or assault others .', 3, 'dp4btre', '2'),
(166, 'Dae recall that that effect was short-lived and that sex crimes rose back to `` normal \'\' levels after a few years ?', 3, 'dp4dusu', '2'),
(167, 'I thought rape was not about sex . Harvey Weinstein could afford pros but liked to intimidate and assault innocent people', 3, 'dp4es8m', '2'),
(168, 'I \'m curious to know if legalizing prostitution also decreases prices since there is a legal risk involved which causes a lot of women to shy away from the trade .', 3, 'dp4f9gz', '2'),
(169, 'We have legal brothels in Nevada but only in counties with fewer than 200,00 residents . The closest one to Las Vegas is about an hour drive and has no effect on the sex trade in the Vegas valley . They are crazy expensive but they will pick you up in a limo for the ride out to Pahrump .', 3, 'dp4jftv', '2'),
(170, 'Next they \'ll decriminalise child sex to reduce sexual abuse and rape of children . Heck , why stop there ? It \'ll be made compulsory no doubt ...', 3, 'dp4u897', '2'),
(171, 'maybe if we legalize murder and rape then those crime stats will go down too .', 3, 'dp4azz1', '5'),
(172, 'Oh yeah let \'s just sacrifice a few women to constant abuse to save the rest . Brilliant .', 3, 'dp4eg2w', '5'),
(173, 'I \'m curious , is there any scientific evidence that supports prohibition of ANYTHING ever having a net positive effect on society ? I \'m actually even curious if there is data that supports reduction in targeted behavior or activity . For clarity , I \'m thinking anything that \'s more of a moral issue . Murder for example is also prohibited by law , but that \'s an outright destructive act . Hope this comment is okay , I \'m genuinely curious and not being hyperbolic about this .', 3, 'dp4811e', '3'),
(174, 'If you \'re going to kill a virus , you have to have something to target . By inserting itself into the host genome , it becomes virtually invisible to the immune system . Viral RNA hanging out in the cytoplasm is easily recognizable . Viral dsDNA within the nucleus looks just like any other human dsDNA . At that point , the provirus can persist until environmental conditions within the host become more suitable ( i.e . person becomes immunocompromised ) , at which point it will begin replication and packaging of viral RNA . If you think retroviruses are inefficient , let me tell you about partial dsRNA viruses , such as Hepatitis B . In order for them to replicate , they must first enter the cell , and replicate the template strand in order to produce a fully circularized dsDNA . Then , they produce an RNA intermediate . The RNA intermediate is then transformed BACK to ssDNA via reverse transcriptase , which is then replicated to package the partially dsDNA genome into new viruses . So you insert partially double-stranded DNA into a cell , make it fully double-stranded DNA , form an RNA intermediate , reverse transcribe it into ssDNA , then replicate it to produce the partially dsDNA genome to package . Why bother with the RNA intermediate ? Virologists hypothesize that it allows for introduction of genetic variation , since the reverse trancriptase is relatively low fidelity ( not very careful/accurate ) . EDIT : As /u/eng050599 pointed out , the HIV reverse transcriptase is also very low fidelity , and is believed to also act as a mechanism of introducing genetic variation . The ability to evade the host immune system indefinitely offers a selective advantage over other viruses , therefore allowing them to persist despite their odd mechanism of replication . Either way , evolution does n\'t *necessarily* select for efficiency , as long as it works well enough .', 4, 'dp4672y', '754'),
(175, 'Biology graduation student here . Not an expert , but I \'ll give you my all . In Eukaryotes , DNA is almost always inside the nucleus . Because of this , defense mechanisms have been naturally selected for finding DNA outside of it and breaking it down . That way , you protect yourself against those nasty Adenoviruses . However , it is believed that retroviruses have been selected exactly because of such defense mechanism : they \'re able to get around it , turning its RNA into DNA very close or inside the nucleus , `` dribbling \'\' the enzymes responsible for the defense process . Hope you understand it now ! Edit : added a word to prevent ambiguity . Edit 2 : formatting . Edit 3 : words', 4, 'dp3ylaf', '204'),
(176, 'I \'m on my phone so will keep this response short , despite knowing there is a lot more that can be said to answer you more thoroughly . I think your question is a good one , but demonstrates a huge misunderstanding of evolution . There is no \'point \' in evolution . There is no goal or intent and not everything that evolves is at all more efficient or better . Instead , evolution works on what \'s available . What characteristics ( both genetic and phenotypic ) exist and what mutations occur . Evolution does n\'t start from scratch with every organism , it modifies what came before and that might not lead to the \'best \' outcome , just one that allows an organism to reproduce and pass on its genes long enough to establish itself in the gene pool . Edit : I know this did n\'t answer your question regarding retroviruses and the specific advantages they might have , but I really think all of biology makes more sense once the idea of \'direction \' of evolution is dispelled with .', 4, 'dp3yd6s', '138'),
(177, 'Aside from dodging DNA-destroying mechanisms in the cytoplasm , from the perspective of the virus it \'s actually simpler to have just RNA than DNA . The virus has to develop a reverse transcriptase enzyme first , obviously , but once it has one then all it needs is RNA . DNA is really only good for storing genetic information to be transcribed and replicated later ( whereas RNA has lots of interesting uses ) . The reverse transcriptase and integrase allow the virus to make the cell do literally all the work of replicating and transcribing its genetic info .', 4, 'dp47au2', '9'),
(178, 'Virology graduate student here . I \'ll put in my opinion but it \'s more of the same info that \'s been said . As others have said , evolution does n\'t decide what \'s `` best \'\' , it simply leads to a result that works . Obviously reverse transcription works ; HIV emerged into humans not too long ago and there are tens of millions of people infected , and that \'s with excellent drug therapies . Imagine how efficient it would be without drugs . Again as others have mentioned , reverse transcriptase ( enzyme that converts RNA to DNA ) is very inefficient and makes lots of mutations . This occurs at about 1 mutation in 5000 nucleotides , so there are roughly 2 mutations made every time the genome is copied . This is unprecedented when compared to how DNA , or even RNA , polymerase functions . This gives the virus an advantage because it can evolve rapidly . This increase in the rate of evolution of the virus lets it mutate quickly to avoid drugs and the immune system . The virus does n\'t care if it makes defective genomes and `` dead \'\' viruses by mutating a lot . As long as a lot of them are still infectious that \'s a win for the virus . Your question does n\'t really have an answer . It \'s asking why evolution chose to do with it did , and the answer is always random chance . It happened to be that RT worked , and do n\'t fix what \'s not broken . I \'d love to answer any other questions you have though .', 4, 'dp4den6', '10');
INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`, `score`) VALUES
(179, 'Bit late to the show but not really seeing your questions answered adequately so hope I can contribute ( Retrovirology PhD ) i ) Simpler ? No , not really . With respect to viral replication , \'simple \' viruses are those that offload the most work involved in their replication to the host cell . In the case of retroviruses , they offload the work of creating new viral genomes to the host cell . There are two types of large nucleic acid molecules that a mammalian cell will happily create : genomic DNA , and messenger RNA ( mRNA ) . Retroviruses take advantage of *both* of these . By integrating an extended copy of their genome ( called the provirus ) into the genome of the host cell , they get their proviral genome copied every time the host cell divides . For the generation of new viral particles , they make use of the cell \'s mRNA production . This is why the retroviral genome that gets packaged into the viral particle is RNA . The task of converting the RNA back into DNA for integration is necessarily done by the viral reverse transcriptase because mammalian cells do n\'t have this function . ii ) The evolutionary advantage of this comes in multiple forms . a ) It is safer for a virus to have RNA in the cytoplasm of the cell than DNA ( the most successful human viral pathogens utilise RNA genomes ) . b ) The use of a viral polymerase allows a massively higher rate of mutation and therefore rate of evolution - excellent for outrunning the immune response and escaping drug-based interventions . The alternative , being a DNA virus , would mean the virus would have to either use a viral DNA polymerase or a cellular DNA polymerase . If it used a viral DNA polymerase , then this is no less complicated than using a viral RNA polymerase . If it uses a cellular DNA polymerase , then it has one less enzyme to encode , but loses the advantages described in a ) and b ) . For what it \'s worth , retroviruses are possibly the most evolutionarily successful of all viruses - they infect all forms of metazoan life , accomplish an amazing amount with relatively tiny genomes , and despite 30 years of our best and brightest banging our heads against our lab benches , we still have n\'t beaten HIV .', 4, 'dp4og7x', '4'),
(180, 'First thing you have to realize with evolution is that whatever is most successful in reproduction is what will reproduce . Simple , yeah ? So in this case , having RNA is what helps the virus reproduce the most . Let me explain . Well with retroviruses , the fact that they have unstable RNA as their main genetic carrier is the unstable nature of it increases variability and thus increases resistance . Take HIV for example . To begin reproduction in it \'s host , it has to get it \'s RNA into a cell , which will hijack the cell \'s ribosomes to produce a reverse transcriptase among other things . But in the process of being reverse transcribed , there are many errors , on the order 10^-4 , as compared to 10^-8 in eukaryotes . This high error rate ensures that the virus is always changing enough to survive a turbulent environment and escape the immune system by always changing . Had the virus used DNA instead , it would be a lot more stable and the host would probably be able to adapt quickly enough to stop the virus \'s spread . So in summary , the very fact that its RNA is unstable , ensures the survival of the virus , so it has continued to use RNA because that is what helps it reproduce the most .', 4, 'dp4j2fb', '3'),
(181, 'DNA viruses typically replicate in the nucleus , while RNA viruses typically replicate in the cytoplasm . Since there is no need to evolve nuclear membrane transport proteins , there is some tiny advantage to cytoplasmic replication . There might also be an advantage that RNA costs half the amount of nucleotides of DNA . The virus could possibly make more copies faster , but this effect is probably minimal since the virus needs to make many proteins as well . But as said below , DNA viruses are more stable and evolution doesn ’ t really choose based on “ survival of the fittest ” . Whatever is good enough to replicate itself will continue on .', 4, 'dp4jqn1', '2'),
(182, 'Often times there is not a reason for something to exist beyond that it is possible for it to exist . I imagine a four leaf clover exists in this category . Obviously , it is more efficient for 3 leaves to exist , but sometimes a 4 leaf pops up . One could argue that there is a slight increase in photosynthetic area beyond what is shadowed by the additional leaf , but I would argue that this is less efficient due to the overlapping leaves and the increased risk of spontaneous destruction by a lucky human .', 4, 'dp4es8l', '4'),
(183, 'I do n\'t think OP is here to argue semantics or get a long-winded overview of cell biology / virology . 1 . Virus , by default , use RNA . RNA came before DNA . 2 . A virus that can turn it \'s RNA into DNA can hijack the host DNA replication machinery to do it \'s work ( reproduce ) . 3 . Once it \'s ready , the hoard of newly made virus burst out of the cell and spreads our for another round of hostile takeover . u/urbanisacommunist has a good answer too Also I \'m on my phone so sorry if the formatting turns out weird .', 4, 'dp4e2so', '2'),
(184, 'There are some good responses here , but this question also touches on various theories about viral evolution . One theory is that viruses are a type of pre-life that found it more advantageous to parasitize living cells to replicate instead of evolving into their own self-replicating cycles . Certain viruses , especially RNA viruses , provide interesting insights into what life might have looked like at the very earliest stages . Life became to the complex systems we now know , and viruses hitched a ride , finding ways around the evolving cellular defense systems to stick around to this day . The ones that worked well enough to retain their genetic information stuck around , and retroviruses have simply evolved to the point where being kinda bad at making perfect copies is an advantage , so they keep the reverse transcriptase around .', 4, 'dp4mc20', '1'),
(185, '[ deleted ]', 4, 'dp42cg6', '1'),
(186, '> What \'s the evolutionary advantage of having such mechanism ? But evolutionary change is not about being directed toward evolutionary advantage in any absolute sense . Evolutionary advantage can only be perceived if the process leads to survival . It is n\'t only the best that survive . Sub-optimal `` solutions \'\' also populate the survival of the fittest . RIP', 4, 'dp4nk77', '1'),
(187, 'rt test the border of life . I think these pieces of genome inside a protein coat are the earliest evidence of life . hiv is a monster for this . the ability to integrate into the genome and express cell growth lysogeny is what really ends the person . the variety of receptor structure , and integration makes hiv difficultto get rid of , only surpress . the weakened immune system leads to horrid effects .', 4, 'dp4rw9c', '0'),
(188, 'Another way to think about your conjecture is that it \'s a geometric sequence with a=0.14 and r=0.02 . Then the sum to infinity is a/ ( 1-r ) = 0.14/0.98 = 14/98 = 1/7 as predicted .', 5, 'dp44lb8', '343'),
(189, 'Also 1/7 = .14285714285 ... 2/7 = .285714285 ... 3/7 = .4285714285 ... 4/7 = .5714285714285 ... 5/7 = .714285714285 ... 6/7 = .85714285 ... Notice that different parts of the same list of digits 1 , 4 , 2 , 8 , 5 , 7 , ... repeat . Edit : this is because 7 is a cyclic number . http : //mathworld.wolfram.com/CyclicNumber.html Another comment also mentioned it .', 5, 'dp455xw', '94'),
(190, 'Great work ! Have you looked at other cyclic numbers such as 1/17 ? http : //mathworld.wolfram.com/CyclicNumber.html', 5, 'dp46gj3', '28'),
(191, 'Great work ! This is the kind of good problem/mystery that kids should be encouraged to explore as early as possible ( primary school ? ) , but is a very interesting and worthy independent discovery at any age , and a few hundred years ago was of great interest to professional adult mathematicians . There is some interesting number theory you can figure out if you start investigating further in this direction . For example , are there other patterns you can figure out in the expansion of 1/7 ? What happens with other fractions that turn into infinite decimals , like 1/6 or 1/11 or 1/13 ? What ’ s the relation between the expansions of 1/7 , 2/7 , 3/7 , 4/7 , etc. ? What will happen to infinite “ decimal ” expansions in a different number base , for example what is 1/4 in base 7 ? Can you find some relationships between the length of the period of an infinite decimal vs. the numbers involved in the ratio and the number base ? Etc . Etc . I really encourage you to keep poking around , and you ’ ll find interesting stuff .', 5, 'dp44whc', '33'),
(192, '[ There was a whole in-depth thread on this four weeks ago on Math.SE . ] ( https : //math.stackexchange.com/questions/2457084/recurring-decimal-expansion-of-frac17 )', 5, 'dp46gfr', '6'),
(193, 'Very nice ! Did you know that all fractions either have a finite decimal expansion , or a repeating one , just like you found . One trick I like is reverse-engineering the fraction from any given infinite repeating sequence . Let \'s for example take today \'s date : 20171030 . Let x = 0.201710302017103020171030 ... Then 10000000x = 20171030.2017103020171030 So , 10000000x - x = 9999999x = 20171030 Which means that x = 20171030/9999999 = 0.201710302017103020171030 ...', 5, 'dp4p3ap', '7'),
(194, 'You like decimal shenanigans ? Take a look at 1/89 , 1/9899 and 1/998999 . If you \'re thinking that \'s amazing , note that 89 = 100 - 10 - 1 and x^2 - x - 1 is fairly indicative of what \'s going on there . The great thing is that in base ten , 89 is also ... well ... you \'d have to look at the decimal places to see .', 5, 'dp479om', '11'),
(195, 'Also take a look at 1/98 , 1/998 , 1/9998 , 1/99998 etc . Once you understand that , consider the case of zero nines ! Another series to look at : 1/81 , 1/9801 , 1/998001 , 1/99980001', 5, 'dp4hihg', '6'),
(196, 'https : //projecteuler.net/problem=358', 5, 'dp47cqk', '4'),
(197, 'Let x = 0.142857142857 ... . 10^6 x = 142857.142857142857 ... . = 142857 + x ( 10^6 - 1 ) x = 142857 x = 142857 / ( 10^6 - 1 ) = 1/7 Using a similar process , every repeating decimal can be expressed in the form a/ ( 10^b - 1 ) . So for every rational x/y in lowest terms that has a , there is a number 10^b - 1 that y divides . ( well , not exactly ) . i.e. , there is a number made up solely of nines that contains any given composite that does not contain a 2 or 5 .', 5, 'dp4a0yh', '7'),
(198, 'This is interesting work . Well done .', 5, 'dp4r1nb', '2'),
(199, 'Is this a troll post ?', 5, 'dp47d35', '-18'),
(200, 'I took a signal processing class once during summer semester . It was taught by one of the fellows of the department , a guy that was apparently very well published and highly regarded in the field . For his lectures , he rolled in a TV and VCR , parked it in the front of the room , and played a tape of himself lecturing for a distance education version of the course . You just ca n\'t make this sort of shit up .', 6, 'dp3k44s', '249'),
(201, 'I once had a professor who \'s projector was not focused . he did n\'t know so he \'d get confused and frustrated when we told him that we could n\'t understand his MATLAB code as the writing was to small and blurry . He would n\'t allow us to touch the projector so I came in one day before class and fixed it myself . When class came around he said that he had spent some time earlier that day fixing the problem and `` youre welcome \'\'', 6, 'dp3y08q', '146'),
(202, 'It \'s better than having a prof who has 4cm tall writing in a class that \'s supposed to have 250 kids and refuses to use a mic . After my packed linear algebra class , the room literally gets cold because so many people do n\'t even bother going to his lectures .', 6, 'dp445z8', '29'),
(203, 'My statistics teacher is cursed with tech . Uses a surface pro to write on her slides and it constantly does crazy stuff . She even replaced it with a new ( ie different one from school , still old unit I think ) one that has the same issue . Not her fault since surfaces are shit after a few years . Today though she could n\'t get the projectors to turn on at all Edit : wording', 6, 'dp44rai', '13'),
(204, 'I ’ ll take these guys over the goof balls that chicken scratch there notes on the board every lecture .', 6, 'dp4dutd', '6'),
(205, 'I work for the IT dept at my college and there is always a call saying that the projector is n\'t working . 9/10 there is so getting turned off , or they did n\'t unmute the screen .', 6, 'dp4dudi', '4'),
(206, 'My favorite is in a 120 person auditorium when they go to the back up - a white board with an orange Marker that hasn ’ t worked in two weeks . Just cancel class . Or tell jokes . That is fine as well .', 6, 'dp4mwk8', '4'),
(207, 'Youtube . Youtube wins .', 6, 'dp4ncst', '3'),
(208, 'Prof', 6, 'dp4ilwy', '1'),
(209, 'Prefer projector hiccups than malfunctioning clip-on mics .', 6, 'dp4l7yj', '1'),
(210, 'They never work haha', 6, 'dp4u0l4', '1'),
(211, 'Or not knowing how to stop YouTube from autoplaying the next video .', 6, 'dp4vhe0', '1'),
(212, 'ELI5 ? What does that mean ?', 7, 'dp44pyi', '29'),
(213, '[ deleted ]', 7, 'dp4n8sb', '1'),
(214, 'what the hell is a qubit lol when I ca n\'t even get past the 4th term in a title I need help', 7, 'dp4tm46', '-4'),
(215, 'The biggest assumption is that your house normally is heated by electricity . Is that the case ?', 8, 'dp3zfe0', '88'),
(216, '[ Here \'s ] ( https : //www.pugetsystems.com/labs/articles/Gaming-PC-vs-Space-Heater-Efficiency-511/ ) an article with experimental data that shows a gaming PC heats a room just as well as a space heater .', 8, 'dp42o54', '25'),
(217, 'Reasoning is sound if you have purely electric heating . Only issue is air circulation since an air handler is designed to move the heat thru the house so a certain room that ’ s hotter will mess with the thermostat . If you make a crypto miner it ’ s basically free to run in the winter .', 8, 'dp3zolb', '34'),
(218, 'During the winter your electronics are nearly 100 % efficient : all the power they \'re drawing from the wall is being used for a purpose ; there is no \'waste \' heat . That means that **if you \'re using your electronics for their intended purpose ( e.g . a gaming computer for gaming ) , you nominally^ ( 1 ) get a \'free \' reduction on your heating bill** , which is I think where your train of thought was headed . Simply going around turning on all your lights and spinning up FurMark on your computers for no reason will likely cost you more money than it saves , though , since the cost of electric heating is likely greater than however your house is normally heated ( gas , oil , etc . ) ( If your house *is* heated by resistive electric heaters , though , go hard ! The article /u/neetoday [ links to ] ( https : //www.reddit.com/r/AskEngineers/comments/79qd4b/is_it_free_to_run_electronics_indoors_during_the/dp42o54/ ) at least suggests that a gaming PC can be comparable to a space heater in terms of efficiency ( [ delta T ] /watt ) ) . ) & nbsp ; **^ ( 1 ) ** I say nominally since this assumes that the heat is evenly/suitably distributed around the house . If you heat a single room with a gaming PC but the thermostat is in a separate room , the furnace might still fire up to heat the rest of the house and the room with the gaming PC will just become unpleasantly warm .', 8, 'dp45ovc', '14'),
(219, 'I \'m a mechanical MEP engineer who designs heating systems for buildings . I live in Alaska and most of my work is in Alaska . Increased use of electronics offsets the need for heating equipment ( furnace , boiler , heat pump , whatever ) to operate . However , electricity through plug loads is usually the most expensive way to heat your home , unless you are somewhere where all your electricity source is hydro . One of the things we noticed during the energy efficiency boom in the late naughties-early teens is that an increased usage of LED lights on a grid resulted in a lower electricity usage overall but a correlating increase in gas utility usage . Overall this is cheaper , since it \'s cheaper to heat your home with natural gas than it is to heat with resistance electricity .', 8, 'dp4c6iu', '5'),
(220, 'My house is baseboard electric , so it \'s actually more efficient to use electronics since the heat source is now dispersed rather than coming from on corner of the room', 8, 'dp47wj4', '5'),
(221, 'You could design a simple experiment to test it ! Place a thermometer somewhere in your house ( vary the location ) and find a string of days where the temperature is the same outside . On some days , leave your electronics off . On others , turn them on . Make sure your thermostat is set to the same temp for the duration . The thermometer needs a logging function . The thermometer should give you pulses in temperature whenever the heat kicks on . If the pulses are further apart when your electronics are on , congrats , they \'re generating enough heat to reduce your heater load !', 8, 'dp49rum', '3'),
(222, 'Every watt you consume is ultimately converted to heat . In the winter that can be helpful and offset your heating bill , but in summer you may be paying for an air conditioner to pump that much extra heat outside .', 8, 'dp4cnpt', '2'),
(223, 'I read a good tip on regards to heating my garage . Take the LED bulbs out and put the incandescent bulbs back in for winter since they are so much better at creating heat than they are at light . Ultimately not a cost savings but it at least gives them purpose again .', 8, 'dp4ijrj', '2'),
(224, 'If you normally heat with purely electric heat ( ie ; no heatpumps or anything like that ) , then yeah it would be basically the same . But electric heat is really expensive , so it \'s rare that a house would have resistive electric heating .', 8, 'dp4mlkp', '2'),
(225, 'Yes , your baseboard heaters should actually be built from cryptocurrency mining equipment . Or buy a heat pump .', 8, 'dp4s6w8', '2'),
(226, 'It is n\'t `` free \'\' to run electronics per se , but the waste heat from various electronics would make your heating system work slightly less hard . I think the difference would definitely be negligible tho unless we \'re talking a very dense area of electronics like a server room .', 8, 'dp3zs8n', '4'),
(227, '> Wu and her team were able to recover 0.3 W to 1 W of power with an Intel Ivy Bridge processor running at 70 °C to 105 °C with a thermoelectric device on the CPU . http : //www.embedded-computing.com/embedded-computing-design/energy-harvesting-creating-useful-power-out-of-processor-waste-heat Interesting , this argues it both ways . https : //www.pugetsystems.com/labs/articles/Gaming-PC-vs-Space-Heater-Efficiency-511/', 8, 'dp48n1x', '1'),
(228, 'No . The waste heat from electronics is more expensive than your heating system . If you don ’ t have a gas or oil furnace , your electric heat is a heat pump system . This heats your home with far less electricity than purely resistive heating . So , they become cheaper to run , but not free .', 8, 'dp42t7w', '1'),
(229, 'Well , electronic heating uses electricity , which is less efficient than thermal heating , like from gas or oil . Electricity for heating is probably on the order of 40 % efficient , considering you have to burn a fuel source at the generation site , transmit that energy to the home , and then dispense it . Compare that to transporting natural gas to your home , and then burning it at `` 100 % \'\' efficiency .', 8, 'dp3zm0c', '-2'),
(230, '~~I am going to intuitively answer `` no \'\' . Obviously , you can calculate this , though it is more complicated than it looks at first glance.~~ ~~The heat from electronics is very low `` quality \'\' , meaning it is generated at low temperatures ( as compared to an electric heater ) . This means that any significant amount of space heating from electronics will require fans to circulate this heat . My intuition is that heating a living space with 100W of heat generated at 60C is less efficient ( will require a lot of fan power to distribute ) than heating with 100W at , say , 200C . For instance , baseboard heating distributes heat by natural convection only . Using a very small heater at very cool temperatures means you will have to find energy run a fan to convect the heat away from it \'s source . Thus , heating with normal baseboard-type heating is more efficient than heating with a small , cool , point-heat source such as a computer.~~ ~~Now , the fans also dissipate their energy as heat , but you \'ve also increased room air circulation , which will increase heat transfer through the walls ... it might be all a wash , but I think it is less efficient just due to the lower heat quality generated by electronics.~~ Definitely a wash in the first order . A watt is a watt . However , I am not convinced that second order effects of heat distribution throughout a living space makes running electronics perfectly offset the heating power you save . Heaters are designed to heat where you want to heat and not heat where you do n\'t want heat . Adding electronics might make the space under your desk a bit warmer but not affect the general temperature of the rest of the room enough for your thermostat to pick up the difference in full .', 8, 'dp40ok0', '-2'),
(231, 'If this number is accurate and it seems like it then you may find a tiny bit of comfort in noticing that given their huge player base you are almost certainly not alone this . Hope that makes you feel better and good luck ! ( Math tip : Take 100/0.0005427766 and will give you your `` 1 in something \'\' odds )', 9, 'dp4nw6z', '4'),
(232, 'So , lets say you try to get the drop 1500 times . The chance that you never get it even once on any of those tries is 99.5 % \\^ 1500 = 0.05427766 ... % . So the chance that you *will* get the drop at least once or more is 100 % minus that , or something like 99.9 % chance .', 9, 'dp4qgg9', '2'),
(233, 'It \'s correct if you have actually gone through HH ten times every day of the event for the last ten years , yes . Your probability is about 1 in 2000 , or about the same as dying in a car crash sometime in the next 50,000 miles . Unlikely but not astronomically so .', 9, 'dp4oqcl', '1'),
(234, 'Blizzard is trolling you', 9, 'dp4rmvf', '1'),
(235, 'I do n\'t even want to think about the Invincible drop rate ...', 9, 'dp4wq57', '1'),
(236, 'Thanks everyone !', 9, 'dp4x4pe', '1'),
(237, '> what classes should I pay attention the most to ? All of them . Seriously . I started college expecting to be designing CPUs when I graduated . Today , I design power systems and I love my job . The point is that you can have a plan for your career , but it can make a radical turn in a direction you were n\'t expecting , and by not paying attention to some classes , you can easily be closing the door to career paths you may have wanted to pursue . You \'re investing a ton of time and money into getting an education . Make the most of it .', 10, 'dp4nv5m', '13'),
(238, 'All of them is right . The classes in an undergraduate education are only a foundation , and a fraction of what you will need to know for your career . Without a solid foundation , your career will be much less successful .', 10, 'dp4pttg', '3'),
(239, 'Absolutely all of them . We \'re not talking about a menial job where you might only need to know how to do a few simple tasks . Your job as an engineer is to have an advanced and deep level of understanding of your field . Obviously , that ca n\'t apply to every single fact , but you need to have a strong enough fundamental base to be able to operate within and teach yourself any area that might be new to you . All of those classes are tools in your tool box . Your projects can vary wildly from one to the next and you never know what skillset you might need next week , let alone next year . That being said - the more fundamental courses are particularly important ( i.e . physics , material science , chemistry , etc ... ) . In addition , a lot of people - both professors as well as students - are passing around the flagrantly ignorant B.S . that `` analog is dead \'\' . If you hear someone say that , know instantly that they do n\'t have a clue what they \'re doing and take anything else they say with a huge grain of salt . Learn analog electronics . Physics is analog . The world is analog . With few exceptions , digital is a construct that relies upon analog science in order to work . EE \'s that only know digital are a dime a dozen . Eventually , they all encounter a situation that to their minds *should* work , but does n\'t . That \'s when they bring in the analog expert who explains why the world is n\'t conforming to their idealized perspective and shows them how to fix it . So do n\'t handicap yourself from the start - take the harder path and study analog in order to understand why everything really works the way it does .', 10, 'dp4qh4q', '4'),
(240, 'My best advice : start job searching now and take it super seriously . I waited until around graduation and was really adamant about going into electronics design of some kind . After literally 3 years of stubbornness , I \'ve accepted that there \'s only certain types of jobs available in my area , and even if I wanted to move to some place like Austin to do electronics stuff , I \'d still have a very hard time because those jobs are more scarce than the thought and competition is steep . Ended up in Process Engineering then took off to try a software startup . Trying to get back in either process or controls ( because that \'s what they have here ) . Also I do n\'t recommend trying a startup . That \'s a massive rant , but the tl ; dr is that you \'re essentially doing the same thing as someone trying to be a rock star . So , do n\'t quit your day job .', 10, 'dp4t9mz', '2'),
(241, 'if you know what sort of focus you want to go in you can try taking those classes . also ask your advisor if there ’ s any minors relating to specific EE disciplines or whatever you want to call them', 10, 'dp4q24k', '1'),
(242, 'You need too be clear about what specifically you do n\'t understand .', 11, 'dp4rl6z', '3'),
(243, 'It \'s almost as if putting trillions of tons of GHGs into the atmosphere eventually leads to bad things . Weird .', 12, 'dp3jujw', '17'),
(244, 'Exponential growth , my dudes', 12, 'dp4fykj', '5'),
(245, 'Well shit .', 12, 'dp3jo6o', '5'),
(246, 'I do n\'t know guys . I \'m gon na wait to see what twitter has to say before I make up my mind on this .', 12, 'dp3x7sj', '5'),
(247, 'But this sub said we are going toward renewables .', 12, 'dp4tbz3', '1'),
(248, 'This is a potential outcome of increasing renewables penetration without storage . As non-renewable dispatchable sources are crowded out and their capacity factor reduced to allow renewables onto the grid the return on investment for any capital expenditure to reduce carbon emissions is going to be minimized .', 12, 'dp4p790', '1'),
(249, 'Higher C02 leads to higher yields in our nation \'s breadbasket .', 12, 'dp4tr8q', '1'),
(250, 'Nice , I hope everyone dies .', 12, 'dp4ofn6', '-1'),
(251, 'Have you checked the bookstore for the textbook ? ... .', 13, 'dp4wshk', '1'),
(252, 'Hint : for integer k > 0 you have P ( Y=k ) = P ( k-1 < X < = k )', 14, 'dp4ocap', '2'),
(253, 'I can try and explain intuitively , but drawing a graph and doing the math can always help ! Imagine I have an economy of 100 people . Every time I supply an extra unit my marginal cost is lower . This implies that my average cost also decreases with each unit . ( Notice the never intersect apart from at the origin ) . Now what is the most efficient number of firms in this market ? Using the intuition above , average costs across the industry would be larger with two firms because neither have taken full advantage of their person decreasing average costs . So the most efficient use of scarce factors of production , and the one that therefore ( potentially ) has the most scope for increasing consumer surplus , is one firm .', 17, 'dp4wlkf', '1'),
(254, 'the degree of a vertex in a graph is the number of edges that connect to it .', 18, 'dp4udmw', '2'),
(255, 'The degree of a vertex is the number of edges that connect to the vertex . For ( 2 ) , consider the handshaking lemma .', 18, 'dp4uy6x', '1'),
(256, 'If you imagine a supply and demand diagram , what things can shift the supply curve right ? The big ones ( and that apply to your industry ) is a decrease in the cost of inputs to the production of nuclear power and equivalent productivity increases for the firm ( related to their production functions ) .', 19, 'dp4wnty', '1'),
(257, 'No , because the tangent vector is a vector- it \'s coordinate independent .', 21, 'dp4v1tu', '2'),
(258, 'No , you can formulate it without using coordinates . For example [ the wp article ] ( https : //en.wikipedia.org/wiki/Parallel_transport ) presents in coordinate-independent language . The expression of the parallel transport in coordinates is of course coordinate-dependent .', 21, 'dp4w7z1', '1'),
(259, 'In your flat space example , a parallely transported vector just continues to point in the same direction as it moves along the curve ( which you are transporting the vector ) . In this case the vector is just a direction and length ( an arrow ) and we never even mentioned coordinates yet so it \'s easy to see what parallel transport means here and that it does n\'t care what coordinates we \'re using .', 21, 'dp4x07r', '1'),
(260, 'If you \'re supposed to actually integrate the density by hand , and not just recognize the density is that of a particular bivariate normal distribution , then it would likely be easiest to first calculate the marginal densities if X and Y to calculate their respective mean and variance . To find the marginal density of X , say , you have to integrate the density with respect to y , for which it is likely easiest to rewrite the exponent as > - ( 1/3 ) ( ( y-1-x/2 ) ^ ( 2 ) +3x^ ( 2 ) /4 ) by completing the square . An appropriate u-substitution will allow you to integrate y and get the density of X , making the requested calculations a little easier . You can calculate E ( XY ) by doing the same process of completing the square in the exponent .', 22, 'dp4qk1e', '1'),
(261, 'This is why NMC manufacturers have been changing their Nickel : Manganese : Cobalt composition ratios . It was n\'t that long ago that the ratio was 1:1:1 . Then it transitioned to [ 5:2:3 and 6:2:2 ] ( http : //pubs.acs.org/doi/pdf/10.1021/acscentsci.5b00223 ) . Now it \'s moving to [ 8:1:1 ] ( https : //www.reuters.com/article/us-southkorea-battery-cobalt/asian-battery-makers-eye-nickel-top-up-as-cobalt-price-bites-idUSKBN1AJ0S8 ) . This would also bring the Nickel : Cobalt ratios closer to what is found in some mines [ outside of the DRC ] ( http : //www.highlandspacific.com/current-projects/ramu-nickel ) , which might make them more economical .', 23, 'dp40udu', '4'),
(262, 'How do I save this post', 23, 'dp4jkza', '1'),
(263, 'the derivative of sin ( x ) -xcos ( x ) is cos ( x ) +xsin ( x ) -cos ( x ) =xsin ( x ) That means v ( x ) =xsin ( x ) v ( x ) =0 is when the particle is at rest So xsin ( x ) =0 , so either x=0 or sin ( x ) =0 . find all x where sin ( x ) =0', 24, 'dp499ke', '3'),
(264, 'Take the derivative and set it equal to zero .', 24, 'dp4an2x', '1'),
(265, 'A matrix with n columns and m rows represents a map R^ ( n ) - > R^ ( m ) . If it has a 0 row it can not be onto , since Mv will always have a 0 in the entry corresponding to that row . If the matrix is in row echelon form then it \'s onto if and only if it has no 0 rows .', 25, 'dp4vxe1', '1'),
(266, 'The image of the first matrix is R^2 . This implies surjection . I.e . take any element ( x , y ) in R^2 then ( x , y,0,0 ) in R^4 will map to it . It isnt surjective in R^3 becaause there is no element in R^4 that maps to ( 0,0,1 ) ; this is fairly obvious to prove . The second matrix is injective since its essentially the identity matrix in R^2 i.e . A ( x1 , x2 ) = ( x1 , x2,0 ) but clearly this isnt surjective since you cant make any element in R^3 with a nonzero z component .', 25, 'dp4w2dt', '1'),
(267, 'The logarithmic function is a strictly monotonic increasing function . Take logarithms of both sides and use the identity log ( a^ ( x ) ) =x log ( a ) . Now it should be easy .', 26, 'dp4x4in', '1'),
(268, 'Search for a good book that has mathematical notations . Most of introductory books have them before the preface . Then , when you are looking at some formula/algorithms you must know what that equation refers to . In the picture you posted I believe it has to do with lines since you have an equation for x , one for y , m for the slope and sigma ( that weird giant E ) is for the sum since x equals 1 to x equals n. The best way to get a catch and all of that is working with it . Otherwise , even when you can read it , you most probably are not going to be able to understand .', 27, 'dp4shf0', '2'),
(269, 'Because you used the relationship for the *effect* of the magnetic field ( F=qvB ) , when you \'re dealing with the equation for the *cause* of the magnetic field ( F=mu_0 I / ( 2*r ) or perhaps the Biot-Savart Law ) . Sure , the net force on the electron is m v^ ( 2 ) /r , but that \'s not caused by the magnetic force . It \'s almost entirely due to the static electric force ( F = qE ) .', 28, 'dp4olxj', '2'),
(270, 'Just to add to the existing answer : The way you set up your equation assumes that the electron is moving due to a magnetic force , which is not the case . The centripetal force on the electron is due to the electric field created by the proton . The movement of the electron creates a magnetic field , which is what you need to find .', 28, 'dp4pzl8', '2'),
(271, 'The \'s some true boots too big right there', 29, 'dp4o4dq', '10'),
(272, 'Roses are red , That poem is dumb , e^jπ = -1', 29, 'dp4wly5', '1'),
(273, 'Technically , i^i = e^ ( i*log ( i ) ^ ) = e^ ( i ( ln|i|+i arg ( i ) ^ ) +k*2pi ^i ) ) = e^ ( -pi/2 - k*2pi ) , k in Z . Sorry , I have a complex analysis exam coming up ...', 29, 'dp4tj07', '2'),
(274, '> PV/T=PV/T That ... is definitely correct', 29, 'dp4xdyg', '1'),
(275, 'When is cos x = 0 ? ( You can do this by either the unit circle or the cosine graph )', 30, 'dp4wzg0', '1'),
(276, 'Say \'s Law is fundamentally the concept that demand requires supply - that is , in order to demand something , one must supply something that is valued by others . Most formulations of Say \'s Law ( such as Keynes \' ) are rather difficult to understand , and are really written as though the reader already gets the concept .', 31, 'dp4hk0a', '7'),
(277, 'It is a difficult issue . Say and the early writers were not always clear about what they meant . Keynes attacks something which is n\'t really what Say meant . When people put it in terms of recession it \'s often confusing . This is how I put the issue ... . Say \'s law is a statement about all transactions . It does n\'t concern itself just with final goods , it concerns everything . As such , it \'s really closer to microeconomics than macroeconomics . When looking at all transactions things are quite simple . All assets must be paid for with all assets . Total demand is bought with total supply . Hutt puts it like this `` The demand for any commodity is a function of the supply of non competing commodities \'\' . Here Hutt uses `` commodity \'\' to mean any good , service or asset ( this is a non-standard use of the term ) . So , the more other people are producing the more wealth exists to buy the things you are producing . When we \'re talking about macroeconomics though we \'re talking about demand for final goods ; aggregate demand . That is a sub-set of the total . Therefore , that demand component can fall and without Say \'s law being disobeyed . To make Say \'s law into a statement about recessions something else is needed . Usually , that \'s some variant of the idea that producible and non-producible goods are close substitutes . These extra theories that surround it are the problematic ones . Some people would say that this view makes Say \'s law too simple and obvious . Although it \'s very simple , I still think that the form of Say \'s law that I described above is useful . Now , think about all those people who they call horses over in badeconomics . Those who claim that robotics and technology will make us all poor by getting rid of our jobs . This is the cornerstone of our reply to them . It does not really say much useful about the very short term though .', 31, 'dp4wveu', '1');

-- --------------------------------------------------------

--
-- Table structure for table `denied_access`
--

CREATE TABLE `denied_access` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `reason_code` tinyint(1) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dimension`
--

CREATE TABLE `dimension` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimension`
--

INSERT INTO `dimension` (`id`, `name`, `description`) VALUES
(1, 'weight', 'the amount or quantity of heaviness or mass; amount a thing weighs.'),
(2, 'length', 'the measurement or extent of something from end to end; the greater of two or the greatest of three dimensions of an object.'),
(3, 'duration', 'the time during which something continues.'),
(4, 'value', 'estimate the monetary worth of.'),
(5, 'speed', 'the rate at which someone or something moves or operates or is able to move or operate.'),
(6, 'number', 'numeric value in the decimal system of counting.');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-09-17 22:19:30.702278', '9', 'determiner', 1, '[{"added": {}}]', 9, 1),
(2, '2017-09-17 22:20:32.867834', '1', 'Word object', 1, '[{"added": {}}]', 8, 1),
(3, '2017-10-09 18:17:26.424116', '441', 'grams - grams', 1, '[{"added": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'redditbot', 'redditcontent'),
(2, 'admin', 'logentry'),
(3, 'auth', 'permission'),
(4, 'auth', 'group'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session'),
(8, 'redditbot', 'word'),
(9, 'redditbot', 'wordtype'),
(10, 'redditbot', 'quantity'),
(11, 'redditbot', 'thing'),
(12, 'redditbot', 'dimension'),
(13, 'redditbot', 'quantity_aliase'),
(14, 'redditbot', 'candidate'),
(15, 'redditbot', 'comment'),
(16, 'redditbot', 'submission'),
(17, 'redditbot', 'subreddit'),
(18, 'redditbot', 'hunt'),
(19, 'redditbot', 'fodder');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-09-08 00:59:04.566690'),
(2, 'auth', '0001_initial', '2017-09-08 00:59:07.339849'),
(3, 'admin', '0001_initial', '2017-09-08 00:59:07.700870'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-09-08 00:59:07.722871'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-09-08 00:59:07.896881'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-09-08 00:59:07.994886'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-09-08 00:59:08.297904'),
(8, 'auth', '0004_alter_user_username_opts', '2017-09-08 00:59:08.320905'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-09-08 00:59:08.425911'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-09-08 00:59:08.436912'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-09-08 00:59:08.462913'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-09-08 00:59:08.565919'),
(13, 'redditbot', '0001_initial', '2017-09-08 00:59:08.659925'),
(14, 'sessions', '0001_initial', '2017-09-08 00:59:08.789932');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ua4uqc6dk1bd0hs3uinddswr1nf510vy', 'MDRhMTZhMzg2NWMyMmI0OWQ3ZGUwNGYxMGM2OWZiYzFhNTRiYzk2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjdjNWIwNThjOTM5ZGIwMzE2MjY0NDdiMjFmNGJjOWExZWUyMDliIn0=', '2017-09-22 02:30:05.967065'),
('awqxyn4lk2b1rlh2l0szpt19pymt5x6h', 'MDRhMTZhMzg2NWMyMmI0OWQ3ZGUwNGYxMGM2OWZiYzFhNTRiYzk2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjdjNWIwNThjOTM5ZGIwMzE2MjY0NDdiMjFmNGJjOWExZWUyMDliIn0=', '2017-10-06 08:53:41.217046'),
('alx9oxhdca2uqz82j67rel4osko18r1r', 'MDRhMTZhMzg2NWMyMmI0OWQ3ZGUwNGYxMGM2OWZiYzFhNTRiYzk2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjdjNWIwNThjOTM5ZGIwMzE2MjY0NDdiMjFmNGJjOWExZWUyMDliIn0=', '2017-10-20 11:21:12.159647'),
('f422w0iawjb7rhz3bga44370sml9qh19', 'MDRhMTZhMzg2NWMyMmI0OWQ3ZGUwNGYxMGM2OWZiYzFhNTRiYzk2ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNjdjNWIwNThjOTM5ZGIwMzE2MjY0NDdiMjFmNGJjOWExZWUyMDliIn0=', '2017-11-04 19:58:28.561793');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `fileurl` varchar(300) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `title`, `fileurl`, `timestamp`) VALUES
(10, 'Daniel Dennet', 'Daniel_C._Dennett-From_Bacteria_to_Bach_and_Back__The_Evolution_of_Minds-W._W._Norton_Company_(2017).epub', '2017-05-09 01:06:29'),
(11, 'daniel dennet text', 'Daniel_C_Dennett-From_Bacteria_to_Bach_and_Back__The_Evolution_of_Minds-W_W_Norton_Company_(2017).txt', '2017-05-09 04:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `fodder`
--

CREATE TABLE `fodder` (
  `id` int(11) NOT NULL,
  `lim` int(11) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fodder`
--

INSERT INTO `fodder` (`id`, `lim`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hunt`
--

CREATE TABLE `hunt` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hunt`
--

INSERT INTO `hunt` (`id`, `created`) VALUES
(2, '2017-10-31 05:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `hunt_relation`
--

CREATE TABLE `hunt_relation` (
  `id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `hunt_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hunt_relation`
--

INSERT INTO `hunt_relation` (`id`, `content_type_id`, `object_id`, `hunt_id`) VALUES
(1, 16, 1, 2),
(2, 15, 1, 2),
(3, 14, 1, 2),
(4, 15, 2, 2),
(5, 15, 3, 2),
(6, 15, 4, 2),
(7, 15, 5, 2),
(8, 14, 2, 2),
(9, 15, 6, 2),
(10, 15, 7, 2),
(11, 15, 8, 2),
(12, 15, 9, 2),
(13, 15, 10, 2),
(14, 14, 3, 2),
(15, 15, 11, 2),
(16, 14, 4, 2),
(17, 15, 12, 2),
(18, 14, 5, 2),
(19, 14, 6, 2),
(20, 14, 7, 2),
(21, 14, 8, 2),
(22, 14, 9, 2),
(23, 14, 10, 2),
(24, 14, 11, 2),
(25, 14, 12, 2),
(26, 14, 13, 2),
(27, 14, 14, 2),
(28, 14, 15, 2),
(29, 14, 16, 2),
(30, 14, 17, 2),
(31, 14, 18, 2),
(32, 14, 19, 2),
(33, 14, 20, 2),
(34, 14, 21, 2),
(35, 14, 22, 2),
(36, 14, 23, 2),
(37, 14, 24, 2),
(38, 14, 25, 2),
(39, 14, 26, 2),
(40, 14, 27, 2),
(41, 14, 28, 2),
(42, 14, 29, 2),
(43, 14, 30, 2),
(44, 14, 31, 2),
(45, 14, 32, 2),
(46, 14, 33, 2),
(47, 14, 34, 2),
(48, 14, 35, 2),
(49, 14, 36, 2),
(50, 14, 37, 2),
(51, 14, 38, 2),
(52, 14, 39, 2),
(53, 15, 13, 2),
(54, 15, 14, 2),
(55, 15, 15, 2),
(56, 15, 16, 2),
(57, 15, 17, 2),
(58, 15, 18, 2),
(59, 15, 19, 2),
(60, 14, 40, 2),
(61, 15, 20, 2),
(62, 15, 21, 2),
(63, 15, 22, 2),
(64, 15, 23, 2),
(65, 14, 41, 2),
(66, 15, 24, 2),
(67, 15, 25, 2),
(68, 15, 26, 2),
(69, 14, 42, 2),
(70, 15, 27, 2),
(71, 15, 28, 2),
(72, 15, 29, 2),
(73, 15, 30, 2),
(74, 15, 31, 2),
(75, 15, 32, 2),
(76, 15, 33, 2),
(77, 14, 43, 2),
(78, 15, 34, 2),
(79, 15, 35, 2),
(80, 15, 36, 2),
(81, 15, 37, 2),
(82, 15, 38, 2),
(83, 15, 39, 2),
(84, 15, 40, 2),
(85, 15, 41, 2),
(86, 15, 42, 2),
(87, 15, 43, 2),
(88, 15, 44, 2),
(89, 15, 45, 2),
(90, 15, 46, 2),
(91, 15, 47, 2),
(92, 15, 48, 2),
(93, 14, 44, 2),
(94, 15, 49, 2),
(95, 15, 50, 2),
(96, 15, 51, 2),
(97, 15, 52, 2),
(98, 14, 45, 2),
(99, 15, 53, 2),
(100, 14, 46, 2),
(101, 14, 47, 2),
(102, 14, 48, 2),
(103, 15, 54, 2),
(104, 14, 49, 2),
(105, 14, 50, 2),
(106, 14, 51, 2),
(107, 14, 52, 2),
(108, 14, 53, 2),
(109, 14, 54, 2),
(110, 15, 55, 2),
(111, 15, 56, 2),
(112, 15, 57, 2),
(113, 15, 58, 2),
(114, 15, 59, 2),
(115, 15, 60, 2),
(116, 16, 2, 2),
(117, 15, 61, 2),
(118, 15, 62, 2),
(119, 14, 55, 2),
(120, 14, 56, 2),
(121, 15, 63, 2),
(122, 15, 64, 2),
(123, 15, 65, 2),
(124, 14, 57, 2),
(125, 14, 58, 2),
(126, 14, 59, 2),
(127, 14, 60, 2),
(128, 15, 66, 2),
(129, 15, 67, 2),
(130, 14, 61, 2),
(131, 15, 68, 2),
(132, 14, 62, 2),
(133, 14, 63, 2),
(134, 15, 69, 2),
(135, 15, 70, 2),
(136, 15, 71, 2),
(137, 14, 64, 2),
(138, 15, 72, 2),
(139, 15, 73, 2),
(140, 15, 74, 2),
(141, 15, 75, 2),
(142, 15, 76, 2),
(143, 15, 77, 2),
(144, 14, 65, 2),
(145, 14, 66, 2),
(146, 15, 78, 2),
(147, 15, 79, 2),
(148, 14, 67, 2),
(149, 14, 68, 2),
(150, 15, 80, 2),
(151, 14, 69, 2),
(152, 15, 81, 2),
(153, 15, 82, 2),
(154, 15, 83, 2),
(155, 15, 84, 2),
(156, 15, 85, 2),
(157, 14, 70, 2),
(158, 14, 71, 2),
(159, 15, 86, 2),
(160, 15, 87, 2),
(161, 15, 88, 2),
(162, 15, 89, 2),
(163, 14, 72, 2),
(164, 15, 90, 2),
(165, 15, 91, 2),
(166, 14, 73, 2),
(167, 14, 74, 2),
(168, 14, 75, 2),
(169, 14, 76, 2),
(170, 14, 77, 2),
(171, 15, 92, 2),
(172, 14, 78, 2),
(173, 14, 79, 2),
(174, 14, 80, 2),
(175, 14, 81, 2),
(176, 14, 82, 2),
(177, 14, 83, 2),
(178, 15, 93, 2),
(179, 14, 84, 2),
(180, 15, 94, 2),
(181, 15, 95, 2),
(182, 14, 85, 2),
(183, 15, 96, 2),
(184, 15, 97, 2),
(185, 14, 86, 2),
(186, 14, 87, 2),
(187, 14, 88, 2),
(188, 14, 89, 2),
(189, 15, 98, 2),
(190, 15, 99, 2),
(191, 15, 100, 2),
(192, 14, 90, 2),
(193, 14, 91, 2),
(194, 14, 92, 2),
(195, 15, 101, 2),
(196, 14, 93, 2),
(197, 14, 94, 2),
(198, 14, 95, 2),
(199, 15, 102, 2),
(200, 15, 103, 2),
(201, 15, 104, 2),
(202, 15, 105, 2),
(203, 14, 96, 2),
(204, 15, 106, 2),
(205, 14, 97, 2),
(206, 14, 98, 2),
(207, 15, 107, 2),
(208, 14, 99, 2),
(209, 14, 100, 2),
(210, 15, 108, 2),
(211, 15, 109, 2),
(212, 14, 101, 2),
(213, 15, 110, 2),
(214, 14, 102, 2),
(215, 15, 111, 2),
(216, 15, 112, 2),
(217, 15, 113, 2),
(218, 14, 103, 2),
(219, 15, 114, 2),
(220, 15, 115, 2),
(221, 15, 116, 2),
(222, 15, 117, 2),
(223, 14, 104, 2),
(224, 14, 105, 2),
(225, 15, 118, 2),
(226, 14, 106, 2),
(227, 14, 107, 2),
(228, 14, 108, 2),
(229, 15, 119, 2),
(230, 14, 109, 2),
(231, 15, 120, 2),
(232, 14, 110, 2),
(233, 15, 121, 2),
(234, 15, 122, 2),
(235, 14, 111, 2),
(236, 15, 123, 2),
(237, 15, 124, 2),
(238, 15, 125, 2),
(239, 14, 112, 2),
(240, 14, 113, 2),
(241, 15, 126, 2),
(242, 15, 127, 2),
(243, 15, 128, 2),
(244, 15, 129, 2),
(245, 15, 130, 2),
(246, 15, 131, 2),
(247, 15, 132, 2),
(248, 15, 133, 2),
(249, 14, 114, 2),
(250, 15, 134, 2),
(251, 16, 3, 2),
(252, 15, 135, 2),
(253, 14, 115, 2),
(254, 14, 116, 2),
(255, 14, 117, 2),
(256, 15, 136, 2),
(257, 15, 137, 2),
(258, 15, 138, 2),
(259, 15, 139, 2),
(260, 15, 140, 2),
(261, 15, 141, 2),
(262, 14, 118, 2),
(263, 15, 142, 2),
(264, 15, 143, 2),
(265, 15, 144, 2),
(266, 15, 145, 2),
(267, 15, 146, 2),
(268, 15, 147, 2),
(269, 15, 148, 2),
(270, 15, 149, 2),
(271, 15, 150, 2),
(272, 15, 151, 2),
(273, 15, 152, 2),
(274, 15, 153, 2),
(275, 15, 154, 2),
(276, 15, 155, 2),
(277, 15, 156, 2),
(278, 15, 157, 2),
(279, 15, 158, 2),
(280, 15, 159, 2),
(281, 15, 160, 2),
(282, 15, 161, 2),
(283, 14, 119, 2),
(284, 15, 162, 2),
(285, 15, 163, 2),
(286, 15, 164, 2),
(287, 15, 165, 2),
(288, 15, 166, 2),
(289, 15, 167, 2),
(290, 15, 168, 2),
(291, 15, 169, 2),
(292, 14, 120, 2),
(293, 15, 170, 2),
(294, 15, 171, 2),
(295, 15, 172, 2),
(296, 15, 173, 2),
(297, 16, 4, 2),
(298, 15, 174, 2),
(299, 15, 175, 2),
(300, 14, 121, 2),
(301, 14, 122, 2),
(302, 15, 176, 2),
(303, 15, 177, 2),
(304, 15, 178, 2),
(305, 14, 123, 2),
(306, 14, 124, 2),
(307, 14, 125, 2),
(308, 15, 179, 2),
(309, 14, 126, 2),
(310, 15, 180, 2),
(311, 14, 127, 2),
(312, 14, 128, 2),
(313, 15, 181, 2),
(314, 15, 182, 2),
(315, 14, 129, 2),
(316, 14, 130, 2),
(317, 15, 183, 2),
(318, 14, 131, 2),
(319, 14, 132, 2),
(320, 14, 133, 2),
(321, 15, 184, 2),
(322, 15, 185, 2),
(323, 15, 186, 2),
(324, 15, 187, 2),
(325, 16, 5, 2),
(326, 15, 188, 2),
(327, 14, 134, 2),
(328, 14, 135, 2),
(329, 14, 136, 2),
(330, 14, 137, 2),
(331, 14, 138, 2),
(332, 14, 139, 2),
(333, 15, 189, 2),
(334, 14, 140, 2),
(335, 14, 141, 2),
(336, 14, 142, 2),
(337, 14, 143, 2),
(338, 14, 144, 2),
(339, 14, 145, 2),
(340, 14, 146, 2),
(341, 14, 147, 2),
(342, 14, 148, 2),
(343, 14, 149, 2),
(344, 14, 150, 2),
(345, 14, 151, 2),
(346, 14, 152, 2),
(347, 14, 153, 2),
(348, 15, 190, 2),
(349, 14, 154, 2),
(350, 15, 191, 2),
(351, 14, 155, 2),
(352, 14, 156, 2),
(353, 14, 157, 2),
(354, 14, 158, 2),
(355, 14, 159, 2),
(356, 14, 160, 2),
(357, 14, 161, 2),
(358, 14, 162, 2),
(359, 14, 163, 2),
(360, 14, 164, 2),
(361, 15, 192, 2),
(362, 15, 193, 2),
(363, 14, 165, 2),
(364, 14, 166, 2),
(365, 14, 167, 2),
(366, 14, 168, 2),
(367, 14, 169, 2),
(368, 15, 194, 2),
(369, 14, 170, 2),
(370, 14, 171, 2),
(371, 14, 172, 2),
(372, 14, 173, 2),
(373, 14, 174, 2),
(374, 14, 175, 2),
(375, 14, 176, 2),
(376, 14, 177, 2),
(377, 14, 178, 2),
(378, 14, 179, 2),
(379, 15, 195, 2),
(380, 14, 180, 2),
(381, 14, 181, 2),
(382, 14, 182, 2),
(383, 14, 183, 2),
(384, 14, 184, 2),
(385, 14, 185, 2),
(386, 14, 186, 2),
(387, 15, 196, 2),
(388, 15, 197, 2),
(389, 14, 187, 2),
(390, 14, 188, 2),
(391, 14, 189, 2),
(392, 14, 190, 2),
(393, 14, 191, 2),
(394, 14, 192, 2),
(395, 14, 193, 2),
(396, 14, 194, 2),
(397, 14, 195, 2),
(398, 14, 196, 2),
(399, 14, 197, 2),
(400, 14, 198, 2),
(401, 14, 199, 2),
(402, 14, 200, 2),
(403, 14, 201, 2),
(404, 15, 198, 2),
(405, 15, 199, 2),
(406, 16, 6, 2),
(407, 15, 200, 2),
(408, 15, 201, 2),
(409, 15, 202, 2),
(410, 14, 202, 2),
(411, 14, 203, 2),
(412, 15, 203, 2),
(413, 15, 204, 2),
(414, 15, 205, 2),
(415, 14, 204, 2),
(416, 15, 206, 2),
(417, 14, 205, 2),
(418, 15, 207, 2),
(419, 15, 208, 2),
(420, 15, 209, 2),
(421, 15, 210, 2),
(422, 15, 211, 2),
(423, 16, 7, 2),
(424, 15, 212, 2),
(425, 14, 206, 2),
(426, 15, 213, 2),
(427, 15, 214, 2),
(428, 14, 207, 2),
(429, 16, 8, 2),
(430, 15, 215, 2),
(431, 15, 216, 2),
(432, 15, 217, 2),
(433, 15, 218, 2),
(434, 14, 208, 2),
(435, 14, 209, 2),
(436, 14, 210, 2),
(437, 15, 219, 2),
(438, 15, 220, 2),
(439, 15, 221, 2),
(440, 15, 222, 2),
(441, 15, 223, 2),
(442, 15, 224, 2),
(443, 15, 225, 2),
(444, 15, 226, 2),
(445, 15, 227, 2),
(446, 14, 211, 2),
(447, 14, 212, 2),
(448, 14, 213, 2),
(449, 14, 214, 2),
(450, 15, 228, 2),
(451, 15, 229, 2),
(452, 14, 215, 2),
(453, 14, 216, 2),
(454, 15, 230, 2),
(455, 14, 217, 2),
(456, 14, 218, 2),
(457, 14, 219, 2),
(458, 14, 220, 2),
(459, 16, 9, 2),
(460, 15, 231, 2),
(461, 14, 221, 2),
(462, 15, 232, 2),
(463, 14, 222, 2),
(464, 14, 223, 2),
(465, 14, 224, 2),
(466, 14, 225, 2),
(467, 14, 226, 2),
(468, 15, 233, 2),
(469, 14, 227, 2),
(470, 14, 228, 2),
(471, 14, 229, 2),
(472, 15, 234, 2),
(473, 15, 235, 2),
(474, 15, 236, 2),
(475, 16, 10, 2),
(476, 15, 237, 2),
(477, 15, 238, 2),
(478, 15, 239, 2),
(479, 15, 240, 2),
(480, 14, 230, 2),
(481, 15, 241, 2),
(482, 16, 11, 2),
(483, 15, 242, 2),
(484, 16, 12, 2),
(485, 15, 243, 2),
(486, 15, 244, 2),
(487, 15, 245, 2),
(488, 15, 246, 2),
(489, 15, 247, 2),
(490, 15, 248, 2),
(491, 15, 249, 2),
(492, 14, 231, 2),
(493, 15, 250, 2),
(494, 16, 13, 2),
(495, 15, 251, 2),
(496, 16, 14, 2),
(497, 15, 252, 2),
(498, 14, 232, 2),
(499, 14, 233, 2),
(500, 16, 15, 2),
(501, 16, 16, 2),
(502, 16, 17, 2),
(503, 15, 253, 2),
(504, 14, 234, 2),
(505, 16, 18, 2),
(506, 15, 254, 2),
(507, 15, 255, 2),
(508, 14, 235, 2),
(509, 16, 19, 2),
(510, 15, 256, 2),
(511, 16, 20, 2),
(512, 16, 21, 2),
(513, 15, 257, 2),
(514, 15, 258, 2),
(515, 15, 259, 2),
(516, 16, 22, 2),
(517, 15, 260, 2),
(518, 14, 236, 2),
(519, 14, 237, 2),
(520, 14, 238, 2),
(521, 14, 239, 2),
(522, 14, 240, 2),
(523, 14, 241, 2),
(524, 16, 23, 2),
(525, 15, 261, 2),
(526, 14, 242, 2),
(527, 14, 243, 2),
(528, 14, 244, 2),
(529, 14, 245, 2),
(530, 15, 262, 2),
(531, 16, 24, 2),
(532, 15, 263, 2),
(533, 14, 246, 2),
(534, 14, 247, 2),
(535, 14, 248, 2),
(536, 14, 249, 2),
(537, 14, 250, 2),
(538, 15, 264, 2),
(539, 16, 25, 2),
(540, 15, 265, 2),
(541, 14, 251, 2),
(542, 14, 252, 2),
(543, 14, 253, 2),
(544, 15, 266, 2),
(545, 14, 254, 2),
(546, 14, 255, 2),
(547, 14, 256, 2),
(548, 14, 257, 2),
(549, 14, 258, 2),
(550, 14, 259, 2),
(551, 14, 260, 2),
(552, 14, 261, 2),
(553, 14, 262, 2),
(554, 14, 263, 2),
(555, 14, 264, 2),
(556, 14, 265, 2),
(557, 14, 266, 2),
(558, 16, 26, 2),
(559, 15, 267, 2),
(560, 16, 27, 2),
(561, 15, 268, 2),
(562, 14, 267, 2),
(563, 16, 28, 2),
(564, 15, 269, 2),
(565, 14, 268, 2),
(566, 14, 269, 2),
(567, 14, 270, 2),
(568, 15, 270, 2),
(569, 16, 29, 2),
(570, 15, 271, 2),
(571, 15, 272, 2),
(572, 14, 271, 2),
(573, 15, 273, 2),
(574, 14, 272, 2),
(575, 14, 273, 2),
(576, 14, 274, 2),
(577, 15, 274, 2),
(578, 16, 30, 2),
(579, 15, 275, 2),
(580, 14, 275, 2),
(581, 16, 31, 2),
(582, 15, 276, 2),
(583, 15, 277, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ips_on_hold`
--

CREATE TABLE `ips_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_errors`
--

CREATE TABLE `login_errors` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_errors`
--

INSERT INTO `login_errors` (`ai`, `username_or_email`, `ip_address`, `time`) VALUES
(7, 'karthik', '::1', '2017-07-04 21:20:04'),
(8, 'admin', '::1', '2017-07-04 21:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL,
  `symbol` varchar(100) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `bq_id` int(11) NOT NULL,
  `aliases` varchar(2000) CHARACTER SET latin1 NOT NULL,
  `bqmultiplier` double NOT NULL,
  `d_id` int(11) NOT NULL,
  `isbase` tinyint(1) NOT NULL DEFAULT '0',
  `isc` tinyint(1) NOT NULL DEFAULT '0',
  `usage` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `bridge` varchar(200) CHARACTER SET latin1 DEFAULT 'times',
  `description` text CHARACTER SET latin1 NOT NULL,
  `thing_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `name`, `symbol`, `bq_id`, `aliases`, `bqmultiplier`, `d_id`, `isbase`, `isc`, `usage`, `bridge`, `description`, `thing_id`) VALUES
(2, 'grams', 'gm', 2, 'gram, GM, Gm, gm', 1, 1, 1, 0, NULL, NULL, '', NULL),
(256, 'picogram', 'pg', 2, 'picogram, picograms, pg, pgs', 0.000000000001, 1, 0, 0, NULL, NULL, '', NULL),
(4, 'meters', 'm', 4, 'metre, metres, meters, meter, m', 1, 2, 1, 0, NULL, NULL, '', NULL),
(5, 'kilometres', 'km', 4, 'km, kms, KM, Km, kilometer, kilometers', 1000, 2, 0, 0, NULL, '', '', NULL),
(7, 'minutes', 'mins', 6, 'minute, min, mins, Minute, Minutes', 60, 3, 0, 0, NULL, NULL, '', NULL),
(6, 'seconds', 's', 0, 'second, seconds, Seconds, Second', 1, 3, 1, 0, NULL, NULL, '', NULL),
(8, 'hours', 'hours', 6, 'hour, Hour, Hours, hours', 3600, 3, 0, 0, NULL, NULL, '', NULL),
(9, 'days', 'day', 6, 'Day, day, days, Days', 86400, 3, 0, 0, NULL, NULL, '', NULL),
(10, 'one', '', 10, 'one, ones', 1, 6, 1, 0, NULL, NULL, '', NULL),
(116, 'million', '', 10, 'million, millions', 1000000, 6, 0, 0, NULL, NULL, '', NULL),
(117, 'quintillion', '', 10, 'quintillion, quintillions', 1e18, 6, 0, 0, NULL, NULL, '', NULL),
(118, 'trillion', '', 10, 'trillion, trillions', 1000000000000, 6, 0, 0, NULL, NULL, '', NULL),
(119, 'septillion', '', 10, 'septillion, septillions', 1e24, 6, 0, 0, NULL, NULL, '', NULL),
(120, 'sextillion', '', 10, 'sextillion, sextillions', 1e21, 6, 0, 0, NULL, NULL, '', NULL),
(121, 'octillion', '', 10, 'octillion, octillions', 1e27, 6, 0, 0, NULL, NULL, '', NULL),
(122, 'nonillion', '', 10, 'nonillion, nonillions', 1e30, 6, 0, 0, NULL, NULL, '', NULL),
(123, 'quadrillion', '', 10, 'quadrillion, quadrillions', 1e15, 6, 0, 0, NULL, NULL, '', NULL),
(124, 'decillion', '', 10, 'decillion, decillions', 1e33, 6, 0, 0, NULL, NULL, '', NULL),
(125, 'undecillion', '', 10, 'undecillion, undecillions', 1e36, 6, 0, 0, NULL, NULL, '', NULL),
(126, 'duodecillion', '', 10, 'duodecillion, duodecillions', 1e39, 6, 0, 0, NULL, NULL, '', NULL),
(127, 'tredecillion', '', 10, 'tredecillion, tredecillions', 1e42, 6, 0, 0, NULL, NULL, '', NULL),
(128, 'quattuordecillion', '', 10, 'quattuordecillion, quattuordecillions', 1e45, 6, 0, 0, NULL, NULL, '', NULL),
(129, 'quindecillion', '', 10, 'quindecillion, quindecillions', 1e48, 6, 0, 0, NULL, NULL, '', NULL),
(130, 'novemdecillion', '', 10, 'novemdecillion, novemdecillions', 1e60, 6, 0, 0, NULL, NULL, '', NULL),
(131, 'sexdecillion', '', 10, 'sexdecillion, sexdecillions', 1e51, 6, 0, 0, NULL, NULL, '', NULL),
(132, 'vigintillion', '', 10, 'vigintillion, vigintillions', 1e63, 6, 0, 0, NULL, NULL, '', NULL),
(133, 'septendecillion', '', 10, 'septendecillion, septendecillions', 1e54, 6, 0, 0, NULL, NULL, '', NULL),
(134, 'octodecillion', '', 10, 'octodecillion, octodecillions', 1e57, 6, 0, 0, NULL, NULL, '', NULL),
(135, 'unvigintillion', '', 10, 'unvigintillion, unvigintillions', 1e66, 6, 0, 0, NULL, NULL, '', NULL),
(136, 'duovigintillion', '', 10, 'duovigintillion, duovigintillions', 1e69, 6, 0, 0, NULL, NULL, '', NULL),
(137, 'quattuorvigintillion', '', 10, 'quattuorvigintillion, quattuorvigintillions', 1e75, 6, 0, 0, NULL, NULL, '', NULL),
(138, 'trevigintillion', '', 10, 'trevigintillion, trevigintillions', 1e72, 6, 0, 0, NULL, NULL, '', NULL),
(139, 'quinvigintillion', '', 10, 'quinvigintillion, quinvigintillions', 1e78, 6, 0, 0, NULL, NULL, '', NULL),
(140, 'sexvigintillion', '', 10, 'sexvigintillion, sexvigintillions', 1e81, 6, 0, 0, NULL, NULL, '', NULL),
(141, 'septenvigintillion', '', 10, 'septenvigintillion, septenvigintillions', 1e84, 6, 0, 0, NULL, NULL, '', NULL),
(142, 'octovigintillion', '', 10, 'octovigintillion, octovigintillions', 1e87, 6, 0, 0, NULL, NULL, '', NULL),
(143, 'novemvigintillion', '', 10, 'novemvigintillion, novemvigintillions', 1e90, 6, 0, 0, NULL, NULL, '', NULL),
(144, 'trigintillion', '', 10, 'trigintillion, trigintillions', 1e93, 6, 0, 0, NULL, NULL, '', NULL),
(145, 'billion', '', 10, 'billion, billions', 1000000000, 6, 0, 0, NULL, NULL, '', NULL),
(146, 'untrigintillion', '', 10, 'untrigintillion, untrigintillions', 1e96, 6, 0, 0, NULL, NULL, '', NULL),
(147, 'quintrigintillion', '', 10, 'quintrigintillion, quintrigintillions', 1e108, 6, 0, 0, NULL, NULL, '', NULL),
(148, 'tretrigintillion', '', 10, 'tretrigintillion, tretrigintillions', 1e102, 6, 0, 0, NULL, NULL, '', NULL),
(149, 'quattuortrigintillion', '', 10, 'quattuortrigintillion, quattuortrigintillions', 1e105, 6, 0, 0, NULL, NULL, '', NULL),
(150, 'duotrigintillion', '', 10, 'duotrigintillion, duotrigintillions', 1e99, 6, 0, 0, NULL, NULL, '', NULL),
(151, 'sextrigintillion', '', 10, 'sextrigintillion, sextrigintillions', 1e111, 6, 0, 0, NULL, NULL, '', NULL),
(152, 'septentrigintillion', '', 10, 'septentrigintillion, septentrigintillions', 1e114, 6, 0, 0, NULL, NULL, '', NULL),
(153, 'duoquadragintillion', '', 10, 'duoquadragintillion, duoquadragintillions', 1e129, 6, 0, 0, NULL, NULL, '', NULL),
(154, 'unquadragintillion', '', 10, 'unquadragintillion, unquadragintillions', 1e126, 6, 0, 0, NULL, NULL, '', NULL),
(155, 'octotrigintillion', '', 10, 'octotrigintillion, octotrigintillions', 1e117, 6, 0, 0, NULL, NULL, '', NULL),
(156, 'quadragintillion', '', 10, 'quadragintillion, quadragintillions', 1e123, 6, 0, 0, NULL, NULL, '', NULL),
(157, 'novemtrigintillion', '', 10, 'novemtrigintillion, novemtrigintillions', 1e120, 6, 0, 0, NULL, NULL, '', NULL),
(158, 'trequadragintillion', '', 10, 'trequadragintillion, trequadragintillions', 1e132, 6, 0, 0, NULL, NULL, '', NULL),
(159, 'quattuorquadragintillion', '', 10, 'quattuorquadragintillion, quattuorquadragintillions', 1e135, 6, 0, 0, NULL, NULL, '', NULL),
(160, 'quinquadragintillion', '', 10, 'quinquadragintillion, quinquadragintillions', 1e138, 6, 0, 0, NULL, NULL, '', NULL),
(161, 'septenquadragintillion', '', 10, 'septenquadragintillion, septenquadragintillions', 1e144, 6, 0, 0, NULL, NULL, '', NULL),
(162, 'octoquadragintillion', '', 10, 'octoquadragintillion, octoquadragintillions', 1e147, 6, 0, 0, NULL, NULL, '', NULL),
(163, 'sexquadragintillion', '', 10, 'sexquadragintillion, sexquadragintillions', 1e141, 6, 0, 0, NULL, NULL, '', NULL),
(164, 'novemquadragintillion', '', 10, 'novemquadragintillion, novemquadragintillions', 1e150, 6, 0, 0, NULL, NULL, '', NULL),
(165, 'quinquagintillion', '', 10, 'quinquagintillion, quinquagintillions', 1e153, 6, 0, 0, NULL, NULL, '', NULL),
(166, 'duoquinquagintillion', '', 10, 'duoquinquagintillion, duoquinquagintillions', 1e159, 6, 0, 0, NULL, NULL, '', NULL),
(167, 'trequinquagintillion', '', 10, 'trequinquagintillion, trequinquagintillions', 1e162, 6, 0, 0, NULL, NULL, '', NULL),
(168, 'unquinquagintillion', '', 10, 'unquinquagintillion, unquinquagintillions', 1e156, 6, 0, 0, NULL, NULL, '', NULL),
(169, 'quattuorquinquagintillion', '', 10, 'quattuorquinquagintillion, quattuorquinquagintillions', 1e165, 6, 0, 0, NULL, NULL, '', NULL),
(170, 'sexquinquagintillion', '', 10, 'sexquinquagintillion, sexquinquagintillions', 1e171, 6, 0, 0, NULL, NULL, '', NULL),
(171, 'quinquinquagintillion', '', 10, 'quinquinquagintillion, quinquinquagintillions', 1e168, 6, 0, 0, NULL, NULL, '', NULL),
(172, 'septenquinquagintillion', '', 10, 'septenquinquagintillion, septenquinquagintillions', 1e174, 6, 0, 0, NULL, NULL, '', NULL),
(173, 'novemquinquagintillion', '', 10, 'novemquinquagintillion, novemquinquagintillions', 1e180, 6, 0, 0, NULL, NULL, '', NULL),
(174, 'octoquinquagintillion', '', 10, 'octoquinquagintillion, octoquinquagintillions', 1e177, 6, 0, 0, NULL, NULL, '', NULL),
(175, 'sexagintillion', '', 10, 'sexagintillion, sexagintillions', 1e183, 6, 0, 0, NULL, NULL, '', NULL),
(176, 'unsexagintillion', '', 10, 'unsexagintillion, unsexagintillions', 1e186, 6, 0, 0, NULL, NULL, '', NULL),
(177, 'duosexagintillion', '', 10, 'duosexagintillion, duosexagintillions', 1e189, 6, 0, 0, NULL, NULL, '', NULL),
(178, 'tresexagintillion', '', 10, 'tresexagintillion, tresexagintillions', 1e192, 6, 0, 0, NULL, NULL, '', NULL),
(179, 'quattuorsexagintillion', '', 10, 'quattuorsexagintillion, quattuorsexagintillions', 1e195, 6, 0, 0, NULL, NULL, '', NULL),
(180, 'sexsexagintillion', '', 10, 'sexsexagintillion, sexsexagintillions', 1e201, 6, 0, 0, NULL, NULL, '', NULL),
(181, 'quinsexagintillion', '', 10, 'quinsexagintillion, quinsexagintillions', 1e198, 6, 0, 0, NULL, NULL, '', NULL),
(182, 'octosexagintillion', '', 10, 'octosexagintillion, octosexagintillions', 1e207, 6, 0, 0, NULL, NULL, '', NULL),
(183, 'septensexagintillion', '', 10, 'septensexagintillion, septensexagintillions', 1e204, 6, 0, 0, NULL, NULL, '', NULL),
(184, 'novemsexagintillion', '', 10, 'novemsexagintillion, novemsexagintillions', 1e210, 6, 0, 0, NULL, NULL, '', NULL),
(185, 'septuagintillion', '', 10, 'septuagintillion, septuagintillions', 1e213, 6, 0, 0, NULL, NULL, '', NULL),
(186, 'unseptuagintillion', '', 10, 'unseptuagintillion, unseptuagintillions', 1e216, 6, 0, 0, NULL, NULL, '', NULL),
(187, 'duoseptuagintillion', '', 10, 'duoseptuagintillion, duoseptuagintillions', 1e219, 6, 0, 0, NULL, NULL, '', NULL),
(188, 'quattuorseptuagintillion', '', 10, 'quattuorseptuagintillion, quattuorseptuagintillions', 1e225, 6, 0, 0, NULL, NULL, '', NULL),
(189, 'treseptuagintillion', '', 10, 'treseptuagintillion, treseptuagintillions', 1e222, 6, 0, 0, NULL, NULL, '', NULL),
(190, 'septenseptuagintillion', '', 10, 'septenseptuagintillion, septenseptuagintillions', 1e234, 6, 0, 0, NULL, NULL, '', NULL),
(191, 'quinseptuagintillion', '', 10, 'quinseptuagintillion, quinseptuagintillions', 1e228, 6, 0, 0, NULL, NULL, '', NULL),
(192, 'unoctogintillion', '', 10, 'unoctogintillion, unoctogintillions', 1e246, 6, 0, 0, NULL, NULL, '', NULL),
(193, 'octogintillion', '', 10, 'octogintillion, octogintillions', 1e243, 6, 0, 0, NULL, NULL, '', NULL),
(194, 'sexseptuagintillion', '', 10, 'sexseptuagintillion, sexseptuagintillions', 1e231, 6, 0, 0, NULL, NULL, '', NULL),
(195, 'novemseptuagintillion', '', 10, 'novemseptuagintillion, novemseptuagintillions', 1e240, 6, 0, 0, NULL, NULL, '', NULL),
(196, 'octoseptuagintillion', '', 10, 'octoseptuagintillion, octoseptuagintillions', 1e237, 6, 0, 0, NULL, NULL, '', NULL),
(197, 'treoctogintillion', '', 10, 'treoctogintillion, treoctogintillions', 1e252, 6, 0, 0, NULL, NULL, '', NULL),
(198, 'quattuoroctogintillion', '', 10, 'quattuoroctogintillion, quattuoroctogintillions', 1e255, 6, 0, 0, NULL, NULL, '', NULL),
(199, 'quinoctogintillion', '', 10, 'quinoctogintillion, quinoctogintillions', 1e258, 6, 0, 0, NULL, NULL, '', NULL),
(200, 'duooctogintillion', '', 10, 'duooctogintillion, duooctogintillions', 1e249, 6, 0, 0, NULL, NULL, '', NULL),
(201, 'novemoctogintillion', '', 10, 'novemoctogintillion, novemoctogintillions', 1e270, 6, 0, 0, NULL, NULL, '', NULL),
(202, 'septenoctogintillion', '', 10, 'septenoctogintillion, septenoctogintillions', 1e264, 6, 0, 0, NULL, NULL, '', NULL),
(203, 'octooctogintillion', '', 10, 'octooctogintillion, octooctogintillions', 1e267, 6, 0, 0, NULL, NULL, '', NULL),
(204, 'sexoctogintillion', '', 10, 'sexoctogintillion, sexoctogintillions', 1e261, 6, 0, 0, NULL, NULL, '', NULL),
(205, 'nonagintillion', '', 10, 'nonagintillion, nonagintillions', 1e273, 6, 0, 0, NULL, NULL, '', NULL),
(206, 'unnonagintillion', '', 10, 'unnonagintillion, unnonagintillions', 1e276, 6, 0, 0, NULL, NULL, '', NULL),
(207, 'duononagintillion', '', 10, 'duononagintillion, duononagintillions', 1e279, 6, 0, 0, NULL, NULL, '', NULL),
(208, 'quattuornonagintillion', '', 10, 'quattuornonagintillion, quattuornonagintillions', 1e285, 6, 0, 0, NULL, NULL, '', NULL),
(209, 'novemnonagintillion', '', 10, 'novemnonagintillion, novemnonagintillions', 1e300, 6, 0, 0, NULL, NULL, '', NULL),
(210, 'trenonagintillion', '', 10, 'trenonagintillion, trenonagintillions', 1e282, 6, 0, 0, NULL, NULL, '', NULL),
(211, 'octononagintillion', '', 10, 'octononagintillion, octononagintillions', 1e297, 6, 0, 0, NULL, NULL, '', NULL),
(212, 'sexnonagintillion', '', 10, 'sexnonagintillion, sexnonagintillions', 1e291, 6, 0, 0, NULL, NULL, '', NULL),
(213, 'centillion', '', 10, 'centillion, centillions', 1e303, 6, 0, 0, NULL, NULL, '', NULL),
(214, 'quinnonagintillion', '', 10, 'quinnonagintillion, quinnonagintillions', 1e288, 6, 0, 0, NULL, NULL, '', NULL),
(215, 'septennonagintillion', '', 10, 'septennonagintillion, septennonagintillions', 1e294, 6, 0, 0, NULL, NULL, '', NULL),
(216, 'picometre', 'pm', 4, 'pm, pms, picometre, picometres', 0.000000000001, 2, 0, 0, NULL, NULL, '', NULL),
(217, 'decimetre', 'dm', 4, 'dm, dms, decimetre, decimetres', 0.1, 2, 0, 0, NULL, NULL, '', NULL),
(218, 'micrometre', 'Âµm', 4, 'Âµm, Âµms, micrometre, micrometres', 0.000001, 2, 0, 0, NULL, NULL, '', NULL),
(219, 'millimetre', 'mm', 4, 'mm, mms, millimetre, millimetres', 0.001, 2, 0, 0, NULL, NULL, '', NULL),
(220, 'centimetre', 'cm', 4, 'cm, cms, centimetre, centimetres', 0.01, 2, 0, 0, NULL, NULL, '', NULL),
(221, 'nanometre', 'nm', 4, 'nm, nms, nanometre, nanometres', 0.000000001, 2, 0, 0, NULL, NULL, '', NULL),
(222, 'attometre', 'am', 4, 'am, ams, attometre, attometres', 1e-18, 2, 0, 0, NULL, NULL, '', NULL),
(223, 'zeptometre', 'zm', 4, 'zm, zms, zeptometre, zeptometres', 1e-21, 2, 0, 0, NULL, NULL, '', NULL),
(224, 'yoctometre', 'ym', 4, 'ym, yms, yoctometre, yoctometres', 1e-24, 2, 0, 0, NULL, NULL, '', NULL),
(225, 'femtometre', 'fm', 4, 'fm, fms, femtometre, femtometres', 0.000000000000001, 2, 0, 0, NULL, NULL, '', NULL),
(236, 'hectogram', 'hg', 2, 'hectogram, hectograms, hg, hgs', 100, 1, 0, 0, NULL, NULL, '', NULL),
(227, 'decametre', 'dam', 4, 'decametre, decametres, dam, dams', 10, 2, 0, 0, NULL, NULL, '', NULL),
(228, 'terametre', 'Tm', 4, 'terametre, terametres, Tm, Tms', 1000000000000, 2, 0, 0, NULL, NULL, '', NULL),
(229, 'petametre', 'Pm', 4, 'petametre, petametres, Pm, Pms', 1e15, 2, 0, 0, NULL, NULL, '', NULL),
(230, 'gigametre', 'Gm', 4, 'gigametre, gigametres, Gm, Gms', 1000000000, 2, 0, 0, NULL, NULL, '', NULL),
(231, 'megametre', 'Mm', 4, 'megametre, megametres, Mm, Mms', 1000000, 2, 0, 0, NULL, NULL, '', NULL),
(232, 'hectometre', 'hm', 4, 'hectometre, hectometres, hm, hms', 100, 2, 0, 0, NULL, NULL, '', NULL),
(233, 'yottametre', 'Ym', 4, 'yottametre, yottametres, Ym, Yms', 1e24, 2, 0, 0, NULL, NULL, '', NULL),
(234, 'exametre', 'Em', 4, 'exametre, exametres, Em, Ems', 1e18, 2, 0, 0, NULL, NULL, '', NULL),
(235, 'zettametre', 'Zm', 4, 'zettametre, zettametres, Zm, Zms', 1e21, 2, 0, 0, NULL, NULL, '', NULL),
(246, 'decagram', 'dag', 2, 'decagram, decagrams, dag, dags', 10, 1, 0, 0, NULL, NULL, '', NULL),
(247, 'kilogram', 'kg', 2, 'kilogram, kilograms, kg, kgs', 1000, 1, 0, 0, NULL, NULL, '', NULL),
(291, 'the length of a soccer field', '', 4, 'Football pitch', 105, 2, 0, 1, NULL, 'times', '', NULL),
(249, 'megagram (tonne)', 'Mg', 2, 'megagram (tonne), megagram (tonne)s, Mg, Mgs', 1000000, 1, 0, 0, NULL, NULL, '', NULL),
(250, 'gigagram', 'Gg', 2, 'gigagram, gigagrams, Gg, Ggs', 1000000000, 1, 0, 0, NULL, NULL, '', NULL),
(251, 'teragram', 'Tg', 2, 'teragram, teragrams, Tg, Tgs', 1000000000000, 1, 0, 0, NULL, NULL, '', NULL),
(252, 'petagram', 'Pg', 2, 'petagram, petagrams, Pg, Pgs', 1e15, 1, 0, 0, NULL, NULL, '', NULL),
(253, 'exagram', 'Eg', 2, 'exagram, exagrams, Eg, Egs', 1e18, 1, 0, 0, NULL, NULL, '', NULL),
(254, 'zettagram', 'Zg', 2, 'zettagram, zettagrams, Zg, Zgs', 1e21, 1, 0, 0, NULL, NULL, '', NULL),
(255, 'yottagram', 'Yg', 2, 'yottagram, yottagrams, Yg, Ygs', 1e24, 1, 0, 0, NULL, NULL, '', NULL),
(257, 'centigram', 'cg', 2, 'centigram, centigrams, cg, cgs', 0.01, 1, 0, 0, NULL, NULL, '', NULL),
(258, 'nanogram', 'ng', 2, 'nanogram, nanograms, ng, ngs', 0.000000001, 1, 0, 0, NULL, NULL, '', NULL),
(259, 'milligram', 'mg', 2, 'milligram, milligrams, mg, mgs', 0.001, 1, 0, 0, NULL, NULL, '', NULL),
(260, 'decigram', 'dg', 2, 'decigram, decigrams, dg, dgs', 0.1, 1, 0, 0, NULL, NULL, '', NULL),
(261, 'microgram', 'Âµg', 2, 'microgram, micrograms, Âµg, Âµgs', 0.000001, 1, 0, 0, NULL, NULL, '', NULL),
(262, 'femtogram', 'fg', 2, 'femtogram, femtograms, fg, fgs', 0.000000000000001, 1, 0, 0, NULL, NULL, '', NULL),
(263, 'attogram', 'ag', 2, 'attogram, attograms, ag, ags', 1e-18, 1, 0, 0, NULL, NULL, '', NULL),
(264, 'yoctogram', 'yg', 2, 'yoctogram, yoctograms, yg, ygs', 1e-24, 1, 0, 0, NULL, NULL, '', NULL),
(265, 'zeptogram', 'zg', 2, 'zeptogram, zeptograms, zg, zgs', 1e-21, 1, 0, 0, NULL, NULL, '', NULL),
(266, 'decisecond', 'ds', 6, 'decisecond, deciseconds, ds, dss', 0.1, 3, 0, 0, NULL, NULL, '', NULL),
(267, 'millisecond', 'ms', 6, 'millisecond, milliseconds, ms, mss', 0.001, 3, 0, 0, NULL, NULL, '', NULL),
(268, 'centisecond', 'cs', 6, 'centisecond, centiseconds, cs, css', 0.01, 3, 0, 0, NULL, NULL, '', NULL),
(269, 'microsecond', 'µs', 6, 'microsecond, microseconds, µs, µss', 0.000001, 3, 0, 0, NULL, NULL, '', NULL),
(270, 'nanosecond', 'ns', 6, 'nanosecond, nanoseconds, ns, nss', 0.000000001, 3, 0, 0, NULL, NULL, '', NULL),
(271, 'femtosecond', 'fs', 6, 'femtosecond, femtoseconds, fs, fss', 0.000000000000001, 3, 0, 0, NULL, NULL, '', NULL),
(272, 'attosecond', 'as', 6, 'attosecond, attoseconds, as, ass', 1e-18, 3, 0, 0, NULL, NULL, '', NULL),
(273, 'yoctosecond', 'ys', 6, 'yoctosecond, yoctoseconds, ys, yss', 1e-24, 3, 0, 0, NULL, NULL, '', NULL),
(274, 'zeptosecond', 'zs', 6, 'zeptosecond, zeptoseconds, zs, zss', 1e-21, 3, 0, 0, NULL, NULL, '', NULL),
(275, 'picosecond', 'ps', 6, 'picosecond, picoseconds, ps, pss', 0.000000000001, 3, 0, 0, NULL, NULL, '', NULL),
(276, 'hectosecond', 'hs', 6, 'hectosecond, hectoseconds, hs, hss', 100, 3, 0, 0, NULL, NULL, '', NULL),
(277, 'decasecond', 'das', 6, 'decasecond, decaseconds, das, dass', 10, 3, 0, 0, NULL, NULL, '', NULL),
(278, 'gigasecond', 'Gs', 6, 'gigasecond, gigaseconds, Gs, Gss', 1000000000, 3, 0, 0, NULL, NULL, '', NULL),
(279, 'megasecond', 'Ms', 6, 'megasecond, megaseconds, Ms, Mss', 1000000, 3, 0, 0, NULL, NULL, '', NULL),
(280, 'kilosecond', 'ks', 6, 'kilosecond, kiloseconds, ks, kss', 1000, 3, 1, 0, NULL, NULL, '', NULL),
(281, 'terasecond', 'Ts', 6, 'terasecond, teraseconds, Ts, Tss', 1000000000000, 3, 0, 0, NULL, NULL, '', NULL),
(282, 'petasecond', 'Ps', 6, 'petasecond, petaseconds, Ps, Pss', 1e15, 3, 0, 0, NULL, NULL, '', NULL),
(283, 'yottasecond', 'Ys', 6, 'yottasecond, yottaseconds, Ys, Yss', 1e24, 3, 0, 0, NULL, NULL, '', NULL),
(284, 'exasecond', 'Es', 6, 'exasecond, exaseconds, Es, Ess', 1e18, 3, 0, 0, NULL, NULL, '', NULL),
(285, 'zettasecond', 'Zs', 6, 'zettasecond, zettaseconds, Zs, Zss', 1e21, 3, 0, 0, NULL, NULL, '', NULL),
(288, 'week', '', 6, 'week, weeks', 604800, 3, 0, 0, NULL, NULL, '', NULL),
(289, 'year', '', 6, 'years, year', 31540000, 3, 0, 0, NULL, NULL, '', NULL),
(294, 'a blue whale (Balaenoptera musculus)', '', 4, '', 29.9, 2, 0, 1, NULL, 'times the length of', 'The blue whale (Balaenoptera musculus) is a marine mammal belonging to the baleen whales (Mysticeti). At up to 29.9 metres (98 ft) in length and with a maximum recorded weight of 173 tonnes (191 short tons) and probably reaching over 181 tonnes (200 short tons), it is the largest animal known to have ever existed.', NULL),
(374, 'the mass of HD 8673', '', 309, '', 14, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(297, 'the height of Bhurj Khalifa, the tallest building in the world', '', 4, '', 828, 2, 0, 1, NULL, 'times', '', NULL),
(301, 'the weight of an African Elephant, the heaviest land mammal.', '', 2, '', 11000000, 1, 0, 1, NULL, 'times', '', NULL),
(373, 'the mass of Upsilon Andromedae', '', 309, '', 13.98, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(302, 'the weight of a White Rhinoceros', '', 2, '', 2300000, 1, 0, 1, NULL, 'times', '', NULL),
(303, 'the weight of a Hippopotamus', '', 2, '', 1800000, 1, 0, 1, NULL, 'times', '', NULL),
(375, 'the mass of HD 13189', '', 309, '', 14, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(306, 'the mass of Neptune', '', 2, '', 1.0243e27, 1, 0, 1, NULL, 'times', 'planet (ice giant); has rings', NULL),
(307, 'the mass of Uranus', '', 2, '', 8.6832e26, 1, 0, 1, NULL, 'times', 'planet (ice giant); has rings', NULL),
(308, 'the mass of Earth', '', 2, '', 5.9736e25, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', 1),
(309, 'the mass of Jupiter', '', 2, '', 1.8986e28, 1, 0, 1, NULL, 'times', 'planet (gas giant); has rings', NULL),
(310, 'the mass of Saturn', '', 2, '', 5.6846e27, 1, 0, 1, NULL, 'times', 'planet (gas giant); has rings', NULL),
(311, 'the mass of Sun', '', 2, '', 1.98855e31, 1, 0, 1, NULL, 'times', 'star', NULL),
(312, 'the mass of Venus', '', 2, '', 4.8685e25, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(313, 'the mass of Ganymede', '', 2, '', 1.4819999999999998e24, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(314, 'the mass of Callisto', '', 2, '', 1.076e24, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(315, 'the mass of Mercury', '', 2, '', 3.302e24, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(316, 'the mass of Titan', '', 2, '', 1.345e24, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(317, 'the mass of Mars', '', 2, '', 6.4185e24, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(318, 'the mass of Io', '', 2, '', 8.929999999999999e23, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(319, 'the mass of Moon', '', 2, '', 7.35e23, 1, 0, 1, NULL, 'times', 'moon of Earth', NULL),
(320, 'the mass of Europa', '', 2, '', 4.8e23, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(321, 'the mass of Eris', '', 2, '', 1.67e23, 1, 0, 1, NULL, 'times', 'dwarf planet; SDO; binary', NULL),
(322, 'the mass of Titania', '', 2, '', 3.5259999999999997e22, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(323, 'the mass of Triton', '', 2, '', 2.15e23, 1, 0, 1, NULL, 'times', 'moon of Neptune', NULL),
(324, 'the mass of Pluto', '', 2, '', 1.3105000000000001e23, 1, 0, 1, NULL, 'times', 'dwarf planet; plutino; multiple', NULL),
(325, 'the mass of Rhea', '', 2, '', 2.3166e22, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(326, 'the mass of Oberon', '', 2, '', 3.0139999999999997e22, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(327, 'the mass of Haumea', '', 2, '', 4.006e22, 1, 0, 1, NULL, 'times', 'dwarf planet; resonant KBO (7:12); trinary', NULL),
(328, 'the mass of Umbriel', '', 2, '', 1.2e22, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(329, 'the mass of Ariel', '', 2, '', 1.35e22, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(330, 'the mass of Iapetus', '', 2, '', 1.9739e22, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(331, 'the mass of Charon', '', 2, '', 1.52e22, 1, 0, 1, NULL, 'times', 'moon of Pluto', NULL),
(332, 'the mass of Dione', '', 2, '', 1.096e22, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(333, 'the mass of Tethys', '', 2, '', 6.173e21, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(334, 'the mass of Salacia', '', 2, '', 4.5e21, 1, 0, 1, NULL, 'times', 'cubewano; binary', NULL),
(335, 'the mass of Quaoar', '', 2, '', 1.4e22, 1, 0, 1, NULL, 'times', 'cubewano; binary', NULL),
(336, 'the mass of Ceres', '', 2, '', 9.389999999999999e21, 1, 0, 1, NULL, 'times', 'dwarf planet; belt asteroid', NULL),
(337, 'the Radius of the Neptune', '', 5, '', 24622, 1, 0, 1, NULL, 'times', 'planet (ice giant); has rings', NULL),
(338, 'the Radius of the Saturn', '', 5, '', 58232, 1, 0, 1, NULL, 'times', 'planet (gas giant); has rings', NULL),
(339, 'the Radius of the Sun', '', 5, '', 696342, 1, 0, 1, NULL, 'times', 'star', NULL),
(340, 'the Radius of the Earth', '', 5, '', 6371, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(341, 'the Radius of the Jupiter', '', 5, '', 69911, 1, 0, 1, NULL, 'times', 'planet (gas giant); has rings', NULL),
(342, 'the Radius of the Uranus', '', 5, '', 25362, 1, 0, 1, NULL, 'times', 'planet (ice giant); has rings', NULL),
(343, 'the Radius of the Ganymede', '', 5, '', 2634.1, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(344, 'the Radius of the Mars', '', 5, '', 3389.5, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(345, 'the Radius of the Venus', '', 5, '', 6051.8, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(346, 'the Radius of the Callisto', '', 5, '', 2410.3, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(347, 'the Radius of the Mercury', '', 5, '', 2439.7, 1, 0, 1, NULL, 'times', 'planet (terrestrial)', NULL),
(348, 'the Radius of the Titan', '', 5, '', 2576, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(349, 'the Radius of the Europa', '', 5, '', 1560.8, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(350, 'the Radius of the Triton', '', 5, '', 1353.4, 1, 0, 1, NULL, 'times', 'moon of Neptune', NULL),
(351, 'the Radius of the Pluto', '', 5, '', 1186, 1, 0, 1, NULL, 'times', 'dwarf planet; plutino; multiple', NULL),
(352, 'the Radius of the Io', '', 5, '', 1821.6, 1, 0, 1, NULL, 'times', 'moon of Jupiter', NULL),
(353, 'the Radius of the Moon', '', 5, '', 1737.1, 1, 0, 1, NULL, 'times', 'moon of Earth', NULL),
(354, 'the Radius of the Eris', '', 5, '', 1163, 1, 0, 1, NULL, 'times', 'dwarf planet; SDO; binary', NULL),
(355, 'the Radius of the Titania', '', 5, '', 788.4, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(356, 'the Radius of the Oberon', '', 5, '', 761.4, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(357, 'the Radius of the 2007 OR10', '', 5, '', 767, 1, 0, 1, NULL, 'times', 'resonant KBO (3:10)', NULL),
(358, 'the Radius of the Iapetus', '', 5, '', 734.5, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(359, 'the Radius of the Rhea', '', 5, '', 763.8, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(360, 'the Radius of the Makemake', '', 5, '', 715, 1, 0, 1, NULL, 'times', 'dwarf planet; cubewano', NULL),
(361, 'the Radius of the Haumea', '', 5, '', 620, 1, 0, 1, NULL, 'times', 'dwarf planet; resonant KBO (7:12); trinary', NULL),
(362, 'the Radius of the Charon', '', 5, '', 606, 1, 0, 1, NULL, 'times', 'moon of Pluto', NULL),
(363, 'the Radius of the Sedna', '', 5, '', 500, 1, 0, 1, NULL, 'times', 'sednoid; detached object', NULL),
(364, 'the Radius of the Umbriel', '', 5, '', 584.7, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(365, 'the Radius of the Tethys', '', 5, '', 531.1, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(366, 'the Radius of the Ceres', '', 5, '', 473, 1, 0, 1, NULL, 'times', 'dwarf planet; belt asteroid', NULL),
(367, 'the Radius of the 2002 MS4', '', 5, '', 467, 1, 0, 1, NULL, 'times', 'cubewano[20]', NULL),
(368, 'the Radius of the Ariel', '', 5, '', 578.9, 1, 0, 1, NULL, 'times', 'moon of Uranus', NULL),
(369, 'the Radius of the Orcus', '', 5, '', 458, 1, 0, 1, NULL, 'times', 'plutino; binary', NULL),
(370, 'the Radius of the Quaoar', '', 5, '', 555, 1, 0, 1, NULL, 'times', 'cubewano; binary', NULL),
(371, 'the Radius of the Dione', '', 5, '', 561.4, 1, 0, 1, NULL, 'times', 'moon of Saturn', NULL),
(372, 'the Radius of the Salacia', '', 5, '', 425, 1, 0, 1, NULL, 'times', 'cubewano; binary', NULL),
(376, 'the mass of HD 18445', '', 309, '', 39, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(377, 'the mass of 54 Piscium', '', 309, '', 53, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(378, 'the mass of HD 16760', '', 309, '', 14.3, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(379, 'the mass of BD ˆ’04Â°782', '', 309, '', 21, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(380, 'the mass of HD 283750', '', 309, '', 50, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(381, 'the mass of HD 38529 A', '', 309, '', 37, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(382, 'the mass of HD 29587', '', 309, '', 40, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(383, 'the mass of HD 41004 B', '', 309, '', 18.4, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(384, 'the mass of Gliese 229', '', 309, '', 40, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(385, 'the mass of Tau Geminorum', '', 309, '', 18.1, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(386, 'the mass of AB Pictoris', '', 309, '', 13.5, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(387, 'the mass of G 196-3', '', 309, '', 25, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(388, 'the mass of BD+20 °2457', '', 309, '', 21.42, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(389, 'the mass of HD 89707', '', 309, '', 54, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(390, 'the mass of CT Chamaeleontis', '', 309, '', 17, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(391, 'the mass of ChaH ±8', '', 309, '', 18, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(392, 'the mass of HAT-P-13', '', 309, '', 15.2, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(393, 'the mass of Xi Ursae Majoris B', '', 309, '', 37, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(394, 'the mass of CD ˆ’33Â°7795', '', 309, '', 20, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(395, 'the mass of NGC 4349-127', '', 309, '', 19.8, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(396, 'the mass of HW Virginis', '', 309, '', 19.23, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(397, 'the mass of HD 110833', '', 309, '', 17, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(398, 'the mass of HD 112758', '', 309, '', 35, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(399, 'the mass of Gliese 570', '', 309, '', 52, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(400, 'the mass of Gliese 569', '', 309, '', 116, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(401, 'the mass of HD 131664', '', 309, '', 18.15, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(402, 'the mass of HD 140913', '', 309, '', 46, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(403, 'the mass of GQ Lupi', '', 309, '', 1, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(404, 'the mass of HD 149382', '', 309, '', 15.5, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(405, 'the mass of UScoCTIO 108', '', 309, '', 14, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(406, 'the mass of HD 136118', '', 309, '', 42, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(407, 'the mass of HD 162020', '', 309, '', 15, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(408, 'the mass of SCR 1845-6357', '', 309, '', 40, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(409, 'the mass of Nu Ophiuchi', '', 309, '', 21.9, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(410, 'the mass of COROT-3', '', 309, '', 21.66, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(411, 'the mass of HD 168443', '', 309, '', 34, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(412, 'the mass of 15 Sagittae', '', 309, '', 65, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(413, 'the mass of HD 164427', '', 309, '', 46, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(414, 'the mass of Zeta Delphini', '', 309, '', 55, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(415, 'the mass of HD 202206', '', 309, '', 17.4, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(416, 'the mass of Epsilon Indi', '', 309, '', 28, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(417, 'the mass of Epsilon Indi', '', 309, '', 47, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL),
(418, 'the mass of HD 217580', '', 309, '', 60, 1, 0, 1, NULL, 'times', 'a brown dwarf. Substellar Objects not massive enough for nuclear fusion. Mass ranges between the heaviest gas giants and the lightest stars.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quantity_aliase`
--

CREATE TABLE `quantity_aliase` (
  `id` int(11) NOT NULL,
  `quantity_id` int(11) NOT NULL,
  `aliase_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quantity_aliase`
--

INSERT INTO `quantity_aliase` (`id`, `quantity_id`, `aliase_id`) VALUES
(1, 2, 2),
(2, 256, 3),
(3, 256, 4),
(4, 256, 5),
(5, 256, 6),
(6, 4, 7),
(7, 4, 8),
(8, 4, 9),
(9, 4, 10),
(10, 4, 11),
(11, 5, 12),
(12, 5, 13),
(13, 5, 14),
(14, 5, 15),
(15, 7, 16),
(16, 7, 17),
(17, 7, 18),
(18, 7, 19),
(19, 6, 20),
(20, 6, 21),
(21, 8, 22),
(22, 8, 23),
(23, 9, 24),
(24, 9, 25),
(25, 10, 26),
(26, 10, 27),
(27, 116, 28),
(28, 116, 29),
(29, 117, 30),
(30, 117, 31),
(31, 118, 32),
(32, 118, 33),
(33, 119, 34),
(34, 119, 35),
(35, 120, 36),
(36, 120, 37),
(37, 121, 38),
(38, 121, 39),
(39, 122, 40),
(40, 122, 41),
(41, 123, 42),
(42, 123, 43),
(43, 124, 44),
(44, 124, 45),
(45, 125, 46),
(46, 125, 47),
(47, 126, 48),
(48, 126, 49),
(49, 127, 50),
(50, 127, 51),
(51, 128, 52),
(52, 128, 53),
(53, 129, 54),
(54, 129, 55),
(55, 130, 56),
(56, 130, 57),
(57, 131, 58),
(58, 131, 59),
(59, 132, 60),
(60, 132, 61),
(61, 133, 62),
(62, 133, 63),
(63, 134, 64),
(64, 134, 65),
(65, 135, 66),
(66, 135, 67),
(67, 136, 68),
(68, 136, 69),
(69, 137, 70),
(70, 137, 71),
(71, 138, 72),
(72, 138, 73),
(73, 139, 74),
(74, 139, 75),
(75, 140, 76),
(76, 140, 77),
(77, 141, 78),
(78, 141, 79),
(79, 142, 80),
(80, 142, 81),
(81, 143, 82),
(82, 143, 83),
(83, 144, 84),
(84, 144, 85),
(85, 145, 86),
(86, 145, 87),
(87, 146, 88),
(88, 146, 89),
(89, 147, 90),
(90, 147, 91),
(91, 148, 92),
(92, 148, 93),
(93, 149, 94),
(94, 149, 95),
(95, 150, 96),
(96, 150, 97),
(97, 151, 98),
(98, 151, 99),
(99, 152, 100),
(100, 152, 101),
(101, 153, 102),
(102, 153, 103),
(103, 154, 104),
(104, 154, 105),
(105, 155, 106),
(106, 155, 107),
(107, 156, 108),
(108, 156, 109),
(109, 157, 110),
(110, 157, 111),
(111, 158, 112),
(112, 158, 113),
(113, 159, 114),
(114, 159, 115),
(115, 160, 116),
(116, 160, 117),
(117, 161, 118),
(118, 161, 119),
(119, 162, 120),
(120, 162, 121),
(121, 163, 122),
(122, 163, 123),
(123, 164, 124),
(124, 164, 125),
(125, 165, 126),
(126, 165, 127),
(127, 166, 128),
(128, 166, 129),
(129, 167, 130),
(130, 167, 131),
(131, 168, 132),
(132, 168, 133),
(133, 169, 134),
(134, 169, 135),
(135, 170, 136),
(136, 170, 137),
(137, 171, 138),
(138, 171, 139),
(139, 172, 140),
(140, 172, 141),
(141, 173, 142),
(142, 173, 143),
(143, 174, 144),
(144, 174, 145),
(145, 175, 146),
(146, 175, 147),
(147, 176, 148),
(148, 176, 149),
(149, 177, 150),
(150, 177, 151),
(151, 178, 152),
(152, 178, 153),
(153, 179, 154),
(154, 179, 155),
(155, 180, 156),
(156, 180, 157),
(157, 181, 158),
(158, 181, 159),
(159, 182, 160),
(160, 182, 161),
(161, 183, 162),
(162, 183, 163),
(163, 184, 164),
(164, 184, 165),
(165, 185, 166),
(166, 185, 167),
(167, 186, 168),
(168, 186, 169),
(169, 187, 170),
(170, 187, 171),
(171, 188, 172),
(172, 188, 173),
(173, 189, 174),
(174, 189, 175),
(175, 190, 176),
(176, 190, 177),
(177, 191, 178),
(178, 191, 179),
(179, 192, 180),
(180, 192, 181),
(181, 193, 182),
(182, 193, 183),
(183, 194, 184),
(184, 194, 185),
(185, 195, 186),
(186, 195, 187),
(187, 196, 188),
(188, 196, 189),
(189, 197, 190),
(190, 197, 191),
(191, 198, 192),
(192, 198, 193),
(193, 199, 194),
(194, 199, 195),
(195, 200, 196),
(196, 200, 197),
(197, 201, 198),
(198, 201, 199),
(199, 202, 200),
(200, 202, 201),
(201, 203, 202),
(202, 203, 203),
(203, 204, 204),
(204, 204, 205),
(205, 205, 206),
(206, 205, 207),
(207, 206, 208),
(208, 206, 209),
(209, 207, 210),
(210, 207, 211),
(211, 208, 212),
(212, 208, 213),
(213, 209, 214),
(214, 209, 215),
(215, 210, 216),
(216, 210, 217),
(217, 211, 218),
(218, 211, 219),
(219, 212, 220),
(220, 212, 221),
(221, 213, 222),
(222, 213, 223),
(223, 214, 224),
(224, 214, 225),
(225, 215, 226),
(226, 215, 227),
(227, 216, 228),
(228, 216, 229),
(229, 216, 230),
(230, 216, 231),
(231, 217, 232),
(232, 217, 233),
(233, 217, 234),
(234, 217, 235),
(235, 218, 236),
(236, 218, 237),
(237, 218, 238),
(238, 218, 239),
(239, 219, 240),
(240, 219, 241),
(241, 219, 242),
(242, 219, 243),
(243, 220, 244),
(244, 220, 245),
(245, 220, 246),
(246, 220, 247),
(247, 221, 248),
(248, 221, 249),
(249, 221, 250),
(250, 221, 251),
(251, 222, 252),
(252, 222, 253),
(253, 222, 254),
(254, 222, 255),
(255, 223, 256),
(256, 223, 257),
(257, 223, 258),
(258, 223, 259),
(259, 224, 260),
(260, 224, 261),
(261, 224, 262),
(262, 224, 263),
(263, 225, 264),
(264, 225, 265),
(265, 225, 266),
(266, 225, 267),
(267, 236, 268),
(268, 236, 269),
(269, 236, 270),
(270, 236, 271),
(271, 227, 272),
(272, 227, 273),
(273, 227, 274),
(274, 227, 275),
(275, 228, 276),
(276, 228, 277),
(277, 228, 278),
(278, 228, 279),
(279, 229, 280),
(280, 229, 281),
(281, 230, 282),
(282, 230, 283),
(283, 230, 284),
(284, 231, 285),
(285, 231, 286),
(286, 232, 287),
(287, 232, 288),
(288, 232, 289),
(289, 232, 290),
(290, 233, 291),
(291, 233, 292),
(292, 234, 293),
(293, 234, 294),
(294, 234, 295),
(295, 234, 296),
(296, 235, 297),
(297, 235, 298),
(298, 246, 299),
(299, 246, 300),
(300, 246, 301),
(301, 246, 302),
(302, 247, 303),
(303, 247, 304),
(304, 247, 305),
(305, 247, 306),
(306, 249, 307),
(307, 249, 308),
(308, 249, 309),
(309, 249, 310),
(310, 249, 311),
(311, 249, 312),
(312, 249, 313),
(313, 250, 314),
(314, 250, 315),
(315, 250, 316),
(316, 250, 317),
(317, 251, 318),
(318, 251, 319),
(319, 251, 320),
(320, 251, 321),
(321, 252, 322),
(322, 252, 323),
(323, 253, 324),
(324, 253, 325),
(325, 253, 326),
(326, 253, 327),
(327, 254, 328),
(328, 254, 329),
(329, 254, 330),
(330, 254, 331),
(331, 255, 332),
(332, 255, 333),
(333, 255, 334),
(334, 255, 335),
(335, 257, 336),
(336, 257, 337),
(337, 257, 338),
(338, 257, 339),
(339, 258, 340),
(340, 258, 341),
(341, 258, 342),
(342, 258, 343),
(343, 259, 344),
(344, 259, 345),
(345, 260, 346),
(346, 260, 347),
(347, 260, 348),
(348, 260, 349),
(349, 261, 350),
(350, 261, 351),
(351, 261, 352),
(352, 261, 353),
(353, 262, 354),
(354, 262, 355),
(355, 262, 356),
(356, 262, 357),
(357, 263, 358),
(358, 263, 359),
(359, 263, 360),
(360, 263, 361),
(361, 264, 362),
(362, 264, 363),
(363, 265, 364),
(364, 265, 365),
(365, 266, 366),
(366, 266, 367),
(367, 266, 368),
(368, 266, 369),
(369, 267, 370),
(370, 267, 371),
(371, 267, 372),
(372, 267, 373),
(373, 268, 374),
(374, 268, 375),
(375, 268, 376),
(376, 268, 377),
(377, 269, 378),
(378, 269, 379),
(379, 269, 380),
(380, 269, 381),
(381, 270, 382),
(382, 270, 383),
(383, 270, 384),
(384, 270, 385),
(385, 271, 386),
(386, 271, 387),
(387, 271, 388),
(388, 271, 389),
(389, 272, 390),
(390, 272, 391),
(391, 272, 392),
(392, 272, 393),
(393, 273, 394),
(394, 273, 395),
(395, 273, 396),
(396, 273, 397),
(397, 274, 398),
(398, 274, 399),
(399, 274, 400),
(400, 274, 401),
(401, 275, 402),
(402, 275, 403),
(403, 275, 404),
(404, 275, 405),
(405, 276, 406),
(406, 276, 407),
(407, 276, 408),
(408, 276, 409),
(409, 277, 410),
(410, 277, 411),
(411, 277, 412),
(412, 277, 413),
(413, 278, 414),
(414, 278, 415),
(415, 278, 416),
(416, 278, 417),
(417, 279, 418),
(418, 279, 419),
(419, 280, 420),
(420, 280, 421),
(421, 280, 422),
(422, 280, 423),
(423, 281, 424),
(424, 281, 425),
(425, 281, 426),
(426, 281, 427),
(427, 282, 428),
(428, 282, 429),
(429, 283, 430),
(430, 283, 431),
(431, 284, 432),
(432, 284, 433),
(433, 284, 434),
(434, 284, 435),
(435, 285, 436),
(436, 285, 437),
(437, 288, 438),
(438, 288, 439),
(439, 289, 440),
(440, 289, 441),
(441, 2, 442);

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `querytext` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`id`, `querytext`, `created`, `comments`) VALUES
(1, 'as', '2017-04-18 13:01:46', '::1'),
(2, 'a', '2017-04-18 13:01:46', '::1'),
(3, 'asd', '2017-04-18 13:01:46', '::1'),
(4, 'k', '2017-04-18 13:02:08', '::1'),
(5, 'ka', '2017-04-18 13:02:08', '::1'),
(6, 'kar', '2017-04-18 13:02:08', '::1'),
(7, 'kart', '2017-04-18 13:02:08', '::1'),
(8, 'karth', '2017-04-18 13:02:08', '::1'),
(9, 'karthi', '2017-04-18 13:02:08', '::1'),
(10, 'karthik', '2017-04-18 13:02:09', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `submission`
--

CREATE TABLE `submission` (
  `id` int(11) NOT NULL,
  `sub_link_id` varchar(20) NOT NULL,
  `title` text NOT NULL,
  `subreddit_id` int(11) NOT NULL,
  `score` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`id`, `sub_link_id`, `title`, `subreddit_id`, `score`) VALUES
(1, '79sapp', 'TIL during a coup attempt in 1972, four Moroccan pilots intercepted a Boeing 727 carrying the Moroccan King and fired on it. The King (himself a pilot), grabbed the radio and told the rebel pilots, "Stop firing! The tyrant is dead!" Fooled, the rebels broke off their attack and the coup failed.', 2, '12415'),
(2, '79po8z', 'What moment in history that\'s hard to believe it actually happened?', 1, '14215'),
(3, '79nzw3', 'Dutch cities that opened legal prostitution zones saw reductions in sexual abuse and rape by about 30-40 percent in the first two years', 3, '49742'),
(4, '79q1wj', 'What\'s the point of retroviruses having a reverse transcriptase to turn RNA into DNA instead of simply having DNA?', 4, '1938'),
(5, '79qzy1', 'TIL that 1/7 has a pretty cool pattern in decimal form, and in attempting to confirm the pattern I worked out its infinite sum.', 6, '698'),
(6, '79nztm', 'Every.damn.time', 5, '1789'),
(7, '79q453', 'IBM Simulates a 56-Qubit Machine', 7, '370'),
(8, '79qd4b', 'Is it "free" to run electronics indoors during the winter?', 10, '84'),
(9, '79tbxn', 'World of Warcraft drop rate?', 9, '8'),
(10, '79tbal', 'Hey guys, I’m currently a 3rd year EE student and after 2 years I’m finally in all EE classes. I was just curious and wanted to ask people in industry, what classes do you guys use the most in your job and what classes should I pay attention the most to?', 13, '7'),
(11, '79t4m8', 'I need help understanding a section in Stephen Hawking\'s lecture about Time Travel.', 11, '7'),
(12, '79mztp', 'Record surge in atmospheric CO2 in 2016', 8, '137'),
(13, '79swp9', '[College Logic Proofs] We started a new unit but I cannot find the textbook', 14, '5'),
(14, '79tao4', '[Probability] Let r be a real number. Let [r] denote the ceiling of r (if r is an integer, then [r] = r, and if r is not an integer and [r] is the smallest integer greater than r). Suppose X has exponential distribution with parameter lambda. Let Y = [X]. Find the distribution of Y.', 16, '5'),
(15, '79ur4a', 'Marginal Utility Qn', 15, '1'),
(16, '79ul1f', 'Torque on loop of wire due to rotating magnetic field', 12, '1'),
(17, '79ulyj', 'Why we might be more likely to see a monopolist than a competitive market when marginal costs fall with increasing quantity?', 15, '1'),
(18, '79u2y5', '(Discrete Math) - Some exam questions', 16, '2'),
(19, '79trr8', 'What factors contribute to products becoming cheaper? -- especially expensive products with low adoption', 15, '2'),
(20, '79use9', 'two quick real analysis questions', 16, '1'),
(21, '79ubfx', 'General relativity question', 12, '0'),
(22, '79t8qm', '[Stochastics/Probability] Given this joint pdf with two variables, how am I to find the expected values of both variables?', 16, '3'),
(23, '79qji2', 'Lithium-Ion Battery Supply Chain Considerations: Analysis of Potential Bottlenecks in Critical Metals', 8, '15'),
(24, '79rnck', '[Calculus] the position of a particle is given by the function sinx - xcosx. Find all times when the particle is at rest.', 16, '7'),
(25, '79ujrs', '[Linear Algebra] Is a matrix with an all zero row onto?', 16, '1'),
(26, '79uixe', 'Suppose a>0 and x and y are rational. Prove a^x<a^y for x<y.', 16, '1'),
(27, '79tvio', 'How to be comfortable with reading and understanding algorithms and formulas?', 9, '5'),
(28, '79t007', 'Why does this equation not work for determining magnetic field from an electron revolving around a proton?', 12, '2'),
(29, '79t9ys', 'Beautiful poetry right here', 5, '84'),
(30, '79ug0w', '[Calculus 1] Finding Critical Point', 14, '1'),
(31, '79s8gv', 'What is Say\'s Law? Since Keynes, does anyone still take it seriously?', 15, '3');

-- --------------------------------------------------------

--
-- Table structure for table `subreddit`
--

CREATE TABLE `subreddit` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subreddit`
--

INSERT INTO `subreddit` (`id`, `name`) VALUES
(1, 'AskReddit'),
(2, 'todayilearned'),
(3, 'science'),
(4, 'askscience'),
(5, 'EngineeringStudents'),
(6, 'math'),
(7, 'Physics'),
(8, 'energy'),
(9, 'learnmath'),
(10, 'AskEngineers'),
(11, 'AskScienceDiscussion'),
(12, 'AskPhysics'),
(13, 'ElectricalEngineering'),
(14, 'HomeworkHelp'),
(15, 'AskEconomics'),
(16, 'cheatatmathhomework');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thing`
--

CREATE TABLE `thing` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `hasquantity` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thing`
--

INSERT INTO `thing` (`id`, `name`, `description`, `hasquantity`) VALUES
(1, 'earth', '', ''),
(2, 'moon', '', ''),
(3, 'mars', '', ''),
(4, 'jupiter', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `username_or_email_on_hold`
--

CREATE TABLE `username_or_email_on_hold` (
  `ai` int(10) UNSIGNED NOT NULL,
  `username_or_email` varchar(255) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(12) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `auth_level` tinyint(3) UNSIGNED NOT NULL,
  `banned` enum('0','1') NOT NULL DEFAULT '0',
  `passwd` varchar(60) NOT NULL,
  `passwd_recovery_code` varchar(60) DEFAULT NULL,
  `passwd_recovery_date` datetime DEFAULT NULL,
  `passwd_modified_at` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `auth_level`, `banned`, `passwd`, `passwd_recovery_code`, `passwd_recovery_date`, `passwd_modified_at`, `last_login`, `created_at`, `modified_at`) VALUES
(2147484848, 'karthik', 'karthikwasudevan@gmail.com', 9, '0', '$2y$11$zBdUwGsyl1XQ3qNMdRx2wOmKky84S6kG/qFFDcbKaSuJQ7ir8erXi', NULL, NULL, NULL, '2017-08-14 19:14:37', '2017-05-17 00:55:01', '2017-08-14 19:14:37');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `ca_passwd_trigger` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    IF ((NEW.passwd <=> OLD.passwd) = 0) THEN
        SET NEW.passwd_modified_at = NOW();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `wordstr` varchar(30) CHARACTER SET utf8 NOT NULL,
  `wordtype_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `word`
--

INSERT INTO `word` (`id`, `wordstr`, `wordtype_id`) VALUES
(1, 'the', NULL),
(2, 'of', NULL),
(3, 'and', NULL),
(4, 'to', NULL),
(5, 'a', NULL),
(6, 'in', NULL),
(7, 'for', NULL),
(8, 'is', NULL),
(9, 'on', NULL),
(10, 'that', NULL),
(11, 'by', NULL),
(12, 'this', NULL),
(13, 'with', NULL),
(14, 'i', NULL),
(15, 'you', NULL),
(16, 'it', NULL),
(17, 'not', NULL),
(18, 'or', NULL),
(19, 'be', NULL),
(20, 'are', NULL),
(21, 'from', NULL),
(22, 'at', NULL),
(23, 'as', NULL),
(24, 'your', NULL),
(25, 'all', NULL),
(26, 'have', NULL),
(27, 'new', NULL),
(28, 'more', NULL),
(29, 'an', NULL),
(30, 'was', NULL),
(31, 'we', NULL),
(32, 'will', NULL),
(33, 'home', NULL),
(34, 'can', NULL),
(35, 'us', NULL),
(36, 'about', NULL),
(37, 'if', NULL),
(38, 'page', NULL),
(39, 'my', NULL),
(40, 'has', NULL),
(41, 'search', NULL),
(42, 'free', NULL),
(43, 'but', NULL),
(44, 'our', NULL),
(45, 'one', NULL),
(46, 'other', NULL),
(47, 'do', NULL),
(48, 'no', NULL),
(49, 'information', NULL),
(50, 'time', NULL),
(51, 'they', NULL),
(52, 'site', NULL),
(53, 'he', NULL),
(54, 'up', NULL),
(55, 'may', NULL),
(56, 'what', NULL),
(57, 'which', NULL),
(58, 'their', NULL),
(59, 'news', NULL),
(60, 'out', NULL),
(61, 'use', NULL),
(62, 'any', NULL),
(63, 'there', NULL),
(64, 'see', NULL),
(65, 'only', NULL),
(66, 'so', NULL),
(67, 'his', NULL),
(68, 'when', NULL),
(69, 'contact', NULL),
(70, 'here', NULL),
(71, 'business', NULL),
(72, 'who', NULL),
(73, 'web', NULL),
(74, 'also', NULL),
(75, 'now', NULL),
(76, 'help', NULL),
(77, 'get', NULL),
(78, 'pm', NULL),
(79, 'view', NULL),
(80, 'online', NULL),
(81, 'c', NULL),
(82, 'e', NULL),
(83, 'first', NULL),
(84, 'am', NULL),
(85, 'been', NULL),
(86, 'would', NULL),
(87, 'how', NULL),
(88, 'were', NULL),
(89, 'me', NULL),
(90, 's', NULL),
(91, 'services', NULL),
(92, 'some', NULL),
(93, 'these', NULL),
(94, 'click', NULL),
(95, 'its', NULL),
(96, 'like', NULL),
(97, 'service', NULL),
(98, 'x', NULL),
(99, 'than', NULL),
(100, 'find', NULL),
(101, 'price', NULL),
(102, 'date', NULL),
(103, 'back', NULL),
(104, 'top', NULL),
(105, 'people', NULL),
(106, 'had', NULL),
(107, 'list', NULL),
(108, 'name', NULL),
(109, 'just', NULL),
(110, 'over', NULL),
(111, 'state', NULL),
(112, 'year', NULL),
(113, 'day', NULL),
(114, 'into', NULL),
(115, 'email', NULL),
(116, 'two', NULL),
(117, 'health', NULL),
(118, 'n', NULL),
(119, 'world', NULL),
(120, 're', NULL),
(121, 'next', NULL),
(122, 'used', NULL),
(123, 'go', NULL),
(124, 'b', NULL),
(125, 'work', NULL),
(126, 'last', NULL),
(127, 'most', NULL),
(128, 'products', NULL),
(129, 'music', NULL),
(130, 'buy', NULL),
(131, 'data', NULL),
(132, 'make', NULL),
(133, 'them', NULL),
(134, 'should', NULL),
(135, 'product', NULL),
(136, 'system', NULL),
(137, 'post', NULL),
(138, 'her', NULL),
(139, 'city', NULL),
(140, 't', NULL),
(141, 'add', NULL),
(142, 'policy', NULL),
(143, 'number', NULL),
(144, 'such', NULL),
(145, 'please', NULL),
(146, 'available', NULL),
(147, 'copyright', NULL),
(148, 'support', NULL),
(149, 'message', NULL),
(150, 'after', NULL),
(151, 'best', NULL),
(152, 'software', NULL),
(153, 'then', NULL),
(154, 'jan', NULL),
(155, 'good', NULL),
(156, 'video', NULL),
(157, 'well', NULL),
(158, 'd', NULL),
(159, 'where', NULL),
(160, 'info', NULL),
(161, 'rights', NULL),
(162, 'public', NULL),
(163, 'books', NULL),
(164, 'high', NULL),
(165, 'school', NULL),
(166, 'through', NULL),
(167, 'm', NULL),
(168, 'each', NULL),
(169, 'links', NULL),
(170, 'she', NULL),
(171, 'review', NULL),
(172, 'years', NULL),
(173, 'order', NULL),
(174, 'very', NULL),
(175, 'privacy', NULL),
(176, 'book', NULL),
(177, 'items', NULL),
(178, 'company', NULL),
(179, 'r', NULL),
(180, 'read', NULL),
(181, 'group', NULL),
(182, 'sex', NULL),
(183, 'need', NULL),
(184, 'many', NULL),
(185, 'user', NULL),
(186, 'said', NULL),
(187, 'de', NULL),
(188, 'does', NULL),
(189, 'set', NULL),
(190, 'under', NULL),
(191, 'general', NULL),
(192, 'research', NULL),
(193, 'university', NULL),
(194, 'january', NULL),
(195, 'mail', NULL),
(196, 'full', NULL),
(197, 'map', NULL),
(198, 'reviews', NULL),
(199, 'program', NULL),
(200, 'life', NULL),
(201, 'know', NULL),
(202, 'games', NULL),
(203, 'way', NULL),
(204, 'days', NULL),
(205, 'management', NULL),
(206, 'p', NULL),
(207, 'part', NULL),
(208, 'could', NULL),
(209, 'great', NULL),
(210, 'united', NULL),
(211, 'hotel', NULL),
(212, 'real', NULL),
(213, 'f', NULL),
(214, 'item', NULL),
(215, 'international', NULL),
(216, 'center', NULL),
(217, 'ebay', NULL),
(218, 'must', NULL),
(219, 'store', NULL),
(220, 'travel', NULL),
(221, 'comments', NULL),
(222, 'made', NULL),
(223, 'development', NULL),
(224, 'report', NULL),
(225, 'off', NULL),
(226, 'member', NULL),
(227, 'details', NULL),
(228, 'line', NULL),
(229, 'terms', NULL),
(230, 'before', NULL),
(231, 'hotels', NULL),
(232, 'did', NULL),
(233, 'send', NULL),
(234, 'right', NULL),
(235, 'type', NULL),
(236, 'because', NULL),
(237, 'local', NULL),
(238, 'those', NULL),
(239, 'using', NULL),
(240, 'results', NULL),
(241, 'office', NULL),
(242, 'education', NULL),
(243, 'national', NULL),
(244, 'car', NULL),
(245, 'design', NULL),
(246, 'take', NULL),
(247, 'posted', NULL),
(248, 'internet', NULL),
(249, 'address', NULL),
(250, 'community', NULL),
(251, 'within', NULL),
(252, 'states', NULL),
(253, 'area', NULL),
(254, 'want', NULL),
(255, 'phone', NULL),
(256, 'dvd', NULL),
(257, 'shipping', NULL),
(258, 'reserved', NULL),
(259, 'subject', NULL),
(260, 'between', NULL),
(261, 'forum', NULL),
(262, 'family', NULL),
(263, 'l', NULL),
(264, 'long', NULL),
(265, 'based', NULL),
(266, 'w', NULL),
(267, 'code', NULL),
(268, 'show', NULL),
(269, 'o', NULL),
(270, 'even', NULL),
(271, 'black', NULL),
(272, 'check', NULL),
(273, 'special', NULL),
(274, 'prices', NULL),
(275, 'website', NULL),
(276, 'index', NULL),
(277, 'being', NULL),
(278, 'women', NULL),
(279, 'much', NULL),
(280, 'sign', NULL),
(281, 'file', NULL),
(282, 'link', NULL),
(283, 'open', NULL),
(284, 'today', NULL),
(285, 'technology', NULL),
(286, 'south', NULL),
(287, 'case', NULL),
(288, 'project', NULL),
(289, 'same', NULL),
(290, 'pages', NULL),
(291, 'uk', NULL),
(292, 'version', NULL),
(293, 'section', NULL),
(294, 'own', NULL),
(295, 'found', NULL),
(296, 'sports', NULL),
(297, 'house', NULL),
(298, 'related', NULL),
(299, 'security', NULL),
(300, 'both', NULL),
(301, 'g', NULL),
(302, 'county', NULL),
(303, 'american', NULL),
(304, 'photo', NULL),
(305, 'game', NULL),
(306, 'members', NULL),
(307, 'power', NULL),
(308, 'while', NULL),
(309, 'care', NULL),
(310, 'network', NULL),
(311, 'down', NULL),
(312, 'computer', NULL),
(313, 'systems', NULL),
(314, 'three', NULL),
(315, 'total', NULL),
(316, 'place', NULL),
(317, 'end', NULL),
(318, 'following', NULL),
(319, 'download', NULL),
(320, 'h', NULL),
(321, 'him', NULL),
(322, 'without', NULL),
(323, 'per', NULL),
(324, 'access', NULL),
(325, 'think', NULL),
(326, 'north', NULL),
(327, 'resources', NULL),
(328, 'current', NULL),
(329, 'posts', NULL),
(330, 'big', NULL),
(331, 'media', NULL),
(332, 'law', NULL),
(333, 'control', NULL),
(334, 'water', NULL),
(335, 'history', NULL),
(336, 'pictures', NULL),
(337, 'size', NULL),
(338, 'art', NULL),
(339, 'personal', NULL),
(340, 'since', NULL),
(341, 'including', NULL),
(342, 'guide', NULL),
(343, 'shop', NULL),
(344, 'directory', NULL),
(345, 'board', NULL),
(346, 'location', NULL),
(347, 'change', NULL),
(348, 'white', NULL),
(349, 'text', NULL),
(350, 'small', NULL),
(351, 'rating', NULL),
(352, 'rate', NULL),
(353, 'government', NULL),
(354, 'children', NULL),
(355, 'during', NULL),
(356, 'usa', NULL),
(357, 'return', NULL),
(358, 'students', NULL),
(359, 'v', NULL),
(360, 'shopping', NULL),
(361, 'account', NULL),
(362, 'times', NULL),
(363, 'sites', NULL),
(364, 'level', NULL),
(365, 'digital', NULL),
(366, 'profile', NULL),
(367, 'previous', NULL),
(368, 'form', NULL),
(369, 'events', NULL),
(370, 'love', NULL),
(371, 'old', NULL),
(372, 'john', NULL),
(373, 'main', NULL),
(374, 'call', NULL),
(375, 'hours', NULL),
(376, 'image', NULL),
(377, 'department', NULL),
(378, 'title', NULL),
(379, 'description', NULL),
(380, 'non', NULL),
(381, 'k', NULL),
(382, 'y', NULL),
(383, 'insurance', NULL),
(384, 'another', NULL),
(385, 'why', NULL),
(386, 'shall', NULL),
(387, 'property', NULL),
(388, 'class', NULL),
(389, 'cd', NULL),
(390, 'still', NULL),
(391, 'money', NULL),
(392, 'quality', NULL),
(393, 'every', NULL),
(394, 'listing', NULL),
(395, 'content', NULL),
(396, 'country', NULL),
(397, 'private', NULL),
(398, 'little', NULL),
(399, 'visit', NULL),
(400, 'save', NULL),
(401, 'tools', NULL),
(402, 'low', NULL),
(403, 'reply', NULL),
(404, 'customer', NULL),
(405, 'december', NULL),
(406, 'compare', NULL),
(407, 'movies', NULL),
(408, 'include', NULL),
(409, 'college', NULL),
(410, 'value', NULL),
(411, 'article', NULL),
(412, 'york', NULL),
(413, 'man', NULL),
(414, 'card', NULL),
(415, 'jobs', NULL),
(416, 'provide', NULL),
(417, 'j', NULL),
(418, 'food', NULL),
(419, 'source', NULL),
(420, 'author', NULL),
(421, 'different', NULL),
(422, 'press', NULL),
(423, 'u', NULL),
(424, 'learn', NULL),
(425, 'sale', NULL),
(426, 'around', NULL),
(427, 'print', NULL),
(428, 'course', NULL),
(429, 'job', NULL),
(430, 'canada', NULL),
(431, 'process', NULL),
(432, 'teen', NULL),
(433, 'room', NULL),
(434, 'stock', NULL),
(435, 'training', NULL),
(436, 'too', NULL),
(437, 'credit', NULL),
(438, 'point', NULL),
(439, 'join', NULL),
(440, 'science', NULL),
(441, 'men', NULL),
(442, 'categories', NULL),
(443, 'advanced', NULL),
(444, 'west', NULL),
(445, 'sales', NULL),
(446, 'look', NULL),
(447, 'english', NULL),
(448, 'left', NULL),
(449, 'team', NULL),
(450, 'estate', NULL),
(451, 'box', NULL),
(452, 'conditions', NULL),
(453, 'select', NULL),
(454, 'windows', NULL),
(455, 'photos', NULL),
(456, 'gay', NULL),
(457, 'thread', NULL),
(458, 'week', NULL),
(459, 'category', NULL),
(460, 'note', NULL),
(461, 'live', NULL),
(462, 'large', NULL),
(463, 'gallery', NULL),
(464, 'table', NULL),
(465, 'register', NULL),
(466, 'however', NULL),
(467, 'june', NULL),
(468, 'october', NULL),
(469, 'november', NULL),
(470, 'market', NULL),
(471, 'library', NULL),
(472, 'really', NULL),
(473, 'action', NULL),
(474, 'start', NULL),
(475, 'series', NULL),
(476, 'model', NULL),
(477, 'features', NULL),
(478, 'air', NULL),
(479, 'industry', NULL),
(480, 'plan', NULL),
(481, 'human', NULL),
(482, 'provided', NULL),
(483, 'tv', NULL),
(484, 'yes', NULL),
(485, 'required', NULL),
(486, 'second', NULL),
(487, 'hot', NULL),
(488, 'accessories', NULL),
(489, 'cost', NULL),
(490, 'movie', NULL),
(491, 'forums', NULL),
(492, 'march', NULL),
(493, 'la', NULL),
(494, 'september', NULL),
(495, 'better', NULL),
(496, 'say', NULL),
(497, 'questions', NULL),
(498, 'july', NULL),
(499, 'yahoo', NULL),
(500, 'going', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wordtype`
--

CREATE TABLE `wordtype` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wordtype`
--

INSERT INTO `wordtype` (`id`, `name`) VALUES
(1, 'adverb'),
(2, 'noun'),
(3, 'conjunction'),
(4, 'pronoun'),
(5, 'adjective'),
(6, 'preposition'),
(7, 'interjection'),
(8, 'verb'),
(9, 'determiner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acl`
--
ALTER TABLE `acl`
  ADD PRIMARY KEY (`ai`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `acl_categories`
--
ALTER TABLE `acl_categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_code` (`category_code`),
  ADD UNIQUE KEY `category_desc` (`category_desc`);

--
-- Indexes for table `aliase`
--
ALTER TABLE `aliase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_sessions`
--
ALTER TABLE `auth_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `denied_access`
--
ALTER TABLE `denied_access`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fodder`
--
ALTER TABLE `fodder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hunt`
--
ALTER TABLE `hunt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hunt_relation`
--
ALTER TABLE `hunt_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `login_errors`
--
ALTER TABLE `login_errors`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity_aliase`
--
ALTER TABLE `quantity_aliase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission`
--
ALTER TABLE `submission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subreddit`
--
ALTER TABLE `subreddit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thing`
--
ALTER TABLE `thing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  ADD PRIMARY KEY (`ai`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wordtype`
--
ALTER TABLE `wordtype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acl`
--
ALTER TABLE `acl`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acl_actions`
--
ALTER TABLE `acl_actions`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acl_categories`
--
ALTER TABLE `acl_categories`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `aliase`
--
ALTER TABLE `aliase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT for table `denied_access`
--
ALTER TABLE `denied_access`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dimension`
--
ALTER TABLE `dimension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `fodder`
--
ALTER TABLE `fodder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hunt`
--
ALTER TABLE `hunt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hunt_relation`
--
ALTER TABLE `hunt_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;
--
-- AUTO_INCREMENT for table `ips_on_hold`
--
ALTER TABLE `ips_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_errors`
--
ALTER TABLE `login_errors`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;
--
-- AUTO_INCREMENT for table `quantity_aliase`
--
ALTER TABLE `quantity_aliase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;
--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `submission`
--
ALTER TABLE `submission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `subreddit`
--
ALTER TABLE `subreddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thing`
--
ALTER TABLE `thing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `username_or_email_on_hold`
--
ALTER TABLE `username_or_email_on_hold`
  MODIFY `ai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT for table `wordtype`
--
ALTER TABLE `wordtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `acl`
--
ALTER TABLE `acl`
  ADD CONSTRAINT `acl_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `acl_actions` (`action_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `acl_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD CONSTRAINT `acl_actions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `acl_categories` (`category_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
