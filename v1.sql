-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 01:22 AM
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
  `candidate` varchar(30) NOT NULL,
  `com_id` int(11) NOT NULL,
  `word_index` int(11) NOT NULL,
  `word_tag` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `candidate`, `com_id`, `word_index`, `word_tag`) VALUES
(1, '15', 4, 49, 'CD'),
(2, '6', 4, 55, 'CD'),
(3, '5\'9', 4, 62, 'CD'),
(4, '190', 4, 64, 'CD'),
(5, '110', 4, 68, 'CD'),
(6, '80+', 5, 0, 'CD'),
(7, '3', 5, 12, 'CD'),
(8, '~120kg', 6, 99, 'NN'),
(9, '1', 7, 17, 'CD'),
(10, '1', 7, 23, 'CD'),
(11, '1', 7, 28, 'CD'),
(12, '2', 7, 90, 'CD'),
(13, '28-day', 7, 129, 'JJ'),
(14, '2', 7, 133, 'CD'),
(15, '1', 8, 4, 'CD'),
(16, '5', 8, 16, 'CD'),
(17, '2', 8, 89, 'CD'),
(18, '3', 8, 175, 'CD'),
(19, '3', 8, 236, 'CD'),
(20, '70', 15, 0, 'CD'),
(21, '2', 15, 6, 'CD'),
(22, '23-24', 16, 22, 'JJ'),
(23, '22', 16, 281, 'CD'),
(24, '8', 18, 86, 'CD'),
(25, '4', 18, 89, 'CD'),
(26, '2', 18, 116, 'CD'),
(27, '4', 18, 129, 'CD'),
(28, '5', 18, 208, 'CD'),
(29, '8', 18, 226, 'CD'),
(30, '8', 18, 249, 'CD'),
(31, '6', 18, 253, 'CD'),
(32, '65', 20, 88, 'CD'),
(33, '2', 20, 140, 'CD'),
(34, '20', 21, 10, 'CD'),
(35, '2', 21, 19, 'CD'),
(36, '20', 21, 136, 'CD'),
(37, '4+', 25, 59, 'CD'),
(38, '4+', 25, 135, 'CD'),
(39, '4+', 25, 145, 'CD'),
(40, '1.A', 26, 9, 'CD'),
(41, '7cmx7cm', 26, 22, 'CD'),
(42, '2.During', 26, 134, 'CD'),
(43, '2', 26, 257, 'CD'),
(44, '3.I', 26, 281, 'CD'),
(45, '4.A', 26, 379, 'CD'),
(46, '2', 26, 397, 'CD'),
(47, '2-3', 26, 588, 'JJ'),
(48, '4', 26, 635, 'CD'),
(49, '72', 26, 689, 'CD'),
(50, '50', 26, 736, 'CD'),
(51, '73', 32, 53, 'CD'),
(52, '70-100', 32, 60, 'JJ'),
(53, '50s', 34, 3, 'CD'),
(54, '30', 34, 69, 'CD'),
(55, '5', 35, 118, 'CD'),
(56, '4th', 37, 0, 'CD'),
(57, '800', 37, 349, 'CD'),
(58, '20', 37, 393, 'CD'),
(59, '2', 40, 22, 'CD'),
(60, '85', 40, 39, 'CD'),
(61, '30', 40, 86, 'CD'),
(62, '45', 40, 137, 'CD'),
(63, '90', 40, 261, 'CD'),
(64, '19', 42, 23, 'CD'),
(65, '20', 43, 35, 'CD'),
(66, '50cm', 43, 194, 'CD'),
(67, '50cm', 43, 196, 'CD'),
(68, '30mm', 43, 223, 'CD'),
(69, 'F1', 43, 351, 'NNP'),
(70, '3', 44, 68, 'CD'),
(71, '50', 44, 122, 'CD'),
(72, '60', 44, 126, 'CD'),
(73, '911', 44, 329, 'CD'),
(74, '4', 44, 413, 'CD'),
(75, '4', 47, 102, 'CD'),
(76, '4', 47, 132, 'CD'),
(77, '100', 50, 95, 'CD'),
(78, '63', 54, 17, 'CD'),
(79, '6', 54, 39, 'CD'),
(80, '2', 54, 54, 'CD'),
(81, '7x', 54, 95, 'CD'),
(82, '9', 54, 96, 'CD'),
(83, '16', 55, 9, 'CD'),
(84, '2', 55, 19, 'CD'),
(85, '285', 55, 76, 'CD'),
(86, '.11', 55, 81, 'NNP'),
(87, '23', 57, 12, 'CD'),
(88, '15', 58, 13, 'CD'),
(89, '1', 60, 25, 'CD'),
(90, '2', 60, 30, 'CD'),
(91, '3', 60, 37, 'CD'),
(92, '4', 60, 43, 'CD'),
(93, '5', 60, 47, 'CD'),
(94, '6', 60, 61, 'CD'),
(95, '24', 61, 11, 'CD'),
(96, '10', 61, 52, 'CD'),
(97, '21', 62, 9, 'CD'),
(98, '400lbs', 64, 38, 'CD'),
(99, '10', 64, 64, 'CD'),
(100, '10', 64, 196, 'CD'),
(101, '60s', 67, 57, 'CD'),
(102, '3', 67, 330, 'CD'),
(103, '100', 71, 21, 'CD'),
(104, '60+', 72, 20, 'CD'),
(105, '6', 73, 7, 'CD'),
(106, '1', 73, 30, 'CD'),
(107, '11', 74, 48, 'CD'),
(108, '12', 74, 51, 'CD'),
(109, '5', 74, 118, 'CD'),
(110, '2', 74, 200, 'CD'),
(111, '2', 74, 236, 'CD'),
(112, '90', 78, 13, 'CD'),
(113, '40', 78, 17, 'CD'),
(114, '3.03', 79, 6, 'CD'),
(115, '3:04', 85, 5, 'CD'),
(116, '20', 87, 56, 'CD'),
(117, '40', 88, 3, 'CD'),
(118, '1940s', 88, 25, 'CD'),
(119, '30', 89, 16, 'CD'),
(120, '40s', 90, 4, 'CD'),
(121, '1941', 91, 5, 'CD'),
(122, '50s', 91, 31, 'CD'),
(123, '3', 94, 2, 'CD'),
(124, '2', 95, 13, 'CD'),
(125, '1960', 95, 58, 'CD'),
(126, '1940', 96, 4, 'CD'),
(127, '40s', 97, 14, 'CD'),
(128, '1941', 98, 15, 'CD'),
(129, '30,000', 98, 22, 'CD'),
(130, '3:03', 115, 9, 'CD'),
(131, '40s', 116, 35, 'CD'),
(132, '40s', 118, 4, 'CD'),
(133, '0:50', 122, 2, 'CD'),
(134, '3am', 133, 7, 'CD'),
(135, '60s', 136, 66, 'CD'),
(136, '70s', 136, 68, 'CD'),
(137, '3:03', 141, 11, 'CD'),
(138, '90s', 143, 6, 'CD'),
(139, '10', 149, 22, 'CD'),
(140, '1960', 154, 5, 'CD'),
(141, '1941', 155, 6, 'CD'),
(142, '25', 156, 10, 'CD'),
(143, 'X2', 159, 1, 'NN'),
(144, 'X1', 159, 5, 'NN'),
(145, '3:03', 160, 2, 'CD'),
(146, '3', 18, 260, 'CD'),
(147, '520g', 18, 296, 'CD'),
(148, '600g', 18, 298, 'CD'),
(149, '300g', 18, 314, 'CD'),
(150, '4', 47, 134, 'CD'),
(151, '2', 47, 148, 'CD'),
(152, '8', 47, 155, 'CD'),
(153, '6', 47, 173, 'CD'),
(154, '8', 164, 93, 'CD'),
(155, '95', 166, 75, 'CD'),
(156, '43', 166, 107, 'CD'),
(157, '1', 167, 61, 'CD'),
(158, '2', 167, 81, 'CD'),
(159, '3', 167, 98, 'CD'),
(160, '4', 167, 116, 'CD'),
(161, '5', 167, 136, 'CD'),
(162, 'index=0', 210, 19, 'NN'),
(163, 'ssl=1', 210, 21, 'NN'),
(164, 'preview=1', 210, 25, 'NN'),
(165, '2', 210, 59, 'CD'),
(166, '1', 210, 73, 'CD'),
(167, '1985', 210, 130, 'CD'),
(168, 'al.,2014', 210, 134, 'NN'),
(169, '9/11', 227, 132, 'CD'),
(170, '2014', 248, 62, 'CD'),
(171, '58', 47, 269, 'CD'),
(172, '6', 47, 285, 'CD'),
(173, 'helium-3', 257, 217, 'JJ'),
(174, 'CH3CH2O^*', 257, 256, 'NNP'),
(175, '101', 260, 77, 'CD'),
(176, '100', 260, 80, 'CD'),
(177, '1', 260, 126, 'CD'),
(178, '30', 260, 130, 'CD'),
(179, '1', 260, 161, 'CD'),
(180, 'H-1', 263, 30, 'NNP'),
(181, '45', 265, 15, 'CD'),
(182, 'co2', 288, 18, 'NN'),
(183, '30/ton', 290, 20, 'CD'),
(184, '50/ton', 290, 29, 'CD'),
(185, 'y=2x', 294, 24, 'NN'),
(186, 'x=2y', 294, 26, 'JJ'),
(187, 'y=x/2', 294, 28, 'NN'),
(188, '4k', 298, 22, 'CD'),
(189, 'Catch-22', 317, 0, 'JJ'),
(190, '20-odd', 320, 232, 'JJ'),
(191, 'n-1', 331, 32, 'JJ'),
(192, '1', 333, 12, 'CD'),
(193, '1.4', 333, 14, 'CD'),
(194, '1.41', 333, 16, 'CD'),
(195, '2^', 333, 31, 'CD'),
(196, '1/2', 333, 33, 'CD'),
(197, '3', 333, 38, 'CD'),
(198, '3.1', 333, 40, 'CD'),
(199, '3.14', 333, 42, 'CD'),
(200, '3.141', 333, 44, 'CD'),
(201, '3.1415', 333, 46, 'CD'),
(202, '3.14159', 333, 48, 'CD'),
(203, '3.141592', 333, 50, 'CD'),
(204, '3.1415926', 333, 52, 'CD'),
(205, '2^-1/', 333, 63, 'JJ'),
(206, 'n+1', 333, 65, 'JJ'),
(207, '1', 333, 70, 'CD'),
(208, '2', 333, 72, 'CD'),
(209, '3', 333, 74, 'CD'),
(210, '1', 333, 86, 'CD'),
(211, '1', 334, 83, 'CD'),
(212, '50', 334, 103, 'CD'),
(213, '50', 334, 117, 'CD'),
(214, '1', 334, 125, 'CD'),
(215, '2', 342, 3, 'CD'),
(216, '19', 343, 100, 'CD'),
(217, 't=35s', 346, 70, 'NN'),
(218, '70s', 347, 37, 'NNS'),
(219, '1950s', 349, 17, 'CD'),
(220, '1960s', 349, 19, 'CD'),
(221, '^^^2', 351, 18, 'NN'),
(222, '2livecrew', 355, 6, 'CD'),
(223, '1992', 355, 9, 'CD'),
(224, '10', 357, 231, 'CD'),
(225, '**2**', 358, 5, 'NN'),
(226, '2003', 370, 2, 'CD'),
(227, '1955', 376, 41, 'CD'),
(228, '1957', 376, 43, 'CD'),
(229, '1960s', 377, 12, 'NNS'),
(230, '7', 378, 16, 'CD'),
(231, '84', 378, 57, 'CD'),
(232, '1', 378, 69, 'CD'),
(233, '2', 378, 71, 'CD'),
(234, '84', 378, 91, 'CD'),
(235, '2Chainz', 378, 99, 'CD'),
(236, '2', 384, 14, 'CD'),
(237, '90s', 386, 9, 'CD'),
(238, '84', 392, 6, 'CD'),
(239, '60', 399, 16, 'CD'),
(240, '=21471', 408, 30, 'NNP'),
(241, '=68236', 408, 35, 'NNP'),
(242, '0.1', 413, 49, 'CD'),
(243, '5', 419, 58, 'CD'),
(244, '80', 422, 12, 'CD'),
(245, '3', 425, 36, 'CD'),
(246, '3:03', 425, 45, 'CD'),
(247, '1:39', 429, 6, 'CD'),
(248, '80s', 431, 18, 'CD'),
(249, '29', 432, 11, 'CD'),
(250, '90', 434, 10, 'CD'),
(251, '3:03-3:04', 435, 13, 'CD'),
(252, '80', 436, 14, 'CD'),
(253, '1940', 442, 8, 'CD'),
(254, '£1', 443, 7, 'CD'),
(255, '70-120', 443, 18, 'JJ'),
(256, '3', 444, 42, 'CD'),
(257, '3', 452, 15, 'CD'),
(258, '1940', 454, 7, 'CD'),
(259, '40', 463, 4, 'CD'),
(260, '1940s', 469, 11, 'CD'),
(261, '1990', 470, 11, 'CD'),
(262, '70', 474, 16, 'CD'),
(263, '90\'s/00', 478, 9, 'CD'),
(264, '40s', 482, 44, 'CD'),
(265, '13', 486, 7, 'CD'),
(266, '40s', 491, 8, 'CD'),
(267, '60s', 491, 13, 'CD'),
(268, '40s', 499, 6, 'CD'),
(269, '60s', 499, 13, 'NNS'),
(270, '90s', 501, 39, 'CD'),
(271, '90s', 501, 48, 'CD'),
(272, '40s', 501, 55, 'CD'),
(273, '30s', 504, 7, 'CD'),
(274, '40', 509, 3, 'CD'),
(275, '1940', 510, 8, 'CD'),
(276, '1940s', 510, 17, 'CD'),
(277, '40s', 511, 1, 'CD'),
(278, '15', 514, 13, 'CD'),
(279, '3:04', 518, 6, 'CD'),
(280, '70', 521, 3, 'CD'),
(281, '43', 521, 24, 'CD'),
(282, '3:00', 522, 11, 'CD'),
(283, '25', 527, 10, 'CD'),
(284, '3:03', 531, 15, 'CD'),
(285, '40', 532, 33, 'CD'),
(286, '50', 532, 36, 'CD'),
(287, '3:03', 533, 8, 'CD'),
(288, '40s', 538, 75, 'CD'),
(289, '1930', 539, 31, 'CD'),
(290, '1940s', 539, 48, 'CD'),
(291, '3:03', 540, 7, 'CD'),
(292, 't=177', 540, 16, 'JJ'),
(293, '80s/90s', 543, 17, 'CD'),
(294, '40s', 543, 27, 'CD'),
(295, '90', 545, 14, 'CD'),
(296, '2004', 546, 10, 'CD'),
(297, '3', 547, 39, 'CD'),
(298, '40', 548, 17, 'CD'),
(299, '70', 548, 25, 'CD'),
(300, '80', 548, 28, 'CD'),
(301, '80', 556, 86, 'CD'),
(302, 'CH2TCH2OH', 560, 55, 'NNP'),
(303, 'CH3CHTOH', 560, 57, 'NNP'),
(304, 'CH3CH2OT', 560, 59, 'NNP'),
(305, 'He-3', 560, 66, 'NNP'),
(306, '5-', 562, 80, 'JJ'),
(307, '2', 565, 23, 'CD'),
(308, '2', 566, 35, 'CD'),
(309, '8', 566, 38, 'CD'),
(310, '25', 567, 178, 'CD'),
(311, '2', 568, 8, 'CD'),
(312, '8', 568, 10, 'CD'),
(313, '25', 568, 19, 'CD'),
(314, '5', 8, 330, 'CD'),
(315, '4', 47, 113, 'CD'),
(316, '4', 47, 145, 'CD'),
(317, '2', 47, 159, 'CD'),
(318, '8', 47, 166, 'CD'),
(319, '6', 47, 187, 'CD'),
(320, '58', 47, 283, 'CD'),
(321, '30', 47, 290, 'CD'),
(322, '6', 47, 302, 'CD'),
(323, '2', 47, 381, 'CD'),
(324, 'Q2hrs', 47, 449, 'NNP'),
(325, '38', 579, 5, 'CD'),
(326, '20yrs', 579, 34, 'CD'),
(327, '3x', 579, 258, 'CD'),
(328, '20', 579, 289, 'CD'),
(329, '2000', 580, 16, 'CD'),
(330, '4', 581, 7, 'CD'),
(331, '20', 581, 128, 'CD'),
(332, '216/160', 585, 133, 'CD'),
(333, '40', 587, 175, 'CD'),
(334, '13', 588, 32, 'CD'),
(335, '10', 588, 67, 'CD'),
(336, '5', 588, 106, 'CD'),
(337, '2', 600, 13, 'CD'),
(338, '3rd', 600, 23, 'CD'),
(339, '2', 600, 47, 'CD'),
(340, '10', 600, 104, 'CD'),
(341, '8', 602, 54, 'CD'),
(342, '15', 602, 73, 'CD'),
(343, '3', 602, 91, 'CD'),
(344, '14', 603, 19, 'CD'),
(345, 'N64', 604, 11, 'NNP'),
(346, '10am', 606, 71, 'CD'),
(347, '11', 609, 4, 'CD'),
(348, '12', 609, 6, 'CD'),
(349, '5', 609, 53, 'CD'),
(350, '5pm', 609, 76, 'CD'),
(351, '9pm', 609, 100, 'CD'),
(352, '20', 609, 162, 'CD'),
(353, '5yo', 618, 5, 'CD'),
(354, '1st', 618, 133, 'JJ'),
(355, '27', 619, 499, 'CD'),
(356, '13', 622, 57, 'CD'),
(357, '10', 626, 68, 'CD'),
(358, '90s', 627, 20, 'CD'),
(359, '15', 631, 70, 'CD'),
(360, '10', 633, 26, 'CD'),
(361, '6', 633, 48, 'CD'),
(362, 'mid-30s', 633, 111, 'NN'),
(363, '3-4', 633, 190, 'JJ'),
(364, '8', 635, 46, 'CD'),
(365, '15', 635, 49, 'CD'),
(366, '130', 645, 331, 'CD'),
(367, '15', 648, 93, 'CD'),
(368, '10', 653, 60, 'CD'),
(369, '10', 655, 23, 'CD'),
(370, '18', 656, 16, 'CD'),
(371, '18', 656, 49, 'CD'),
(372, '20', 660, 49, 'CD'),
(373, '6', 664, 18, 'CD'),
(374, '8', 664, 40, 'CD'),
(375, '6', 664, 46, 'CD'),
(376, '4', 664, 70, 'CD'),
(377, '5', 664, 72, 'CD'),
(378, '3', 664, 90, 'CD'),
(379, '80', 666, 39, 'CD'),
(380, '10', 666, 88, 'CD'),
(381, '14', 675, 37, 'CD'),
(382, '18', 678, 79, 'CD'),
(383, '1000', 680, 19, 'CD'),
(384, '11', 685, 7, 'CD'),
(385, 'WW2', 686, 10, 'NNP'),
(386, '21', 688, 44, 'CD'),
(387, '17', 690, 61, 'CD'),
(388, '60s', 692, 11, 'NNS'),
(389, '70s', 692, 13, 'CD'),
(390, '3rd', 696, 24, 'CD'),
(391, '8-yr', 697, 67, 'JJ'),
(392, '2', 698, 2, 'CD'),
(393, '60s', 700, 13, 'CD'),
(394, '200', 701, 46, 'CD'),
(395, '30', 703, 19, 'CD'),
(396, '8-12', 703, 44, 'JJ'),
(397, '15', 703, 81, 'CD'),
(398, '16', 703, 90, 'CD'),
(399, '30', 703, 92, 'CD'),
(400, '9', 707, 16, 'CD'),
(401, '8', 707, 38, 'CD'),
(402, '5', 707, 87, 'CD'),
(403, '90', 707, 153, 'CD'),
(404, '6', 713, 98, 'CD'),
(405, '5-ish', 713, 155, 'JJ'),
(406, '14', 714, 106, 'CD'),
(407, '911', 714, 131, 'CD'),
(408, '18', 714, 235, 'CD'),
(409, '18', 714, 264, 'CD'),
(410, '8', 718, 75, 'CD'),
(411, '20s', 727, 27, 'CD'),
(412, '1', 727, 65, 'CD'),
(413, '1', 727, 108, 'CD'),
(414, '1', 727, 153, 'CD'),
(415, '8', 729, 35, 'CD'),
(416, '18', 729, 81, 'CD'),
(417, '62.', 729, 86, 'CD'),
(418, '70s', 730, 153, 'CD'),
(419, '7th', 730, 310, 'CD'),
(420, '20', 730, 1184, 'CD'),
(421, '30', 730, 1376, 'CD'),
(422, '15', 730, 1388, 'CD'),
(423, '2002', 730, 1478, 'CD'),
(424, '2003', 730, 1480, 'CD'),
(425, '2002', 730, 1872, 'CD'),
(426, '18', 732, 19, 'CD');

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
  `com_link_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`) VALUES
