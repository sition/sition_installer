-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 03, 2017 at 11:55 AM
-- Server version: 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 7.0.8-0ubuntu0.16.04.3

-- LET OP LET OP!!! DIT TOEVOEGEN: 
DROP TABLE IF EXISTS `tax_calculation_rate_title`;
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootman1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation`
--


DROP TABLE IF EXISTS `tax_calculation`;
CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id'
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

--
-- Truncate table before insert `tax_calculation`
--

TRUNCATE TABLE `tax_calculation`;
--
-- Dumping data for table `tax_calculation`
--

INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(155, 51, 3, 3, 6),
(156, 52, 3, 3, 6),
(157, 53, 3, 3, 6),
(158, 54, 3, 3, 6),
(159, 55, 3, 3, 6),
(160, 56, 3, 3, 6),
(161, 57, 3, 3, 6),
(162, 58, 3, 3, 6),
(163, 59, 3, 3, 6),
(164, 60, 3, 3, 6),
(165, 61, 3, 3, 6),
(166, 62, 3, 3, 6),
(167, 63, 3, 3, 6),
(168, 64, 3, 3, 6),
(169, 65, 3, 3, 6),
(170, 66, 3, 3, 6),
(171, 67, 3, 3, 6),
(172, 68, 3, 3, 6),
(173, 69, 3, 3, 6),
(174, 70, 3, 3, 6),
(175, 71, 3, 3, 6),
(176, 72, 3, 3, 6),
(177, 73, 3, 3, 6),
(178, 74, 3, 3, 6),
(179, 75, 3, 3, 6),
(180, 76, 3, 3, 6),
(181, 77, 3, 3, 6),
(182, 78, 3, 3, 6),
(183, 79, 3, 3, 6),
(184, 80, 3, 3, 6),
(185, 81, 3, 3, 6),
(186, 82, 3, 3, 6),
(187, 83, 3, 3, 6),
(188, 84, 3, 3, 6),
(189, 85, 3, 3, 6),
(190, 86, 3, 3, 6),
(191, 87, 3, 3, 6),
(192, 88, 3, 3, 6),
(193, 89, 3, 3, 6),
(194, 90, 3, 3, 6),
(195, 91, 3, 3, 6),
(196, 92, 3, 3, 6),
(197, 93, 3, 3, 6),
(198, 94, 3, 3, 6),
(199, 95, 3, 3, 6),
(200, 96, 3, 3, 6),
(201, 97, 3, 3, 6),
(202, 4, 2, 3, 5),
(203, 5, 2, 3, 5),
(204, 6, 2, 3, 5),
(205, 7, 2, 3, 5),
(206, 8, 2, 3, 5),
(207, 9, 2, 3, 5),
(208, 10, 2, 3, 5),
(209, 11, 2, 3, 5),
(210, 12, 2, 3, 5),
(211, 13, 2, 3, 5),
(212, 14, 2, 3, 5),
(213, 15, 2, 3, 5),
(214, 16, 2, 3, 5),
(215, 17, 2, 3, 5),
(216, 18, 2, 3, 5),
(217, 19, 2, 3, 5),
(218, 20, 2, 3, 5),
(219, 21, 2, 3, 5),
(220, 22, 2, 3, 5),
(221, 23, 2, 3, 5),
(222, 24, 2, 3, 5),
(223, 25, 2, 3, 5),
(224, 26, 2, 3, 5),
(225, 27, 2, 3, 5),
(226, 28, 2, 3, 5),
(227, 29, 2, 3, 5),
(228, 30, 2, 3, 5),
(229, 31, 2, 3, 5),
(230, 32, 2, 3, 5),
(231, 33, 2, 3, 5),
(232, 34, 2, 3, 5),
(233, 35, 2, 3, 5),
(234, 36, 2, 3, 5),
(235, 37, 2, 3, 5),
(236, 38, 2, 3, 5),
(237, 39, 2, 3, 5),
(238, 40, 2, 3, 5),
(239, 41, 2, 3, 5),
(240, 42, 2, 3, 5),
(241, 43, 2, 3, 5),
(242, 44, 2, 3, 5),
(243, 45, 2, 3, 5),
(244, 46, 2, 3, 5),
(245, 47, 2, 3, 5),
(246, 48, 2, 3, 5),
(247, 49, 2, 3, 5),
(248, 50, 2, 3, 5),
(249, 4, 2, 7, 5),
(250, 5, 2, 7, 5),
(251, 6, 2, 7, 5),
(252, 7, 2, 7, 5),
(253, 8, 2, 7, 5),
(254, 9, 2, 7, 5),
(255, 10, 2, 7, 5),
(256, 11, 2, 7, 5),
(257, 12, 2, 7, 5),
(258, 13, 2, 7, 5),
(259, 14, 2, 7, 5),
(260, 15, 2, 7, 5),
(261, 16, 2, 7, 5),
(262, 17, 2, 7, 5),
(263, 18, 2, 7, 5),
(264, 19, 2, 7, 5),
(265, 20, 2, 7, 5),
(266, 21, 2, 7, 5),
(267, 22, 2, 7, 5),
(268, 23, 2, 7, 5),
(269, 24, 2, 7, 5),
(270, 25, 2, 7, 5),
(271, 26, 2, 7, 5),
(272, 27, 2, 7, 5),
(273, 28, 2, 7, 5),
(274, 29, 2, 7, 5),
(275, 30, 2, 7, 5),
(276, 31, 2, 7, 5),
(277, 32, 2, 7, 5),
(278, 33, 2, 7, 5),
(279, 34, 2, 7, 5),
(280, 35, 2, 7, 5),
(281, 36, 2, 7, 5),
(282, 37, 2, 7, 5),
(283, 38, 2, 7, 5),
(284, 39, 2, 7, 5),
(285, 40, 2, 7, 5),
(286, 41, 2, 7, 5),
(287, 42, 2, 7, 5),
(288, 43, 2, 7, 5),
(289, 44, 2, 7, 5),
(290, 45, 2, 7, 5),
(291, 46, 2, 7, 5),
(292, 47, 2, 7, 5),
(293, 48, 2, 7, 5),
(294, 49, 2, 7, 5),
(295, 50, 2, 7, 5),
(296, 98, 4, 3, 4),
(297, 99, 4, 3, 4),
(298, 100, 4, 3, 4),
(299, 101, 4, 3, 4),
(300, 102, 4, 3, 4),
(301, 103, 4, 3, 4),
(302, 104, 4, 3, 4),
(303, 105, 4, 3, 4),
(304, 106, 4, 3, 4),
(305, 107, 4, 3, 4),
(306, 108, 4, 3, 4),
(307, 109, 4, 3, 4),
(308, 110, 4, 3, 4),
(309, 111, 4, 3, 4),
(310, 112, 4, 3, 4),
(311, 113, 4, 3, 4),
(312, 114, 4, 3, 4),
(313, 115, 4, 3, 4),
(314, 116, 4, 3, 4),
(315, 117, 4, 3, 4),
(316, 118, 4, 3, 4),
(317, 119, 4, 3, 4),
(318, 120, 4, 3, 4),
(319, 121, 4, 3, 4),
(320, 122, 4, 3, 4),
(321, 123, 4, 3, 4),
(322, 124, 4, 3, 4),
(323, 125, 4, 3, 4),
(324, 126, 4, 3, 4),
(325, 127, 4, 3, 4),
(326, 128, 4, 3, 4),
(327, 129, 4, 3, 4),
(328, 130, 4, 3, 4),
(329, 131, 4, 3, 4),
(330, 132, 4, 3, 4),
(331, 133, 4, 3, 4),
(332, 134, 4, 3, 4),
(333, 135, 4, 3, 4),
(334, 136, 4, 3, 4),
(335, 137, 4, 3, 4),
(336, 138, 4, 3, 4),
(337, 139, 4, 3, 4),
(338, 140, 4, 3, 4),
(339, 141, 4, 3, 4),
(340, 142, 4, 3, 4),
(341, 143, 4, 3, 4),
(342, 144, 4, 3, 4),
(343, 98, 4, 7, 4),
(344, 99, 4, 7, 4),
(345, 100, 4, 7, 4),
(346, 101, 4, 7, 4),
(347, 102, 4, 7, 4),
(348, 103, 4, 7, 4),
(349, 104, 4, 7, 4),
(350, 105, 4, 7, 4),
(351, 106, 4, 7, 4),
(352, 107, 4, 7, 4),
(353, 108, 4, 7, 4),
(354, 109, 4, 7, 4),
(355, 110, 4, 7, 4),
(356, 111, 4, 7, 4),
(357, 112, 4, 7, 4),
(358, 113, 4, 7, 4),
(359, 114, 4, 7, 4),
(360, 115, 4, 7, 4),
(361, 116, 4, 7, 4),
(362, 117, 4, 7, 4),
(363, 118, 4, 7, 4),
(364, 119, 4, 7, 4),
(365, 120, 4, 7, 4),
(366, 121, 4, 7, 4),
(367, 122, 4, 7, 4),
(368, 123, 4, 7, 4),
(369, 124, 4, 7, 4),
(370, 125, 4, 7, 4),
(371, 126, 4, 7, 4),
(372, 127, 4, 7, 4),
(373, 128, 4, 7, 4),
(374, 129, 4, 7, 4),
(375, 130, 4, 7, 4),
(376, 131, 4, 7, 4),
(377, 132, 4, 7, 4),
(378, 133, 4, 7, 4),
(379, 134, 4, 7, 4),
(380, 135, 4, 7, 4),
(381, 136, 4, 7, 4),
(382, 137, 4, 7, 4),
(383, 138, 4, 7, 4),
(384, 139, 4, 7, 4),
(385, 140, 4, 7, 4),
(386, 141, 4, 7, 4),
(387, 142, 4, 7, 4),
(388, 143, 4, 7, 4),
(389, 144, 4, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate`
--

DROP TABLE IF EXISTS `tax_calculation_rate`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To'
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

--
-- Truncate table before insert `tax_calculation_rate`
--

TRUNCATE TABLE `tax_calculation_rate`;
--
-- Dumping data for table `tax_calculation_rate`
--

INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(4, 'GB', 0, NULL, 'GB Hoog', '21.0000', NULL, NULL, NULL),
(5, 'AL', 0, NULL, 'AL Hoog', '21.0000', NULL, NULL, NULL),
(6, 'AD', 0, NULL, 'AD Hoog', '21.0000', NULL, NULL, NULL),
(7, 'AT', 0, NULL, 'AT Hoog', '21.0000', NULL, NULL, NULL),
(8, 'BY', 0, NULL, 'BY Hoog', '21.0000', NULL, NULL, NULL),
(9, 'BE', 0, NULL, 'BE Hoog', '21.0000', NULL, NULL, NULL),
(10, 'BA', 0, NULL, 'BA Hoog', '21.0000', NULL, NULL, NULL),
(11, 'BG', 0, NULL, 'BG Hoog', '21.0000', NULL, NULL, NULL),
(12, 'HR', 0, NULL, 'HR Hoog', '21.0000', NULL, NULL, NULL),
(13, 'CY', 0, NULL, 'CY Hoog', '21.0000', NULL, NULL, NULL),
(14, 'CZ', 0, NULL, 'CZ Hoog', '21.0000', NULL, NULL, NULL),
(15, 'DK', 0, NULL, 'DK Hoog', '21.0000', NULL, NULL, NULL),
(16, 'EE', 0, NULL, 'EE Hoog', '21.0000', NULL, NULL, NULL),
(17, 'FO', 0, NULL, 'FO Hoog', '21.0000', NULL, NULL, NULL),
(18, 'FI', 0, NULL, 'FI Hoog', '21.0000', NULL, NULL, NULL),
(19, 'FR', 0, NULL, 'FR Hoog', '21.0000', NULL, NULL, NULL),
(20, 'DE', 0, NULL, 'DE Hoog', '21.0000', NULL, NULL, NULL),
(21, 'GI', 0, NULL, 'GI Hoog', '21.0000', NULL, NULL, NULL),
(22, 'GR', 0, NULL, 'GR Hoog', '21.0000', NULL, NULL, NULL),
(23, 'HU', 0, NULL, 'HU Hoog', '21.0000', NULL, NULL, NULL),
(24, 'IS', 0, NULL, 'IS Hoog', '21.0000', NULL, NULL, NULL),
(25, 'IE', 0, NULL, 'IE Hoog', '21.0000', NULL, NULL, NULL),
(26, 'IT', 0, NULL, 'IT Hoog', '21.0000', NULL, NULL, NULL),
(27, 'LV', 0, NULL, 'LV Hoog', '21.0000', NULL, NULL, NULL),
(28, 'LB', 0, NULL, 'LB Hoog', '21.0000', NULL, NULL, NULL),
(29, 'LI', 0, NULL, 'LI Hoog', '21.0000', NULL, NULL, NULL),
(30, 'LT', 0, NULL, 'LT Hoog', '21.0000', NULL, NULL, NULL),
(31, 'LU', 0, NULL, 'LU Hoog', '21.0000', NULL, NULL, NULL),
(32, 'MT', 0, NULL, 'MT Hoog', '21.0000', NULL, NULL, NULL),
(33, 'MD', 0, NULL, 'MD Hoog', '21.0000', NULL, NULL, NULL),
(34, 'MC', 0, NULL, 'MC Hoog', '21.0000', NULL, NULL, NULL),
(35, 'ME', 0, NULL, 'ME Hoog', '21.0000', NULL, NULL, NULL),
(36, 'NL', 0, NULL, 'NL Hoog', '21.0000', NULL, NULL, NULL),
(37, 'NO', 0, NULL, 'NO Hoog', '21.0000', NULL, NULL, NULL),
(38, 'PL', 0, NULL, 'PL Hoog', '21.0000', NULL, NULL, NULL),
(39, 'PT', 0, NULL, 'PT Hoog', '21.0000', NULL, NULL, NULL),
(40, 'RO', 0, NULL, 'RO Hoog', '21.0000', NULL, NULL, NULL),
(41, 'RS', 0, NULL, 'RS Hoog', '21.0000', NULL, NULL, NULL),
(42, 'SK', 0, NULL, 'SK Hoog', '21.0000', NULL, NULL, NULL),
(43, 'SI', 0, NULL, 'SI Hoog', '21.0000', NULL, NULL, NULL),
(44, 'ES', 0, NULL, 'ES Hoog', '21.0000', NULL, NULL, NULL),
(45, 'SJ', 0, NULL, 'SJ Hoog', '21.0000', NULL, NULL, NULL),
(46, 'SE', 0, NULL, 'SE Hoog', '21.0000', NULL, NULL, NULL),
(47, 'CH', 0, NULL, 'CH Hoog', '0.0000', NULL, NULL, NULL),
(48, 'TR', 0, NULL, 'TR Hoog', '21.0000', NULL, NULL, NULL),
(49, 'UA', 0, NULL, 'UA Hoog', '21.0000', NULL, NULL, NULL),
(50, 'VA', 0, NULL, 'VA Hoog', '21.0000', NULL, NULL, NULL),
(51, 'GB', 0, NULL, 'GB Laag', '6.0000', NULL, NULL, NULL),
(52, 'AL', 0, NULL, 'AL Laag', '6.0000', NULL, NULL, NULL),
(53, 'AD', 0, NULL, 'AD Laag', '6.0000', NULL, NULL, NULL),
(54, 'AT', 0, NULL, 'AT Laag', '6.0000', NULL, NULL, NULL),
(55, 'BY', 0, NULL, 'BY Laag', '6.0000', NULL, NULL, NULL),
(56, 'BE', 0, NULL, 'BE Laag', '6.0000', NULL, NULL, NULL),
(57, 'BA', 0, NULL, 'BA Laag', '6.0000', NULL, NULL, NULL),
(58, 'BG', 0, NULL, 'BG Laag', '6.0000', NULL, NULL, NULL),
(59, 'HR', 0, NULL, 'HR Laag', '6.0000', NULL, NULL, NULL),
(60, 'CY', 0, NULL, 'CY Laag', '6.0000', NULL, NULL, NULL),
(61, 'CZ', 0, NULL, 'CZ Laag', '6.0000', NULL, NULL, NULL),
(62, 'DK', 0, NULL, 'DK Laag', '6.0000', NULL, NULL, NULL),
(63, 'EE', 0, NULL, 'EE Laag', '6.0000', NULL, NULL, NULL),
(64, 'FO', 0, NULL, 'FO Laag', '6.0000', NULL, NULL, NULL),
(65, 'FI', 0, NULL, 'FI Laag', '6.0000', NULL, NULL, NULL),
(66, 'FR', 0, NULL, 'FR Laag', '6.0000', NULL, NULL, NULL),
(67, 'DE', 0, NULL, 'DE Laag', '6.0000', NULL, NULL, NULL),
(68, 'GI', 0, NULL, 'GI Laag', '6.0000', NULL, NULL, NULL),
(69, 'GR', 0, NULL, 'GR Laag', '6.0000', NULL, NULL, NULL),
(70, 'HU', 0, NULL, 'HU Laag', '6.0000', NULL, NULL, NULL),
(71, 'IS', 0, NULL, 'IS Laag', '6.0000', NULL, NULL, NULL),
(72, 'IE', 0, NULL, 'IE Laag', '6.0000', NULL, NULL, NULL),
(73, 'IT', 0, NULL, 'IT Laag', '6.0000', NULL, NULL, NULL),
(74, 'LV', 0, NULL, 'LV Laag', '6.0000', NULL, NULL, NULL),
(75, 'LB', 0, NULL, 'LB Laag', '6.0000', NULL, NULL, NULL),
(76, 'LI', 0, NULL, 'LI Laag', '6.0000', NULL, NULL, NULL),
(77, 'LT', 0, NULL, 'LT Laag', '6.0000', NULL, NULL, NULL),
(78, 'LU', 0, NULL, 'LU Laag', '6.0000', NULL, NULL, NULL),
(79, 'MT', 0, NULL, 'MT Laag', '6.0000', NULL, NULL, NULL),
(80, 'MD', 0, NULL, 'MD Laag', '6.0000', NULL, NULL, NULL),
(81, 'MC', 0, NULL, 'MC Laag', '6.0000', NULL, NULL, NULL),
(82, 'ME', 0, NULL, 'ME Laag', '6.0000', NULL, NULL, NULL),
(83, 'NL', 0, NULL, 'NL Laag', '6.0000', NULL, NULL, NULL),
(84, 'NO', 0, NULL, 'NO Laag', '6.0000', NULL, NULL, NULL),
(85, 'PL', 0, NULL, 'PL Laag', '6.0000', NULL, NULL, NULL),
(86, 'PT', 0, NULL, 'PT Laag', '6.0000', NULL, NULL, NULL),
(87, 'RO', 0, NULL, 'RO Laag', '6.0000', NULL, NULL, NULL),
(88, 'RS', 0, NULL, 'RS Laag', '6.0000', NULL, NULL, NULL),
(89, 'SK', 0, NULL, 'SK Laag', '6.0000', NULL, NULL, NULL),
(90, 'SI', 0, NULL, 'SI Laag', '6.0000', NULL, NULL, NULL),
(91, 'ES', 0, NULL, 'ES Laag', '6.0000', NULL, NULL, NULL),
(92, 'SJ', 0, NULL, 'SJ Laag', '6.0000', NULL, NULL, NULL),
(93, 'SE', 0, NULL, 'SE Laag', '6.0000', NULL, NULL, NULL),
(94, 'CH', 0, NULL, 'CH Laag', '0.0000', NULL, NULL, NULL),
(95, 'TR', 0, NULL, 'TR Laag', '6.0000', NULL, NULL, NULL),
(96, 'UA', 0, NULL, 'UA Laag', '6.0000', NULL, NULL, NULL),
(97, 'VA', 0, NULL, 'VA Laag', '6.0000', NULL, NULL, NULL),
(98, 'GB', 0, NULL, 'GB Geen', '0.0000', NULL, NULL, NULL),
(99, 'AL', 0, NULL, 'AL Geen', '0.0000', NULL, NULL, NULL),
(100, 'AD', 0, NULL, 'AD Geen', '0.0000', NULL, NULL, NULL),
(101, 'AT', 0, NULL, 'AT Geen', '0.0000', NULL, NULL, NULL),
(102, 'BY', 0, NULL, 'BY Geen', '0.0000', NULL, NULL, NULL),
(103, 'BE', 0, NULL, 'BE Geen', '0.0000', NULL, NULL, NULL),
(104, 'BA', 0, NULL, 'BA Geen', '0.0000', NULL, NULL, NULL),
(105, 'BG', 0, NULL, 'BG Geen', '0.0000', NULL, NULL, NULL),
(106, 'HR', 0, NULL, 'HR Geen', '0.0000', NULL, NULL, NULL),
(107, 'CY', 0, NULL, 'CY Geen', '0.0000', NULL, NULL, NULL),
(108, 'CZ', 0, NULL, 'CZ Geen', '0.0000', NULL, NULL, NULL),
(109, 'DK', 0, NULL, 'DK Geen', '0.0000', NULL, NULL, NULL),
(110, 'EE', 0, NULL, 'EE Geen', '0.0000', NULL, NULL, NULL),
(111, 'FO', 0, NULL, 'FO Geen', '0.0000', NULL, NULL, NULL),
(112, 'FI', 0, NULL, 'FI Geen', '0.0000', NULL, NULL, NULL),
(113, 'FR', 0, NULL, 'FR Geen', '0.0000', NULL, NULL, NULL),
(114, 'DE', 0, NULL, 'DE Geen', '0.0000', NULL, NULL, NULL),
(115, 'GI', 0, NULL, 'GI Geen', '0.0000', NULL, NULL, NULL),
(116, 'GR', 0, NULL, 'GR Geen', '0.0000', NULL, NULL, NULL),
(117, 'HU', 0, NULL, 'HU Geen', '0.0000', NULL, NULL, NULL),
(118, 'IS', 0, NULL, 'IS Geen', '0.0000', NULL, NULL, NULL),
(119, 'IE', 0, NULL, 'IE Geen', '0.0000', NULL, NULL, NULL),
(120, 'IT', 0, NULL, 'IT Geen', '0.0000', NULL, NULL, NULL),
(121, 'LV', 0, NULL, 'LV Geen', '0.0000', NULL, NULL, NULL),
(122, 'LB', 0, NULL, 'LB Geen', '0.0000', NULL, NULL, NULL),
(123, 'LI', 0, NULL, 'LI Geen', '0.0000', NULL, NULL, NULL),
(124, 'LT', 0, NULL, 'LT Geen', '0.0000', NULL, NULL, NULL),
(125, 'LU', 0, NULL, 'LU Geen', '0.0000', NULL, NULL, NULL),
(126, 'MT', 0, NULL, 'MT Geen', '0.0000', NULL, NULL, NULL),
(127, 'MD', 0, NULL, 'MD Geen', '0.0000', NULL, NULL, NULL),
(128, 'MC', 0, NULL, 'MC Geen', '0.0000', NULL, NULL, NULL),
(129, 'ME', 0, NULL, 'ME Geen', '0.0000', NULL, NULL, NULL),
(130, 'NL', 0, NULL, 'NL Geen', '0.0000', NULL, NULL, NULL),
(131, 'NO', 0, NULL, 'NO Geen', '0.0000', NULL, NULL, NULL),
(132, 'PL', 0, NULL, 'PL Geen', '0.0000', NULL, NULL, NULL),
(133, 'PT', 0, NULL, 'PT Geen', '0.0000', NULL, NULL, NULL),
(134, 'RO', 0, NULL, 'RO Geen', '0.0000', NULL, NULL, NULL),
(135, 'RS', 0, NULL, 'RS Geen', '0.0000', NULL, NULL, NULL),
(136, 'SK', 0, NULL, 'SK Geen', '0.0000', NULL, NULL, NULL),
(137, 'SI', 0, NULL, 'SI Geen', '0.0000', NULL, NULL, NULL),
(138, 'ES', 0, NULL, 'ES Geen', '0.0000', NULL, NULL, NULL),
(139, 'SJ', 0, NULL, 'SJ Geen', '0.0000', NULL, NULL, NULL),
(140, 'SE', 0, NULL, 'SE Geen', '0.0000', NULL, NULL, NULL),
(141, 'CH', 0, NULL, 'CH Geen', '0.0000', NULL, NULL, NULL),
(142, 'TR', 0, NULL, 'TR Geen', '0.0000', NULL, NULL, NULL),
(143, 'UA', 0, NULL, 'UA Geen', '0.0000', NULL, NULL, NULL),
(144, 'VA', 0, NULL, 'VA Geen', '0.0000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rate_title`
--

DROP TABLE IF EXISTS `tax_calculation_rate_title`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

--
-- Truncate table before insert `tax_calculation_rate_title`
--

TRUNCATE TABLE `tax_calculation_rate_title`;
-- --------------------------------------------------------

--
-- Table structure for table `tax_calculation_rule`
--

DROP TABLE IF EXISTS `tax_calculation_rule`;
CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

--
-- Truncate table before insert `tax_calculation_rule`
--

TRUNCATE TABLE `tax_calculation_rule`;
--
-- Dumping data for table `tax_calculation_rule`
--

INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(2, 'Hoog', 0, 0, 0),
(3, 'Laag', 0, 0, 0),
(4, 'Geen', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

--
-- Truncate table before insert `tax_class`
--

TRUNCATE TABLE `tax_class`;
--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Geen', 'PRODUCT'),
(5, 'Hoog', 'PRODUCT'),
(6, 'Laag', 'PRODUCT'),
(7, 'BTW plichtig', 'CUSTOMER'),
(8, 'Niet BTW plichtig', 'CUSTOMER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD PRIMARY KEY (`tax_calculation_id`),
  ADD KEY `TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  ADD KEY `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  ADD KEY `TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`);

--
-- Indexes for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  ADD PRIMARY KEY (`tax_calculation_rate_id`),
  ADD KEY `TAX_CALCULATION_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  ADD KEY `TAX_CALCULATION_RATE_CODE` (`code`),
  ADD KEY `IDX_CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`);

--
-- Indexes for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD PRIMARY KEY (`tax_calculation_rate_title_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  ADD KEY `TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  ADD PRIMARY KEY (`tax_calculation_rule_id`),
  ADD KEY `TAX_CALCULATION_RULE_PRIORITY_POSITION` (`priority`,`position`),
  ADD KEY `TAX_CALCULATION_RULE_CODE` (`code`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  MODIFY `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',AUTO_INCREMENT=390;
--
-- AUTO_INCREMENT for table `tax_calculation_rate`
--
ALTER TABLE `tax_calculation_rate`
  MODIFY `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  MODIFY `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id';
--
-- AUTO_INCREMENT for table `tax_calculation_rule`
--
ALTER TABLE `tax_calculation_rule`
  MODIFY `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tax_calculation`
--
ALTER TABLE `tax_calculation`
  ADD CONSTRAINT `TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_calculation_rate_title`
--
ALTER TABLE `tax_calculation_rate_title`
  ADD CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `TAX_CALCULATION_RATE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