(1, 'ER RN here , not a physician , but you may find this interesting . Young adult male presents with multiple abscesses on various parts of his body . States he injected his boyfriends semen into himself trying to get pregnant . He tells one of the APCs he should have gone with his original plan and tried on his dog first . Psych clears him . He ’ s admitted to the floor and gets IV antibiotics . What .', 1, 'doq8yhe'),
(2, 'I met one who was taking lactulose ( extra strength laxative ) for her lactose intolerance .', 1, 'doq6aws'),
(3, 'I am a dental student . One patient in particular is pathological liar . During one visit , they claimed to have gone to medical school . Next visit was that they did dental Army . Last visit was that they had a PhD . The patient will say things like `` Hey doc do you need me to move my head mesial or distal ? \'\' No . I need you to move your head right . `` Hey doc , are these cavities being cause by the anaerobic pathology microbes ? \'\' No . They are cause by you eating snacks all day and not brushing .', 1, 'doq6hjh'),
(4, 'Not a doctor , but a patient whose mother was like this . The Doctor had to speak to me on the side because of it : My grandmother has Crohn \'s disease . Very very badly . It skipped my mother and her brother . When I was 15 , over the course of 6 months , I went from being 5\'9 and 190 pounds to being 110 . I was a skeleton , extremely anemic , and coughing up blood . My mother was CONVINCED it was something else . I forced her to bring me to a doctor and she spouted off all these possibilities . She then talked about what she yahooed . Not even googled . Yahoo . About genetics and such . And `` crohns ca n\'t skip generations \'\' Well the doc said `` just in case . We \'re gon na run some tests \'\' Long story short I have crohns in my throat and small intestine . So does my cousin . It just skipped a generation .', 1, 'doq23ul'),
(5, '80+ y.o . patient who was declining with multiple diagnoses and about 3 decubitus ulcers . Daughter was adamant that her father be kept on his strict `` paleo \'\' diet because that would `` supercharge \'\' his healing . She had a stack of diet books . He simply was n\'t getting enough nutrition to heal the ulcers . He did n\'t like the diet at all btw . At some point you kind of have to stop being polite and just tell patients/ family members bluntly that you do n\'t have time for this shit and what you recommend and they can do what they want and just document everything . It happens a lot but she sticks out .', 1, 'doq1m9o'),
(6, 'When I was a resident , I had a patient , a woman in her early twenties , who presented with vague complaints of `` terrible headaches \'\' ( that did n\'t prevent her from playing on her phone or going out to smoke ) and `` terrible abdominal pain \'\' ( that did n\'t prevent her from ordering pizza and fried chicken to her hospital room ) . The first morning I met her ( she was admitted to my service overnight ) , she informed me that she is a nurse , she is malnourished ( weighed ~120kg ) because `` ya\'lls food is awful here \'\' , and she needs a banana bag because she needs nutrients from fruit . I explained to her that a `` banana bag \'\' is n\'t literally a bag made from bananas . It \'s an IV fluid containing thiamine , folate , and magnesium that we usually only give drunks to correct/prevent encephalopathy . `` No , you \'re wrong , I need a banana bag because I need fruits and shit , and ya \'ll cant lie to me because I \'m a nurse and I know better \'\' was all she would say , no matter how many times it was explained to her that she had no clue what she was talking about . On day two , her mother shows up , and we try talking with her . We explain that here \'s nothing organically wrong with her ( other than being lazy , obese , and argumentative ) and that we planned to discharge her to home . Turns out her daughter is n\'t a nurse . In fact , she recently failed out of a nursing assistant program because she showed up to class high . So , yeah , she was a real winner in all aspects .', 1, 'doq6zph'),
(7, 'Oh , I have two good ones that come to mind . Clinical pharmacist here btw with 1 story in the ER and 1 in the pharmacy . 1 ) ER physician told me this one : 16-year-old boy presented to the ER with an extremely swollen discolored penis . Apparently he has been using his mom \'s insulin needles to draw blood out of his arm and inject it into his own penis . His penis was terribly infected and he was hospitalized for a week or so ... 2 ) One day in the pharmacy , a girl comes to the counter requesting a refill for her birth control . We pulled up her profile and realized we could n\'t refill it because she just got a 28-day fill less than 2 weeks ago . When we asked what happened to the other one , she said she was out . Apparently , both her and her boyfriend were each taking a pill each and was adamant that was how they needed to prevent pregnancy .', 1, 'doqairi'),
(8, 'Where to start ! 1 . Picture a middle aged man ; his index finger is 5 x the size of the rest of his fingers . It smells , it ’ s leaking pus , there ’ s necrotic tissue . Basically one huge infected cancerous finger . He was a firm believer in not taking any sort of medication ; including antibiotics or chemo . Died a few weeks later , but he did manage to tell us we were all idiots before he passed away . 2 . Patient was a young child who came in with an extremely high Blood Glucose level . Once she was stable we did some teaching and kept her for a few days for observation . For some reason every-time I checked her , her levels would be extremely high although we were appropriately treating her . Turns out her family would bring her fast food for every meal and hide it in the side table . More teaching and resources were put into place . 3 . Had a mom in hysterics because she was convinced that her neighbor ’ s , friend ’ s , step son ’ s , teacher ’ s dog has MRSA so her baby was going to die . It took everything within me to not tell her that most of the hospital staff have MRSA . But it took 3 hours for me to finally calm her down after I called : infectious control , her pediatrician , gynecologist , and family doctor . Yes I had to call all these people ; yes they laughed at me ; yes she was beside me the whole time questioning their judgement . I love my job , but at times it makes me crazy !', 1, 'doq7wlf'),
(9, 'Optician here We had a patient who refused to let us use the tonometer , a machine for checking ocular internal pressure to diagnose glaucoma . He said that puff machine gives you glaucoma and we were n\'t going to pull hat on him . He told us his father got an exam , and had glaucoma after using that machine . His uncle and brother also had no signs of glaucoma , and after getting the puff test , both people had been diagnosed with the disease . Glaucoma does n\'t have any outward symptoms before you start going blind . This dipshit just told me he has a very strong familial disposition to glaucoma , and refused to be tested for it .', 1, 'doq96vp'),
(10, 'Patient inquiring about birth control was adamant she wanted an IED .', 1, 'doqa7np'),
(11, 'Had a young woman with recurring UTIs that began after a recent partner and with no STDs ; went through the standard questions trying to figure out what could be causing them and eventually found out she had been lubricating with jelly . *Not* KY jelly . The mixup had literally been a joke on House . It took me some effort to keep a straight face , but we eventually resolved the problem and she stopped getting UTIs .', 1, 'doq76zw'),
(12, 'My dad is an Emergency Nurse . He experiences the same thing doctors in the ER do , maybe more so because he ’ s the one in the rooms more often . Anyway here ’ s a good story from him : I had a patient come in with several pages he printed off the internet . He kinda slammed them down and said , “ This is what I have. ” He had bloating , nausea , vomiting , diarrhea , bloody stool , and fever among other things . He insisted he had Schistosomiasis . He was being a real jerk about it like we ’ re wasting time since he already knew what he had . So , I asked when did he get back from Africa . And he said , “ Africa ? I ’ ve never been to Africa . What the hell would I be doing in Africa ? ” I proceeded to tell him that Schistosomiasis is a parasitic disease one gets while swimming in the Nile River or other rivers in developing countries like in Southeast Asia . He got pissed off at me because he thought I was being a smart ass . He got seen and diagnosed with gastroenteritis ( the stomach flu ) . The bloody stool ? He had hemorrhoids .', 1, 'doq6g90'),
(13, 'I did n\'t treat this patient but I was on shift when this guy came in with tombstones on his [ ekg ] ( https : //www.wikidoc.org/images/d/d2/Tombstone_ekg.jpg ) in the setting of chest pain . He told the ED doc , `` I want a second opinion before going to the cath lab . \'\' This ekg is unmistakable . The interventionalist had to come down to the emergency department to tell him he was having a heart attack .', 1, 'doq4afu'),
(14, '[ deleted ]', 1, 'doq3pvw'),
(15, '70 yo female tripped and fell 2 days ago . She came it with hip pain but reports after the fall her nose was bleeding - she had landed on her nose . About a year prior her dentist had messes up an infraorbital nerve block and caused some swelling in that region but that all was resolved . This old lady is now convinced her nosebleed after falling on her face is related to an `` infection \'\' from the dental issue a year ago . After multiple back-and-forth on the etiology of the nosebleed , she became the first patient I raised my voice and put down an authoritative `` no , you are wrong , just stop it \'\' .', 1, 'doq8a46'),
(16, 'Oh wow , where do I start . -We once had a patient come in with an odd constellation of symptoms , 23-24 y/o poorly educated female . The first couple of examinations no obvious cause turned up . The third time around she finally confessed that she ’ d been taking her mother-in-law ’ s anti tuberculosis therapy medication . The reason for this was that her husband often nagged her that her breasts weren ’ t big enough . She ’ d accompanied her MIL to the government hospital a few times and seen that the ward was called the Chest ward . She associated ‘ chest ’ with ‘ breasts ’ and thought that the pills would make her breasts bigger , because they were from the chest ward . Luckily , no long term damage to her from the pills . - A family acquaintance who always Google docs himself , and always cross questions me about his medicines at family gatherings . He diagnosed himself with hypothyroidism and started taking L-Thyroxine for it , without consulting any doctors . His aim is to bring his serum TSH exactly in the middle of the normal range . Let me clarify : his tsh is normal , but above the mathematical midpoint in the normal range . Smh . - An uncle who regularly uses metronidazole for colds and coughs , and expectorants and cough suppressants interchangeably for whatever cough he has . His logic is that all antibiotics are antibiotics and should work the same , and that applies to cough syrups too . - A patient ’ s mother who finally gave in and brought their 22 year old severely repressed schizophrenic son in . The poor kid had been deteriorating for a long while and the mother had been forcing him to ‘ eat well and pray regularly ’ because that ‘ should fix everything ’ . The boy was now too strong for her to control and had sort of devolved into a religious fanatic but severely unstable . He ’ d often jump off the balcony and chase girls passing on the street because women ‘ wearing jeans ’ was not part of Indian culture . That was one of the saddest cases I ’ ve ever been on .', 1, 'doq0yms'),
(17, 'Med student here ... on my pediatrics rotation a mother refused vaccines for her kiddo after `` educating herself . \'\' When prompted as to what she was using as her source , she replied , `` my own brain . \'\' Lovely .', 1, 'doq7b3n'),
(18, 'My mum once had to try explain to a doctor that regardless of tests she has celiacs because google said that if you have celiacs you get sick when eating bread , she just would n\'t accept that as you get older you ca n\'t eat half a loaf of bread in one sitting . I have never seen a doctor want to kill themselves more . Edit : alright I get that people think half a loaf is a huge amount but it is only 8 slices meaning 4 sandwiches . I do n\'t know what kind of monster laofs you guys have where you live but I would love to find out . Edit 2 : okay I am dying from laughter at the amount of `` 4 SANDWICHES ? ! ? ! \'\' replies . Apparently there has been a little bit of miscomunication around it . I am not talk ham lettuce tomatoe sandwiches , I am talking about a slice of bread , thin spread and another slice of bread with a person who is addicted to drugs but even then that may seem like a lot so while at work I have taken a picture of a loaf of bread with a 5 pack of hubba bubba to scale and a black line to show you where the size of 8 pieces are , I can hold it all in one hand and I do not have very large hands . Link : 8 slices is about 6 hubba bubba https : //imgur.com/gallery/NAH1W', 1, 'doq4cw7'),
(19, 'This one happened to my ex father in law , and it \'s funny , but it \'s not . He was a surgeon ( very gentle , soft spoken guy ) and came out to tell them the biopsy results , to which they responded `` Praise Jesus , it \'s malignant . \'\' ( He had to explain that \'malignant \' meant bad . )', 1, 'doq0hax'),
(20, 'Physical therapist here . I love the macho hulkians who come in for shoulder pain with giant pecs and arms . NO back muscles . Hand them our *pink* one pound weights , and they laugh and think I \'m an idiot . Make them hold [ this position ] ( http : //www.thestudentphysicaltherapist.com/uploads/1/3/2/6/13261333/2221641_orig.jpg ) for one minute with the weights . They want to cry because it \'s so hard . Edit : Also , my mother . She has an undiagnosed hypermobility syndrome ( she \'s 65 and can easily place her hands flat on the floor when standing ) . She also has intermittent back pain . hypermobility + pain = stability/strengthening exercises . I \'m a fucking PT . I tell her what exercises to do . Her solution ? MFing stretches for hypermobility ! Edit 2 : I finally understand `` RIP my inbox . \'\' I \'m actually am not a *licensed* PT , and have my board exam on Wednesday , so VERY unlikely I \'ll get to all of them . If you have a physical pain issue , *go to a physical therapist* ! ! We are experts in the musculoskeletal system and are where your doctor will refer you to anyways , so save yourself some money and get PT first !', 1, 'doq40rj'),
(21, 'I am an ER doc . I once had a 20 year old and his girlfriend come in at 2 am freaking out becuase `` something had tore his throat open \'\' . He seemed fine . No blood . Breathing fine . I had him open his mouth , saw nothing . So did n\'t want him to lose confidence in me , clearly something had happened , so I \'m looking , and looking ... .there is nothing wrong with this kids throat . Finally I say look , it seems ok ... what do you feel or see ? `` I dont feel it but LOOK ITS RIGHT THERE \'\' . WHERE ? ? ? Looking , looking . It was his uvula . Somehow this kid had gotten to the age of 20 without ever noticing his uvula . Girlfriend was also horrified ... .I told them it was normal . Did not believe me . So I told them I was about to blow their minds and showed him his girlfriends uvula . Minds blown , another life saved in the ER . : ) : ) : ) : ) : )', 1, 'doqca0c'),
(22, 'Was working at a pediatric urgent care . Family brings in their three year old unvaccinated son with autism for a weird rash.. they could n\'t give me any reason why when I asked them about his vaccination status..', 1, 'doq4bie'),
(23, 'A related story from my friend , a Gynecologic Oncologist . Basically a woman had early uterine cancer , but refused surgery . She wanted to explore alternative treatments like coffee enemas ( ? ) and meditation . She somehow managed to get an audience with the Dalai Lama who told her to go back to western treatment .', 1, 'dopyvr6'),
(24, '-My aunt ( who has varicose veins , pretty obvious to anyone who sees it ) once asked me why her legs hurt and what those bluish lines under her skin were . I almost went on to explain to her about dilated veins when she interrupts and decides for herself that those are her nerves . Dying nerves . And the blue stuff was blood clots inside the nerves . I ’ m a med student . -I was doing a respiratory system examination on this guy who frequently ( about once a month ) gets admitted in the general ward with complaints of breathlessness . He ’ s had COPD for a couple of years . Quite bad . And he tells me that he isn ’ t going to quit smoking because ‘ God ’ told him not to . When asked why , he tells me that the people who are relying on him for their daily livelihood won ’ t survive if he stopped . I went on to ask him if he meant the people at the cigarette factory or the health industry . He didn ’ t get the sarcasm though . -Patient comes to the surgery clinic with complaints of mass per rectum . ( Now I wasn ’ t there the first time he came ) . But the surgeon wanted to do a couple of investigations and advised him to get admitted . The guy decided he doesn ’ t want to . Couple of months later , he comes back to the clinic . Apparently he went to one of these alternative medicine places or whatever and they had tied this metal wire ( not exactly sure why ) around the mass . By then , this mass has eroded through it and was bleeding and had gotten much bigger . Turned out to be a cancerous growth .', 1, 'doq7ovr'),
(25, 'Not a doctor but am a medical technologist . There are plenty of iamverysmart moments but this one was recent . Did a fingerstick for a patient , ensured the little cut stopped bleeding , and then put a band-aid on it . Told her to collect a urine sample for testing . Test came back strongly positive ( 4+ reading ) for blood . She complained to the doctor that there is NO WAY she has blood in her urine , and that the blood from her fingerstick must have entered the urine , throwing off her reading . She said it was my fault that I did her blood test before her urine test , and I obviously made a mistake . She repeated the test later in the afternoon , still at 4+ . Came back a week later , still at 4+ . The look on her face when I told her `` sorry , ma\'am , your result is still positive \'\' was priceless .', 1, 'doq1suc'),
(26, 'Oh boy it \'s my time to shine ! 1.A guy brings his wife to the ER , Her leg has a 7cmx7cm wound ( diabetic ulcer ) with greenish yellow pus and what looked like a few maggots . Now I took one look at her and referred her to the Surgery department for admission . But the hubby is adamant on his wife \'s kidney disease . `` But doc , it \'s just a wound , you got ta fix her kidney first doc , I read online that diabetes can cause kidney failure , and you got ta do something for that . \'\' I spent an hour convincing him that his wife would probably die before the kidney damage sat in by sepsis from the clearly infected wound . 2.During my pediatric internship period , one day I was in charge of general ward . Basic things , look after the kids , solve small complaints ( Cough , breathlessness etc etc ) , evaluate new admissions . Now where I work , Interns are supposed to draw blood from children for tests . So I went about my job and theres one little tyke who \'s a bit too active and jumps around when he sees the needle . The mother gives me a vile look and says , \'\' you lot are just puncturing my child for your education . \'\' At which point the kid just screams even harder . Yes , I \'m studying a blood draw at 2 in the morning by waking up a kid . That \'s what she thought . took a fair amount of convincing too . 3.I took care of a child that got measles . The mother and father was strongly anti-vax but was yelling at me `` how can modern medicine not have a treatment for measles \'\' . At which point I told her there was a preventive method but you did n\'t use it . She asked me what it was to which I replied vaccinate your child . She said , `` You \'re just one of them pharma lobbyists , are n\'t you ? \'\' Yes . I am a pharma lobbyist who wants to kill children . 4.A lady comes screaming into the ER , Now she \'s all dressed up , so are her 2 grown daughters . All of them screaming hysterically that their mother is going to die . I go by them and nearly get tackled by the SIL , husband of one of the daughters . `` Save her , she \'s having an embolism \'\' Shaken , I examine the lady , asked her where she was coming from ( a wedding , that explained the dress ) , She apparently had a bit too much of potatoes . A shot of pantoprazole later , her embolism is gone . She had a bad case of fart embolisms . One thing I will never forget is how I learned never to be mad at a patient . Now this was when I began as an intern , A patient had intestinal obstruction . We inserted a nasal feeding tube as the patient could not have anything per orally before the surgery . Problem was that they would always come and complain to me about how I did n\'t stick it properly ( you have to stick the end protruding out of the nose to the nasal bridge . ) After 2-3 such episodes where I reluctantly dressed it . They complain that the tube is out of the nose , and lo and behold it is out . It \'s very uncomfortable , most patients try and pull the nasal tube out . I replaced it like 4 times . Poor guy was fed up by then . On the morning of the surgery , his wife comes and asks me , \'\' Doc , can you just remove that tube so that I can give him some coffee ? \'\' Now I got totally mad . I was working a 72 hour shift , So I scolded her by saying that if she or he did n\'t want the surgery then I could n\'t do anything and it would be nice if they gave me some peace . She did n\'t say anything . The patient , 50 years old with no other complications , died on the table . I could n\'t face her . The moral being , doctors know more things than patients . But it \'s not always wise to bite their heads off . I could have convinced her it was impossible to remove the tube before surgery in a calm way . Since then I \'ve tried to be a better speaker to patients . edit : English is not my first language so pardon any errors . Also punctuation .', 1, 'dopzwed'),
(27, 'So - the patient had low blood pressure - so their self treatment : eating more fatty foods in order to decrease the size of their blood vessels in order to increase the blood pressure within their system ...', 1, 'doq8ku3'),
(28, 'Just got this story from my girlfriend ’ s step-dad who is a neurosurgeon . He had an OBGYN friend who had a couple who couldn ’ t get pregnant . Apparently they had been raised in some religious fundamentalist cult and didn ’ t understand how sex worked . The guy was just rubbing his penis against her leg and ejaculating on her thigh .', 1, 'doq5grj'),
(29, 'I \'m a corpsman , not a doctor , but I once had a patient tell me that there was no credible research that smoking was bad for one \'s health . Okay .', 1, 'doqabuu'),
(30, 'Said it before , I \'ll say it again . Had a patient insist : \'\' I did n\'t have a heart attack , I had a myocardial infarction . \'\' That \'s just the technical term for a heart attack , genius .', 1, 'doq8nb8'),
(31, 'Any time a patient comes in who is deathly ill and clearly needs antibiotic/cholesterol/blood pressure/etc ... meds to get better that tell me `` I \'m NOT taking the medicine ! I know you just prescribe those because the drug companies pay you ... . \'\' Yes , sir/lady . All of these drug companies are giving me dollar dollar bills y\'all to put you on an antibiotic/cholesterol/blood pressure medicine etc ... Right ...', 1, 'doq4pm8'),
(32, 'Not an MD , I ’ m an RN that works with oncology ( cancer ) patients , some of which are on clinical trials . I got a patient and , before starting his chemotherapy , reviewed some of his lab work with him . I told him his glucose level was 73 . Normal range is usually between 70-100 . He got really upset at this point , and asked him “ what ’ s wrong ? Your labs are within range ! ” And he said “ I need it to be zero. ” I said , “ what ? Why would you want your glucose to be zero ? ” He said he ’ s trying to meet requirements for a new clinical trial that requires his glucose to be zero . I told him , “ I don ’ t know what clinical trial you ’ re trying to get into , but if your blood glucose was zero , you ’ d be dead or dying. ” He was not convinced because I ’ m “ just a nurse , ” so I sent a message to his MD asking them to educate their patients better .', 1, 'doq702c'),
(33, 'Patient had a hard time getting pregnant . Finally conceived but miscarried . Patient has a D & C so she can try again , this time with medical intervention . We monitor her blood to ensure the pregnancy hormone is gone before beginning treatment . But she keeps coming back with high levels of hormone . Docs are worried because she might have some retained placenta or pituitary disorder and this could be super bad for future fertility . We call her in for a conversation about the hormone levels not going away . After talking together about what might be wrong , they are going to go home and think about further tests . She says `` I need to go . I have an appointment at the weight-loss center for an HCG shot . \'\' Turns out that she is on the HCG diet . HCG IS the pregnancy hormone . And this was after an hour of the docs saying `` We do n\'t know why you have these constant high levels of HCG in your blood and we are worried \'\' .', 1, 'doq948m'),
(34, 'Oncologist . Mid 50s female with considerable smoking history . Diagnosed with limited stage small cell lung cancer . We discussed her diagnosis and the current standard of care , concurrent chemo radiation . She asked pertinent questions and seemed well educated . We ’ re rapping up the consult to which she responds , “ I appreciate your time but Jesus will heal me ” . After another 30 mins she ’ s steadfast on her decision but agrees to close interval imaging . She comes back and imaging shows metastatic disease . So much for that faith healing .', 1, 'doq6l9b'),
(35, 'I work for an optometrist and it was the month before school started and a woman brought in her son to have his eyes checked for the first time . Seems like a pretty reasonable thing for any parent , even if he was a little older than usual for a first eye exam . Better late than never I guess . The mom was well spoken and appeared fairly intelligent . Everything went as normal , the doctor examined the boy and ended up prescribing glasses . When the doctor was explaining to the mom that her son had to wear his glasses all the time since he \'s nearsighted and basically ca n\'t see clearly past 5 \' in front of him . And will definitely need glasses for school . For some reason this caused a switch to flip in the mom and she spazzed out on the doctor , saying that her son does n\'t need glasses and that the doctor is only saying that he does because he wants to sell glasses . She says that she only brought her son in because there was some form for school that needed to be filled out and that doctors are all a con artists trying to push unnecessary medications and interventions . The doctor tried to calm her down and explain that he \'s only trying to help them but that she was free to get a second opinion and gave her a copy of the kids prescription and sent them on their way . About four months later the lady is back asking for another copy of her son \'s prescription . Apparently the first semester midterm results were in , and her son failed them all , because he could n\'t see the board in his classes and needs glasses !', 1, 'doqb3uh'),
(36, 'Not a doctor , but I saw a patient eating a sandwich in the waiting room before surgery , wtf ?', 1, 'doq1yrg'),
(37, '4th year med student seeing patients on clinical rotations . Patient comes in with a laundry list of chronic conditions he suffers from- fibromyalgia , chronic fatigue syndrome , etc . Guy is wearing over-the-counter braces on all of his fingers and both thumbs , as well as both wrists , forearms , knees , and shins because of a rare bone disorder he has that I \'ve never heard of- `` well that does n\'t surprise me , doctors go to med school to learn how to prescribe drugs and make money , not heal people . \'\' Ok . Patient tells me that he suffers from a rare disease that I \'ve probably never even heard of called myalgic encephalomyelitis . True , I \'ve never heard of it . Again- `` that \'s because doctors do n\'t care about educating themselves about illness and healing , they just care about giving patients drugs and getting money from big pharma . \'\' Ok . I do n\'t have a vested interest in this patient thinking I \'m smart , so it does n\'t really get to me . He continues `` educating \'\' me throughout the appointment , and I just make conversation with him , the third time he tells me about how all doctors just go to med school so they can put all their patients on drugs I just say , `` well , lucky for you , pharmacology was my weakest subject ! \'\' That actually gets a laugh out of him , and I listen to his explanations of all of his rare diseases and disorders . Appointment ends , and he leaves . I look up myalgic encephalomyelitis . It \'s the British term for chronic fatigue syndrome , which the patient *also* had . He has a weekly standing appointment with my preceptor , which is the only thing that keeps him from visiting the local ER every day , sometimes multiple times a day . His diagnosis is Illness Anxiety Disorder , although he would tell you it \'s 800 other things you \'ve *obviously* never heard of . He swears that my preceptor is the only honest doctor in the country , because he basically just has him come in once a week and talk about all of his various illnesses for 20 minutes , after which the patent returns home feeling validated . The ER docs love my preceptor . The patient is mentally ill , so I \'m not insulted by him or anything , but you \'d be surprised how many people come to the doctor to be treated for something , all the while telling the doctor how horrible they are and why all doctors are evil puppets of big pharma . It \'s like when I worked fast food and people would say `` every time I come here you guys screw up , \'\' and I \'d just think , then why do you keep coming here ? !', 1, 'doq8xkp'),
(38, 'Any variation of this ... Which I get all the freaking time . Me : So how are things going with your diabetes ? Them : I do n\'t have diabetes Me : them why are you talking metformin/victoza/whatever Them : I USED to have diabetes . Then replace diabetes with hypertension/antihypertensives etc . Or when I ask them what medical diagnosis they have and they say none while taking a ton of meds . OR when they mis name a body part ... . Prostrate , tendant , neuterus . To name a few .', 1, 'doqaggr'),
(39, 'I \'ve got two stories that stick out in my mind . The first is the mother of a toddler who came into Emerg . The kid had cruddy green/bloody stuff coming out of his left nostril , and a lot of redness and swelling of only the left side of his nose and the adjacent cheek . Mom was sure he caught a sinus infection and just wanted some antibiotics . Now I know some kids like shoving whatever will fit into their body orifices , and that this was more than likely given the one-sided nature of his condition . But Mom was insistent that he NEVER puts things in his nose . It took some convincing , but I finally got her to let me take a look . Gave a squirt of midazolam in the good nostril to settle him , then dug with some tweezers through the crud until I pulled out a big ole button battery . It would \'ve been burning his nose for a couple days . Hopefully he healed up well . ( Side note- if a kid swallows a button battery , it can do a similar thing to their esophagus . This is an emergency and needs to be dealt with ASAP )', 1, 'doqb3m3'),
(40, 'I do n\'t know if this fits perfectly , but a while back I helped open an urgent care for the first 2 years . When we first opened the doors , one of our first customers was an 85 year old adorable Asian lady who was really hard to understand but talked a lot . Anyway , this lady comes in for the first time complaining of a stomach pain which we attempted to diagnose her with something , but nothing added up for about 30 minutes to an hour of her talking until she finally told us she just felt better ... okay . So we do n\'t really mind it until next week around the same time she shows up again with the same problem . And guess what the solution was , about 45 minutes of listening to what she ate for dinner the last few nights . I think we eventually figured out corn was messing with her , but this never deterred her from coming in more . This eventually became a once a week occurrence , then a once everyday thing , until we finally started becoming a busy urgent care and we could n\'t really fit her inside our schedule . I guess it was n\'t really an r/iamverysmart experience , but I swear this lady actually came in every day thinking she was on the verge of death , until we had convince her she \'s fine . In case you \'re wondering , I \'m almost certain she \'s well over 90 now and still going .', 1, 'doq9vht'),
(41, 'Not a doctor but ... was discharging a patient and going through his instructions . I advised him to take his antibiotic with food . He asked , `` Should I roll it up in a piece of bread ? \'\' I told him he could try eating a sandwich instead .', 1, 'doq1ajt'),
(42, 'Not a doctor but I \'m a nurse who worked in the OR at a trauma center . Was doing surgery on a 19 year old who tested positive for meth and cocaine who was grilling the anesthesiologist about every drug we were going to use in surgery because `` he does n\'t like putting chemicals in his body \'\' Got ta stick with that organic , fair trade , Non-GMO cocaine', 1, 'doq9wgj'),
(43, 'Not a doctor but a gastro nurse . We had a recurring patient who was just a really very strange lady . She had a stoma that absolutely stunk to high heavens because the last 20 years she has not been cleaning it properly . Every single day her stoma would come off because she was twisting the drain tube and would n\'t allow us to change it . So this lady was really rude and would shout at us too , and one night shift I could n\'t take it anymore and I snapped at her . I did n\'t yell , but I was overly stern about the fact that if she did not let me clean and treat her stoma then the MRSA that she was n\'t able to get rid of because she refused hibiscrub washes would eat her alive . In hindsight I did n\'t handle that very well , but she let me change the stoma . So this entire ordeal she \'s yelling at me that her stoma bags are not cut to fit her stoma , that they are too small because her stoma is `` 50cm by 50cm \'\' to which I corrected her , saying that \'s impossible . She was adamant that \'s how big her stoma was ( it was a 30mm diameter ) . When I was cleaning the stoma , she yelled at me because it was hurting so she wanted to just pop the new one on . I explained it was hurting because of infection as she never cleans it . She proceeds to tell me that she knows better because she has had the stoma for nearly as long as I \'ve been alive . I eventually ended up telling her to shut up and let me do my job , which seemed to work and the stoma did not come off again that shift . When she was eventually discharged ( she refused every placement to the point where we almost considered a court order to evict her ) , one of our F1 \'s nearly cried with relief .', 1, 'doqa2qy'),
(44, 'Obligatory `` not a doctor \'\' , but I am a medic . Back when the Ebola crisis was huge and media was losing their shit over it , I had a very interesting call . There are definitely other iamverysmart instances , but this was at the forefront of my mind and it makes me both laugh and cringe at the same time . We were riding 3 deep , all female crew . Dispatched to a sketchy part of town in a bad apartment complex for `` unknown urine problems \'\' . Um ? Okay . I \'m taking the backseat on this one , kinda just going to observe . We \'re met at the ambulance by a late 50 \'s , early 60 \'s African-American male . Unkempt , yellow eyes , clothes that look like they \'ve been slept in for a week , dirty nails , general uncleanliness . He asked us in a very thick accent where the men were . `` There are no men , it \'s just us . We all have the same training . If you \'re more comfortable with a man , we can get a male crew here , but they wo n\'t do anything different than we will . \'\' `` Women ca n\'t be in male positions . You should all be home taking care of your husbands and children . \'\' Sigh . One of THESE people . I respect and get cultural differences , but sheesh ... it gets old . After going back and forth for a few minutes about our training and trying to explain to him in futility that none of us ( at the time ) were married or had kids , we finally tell him , `` Look . We are n\'t here to discuss us . We are here to help you . YOU called US . What made you hurt so bad to call 911 ? We have to assess you . We ca n\'t just get another crew over here not knowing what the problem is . What issue are you having ? \'\' `` My penis . I think I have Ebola . \'\' Cue the eye rolls . `` You ... have Ebola ... in your penis . \'\' I said . It was n\'t a question . `` Yes . I just came back from Liberia last week and I have n\'t urinated in 4 days . \'\' Cue him spewing all tons of what his culture says about illness and Ebola , his cousin who was a doctor in Africa told him he had it , and it could be cured by banging a virgin and eyeing all of us like we \'re meat . What the fuck ? We wound up ignoring him and continuing our assessment . He was SO adamant about it though ! Cited obviously fake odds and `` facts \'\' and bragged he had sex with several women in Liberia , and that \'s how he got Ebola . `` Um ... okay . are you in pain ? Can we take a look ? \'\' He let us get a set of vitals , but then he pulled his pants down . ( Conveniently forgetting his request for men and apparently the fact all of us `` knew nothing \'\' and should be taking care of our husbands or whatever . ) His balls were the size of grapefruits , his pecker was turtled to the point it was basically inverted . His bladder was palpable and swollen too . So the dude was legit , he definitely had some issues going on . He was CONVINCED he had Ebola . Only in his penis . Also I \'m sure he was more shocked that we were n\'t fawning over his gross-looking genitalia , us being a crew of women . I should note , this dude very much so did not have Ebola at all . We took him to the hospital and when we told the receiving nurse what the chief complaint was , she brought the doctor over and asked us to tell him to his face what the patient was complaining about . Dick Ebola . When we went back dropping off another patient , we asked how Patient Zero was . They laughed and said he just had some prolapsed organs in his balls and his pelvic floor was trashed . Had to stick a catheter down his urethra to drain the pee . No Dick Ebola , but he definitely was riddled with STDs . I do n\'t know if this classifies as iamverysmart material , but I thought it was relevant . Virgin sacrifices to help your stank dick .', 1, 'doq9qzh'),
(45, 'Nurse here . The number of American 20-something males who do n\'t know what circumcision is is ridiculously high . They think that boys are `` born circumcised . \'\' Evidence : New fathers ( and mothers ) asking me what \'s wrong with their newborn son \'s penis . `` Ummm ... He still has his foreskin . Many parents choose to have it removed when the baby is a couple days old . It \'s called circumcision . \'\' Often followed by a parent \'s question : `` What \'s circumcision ? \'\' That \'s when I face palm .', 1, 'doq9e5y'),
(46, 'I work in physical therapy and often get expert patients who do n\'t want to trust my judgment as a clinician . They are so certain their doctor gave them instructions that are far from what is clinically safe or recommended . Then when presented with a kind but stern response , they want to make it seem like I have n\'t been lisenced for many years and or may be an expert in the area . At this point in my career I \'ve seen hundreds of hip and knee replacements and even have spoken to most of the big name orthopedic surgeons in my area . I know what I \'m doing and I know what these surgeons expect of me during my physical therapy . If we do n\'t get the right outcomes they will not send patients to us , it \'s important that we know what we are doing to ensure job security . Had one last week that was giving my co worker a hard time over their weight bearing status so I stepped in and told them that we have to follow the most recent doctors orders regardless of any verbal orders a patient receives . If the doctor did n\'t transcribe an order it \'s for all intents and purposes not valid . This patient was so sure of themselves so I called the orthopedist on speaker to confirm the order . The orthopedist was very pissed that they were lying to us and scolded the patient . Apparently they had been pressuring the doctor for increased weight bearing to progress their walking but the doctor had wanted to play it conservative and limit weight bearing for a few more days/weeks . It was pretty gratifying to watch their reaction and see them scolded for lying . TL ; DR : patients can be pains in the asses and not trust your judgement and treatment . Patient was lying and was put on the spot during conference call with doctor , then scolded by Dr. for lying .', 1, 'doqagh5'),
(47, 'I had a patient tell me they clean their contact lens with MILK because it “ gets the acid off them ” . I had a patient ask me if it was ok to look briefly at the sun for short periods of time to improve their eyes . I was amazed and kindly suggested they don ’ t . Had a patient put EAR DROPS in one eye . White part of eye ( conjunctiva ) scarred over entire cornea and was left with no light perception . Asked me if he should have come in sooner . It had been 4 months . Patient with a retinal detachment told me to put more medicine in their glasses to see better . Macula was off so they could barely count fingers 4 feet in front of face . I could go on and on ...', 1, 'doqbuiv'),
(48, 'Not my story , rather my collegues . A patient was admitted for anemia and a localized cancer was found , she was refered to surgery so she can get cured from her localize cancer and she started telling everyone that it was the doctors who caused the cancer and that she was doing just fine before coming to the hospital . She lectured the surgeon and my collegue , who pleaded her to get her surgery ( so that the cancer doesn ’ t advance ) , and yet she refused , saying she knew better and probably didn ’ t even have cancer ...', 1, 'doq70dn'),
(49, 'Paramedic here . Transported a guy who was adamant about only using homeopathic medicine , natural/healthy living , etc and refusing meds/interventions/x-rays on this basis . He also smoked a pack a day . The ED doc called him on this nonsense with something along the lines of `` you smoke so you \'re not that homeopathic , you \'re getting a chest x-ray . \'\'', 1, 'doqayp5'),
(50, 'Poor old man with an unresectable brain tumor ( glioblastoma ) was in the ICU after surgery to debulk the tumor . His family included a pediatrician and a cath lab technician . The pediatrician daughter kept trying to get us to give the patient some homeopathic BS `` medicine \'\' that she brought with her because `` I work at Harvard and we use it all the time there , I \'m surprised you do n\'t have it here . \'\' I seriously doubted she was truthful about where she worked , and I 100 % guarantee that if she worked at any reputable practice they were not treating kids with whatever crock homeopathic BS she was pushing on us .', 1, 'doq84yf'),
(51, 'A friend of mine is on her last year of her medicine career . She told us about a group of women they recieved , of very low social position , had gotten pregnant and wanted to abort ( bear in mind this is not the US , there are no abortion laws here ) . Well , they somehow heard of this method where you make a paste out of smashed parsley and put it in your vajayjay to abort . As it turns out it actually works , but because parsley has this enzime ( forgot the name , I think the substance is of psoralens family ? ) that mixed with other stuff causes severe cellular death and necrosis . Some died out of a necrotic whooha some turned into a real-life barbie , and not in a good way', 1, 'doq3xbk'),
(52, 'So I \'m not a doctor but a girl I went to high school with is in her second year of med school and still posts anti vax stuff for all to see .', 1, 'doq7v89'),
(53, 'I \'m still just a medical student , but our hospital sees a lot of poor and poorly educated patients since we \'re a big tertiary hospital in a developing country . Worst I \'ve seen so far are the old ladies who everyone in the family turns to for health advice , their only qualification being seniority . They usually have a bunch of superstitions that end up contributing to the patient \'s condition in the first place . I once saw a neonate brought to the ER for a really bad oral infection , and the mother clearly had n\'t taken a bath since the delivery ( it \'s a common superstition here that mothers should n\'t take a bath a week or so postpartum ) , so we figured that \'s the source of the infection . While we \'re assessing the patient , the doting grandmother in the background decides she has to comment on everything we \'re doing ( remember she \'s probably the one who advised her daughter not to take a bath ) . I just had to shut her down because : A ) It was late and people were running out of patience in our understaffed , under-equipped ER ; B ) They \'re more worried that pulse oximetry is hurting the baby \'s tiny widdle toes when there \'s freaking pus leaking out of the baby \'s very inflamed salivary glands . I mean , I get that infections like these are a disease of poverty , that their poor education is just indicative of a wider systemic problem that Philippine society fails to address time and again , but by golly does it get annoying . Edit : Formatting', 1, 'doqb2n2'),
(54, 'Ah , if I could legally share pictures . Late to the party , but had a 63 year old asian woman come in with \'a lump on her breast \' . She said it had been there for 6 months , but she was treating it with chinese medicine . She had meat 2 weeks before the visit \'and that \'s why it \'s getting worse \' ... I ask her to put on a gown thinking im going to have to examine the breast to find the lump.. The lump found me . 7x 9 cm , black , red , inward nipple and raging eczema-like ( Paget \'s of breast ) . Sent her to breast clinic urgently .', 1, 'doqcbr3'),
(55, 'During my rotation at pediatrics we had an unconscious 16 y.o . male with a prior history of Type 2 diabetes . The mother had come home from work and found him acting `` strange \'\' with slurred speech and stumbling around so she immediately drove him to the hospital where he passed out in the car . Running the full `` Rainbow \'\' for blood draws and tests the kid had a blood glucose of 285 and a BAC of .11 Near as we can guess the kid was drinking after school while his parents were away , got too drunk , did n\'t know that alcohol turns into sugar and wound up drunk and unconscious from both the alcohol and the lack of insulin .', 1, 'doq84qh'),
(56, 'No , he did n\'t have a water allergy . That \'s impossible . He had vomited one time after drinking a lot of water and thought he was allergic to to it .', 1, 'doqb0wo'),
(57, 'Patient had an anoxic brain injury from drug overdose , she was 23 . Her father demanded a brain matter transplant and oxygen directly put into her brain to fix it . Then he decided they would trach and peg her , send her to a nursing home , and wait for a cure , because we didnt know what we were doing .', 1, 'doqb5y2'),
(58, 'I \'m not a doctor but a physician assistant . I had a 15 year old girl come in with frequent headaches and stomach aches . Exam was completely normal as were all her labs . I told her Mom , who was in the exam room , that it could be stress . These two symptoms with no physiological evidence were typical for individuals who are stressed out . Just a thought . The girl looked at me pleadingly when I said that but the Mom said , `` What does *she* have to be stressed about ! ? ! Blew my mind . This woman was n\'t that far removed from adolescence herself . But I \'m a professional and I told her that whereas just a few years ago her daughter was simply an anonymous child happily playing with her friends now her body was changing , she was filled with all sorts of new thoughts and emotions due to her puberty hormones . She was probably getting all sorts of unwanted attention from boys and men . She \'s getting all sorts of mixed messages from the media and who knows what kind of advice from her friends . Coping with so much change and outside influences would lead to lots of stress . What I did n\'t say was she clearly ca n\'t discuss it with you , you clueless idiot . But I censored that .', 1, 'doqbjul');
INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`) VALUES
(59, 'During oncology fellowship , I explained to a woman and her family that she needed a bone marrow transplant . I told them the donor would either be an unrelated match , or a matched sibling . I also explained that often times we can collect stem cells from the blood of the donor and do n\'t need to do bone marrow harvests nowadays . Which is when the patient \'s sister asked with a completely straight face , `` So can I donate my menstrual blood for the transplant ? \'\' It literally took every ounce of my being to be able to answer her with a straight face and not collapse into a fit of laughter and simultaneous vomiting into my mouth .', 1, 'doqcgqw'),
(60, 'Anytime someone refuses to vaccinate their kids . Here \'s just a small sample of some of the reasons I \'ve been given : ( 1 ) causes autism ( 2 ) made from aborted babies ( 3 ) big pharmacy scam ( 4 ) unnatural ( 5 ) my kid cried when you gave him his vaccines last time ( 6 ) I never got these diseases as a kid , so my kid does n\'t need the vaccine Seriously , fuck you people . I feel sorry for your kids .', 1, 'doqcwn4'),
(61, 'Ladies and gents , it \'s opposite time . Me , 24 with a pacemaker going to have gall bladder removed . Doc comes in and says I need a MRI , I strongly refuse because all the metal and what not in my chest . I argue with this doctor for 10 minutes and he said I \'m going to have to take a look at your chart . I instead ask to be discharged to find a new doctor .', 1, 'doq8o1o'),
(62, 'Obligatory not a doctor . When I first turned 21 , I really started experimenting with light drugs ( Pot , Shrooms , etc ) and drinking . A lot . One night I was with a bunch of friends under the influence of everything I could get my hands on and I sliced myself open . It was small , deep , cut but it was shooting blood ( Like an arterial bleed ) . So after trying to cauterize it with a steak knife , vodka , and a lighter , I went to the ER . After arriving I promptly see a doctor ( dead of night + drunk guy spraying blood from his foot all over the ER waiting room , screening room , and bed = fast treatment ) After asking about which drugs I was one and how much alcohol I \'ve had , I started saying `` I \'VE SEEN EVERY EPISODE OF GREY \'S ANATOMY ! THIS IS AN ARTERIAL BLEED ! I \'M GOING TO BLEED OUT . THESE QUESTIONS DO N\'T MATTER ! \'\' ( Yes , I realize they matter but I was on drugs ) .Some other quotes from that night `` THIS IS N\'T LIKE THE HOSPITAL IN GREY \'S ANATOMY . NONE OF YOU ARE AS HOT AS THEY ARE \'\' , `` AMAAAAAAZING GRACE , I \'M GON NA DIE , CAUSE THIS DOCTOR WO N\'T SEWWWWW UP MY FOOOTTTTTT ! \'\' . **TL ; DR : I got shitfaced on several different types of intoxicants and proceeded to harass ER staff with my \'knowledge \' of modern medicine . Knowledge acquired via episodes of Grey \'s Anatomy . **', 1, 'doqc3pf'),
(63, 'Well , I \'m a Pharmacist , but I have one that would fit here : Female patient came into the pharmacy complaining that her Nuvaring ( contraceptive that you place vaginally once a month ) was too small . I was very confused , as these only come in one size . Then , I noticed that it was around her wrist like a bracelet/hair tie . SMH . I counseled her on correct usage and said she made need a pregnancy test .', 1, 'doqdkua'),
(64, 'RN here . I see some crazy stuff , but one thing that stands out was the time I was admitting a guy to the hospital . I ca n\'t really remember what for but he was about 400lbs , diabetic , heart disease , you name it . Anyhow I \'m at the computer going over some admission questions with him and his 10 family members who are crowded in the room with him . A few minutes in he starts complaining that he \'s thirsty . He needs something to drink RIGHT NOW . So I get on my phone and call the nurse assistant and as her to bring in some ice water . As soon as the words are out of my mouth the whole family screams `` NOOOO ! NO WATER ! HES ALLERGIC TO WATER ! \'\' Well this is gon na be a problem . Turns out the guy had been drinking nothing but sprite and sweet tea for years because of his `` water allergy \'\' . The next question the wife had was `` where are we all supposed to sleep ? \'\' The whole family , 10 people , were planning to stay at he hospital with him . You ca n\'t make this shit up .', 1, 'doqamqo'),
(65, 'It happened almost a year ago . I just finished my MBBS and I was interning at the same hospital I graduated from . As a part of our internship program I was posted in a small clinic that deals with minor medical issues which do n\'t require any major investigations . So one evening this guy walks in with a complaint of neck pain from morning of that day . After asking a few questions it was clear that he slept in a weird position which was the cause of the pain . I tried to explain to him that the pain is temporary and there really is no need for him to take any medication ( It was a govt . clinic and we were running short of supplies ) . But the guy was adamant on getting a medication . So I prescribed a pain killer , and since this particular pain killer was known to cause gastritis , I also prescribed a drug called ranitidine ( sold as a popular brand name called Rantac in India ) as well . This guy knew that rantac was something that doctors prescribe for stomach pain . And he had no idea what the other drug does . But once he saw that I have prescribed , rantac he threw the prescription literally on the floor and started to complain to the nurse that we ( my friend an I ) did n\'t know anything and that we have prescribed a medicine for stomach pain when his complaint was neck pain . I turned to the nurse and just explained to her why I did what I did and once he heard that he silently took his prescription and walked away from there .', 1, 'doq8r9p'),
(66, 'A friend of mine is a nurse . And while I ca n\'t verify her story she did claim once that a mother of a young teenage boy who was in a medically-induced coma had approached her and asked her if she would jack him off in order to relieve the inevitable stress he was suffering from . She was under the belief that ejaculation would somehow calm this kid who is in a coma . When my friend refused the mother said she would take it upon herself to provide said relief', 1, 'doqcjwo'),
(67, 'I ’ m not a doctor , I ’ m a student PT , and while my story does not match up to some/most of the ones here , it ’ s still worth to tell . Over the summer that just past I was doing my orthopedic internship . Working with a female patient , early 60s , just moved into a senior living community but hated the label it gave her and liked being really active ( bike riding , walking , golf , etc ) . She is at the clinic for a right meniscus tear , and it ’ s trying the conservative approach to avoid having to get surgery on her arthritic knee . Now , I need to emphasize that this women LOVED being active . Like even during therapy , she would keep up her golfing , pickle ball , etc . I would always remind her to not do so much to let the knee heal and to focus on her exercises , and to lay off those high stress activities . No matter how much I told her to do less or stop altogether , she just continued to play . I couldn ’ t stop her , so instead of ruining my rapport with her , I just reminded her at every session we had . Well one fine session comes along , she tells me her knee is hurting a bit extra ( surprise surprise ) after playing pickle ball all weekend long . I told her once again to lay off those activities , and to avoid golfing tomorrow ( she would golf on Tuesdays ) . Of course , she says no , then follows up with this : “ ya know , golfing takes the stress of the knee with how it moves during your swing . So it ’ s good I ’ m doing that ” Except it doesn ’ t . Literally , 3 special tests used in examination to assess the presence of a meniscal tear mimic the motion done by the back leg in a golf stance . I just smile and say okay , while I ’ m internally screaming inside . This was also during my last week of the internship , so when I saw her again later that week , I became a bit more adamant about her activity level and her condition . I handed her an article about meniscal tears and the involvement of the rotational aspect that can lead to further tears , told her that while I know that I can ’ t convince her to quit all her hobbies , that she has to stop most of them or she will never recover conservatively , and that she can absolutely replace it with a water aerobics class that her community runs .', 1, 'doq9dzs'),
(68, 'I ’ ve not had any r/Iamverysmart answers in psychiatry but I did have a patients Dad who was adamant that his son wasn ’ t psychotic , he was just lazy and didn ’ t want to work . I mean , he thought he carried a deamonic parasite that drained his soul but yeah ...', 1, 'doqcczr'),
(69, 'I am an ENT . I had a patient call me on the weekend once and the conversation went like this . Me : Yeah this Dr. ___ with ENT Some guy : Umm , well my testicles really hurt I was sure this was a joke : dude I am an ears , nose and throat surgeon Some Guy : yeah I know . I am being treated for a chronic cough Me : ok ? Some Guy : well you know how when you go to the doctor and sometimes they put their finger down there , tell you to turn your head and cough ? Me : yeah , they are checking for a hernia Some Guy : So you think me coughing is why my balls hurt ? Me : No Some Guy : you sure ? Me : How bad do your balls hurt ( yes I said balls to a patient ) Some Guy : I ca n\'t even put on my underwear Me : Go to the ER dude', 1, 'doqd1hv'),
(70, 'I have one . I got this from my friend , who is a doctor on the children \'s ward in a rural hospital . These parents bring in their child whose hair is infested with lice . The lice was visible to the naked eye and could be seen crawling on the child \'s clothing . While the medical staff examined the child in order to determine a course of action , they discovered the child was covered in a white powder and smelled heavily of chemicals . They asked the parents what the substances and the smells were and they said it was Sevin Powder and flea and tick spray they used on their dogs on the family \'s farm . Needless to say , social workers were notified about this case .', 1, 'doqbt4p'),
(71, 'Had a pregnant woman who ’ s ultrasound showed the baby had Hypoplastic Left Heart Syndrome ( Half a heart , 100 % fatal without surgery ) who stopped seeing her OB so she could have the baby in the forest and bathe it is breast milk to cure him . SMDH', 1, 'doqb3lw'),
(72, 'Medical student here . Was clerking a patient who told me her lung cancer wasn ’ t due to the 60+ cigarettes she had been smoking since adolescence , rather it was due to a knock she received by stumbling into her car door . Her logic was that the tumour was at the same corresponding spot in her lung to where she bumped her chest . She was convinced we were wrong about the cause .', 1, 'doqc5lt'),
(73, 'This deaf lady brought her less than 6 month old in to our emergency department . Based on the child \'s emergency severity index , they had to wait about 1 hour . After setting up the translation service she lets us have it . `` How come we had to wait so long ? This is disgusting . You are disgusting . Look at my baby she is very sick . Just look . She could die . She should have been seen sooner . I hate this place . I \'ve always hated this place . I \'m never coming here again . I want to just leave right now . \'\' There are literally patients being intubated in the background . And her infant is cooing , smiling , having apparent fun . Vitals normal . Not even so much as a fever . We still sent that bitch home with antibiotics . I fucking hated humans while working in the emergency department .', 1, 'doq7g5x'),
(74, 'The opposite happened to me actually , my doctor was either A. Dumb or B . Did n\'t want to admit he was wrong . Also before you say I \'m just like one of the people in this thread finish reading . This was when I was 11 going on 12 , I missed a couple weeks of school due to stomach pain and got referred to a pediatrician . He saw I had a history with constipation and had some constipation related symptoms and prescribed me laxatives . A month goes by , stomach still hurts , and he sends me to get an X-ray . Nothing comes up . Another month , I \'m crapping 5 times a day due to laxatives , and now blood is visible in my urine . Still constipation . A fucking year and a half goes by before he reluctantly refers me to a nephrologist for the blood in my urine , does n\'t even do any tests or anything , just tells me it \'s IGA nephritis based on previous work I had done and my symptoms . He prescribes me medication and my pain gradually goes away over a 2 month period . I get driven to the IWK ( big ass children \'s hospital ) for a biopsy , lo and behold it was IGA nephritis like the doctor had said it was . 2 years go by and everything is peachy , doctor poop pains calls again and wants to do a check up , he tells me I have constipation . My parents tell him they \'re done with his shit ( heh ) and he never calls again .', 1, 'doqa9z4'),
(75, 'We had a vhs of this when I was a kid . I distinctly remember the robot one .', 2, 'doq542k'),
(76, 'That \'s a great video . Wow .', 2, 'doq3xzy'),
(77, 'I have a whole new appreciation for animation .', 2, 'doq4d94'),
(78, 'I watched this as a kid over and over again ( in the 90 \'s not the 40 \'s ) . It was definitely one of my favorites .', 2, 'doq70x8'),
(79, 'Who is the guy inserted at 3.03 ?', 2, 'doq7oyq'),
(80, 'A redditor `` restored \'\' them a few weeks back . https : //www.reddit.com/r/movies/comments/6xn4q4', 2, 'doqcguw'),
(81, 'The animation from Batman the animated series was heavily inspired by these cartoons . You can totally see it .', 2, 'doqae8t'),
(82, 'They invented the rotoscope for that cartoon ? ! Incredible .', 2, 'doq5y97'),
(83, 'Max Fleischer ? If not , check em out .', 2, 'doq71bx'),
(84, 'This is one of my favorite YouTube videos ever . I love Superman and people in my family know this . After they went public domain , I got a copy for birthdays and Christmas . I should probably use them as coasters .', 2, 'doq5pel'),
(85, 'Who \'s the guy at 3:04 ?', 2, 'doq7ttv'),
(86, 'Interesting . But i totally disagree with the notion that origin stories are boring .', 2, 'doq948g'),
(87, 'I watched this as a kid , as well as the black and white TV show . I \'d sit up real close to the TV looking for wires as Superman flew . Not seeing any , I concluded I too could fly . So I tied a towel around my neck and jumped down the 20 stairs at Grandma \'s house . Somehow did n\'t break anything . So I ca n\'t fly , but maybe I \'ve got unbreakable bones .', 2, 'doq979y'),
(88, 'I watched that 40 \'s superman at my grandparents house when I was a kid and loved every minute of it . It \'s very 1940s , but it \'s actually really good .', 2, 'doq7w80'),
(89, 'Wow , I remember seeing some of these cartoons when I was younger ( I \'m 30 ) .', 2, 'doq92uz'),
(90, 'That \'s from the 40s ... ? ! Wow', 2, 'doqb8e6'),
(91, '`` Notice that in the 1941 cartoon Superman fights for “ truth and justice ” . “ The American Way ” was a catchphrase of the anti-Communist right in the ‘ 50s , made infamous during the McCarthy witch hunts . “ the American way ” was added to the Superman radio show ’ s narration during World War II , and was removed from it after the war in favor of narration speaking of Superman as a champion of tolerance and a fighter against prejudice . The TV show then restored the “ American way ” line as you say . It was the radio show that really introduced a lot of familiar Superman elements — the famous narration , the catchphrases like “ This is a job for Superman ” and “ Up , up , and away ” ( so the radio audience would know what he was doing ) , the characters of Jimmy Olsen and Perry White , and kryptonite . The Fleischer cartoons borrowed the narration from the radio series It was added to the tv show to comply with the tenor of the times . \'\' One more thing Kaptainkritian has a great channel and every video is flawless and in-depth - https : //www.youtube.com/channel/UCuPgdqQKpq4T4zeqmTelnFg', 2, 'doqc9hr'),
(92, 'I love the Fleischer brothers cartoons . Their Betty Boop cartoons were totally bizarre . https : //youtu.be/wlLHZruDCAA', 2, 'doqck8s'),
(93, 'I love the line `` He \'s not an an alien . He \'s not a god . He \'s just a dude from Kansas , doing the right thing . \'', 2, 'doqfg3m'),
(94, '/u/kaptainkristian < 3 his work', 2, 'doqan88'),
(95, 'That \'s crazy to think animation that good was created during world war 2 , nowadays animation ( with some exceptions ) seems so bland . And of course the half a million per episodes is a big plus , but also having such talented people working on the show , without them it would look like the 1960 \'s Superman', 2, 'doqchn2'),
(96, 'Look at all that 1940 \'s Sakuga . Would have never figured .', 2, 'doqg2dz'),
(97, 'I just realized we ’ re not that far away from having the ‘ 40s again .', 2, 'doqhqqs'),
(98, 'It should be noted that the half-million-per episode is the inflation adjusted cost . In 1941 , the cost was approximately $ 30,000 .', 2, 'doqhy4z'),
(99, '[ deleted ]', 2, 'doq6rpf'),
(100, 'Paging /u/kaptainkristian .', 2, 'doq63zv'),
(101, 'Truth , Justice , and the American Way .', 2, 'doq8x9q'),
(102, 'I \'ve actually got those on vhs somewhere ... blast from my past .', 2, 'doq8z2j'),
(103, 'Oh man , I remember these ! We had a few of these on VHS when I was little . It \'s weird , usually when you look back at this stuff , you laugh at the quality ... but it still looks amazing .', 2, 'doqa8i1'),
(104, 'Another great work of Max Fleischer is his animated movie version of Gulliver \'s Travels .', 2, 'doqb2oe'),
(105, 'The animation is incredible . I love how much detail and shadows are put into the drawings . A lot of effort went into making the Fleischer brothers Superman cartoons .', 2, 'doqbp7z'),
(106, 'Max Fleischer Superman . The best , well , second best behind Batman TAS , which in many ways owes its existence to Fleischer', 2, 'doqc3vg'),
(107, 'I think I found them at Archive.org . For the curious ... https : //archive.org/details/Superman1941-1943HighQuality', 2, 'doqcbx3'),
(108, 'These were the only cartoons at my grandparents ’ house as a kid . I always wondered when the next “ good ” Superman show was going to come out . I think my grandpa set my standards too high ha .', 2, 'doqcina'),
(109, 'Thanks for reminding me of those - enjoyed those cartoons while growing up and haven ’ t thought about them in years . Nice job .', 2, 'doqd4c3'),
(110, 'Did he really invent the rotoscope ?', 2, 'doqdk32'),
(111, 'This is beautiful . I want a Blu-ray .', 2, 'doqdz79'),
(112, 'That ’ s amazing', 2, 'doqe95y'),
(113, 'I had the VHS for a few episodes of this , I loved it as a kid . Fantastic to hear that there ’ s so many more episodes than I thought , I ’ ll have to track those down . Sky Captain is one of my favorite movies , and it ’ s eye opening to see how much was borrowed directly from the Superman cartoon .', 2, 'doqebki'),
(114, 'These were MY SHIT as a kid ! ! I fucking love these ! ! ! ! ! I still have the vhs in my closet !', 2, 'doqef4w'),
(115, 'Why in the world is Gucci mane at minute 3:03 ?', 2, 'doqej5f'),
(116, 'Oh my god , I used to have some vhs of this cartoon when I was younger . I would literally watch them all the time . Had no idea it was made in the 40s .', 2, 'doqerrn'),
(117, 'TIL Godzilla was inspired by a Superman cartoon .', 2, 'doqf3k5'),
(118, 'That \'s from the 40s ? Looks great', 2, 'doqf8rz'),
(119, 'It \'s disappointing how the quality of cartoons never seemed to achieve that level . The opening of the original TMNT was great , but the show was always a drop in quality .', 2, 'doqff8j'),
(120, 'Wow , that \'s amazing !', 2, 'doqg9ms'),
(121, 'I remember my Dad picking up one of those bargain DVD \'s with a couple episodes of this . I was always amazed at the quality of work for an animated series , when at the time it was reserved for feature length films .', 2, 'doqgat7'),
(122, 'At the 0:50 mark , is that motherfucker Nicolas Tesla supposed to be dead ? Cause sure hes the far right in that group photo just chillin .', 2, 'doqgw23'),
(123, 'Kind of related ... do any of you guys know what the name of the comic book series of Superman is called where he is old and wearing a loose fitting grey suit ? I \'ve searched through google images but I ca n\'t find it . I \'m not looking for the version that is in the future and he is wearing a black suit . I think he might also have a beard . I feel like it was probably written about the time that the Russian Superman came out .', 2, 'doqh23r'),
(124, 'The real reason for the Korean War : access to cheap Korean animators .', 2, 'doqhxr1'),
(125, 'This video made me look at Superman and cartoons in a different light . I think we forgot how much effort goes into creating a cartoon .', 2, 'doqhynh'),
(126, 'I discovered something truly beatifull today , thank you !', 2, 'doqi9ua'),
(127, 'Man that was beautiful', 2, 'doqihp0'),
(128, 'What a fantastic video . Youtube is full of so much fluff that you forget that there is some really great stuff still to be found there .', 2, 'doqintw'),
(129, 'I had this on vhs when I was a kid !', 2, 'doqiru7'),
(130, 'Not a half million to draw . A half million to produce . That includes the cost of drawing , but also the filming that goes in to the rotoscope , sound effects design , voice acting , everything involved in the process after reusable equipment acquisition and before distribution .', 2, 'doqisi5'),
(131, 'I thought this Superman cartoon was pretty well known in pop culture , nevertheless good for you for discovering this gem . Personally , my TIL should be `` Superman can fly bcz animators were trying to cut cost . \'\' XD', 2, 'doqiuhc'),
(132, 'This video is low-key dissing DCEU Superman , not that I \'m complaining .', 2, 'doqivvj'),
(133, 'Funny I caught a show at like 3am the other night about how Superman defeated the KKK and they showed some clips of this cartoon . I was like wow that looks fucking awesome I need to find those', 2, 'doqivw7'),
(134, 'There were a whole series of these . They deteriorated after the first few . I do n\'t remember if that \'s because the Fleischers lost good people when they moved to Florida , or when Paramount started messing with them .', 2, 'doqiypa'),
(135, 'So I ca n\'t find any source on that new superman run where he is de-powered , and I really need to know the writer .', 2, 'doqizj1'),
(136, 'It \'s honestly not much of a surprise given the era , though I had n\'t specifically heard of this cartoon . Cartoons of that period were pieces that were shown in cinemas as high-brow entertainment . Custom sound effect work , orchestral soundtrack , full-colour , teams of artists , writers which literally won Oscars for their work . It was much later in the 60s and 70s that the likes of Hanna-Barbera cheapened them way down for TV and turned the medium into one geared mainly for children .', 2, 'doqj280'),
(137, 'A friend \'s dad always watches these , and so I have seen a lot of them . I now have a new appreciation for them . Thank you .', 2, 'doqj2ta'),
(138, 'Wow , when I watched those as a kid , I had no idea . Half a million per episode huh ...', 2, 'doqj3g9'),
(139, 'So , where does he put his Clark Kent clothes ?', 2, 'doqj87k'),
(140, 'You just learned that today ?', 2, 'doqj894'),
(141, 'So noone else saw the Gucci Mane headshot transition at the 3:03 mark ? What the hell is it there for ... .', 2, 'doqjb44'),
(142, 'Love Kaptainkristian', 2, 'doqjdwo'),
(143, 'Used to see these on old 90s Cartoon Network . Think they were included in toon heads among other cartoons that had some real neat trivia behind them . I will say they do hold up rather well in the animation aspect .', 2, 'doqjqmi'),
(144, 'I love KaptainKristian', 2, 'doqjtk2'),
(145, 'Definitely let me respect Superman more , as a hero and as a inspiration for lots of other animation .', 2, 'doqjwzc'),
(146, 'Max Fleishcer made these , he also made alot of the best Popeye cartoons and was one of the few Disney competitors early on , so amazing and worth a watch If you \'ve not seen any of his stuff .', 2, 'doqjxid'),
(147, 'Hmm . I \'ve had these on one super collection of VHS for years . The series also has Mighty Mouse and another cartoon that starts black and white and it \'s about dwarves mining colors from the depths so they can bring the spring colors .', 2, 'doqjxz3'),
(148, 'Fucking love Kaptainkristian .', 2, 'doqk1n0'),
(149, 'IIRC the copyright for these has expired and they \'re free to download . I had them all on my iPod about 10 years ago . They were on a podcast called classic cartoons or something similar .', 2, 'doqk2l5'),
(150, 'I watched these over and over when I was a kid .', 2, 'doqk7kb'),
(151, 'I have two volumes of this , im a millennial .', 2, 'doqk8ju'),
(152, 'Modern computer generated stuff will never look as good as the old school hand drawn stuff will to me . I get that its an easier and cheaper way to get cartoons our but ... I miss the way cartoons used to look .', 2, 'doqk9er'),
(153, 'I remember watching these on VHS when I was a kid . If you have n\'t seen it , you should definitely try . They hold up extremely well and it \'s fun to see all the original tricks used in old animations .', 2, 'doqkbe9'),
(154, 'I do n\'t think the 1960 \'s superman looks terrible .', 2, 'doqkbnk'),
(155, 'TIL superman could n\'t fly before 1941 .', 2, 'doqkdu7'),
(156, 'I recently watched MoS and I think they needed that 25 mins of intro to set up Zod and Jor-El \'s characters way more . The needed to explain the genetic codex , why Zod \'s rage against Superman was so motivated . I mean , imagine that movie without both Jor-Els devotion to Krypton \'s future and Zods epic `` I will find him ! \'\' line . They are iconic .', 2, 'doq6c8t'),
(157, 'HOLY FUCK that was AMAZING', 2, 'doq7ehe'),
(158, 'That \'s awesome . Had these on VHS as a kid . They were pretty fantastic .', 2, 'doq9gh3'),
(159, 'Saying X2 was better than X1 . Ohh boy . This guy should leave his opinion out of this nice history lesson .', 2, 'doqg554'),
(160, 'At like 3:03 why is there a random black guys face ? E : it \'s not random it \'s actual Gucci mane from when he had his ice cream face tat . Totally makes sense now .', 2, 'doqdte7'),
(161, 'I saw a bunch of these in a video podcast I found on iTunes ( I think it was called Vintage Tooncast ) . There were a couple of kinda racist ones . I remember one in particular called `` The Japoteurs \'\' about Japanese saboteurs ( called Japs in the cartoon ) Not anywhere near as racist as the Private SNAFU cartoons that the US government contracted Warner Bros to make during the war . Those are seriously racist .', 2, 'doqj9cm'),
(162, 'Something about the commentator irks me he sounds smug . I did enjoy the animation though', 2, 'doqde3y'),
(163, '`` Golden age \'\' , spend millions , shit quality , nobody watches , show is forgotten . Am I missing something here ?', 2, 'doqhp0y'),
(164, 'Most of my own stories go along similar lines to `` patient has chest pain driving a coach load of school children , thinks its indigestion , swigs bottle of gaviscon , later diagnosed with a huge heart attack \'\' My favourite ever story from a colleague : a patient comes into A & E with abdominal pain . As part of the work up he gets an abdominal X-ray which shows the problem as clear as day . The colleague has then proceeded to remove , from the patients rectum , an 8 inch replica of Nelson \'s Column ( the statue in the centre of Trafalgar Square , London ) On showing it to the patient , the response was `` Oh that \'s Nelson , he lives up there . \'\'', 1, 'doqbf3m'),
(165, 'Not a doctor , I \'m an optician and at this point I was a young lady in my mid twenties . I had a guy come in saying he was a doctor and he wrote himself an RX for glasses and he brought frames . A few days later his lenses come back , he puts on his glasses , and he ca n\'t see . I start going through the possibilities . Usually with progressive lenses it \'s an adjustment issue and they need to sit differently on his face . He completely refuses to let me adjust them . So I check the lenses and the RX match what he wrote . I try to explain that there \'s only two options , either they need to sit differently on his face or the RX is n\'t good . He tells me , `` YOU DONT UNDERSTAND . IVE HAD EYE SURGERY FOR A DISEASE THAT YOUVE NEVER EVEN HEARD OF . \'\' I offer to remake his lenses to prove a point . His new lenses come in a few days later , an older coworker is helping him . I told her everything . Again , he ca n\'t see . She tells him , \'\' the young girl who tried to help you last time was trying to explain that if we adjust your glasses you might be able to see out of them . Will you please let me try ? \'\' He let \'s her and suddenly he can see ( granted not perfectly because he wrote his own RX and the bottom sentence will explain more ) Turns out fuckwad was a lung doctor and not even an eye doctor .', 1, 'doqctjk'),
(166, 'There is a somewhat more content rich article [ here ] ( https : //insight.kellogg.northwestern.edu/article/seeing_is_believing_unless_it_isnt ) about illusory pattern perception . It reports a Science paper in which subjects were first challenged with a symbol-selection task which had been designed specifically to make one set of them feel powerless . They were then all given grainy images , which might or might not contain a recognisable picture . > While all people correctly identified about 95 percent of the hidden images , the people who received random feedback on the symbol-selection task , whose feelings of control had been eroded , also “ saw ” images in 43 percent of the pictures that were actually just random scatterings of dots . This illusion occurred significantly more often than it did among the subjects whose feelings of control were left intact during the symbol-selection task .', 3, 'dopuvi3'),
(167, 'Study ( open access ) : [ Connecting the dots : Illusory pattern perception predicts belief in conspiracies and the supernatural ] ( http : //onlinelibrary.wiley.com/doi/10.1002/ejsp.2331/full ) ___ > **Abstract** > A common assumption is that belief in conspiracy theories and supernatural phenomena are grounded in illusory pattern perception . In the present research we systematically tested this assumption . Study 1 revealed that such irrational beliefs are related to perceiving patterns in randomly generated coin toss outcomes . In Study 2 , pattern search instructions exerted an indirect effect on irrational beliefs through pattern perception . Study 3 revealed that perceiving patterns in chaotic but not in structured paintings predicted irrational beliefs . In Study 4 , we found that agreement with texts supporting paranormal phenomena or conspiracy theories predicted pattern perception . In Study 5 , we manipulated belief in a specific conspiracy theory . This manipulation influenced the extent to which people perceive patterns in world events , which in turn predicted unrelated irrational beliefs . We conclude that illusory pattern perception is a central cognitive mechanism accounting for conspiracy theories and supernatural beliefs .', 3, 'doppq0l'),
(168, '[ removed ]', 3, 'doprq2c'),
(169, '[ removed ]', 3, 'dopzmif'),
(170, 'So where is the line between conspiracy theorist and being distrustful of our government due to their long history of secret programs ?', 3, 'dopyrur'),
(171, '[ removed ]', 3, 'doq40nu'),
(172, 'Is this not a chicken and egg thing ? I mean , if you *first* became convinced that everybody in power was lying , *then* you \'d be more skeptical about everything else , right ? It does n\'t read like the scientists checked for this , they just concluded that people who believe in conspiracies more often look for patterns where there are none than people who do n\'t . Surprise , huh ?', 3, 'dopwazd'),
(173, '[ removed ]', 3, 'dopqg1z'),
(174, '[ removed ]', 3, 'dopqesr'),
(175, 'In my unprofessional opinion , forming patterns where there may be none is harmless compared to the inability to listen to reason and evidence regarding those patterns . The formation of a hypothesis is fine as long as you \'re able to make the healthy choice to move on once it \'s been thoroughly disproven . Conspiracy theorists and mainstreamers alike have issues with this .', 3, 'dopznwc'),
(176, '[ removed ]', 3, 'doq1ivb'),
(177, '[ removed ]', 3, 'doq3nd7'),
(178, '[ removed ]', 3, 'dopxw9o'),
(179, '[ removed ]', 3, 'dopykgf'),
(180, '[ removed ]', 3, 'dopzl0b'),
(181, '[ removed ]', 3, 'doprqe5'),
(182, 'The article mentions conclusive ballistic evidence in the JFK assassination . I would like to know what evidence is being referenced and read the peer reviewed analysis by qualified ballistic experts .', 3, 'dopy88o'),
(183, '[ removed ]', 3, 'doq51w7'),
(184, '[ removed ]', 3, 'dopwoef'),
(185, '[ removed ]', 3, 'dopzgdf'),
(186, 'Supernatural theories ? Is this article saying belief in a god is evidence of a fundamental cognitive problem ? That would be an interesting conspiracy .', 3, 'dopzoag'),
(187, '[ removed ]', 3, 'dopy0qn'),
(188, '[ removed ]', 3, 'doq5e1s'),
(189, '[ removed ]', 3, 'dopvof9'),
(190, 'Its too bad the term conspiracy theory is such a polarizing term and so often used innapropriately . Seems like when applying this label to someone , people give themselves license to disregard everything the other person has to say , because your one of those `` conspiracy theroists \'\' . Evidence for the claim should always be the focus of the discussion , even if its not always knock down proof .', 3, 'dopxjne'),
(191, '[ removed ]', 3, 'dopwqz8'),
(192, 'conspire kənˈspʌɪə/ verb - make secret plans jointly to commit an unlawful or harmful act . `` they conspired against him \'\' synonyms : plot , hatch a plot , form a conspiracy , scheme , plan , lay plans , intrigue , collude , connive , collaborate , consort , machinate , manoeuvre , be/work hand in glove ; - ( of events or circumstances ) seem to be working together to bring about a particular negative result . `` everything conspires to exacerbate the situation \'\' synonyms : act together , work together , combine , join , unite , ally , join forces , cooperate ; -- -- -- -- Given the definition of the word , it is very unlikely that all conspiracy theories are based on ideas from people with fundamental cognitive problems .', 3, 'doq0zr5'),
(193, '[ removed ]', 3, 'dopzdyt'),
(194, '[ removed ]', 3, 'dopzjj3'),
(195, '[ removed ]', 3, 'dopxq4a'),
(196, 'There is a specific type of joy when I believe I \'ve figured out or learned something that the general population has n\'t figured out . And I get that joy , whether I \'m right or wrong , as long as I believe it . Or consider it a strong possibility . As a population , I think it \'s good we have conspiracy theorists . People who will call bs on the most widely accepted things . It \'s a way to keep us in check , even if it is very annoying . And I do n\'t believe most humans are all that good at cognitive thinking . I think most just follow the crowd and trust the experts .', 3, 'dopzmd9'),
(197, 'You have to be just as dumb to think that there are n\'t any conspiracy theories that are true .', 3, 'doq08oe'),
(198, 'Do they have a theory on why people ca n\'t see the bleeding obvious ?', 3, 'doq0o3b'),
(199, '[ removed ]', 3, 'doq3ib3'),
(200, '[ removed ]', 3, 'dopxq48'),
(201, 'I think the validity of this study is also dependent on how one describes `` conspiracy theory \'\' . People for many years dismissed the Harvey Weinstein rumors as conspiracy theory invented to hurt his business interests . What we do as humans ( especially in modern times when access to information is extremely unprecedented ) is try to question the narrative provided to us by those responsible for relaying the info , whether it be government or media or even just your neighbor . Blindly accepting information without questioning it seems very ... .basic . A lot of conspiracy theorists simply want access to information , and the refusal to provide it just fuels the speculation until it reaches a fever pitch . Now ... there is a fine line of course , as Donald Rumsfeld should not have to defend himself against lizard person accusations .', 3, 'dopz0km'),
(202, '[ removed ]', 3, 'doprei7'),
(203, '[ removed ]', 3, 'dopzxwn'),
(204, '[ removed ]', 3, 'dopticw'),
(205, 'Do you qualify as a conspiracy theorist if you believe one or perhaps two theories ?', 3, 'dopvyvy'),
(206, 'actual paper : http : //onlinelibrary.wiley.com/doi/10.1002/ejsp.2331/epdf', 3, 'doprlkp'),
(207, '[ removed ]', 3, 'doptwgg'),
(208, 'Define conspiracy theory', 3, 'doq34rv'),
(209, 'I \'ve never met an ex conspiracy theorist . Ever .', 3, 'doqdp4y'),
(210, 'Here is a [ link to the supplementary materials ] ( http : //www.readcube.com/articles/supplement ? doi=10.1002 % 2Fejsp.2331 & index=0 & ssl=1 & st=6d2b7f7ec875cd0693cec71db8ec1bf4 & preview=1 ) for this study which includes full-text versions of the questionnaires that the subjects completed . Perhaps you all should take the surveys yourselves and see how you fair . > In Study 2 , we utilized the random coin outcome sequences that we tested in Study 1 to manipulate pattern search . In order to guess the next coin outcome following each sequence , participants either were , or were not , instructed to look for patterns in the coin tosses . As the cognitive process of pattern perception tends to occur particularly when people predict uncertain outcomes ( Gilovich et al. , 1985 ; Wilke et al.,2014 ) , we reasoned that intuitively searching for patterns in random sequences as a means to guess the next coin toss would increase the likelihood of people perceiving patterns in the coin toss sequences . **We therefore predicted that searching for patterns in random sequences would increase irrational beliefs through an increase in pattern perception . ** Potentially many [ cognitive biases ] ( https : //en.wikipedia.org/wiki/List_of_cognitive_biases ) in play here and the researchers are making a leap to fit this test into their hypothesis . And something I do n\'t understand is that these researchers imply that believing in conspiracy theories is irrational because the main prerequisite for maintaining this belief is seeing patterns that do n\'t exist in information . But is this based solely on information that is presented to the observer through , say , mainstream media outlets or the **totality** of information from all available sources ? If you were to watch cable news and see a mass casualty incident ( and its accompanying narrative ) and immediately question its validity because you instantly sense `` patterns \'\' in the information , then this may indeed be illogical . But if you were to learn of this event and subsequently performed your own comprehensive research through a variety of sources that you yourself vetted and could reasonably assume to be largely accurate , and then after examining the totality of the data , information , narratives , and extenuating circumstances , you conclude the patterns exist that would imply there may be a `` conspiracy \'\' afoot , is that illogical ? I do n\'t think so .', 3, 'dopwu6g'),
(211, '[ removed ]', 3, 'dopv99o'),
(212, 'So , half of us believe in at least one conspiracy theory ? That does n\'t sound to hard to believe . How many past `` conspiracy theories \'\' have been proven to be true ?', 3, 'dopxqmy'),
(213, '[ removed ]', 3, 'doq5jkt'),
(214, 'I do n\'t understand what \'s so bad about the idea of conspiracy theories in general . Rich people pay politicians to pass laws that make them more rich , and those rich families are friends with other rich families , who also help themselves to gain more power and wealth . Do some people really believe they do n\'t ... Conspire together ?', 3, 'doq04gb'),
(215, 'No EEG , MEG or fMRI techniques performed and this article determines a direct relationship of cognitive malfunction in `` conspiracy theorists \'\' . Number one rule to remember when interpreting psychological or sociological findings is that correlation does not imply causation . This is how science becomes sensationalized .', 3, 'doq0qx4'),
(216, '[ removed ]', 3, 'doq50pk'),
(217, '[ removed ]', 3, 'dopzb6e'),
(218, '[ removed ]', 3, 'dopx7xs'),
(219, '[ removed ]', 3, 'dopxwr6'),
(220, '[ removed ]', 3, 'dopxmnd'),
(221, '[ removed ]', 3, 'dopyxas'),
(222, '[ removed ]', 3, 'doq4wfv'),
(223, 'I think this is a good start to understanding why some people are highly susceptible to believing conspiracy theories , but seeing patterns where there are n\'t any is only a small part of it . I think the bigger cognitive problem is that conspiracy theorists seem to lack the ability to step back and look at the big picture and ask whether the scenario is actually logical . The seem to get overly obsessed with minor details ( the melting point of metal , a puff of smoke , a face-like image on a rock , etc. ) . But they are entirely unable to look at the big picture and weigh the plausibility that thousands of government employees or whatever worked together to create a grand illusion , vs. the plausibility that the event simply was what it appears to be . I think it has a lot to do with their inability to weigh sets of facts and assess the probability that a given scenario is plausible .', 3, 'doq9opp'),
(224, 'Kind of small sample size', 3, 'dopxktb'),
(225, '[ removed ]', 3, 'doq3h7p'),
(226, '[ removed ]', 3, 'doq18v8'),
(227, 'There are issues with this study in many ways . Not the least of which is it draws conclusions beyond the study . The study is about illusory pattern perception after they \'ve intentionally biased a portion of the tested folks towards looking for patterns . And , surprise , those people looked for patterns more . The article is also complete nonsense . One could look for patterns and not be a conspiracy theorist . Some conspiracies ( albeit a small % ) are proven as true over time . Ironic considering the idea of a round earth was itself once a `` conspiracy \'\' that was only believed by people considered crazy . As well the article lumps together multiple different conspiracies with different amounts of evidence AND context . 9/11 conspiracy for example is not something one can easily see on their own , flat earthers however can go out on the water in a boat and easily disprove their own conspiracy , Pizzagate revolves around theoretical coded messages ... which ironically would look about the same regardless of true or false . They are wildly different in scope , context , and ability to prove/disprove .', 3, 'doqfskg'),
(228, 'It depends on what you define as a conspiracy theory , because a great deal of the `` crazy ones \'\' have turned out to be true . Is thinking independantly a cognitive problem to you ? Is questioning the things your told crazy ? Or is it just scary to you that things might be more complicated , and corrupt than you \'d like to believe ?', 3, 'doqh6cg'),
(229, '[ removed ]', 3, 'dopyf89'),
(230, '[ removed ]', 3, 'dopxx3x'),
(231, '[ removed ]', 3, 'dopxqe1'),
(232, '[ removed ]', 3, 'doq57t6'),
(233, '[ removed ]', 3, 'dopxacg'),
(234, '[ removed ]', 3, 'dopxaur'),
(235, '[ removed ]', 3, 'dopx3np'),
(236, '[ removed ]', 3, 'dopxlh7'),
(237, 'The real cognitive problem here would be found with those who actually believe this `` study \'\' has any validity .', 3, 'dopzvps'),
(238, '[ removed ]', 3, 'dopz317'),
(239, '[ removed ]', 3, 'dopzs43'),
(240, '[ removed ]', 3, 'doq2lk9'),
(241, '[ removed ]', 3, 'dopy3sz'),
(242, 'When studying math , we did an experiment trying to find a pattern in coin tosses . Even in random tosses there were what appeared to be patterns even when we knew there were n\'t . Also , If the person tossing it does it incorrectly there was a pattern . Or if it spun on the edge there was a pattern .', 3, 'dopxjtp'),
(243, '[ removed ]', 3, 'doq12y6'),
(244, '[ removed ]', 3, 'doq14sc'),
(245, '[ removed ]', 3, 'doq1gjg'),
(246, '[ removed ]', 3, 'doq1p15'),
(247, '[ removed ]', 3, 'doq7okd'),
(248, 'This paper seems to define `` illusory pattern perception \'\' as an individual drawing incorrect conclusions from their sensory stimuli : > It has frequently been suggested that irrational beliefs are rooted in pattern perception , that is , the automatic tendency to make sense of the world by identifying meaningful relationships between stimuli ( Zhao , Hahn , & Osherson , 2014 ) . This is a functional process , as it enables people to recognize basic patterns that are real and that are important to internalize * ( e.g. , a red traffic light signals danger ; drinking water quenches one ’ s thirst ; being unfriendly to a stranger may elicit an un-friendly response ) * . Sometimes , however , there are dis-tortions to this otherwise functional process as people may connect dots that are in fact unrelated , leading to illusory pattern perception—misperceiving meaningful patterns in what are in fact random stimuli . Yet in the first sentence pattern perception is in itself defined as an `` automatic tendency \'\' , as if not done by an individual \'s conscious action . What is then really the biological or scientific statement being proposed here ? Is it that `` perceptions \'\' can be faulty , as if illusory ? Or that people can , using their conscious mind , make incorrect assumptions about the facts of the world ? I do n\'t read many psychology papers but I \'m not impressed to say the least . The worst part is that there is probably some truth in here .', 3, 'doqbe6l'),
(249, 'So conspiracy theorists have an imagination ? Does n\'t sound so bad . Death of imagination and abstract thoughts is what we should be worried about .', 3, 'doqh9i5'),
(250, 'Quote from the article : `` Fortunately , other scientists have found a way to block the pervasiveness of illusory pattern perception : critical thinking . \'\' You could literally say the same for people that do not put into question any `` non-conspiracy \'\' theory . In order to fit in to a group , we will go through some process of conformity , which is compliance with standards and rules defined by the majority . Many studies explained this before . What is a conspiracy and non-conspiracy theory ? It is defined based on what the majority believes in . But that does not mean you as individual should believe in . You should always have a critical thinking , whatever you believe in .', 3, 'doqjbz0'),
(251, 'Unless the conspiracy theory in question turns out to be correct , as is often the case . Sample : https : //www.reddit.com/r/AskReddit/comments/77dvq0/what_conspiracy_theories_were_ultimately_proven/', 3, 'dopzeir'),
(252, '[ removed ]', 3, 'dopximd'),
(253, '[ removed ]', 3, 'dopygkp'),
(254, 'I thought I recognised the thumbnail , I knew this was a Kaptain Kristian film .', 2, 'doqkfcs'),
(255, 'Anyone else see Gorillaz and other modern examples in this ? or vice versa i \'d say .', 2, 'doqkjvx'),
(256, 'The change observed is relative to the overall mass of the molecule or functional group in question . See : [ Kinetic Isotope Effect ] ( https : //en.wikipedia.org/wiki/Kinetic_isotope_effect ) . Tritium exists at low natural abundance and is a soft beta emitter , so effects from its decay are minimal .', 4, 'doq0bk9'),
(257, 'As people pointed out , you have the Kinetic Isotope Effect , if a chemical reaction involves the transfer of a hydrogen atom , then the kinetics of that reaction . But you \'re also lowering the fundamental vibrational frequency of the H-X bond , which has a number of effects . It changes the vibrational energy levels and thus infrared absorption ( which is why water is faintly blue while heavy water is not - [ water absorbs more in the red ] ( https : //i.stack.imgur.com/J4gay.gif ) ) . It also has a slight effect on hydrogen bonding strength - which is why heavy water has a boiling point a degree above ordinary water , a slightly different viscosity etc . However , with hydrocarbons you do n\'t have hydrogen bonding or much going on with the hydrogen atoms , so less would happen there . With ethanol you \'d have a much larger change in boiling point and viscosity etc if the -OH group hydrogen was swapped for tritium than one of the C-H hydrogens . Because that group is hydrogen-bonding and responsible for more of the intermolecular bonding energy than the other hydrogens . When a tritium isotope decays , that energy is far in excess of the chemical bonding energy . Your helium-3 ion is going to go flying off in one direction and the beta-decay electron in the other before the molecule has any time to go anywhere . So you \'ll usually be left with a fragment like a CH3CH2O^* radical . But the high-energy ion and free electron are quite likely going to go off and blast apart some other molecules on their way too . So yes , tritiated alcohol would behave very slightly different , with the extent depending a lot on whether it \'s a C-H or O-H hydrogen you swap .', 4, 'doq3kon'),
(258, 'In mass spectrometry we use deuterium or tritium doped molecules as internal standards . When you use the exact same chemical ( except for a few hydrogens ) the structure may or may not change , but the doped molecule will undergo basically the same chemistry while being analyzed and will allow you to do very precise quantification even if it \'s a complex sample .', 4, 'doq484g'),
(259, 'Yes . The mass difference significantly influences bond length/strength . So certain aspects of the structure and especially reactability will be different . Please tell me you \'re not planning on drinking tritiated ethanol . There is a lot of stuff that could happen upon decay , from the high energy electron screwing with something nearby to who knows what with the helium atom .', 4, 'doq3vx4');
INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`) VALUES
(260, 'It affects the reactivity of the chemical bond ( kineitic isotope effect ) . The structure is n\'t really affected , BUT in X-rays , C-D bonds appear slightly longer than C-H bonds ( they are n\'t actually longer though ) . That is because C-H bonds vibrate more so the `` average \'\' distance along the bonding axis *appears* smaller ( X-ray libration ) . That being said , the boiling point of deuterated water is 101 instead of 100 degrees Centigrade . You can think of deuterium having more `` inertia \'\' which needs to be overcome when breaking O-D or C-D bonds . Because deuterum bonds are slightly more difficult to break , increasing the % of deuterium in your body from around 1 % to about 30 % is believed to be lethal , since some reactions inside the cell would be slowed down . I would expect tritiated ethanol to have a boiling point maybe around 1 degree centigrade above regular ethanol .', 4, 'doqbmo6'),
(261, 'Carbon-deuterium bonds are very slightly stronger than carbon-hydrogen bonds . This results in a slight difference in reaction rate if the rate-determining step involves the breaking of the C-D bond . This difference is measurable , and is called the **Kinetic Isotope Effect** .', 4, 'doqcxjf'),
(262, 'I \'ve read that heavy water is poisonous , why is that ? How does it kill living organisms if it \'s chemically the same ( or similar ) to regular water ? And ( hypothetically in an Agatha Christie novel ) would the victim realize they were consuming heavy water , not regular water ?', 4, 'doqeiec'),
(263, 'This is a thing that has confused me in the past . Whenever proton-transfer reactions are mentioned , I used to wonder if it \'s actually relevant to have the H-1 isotope ( also known as protium ) . The answer is no , and the correct term for hydrogen cations in general is `` hydron \'\' . Also , as protium ions are called protons , D⁺ ions are deuterons and T⁺ is referred to as triton .', 4, 'doqijjy'),
(264, '[ deleted ]', 4, 'dopxznh'),
(265, 'And “ since you guys are all dumbasses , the curve will be lowered by 45 % ”', 5, 'doq9fia'),
(266, 'I feel I get too happy from hearing those phrases and then realize a week in that the information we *do* have to learn is beyond the scope of my own mind .', 5, 'doqatxf'),
(267, 'The other day I asked my Calc II professor if he could go over a problem from the book that I had trouble with . At the end of the problem ( we were working on infinite series ) we ended up with two weird fractions that needed to be added together . He looked at it for a second and said : `` and the rest of this problem is beyond the scope of this course . \'\' It was a corny joke but I laughed anyway .', 5, 'doqcbsp'),
(268, 'My God , yes . When we get to a new equation : `` this is what you use and how you use It , but the proof is beyond the scope of this course , so just trust us . \'\' Also , `` it \'ll be in the formula sheet . \'\'', 5, 'doqfve9'),
(269, '**Assume Ideal Gas**', 5, 'doqivmm'),
(270, 'Sometimes “ beyond the scope of this course pisses me off ” . It helps for some things to understand the , conceptually rather than memorizing equations : P', 5, 'doqil4b'),
(271, 'This is the idea of `` generalisation \'\' in mathematics , you collect several apparently distinct examples into a single concept or notion , and then see those examples as special cases . You will encounter many more of these if you continue your studies in the direction of Mathematics or related areas . For instance , you may encounter algebraic structures , like groups , rings , vector spaces , modules , etc . that will generalise a lot of `` concrete \'\' things you may have already met or will meet in the future . Derivatives ( and integrals ) can also be defined on much more general spaces than you are currently looking at . I guess the highest forms of generalisations are found in an area of Mathematics called Category theory .', 6, 'doq91j3'),
(272, 'Fun fact : The laws that govern physics are second-order , meaning that they only reference up to two derivatives . That means that while jerk ( the third derivative ) and higher derivatives do exist , it \'s only important to specify the initial position and velocity ( ie , momentum ) of a particle to know how it will behave as you let time unfold in a system . One consequence of this , which I find interesting , is that you can load a video , bring up a random frame showing some object in motion , and you ca n\'t tell what the next frame will look like . You could have two identical still frames taken from two videos of a baseball flying through the air , and when you unpause them , the two balls could move in completely different directions . There \'s no way to tell by looking solely at the balls \' positions how they will move . But if you could somehow see the object \'s velocity ( say , you were given two still frames just a millionth of a second apart ) , you could ( theoretically ) trace out the ball \'s position throughout the whole video .', 6, 'doqc7ek'),
(273, 'Wait til you find out the link between derivatives , and the area under a graph : )', 6, 'doqa6ps'),
(274, 'And then Stokes \' and Green \'s theorems', 6, 'doqb44e'),
(275, 'The most general setting for calculus are a geometrical structure called `` smooth manifolds \'\' . You \'re currently doing calculus on the real number line , which is a very simple , one dimensional , smooth manifold . Einstein \'s general theory of relativity views the universe as a 4-dimensional manifold called `` spacetime \'\' . And even then , there \'s so much more to mathematics than calculus , and so much of it is mindblowing .', 6, 'doqdcnr'),
(276, 'The derivative of the volume of a sphere with respect to its radius is equal to the surface area . Imagine adding a coat of paint to the surface of a sphere ; it will increase the radius by a tiny bit , and the volume will increase by the amount of paint you used , which is equal to the new surface area . ( This is a bit inexact mathematically but it \'s highly intuitive . ) It \'s also the same reason the derivative of the area of a circle with respect to its radius equals its circumference . Whenever you increase the radius by a tiny bit , you increase the area by essentially adding another circumference . I always thought things like that were helpful and they also helped me remember the formulas and understand where they came from .', 6, 'doqfcvm'),
(277, 'Did you know that the derivative of jerk with respect to time is sometimes known as snap ?', 6, 'doq945r'),
(278, 'You \'ll reach nirvana when you study Fourier analysis . Electrical Engineers call it \'signal analysis \' , but , like calculus , it \'s really much more than that . It was originally developed by Joseph Fourier to explain heat transfer and on and on ... [ https : //en.wikipedia.org/wiki/Fourier_analysis ( https : //en.wikipedia.org/wiki/Fourier_analysis ) Also , Brad Osgood of Stanford makes these comments in this lecture series . [ https : //www.youtube.com/watch ? v=gZNm7L96pfY ] ( https : //www.youtube.com/watch ? v=gZNm7L96pfY )', 6, 'doqhhrs'),
(279, 'It \'s nice when you discover a new mathematical concept and then you get to see what it \'s actually used for . It \'s also nice when you see where it links into other areas of mathematics . Maths is nice .', 6, 'doqj7vk'),
(280, 'ooh i loved this series', 7, 'dopospq'),
(281, 'Was the timestamp link intentional ?', 7, 'dopv1av'),
(282, 'I think this is appropriate here https : //youtu.be/2mIk3wBJDgE', 7, 'dopwfnz'),
(283, 'It would be awesome if there was a course about experimental thinking in physics . That is , about how to connect , in a practical way , physical theory to experiment . Maybe by just going through as many classic ( and perhaps some obscure ) experiments as would fit in a course . Perhaps also by building up experiments from scratch .', 7, 'doq2wrz'),
(284, 'This man made my undergrad Quantum Physics classes livable , as my professor certainly did n\'t want anyone to survive his lectures .', 7, 'doqgquf'),
(285, 'A bit off topic but why does America still use blackboards rather than whiteboards ?', 7, 'doq2bjy'),
(286, 'Xpost to /r/lectures ?', 7, 'doq4rav'),
(287, 'Very excited to get the learns !', 7, 'doppkto'),
(288, 'What does `` bind it with water \'\' mean in this context ? Are they just dissolving the co2 in water and pumping it underground ?', 8, 'doq5b3v'),
(289, 'Why does everything have to be connected to the internet these days ?', 8, 'doq4uip'),
(290, 'There are two competing technologies that can sequester carbon in BC , Canada . Both could do it at $ 30/ton for carbon and make a profit at $ 50/ton . Once we have a price on carbon , these technologies can get to work . Of course , Mr. Trump is in the way of that .', 8, 'doqix5l'),
(291, 'Every form of energy generation can do this if we innovate in the direction of carbon capture conversion into plastics .', 8, 'doq128p'),
(292, 'Inverse in what sense ?', 9, 'doq8bfy'),
(293, 'Graph the circle and flip it along the axis y=x . The result should he the same circle', 9, 'doqc2ez'),
(294, 'Get the equation for a circle and swap x and y ( like you would to find a normal inverse , the inverse of y=2x is x=2y therefore y=x/2 ) and you \'ll find it \'s the same equation .', 9, 'doqay1y'),
(295, 'Easy , just solve for x and y to get the inverse . The result will be two different functions with two different domains that show that the inverse of a circle is a circle . Although it is not one-to-one , so technically it has no inverse strictly speaking .', 9, 'doqh5cq'),
(296, 'What do you know about inversions ? In particular , what is the general form of an inversion ? What happens when you apply this general form to a point on a given circle ?', 9, 'doqi5uo'),
(297, 'Diesels do n\'t have spark plugs', 10, 'doq9lyv'),
(298, 'Do n\'t even need to pop the hood . Look at it \'s tachometer . The diesel will be redlining at around 4k RPM . Or just listen to that distinctive clatter that even modern diesels have .', 10, 'doqco36'),
(299, 'Can we smell ?', 10, 'doqc588'),
(300, 'How old is the car ? In modern cars , there is n\'t much you can see when you raise the hood , it \'s mostly a plastic cover , everything is packed very tight . However , you \'ll find the word `` diesel \'\' printed somewhere . The fuel cap usually has the type of fuel printed somewhere , so you may not even need to raise the hood . Diesel smells very differently from gasoline . If all that does n\'t give you a clue , gasoline engines have a distributor and spark plugs , while a diesel has injectors .', 10, 'doqhcv3'),
(301, 'Spark plugs vs glow plugs . Perhaps a bigger injector rail but thats hard to eyeball .', 10, 'doq9poq'),
(302, 'Are you allowed to look at writing on the fuse block ? Also most fuel caps might be different . Some diesel have green caps . They also might be vented . Gasoline never have vented caps', 10, 'doqdntg'),
(303, 'The fuel filter on the diesel will have a water in fuel sensor and drain , and will be much larger .', 10, 'doqhb0f'),
(304, 'As already said , check for spark plugs in the head and requisite cabling . Injectors would be another clue , diesel injectors are bulky with sturdy pipework , petrol injectors are much smaller and quite flimsy looking in comparison . Another thing to look out for would be a vacuum pump and reservoir , petrols often do n\'t need this .', 10, 'doqd4vt'),
(305, 'Would modern diesels have any sort of mass air sensor ?', 10, 'doqfsk6'),
(306, 'Older stuff look for flexible spark plug wires . If they do n\'t flex they are probably the fuel tubes for diesel .', 10, 'doqhj2u'),
(307, 'Petrol engines had a distributor when I was young . I guess they \'re obsolete now ? Smell too .', 10, 'doqk6ho'),
(308, 'With some exceptions , diesel engines wo n\'t have a throttle valve . Lack of spark plugs . Most newer diesels have a DEF tank .', 10, 'doqkkbz'),
(309, 'As already said spark plugs is the biggest clue . Modern diesels have an EGR valve which I do n\'t believe is present on petrol . Could be wrong . I do n\'t really care about or like modern engines .', 10, 'doqbm9f'),
(310, 'Exhaust pipe . For a start , many diesels have the exhaust pipe pointed to the ground , while petrols tend to have it straight . It \'s not always true though . But , you \'ll always be able to distinct the two by the dirt on the inside of the exhaust . Lots of black depositing > probably diesel .', 10, 'doqh5j8'),
(311, 'Moisture content of Death Valley would rise tremendously and surrounding areas would have a new recreational area/state park to enjoy !', 11, 'doqbt8u'),
(312, 'You \'d get [ Lake Manly ] ( https : //en.wikipedia.org/wiki/Lake_Manly ) !', 11, 'doqdemv'),
(313, 'There is a [ XKCD : what if ] ( https : //what-if.xkcd.com/152/ ) for this exact question .', 11, 'doqibuz'),
(314, 'It would evaporate and fall as rain elsewhere .', 11, 'doqgll0'),
(315, 'Dr. Strangelove or : How I Learned to Stop Worrying and Love the Bomb is a good example of sixties morbid humor , everyone dies at the end .', 14, 'doq29x7'),
(316, 'Slaughterhouse-Five', 14, 'doq5mgp'),
(317, 'Catch-22 by Joseph Heller', 14, 'doq781r'),
(318, 'Many newspapers had a satirical cartoon-comment in their Sunday edition . That \'ll be useful for several decades worth of satire .', 14, 'doq7mt2'),
(319, 'It \'s a bit of a [ mystery ] ( https : //en.wikipedia.org/wiki/Equity_premium_puzzle ) .', 15, 'doqicng'),
(320, '> Why is this expected ? Why is this rational ? Bounded rationality comes to mind . It is assumed actors within the financial markets are not fully rational . They have bounded rationality . > If the gains are fueled by innovation , why is n\'t that known potential for innovation `` built into \'\' the current value ? The EMH has three tiers to it : weak , semi-strong and strong . The weak-form EMH says all publicly available information is incorporated into the price of an asset . The strong-form EMH says that the price of an asset has all information incorporated into it . It is assumed the strong form is impossible but the weak holds . > If the prices are low due to short-term risk , why are n\'t the long-lived large conglomerates of capital ( banks , VCs ) willing to bear those potential short-term losses and optimize purely for long-term value ? Prices are not low in the short term . Prices revolve around the true value of an asset , which can never be fully measured because we possess bounded rationality . Perhaps you \'re referring to the return of the asset . Long-horizon stocks have a higher return because they can afford to wait out the shocks in the stock market . People who can afford to keep their wealth illiquid for 20-odd years wo n\'t sell off their stock at a low price because they need the money to pay someone now . > And if the upward trend is merely historical ( and not backed by a theoretical explanation ) , why is long-term investing in index funds nearly universally considered sound investment advice ? I do n\'t really understand the first part of your question . What makes you think it \'s not rooted in theory ? Path dependency is one basic concept that comes to mind . Passive investments are considered sound investment advice because there is no empirical evidence to suggest that active investments yield abnormal returns on the stock market . The return of a stock will increase but it will not increase more than the market in the long term . In other words , they ca n\'t beat the market . Hope this helps . Good luck with your learning .', 15, 'doqjf1c'),
(321, 'Because time in the market beats timing the market . The longer you wait to invest the more returns your money could be making .', 15, 'doqf5f4'),
(322, 'What method did you use to get your coefficients ?', 16, 'doqc812'),
(323, 'I thought this was a nice very accessible little group theory video . This author ’ s ( /u/goldplatedgoof ) earlier video was well received here , https : //www.reddit.com/6w6q7g', 17, 'dopntvq'),
(324, 'Why so mamy dislikes ?', 17, 'dopygfc'),
(325, 'I always liked the geometrical interpretation : there are curves on the n-times punctured plane which are homologous but not homotopic to the constant one . ( But can become so filling in a missing point )', 17, 'dopqnmy'),
(326, 'I really enjoyed this video , thanks for sharing op ! I \'m in my first intro to linear algebra course right now and this reminded me of the rules of matrix multiplication/taking the inverse of a product of matrices . I know most math is still wayyyyy beyond me but it was cool to see some parallels : )', 17, 'dopvfd6'),
(327, 'Anyone interested in related things check out the Borromean rings , I think this is equivalent to finding n borromean rings ( aka circles that when one is cut they all become unlinked ) . You can do it using some technology from topology and the fundamental group which is kinda cool Edit ; also only got to see the first two mins of the video as out atm so realise maybe the author touches on that , apologies if I \'m just restating stuff if so', 17, 'dopwgep'),
(328, 'Fascinating ! Another knife in the heart for someone who loves maths but will never get chance to study it at a higher level though : (', 17, 'dopw4qk'),
(329, 'Lmaooo `` the mathematics required ( for the proof ) is beyond the scope of this video \'\'', 17, 'doq8t38'),
(330, 'NOT-commutative', 17, 'doqfvfm'),
(331, 'Did n\'t have time to watch the whole thing , but is the essential idea that the induced map on homotopy groups from the inclusion of the n punctured plane to the n-1 punctured plane ca n\'t be an injection ?', 17, 'doq066f'),
(332, 'Heron \'s formula allows you to calculate a triangle \'s area in terms of its side lengths : http : //mathworld.wolfram.com/HeronsFormula.html Use the pythagorean theorem to find the distances between points , then use Heron \'s formula .', 19, 'doqkhux'),
(333, 'For part a , that works , or you can do : 1 , 1.4 , 1.41 , ... , where each time you put another decimal of the expansion towards 2^ ( 1/2 ) . Alternately : 3 , 3.1 , 3.14 , 3.141 , 3.1415 , 3.14159 , 3.141592 , 3.1415926 , etc . For part b , I would do 2^-1/ ( n+1 ) for n = 1 , 2 , 3 , ... , which are all irrational numbers with LUB of 1 .', 22, 'doqjx71'),
(334, 'So you have two scenarios , or states . You want to be able to purchase units of A , B , and C such that you do n\'t take a loss no matter which state the market enters . The second state is irrelevant -- no matter how you buy your units of A , B , and C , you \'ll make a profit . So then the question reduces to : what is the minimum price of B in state 1 such that you can arrange your portfolio to avoid taking a loss ? The answer is , trivially , 50 . Your portfolio will only consist of security B . Any less than 50 and you are guaranteed loss in state 1 .', 23, 'doq0vjb'),
(335, 'National Brotherhood Week is still one of his best songs . And it still applies today', 24, 'dopyzml'),
(336, 'He was never a Harvard professor . He went to Harvard and taught at MIT , but he was a professor at UC Santa Cruz . And is awesome .', 24, 'dopvfq9'),
(337, 'TIL Tom Lehrer is still alive .', 24, 'dopzg6e'),
(338, 'Ah , Tom Lehrer and poisoning pigeons in the park ...', 24, 'dopuuzh'),
(339, '> If , after hearing my songs , just one human being is inspired to say something nasty to a friend , or perhaps to strike a loved one , it will all have been worth the while . This guy . This guy gets it .', 24, 'dopv43l'),
(340, 'Lehrer invented the Jell-O shot too , a true American hero', 24, 'dopwei5'),
(341, 'Neat , a professor with the last name of Lehrer ( `` teacher/professor \'\' in German ) . I wonder if it was just the historical family trade or if teaching was just his destiny .', 24, 'dopyfd7'),
(342, 'Here \'s the 2 Chainz Version : https : //youtu.be/CRE6upYHztk', 24, 'dopy0xz'),
(343, 'My favourite quote : > It was [ about ] a lady named Alma Mahler Gropius Werfel , who had , in her lifetime , managed to acquire as lovers practically all of the top creative men in central Europe . > It \'s people like that who make you realize how little you \'ve accomplished . It is a sobering thought , for example , that when Mozart was my age , he had been dead for two years . > -- Tom Lehrer , the guy who got Master \'s degree in Mathematics at Harward when he was 19 .', 24, 'doq3jsh'),
(344, 'Here \'s one of my favourite Lehrer songs for y\'all : [ The Irish Ballad . ] ( https : //youtu.be/P_jjRNMOopA )', 24, 'dopvqub'),
(345, 'True story , I had `` Lobachevsky \'\' by Tom Lehrer stuck in my head while I lost my virginity . Started laughing partway through , because there I was having sex for the first time and all I could think was `` I have a friend in Minsk , who has a friend in Pinsk , whose friend in Omsk , has friend in Tomsk , with friend in akmolynsk ... \'\' https : //youtu.be/wNel8RwSLyE So basically , that fucker really messed with my sex life ...', 24, 'dopwest'),
(346, 'this is what \'s so great about sampling in rap music . a buncha young people get to hear tom lehrer when they never would have otherwise . i always love seeing artists who enjoy that their music gets sampled , like [ how pleased timmy thomas was that `` why ca n\'t we live together \'\' was in `` hotline bling . `` ] ( https : //youtu.be/iVGMmEJrUiQ ? t=35s )', 24, 'dopyjge'),
(347, 'For those who do n\'t know , amongst his history of brilliant songs , he was also the writer / singer of `` Silent E \'\' and `` L-Y \'\' for The Electric Company back in the 70s', 24, 'dopzewx'),
(348, 'Tom is a true genius . https : //en.m.wikipedia.org/wiki/Tom_Lehrer He gave a popup performance at Eisenhower Park a few years ago , people went nuts . I ’ m kicking myself for missing it . Check this one out . https : //m.youtube.com/watch ? v=yrbv40ENU_o', 24, 'dopyt0c'),
(349, 'This is n\'t exactly surprising , he was one of the greatest comedy song writers of the 1950s and 1960s . Here \'s arguably his best song , about a Nazi the Americans hired to work on the Moon Landing rocket . https : //youtu.be/TjDEsGZLbio', 24, 'doq45ci'),
(350, 'Its Funny how a lot of Lehrer \'s Song are still somewhat relevant to today political climate', 24, 'dopywg6'),
(351, '[ Dope Peddler ] ( https : //youtu.be/CRE6upYHz ) is the song in question for the curious . ^^^2 ^^^^CHAINZ', 24, 'dopwray'),
(352, 'Glad to see some Tom Lehrer love ! Not too familiar with his teaching background ( I think he was a math prof ) but I was introduced to him through Regina Spektor . By then I already liked dark cabaret , and stuff like Gloomy Sunday so when I heard Lehrer \'s song [ `` My Home Town \'\' ] ( https : //m.youtube.com/watch ? v=85UqvuG2ojo ) I was hooked . Tbh , I was more surprised he was allowed to sing that edgy stuff without major backlash .', 24, 'dopz1dx'),
(353, 'This guy ! A friend showed me a song ages ago called something like `` We will all burn together when we burn \'\' . Still frighteningly relevent . Edit : It is actually `` We will all go together when we go \'\'', 24, 'dopz223'),
(354, 'This guy ’ s name is his occupation , if he wasn ’ t always referred to as lehrer lehrer there ’ s a missed opportunity', 24, 'dopy0ti'),
(355, 'my grandparents caught me with a 2livecrew album in 1992 , and proceeded to break out a Lehrer record . great times .', 24, 'dopz1i4'),
(356, 'Of course he would , he knows we all go together when we go .', 24, 'dopzofg'),
(357, 'That \'s the guy who wrote and performed the Elements song . I memorized it in middle school to be cool . THERE \'S ANTIMONY ARSENIC ALUMINUM SELENIUM AND HYDROGEN AND OXYGEN AND NITROGEN AND RHENIUM AND NICKEL NEODYMIUM NEPTUNIUM GERMANIUM AND IRON AMERICIUM RUTHENIUM URANIUM EUROPIUM ZIRCONIUM LUTETIUM VANADIUM AND LANTHANUM AND OSMIUM AND ASTATINE AND RADIUM AND GOLD AND PROTACTINIUM AND INDIUM AND GALLIUM . \\*inhale* AND IODINE AND THORIUM AND THULIUM AND THALLIUM \\*piano* THERE \'S YTTRIUM YTTERBIUM ACTINIUM RUBIDIUM AND BORON GADOLIIM NIOBIUM IRIDIUM AND STRONTIUM AND SILICON AND SILVER AND SAMARIUM AND BISMUTH BROMINE LITHIUM BERYLLIUM AND BARIUM \\*piano* THERE \'S HOLMIUM AND HELIUM AND HAFNIUM AND ERBIUM AND PHOSPHORUS AND FRANCIUM AND FLUORINE AND TERBIUM AND MANGANESE AND MERCURY MOLYBDENUM MAGNESIUM DYSPROSIUM AND SCANDIUM AND CERIUM AND CAESIUM AND LEAD PRASEODYMIUM AND PLATINUM PLUTONIUM PALLADIUM PROMETHIUM POTASSIUM POLONIUM AND TANTALUM TECHNETIUM TITANIUM TELLURIUM \\*long inhale* AND CADMIUM AND CALCIUM AND CHROMIUM AND CURIUM \\*piano* THERE \'S SULPHUR CALIFORNIUM AND FERMIUM BERKELIUM AND ALSO MANDELEVIUM EINSTEINIUM NOBELIUM AND ARGON KRYPTON NEON RADON XENON ZINC AND RHODIUM AND CHLORINE CARBON COBALT COPPER TUNGSTEN TIN AND SODIUM \\*piano* THESE ARE THE ONLY ONES OF WHICH THE NEWS HAS COME TO HAAARRVAARRRD , AND THERE MAY BE MANY OTHERS BUT THEY HAVE N\'T BEEN DISCOOOVVEERRED dum dumdumdum dumm , dumm , dummm ! ! ok this took me about 10 min to recite , listening to Pink Floyd while doing this was n\'t helping .', 24, 'doq12my'),
(358, 'Last name chains first name **2**', 24, 'dopza8t'),
(359, 'Wasnt he a Harvard alumnus but an MIT professor ? Regardless , aside from loudly singing “ Fight Fiercely Harvard ” at the football games , I play his “ Elements Song ” for my chemistry class when we get to the periodic table chapter ( they ’ re sophomores in high school and basically none of them know who Lehrer is ) .', 24, 'doq1u19'),
(360, 'Looks like I know what album I \'ll be jamming out to today : https : //i.imgur.com/ax5950h.jpg', 24, 'dopyu3z'),
(361, 'Total legend . Love his work .', 24, 'dopy3he'),
(362, 'That was the year that was is still one of the best political satire albums of all time . And is still surprisingly relevant . I think we could all learn from a listen to National Brotherhood Week', 24, 'doq2y7j'),
(363, '[ Send the Marines ] ( https : //www.youtube.com/watch ? v=HHhZF66C1Dc )', 24, 'dopzto6'),
(364, '`` please . Mr Chainz is my father . Call me Tity Boi \'\'', 24, 'doq4br5'),
(365, 'Started out with O-Z . end up riding fo deep ... .', 24, 'dopxwzq'),
(366, 'I have three Tom Lehrer records , they \'re wonderful', 24, 'dopybx1'),
(367, 'This man arranged all the elements into lyrics . It was played on a recent TV show . He also wrote songs that were both musically entertaining and lyrically hysterical .', 24, 'doq0lxv'),
(368, 'Tom Lehrer was amazing . His wernher von braun song is Gold !', 24, 'doq1eoo'),
(369, '[ The Vatican Rag ] ( https : //m.youtube.com/watch ? v=pvhYqeGp_Do ) is a classic !', 24, 'doq36gx'),
(370, '> In 2003 he commented that his particular brand of political satire is more difficult in the modern world : `` The real issues I do n\'t think most people touch . The Clinton jokes are all about Monica Lewinsky and all that stuff and not about the important things , like the fact that he would n\'t ban land mines ... I \'m not tempted to write a song about George W. Bush . I could n\'t figure out what sort of song I would write . That \'s the problem : I do n\'t want to satirise George Bush and his puppeteers , I want to vaporize them . \'\'', 24, 'doq79f2'),
(371, 'This man is going places', 24, 'dopv1sj'),
(372, 'This dude is a fucking legend : https : //youtu.be/EHID8hMgWKc', 24, 'dopxo5j'),
(373, 'Shit like this is why old people are awesome .', 24, 'dopyqsp'),
(374, 'I \'m a simple bastard . I see posts about good ol \' Tom ; I start looking for the old dope peddler . Also , have my upvote you cultured dog .', 24, 'doq2ivs'),
(375, 'One of the greatest satirists in history . Weird Al even took inspiration from him .', 24, 'doq3hb3'),
(376, '... \'\' He remained in Harvard \'s doctoral program for several years , taking time out for his musical career and to work as a researcher at the Los Alamos Scientific Laboratory . He was drafted into the U.S. Army from 1955 to 1957 , working at the National Security Agency . ** ( Lehrer has stated that he invented the Jell-O Shot during this time , as a means of circumventing liquor restrictions . ) \'\' ** dude is a legend .', 24, 'doqcv3p'),
(377, 'Everyone in my family has been Tom Lehrer fans since the early 1960s . When my mother was on her deathbed , I and my son set out to join the rest of my family in DC to see her off . At one point on the way , I put my Tom Lehrer tape on the car stereo and was singing along with it . I had n\'t played that tape in maybe a year , but I did it then on impulse . When I arrived , one of my sisters mentioned that they had put on the same record and were singing along with it . I asked her when ; it turned out that they were all doing it at the same time I was singing in the car , a couple of hundred miles away .', 24, 'doqhikj'),
(378, 'This guy . Way ahead of us all , had his life figured out for fucking 7 decades . Album does n\'t sell well . Fuck the haters , I \'m putting their worst reviews right on the damn album next time . Hope this shit makes you slap yo mamma when you listen . Then at 84 years old , a professor at Harvard . That \'s checks 1 and 2 on the White People Hall of Fame , but he \'s still staying real . Staying real as a 84 year old white Harvard professor . And 2Chainz of all people asks him for music , and he does n\'t miss a beat . `` Yeah ya \'ll can sample me , hope motherfuckers slap each other when they hear it . \'\'', 24, 'dopzeo5'),
(379, 'I ’ m surprised it took a rapper this long to sample the ole dope peddler', 24, 'doq0hru'),
(380, 'This is my favorite TIL to date !', 24, 'doq021h'),
(381, 'Unrelated , but did anyone else have to read that several times before fully understanding who said what to who ?', 24, 'doq088i'),
(382, 'Here is my favorite Tom Lehrer song . https : //youtu.be/CgASBVMyVFI', 24, 'doq0imo'),
(383, 'I see a young jeff goldblum playing his character in the staring role of `` A Beautiful Jello-shot \'\' .', 24, 'doq11ww'),
(384, '[ Lehrer \'s original song ] ( https : //www.youtube.com/watch ? v=qNWvdtt5sxs ) [ 2 Chainz \'s song ] ( https : //www.youtube.com/watch ? v=K7aAKQb8a2w )', 24, 'doq5f9o'),
(385, 'Took a class from this guy at uc santa cruz . It was held off-campus and was offered to `` life-long-learners \'\' of the community . We basically watched musicals with old people , many of whom were huge fans of Lehrer . Would take again .', 24, 'doq6hsg'),
(386, 'When I was in the Army in the early 90s , someone told me he was teaching at Boston University , so I went there to meet him , but I never found him . From the looks of the wiki , he did n\'t teach there .', 24, 'doq82bx'),
(387, 'I used to live in Santa Cruz about a decade ago , and was spending a lot of time listening to Lehrer at the time . One day I happened to just try and find out how to contact him , only to come across a quote he gave once which said `` If people want to find me , they \'ll know how \'\' or something to that effect . I figured out how to get a hold of him and was able to talk to him over the phone , which lead to some very amusing comments from him . One such was when I told him how big a fan I am , he replied , `` You have great taste ! \'\' He was genuinely amusing and very VERY kind , and gave me some very good life advice that I treasure to this day . I was wondering if I should eventually attend college , and he told me to do so even if not for any real reason other than just to take courses to learn something fun that interests me . Even now , all these years later , I still contact him usually to wish him a happy birthday . I love Tom with all my heart and wish him all the happiness in the world .', 24, 'doqihlm'),
(388, 'That man is a lyrical genius . Who else could come up with a line like `` She got a big booty so I call her Big Booty \'\' ? https : //www.youtube.com/watch ? v=Y34jC4I1m70', 24, 'dopyjq7'),
(389, 'These the kind of people i live for .', 24, 'dopzj1n'),
(390, 'L-E-G-E-N-D !', 24, 'dopzpyd'),
(391, 'I LOVE Tom Lehrer . Seriously , guys , if you are n\'t into his music , get into it NOW , I promise you wo n\'t regret it . `` Poisoning Pigeons in the Park \'\' is a good place to start , but my favorite is probably `` National Brotherhood Week . \'\'', 24, 'doq1aai'),
(392, 'Motherfucker is still poppin off at 84 . I hope I \'m that fresh at that age .', 24, 'doq1ew8'),
(393, 'Anybody else wan na poison some pigeons in the park ? ?', 24, 'doq44c4'),
(394, 'Awhh.. I think I \'m going to go poison some pigeons in the park in his honor today .', 24, 'doq4sib'),
(395, '`` If , after hearing my songs , just one human being is inspired to say something nasty to a friend , or perhaps to strike a loved one , it will all have been worth the while . \'\'', 24, 'doq6faj'),
(396, 'Last name Chainz / first name Two', 24, 'doq88ky'),
(397, 'What a name . Lehrer just means teacher in German .', 24, 'doq8zbj'),
(398, 'I love him even more . Vatican Rag was my absolute favourite .', 24, 'doq9i1f'),
(399, 'Imagine Bo Burnham got a PhD , became a professor at Harvard , then traveled back 60 years . THAT is Tom Lehrer way ahead of his time .', 24, 'doqgco3'),
(400, '> Lehrer has said of his musical career , `` If , after hearing my songs , just one human being is inspired to say something nasty to a friend , or perhaps to strike a loved one , it will all have been worth the while . \'\' This man is my hero .', 24, 'doqghd0'),
(401, 'I \'m not sure if you \'re the author or not ( there is a surprising lack of author information on the blog ) . Nice article . The bridge to GR seemed a bit shaky . I thought you were going to use it to introduce Unruh radiation , seems like a missed opportunity there .', 25, 'dopzsfi'),
(402, 'First , the notion of fields does not give an answer to the measurement problem , which is really the central motivation for wave particle talk . You still need to explain uncertainty , decoherence , and ( apparent ) state reduction to really explain why we have wave and particle as complementary notions . Second , regarding the argument from unitarily inequivalent representations of QFT in curved spacetime , this is not really an argument against `` indivisible blobs \'\' , but just against the claim that the number of such blobs has an observer independent definition . The Unruh/Dewitt detector still always minimally detects discrete particles or quanta . Personally I think `` what can be minimally detected \'\' is closer to the common meaning of `` fundamental \'\' than is `` whatever admits a covariant definition \'\' . You can still say underlying fields are fundamental , that \'s fine , but if the nature of these fields is such that all detection events necessarily reduce to detections of some standardized little blobs , then I think that is reason to say the blobs are equally fundamental to the underlying field .', 25, 'doqa8u6'),
(403, 'So now they just have to figure out how to attach this to that cancer sticking scorpion venom dye . The dye sticks to the cancer cells , if the trigger to this RNA mechanism could be added to the dye it would dye the cancer and cause it to die ... .', 26, 'doqc2eh'),
(404, 'Potential use as a biological weapon that can vaporize people ?', 26, 'doqffty'),
(405, 'Getting something to kill cells is n\'t hard . Getting it to specifically target cancer cells while leaving healthy cells alone is the real challenge .', 26, 'doqi0f4'),
(406, 'Ehmmm , out of curiousity ? How ground breaking is this really ? I learned about these in a medicine subject at uni last year ... ? Sure this is n\'t old news ? whats the catch ?', 26, 'doqigvx'),
(407, 'First use I bet melts a person .', 26, 'doqf6g4'),
(408, 'Link to abstracts : - [ Induction of DISE in ovarian cancer cells in vivo ] ( http : //www.impactjournals.com/oncotarget/index.php ? journal=oncotarget & page=article & op=view & path [ ] =21471 & path [ ] =68236 ) [ Co-targeting the tumor endothelium and P-selectin-expressing glioblastoma cells leads to a remarkable therapeutic outcome ] ( https : //elifesciences.org/articles/25281 )', 26, 'doq6k5f'),
(409, 'Cant wait for the lead researcher to mysteriously commit suicide leaving all of his research to Bayer', 26, 'doqkagt'),
(410, 'Wait , humans have a built in self-destruct switch ?', 26, 'doqha2z'),
(411, 'Is this through apoptosis or is it another mechanism ? The article is vague .', 26, 'doqkkem'),
(412, '> that forces it to self-destruct . > a novel form of cancer therapy This already exists . It \'s called THC . https : //www.google.com/search ? q=thc+cell+apoptosis+cancer', 26, 'doqh686'),
(413, 'Suppose you are doing an experiment . You set up a camera and in this experiment there is something that \'s moving . After the experiments , you get ready to do some analysis . You write a program to track the object an output it \'s position every 0.1 seconds . Then you graph it . That gives you x ( t ) . Maybe if you are lucky , you can see that x ( t ) can be approximated by something simple . Then you use that approximation to do more analysis and see how well that model fits in with other data you collected . This is just one example . You can come up with experiments where you know v ( t ) or a ( t ) or whatever else . So being able to go from any one to any other is helpful .', 27, 'doqitrl'),
(414, 'Would those properties be good investments if there was n\'t an existing shortage of housing ? Seems symptomatic of greater issues to me .', 30, 'doq4eql'),
(415, 'Money will move to any asset that \'s value is rapidly increasing . The problem is a distinct lack of new housing . Most city residents bring these problems upon themselves by imposing rent controls and restricting future developments .', 30, 'doq9wre'),
(416, '[ removed ]', 30, 'doq5v7r'),
(417, '[ removed ]', 30, 'doq284p'),
(418, 'TIL Animation was considered an art form in America until Hanna-Barbara ruined it .', 2, 'doqlpm1'),
(419, 'Max got a damn raw deal . He pioneered basically everything that the golden age of animation had to offer but Disney payed out most papers and radio shows to say that he was the first to do these things ( like syncing music , video , and voice for steamboat Willie , when max did it like 5 years before him )', 2, 'doqkntj'),
(420, 'TIL I learned I \'m old enough to know about cartoons many people do n\'t know about now..', 2, 'doqkqn7'),
(421, 'Good video , except Man of Steel is my jam AND YOU CAN NEVER TAKE IT AWAY FROM ME !', 2, 'doqm9db'),
(422, 'Yep . Had the VHS when I was a kid . All 80 \'s kids had that .', 2, 'doqme8a'),
(423, 'Disagree with `` origins stories are boring as hell . \'\' Origin stories literally build the character . Batman Begins is a great origin story movie to the trilogy , arguably on par with the Dark Knight .', 2, 'doqmmsm'),
(424, 'His cadence and voice levels in the video get old quickly = (', 2, 'doql5dp'),
(425, 'For anyone who watched the video ... .did you guys catch the random subliminal black dude that flashed real quick across the screen . What the hell was that about ? Edit : It \'s around 3 mins into the video . Right at like 3:03', 2, 'doqlasz'),
(426, 'It \'s also notable that this particular cartoon was the one responsible for giving Superman the ability to fly . Before this , he could only leap buildings in a single bound . The animators thought it looked silly , and gave him flight . And the rest is history .', 2, 'doqls7j'),
(427, 'TIL there are people that have never heard of the Fleischer Superman cartoons ...', 2, 'doqml0w'),
(428, 'u/kaptainkristian \'s video channel is one of the best I \'ve ever followed . every topic is always extremely well done and reveals a truth that seems so innately obvious yet very obscure on the base level . Seriously man keep doing your thing', 2, 'doqn4aw'),
(429, 'damn WW thicc as fuck @ 1:39', 2, 'doqklr9'),
(430, 'That was one of the most beautiful things I \'ve seen on YouTube in a long time', 2, 'doqkqx1'),
(431, 'Good Lord . I remember watching this on VHS at my grandmother \'s as a kid in the 80s . Never knew it was so old .', 2, 'doqlc0o'),
(432, 'Used to watch these as a kid ( I ’ m 29 ) . To me , this WAS Superman , down to the theme music . As a kid it didn ’ t occur to me that it was old . I thought it looked great and it was exciting .', 2, 'doqlcro'),
(433, 'Lois Lane in those has NEVER seen a machine she does n\'t want to climb into to hide .', 2, 'doqlmxj'),
(434, 'I had a VHS version as a kid in the 90 \'s . These cartoons were actually my first real interactions with the character , and it is still my favorite iteration . I did not realize at the time how well done they were .', 2, 'doqmmh2'),
(435, 'Anyone see what appears to be a subliminal image of Gucci Mane around 3:03-3:04 ?', 2, 'doqn1hy'),
(436, 'Holy shit , I had a vhs of these as a kid ( late 80 \'s ) I watched till it was worn out . What a gut punch of nostalgia .', 2, 'doqnaf2'),
(437, 'The wording in that headline makes me feel so old lol', 2, 'doqngvh'),
(438, 'One of the best video essays I \'ve ever seen .', 2, 'doqo3en'),
(439, '`` He \'s just a dude from Kansas doin \' the right thing . \'\'', 2, 'doqq8b9'),
(440, 'They called it Superexpensive .', 2, 'doqkn1k'),
(441, 'I feel like I saw an episode of this when I was a kid . Something about a dinosaur that \'s been frozen and thaws out and he has to fight it .', 2, 'doqko6i'),
(442, 'Wait , is it half a million in 1940 \'s money ? How could they afford that ? How many ads did they show per movie ?', 2, 'doqkq2z'),
(443, 'Thunderbirds , adjusted for inflation , cost £1 million per episode . Mostly because each episode had around 70-120 effects shots .', 2, 'doqkrgg'),
(444, 'It was n\'t `` a cartoon , \'\' it was THE cartoon . I do n\'t remember when I first saw it , but it shaped how I think of epic cartoons in my imagination ... in terms of motion . < 3', 2, 'doqkud2'),
(445, 'I love everything created by Fleischer ... So many awesome things .', 2, 'doqkvb6'),
(446, 'My mother-in-law got a DVD of all these for my son when he was two . Little did she know it was really a gift for me .', 2, 'doqkviu'),
(447, 'The Fleischer brothers . The most under appreciated animators of that time period .', 2, 'doqkzaw'),
(448, 'Thank you OP . That was REALLY fucking cool .', 2, 'doql2ai'),
(449, 'These were the greatest . I had a DVD with all the episodes , until my wife tossed them because I “ should have grown out of things like that ” .', 2, 'doql2ph'),
(450, 'Anyone else see the black guy fade in and out in like a fraction of a second in the video ?', 2, 'doql48z'),
(451, '.', 2, 'doql5io'),
(452, 'My grandma had this old VHS tape when I was a kid and it boasted 3 straight hours of cartoons , mainly Loony Tunes , but also other classics including these old superman cartoons . My brother , sister and I would watch it all the time . Taking the tape out without rewinding so we could pick up later where we left off . I remember that there was always a scene where he would jump into a phone booth or a closet and you could always see a shadow of him changing into superman and I always thought it looked cool .', 2, 'doql5sl'),
(453, 'I had this on VHS , when I was a kid I watched it a million times . No idea it was so influential .', 2, 'doql5zd'),
(454, 'What is a half a million in 1940 \'s money ?', 2, 'doql71j'),
(455, 'how gucci mane get a cameo ?', 2, 'doql7j7'),
(456, 'Is no one going to mention the random soft fade to [ Gucci Mane ] ( https : //imgur.com/a/9FubX )', 2, 'doql8oz'),
(457, 'Holy shit I loved this show . The one with the robots stealing from the banks was always my favorite', 2, 'doql9a8'),
(458, 'Half a million adjusted for inflation , not at the time .', 2, 'doql9hq'),
(459, 'seriously good post op', 2, 'doqlchd'),
(460, 'people should read the Max Landis Superman comics . Well , they are really about Clark , not Superman , but still a really really great read .', 2, 'doqleys'),
(461, 'One of the episodes is up on Amazon video , I watched about a month or two ago . One thing that really caught my eye was the architecture , everything is this shiny beautiful art deco and Metropolis looks a lot like the Metropolis from the German movie . It \'s a very cool retrofuturistic look .', 2, 'doqljpg'),
(462, 'This animation looks so much better than a lot of the cartoons nowadays . I \'ll take the more realistic look to everything over Rick & Morty style any day .', 2, 'doqlk20'),
(463, 'half a million in 40 \'s money ? Thats like a billion today .', 2, 'doqlkfs'),
(464, 'I have all these on blu ray . They are amazing .', 2, 'doqlkns'),
(465, '... half a million *back then ? *', 2, 'doqlkoh'),
(466, 'Just now discovering the Fleischer cartoons ? I \'m jealous !', 2, 'doqlljb'),
(467, 'That narrator \'s voice put me to sleep .', 2, 'doqlmjc'),
(468, 'Had this of VHS that I bought from a uk Morrison ’ s - was always glued to it but didn ’ t know why . Now I know .', 2, 'doqlmmq'),
(469, 'Half a million per episode ? I highly doubt that in 1940s dollars .', 2, 'doqlmx1'),
(470, 'Yeah , it was the main inspiration for the style of 1990 \'s Batman : The Animated Series .', 2, 'doqlnc3'),
(471, 'i want to see these', 2, 'doqlno9'),
(472, 'Great video . Superman literally IS an alien though . It \'s the first thing you learn about him .', 2, 'doqlohu'),
(473, 'I have a DVD of this at my house . Interesting because they have Nazi characters in the stories . It would seem odd to some today if they put ISIS in a cartoon .', 2, 'doqlp55'),
(474, 'That animation is insane ! It ’ s better than most of the dc animated movies 70 years later , that ’ s impressive as hell .', 2, 'doqlpha'),
(475, 'The Fleischer Superman cartoons featured the first transforming robot in popular culture , IIRC .', 2, 'doqlrub'),
(476, 'I loved these as a kid', 2, 'doqlsec'),
(477, 'I remember this being such a cool cartoon as a kid . Crazy how much it cost , even adjusted for inflation', 2, 'doqlta5'),
(478, 'Cartoon Network used to show this cartoon in the 90\'s/00 \'s . I remember they almost always showed the episode where they go to hawaii and a volcano erupts .', 2, 'doqlu3z'),
(479, 'I wore this VHS out as a kid . Used to bring it to school with me', 2, 'doqlwzm'),
(480, 'That \'s way better than the shit American cartoons do now .', 2, 'doqlx3j'),
(481, 'I had the vhs copy of some of these . Loved them', 2, 'doqm2yo'),
(482, 'Wow , I had one of those episodes when I was a kid . Probably still have it lying around on a video tape somewhere . It´s the one where he stops the plane . I had no idea it was made in the 40s ! I am now massively impressed !', 2, 'doqm384'),
(483, 'Simply Fantastic .', 2, 'doqm3p8'),
(484, 'Another narration that makes me want to punch a baby . JUST SPEAK NORMALLY !', 2, 'doqm4pq'),
(485, 'Half a million adjusted for today . It seems like a lot less money now that I know that', 2, 'doqm6js'),
(486, 'We bought this at dollor tree around 13 years ago .', 2, 'doqm7yp'),
(487, '> gilding a repost of a video SOMEONE ELSE MADE', 2, 'doqm8bb'),
(488, 'dude repping the kaptain , love that guy', 2, 'doqm8ho'),
(489, 'Thank you for this !', 2, 'doqm8lf'),
(490, 'Thank you ! I love those cartoons and they always leave me wistful . I wish every producer/screenwriter/director/ of a Superman flim would watch those classic toons first . I also think there is too much emphasis on origin flims . Ninety-nine percent of people who go to Marvel/DC comic films KNOW who these people are , if you insist on telling the origin ( known as exposition ) make it quick and move on . Please .', 2, 'doqm8yf'),
(491, 'I ca n\'t believe how much better the 40s cartoon looks than the 60s one . What the heck happened ?', 2, 'doqmagw'),
(492, 'Oh I remember this ! I still have some VHS tapes around with several episodes of it !', 2, 'doqmbtw'),
(493, 'I love KaptainKristian \'s content . Easily my favorite youtuber', 2, 'doqmbvw'),
(494, 'These are now public domain if I am not mistaken .', 2, 'doqmc59'),
(495, '`` Space dildos \'\'', 2, 'doqmeta'),
(496, 'If I remember correctly this is where Superman gained the ability to fly ( as it was cheaper than making him leap tall buildings in a single bound every time ) .', 2, 'doqmgis'),
(497, 'These were my bedtime cartoons at my great-grandparents \' house !', 2, 'doqmhy9'),
(498, 'I came here for the space dildos .', 2, 'doqmhz4'),
(499, 'Mind blowing that animation in the 40s was better than animation in the 60s ... and in a lot of cases , even up to the nineties . I loved me some X-Men the animated series , but that animation was horse shit', 2, 'doqmjtk'),
(500, '[ If you want to see more by this brilliant son of a bitch , here you go . ] ( https : //www.youtube.com/channel/UCuPgdqQKpq4T4zeqmTelnFg )', 2, 'doqmmpg'),
(501, 'I used to watch these on vhs when I was a kid . I knew even then that it was special in its style . It ’ s the genetic precursor to the Batman series everyone loves from the 90s . Come to think of it , several 90s IPs were paying homage to this 40s style , at the time .', 2, 'doqmne9'),
(502, 'I remember reading somewhere that Max originally was n\'t interested in making these cartoons so he quoted a ridiculous amount of money per episode to make , hoping DC would pass but instead they surprised him by agreeing to it straight away .', 2, 'doqmnen'),
(503, 'Space Dildos', 2, 'doqmnx0'),
(504, 'Made by Fleischer Studios , whose classic 30s cartoons were the main inspirations for Cuphead .', 2, 'doqmp57'),
(505, 'Not a fan of of rotoscoping for character animation . It \'s great for light sabers , but I see it as cheating when relying on it for full characters . It also has a way of stiffening movement somehow .', 2, 'doqmppy'),
(506, 'Fleischer , beautiful stuff . The real superman before they tacked on flight .', 2, 'doqmsti'),
(507, 'The title is misleading . The half million pricetag is adjusted for inflation .', 2, 'doqmu5u'),
(508, 'It looks better than most hand drawn animation after it .', 2, 'doqmv1k'),
(509, 'Yes , the 40 \'s . When euros where sacrificed so average dudes from kansas could became super heroes . Well done .', 2, 'doqmvjt'),
(510, 'Half a million in today \'s dollars or 1940 \'s dollars ? Big difference Edit : definitely 1940s dollars . What a beautiful animation !', 2, 'doqmw9z'),
(511, 'only 40s kids will remember', 2, 'doqmxxv');
INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`) VALUES
(512, 'I grew up watching George Reeves play Superman on TV . This is the first time I \'ve ever heard of Kirk Alyn , but he seems to fit the mold a lot better .', 2, 'doqmy4l'),
(513, 'Love the Toro y Moi sample at the end', 2, 'doqmzqc'),
(514, 'I have these on VHS . I remember I was watching them about 15 years ago , after smallville finished , I was in a superman high . Then the episode where he sneaks into the Russian base and assassinates everyone kind of ruined them for me', 2, 'doqn11x'),
(515, 'Thank you , Reddit , I just won Christmas .', 2, 'doqn19t'),
(516, 'DC had the Animated Universe on lock from the very beginning . Explains a lot !', 2, 'doqn1gg'),
(517, 'I had this on dvd cant find it now thi', 2, 'doqn1h5'),
(518, 'Wtf is happening in background at 3:04 ? ?', 2, 'doqn429'),
(519, 'Hm . If he did n\'t fly before the Fleischer cartoons , why did the radio show already have the `` Look ! Up in the Sky ! It \'s a bird ! It \'s a plane ! \'\' line a year earlier ? That does n\'t make any sense if he ca n\'t fly..', 2, 'doqn4ba'),
(520, 'Beautiful animation . It \'s sad how lazy both animation and design has become in the West these days .', 2, 'doqn6ez'),
(521, 'Back in the 70 \'s , those were sometimes played by Superhost during Saturday Movies . Shoes On ! out of Cleveland ( WUAB 43 ) on early cable TV was a major part of shaping my love for Sci-Fi and technology . Thank you Marty Sullivan ! https : //en.m.wikipedia.org/wiki/Superhost', 2, 'doqn6zd'),
(522, 'I the only one who saw the black guy at around 3:00 ? ! ?', 2, 'doqn8gf'),
(523, 'Max Fleicher made great movies . ( his style inspired the new game called \'cuphead \' )', 2, 'doqn8h0'),
(524, 'That looks better than a lot of cartoons today . Damn .', 2, 'doqn8in'),
(525, 'Very interesting video I ’ ll have to look up his channel on YouTube PS I know I wasn ’ t the only one that noticed the picture of Gucci Mane', 2, 'doqn969'),
(526, 'Always up vote kaptainkristian', 2, 'doqn9n7'),
(527, 'That \'s the cartoon that I watched as a kid 25 years ago !', 2, 'doqna6w'),
(528, 'The Fleischrers did remarkable work in these cartoons . My favorite is The Magnetic Telescope .', 2, 'doqnawn'),
(529, 'Love KaptainKristian , his vids are great . Also laughed so hard when he did the rewind with the Superman flying around the Earth backward in the corner . Hilarious !', 2, 'doqnb8g'),
(530, '-c I', 2, 'doqnbbs'),
(531, 'This is the oddest observation but there is a random dude in a transition at 3:03 ... looks like Meek Mill ... I need an explanation lol', 2, 'doqnc78'),
(532, 'So I am already a bit into this : I thought that the narrative consensus was that animation started out as an all ages thing and moved into a kids thing during the 40 \'s and 50 \'s and it is only now that we are going back to expecting animation to be taken seriously as an adult medium .', 2, 'doqndvr'),
(533, 'Can someone explain the Gucci Mane watermark at 3:03 or am I just going crazy ?', 2, 'doqnf95'),
(534, 'I actualy love origins stories', 2, 'doqngzf'),
(535, 'I like how he ended on `` He \'s not an *alien* , he \'s not a god , he \'s just a dude from kansas doing the right thing . \'\' even though he \'s a literal alien .', 2, 'doqnixd'),
(536, 'I had totally forgotten about this until they flashed through some of the cartoon and ya know , I think THIS was one of the very first cartoons I ever watched ... .probably in my grandparents basement or on saturday morning re-runs or something but , yeah that was really really cool . Thanks for posting !', 2, 'doqnjkp'),
(537, 'Why does the thumbnail look like Red Son ?', 2, 'doqnmr1'),
(538, 'Those animations are completely insane , there is sooo much that \'s done right . The motion , grace and fluidity of the characters are absolutely amazing , better than pretty much anything else I \'ve ever seen TBH ( in this style ) . The physics often irk me in animated movies and tv shows but this does it sooo right it \'s amazing . So hard to believe it was made in the 40s !', 2, 'doqnn1t'),
(539, 'I \'m a millennial , however my dad was a big cartoon fan and used to get my random DVDs of old cartoons to watch . Some of them were random 1930 \'s Comicolor cartoons ( Google that ) and others included Popeye and Looney Tunes . The 1940s Superman was also there and I still remember it distinctly . What set it apart was that while it was still a \'cartoon \' , it had a very sombre undertone which rendered it adult-like for me . I loved it !', 2, 'doqnnw3'),
(540, 'Random photo of Gucci Mane at exactly 3:03 ? ! ! ! https : //youtu.be/dDMQ3tXNKgM ? t=177 Anyone got an explanation for this ? lol , wtf .', 2, 'doqno3r'),
(541, 'This just reminded me of how much I wish I had watched the Batman animated series when it was on Netflix Fuck I missed it', 2, 'doqnps1'),
(542, 'The lighting and movement of this reminds me a lot of Disney \'s Fantasia .', 2, 'doqnqbz'),
(543, 'I definitely watched these as a kid so I \'ve always just assumed they were from the 80s/90s . Absolutely blown away that these are from the 40s ! !', 2, 'doqnqlu'),
(544, 'You really should check out all of KaptainKristian \'s videos , the dude makes some good shit .', 2, 'doqnse0'),
(545, 'Holy shit ! I had a vhs called `` cartoon collection \'\' in the 90 \'s as a kid and the episode `` jungle drums \'\' was on it . Used to scare the crap out of me', 2, 'doqnst7'),
(546, 'they remade Sky Captain and the World of Tomorrow ( 2004 ) its actually thoroughly enjoyable with a great cast . overlooked imo . http : //www.imdb.com/title/tt0346156/', 2, 'doqntb0'),
(547, 'Dang I just randomly started watching some of these today , completely unrelated , from a guy who remastered them and compiled them in a YouTube playlist . I was blown away because I forgot that cartoon started only 3 years after superman himself was introduced . Really solid animation !', 2, 'doqntcw'),
(548, 'i tried to find this again some time ago and could n\'t believe it was from the 40 \'s . I mean I thought like 70 \'s or 80 \'s . The one with the gorilla in the circus scared me as young .', 2, 'doqntgw'),
(549, '“ He ’ s not an alien . He ’ s not a god . He ’ s just a dude from Kansas doing the right thing . “', 2, 'doqnux0'),
(550, 'Holy shit , I had this on VHS when I was a kid . Thanks for the time travel', 2, 'doqnvcx'),
(551, 'Oh man , I saw the first glimpse of the cartoon and I automatically got flashbacks to my childhood . It also brought up memories of watching Betty Boop as well .', 2, 'doqnvv2'),
(552, 'I ca n\'t watch that work because my computer has so sound , but I \'ll add in a random piece of trivia I know and hope it was n\'t mentioned in the video : Notice in the early comics and first few Fleischer cartoons that Superman jumps and does n\'t fly . Originally , he jumped from place to place . Sometimes bad guys could ( temporarily ) get away from him if he missed a jump and started going downwards . He could n\'t do anything until he lands . I believe an early Fleischer cartoon had him landing on power lines and using them as a trampoline to propel himself back into the air . The Fleischer people hated animating the jumps . They eventually asked DC/National to make him fly as that was much easier to animate , and they did . That \'s how Superman started flying .', 2, 'doqnw6z'),
(553, 'Apparently I watched this already ( liked the video ) in the past two years , but do n\'t remember at all .', 2, 'doqnwva'),
(554, 'I love these . In fact , I have two VHS tapes full of episodes in a drawer . If only I had a player ... So many of thee episodes have been ingrained into my memory . I still remember the robot one , the one with the giant Japanese plane , the one with the T. Rex , the one with the giant meteor magnet , the one where Supes was shrunk , and many more . Good times .', 2, 'doqnwwc'),
(555, 'Nerdwriter vibes', 2, 'doqnxrn'),
(556, 'In my media aesthetics class when we were learning about shadows , our professor played some clips of animations that used shadows amazingly and in the clips were mostly modern movies like spirited away and the nightmare before christmas . But one of the ones that stood out the most was a clip from the original superman animation . Compared to the other clips , the superman one was so clean and smooth i thought it was recent but when our professor told us its almost 80 years old we were all dumbstruck .', 2, 'doqnyat'),
(557, 'You \'ll be interested in this follow up comic by a fan , it \'s tremendous : http : //lastmechanicalmonster.blogspot.ca/2013/11/page-1.html', 2, 'doqnz1h'),
(558, 'Just for context what other animation happened at the same time as this in and outside of the US ?', 2, 'doqnzx4'),
(559, 'Structure , in terms of shapes and angles are not significantly impacted by isotopes of hydrogen . But reactions are . The elections have the same shape , more or less , but the masses of the nuclei and therefore the atoms are off . Heavier molecules vibrate more slowly , so when you \'ve got a mixture of protonated , deuterated and tritiated molecules with the same primary structure , the lighter molecules will react faster than the heavier ones .', 4, 'doqlgi2'),
(560, 'Yes , technically , but in general , exchanging H for D would n\'t change the structure or synthetic chemistry significantly in the lab . It will affect more subtle aspects like the kinetics and may change the ratios of different conformational isomers . There are three possible mono-tritiated ethanol regioisomers , in theory : CH2TCH2OH , CH3CHTOH , CH3CH2OT . If the tritium decays to He-3 , one might expect a cation formed at the site of the previous T atom . Thus one can imagine the first molecule may then form the corresponding epoxide , the second an aldedhye , and the third may undergo some sort of H-shift and then form the aldehyde .', 4, 'doqn9m1'),
(561, 'Our urban environment is effectively breeding super raccoons through natural selection . The raccoons with the best problem solving skills figure out how to open up the trash cans and subsequently get the food . They even learn how to work around traffic patterns to avoid cars . Truly brilliant animals . I wish I could see what evolution has in store for them .', 31, 'doqnbvn'),
(562, '[ Raccoon journal article ] ( https : //www.ncbi.nlm.nih.gov/pubmed/28963599 ) The only other animals to pass this test ( aside from humans ) , that I am aware of , are three species of Corvid . * Rooks ( *Corvus frugilegus* ) - [ Journal article here ] ( http : //www.sciencedirect.com/science/article/pii/S096098220901481X ) * New Caledonian Crows ( *Corvus moneduloides* ) - [ *Crows understand water displacement at the level of a small child : Show causal understanding of a 5- to 7-year-old child* ] ( https : //www.sciencedaily.com/releases/2014/03/140326182039.htm ) - [ Journal article here ] ( http : //journals.plos.org/plosone/article ? id=10.1371/journal.pone.0092895 ) * Eurasian Jay ( *Garrulus glandarius* ) - [ Journal article here ] ( https : //www.ncbi.nlm.nih.gov/pubmed/21249510 ) Orangutans kind of got it , by [ spitting in a tube to float a peanut ] ( https : //www.ncbi.nlm.nih.gov/pmc/articles/PMC2391177/ ) and Chimps with a similar method [ using their urine ] ( http : //journals.plos.org/plosone/article ? id=10.1371/journal.pone.0019555 ) .', 31, 'doqc78v'),
(563, '[ removed ]', 31, 'doqkw9f'),
(564, 'How does their brain/body size ratio stack up with other mammals ? If they are on par with great apes cognitively but with much smaller brains , have they evolved novel brain structures not shared with other mammals ?', 31, 'doqmhs7'),
(565, 'These animals are incredibly smart . And the stigma that they all carry rabies is insanely untrue . Source : was vet assistant 2 years', 31, 'doqmczs'),
(566, 'The Latin for the racoon family is procyon , which literally means `` washing \'\' , because they have a habit of dipping all of their food in water before eating it . If only 2 of the 8 passed , I wonder if the raccoons were just taking the given test items and throwing them into the water because it \'s a habit that they \'re born with . Alternatively , perhaps the fact that they habitually do this has caused it to be something that they \'ve been indirectly `` taught \'\' as an indirect effect of their innate habit of putting things in water .', 31, 'doqntmj'),
(567, 'What \'s so special about this test in particular ? Tons of animals , including mice , rats , cats , dogs , and pigeons understand cause and effect as you can see with , for example , Skinner boxes . Even mice with their tiny brains will learn to push bars to get treats or avoid shocks . In fact , it seems that an animal that did n\'t understand cause and effect would n\'t really be able to function at all , as it would n\'t realize that any of its actions could produce desired outcomes . A lot of animals can also learn through imitation or social cues . Just a couple of days ago , there was an article on here about how dogs are able to figure out which bowl a treat is hidden under just by watching a human point at the bowl -- and monkeys will pick up a bowl to find treats hidden beneath if they \'ve witnessed a human do so . So , how is it special that 25 % of raccoons are able to learn through imitation in this specific water-level-raising task ( e.g. , they watch a human put rocks into the tube to raise the water to get a marshmallow and then do the same thing they just witnessed ) ?', 31, 'doqngqp'),
(568, 'How do they consider this proven if only 2 of 8 did it ? That means there is a 25 % success rate , not passing by any means . If someone can explain to me it would be great .', 31, 'doqms72'),
(569, 'Maybe racoons will evolve into the next intelligent species haha . Granted , if they could survive a cataclysmic event , perhaps it could happen .', 31, 'doqosnx'),
(570, 'For those interested in raccoons and how they adapt to urban environment ( give you some idea how they do on the test ) , I highly recommend the Nature documentary on Netflix “ Raccoon Nation. ” Very interesting and very fun watch .', 31, 'doqno93'),
(571, 'Is the video on this article just black to anyone else ? Have audio but no video ...', 31, 'doqpy7v'),
(572, 'Why does it seem they are so often roadkill ? If they are this smart you \'d think they \'d understand big moving objects could hurt . Are they slow ? poor vision ? what gives ?', 31, 'doqpyef'),
(573, '> In another test , some chimpanzees came up with the solution—and one found that urinating into the tube did the job just fine . Unloading so you reload , smart .', 31, 'doqq4hm'),
(574, 'In another experiment , human failed to pass the test -- When eight homo sapiens were locked in a cage with the tall narrow tube containing marshmello at the bottom , none urinated into the tube to get the treat of floating marshmello .', 31, 'doqqbwi'),
(575, 'Does anyone have a gif of the raccoon who dropped some kind of dissolvable food into water by accident and then was pushing the water around looking for it ?', 31, 'doqqcuy'),
(576, 'It \'s a Raccoon.. We just got new green bins they ca n\'t open . Takes one to pick up a knife..', 31, 'doqqj7r'),
(577, 'Those trash pandas man .', 31, 'doqp60m'),
(578, 'so how long until racoons reach the level where we can use them to perform complex calculations for medical research , engineering simulations , creating new materials etc . ?', 31, 'doqq483'),
(579, 'Optometrist here . Had a 38 yr old female patient coming in for a routine eye exam . Asked her all the usual background health questions . Saw she had checked off migraines x 20yrs on her health history . Whenever anybody mentions they have headaches I always ask for more details . She said she \'s had migraines everyday since high school . I was a bit confused . I said `` every day ? ! ? \'\' and she said yep . I asked further about her diagnosis of these and she said she \'s just seen regular family practice doctors and even a neurologist . I asked her to describe the headaches in detail . How long they are , where on the head , what time of day , etc . She got irritated with me and said `` Are n\'t we supposed to be doing a simple eye exam ? These headaches do n\'t have anything to do with my eyes . They are migraines . \'\' At that point I stopped asking questions and silently hid my anger with her and just did the eye exam . Near the end of the exam I noticed her optic nerves were swollen . I explained that swollen optic nerves require urgent referral for imaging of the brain . CT , MRI need to be done first and other testing if there is nothing found . They came back clean . I ordered a lumbar puncture after that and her cerebro-spinal fluid pressure came back 3x higher than normal . She was put on a medicine to bring it back to normal and her unquestionable diagnosis of `` migraines \'\' that she had every day for 20 years were instantly cured .', 1, 'doqfanw'),
(580, 'I was a unit secretary and nurse aide on a radiation oncology unit in the early 2000 \'s . We had a patient show up through the ER and was admitted for emergency radiation treatment . She had a massive fungating mass in her mouth that had consumed half her head . When the RadOnc doc tried to examine her and open her mouth , her remaining teeth fell out into his hand . It had eaten through the bones of her face , invaded her eye socket , everything . Doc said it was the worst case of mouth cancer he \'d seen . According to her husband , she had a small lesion on her hard palate , and upon receiving the diagnosis of an early stage squamous cell carcinoma , she decided to treat with essential oils and things like frankincense because chemo was poison . Her husband said he had tried to reason with her but she was adamant about the \'natural \' treatment . She died in agony shortly after .', 1, 'doqdee2'),
(581, 'Was treating cavities on a very nervous 4 year old . Had finally gotten into a cooperative groove when genius mother looked up from her phone and noticed that I was drilling teeth ( she was in the room the whole time - I had reviewed treatment with her , she knew we were fixing cavities ) . Proceeds to curse me out under her breath saying `` you \'re drilling holes in her teeth ! this is fucking ridiculous , you people are scammers making holes in people \'s teeth ! \'\' I kept my calm and said `` Ma\'am if you have questions I will be happy to answer after I \'m finished \'\' - I \'m shaking with rage at this point because she was 20 min late to her appointment and I \'m bending over backwards to make sure her kid has a good visit and does n\'t end up scared of the dentist . Appointment is over , kid jumps down high fives and gives me a big hug and I turn to mom and ask her how exactly she thought cavities were fixed ? She said \'you do n\'t drill , my mother is a dental assistant \'\' . I then proceeded to explain in excruciating detail the scientific process of how we remove decay . She said `` that \'s not true \'\' I then told her that she can go ask her mom , ask Google or go to dental school if she wants to know more but I wo n\'t be treating her child anymore . Fucking nutbag', 1, 'doqggky'),
(582, 'Not a doctor but work in pharmacy . An old guy who had got an inhaler prescribed by his GP because he was allergic to his new dog . He came back to the pharmacy and said he was still completely breathless around the dog despite using the inhaler four times a day . On further question it transpired that four times a day he was spraying the dogs coat with the ventolin inhaler . Another gentleman who complained that he was in excruciating pain when inserting his suppositories and physically could n\'t get them into his ass . Turned out he was n\'t taking them out of the wrapper which is normally made from really tough foil or plastic . Ouch !', 1, 'doqd17r'),
(583, 'A relative of mine caused two other random patients to panic when she told them she had breast cancer . They thought it was highly contagious and were outraged about her being around kids', 1, 'doqdlr0'),
(584, 'I ’ m not a doctor , but I ’ ve had people tell me that I ’ m blind because of “ the sins of [ my ] forefathers ” and that it ’ s God ’ s way of punishing my parents and me for being atheists .', 1, 'doqbkud'),
(585, 'Ophthalmic tech/certified medical scribe here - patient came in for a complete exam ( chief complaint was `` need new glasses \'\' ) but as soon as I saw her it was obvious that she had a terrible eye infection . I asked her about it and she said `` No , I \'m fine - I \'ve been putting my breast milk in my eyes and washing my hands like crazy and it has gotten better . \'\' According to her it had been like that for a month . I was like : -| wat Another time I was scribing for one of my Doctors when a patient told him he stopped taking his BP meds and was now turning to holistic methods - Dr took his BP and it was 216/160 . We both looked at the patient like > : O r u ok wtf - like I was so taken aback I swung my chair around all dramatic and shit to look at him and doc instructed him to go to the ER ASAP when he left and to call his PCP . He argued with us , saying he had it under control . My Doc was pissed . You can only do so much when people think they know better .', 1, 'doqas3a'),
(586, 'Once had a patient ask for a fecal matter transplant ... ( legit medical procedure ) but , they wanted cow fecal matter used ! No , just NO !', 1, 'doqc4je'),
(587, 'Not a `` doctor \'\' , I \'m a doctor of pharmacy and sometimes it can confuse people that may think I \'m a medical doctor . Anyway , this story happened a few weeks ago . Had OB nurse call me to talk to a family about vitamin K shots . These are given to newborns to prevent hemorrhages and excess bleeding . Now there is some controversy regarding the practice of giving vitK and is kinda similar to the anti-vax movement . That \'s not why the parents were concerned , they read online the shot contains benzyl alcohol . Benzyl alcohol is not uncommon to have in some injections because it inhibits microbial growth to keep it sterile . It is very dangerous for newborns , and is never in injections meant for them . The parents did n\'t know that part , they were upset because they thought that the alcohol is equivalent to giving the baby a full beer and will make it drunk . The parents were in their 40 \'s . I have many more , but this is just one that is more recent .', 1, 'doqdbvy'),
(588, 'When I was a child I wet the bed . It was like clockwork and I was embarrassed as fuck out it . It happened all the way up until I was 13 so I could n\'t have sleepovers or anything . I would always ask my mom to take me to the doctor because I wanted this to stop . I did n\'t want to be 10 years old wearing fucking diapers to bed . However , even though I had free insurance through the state , she said she could n\'t take off work for it . My parents had split when I was 5 and I only saw my father every other weekend so my dad was n\'t an option I did n\'t think . Although he was pretty upset that she would n\'t take me . Instead , her solution was to stop me from drinking anything . I was n\'t allowed to have water or milk or tea or anything for hours before bed . Obviously this never helped because your body still has water in it , but apparently that did n\'t occur to her . So my dad eventually had enough of her shit and took me one day to go to the Urologist . According to his layman \'s terms , the connection from my brain to my bladder parts was n\'t fully there , so over time that connection would start to work correctly . We would just have to wait it out . This was terrible news to me , and we both told my mom what he said , but she still was n\'t convinced . `` If you do n\'t have nothin \' in your bladder , you cai n\'t piss the bed . \'\' Sound logic , but I could n\'t do anything about it . Then , lo and behold , when I hit puberty it all stopped , like overnight . I was just constantly dehydrated and alone until that point .', 1, 'doqfbi7'),
(589, 'My father was an oncologist , and one of his patients was a semi known religious leader in our country ( more of a cult than a religion , tbh ) . After a round of chemo , said patient threw up , and one of the members of their congregation told them that God had intervened and they had `` thrown up \'\' the cancer . My father tried explaining why this was nonsense , but they nevertheless stopped treatment and told their congregation that God had intervened and destroyed the cancer . Needless to say , they died soon after stopping treatment .', 1, 'doqhs5g'),
(590, 'Lady walks into the office . I start coughing the smell of cigarette smoke is so strong on her . Her dry leathery skin cracks while she talks from the years of sun abuse . She tells me , `` I \'ve stopped using sunscreen because I researched that it causes cancer . \'\'', 1, 'doqid65'),
(591, 'This is n\'t about a patient but about a medical student my mother knew but I wanted to say it because I thought it was really funny . My mom and her group were making rounds looking at patients and diagnosing them with a doctor . The doctor takes them to a mother and child where the child suffers from some sort of condition where his left eyelid droops down and covers half the child \'s eye . The doctor asked the medical students what does the patient suffer from and one medical student raised his hand and said `` Down Syndrome sir . \'\' The mother started to cry and scream because she thought her child had Down Syndrome and the doctor called the medical student a `` fucking idiot \'\' and told everybody to leave so he could tell the mother that her baby did n\'t have down Syndrome .', 1, 'doqcf78'),
(592, 'Rocket raccoon is n\'t really that unbelievable anymore .', 31, 'doqr80b'),
(593, 'Imagine somewhere a much more advanced speicy goes : “ humans have passed the xxx test , which measure if humans can discern astrophysics in xxx manner by sending humans to mars ” then to them , we are just some “ raccoons level anaimal ”', 31, 'doqr8qb'),
(594, 'Two racoons out of eight ? TIL racoons are about as bright as a standard high school student . Tremble , world .', 31, 'doqr93r'),
(595, 'Now Vulcans will make first raccoon contact', 31, 'doqr9if'),
(596, 'Yet for some reason , one raccoon that I saw ca n\'t even tell the difference between a circle or a square .', 31, 'doqrash'),
(597, 'this guys voice annoys me . its like hes trying too hard to sound nonchalant but also make everything he says sound more important than it is .', 2, 'doqolxl'),
(598, 'This series was one of my favourite things to watch as a child . Instead of watching shitty cartoons like Dora the Explorer or Blues Clues , I would watch the Superman cartoons over and over again .', 2, 'doqqjqs'),
(599, 'I work in the ER . We had a very pregnant patient come in needing stitches in her vagina . Turns out she was a realtor and didn ’ t want her water to break while she was showing a house , so she put a glass cup in her pants to catch the water . Instead of using a pad or an adult diaper , she went for a GLASS CUP . She sat down while showing a house and sure enough , it broke and cut her up pretty bad .', 1, 'doqibwi'),
(600, 'I work at an animal hospital and a client opted to euthanize their 2 year old cat because he got constipated for a 3rd time and they could n\'t afford to get an enema again . They had not been following our treatment plan from the previous 2 times and feeding the cat garbage dollar store cat food . The doctor had the euthanol drawn up in a syringe ready to end this cats life , but I started losing it and grabbed the cat , put him in a cage , made a few phone calls and found him a new home in 10 minutes .', 1, 'doqeryq'),
(601, 'My mother ( senior advanced practitioner ( like a doctor but without a doctorate ) ) told me a story from her youth when she was in ER on nights and a couple were brought in by ambulance by a sniggering crew . When they came into ER , he was walking backwards with a towel around his waist , whilst she was bent over underneath the towel . Turns out she was giving him a blowjob and got his foreskin caught in her braces . Laughs all round . Nothing that a little local anaesthetic injection and a quick snip would n\'t sort . Once separated , they took her away to remove the foreskin from the braces whilst he was stitched up separately . He was given the standard advance to keep it clean , and to avoid sex for a few weeks until after the stitches had been removed . A heartfelt and embarrassed thanks by the couple was given to the staff , and off they went back home . They were back within an hour . They had tried to have sex and caused his stitches to tear ...', 1, 'doqg01r'),
(602, 'My mom had an affair with her drug dealer and , when told she was unfit as a mother and had to stay in the state by the court , she told me we were going on a roadtrip and we all ( my mom , her drug dealer , and I ) drove 8 states away until a private detective found us . Edit : Okay , I ’ m on a 15 minute break but I ’ ll post more info when I get off work in approx . 3 hours .', 32, 'doqeh70'),
(603, 'My mom sent me with her car and friend to buy an eight ball of cocaine when I was 14 . I knew it was wrong just not how wrong , I was just excited to drive the car .', 32, 'doqelnp'),
(604, 'Being given things I already owned as presents . SNES and N64 would be pawned , and I \'d get them back on Christmas or my birthday', 32, 'doq7o78'),
(605, 'my dad used to drunk drive me everywhere . he \'d get food and tell me it soaked up the alcohol so it \'s fine . I believed that until I started drinking', 32, 'doq365o'),
(606, 'Lying to get out of any problem , especially those caused by their own incompetence or malfeasance . It \'s still something I \'m working on . My first thought when I \'m running late is always some fake excuse like `` oh the traffic was terrible/the checkout girl was *so slow*/I was attacked by zombies but I had a chainsaw so I \'m fine but that \'s why it \'s 10am and I \'m in pajamas and not at work yet \'\' . I have to continually tell myself that a person with integrity apologizes and either offers no explanation ( when none is required , or when it \'s not helpful ) or tells the truth about what happened and accepts the consequences .', 32, 'doq5kzc'),
(607, 'Before I was totally competent swimming by myself , my mom would put a life jacket on me , tie a long piece of nylon rope to it , and chuck me in the river . She \'d basically swim me on a leash down the river for fun . Mom , you are the classiest redneck .', 32, 'doq7gjn'),
(608, 'When I was a kid and I had to pee walking back to the car , my dad would have me to pee on another cars tire . I thought this was normal . I did n\'t realize this was wrong until I got my own car and realized I would prefer if no one peed on it .', 32, 'doq4oz9'),
(609, 'When I was about 11 or 12 my uncle ( who was my guardian seeing as my parents are drug addicts ) would drop off my brothers and I at the arcade at the mall , i think it was called tilt , but he would drop us off and give us like 5 bucks apiece and tell us he would be back in a little bit to get us , well it would be like 5pm when he dropped us off and he would usually pick us well after the mall closed caused we would wait outside so after 9pm for sure . He \'d pick us up wreaking of booze and we \'d go home thankfully with no incidents . I \'ve asked about it now that I \'m an adult and he told me he used to get hammered and come get us . He does n\'t drink anymore but it must have been hard being in your early 20 \'s and raising the three of us . One time the SWAT team raided the house cause he used to grow mad weed outside , I never knew , just thought it was weird i was being picked up by my aunt in the middle of the night lol I have quite a few stories with him , my uncle is my best friend though and to me he \'s my father since he \'s the only one that \'s been in my life', 32, 'doqfj18'),
(610, 'White powder on a mirror with a razor blade and a rolled up dollar . I did n\'t realize what this was until about a decade later .', 32, 'doqb0ts'),
(611, 'Manipulating me by telling me how much the other one was manipulating me .', 32, 'doqermz'),
(612, 'Smoking in the car . I always hated it but thought it was normal , because it was .', 32, 'doq4rbm'),
(613, 'My mom tailgates like crazy . It is super dangerous . I do n\'t know how she has n\'t rear ended someone yet . I do n\'t get in thr car with her anymore .', 32, 'doq2zub'),
(614, 'Screaming at each other all night and throwing shit .', 32, 'doqauq5'),
(615, 'Our street was probably two miles long and gravel . Once we turned onto our street my dad would let us lay on the hood so we were only holding on by our fingers by the windshield and he would fly down that gravel road trying to shake us off . Watching my brother topple off the car and into the ditch and looking through the windshield to see my dad \'s head thrown back howling in laughter was a frightening experience for me .', 32, 'doqbo27'),
(616, 'My parents did everything in these comments ! Most notably we drove with my dad drunk all the time , my mom smoked in the car with us , we met their dealer in multiple occasions ( he used to buy us Christmas presents before we got too old and wised up ) , we got smacked if we did something wrong . Oh man , and then the stuff we knew was wrong , there was porn hidden everywhere , weed , we found coke once . Listing these like this makes it seem super bad , but I thought I had a good childhood and I love my parents and we weren ’ t poverty stricken or abused , but they were wild .', 32, 'doq5kvc'),
(617, 'Sleeping with other people and having to hide it .', 32, 'doq6v9b'),
(618, 'When I was little about 5yo I think one of my aunts had recently got married and moved to the UK Her husband turned out to be a drunken asshole who beat her regularly . She said nothing about it for a while . One night my family were visiting another uncle not that far away from her . That night she got severely beaten and needed to go to hospital . The hospital could n\'t get in touch with her husband so coincidently called the house we were at . My father immediately stashjed us all in the car and told his brother to follow . We went round to my aunts house , my father kicked the door in , found the drunken bum upstairs , threw him out of the 1st floor window onto the street , where my other uncle proceeded to beat the shit out of him for a few minutes before we all left . My aunt never returned to the house and my father made her divorce the cunt . So I learnt that domestic abuse should be talked about and reported and that physical violence , although arguably may be morally fine , is not something one should take into their own hands . He was a cunt though .', 32, 'doqd33i'),
(619, 'My parents are clean-freaks especially my dad . Their version of messy is leaving an article of clothing in the floor of my bedroom , not doing my laundry every week ( I have enough clothing to last me two weeks ) , or leaving a water bottle on my dresser . And God help me if I waited until the next day to do dishes because i was tired from working all day . I \'d get screamed and told I was lazy . The worst was when both of them would say that `` no man \'\' would `` ever want me \'\' because I was `` so messy . \'\' They said he \'d see how nasty I keep my house and he \'d be disgusted . Now here \'s the flip-side : Everyone else I know claim that I \'m a clean-freak because of how neat everything is ( desk , car , etc ) . I \'m constantly making sure my work areas are clean , I keep my car spotless , and I even go home from work on my lunches to clean the house . So now that you know some backstory , here \'s my answer to the question : my coworker came up to me a few weeks ago , and told me how that weekend she laid around the house for a few days instead of cleaned the house ( which she said really needed to be done ) . I immediately asked her what her husband said about it . I was ready to hear how he yelled at her , how they got into an argument about the mess , especially since he works at a harder job that requires long hours . He \'s not a messy person and likes to keep things nice Instead she said he came home , she explained that she had been tired all weekend , and told him she didnt get anthing done . He then just shrugged his shoulders , said it was okay , siad that they could do it another day , and then he chilled out with her . I didnt say anything except , `` oh . \'\' She left my desk to work on a project , not aware of how she just gave me a huge paradigm shift . I had to go to the bathroom so no one could see me cry . I never thought that there \'d be any man out there , who was a nice and clean guy , that would accept that I had off days when it came to managing a household . I thought he \'d yell at me and belittle me ( or worse , leave ) if I was n\'t on my game at all times . To know that one day I \'m going to have a husband that gave me grace and love like that floored me . I \'m turning 27 next month and I just found this out .', 32, 'doqd643'),
(620, 'When the whole family was going to the grocery store and my mom would just run in , my dad would do donuts in the parking lot while we waited . Literally the most fun ever .', 32, 'doqgr3n'),
(621, 'We would write poems for our waiter or waitress whenever we ate at restaurants', 32, 'doq7n2b'),
(622, 'We \'d ride in the bed of pickup trucks . Those indentations for the tires were seats right ? We got pulled over once and all the cop did was tell my dad to drive safely and for us in the back to not stand up while the car was in motion . Once when I was 13 the truck stopped , the passenger door opened , so I got up to get out as well . The driver then hit the gas . The truck flew out from under me and I flipped out , landed on the pavement with my arm . That \'s how I fractured my arm .', 32, 'doq5g9s'),
(623, 'Drinking every single day . My mum drinks a box of wine every day , but when I was a kid it would be a bottle of vodka or brandy a day . Come rain or snow or heat or gloom of night , she would make me walk with her to she shops to buy her booze , I think so that nobody would say anything to her with her kid there . It was only when she got diagnosed with pancreatitis a few years ago that it clicked and I thought , hang on ... Youre an alcoholic !', 32, 'doq8f4z'),
(624, 'My parents would beat me and I did n\'t really know that it was wrong until I got old enough to ask other kids', 32, 'doqa72w'),
(625, 'My mom never grocery shopped without her trusty red travel mug . What was in it , you ask ? It alternated between a screw driver “ OJ ” and kahlua “ coffee. ” She also “ used ” my pee for her weekly drug test at the methadone clinic .', 32, 'doq7vzc'),
(626, 'My dad and his friends would go to baseball and football games , and since I liked baseball , I got to go too . We would always get nosebleed seats because , ya know , cheap . Before going in , I would always be wearing this trench coat like jacket and they would hide flasks and beers , or whatnot inside . Since I was < 10 or so , I ’ d never get patted down by security . They were cops too . Haha . I give them props , because it was a good fucking idea , and I didn ’ t understand it until I was older .', 32, 'doqhaan'),
(627, 'Letting our dog just roam the neighborhood unattended . This was in a very developed suburb of DC in the 90s , not like some rural area where it \'s normal to just let your cats and dogs roam around your farm or whatever . The dog was friendly and as far as I know never attacked anyone , but he did get attacked by some other unleashed dogs and was hit by a car twice . Also people who are afraid of dogs should n\'t have to worry about a friendly beast bounding up to them , and I shudder to think about how many turds he must have left in people \'s yards .', 32, 'doq44x1'),
(628, 'The postman', 32, 'doq2s48'),
(629, 'Drinking copious amounts of vodka , smoking two cigarette packs a day .', 32, 'doq5fwz'),
(630, 'Stabbing each other with forks', 32, 'doq7qc3'),
(631, 'Staying home alone for days at a time . I lived in a house with my older brother and mom . My mom would pack a suitcase and leave for a weekend to attend `` meetings \'\' or travel abroad with a group of friends , leaving my brother and I behind . Edit for details : she ultimately sold our house and got her own place when I was 15 , and would always jokingly say `` if anybody gets confused about your situation , just tell them you \'re homeless . I \'ll pay for your therapy when you \'re older . \'\' Looking back on it , we never had dinner together as a family either . We \'d just have whatever food we wanted ( usually frozen pizza or spaghetti ) and go to our bedrooms or separate rooms to eat . I still have a hard time eating around people and became incredibly underweight in college due to a fear of the cafeteria and crowded restaurants . Adulthood is so eye opening . I \'m incredibly self sufficient and a decent cook now .', 32, 'doqgnfx'),
(632, 'I \'ve got a pretty solid list for my dad ... Unplugging his odometer to extend the warranty on his new vehicles , did n\'t realize the reason my half sister had a different last name was because he never appeared on her birth certificate to increase government benefits , etc . The moment I realized how big of a shit bag he is was when we pulled into the gas station to fill up his jet skis being pulled behind his custom pickup , he sent his girlfriend/baby momma in to get snacks and she busted out food stamps to pay ... For our snacks ... While jet skiing ... .', 32, 'doqgpac'),
(633, 'Overeating and emotional eating . We went to buffets a few times a week and had pizza every Friday . As a kid as young as 10 , I could finish a medium pizza on my own . I participated in sports year-round and became a vegetarian for 6 years ( which my parents harangued me about because it was “ unhealthy ” ) so I wasn ’ t terribly overweight throughout my teens . However , the weight piled on in college once I became more sedentary and the following years . I was addicted to food and was only ever able to curb my addiction this year in my mid-30s . I had gastric sleeve surgery and it ’ s been a wonderful tool to help me eat reasonable amounts of food . The surgery itself cuts out most of your stomach , reducing it to the size of a thumb and is irreversible . Food tastes differently to me now , to the point that I would rather eat whole , “ real ” foods than processed garbage . In a typical meal , I can handle 3-4 oz of meat and veggies , then I ’ m done .', 32, 'doq7dh9'),
(634, 'Kept `` pet \'\' dogs outside on chains year round for their entire lives . Being openly racist at home and all family gatherings . Mocking random people who were walking down the street for stupid reasons . Beating the crap out of each other over jealous accusations . Indoctrinating us with ideals of never going against the family to outsiders like cops or CPS , no matter what they do to each other . There are too many others to list , but suffice to say that being told that this is not how `` normal \'\' people act was kind of an awakening for me .', 32, 'doqh85c'),
(635, 'My father \'s favoritism to my brother , his only son . The rest of us are girls and he would make us do the typical gender stereotype stuff . It was especially hurtful when I asked him to take me hunting from the age of 8 until about 15 but he never did , but the second my brother could learn to use a gun , he took him hunting every season . I know that sounds stupid , but it \'s something that still bothers me to this day . Anyways , I did n\'t realize it was wrong until I would see how other girls were treated by their dad \'s in high school ... like the dad \'s were really interested in their lives and proud to have them as their daughters . It \'s like my value lessened just because I was a girl , even though I \'ve been extremely successful in life . I did n\'t mean to make this a wall of text , I guess I \'m just venting and it \'s nice to know that people will take the time to read this .', 32, 'doqdatm'),
(636, 'Smacking the hell out of us whenever we did something wrong . We were just told that it was `` Irish parenting . \'\'', 32, 'doq4xiu'),
(637, 'My mom kicks ice that misses the glass under the fridge . Never knew that was wrong until I did it at someone else \'s home .', 32, 'doqfm94'),
(638, 'My parents always told me that they were going to the Doctor quite frequently . Of course , I hated visits to the doctor and was happy to not tag along . My siblings eventually went to the ‘ doctor ’ quite frequently . When I was in high school , my fam brought it up during a holiday gathering , but i never pieced that puzzle together on my own . It was then that they revealed that ‘ going to the doctor ’ was just a way to get me to stay home if anybody wanted to go somewhere without me ( errands , the mall , McDonalds ) .', 32, 'doqhn4y'),
(639, 'My dad always had a side chic and I always lied for him .', 32, 'doqba8v'),
(640, 'Clapping when we got to our destination . ( Only if it was a long drive )', 32, 'doqd4kx'),
(641, 'Freeze batteries to make them last longer . Apparently that works for food . Not batteries', 32, 'doqevjc'),
(642, 'My dad will drive to LA with me and brothers while my mom was at work , about an hour away . He used to leave us at his friends house while he went to do ( stuff ) for like two hours . Years later I realized he had a side chick and I had a half sister same age as my little brother', 32, 'doqehli'),
(643, 'My parents always left their anal beads out , and whenever I would ask what it was they said it was for cleaning the toilet . So there \'s that .', 32, 'doqe96c'),
(644, 'My mom would make fun of the other moms for not having careers , and when I was a kid I would just assume that the others moms were not as smart or driven as my mom , but when I got older I realized that some women just like being moms and that having a career does not make you better than anyone else .', 32, 'doqb8ef'),
(645, 'My mom rarely told anyone `` no \'\' in public . She would always say `` we \'ll see \'\' or `` maybe if you \'re good . \'\' When we got home , she would say no to everything , whether it made sense or not ( Can I play video games ? `` No . \'\' Can I color ? `` No . \'\' Can I play in the backyard ? `` No . Just go to your room . \'\' ) I think it just bothered me that she was n\'t the same person in two situations . She also had a habit of `` remembering things differently \'\' than my siblings and I . She and my sister used to fight constantly , and my mom told her to find another place to live . Sis did just that - mom told everyone she ran away , and maintains that \'s how she remembers it . Then again , sis has been an addict forever and beat up my brother a bunch when we were kids soooooooooo But she also told me that my dad was leaving , and did n\'t want to live with us anymore . I did n\'t find out until l asked my dad why , years later , and he told me she kicked him out . He wanted to work it out and stay . I think the kicker was when I was a teenager . I was suicidal , used drugs to escape , cut myself , and she grounded me for it a lot . Once after a suicide attempt , she asked me to find another place to live . I kind of filled the role of a bad kid after that , and began to believe that I was , and that her behavior was normal . That turned into me thinking I \'m a bad person into my adult life and now I \'m spending $ 130 a week to teach myself that I \'m not . She still maintains that I was too much to handle as a teenager . Sorry for the novel . This was really therapeutic .', 32, 'doqgut4'),
(646, 'Cocaine . I thought it was sugar .', 32, 'doqemjv'),
(647, 'I found out recently that my mom forced me to use my right hand while I was showing obvious signs of being left handed . I eat with my left hand still , but in everything else I ’ m right handed . My mom told my wife this on our wedding day . That ’ s how I found out . Like who does that ? Apparently my dad was not a fan of this , but wasn ’ t able to stop it . I ’ m still really mad about it , but I guess there ’ s nothing to be done .', 32, 'doqg4ub'),
(648, 'Speeding , drunk driving , racism/homophobia , straight up ignoring us kids if we needed something , the `` unless I see blood you are n\'t going to the doctor \'\' ( in Australia so does n\'t even cost anything ) , sabotage , fuel siphoning , brawls , theft , slashing peoples tires , fraud and drugs . My parent \'s are not good people and I am glad I am not like them , although to their credit they have cleaned themselves up a bit since I moved out ( at 15 btw , that is how fucked it was ) .', 32, 'doq8j76'),
(649, 'A lot of the things I see here , my parents totally did . Not wear their seatbelts in the car . ( my mum did , but not my pop . But he was always the driver ... ) Smoke in the car . Even on the hottest summer day . Sometimes just rolling the window down is n\'t enough . Hair pulling . This was my pop \'s more relatively tame method of letting you know you were about three seconds away from an ass busting . Me being an extremely Tender-headed child and having fairly long hair , this was both painful and humiliating . Littering . That \'s now a huge pet peeve of mine as an adult . Tailgating . My pop is a very aggressive driver . My parents were n\'t bad parents exactly . Yeah , they spanked the hell out of me and my big sis with the belt when we seriously fucked up or were being little shits , and yeah , they did quite a lot of questionable things but I still love em to death .', 32, 'doq7hhr'),
(650, 'My parents would drunk drive me places constantly also I did n\'t realize what meth was for a little while', 32, 'doq7rap');
INSERT INTO `comment` (`id`, `body`, `sub_id`, `com_link_id`) VALUES
(651, 'They always liked my brother more They helped my brother when we played hide and seek by putting pillow over his head , I still have n\'t found him .', 32, 'doq4nnx'),
(652, 'Wrestling in the bedroom .', 32, 'doqeiv8'),
(653, 'My egg donor aka my mom would always get really drunk with her friends and pass out naked in the living room . Which usually meant I didn ’ t have to go to school the next couple of days . Until I finally told my dad one weekend what was happening . I didn ’ t quite understand at 10 why I suddenly went from living with my mom to my dad .', 32, 'doqfrl8'),
(654, 'My parents never had any physical contact when I was around , at first I thought nothing of it , but now I see that they were more of roommates than a couple . They \'re divorced now & it makes me happy to see them so happy with others', 32, 'doqfjsr'),
(655, 'Selling drugs . Mostly pills , and back then it was vicodin but I remember the switch to perks when I was around 10 .', 32, 'doq4sa8'),
(656, 'My dad was emotionally and psychologically abusive . I didn ’ t realize until I was 18 that he was pretty rotten . I used to think abuse was only physical so I always assumed that ’ s how parenting worked . It wasn ’ t until I was 18 and met my friends ’ parents that I realized I was going through shit without realizing it . I don ’ t hate my dad ; He ’ s just bad at being a dad . We never starved , brother and I had our own rooms , he never hit us , he was just really mean .', 32, 'doqg2xc'),
(657, 'I walked into the washroom and seen my mom and dad rolling up green stuff into little papers but I know they smoked cigarettes so I thought they were rolling their own like in cartoons . I got older and realized they were smoking that mid . Asked my dad about and he admitted he still lights up to this day .', 32, 'doqf6ie'),
(658, 'After the municipal snow plows had been by , Dad would aim the snow blower so that it discharged out into the street instead of piling up near the driveway entrance . Doing so made it miserable ( and , I think , dangerous ) for cars to pass by at normal speed because of the mound of snow he sent shooting out into the roadway .', 32, 'doqdxk6'),
(659, 'To teach me to aim in the toilet bowl , my mother would throw her cigarette butt in and shout with urgency , “ sink the submarine ! ” I never missed after that . Also , when I got older and went to friends ’ houses I always wondered why their walls in their house weren ’ t a yellowish tint like ours .', 32, 'doqfi11'),
(660, 'Not wrong per say but not legal , my dad would smoke weed , and blast old Willie Nelson tunes while driving all the time , i thought it was totally okay , he would also take us to church and stay out in the car for a extra 20 minutes burning one down . Never got pulled over and never in an accident . I just bought him willie concert tickets for his birthday and I can ’ t wait to surprise him with it .', 32, 'doqejqm'),
(661, 'Serving corn as the only vegetable . It \'s not really a veg , Ma .', 32, 'doq7w9r'),
(662, 'When we were loud , my mom used to ductape our mouths shut . If we took it off she \'d wrap our hands and our mouths , wrapping the tape around our heads and our hands to to our legs .', 32, 'doqfjn9'),
(663, 'My mom used to always tell me that I needed to go on a diet when I was as young as in middle school . I did n\'t realize that this is n\'t normal and that it \'s incredibly harmful until I was an adult . Some background : I was a gymnast and cheerleader . I was never fat . I was n\'t stick thin , I had a lot of muscle , but I was never fat . The fact that my mom thought it was appropriate to try to get a preteen-teenage girl who is already dealing with a lot of societal pressures to diet just baffles me . I would never do that to my child . I spent a lot of years thinking I was the fat cheerleader . Now I look back at old photos and realize how warped my perception was . Also before anyone reads this thinking otherwise , I \'m not against changing a kids diet . If a child is overweight and unhealthy I think it \'s the right thing to do as a parent to adjust your child \'s diet and activity level so they can be healthy . But there is a bit difference between creating a healthier lifestyle for your child , and telling your child that they need to go on a diet . The way you talk to a child and implement the change in food is what makes the difference .', 32, 'doqj6hs'),
(664, 'My mom harboured a weird ass guy who happened to be a fugitive in our basement for about 6 months until one day a bounty hunter or plain clothes cop or something came into our house waving a gun made 8 year old me and my 6 year old sister stand in a corner and dragged him out ... . our mom took us to visit him in prison like 4 or 5 times over the following year . I honestly thought it was just a normal occurence until about 3 years later when i told the story to my dads divorce lawyer and he was shocked it had never come up before ( although i suppose its not the type of thing you bring up in court if you dont have to ) and my dad who was deployed in Kosovo at the time had no idea it had ever even happened .', 32, 'doqjbjo'),
(665, 'My parents would scream at each other and argue constantly . My parents hated each other and still do . The only reason they never divorced is because they depend on each other financially . But they very literally despised each other . They always had separate rooms and everything . I never thought it was weird , I just always thought marriage was n\'t for me . Because it looked like it was pointless and overall a pain in the ass . Eventually I graduated , moved out , and started dating ... that \'s when I realized you can actually like your partner and prefer to be around them . I just had no idea .', 32, 'doqf7us'),
(666, 'My mom \'s boyfriend forbade me from ever going in the garage . They said it was dangerous . I snuck.in one day get a hammer or something and there were plants growing under lights . This was the 80 \'s so you \'d still get serious prison time for pot . They found out I was in there because I did n\'t put the thing back . I was grounded from my bike and tv for a month . Those were two very important things to my 10 year old self .', 32, 'doqeujk'),
(667, 'My dad was a cop and always gloated on how he could multi-task with driving . On long road trips he would read , hold a conversation , and drive all at the same time . I thought this was cool at the time and told everyone but now when I look back I realize how dangerous it was .', 32, 'doqfgsn'),
(668, 'When we went camping , once , my step dad filled our air mattresses using exhaust from the car . I didn ’ t know how crazy this was until I sort of bragged about it to someone later .', 32, 'doqh6ax'),
(669, 'Walk around the house naked , pee in bottles while driving , and', 32, 'doqe6te'),
(670, 'As a child I figured that deep down inside , my mother had some sort of issues that made her abuse me and torment me to no end . I did n\'t do anything about the abuse because I thought it was normal practice . Went to see a therapist years later and found out she may have a cleaning compulsion , may have been abused in the past , and may have other underlying issues . And I learned more about emotional and verbal abuse , something I never bothered to research growing up .', 32, 'doqbfs4'),
(671, 'when I was about five , I heard my mom scream at night . running to my parents room I peeked inside to , at my horror , discover that my dad had ... .fucked my mom . it still haunts me to this day . how could my dad do such a thing ?', 32, 'doqiptp'),
(672, 'Meth', 32, 'doq5gx1'),
(673, 'My parents would tell me and my siblings to lie to government and school officials my entire life because we always broke the law in some way from visas to immunizations .', 32, 'doqet60'),
(674, 'My dad always smoked cigarettes . He went through a pack a day . Just about everyone smoked cigarettes so I did n\'t see a problem . As I got older I started to take up smoking . Now if I \'m watching a movie , I got to take a smoke break . If I \'m going on a long drive , I got to take a smoke break . If I \'m beating my son with jumper cables , I got to take a smoke break . It \'s really began to take over my life . I \'ve made a little progress towards quitting and hope to be completely done with cigarettes soon .', 32, 'doq6wts'),
(675, 'Used to find bongs all over the house . My sisters and I used to call them smoking pipes . Knew the smell of weed before I even knew what weed was . When I was about 14 I finally put everything together . Now , love smoking with the family .', 32, 'doqeolc'),
(676, 'Gossiping about people we knew – including relatives and close family friends – right in front of me . Not that I blame my parents for my problems , but I think this is part of why I \'m such a judgmental prick today . I will not be doing this in front of my own children . I think it \'s tacky and classless .', 32, 'doqdzn7'),
(677, 'Walked in on my parents `` wrestling . \'\' I yelled at my dad to get off of her because I thought he was hurting her .', 32, 'doqest0'),
(678, 'When I was young my dad liked to be touchy with all of us kids . Not the bad kind , but he liked to give us `` spankings \'\' even when we had n\'t misbehaved for no odd reason at all . I guess he kind of had an obsession with butts , I \'ll never know . But it was n\'t until he did it in front of my boyfriend a few months ago ( I \'m 18 ) and it really pissed my boyfriend off . I never really realized there was anything wrong with that until I got older .', 32, 'doqfpuq'),
(679, 'In my case I didn ’ t see much , but I did smell it . The first time I smelled weed it reminded me of being - kid at my parents friends place while they played cards upstairs and we had to play downstairs .', 32, 'doqehgf'),
(680, 'Most of ya ’ ll families are jacked up . The worst thing I could think of was our 1000 VHS collection copies from the movie store or some porn magazines hidden in the house .', 32, 'doqfaxq'),
(681, 'Dad popping handfuls of painkillers and muscle relaxers . Shit caught up with him REAL quick .', 32, 'doqewt3'),
(682, 'As a kid , my dad would always let my brother and I in on inside jokes with his friends . Only , we were too young to understand the concept of inside jokes . It still affects my life now . For example , whenever anyone smashes their finger or toenail , we always called that a buca nail ( bruised nail . ) I honestly believed my whole life that this is what they were called . It was n\'t until a couple months ago when I got one and tried to explain to my boyfriend that I had a buca nail . My boyfriend told me that that was n\'t what it was called . The next time we saw my dad I asked him to confirm that a bruised nail was called a buca nail . He started laughing and told me that , no , him and his friends were all drinking Sambuca one night when he gave himself one . It forever stuck as a buca nail among their friends , and that \'s what I \'ve always called it . Probably still will . Another example is that when watching the NHL , whenever watching Jordan Tootoo go on the ice , my dad always taught my brother and I to stand and chant `` who ate all the pies ? who ate all the pies ? Jordan Tootoo you fat bastard ; you ate all the pies ! ! \'\' . Now this was all fun and games , until years later I met Jordan Tootoo . I could n\'t help myself and did the chant to him , thinking this was something all of his fans did . Jordan just looked at me like I grew another head , and said calmly `` well I do really like pie \'\' . I later told my dad about my interaction and he nearly pissed himself from laughter . Apparently it \'s not something everyone does . Just my dad trying to keep my young brother and I focused on the game .', 32, 'doqieoo'),
(683, 'Cheating on each other and bribing me to not tell the other . Also they were inexcusably late to everything .', 32, 'doqesbv'),
(684, 'My dad used to buy movies from a lady at work for really cheap or sometimes she would just give them to him . Did n\'t realize until I was older she was pirating the movies , burning them to discs , and selling them for a profit .', 32, 'doqfk44'),
(685, 'I developed fairly young ( read : 11 ) and would get told that it was fine if I got cat-called and checked out by older men in public , it just meant I `` looked good \'\' . Yikes .', 32, 'doqgayd'),
(686, 'My father is from Ukraine and watched a lot of WW2 documentaries but would make comments like `` the world be better off if Hitler won \'\' .. so theirs that I honestly do n\'t know if he realizes the scale of comments like that he has always been more about the technical then political side of the war so I like to hope he just means in terms of where technology may have gone etc , its understandable to hate the Russians/Soviets after what they did to Ukraine but still..', 32, 'doqhqtk'),
(687, 'Unfortunately , some abusive stuff . Hitting mostly , when I would see my childhood friends talk back to their parents and not get hit I thought THAT was weird . It took me a long time to unlearn that that was acceptable behavior .', 32, 'doqi276'),
(688, 'My mother calls my father `` daddy \'\' to this day . I did n\'t really realize it until we were sitting down at dinner last year and I had to put my silverware down and think `` wait a minute \'\' I am 21 and she still says it', 32, 'doqid7d'),
(689, 'Lol I used to see my parents stems and seeds everywhere before I realized what it was .', 32, 'doq8y0s'),
(690, 'Jesus . I \'m sorry that our parents were this way . I \'ve had a few of these - my little brother could do no wrong , for example . I think the most damaging though , was the emotional abuse . I constantly got told things like `` I did n\'t want you \'\' ( shouldn\'ta got pregnant at 17 then ) or `` I could \'ve left your POS father if it were n\'t for you \'\' ( granted , he beat her on occassion , but that \'s not my fault - fuck , she had my little brother with him too ) . Or even better was when I got raped and called my mom immediately and she told me to `` quit being fucking crazy , I \'ll have you locked up \'\' . Then she made me go swimming with said rapist . Fun fucking times .', 32, 'doqhhul'),
(691, 'Putting ketchup on steak .', 32, 'doqjoir'),
(692, 'According to today \'s opinions , everything . According to the 60s and 70s ... nothing .', 32, 'doqcfuo'),
(693, 'As I read these comments , I am realizing that my mom did a pretty good job of raising me', 32, 'doqixm8'),
(694, 'My mother used to put Dr. Pepper and sweet tea in my baby bottle . People thought the sweet tea was apple juice . Also , a typical breakfast for me was hostess cupcakes . Surprised I \'m not more overweight than I already am . Thanks mom .', 32, 'doqg2tu'),
(695, 'My parents would often get in the hot tub with their friends totally nude . Would play it off like the other couple did n\'t have suits . The hot tub has a large floor to ceiling window looking out to it and they made sure I knew not to look out the window . My mom would often do it with a couple of her girlfriends often . My parents could be swingers for all I know , whatever makes them happy .', 32, 'doqhbqx'),
(696, 'My Dad knew a lot of people . He would read the obits and take me along to people \'s funerals . Like his 3rd grade teacher , or an old neighbour \'s brother \'s funeral . Or if they went to our church we \'d go . To pay our respects . It seemed we only went to the ones that had luncheons . I ate a lot of those little sandwiches .', 32, 'doqhsmf'),
(697, 'My mom would lie to my dad , saying she was taking us ( my brother & I ) for a bike ride . Instead , she \'d take us to the park , where we \'d play on the monkey bars or whatever , and she would meet-up w/ the man she was cheating on my dad with . This happened countless times . As an 8-yr old girl I could n\'t fully comprehend what was going on , I only knew that I did n\'t like this other man . Anyways , there are alot more stories but my mind does n\'t wan na be take back to that time .', 32, 'doqi702'),
(698, 'For about 2 years , my dad had this really mean and horrible girlfriend . She would often ridicule him and be extremely rude to everyone around her but I was too young to fully comprehend how unacceptable her behavior was . They also both had a huge coke problem . I did n\'t realize their `` allergy medicine \'\' was massive amounts of cocaine until I was out of high school .', 32, 'doqi7np'),
(699, 'Order steak well done .', 32, 'doqhl9o'),
(700, 'Destroy our housing market because they followed what their parents did in the 60s and bought as much as possible without considering the consequences .', 32, 'doqguzk'),
(701, 'my dad used to grow weed in his backyard , I remember I once fed it to my pet rat thinking they were grains and shit he could eat needless to say I killed my rat by getting him high and cost my dad about $ 200', 32, 'doqfes4'),
(702, 'Whenever my parents got in a huge fight which was once every month but like once every week during the recession , my dad worked as a teacher in an Arizona high school with shit pay . Well very often it would turn into my mom threatening to kill herself . At first I always cried and was a crybaby when she said that and sometimes goes one step further . But I later sort of became emotionless because of that so I had problems like selective mutism when I was little . Either ways now that I \'m older and out of the house I realize it was fuvked up . She does seem healthier now and has been less emotionally fucked up', 32, 'doqf7pp'),
(703, 'When I was a kid and would have my friends sleep over , my dad would come downstairs every 30 minutes and grab two beers , talk to us for a second and then go back upstairs . He would do this anywhere from 8-12 times on an average night . I always thought he was just checking on us , making sure we were n\'t doing anything we were n\'t supposed to . It was n\'t until I was about 15 that I realized he was drinking anywhere from 16 to 30 beers every night .', 32, 'doqh1zr'),
(704, 'Calling guys nonstop like a psycho . Generally terrible clingy behavior with men . Lots of pathological lying . It took a while for me to learn that her behavior was unacceptable and a lot of work to learn how to deal with men appropriately .', 32, 'doqhh7u'),
(705, 'Grew `` basil \'\' plants in the garage ...', 32, 'doqf94h'),
(706, 'Most likely the same as alot of people sadly but drunk driving .', 32, 'doqch0b'),
(707, 'I always remembered my dads apartment had this particular smell to it . I as a 9 yr old kid never knew what kind of smell this was and never thought to much about it . Fast foward 8 years later while I am at a party with some of my high school friends and being a clean cut person I never really liked going to parties . This party was taking place at a high schooler that I knew a little and he brought me and 5 others to his room and showed me his stash of weed . Me being `` me \'\' i never seen weed before and he knew that . He gave me the little baggy and i inspected it and noticed that particular smell fill my nostrils . I was taken back to the times that I had with my father and realized that he was high 90 % of my childhood he was present for .', 32, 'doqh7g6'),
(708, 'My dad used to get me to hand him beers while he was driving . Called them `` daddy sodas \'\' . Also had me put daddy sodas under the seat if he got pulled over , unless I was riding in the bed of the truck .', 32, 'doqh8rx'),
(709, 'My mom used to ask me to pee in a bottle occasionally . The me back then didn ’ t know why , didnt really care . The me right now knows exactly what was up . I know for a fact it wasn ’ t for her , it was for her friend who I know .', 32, 'doqhla6'),
(710, 'My dad used to take me everywhere when I was little . He started taking me to an apartment of a friend of his from work . Unfortunately for him this woman owned a cat and I had very bad allergies , so when we \'d come home my mom would question where we went . My mother would never suspect what he was doing if I was with him , so he kept taking me with him . Getting smart he \'d put me out on the balcony of her apartment and lock the door . It took me years to realize that he was cheating on my mom .', 32, 'doqi473'),
(711, 'Ok would drive around pouring whiskey into her coke bottle and yelling at no one .', 32, 'doqirb0'),
(712, 'Bringing toilet paper from work . I remember thinking why does the company my dad work for buy so much toilet paper and give it away to there employees .', 32, 'doqj1p6'),
(713, 'My dad used to talk about different projects that were just SO AMAZING and could FINALLY make us happy . He would joke about robbing a bank . He would walk around naked . He would stay up all night watching old movies , chain-smoking . He would sleep for days , it seemed , sometimes with a cigarette still burning in his hand . He would get upset about something my sister and I said , but not just upset . Would tell and scream , sometimes lash out physically . This was all before I turned 6 . I didn ’ t realize that my dad wasn ’ t like other dads until he was arrested for assaulting my oldest cousin because he laughed at something my dad had said to him . When I was in high school , my dad had been in and out of our lives for the past 5-ish years . My mom and I were talking about him and that ’ s when she told me he was schizoaffective , after previously being diagnosed bipolar .', 32, 'doqfl5g'),
(714, 'I think it had to be my mom being in an abusive relationship . My step dad was and still is the worst . She would constantly make excuses for him , like , him screaming at her , myself or older sister as him `` having a bad day \'\' . It would get worse and worse to the point that he threatened to pour hot coffee on my sister after he broke her door down , because one of her friends stole his liquor out of the fridge and she had no clue it even happened . Then the instance when I was around 14 years old and myself and my friends had to call the police , while two of us held the door and the others called 911 . He was going ballistic , calling my friends `` c**** \'\' and worse all because we stood up for my mother . I told him he was n\'t my dad and to stop telling me what to do , and he said `` thank god for that \'\' . Told my mom how we were the `` epitome of rude \'\' when his kids were awful , spoiled brats . Not to mention his family of psychopaths who abuse animals , and each other all the damn time . Still my mom married the guy , and as soon as I turned 18 I moved out with my now husband , whose honestly not much of a better human than my step dad . My real dad died when I was 18 , and I \'ve never had a legit father figure , which makes me wonder if I had I might of chosen a better partner .', 32, 'doqgepv'),
(715, 'Guy here . It \'s not your job to keep the house clean . That responsibility belongs to everyone who lives there , to the level of their developmental ability .', 32, 'doqgt0s'),
(716, 'My mom sent me to the mall with a locker key once and told me her friend had sent a package with gifts for us and I was to get on the bus open the locker grab the package and bring it straight home . When I got home she went to her room with it and when she came out I asked where was my gift . She said her friend forgot to send mine.. Shit ! ! ! I was picking up her drug drop ! ! !', 32, 'doqh4ah'),
(717, 'Cocaine . My mom did a lot of Cocaine when I was a kid . Did n\'t understand what it was and did n\'t ask questions cause that \'s how it always was . I even at some point took rolled up dollar bills with Cocaine in them to school and bought snacks with it . Surprisingly nobody ever asked any questions about the coke dollars .', 32, 'doqh8ld'),
(718, 'My parents would force me to play with my younger sister whenever she went to them complaining that I would n\'t play with her . My sister tried to do this at my grandma \'s house during a sleepover . My grandma told her that if I didnt want to play with her then I didnt have to and she cant force me to do something that I didnt want to do . I was 8 when I realized my parents were assholes . I spent alot of time at my grandma \'s house after that .', 32, 'doqjqqf'),
(719, 'Baby talk ! Ie making goo goo gah gah or purposely changing words to make them less adult . As a an adult I \'ve starting reading books more actively which has helped grow my language repertoire . More recently im realizing why I struggled with English as a kid . Not enough exposure to a developed use of the English language .', 32, 'doqkvjy'),
(720, 'i was my father \'s personal bartender . he treated me like a barmaid too , whenever i \'d finish his drink and bring it to him , he \'d pinch/slap my ass , which made me upset as a kid , but i actually did have fun making his drinks . it was n\'t until i got older and related this fondest memory to other people did i realize it was fucked up . honestly it was so jarring to have them ask me `` what the fuck ? \'\' like i genuinely thought this was a normal thing everyone did .', 32, 'doqle7x'),
(721, 'It ’ s not something I really saw when I was a kid ... but more of something I found out when I got older . But when I was younger if I had any toys that made noise and had batteries , they would let me have it for like a week and then they would take the batteries out and told me I broke the toy .', 32, 'doqn0vo'),
(722, 'Mom fuckin ’ rando , fully clothed , standing up against an open door in the hallway of a broad daylight apartment , with all her kids running around .', 32, 'doqf9o1'),
(723, 'This thread is sad', 32, 'doqfm63'),
(724, 'Finance', 32, 'doqgjq2'),
(725, 'Lying . My parents lie about everything . `` Oh I \'m on my way \'\' ( you \'re so not ) `` I had my phone ringer off \'\' ( nope ) `` I \'ve got to go I have another call \'\' ( no you do n\'t ) . it \'s mostly small lies about fairly meaningless things but it \'s ALL THE TIME . I think a lot of it stems from some unresolved social anxiety since it \'s a lot of excuses to stay home , not answer the phone etc . I genuinely thought everyone did this until I met my husband . He \'s the exact opposite . He never lies about anything which is actually really impressive ( it \'s like a social integrity game he plays against himself ) . He made me realize that if you ca n\'t be honest about what you are doing then change what your doing , not your explanation of it . I \'ve started to call my parents out on it more and they \'ve actually tried to be better about it . They are with my kids a lot because they live in town and we \'ve instituted a strict NO LIES policy around the children . It \'s interesting to see them try to be better about it .', 32, 'doqhb6n'),
(726, 'Trying to break my strong will instead of finding ways to help me adapt to rules . You ca n\'t physically beat stubbornness out of a child .', 32, 'doqi1dj'),
(727, 'I don ’ t think this may suit it but still , here you go ! So it was the girlfriend of my oldest brother , mid 20s . It was my niece ’ s bday and they didn ’ t have money or food stamps left to buy the cake and ice cream for her bday . So she went and grabbed a $ 1 soda , a bunch of other stuff , then went to the bakery with the open soda . Picked a cake , had them write on it , talked up the baker and flirted , asked to pay for the open $ 1 bottle of soda so no one would say anything to her . Then when he walked away while we “ browsed ” the cakes , we quickly walked out of the front door with all of that stuff , only paying for the $ 1 soda . No one was suspicious bc they saw us pay for something at the bakery and we had a receipt . This is how I learned to steal food and just steal in general , and that it was “ okay ” bc it was a special occasion and food was needed .', 32, 'doqi5xf'),
(728, 'My dad would drive me to school while dipping out on heroin every morning . I did n\'t really realize why we were drifting through multiple car lanes and just thought `` well he \'s my dad , we must be actually safe and I \'m thinking this is less safe than it is cause my dad would never do anything ACTUALLY dangerous . And he never hit anyone . Somehow . But uh yea looking back at that , we both just got extremely lucky .', 32, 'doqie53'),
(729, 'There were lots of weekends that when my dad got home from work on friday , we had to take a sudden trip to the next state over where my mom \'s family lived . 8 hrs away . Some weekends we did n\'t even get to pack clothes . Found out my dad was a pretty ballsy thief . He stole big pieces of machinery . Still not sure how he pulled it off . But he worked there from 18 till he retired at 62. we ( my brothers and I ) were just always excited that we got to go see our cousins . Go figure ... ..', 32, 'doqixia'),
(730, 'When I was in middle school my parents used to fight a lot . I was the oldest of three children and my brother and I went a few years having to live with my parents cursing and yelling and screaming at each other over a lot of things that I can barely remember . I think that most of the fighting centered around my mother being an incompetent mother to three young kids and my father working very hard and then having to deal with my mom making mistakes running the house and raising her kids . Now that I \'m older , I realize that both of my parents are really just loser people . My dad makes good money and we \'re an upper middle class family , but both of my parents come from the city and working class backgrounds and sort of tumultuous big city life during the 70s and they bare a lot of inner scars from their lives before us kids were born . What this meant was that despite us living on a nice block in a great neighborhood , I never really felt like I lived in a respectable or cool family that matters to people . My dad makes the money and then a mother and her three kids live off of it . That \'s the way I would describe us and I would say that half of my life in my family has been dysfunctional . There have been good times and bad times together but years later I realize that this was n\'t really down to my parents having a respectable or great marriage ; it was mostly down to them having kids to keep them occupied and happy . Sometimes it was n\'t enough to hold our house and family together . When I was in 7th grade , I played basketball and had practices and games every weekend . At the time , the weekends were maybe the worst times to be in my house because everyone was home at once , we all had sporting events to go to , and us kids all needed to be taken care of and sometimes my parents did n\'t get a break and were very stressed out by it all . This led to a lot of screaming , yelling , and fighting between my parents . This one Saturday my parents lost control of one of their fights . I was getting ready for basketball and my dad was cursing like an animal at my mom about something . I think that my mom forgot to do something or put the weight of something she had to do on my dad and he went crazy . Somehow , their fight turned towards some socks that my dad left on the floor of their room and had n\'t picked up along with all of his other clothes . My dad lived like a pig and left his stuff all over his bedroom and left work stuff all over our dining room table and my parents used to fight really bad about this among other things . These fights scared me half the time when I was young and they were the type of fights and screaming matches that made you stop what you were doing and go to the top of the stairs with pain in your stomach to listen to what they were fighting about . My mom started telling my dad to pick his socks up and my dad started cursing at her to do it . This went on and back and forth and so I walked into the hallway underneath my parents \' room on the floor above . The first sound I heard was n\'t a sound at all . It was complete silence throughout our entire house . It lasted for a few seconds and then I heard my dad stomping around his room . My mom did n\'t make a sound . Seconds later , my mom let out the scariest sound I ever heard . `` ANIMAL ! ANIMAL ! AHHHHHHHH ! ANIMAAAALLLL ! \'\' She was screaming that over and over again while crying and it sounded like what I thought at the time it would sound like if someone was about to die . All the while , my dad was screaming at the top of his lungs for her to `` PICK IT UP ! \'\' over and over . By this time , my brother had come out of his room and we were both so scared that we basically were holding onto each other in some sort of terrified hug or death grip while we both screamed `` WHAT ARE YOU DOING ! ? \'\' . When my dad stopped screaming , my mom started crying hysterically and then started crying and screaming that she wanted a divorce . The next thing she said was that `` THEY \'LL NEVER FORGET THIS ! \'\' . She was right . I never have . At the time , I thought that maybe my dad was holding my mom down by the throat or by force and she was scared and screaming about it . I was too young to realize all the possibilities and to put what happened together . When I got older , I remembered that my dad used to say that he would keep his bullets and a handgun in two different parts of the bedroom so that he would n\'t accidentally shoot one of us if he thought a robber was in the house . By having the bullets and gun separate , he would have to get up and think about what was going on instead of grabbing for a loaded gun quickly under his bed and giving himself a chance of shooting a family member who he might have mistaken for an intruder . Now that I \'m older , I know that those seconds of dead silence was my dad losing his mind in quiet rage and deciding to get his gun , retrieving it , and then pointing it at my mom who thought that she was about to be murdered by her husband over a pair of socks . At the time , she did n\'t know that the gun did n\'t have bullets in it . My dad knew but he was so furious that he did n\'t care that she did n\'t know and threatened to kill her anyway . I never was in their bedroom when this happened . This is just what I \'ve worked out over the years . Nobody in my family ever mentions what happened . I think my brother is too dumb to understand what happened and not at all introspective or thoughtful about our family . My little sister will never know because she was sleeping . She \'ll never know this is one of many reasons why I hate my parents and have n\'t talked to them since I was 20 years old . I \'ve ignored them and only talked to them when necessary for years . The only reason they \'re not divorced is because my mom is a nobody with nowhere to go and no one who wants her and because to my dad - despite what you just read - my mom is the calming presence in his life and has been ever since his mother died when he was a little kid and since he managed to get away from his psychopath stepmother who was abusive and filled him with all of his pent-up rage . My dad needs my mom to be his dead mother . My mom needs my dad to take care of her whole life since she was a suicidal nobody when she met my dad after her own mother died when she was a teenager . I \'m near-certain that she institutionalized involuntarily after her mother died though I do n\'t know for how long . I \'m pretty sure it \'s an enormous secret that our family and friends never mentioned and no one outside of the city where she spent 30 years of her life has any clue at all . Almost 15 years later I came to realize that my mother has borderline personality disorder and that her and my father are in a codependent relationship . I do n\'t really consider their marriage a real marriage or normal although they appear normal to people outside of our family . My siblings do n\'t know what I know about them or our family or what \'s gone on over the years . I worked out that my mother has been emotionally blackmailing my father ever since that gun incident happened in 2002 or 2003 . At first she was terrified that he would leave her - as borderlines are terrified of abandonment - but after a year or two of him sticking around , she realized he was n\'t going to . So then she started to ice him out . A year . Two years . Three years . On and on . She turned the tables on him . She used to need him to save her and rescue her and do everything for her and pull her out of suicideville and misery , and then after he did , she devalued him and turned on him , which borderlines tend to do . My father is so messed up from his mother dying when he was a little boy and then being abused by a psychopath stepmother that it became clear to my mother - and now to me - that my father will never leave her no matter how heartbroken or miserable or angry she makes him . He told me a few years ago that he married my mother - more than any other reason - because `` She was nice to me . \'\' Truth is , she \'s just psychotic and crazy and no good and her being nice to him at first after she was out of the institution was a ruse to see who would bite and take care of her and get involved with her . She played the victim and he saw her as his dead mother who needed saving . [ He figured that if he could n\'t save his mother he could save my mother . ] ( https : //www.youtube.com/watch ? v=yoiOoDe6-_w ) He actually knew or heard that her mother died like his did and he actually went up to her in a club with this knowledge in mind and it may have been his icebreaker in talking to her . He told me about that night but I worked out later that he did n\'t necessarily approach because she was cute or anything - he did it because he \'s got insane mommy issues and he was basically searching his whole life for his new mommy to be with . Even after her ignoring him and not loving him and barely talking to him for about a decade since 2002 , he is still with her and she owns him now . He never criticizes her - even when she \'s wrong or messes things up - and when she \'s messed things up in my life in a major way , when I \'ve attacked her and said something about it he defends her instantly and has pushed me around physically and threatened to throw me out of our house . He \'s TERRIFIED that if he angers her or upsets her again then she may ice him out again indefinitely and maybe for good . This is basically what his father did with his evil stepmother any time anyone in their house or family had a problem with her . The two of them would be a real case study in toxic relationships and codependency in psychiatric circles if people with PhDs got a hold of them . I \'m alone with this knowledge and it \'s very hard and horrible . **TL ; DR : MOM HAS BORDERLINE PERSONALITY DISORDER , DAD THREATENED TO KILL HER OVER SOCKS AND HAS INSANE MOMMY ISSUES , EVERYONE THINKS THEY \'RE NORMAL AND MY MOTHER IS A SAINT . **', 32, 'doqkcku'),
(731, 'Working so much that we never spent any time together , but they had enough money to spend on getting us whatever we wanted . Do n\'t get me wrong , I knew my parents loved me , but I fostered an environment that valued work and money over time spent with family . It kind of screwed up my brother and sisters priorities . I \'m glad I got to see the way they were to decide not to end up that way .', 32, 'doqmc0c'),
(732, 'Putting all the bills under my name thus causing MY credit to be shit by the time I turned 18', 32, 'doqmmlf');

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
(16, 'redditbot', 'submission');

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
  `subreddit_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission`
--

INSERT INTO `submission` (`id`, `sub_link_id`, `title`, `subreddit_id`) VALUES
(1, '7801bx', 'Doctors of Reddit, what was your dumbest r/Iamverysmart patient experience?', 1),
(2, '780v6m', 'TIL there\'s a Superman cartoon made in the 40s that pioneered high quality animation and cost half a million per episode to draw', 2),
(3, '77ywk9', 'Conspiracy Theorists Have a Fundamental Cognitive Problem, Say Scientists', 3),
(4, '7803rh', 'Do hydrogen isotopes affect chemical structure of complex hydrocarbons?', 4),
(5, '781jvg', '"negligible" and "beyond the scope of this course" are my favorite things to hear these days', 5),
(6, '781hzi', 'Derivatives are blowing my mind', 6),
(7, '77ygvo', 'Experimental Facts of Life - MIT Undergraduate Lecture by Allan Adams', 7),
(8, '780f6d', 'First-ever \'negative emissions\' power plant goes online', 8),
(9, '781g7v', 'How can I prove that the inverse of a circle is a circle?', 9),
(10, '781m4i', 'You are given two identical looking cars but one runs on petrol & the other on diesel. You open up the bonnet(no other access). How can you visually distinguish between the two', 10),
(11, '7816x8', 'What would happen if Death Valley was filled with water and what would happen to the surrounding areas?', 11),
(12, '782gig', 'Question Concerning Static Friction', 12),
(13, '781vjt', 'Where to develop myself as an EEE?', 13),
(14, '780gpd', 'I need examples of satire and dark or morbid humour.', 14),
(15, '7821o8', 'Why do inflation-adjusted stock market prices rise over time?', 15),
(16, '781nth', 'Rule of a Table of Values', 16),
(17, '77ym6q', 'An algebra puzzle from nails, string, and gravity.', 6),
(18, '782ugq', '[Calculus] Find the degree of incline of the gradient', 16),
(19, '782uar', 'Area of triangle with order pairs? (No calculus)', 16),
(20, '782sh2', '[Linear Algebra]', 16),
(21, '782oor', 'Prove rank A = rank A^T', 16),
(22, '782mvb', '[Calculus] What is the supremum of the set of all irrational numbers r such that r < 3.', 16),
(23, '780em7', 'Riskless Arbitrage Help!', 16),
(24, '77zmpe', 'TIL that Harvard professor Tom Lehrer was asked at the age of 84 by rapper 2 Chainz if he could sample his 60-year old song. Lehrer replied, "I grant you motherfuckers permission to do this. Please give my regards to Mr. Chainz, or may I call him 2?"', 2),
(25, '78086c', 'A beginners guide to the wave/particle duality (from the particle physics point of view)', 7),
(26, '7818vs', 'Research finds that certain small RNA molecules can trigger a mechanism hidden in every cell that forces it to self-destruct. This failsafe may protect us from cancer. The mechanism could potentially become a novel form of cancer therapy, the study authors say.', 3),
(27, '782khs', 'This question is not specific to any homework problem. I just want to know how this is done. My question is regarding to using calculus in position, velocity and acceleration functions.', 12),
(28, '782qkm', 'Why is an increase in the savings rate a level effect instead of a growth effect?', 15),
(29, '782wgz', '[First-Year Linear Algebra] Standard Form Equations of 3D Hyperplanes', 14),
(30, '77z631', 'Are rich foreigners storing wealth in domestic property a bad thing?', 15),
(31, '781y87', 'Raccoons have passed the Aesop\'s Fable test, which measures if animals can discern cause and effect by displacing water to access food.', 3),
(32, '780sf3', 'What’s something wrong you saw your parents doing as a kid, but didn’t realize it was wrong until you got older?', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=733;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
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
