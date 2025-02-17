-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 04:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otserv`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT 0,
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(3) NOT NULL DEFAULT '',
  `web_lastlogin` int(11) NOT NULL DEFAULT 0,
  `web_flags` int(11) NOT NULL DEFAULT 0,
  `email_hash` varchar(32) NOT NULL DEFAULT '',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int(11) NOT NULL DEFAULT 0,
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `email_next` int(11) NOT NULL DEFAULT 0,
  `premium_points` int(11) NOT NULL DEFAULT 0,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `key` varchar(64) NOT NULL DEFAULT '',
  `premdays` int(11) NOT NULL DEFAULT 0,
  `lastday` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vipdays` int(11) NOT NULL DEFAULT 0,
  `viplastday` int(10) NOT NULL DEFAULT 0,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `coins` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `coins_transferable` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `tournament_coins` int(12) UNSIGNED NOT NULL DEFAULT 0,
  `creation` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `recruiter` int(6) DEFAULT 0,
  `vote` int(11) NOT NULL DEFAULT 0,
  `premdays_purchased` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `email`, `created`, `rlname`, `location`, `country`, `web_lastlogin`, `web_flags`, `email_hash`, `email_new`, `email_new_time`, `email_code`, `email_next`, `premium_points`, `email_verified`, `key`, `premdays`, `lastday`, `vipdays`, `viplastday`, `type`, `coins`, `coins_transferable`, `tournament_coins`, `creation`, `recruiter`, `vote`, `premdays_purchased`) VALUES
(1, 'qsqdqsd', '21298df8a5cf08ec1', 'sfsdf', 0, '', '', '', 0, 0, '', '', 0, '', 0, 0, 0, '', 0, 0, 0, 0, 5, 0, 0, 0, 1709681459, 0, 0, 0),
(2, 'god', '21298df8a3277357ee55b01df9530b535cf08ec1', '@god', 0, '', '', '', 1738644603, 3, '', '', 0, '', 0, 0, 0, '', 0, 0, 134, 1738958999, 5, 99992999, 10000, 10000, 1689218506, 0, 0, 0),
(3, 'dido', '6432c955f82abaf15017b8c98ef02174d3c7bd53', 'dido@gmail.com', 1738646751, '', '', 'us', 1738774905, 3, '', '', 0, '', 0, 0, 1, '', 0, 0, 0, 0, 6, 0, 0, 0, 1738647743, 0, 0, 0),
(4, 'test', '6432c955f82abaf15017b8c98ef02174d3c7bd53', 'test@gmail.com', 1738647666, '', '', 'br', 1738810709, 0, '', '', 0, '', 0, 30, 0, '', 90, 1746899423, 0, 0, 1, 0, 7520, 0, 1738647743, 0, 0, 390);

-- --------------------------------------------------------

--
-- Table structure for table `account_bans`
--

CREATE TABLE `account_bans` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_ban_history`
--

CREATE TABLE `account_ban_history` (
  `id` int(11) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_sessions`
--

CREATE TABLE `account_sessions` (
  `id` varchar(191) NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `expires` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_viplist`
--

CREATE TABLE `account_viplist` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `notify` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boosted_boss`
--

CREATE TABLE `boosted_boss` (
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `lookmount` int(11) DEFAULT 0,
  `date` varchar(250) NOT NULL DEFAULT '',
  `boostname` text DEFAULT NULL,
  `raceid` varchar(250) NOT NULL DEFAULT '',
  `looktypeEx` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boosted_boss`
--

INSERT INTO `boosted_boss` (`looktype`, `lookfeet`, `looklegs`, `lookhead`, `lookbody`, `lookaddons`, `lookmount`, `date`, `boostname`, `raceid`, `looktypeEx`) VALUES
(979, 0, 0, 0, 0, 0, 0, '9', 'The Source of Corruption', '1500', 0);

-- --------------------------------------------------------

--
-- Table structure for table `boosted_creature`
--

CREATE TABLE `boosted_creature` (
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `lookmount` int(11) DEFAULT 0,
  `date` varchar(250) NOT NULL DEFAULT '',
  `boostname` text DEFAULT NULL,
  `raceid` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boosted_creature`
--

INSERT INTO `boosted_creature` (`looktype`, `lookfeet`, `looklegs`, `lookhead`, `lookbody`, `lookaddons`, `lookmount`, `date`, `boostname`, `raceid`) VALUES
(550, 0, 0, 0, 0, 0, 0, '9', 'Rorc', '978');

-- --------------------------------------------------------

--
-- Table structure for table `coins_transactions`
--

CREATE TABLE `coins_transactions` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `amount` int(12) UNSIGNED NOT NULL,
  `description` varchar(3500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `coin_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `coins_transactions`
--

INSERT INTO `coins_transactions` (`id`, `account_id`, `type`, `amount`, `description`, `timestamp`, `coin_type`) VALUES
(1, 4, 2, 90, 'REMOVE Coins', '2025-02-04 05:57:44', 3),
(2, 4, 2, 750, 'REMOVE Coins', '2025-02-04 06:00:12', 3),
(3, 4, 2, 600, 'REMOVE Coins', '2025-02-04 06:00:27', 3),
(4, 4, 2, 250, 'REMOVE Coins', '2025-02-04 06:12:41', 3),
(5, 4, 2, 570, 'REMOVE Coins', '2025-02-04 07:55:33', 3),
(6, 4, 2, 870, 'REMOVE Coins', '2025-02-04 07:56:04', 3),
(7, 4, 2, 690, 'REMOVE Coins', '2025-02-04 07:59:01', 3),
(8, 4, 2, 870, 'REMOVE Coins', '2025-02-04 08:00:59', 3),
(9, 4, 2, 720, 'REMOVE Coins', '2025-02-04 08:03:54', 3),
(10, 4, 2, 870, 'REMOVE Coins', '2025-02-04 09:53:36', 3),
(11, 4, 2, 690, 'REMOVE Coins', '2025-02-04 09:53:51', 3),
(12, 4, 2, 900, 'REMOVE Coins', '2025-02-05 01:38:33', 3),
(13, 4, 2, 750, 'REMOVE Coins', '2025-02-05 01:46:43', 3),
(14, 4, 2, 870, 'REMOVE Coins', '2025-02-05 01:47:20', 3),
(15, 4, 2, 90, 'REMOVE Coins', '2025-02-05 01:52:17', 3),
(16, 4, 2, 90, 'REMOVE Coins', '2025-02-05 01:52:20', 3),
(17, 4, 2, 15, 'REMOVE Coins', '2025-02-05 03:11:19', 3),
(18, 4, 2, 15, 'REMOVE Coins', '2025-02-05 03:13:53', 3),
(19, 4, 2, 660, 'REMOVE Coins', '2025-02-05 03:13:58', 3),
(20, 4, 1, 50, 'ADD Coins', '2025-02-05 03:18:30', 3),
(21, 4, 1, 50, 'ADD Coins', '2025-02-05 03:30:22', 3),
(22, 4, 1, 100, 'ADD Coins', '2025-02-05 03:30:28', 3),
(23, 4, 1, 100, 'ADD Coins', '2025-02-05 03:30:29', 3),
(24, 4, 2, 30, 'REMOVE Coins', '2025-02-05 03:41:26', 3),
(25, 4, 2, 720, 'REMOVE Coins', '2025-02-05 04:41:53', 3),
(26, 4, 2, 22, 'REMOVE Coins', '2025-02-05 05:28:05', 3),
(27, 4, 1, 1, 'ADD Coins', '2025-02-05 17:03:42', 3),
(28, 4, 1, 10, 'ADD Coins', '2025-02-05 17:03:45', 3),
(29, 4, 1, 39, 'ADD Coins', '2025-02-05 17:03:47', 3),
(30, 4, 1, 2, 'ADD Coins', '2025-02-05 17:04:22', 3),
(31, 4, 1, 1, 'ADD Coins', '2025-02-05 17:04:28', 3),
(32, 4, 1, 100, 'ADD Coins', '2025-02-05 17:04:30', 3),
(33, 4, 1, 97, 'ADD Coins', '2025-02-05 17:04:33', 3),
(34, 4, 1, 50, 'ADD Coins', '2025-02-05 17:08:21', 3),
(35, 4, 1, 100, 'ADD Coins', '2025-02-05 17:08:22', 3),
(36, 4, 1, 100, 'ADD Coins', '2025-02-05 17:08:23', 3),
(37, 4, 1, 50, 'ADD Coins', '2025-02-05 17:09:22', 3),
(38, 4, 1, 1, 'ADD Coins', '2025-02-05 17:09:28', 3),
(39, 4, 1, 1, 'ADD Coins', '2025-02-05 17:09:32', 3),
(40, 4, 1, 100, 'ADD Coins', '2025-02-05 17:09:35', 3),
(41, 4, 2, 720, 'REMOVE Coins', '2025-02-06 02:31:50', 3),
(42, 4, 2, 720, 'REMOVE Coins', '2025-02-06 02:40:12', 3),
(43, 4, 1, 45, 'ADD Coins', '2025-02-06 02:58:54', 3),
(44, 4, 1, 5, 'ADD Coins', '2025-02-06 02:58:55', 3),
(45, 4, 1, 100, 'ADD Coins', '2025-02-06 02:58:57', 3),
(46, 4, 1, 100, 'ADD Coins', '2025-02-06 02:59:10', 3),
(47, 4, 2, 250, 'REMOVE Coins', '2025-02-06 03:01:53', 3),
(48, 4, 2, 750, 'REMOVE Coins', '2025-02-06 03:04:30', 3),
(49, 4, 2, 250, 'REMOVE Coins', '2025-02-06 03:36:16', 3),
(50, 4, 2, 450, 'REMOVE Coins', '2025-02-06 10:16:00', 3),
(51, 4, 2, 720, 'REMOVE Coins', '2025-02-06 11:03:45', 3),
(52, 4, 2, 720, 'REMOVE Coins', '2025-02-06 18:19:46', 3),
(53, 4, 2, 720, 'REMOVE Coins', '2025-02-07 04:23:12', 3),
(54, 4, 2, 500, 'REMOVE Coins', '2025-02-07 07:27:32', 3),
(55, 4, 2, 720, 'REMOVE Coins', '2025-02-07 12:04:45', 3),
(56, 4, 2, 870, 'REMOVE Coins', '2025-02-07 12:06:00', 3),
(57, 4, 2, 250, 'REMOVE Coins', '2025-02-08 10:41:59', 3),
(58, 4, 2, 250, 'REMOVE Coins', '2025-02-08 10:51:20', 3),
(59, 4, 2, 250, 'REMOVE Coins', '2025-02-08 10:54:28', 3),
(60, 4, 2, 250, 'REMOVE Coins', '2025-02-08 10:56:31', 3),
(61, 4, 2, 30, 'REMOVE Coins', '2025-02-08 17:49:48', 3),
(62, 4, 2, 250, 'REMOVE Coins', '2025-02-08 17:50:23', 3),
(63, 4, 2, 250, 'REMOVE Coins', '2025-02-08 17:50:27', 3),
(64, 4, 2, 250, 'REMOVE Coins', '2025-02-08 17:50:30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT 0.00000000,
  `amountUSD` double(20,8) NOT NULL DEFAULT 0.00000000,
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `daily_reward_history`
--

CREATE TABLE `daily_reward_history` (
  `id` int(11) NOT NULL,
  `daystreak` smallint(2) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forge_history`
--

CREATE TABLE `forge_history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `action_type` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `is_success` tinyint(4) NOT NULL DEFAULT 0,
  `bonus` tinyint(4) NOT NULL DEFAULT 0,
  `done_at` bigint(20) NOT NULL,
  `done_at_date` datetime DEFAULT current_timestamp(),
  `cost` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `gained` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_storage`
--

CREATE TABLE `global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `global_storage`
--

INSERT INTO `global_storage` (`key`, `value`) VALUES
('14110', '1739034300'),
('40000', '4');

-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` int(11) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `residence` int(11) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `description` varchar(5000) NOT NULL DEFAULT '',
  `logo_name` varchar(255) NOT NULL DEFAULT 'default.gif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Triggers `guilds`
--
DELIMITER $$
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
        INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('The Leader', 3, NEW.`id`);
        INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
        INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `guildwar_kills`
--

CREATE TABLE `guildwar_kills` (
  `id` int(11) NOT NULL,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT 0,
  `targetguild` int(11) NOT NULL DEFAULT 0,
  `warid` int(11) NOT NULL DEFAULT 0,
  `time` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_invites`
--

CREATE TABLE `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_membership`
--

CREATE TABLE `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guild_wars`
--

CREATE TABLE `guild_wars` (
  `id` int(11) NOT NULL,
  `guild1` int(11) NOT NULL DEFAULT 0,
  `guild2` int(11) NOT NULL DEFAULT 0,
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `started` bigint(15) NOT NULL DEFAULT 0,
  `ended` bigint(15) NOT NULL DEFAULT 0,
  `frags_limit` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `payment` bigint(13) UNSIGNED NOT NULL DEFAULT 0,
  `duration_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warnings` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 0,
  `bid` int(11) NOT NULL DEFAULT 0,
  `bid_end` int(11) NOT NULL DEFAULT 0,
  `last_bid` int(11) NOT NULL DEFAULT 0,
  `highest_bidder` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `guildid` int(11) DEFAULT NULL,
  `beds` int(11) NOT NULL DEFAULT 0,
  `new_owner` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`, `new_owner`) VALUES
(2628, 0, 0, 0, 'Castle of the Winds', 500000, 5, 0, 0, 0, 0, 514, NULL, 0, -1),
(2629, 0, 0, 0, 'Ab\'Dendriel Clanhall', 250000, 5, 0, 0, 0, 0, 326, NULL, 0, -1),
(2630, 0, 0, 0, 'Underwood 9', 50000, 5, 0, 0, 0, 0, 14, NULL, 0, -1),
(2631, 0, 0, 0, 'Treetop 13', 100000, 5, 0, 0, 0, 0, 28, NULL, 0, -1),
(2632, 0, 0, 0, 'Underwood 8', 50000, 5, 0, 0, 0, 0, 23, NULL, 0, -1),
(2633, 0, 0, 0, 'Treetop 11', 50000, 5, 0, 0, 0, 0, 24, NULL, 0, -1),
(2635, 0, 0, 0, 'Great Willow 2a', 50000, 5, 0, 0, 0, 0, 20, NULL, 0, -1),
(2637, 0, 0, 0, 'Great Willow 2b', 50000, 5, 0, 0, 0, 0, 25, NULL, 0, -1),
(2638, 0, 0, 0, 'Great Willow Western Wing', 100000, 5, 0, 0, 0, 0, 61, NULL, 0, -1),
(2640, 0, 0, 0, 'Great Willow 1', 100000, 5, 0, 0, 0, 0, 35, NULL, 0, -1),
(2642, 0, 0, 0, 'Great Willow 3a', 50000, 5, 0, 0, 0, 0, 19, NULL, 0, -1),
(2644, 0, 0, 0, 'Great Willow 3b', 80000, 5, 0, 0, 0, 0, 40, NULL, 0, -1),
(2645, 0, 0, 0, 'Great Willow 4a', 25000, 5, 0, 0, 0, 0, 19, NULL, 0, -1),
(2648, 0, 0, 0, 'Great Willow 4b', 25000, 5, 0, 0, 0, 0, 19, NULL, 0, -1),
(2649, 0, 0, 0, 'Underwood 6', 100000, 5, 0, 0, 0, 0, 40, NULL, 0, -1),
(2650, 0, 0, 0, 'Underwood 3', 100000, 5, 0, 0, 0, 0, 39, NULL, 0, -1),
(2651, 0, 0, 0, 'Underwood 5', 80000, 5, 0, 0, 0, 0, 33, NULL, 0, -1),
(2652, 0, 0, 0, 'Underwood 2', 100000, 5, 0, 0, 0, 0, 37, NULL, 0, -1),
(2653, 0, 0, 0, 'Underwood 1', 100000, 5, 0, 0, 0, 0, 39, NULL, 0, -1),
(2654, 0, 0, 0, 'Prima Arbor', 400000, 5, 0, 0, 0, 0, 200, NULL, 0, -1),
(2655, 0, 0, 0, 'Underwood 7', 200000, 5, 0, 0, 0, 0, 34, NULL, 0, -1),
(2656, 0, 0, 0, 'Underwood 10', 25000, 5, 0, 0, 0, 0, 19, NULL, 0, -1),
(2657, 0, 0, 0, 'Underwood 4', 100000, 5, 0, 0, 0, 0, 50, NULL, 0, -1),
(2658, 0, 0, 0, 'Treetop 9', 50000, 5, 0, 0, 0, 0, 24, NULL, 0, -1),
(2659, 0, 0, 0, 'Treetop 10', 80000, 5, 0, 0, 0, 0, 28, NULL, 0, -1),
(2660, 0, 0, 0, 'Treetop 8', 25000, 5, 0, 0, 0, 0, 22, NULL, 0, -1),
(2661, 0, 0, 0, 'Treetop 7', 50000, 5, 0, 0, 0, 0, 20, NULL, 0, -1),
(2662, 0, 0, 0, 'Treetop 6', 25000, 5, 0, 0, 0, 0, 17, NULL, 0, -1),
(2663, 0, 0, 0, 'Treetop 5 (Shop)', 80000, 5, 0, 0, 0, 0, 36, NULL, 0, -1),
(2664, 0, 0, 0, 'Treetop 12 (Shop)', 100000, 5, 0, 0, 0, 0, 39, NULL, 0, -1),
(2665, 0, 0, 0, 'Treetop 4 (Shop)', 80000, 5, 0, 0, 0, 0, 31, NULL, 0, -1),
(2666, 0, 0, 0, 'Treetop 3 (Shop)', 80000, 5, 0, 0, 0, 0, 36, NULL, 0, -1),
(2687, 0, 0, 0, 'Northern Street 1a', 100000, 6, 0, 0, 0, 0, 26, NULL, 0, -1),
(2688, 0, 0, 0, 'Park Lane 3a', 100000, 6, 0, 0, 0, 0, 36, NULL, 0, -1),
(2689, 0, 0, 0, 'Park Lane 1a', 150000, 6, 0, 0, 0, 0, 36, NULL, 0, -1),
(2690, 0, 0, 0, 'Park Lane 4', 150000, 6, 0, 0, 0, 0, 27, NULL, 0, -1),
(2691, 0, 0, 0, 'Park Lane 2', 150000, 6, 0, 0, 0, 0, 28, NULL, 0, -1),
(2692, 0, 0, 0, 'Theater Avenue 7, Flat 04', 50000, 6, 0, 0, 0, 0, 15, NULL, 0, -1),
(2693, 0, 0, 0, 'Theater Avenue 7, Flat 03', 25000, 6, 0, 0, 0, 0, 13, NULL, 0, -1),
(2694, 0, 0, 0, 'Theater Avenue 7, Flat 05', 50000, 6, 0, 0, 0, 0, 13, NULL, 0, -1),
(2695, 0, 0, 0, 'Theater Avenue 7, Flat 06', 25000, 6, 0, 0, 0, 0, 13, NULL, 0, -1),
(2696, 0, 0, 0, 'Theater Avenue 7, Flat 02', 25000, 6, 0, 0, 0, 0, 15, NULL, 0, -1),
(2697, 0, 0, 0, 'Theater Avenue 7, Flat 01', 25000, 6, 0, 0, 0, 0, 13, NULL, 0, -1),
(2698, 0, 0, 0, 'Northern Street 5', 200000, 6, 0, 0, 0, 0, 52, NULL, 0, -1),
(2699, 0, 0, 0, 'Northern Street 7', 150000, 6, 0, 0, 0, 0, 44, NULL, 0, -1),
(2700, 0, 0, 0, 'Theater Avenue 6e', 80000, 6, 0, 0, 0, 0, 25, NULL, 0, -1),
(2701, 0, 0, 0, 'Theater Avenue 6c', 25000, 6, 0, 0, 0, 0, 9, NULL, 0, -1),
(2702, 0, 0, 0, 'Theater Avenue 6a', 80000, 6, 0, 0, 0, 0, 24, NULL, 0, -1),
(2703, 0, 0, 0, 'Theater Avenue, Tower', 300000, 6, 0, 0, 0, 0, 80, NULL, 0, -1),
(2705, 0, 0, 0, 'East Lane 2', 300000, 6, 0, 0, 0, 0, 93, NULL, 0, -1),
(2706, 0, 0, 0, 'Harbour Lane 2a (Shop)', 80000, 6, 0, 0, 0, 0, 18, NULL, 0, -1),
(2707, 0, 0, 0, 'Harbour Lane 2b (Shop)', 80000, 6, 0, 0, 0, 0, 21, NULL, 0, -1),
(2708, 0, 0, 0, 'Harbour Lane 3', 400000, 6, 0, 0, 0, 0, 92, NULL, 0, -1),
(2709, 0, 0, 0, 'Magician\'s Alley 8', 150000, 6, 0, 0, 0, 0, 31, NULL, 0, -1),
(2710, 0, 0, 0, 'Lonely Sea Side Hostel', 400000, 6, 0, 0, 0, 0, 331, NULL, 0, -1),
(2711, 0, 0, 0, 'Suntower', 500000, 6, 0, 0, 0, 0, 306, NULL, 0, -1),
(2712, 0, 0, 0, 'House of Recreation', 500000, 6, 0, 0, 0, 0, 469, NULL, 0, -1),
(2713, 0, 0, 0, 'Carlin Clanhall', 250000, 6, 0, 0, 0, 0, 287, NULL, 0, -1),
(2714, 0, 0, 0, 'Magician\'s Alley 4', 200000, 6, 0, 0, 0, 0, 60, NULL, 0, -1),
(2715, 0, 0, 0, 'Theater Avenue 14 (Shop)', 200000, 6, 0, 0, 0, 0, 54, NULL, 0, -1),
(2716, 0, 0, 0, 'Theater Avenue 12', 80000, 6, 0, 0, 0, 0, 21, NULL, 0, -1),
(2717, 0, 0, 0, 'Magician\'s Alley 1', 100000, 6, 0, 0, 0, 0, 23, NULL, 0, -1),
(2718, 0, 0, 0, 'Theater Avenue 10', 100000, 6, 0, 0, 0, 0, 29, NULL, 0, -1),
(2719, 0, 0, 0, 'Magician\'s Alley 1b', 25000, 6, 0, 0, 0, 0, 16, NULL, 0, -1),
(2720, 0, 0, 0, 'Magician\'s Alley 1a', 25000, 6, 0, 0, 0, 0, 16, NULL, 0, -1),
(2721, 0, 0, 0, 'Magician\'s Alley 1c', 25000, 6, 0, 0, 0, 0, 13, NULL, 0, -1),
(2722, 0, 0, 0, 'Magician\'s Alley 1d', 25000, 6, 0, 0, 0, 0, 16, NULL, 0, -1),
(2723, 0, 0, 0, 'Magician\'s Alley 5c', 100000, 6, 0, 0, 0, 0, 25, NULL, 0, -1),
(2724, 0, 0, 0, 'Magician\'s Alley 5f', 80000, 6, 0, 0, 0, 0, 28, NULL, 0, -1),
(2725, 0, 0, 0, 'Magician\'s Alley 5b', 50000, 6, 0, 0, 0, 0, 25, NULL, 0, -1),
(2727, 0, 0, 0, 'Magician\'s Alley 5a', 50000, 6, 0, 0, 0, 0, 30, NULL, 0, -1),
(2729, 0, 0, 0, 'Central Plaza 3 (Shop)', 50000, 6, 0, 0, 0, 0, 17, NULL, 0, -1),
(2730, 0, 0, 0, 'Central Plaza 2 (Shop)', 25000, 6, 0, 0, 0, 0, 15, NULL, 0, -1),
(2731, 0, 0, 0, 'Central Plaza 1 (Shop)', 50000, 6, 0, 0, 0, 0, 19, NULL, 0, -1),
(2732, 0, 0, 0, 'Theater Avenue 8b', 100000, 6, 0, 0, 0, 0, 31, NULL, 0, -1),
(2733, 0, 0, 0, 'Harbour Lane 1 (Shop)', 100000, 6, 0, 0, 0, 0, 31, NULL, 0, -1),
(2734, 0, 0, 0, 'Theater Avenue 6f', 80000, 6, 0, 0, 0, 0, 24, NULL, 0, -1),
(2735, 0, 0, 0, 'Theater Avenue 6d', 25000, 6, 0, 0, 0, 0, 7, NULL, 0, -1),
(2736, 0, 0, 0, 'Theater Avenue 6b', 50000, 6, 0, 0, 0, 0, 25, NULL, 0, -1),
(2737, 0, 0, 0, 'Northern Street 3a', 80000, 6, 0, 0, 0, 0, 20, NULL, 0, -1),
(2738, 0, 0, 0, 'Northern Street 3b', 80000, 6, 0, 0, 0, 0, 22, NULL, 0, -1),
(2739, 0, 0, 0, 'Northern Street 1b', 80000, 6, 0, 0, 0, 0, 25, NULL, 0, -1),
(2740, 0, 0, 0, 'Northern Street 1c', 80000, 6, 0, 0, 0, 0, 21, NULL, 0, -1),
(2741, 0, 0, 0, 'Theater Avenue 7, Flat 14', 25000, 6, 0, 0, 0, 0, 13, NULL, 0, -1),
(2742, 0, 0, 0, 'Theater Avenue 7, Flat 13', 25000, 6, 0, 0, 0, 0, 14, NULL, 0, -1),
(2743, 0, 0, 0, 'Theater Avenue 7, Flat 15', 25000, 6, 0, 0, 0, 0, 12, NULL, 0, -1),
(2744, 0, 0, 0, 'Theater Avenue 7, Flat 12', 25000, 6, 0, 0, 0, 0, 14, NULL, 0, -1),
(2745, 0, 0, 0, 'Theater Avenue 7, Flat 11', 50000, 6, 0, 0, 0, 0, 21, NULL, 0, -1),
(2746, 0, 0, 0, 'Theater Avenue 7, Flat 16', 25000, 6, 0, 0, 0, 0, 16, NULL, 0, -1),
(2747, 0, 0, 0, 'Theater Avenue 5', 200000, 6, 0, 0, 0, 0, 113, NULL, 0, -1),
(2751, 0, 0, 0, 'Harbour Flats, Flat 11', 25000, 6, 0, 0, 0, 0, 17, NULL, 0, -1),
(2752, 0, 0, 0, 'Harbour Flats, Flat 13', 25000, 6, 0, 0, 0, 0, 17, NULL, 0, -1),
(2753, 0, 0, 0, 'Harbour Flats, Flat 15', 50000, 6, 0, 0, 0, 0, 27, NULL, 0, -1),
(2755, 0, 0, 0, 'Harbour Flats, Flat 12', 50000, 6, 0, 0, 0, 0, 33, NULL, 0, -1),
(2757, 0, 0, 0, 'Harbour Flats, Flat 16', 50000, 6, 0, 0, 0, 0, 35, NULL, 0, -1),
(2759, 0, 0, 0, 'Harbour Flats, Flat 21', 50000, 6, 0, 0, 0, 0, 23, NULL, 0, -1),
(2760, 0, 0, 0, 'Harbour Flats, Flat 22', 80000, 6, 0, 0, 0, 0, 30, NULL, 0, -1),
(2761, 0, 0, 0, 'Harbour Flats, Flat 23', 25000, 6, 0, 0, 0, 0, 17, NULL, 0, -1),
(2763, 0, 0, 0, 'Park Lane 1b', 200000, 6, 0, 0, 0, 0, 39, NULL, 0, -1),
(2764, 0, 0, 0, 'Theater Avenue 8a', 100000, 6, 0, 0, 0, 0, 31, NULL, 0, -1),
(2765, 0, 0, 0, 'Theater Avenue 11a', 100000, 6, 0, 0, 0, 0, 32, NULL, 0, -1),
(2767, 0, 0, 0, 'Theater Avenue 11b', 100000, 6, 0, 0, 0, 0, 31, NULL, 0, -1),
(2768, 0, 0, 0, 'Caretaker\'s Residence', 600000, 6, 0, 0, 0, 0, 298, NULL, 0, -1),
(2769, 0, 0, 0, 'Moonkeep', 250000, 6, 0, 0, 0, 0, 298, NULL, 0, -1),
(2770, 0, 0, 0, 'Mangrove 1', 80000, 5, 0, 0, 0, 0, 39, NULL, 0, -1),
(2771, 0, 0, 0, 'Coastwood 2', 50000, 5, 0, 0, 0, 0, 20, NULL, 0, -1),
(2772, 0, 0, 0, 'Coastwood 1', 50000, 5, 0, 0, 0, 0, 23, NULL, 0, -1),
(2773, 0, 0, 0, 'Coastwood 3', 50000, 5, 0, 0, 0, 0, 27, NULL, 0, -1),
(2774, 0, 0, 0, 'Coastwood 4', 50000, 5, 0, 0, 0, 0, 25, NULL, 0, -1),
(2775, 0, 0, 0, 'Mangrove 4', 50000, 5, 0, 0, 0, 0, 23, NULL, 0, -1),
(2776, 0, 0, 0, 'Coastwood 10', 80000, 5, 0, 0, 0, 0, 32, NULL, 0, -1),
(2777, 0, 0, 0, 'Coastwood 5', 50000, 5, 0, 0, 0, 0, 33, NULL, 0, -1),
(2778, 0, 0, 0, 'Coastwood 6 (Shop)', 80000, 5, 0, 0, 0, 0, 32, NULL, 0, -1),
(2779, 0, 0, 0, 'Coastwood 7', 25000, 5, 0, 0, 0, 0, 16, NULL, 0, -1),
(2780, 0, 0, 0, 'Coastwood 8', 50000, 5, 0, 0, 0, 0, 30, NULL, 0, -1),
(2781, 0, 0, 0, 'Coastwood 9', 50000, 5, 0, 0, 0, 0, 25, NULL, 0, -1),
(2782, 0, 0, 0, 'Treetop 2', 25000, 5, 0, 0, 0, 0, 18, NULL, 0, -1),
(2783, 0, 0, 0, 'Treetop 1', 25000, 5, 0, 0, 0, 0, 17, NULL, 0, -1),
(2784, 0, 0, 0, 'Mangrove 3', 80000, 5, 0, 0, 0, 0, 27, NULL, 0, -1),
(2785, 0, 0, 0, 'Mangrove 2', 50000, 5, 0, 0, 0, 0, 32, NULL, 0, -1),
(2786, 0, 0, 0, 'The Hideout', 250000, 5, 0, 0, 0, 0, 449, NULL, 0, -1),
(2787, 0, 0, 0, 'Shadow Towers', 250000, 5, 0, 0, 0, 0, 429, NULL, 0, -1),
(2788, 0, 0, 0, 'Druids Retreat A', 50000, 6, 0, 0, 0, 0, 32, NULL, 0, -1),
(2789, 0, 0, 0, 'Druids Retreat C', 50000, 6, 0, 0, 0, 0, 27, NULL, 0, -1),
(2790, 0, 0, 0, 'Druids Retreat B', 50000, 6, 0, 0, 0, 0, 31, NULL, 0, -1),
(2791, 0, 0, 0, 'Druids Retreat D', 80000, 6, 0, 0, 0, 0, 27, NULL, 0, -1),
(2792, 0, 0, 0, 'East Lane 1b', 150000, 6, 0, 0, 0, 0, 43, NULL, 0, -1),
(2793, 0, 0, 0, 'East Lane 1a', 200000, 6, 0, 0, 0, 0, 62, NULL, 0, -1),
(2794, 0, 0, 0, 'Senja Village 11', 80000, 6, 0, 0, 0, 0, 59, NULL, 0, -1),
(2795, 0, 0, 0, 'Senja Village 10', 50000, 6, 0, 0, 0, 0, 36, NULL, 0, -1),
(2796, 0, 0, 0, 'Senja Village 9', 80000, 6, 0, 0, 0, 0, 55, NULL, 0, -1),
(2797, 0, 0, 0, 'Senja Village 8', 50000, 6, 0, 0, 0, 0, 40, NULL, 0, -1),
(2798, 0, 0, 0, 'Senja Village 7', 25000, 6, 0, 0, 0, 0, 19, NULL, 0, -1),
(2799, 0, 0, 0, 'Senja Village 6b', 25000, 6, 0, 0, 0, 0, 19, NULL, 0, -1),
(2800, 0, 0, 0, 'Senja Village 6a', 50000, 6, 0, 0, 0, 0, 18, NULL, 0, -1),
(2801, 0, 0, 0, 'Senja Village 5', 50000, 6, 0, 0, 0, 0, 28, NULL, 0, -1),
(2802, 0, 0, 0, 'Senja Village 4', 50000, 6, 0, 0, 0, 0, 38, NULL, 0, -1),
(2803, 0, 0, 0, 'Senja Village 3', 50000, 6, 0, 0, 0, 0, 35, NULL, 0, -1),
(2804, 0, 0, 0, 'Senja Village 1b', 50000, 6, 0, 0, 0, 0, 38, NULL, 0, -1),
(2805, 0, 0, 0, 'Senja Village 1a', 25000, 6, 0, 0, 0, 0, 19, NULL, 0, -1),
(2806, 0, 0, 0, 'Rosebud C', 100000, 6, 0, 0, 0, 0, 36, NULL, 0, -1),
(2807, 0, 0, 0, 'Rosebud B', 80000, 6, 0, 0, 0, 0, 29, NULL, 0, -1),
(2808, 0, 0, 0, 'Rosebud A', 50000, 6, 0, 0, 0, 0, 29, NULL, 0, -1),
(2809, 0, 0, 0, 'Park Lane 3b', 100000, 6, 0, 0, 0, 0, 29, NULL, 0, -1),
(2810, 0, 0, 0, 'Northport Village 6', 80000, 6, 0, 0, 0, 0, 42, NULL, 0, -1),
(2811, 0, 0, 0, 'Northport Village 5', 80000, 6, 0, 0, 0, 0, 34, NULL, 0, -1),
(2812, 0, 0, 0, 'Northport Village 4', 100000, 6, 0, 0, 0, 0, 50, NULL, 0, -1),
(2813, 0, 0, 0, 'Northport Village 3', 150000, 6, 0, 0, 0, 0, 104, NULL, 0, -1),
(2814, 0, 0, 0, 'Northport Village 2', 50000, 6, 0, 0, 0, 0, 28, NULL, 0, -1),
(2815, 0, 0, 0, 'Northport Village 1', 50000, 6, 0, 0, 0, 0, 28, NULL, 0, -1),
(2816, 0, 0, 0, 'Nautic Observer', 200000, 6, 0, 0, 0, 0, 220, NULL, 0, -1),
(2817, 0, 0, 0, 'Nordic Stronghold', 250000, 6, 0, 0, 0, 0, 536, NULL, 0, -1),
(2818, 0, 0, 0, 'Senja Clanhall', 250000, 6, 0, 0, 0, 0, 228, NULL, 0, -1),
(2819, 0, 0, 0, 'Seawatch', 250000, 6, 0, 0, 0, 0, 431, NULL, 0, -1),
(2820, 0, 0, 0, 'Dwarven Magnate\'s Estate', 300000, 7, 0, 0, 0, 0, 269, NULL, 0, -1),
(2821, 0, 0, 0, 'Forge Master\'s Quarters', 300000, 7, 0, 0, 0, 0, 79, NULL, 0, -1),
(2822, 0, 0, 0, 'Upper Barracks 13', 25000, 7, 0, 0, 0, 0, 16, NULL, 0, -1),
(2823, 0, 0, 0, 'Upper Barracks 5', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2824, 0, 0, 0, 'Upper Barracks 3', 80000, 7, 0, 0, 0, 0, 16, NULL, 0, -1),
(2825, 0, 0, 0, 'Upper Barracks 4', 50000, 7, 0, 0, 0, 0, 16, NULL, 0, -1),
(2826, 0, 0, 0, 'Upper Barracks 2', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2827, 0, 0, 0, 'Upper Barracks 1', 50000, 7, 0, 0, 0, 0, 16, NULL, 0, -1),
(2828, 0, 0, 0, 'Tunnel Gardens 9', 150000, 7, 0, 0, 0, 0, 74, NULL, 0, -1),
(2829, 0, 0, 0, 'Tunnel Gardens 8', 25000, 7, 0, 0, 0, 0, 24, NULL, 0, -1),
(2830, 0, 0, 0, 'Tunnel Gardens 7', 50000, 7, 0, 0, 0, 0, 21, NULL, 0, -1),
(2831, 0, 0, 0, 'Tunnel Gardens 6', 25000, 7, 0, 0, 0, 0, 21, NULL, 0, -1),
(2832, 0, 0, 0, 'Tunnel Gardens 5', 25000, 7, 0, 0, 0, 0, 21, NULL, 0, -1),
(2835, 0, 0, 0, 'Tunnel Gardens 4', 80000, 7, 0, 0, 0, 0, 33, NULL, 0, -1),
(2836, 0, 0, 0, 'Tunnel Gardens 2', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2837, 0, 0, 0, 'Tunnel Gardens 1', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2838, 0, 0, 0, 'Tunnel Gardens 3', 80000, 7, 0, 0, 0, 0, 33, NULL, 0, -1),
(2839, 0, 0, 0, 'The Market 4 (Shop)', 80000, 7, 0, 0, 0, 0, 32, NULL, 0, -1),
(2840, 0, 0, 0, 'The Market 3 (Shop)', 80000, 7, 0, 0, 0, 0, 26, NULL, 0, -1),
(2841, 0, 0, 0, 'The Market 2 (Shop)', 50000, 7, 0, 0, 0, 0, 23, NULL, 0, -1),
(2842, 0, 0, 0, 'The Market 1 (Shop)', 25000, 7, 0, 0, 0, 0, 11, NULL, 0, -1),
(2843, 0, 0, 0, 'The Farms 6, Fishing Hut', 50000, 7, 0, 0, 0, 0, 26, NULL, 0, -1),
(2844, 0, 0, 0, 'The Farms 5', 50000, 7, 0, 0, 0, 0, 26, NULL, 0, -1),
(2845, 0, 0, 0, 'The Farms 4', 25000, 7, 0, 0, 0, 0, 26, NULL, 0, -1),
(2846, 0, 0, 0, 'The Farms 3', 80000, 7, 0, 0, 0, 0, 26, NULL, 0, -1),
(2847, 0, 0, 0, 'The Farms 2', 50000, 7, 0, 0, 0, 0, 26, NULL, 0, -1),
(2849, 0, 0, 0, 'The Farms 1', 80000, 7, 0, 0, 0, 0, 57, NULL, 0, -1),
(2850, 0, 0, 0, 'Outlaw Camp 14 (Shop)', 25000, 7, 0, 0, 0, 0, 31, NULL, 0, -1),
(2852, 0, 0, 0, 'Outlaw Camp 13 (Shop)', 50000, 7, 0, 0, 0, 0, 33, NULL, 0, -1),
(2853, 0, 0, 0, 'Outlaw Camp 9', 80000, 7, 0, 0, 0, 0, 36, NULL, 0, -1),
(2854, 0, 0, 0, 'Outlaw Camp 7', 25000, 7, 0, 0, 0, 0, 33, NULL, 0, -1),
(2855, 0, 0, 0, 'Outlaw Camp 4', 50000, 7, 0, 0, 0, 0, 31, NULL, 0, -1),
(2856, 0, 0, 0, 'Outlaw Camp 2', 50000, 7, 0, 0, 0, 0, 33, NULL, 0, -1),
(2857, 0, 0, 0, 'Outlaw Camp 3', 50000, 7, 0, 0, 0, 0, 29, NULL, 0, -1),
(2858, 0, 0, 0, 'Outlaw Camp 1', 80000, 7, 0, 0, 0, 0, 47, NULL, 0, -1),
(2859, 0, 0, 0, 'Nobility Quarter 5', 100000, 7, 0, 0, 0, 0, 141, NULL, 0, -1),
(2860, 0, 0, 0, 'Nobility Quarter 4', 50000, 7, 0, 0, 0, 0, 65, NULL, 0, -1),
(2861, 0, 0, 0, 'Nobility Quarter 3', 80000, 7, 0, 0, 0, 0, 51, NULL, 0, -1),
(2862, 0, 0, 0, 'Nobility Quarter 2', 50000, 7, 0, 0, 0, 0, 58, NULL, 0, -1),
(2863, 0, 0, 0, 'Nobility Quarter 1', 80000, 7, 0, 0, 0, 0, 63, NULL, 0, -1),
(2864, 0, 0, 0, 'Lower Barracks 10', 80000, 7, 0, 0, 0, 0, 25, NULL, 0, -1),
(2865, 0, 0, 0, 'Lower Barracks 9', 80000, 7, 0, 0, 0, 0, 25, NULL, 0, -1),
(2866, 0, 0, 0, 'Lower Barracks 8', 80000, 7, 0, 0, 0, 0, 25, NULL, 0, -1),
(2867, 0, 0, 0, 'Lower Barracks 1', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2868, 0, 0, 0, 'Lower Barracks 2', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2869, 0, 0, 0, 'Lower Barracks 3', 80000, 7, 0, 0, 0, 0, 27, NULL, 0, -1),
(2870, 0, 0, 0, 'Lower Barracks 4', 50000, 7, 0, 0, 0, 0, 28, NULL, 0, -1),
(2871, 0, 0, 0, 'Lower Barracks 5', 100000, 7, 0, 0, 0, 0, 63, NULL, 0, -1),
(2872, 0, 0, 0, 'Lower Barracks 6', 100000, 7, 0, 0, 0, 0, 63, NULL, 0, -1),
(2873, 0, 0, 0, 'Lower Barracks 7', 80000, 7, 0, 0, 0, 0, 28, NULL, 0, -1),
(2874, 0, 0, 0, 'Wolftower', 500000, 7, 0, 0, 0, 0, 402, NULL, 0, -1),
(2875, 0, 0, 0, 'Riverspring', 250000, 7, 0, 0, 0, 0, 371, NULL, 0, -1),
(2876, 0, 0, 0, 'Outlaw Castle', 250000, 7, 0, 0, 0, 0, 302, NULL, 0, -1),
(2877, 0, 0, 0, 'Marble Guildhall', 250000, 7, 0, 0, 0, 0, 410, NULL, 0, -1),
(2878, 0, 0, 0, 'Iron Guildhall', 250000, 7, 0, 0, 0, 0, 379, NULL, 0, -1),
(2879, 0, 0, 0, 'Hill Hideout', 250000, 7, 0, 0, 0, 0, 247, NULL, 0, -1),
(2880, 0, 0, 0, 'Granite Guildhall', 250000, 7, 0, 0, 0, 0, 506, NULL, 0, -1),
(2881, 0, 0, 0, 'Alai Flats, Flat 01', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2882, 0, 0, 0, 'Alai Flats, Flat 02', 50000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2883, 0, 0, 0, 'Alai Flats, Flat 03', 50000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2884, 0, 0, 0, 'Alai Flats, Flat 04', 80000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2885, 0, 0, 0, 'Alai Flats, Flat 05', 100000, 8, 0, 0, 0, 0, 28, NULL, 0, -1),
(2886, 0, 0, 0, 'Alai Flats, Flat 06', 100000, 8, 0, 0, 0, 0, 25, NULL, 0, -1),
(2887, 0, 0, 0, 'Alai Flats, Flat 07', 25000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2888, 0, 0, 0, 'Alai Flats, Flat 08', 50000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2889, 0, 0, 0, 'Alai Flats, Flat 11', 80000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2890, 0, 0, 0, 'Alai Flats, Flat 12', 25000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2891, 0, 0, 0, 'Alai Flats, Flat 13', 50000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2892, 0, 0, 0, 'Alai Flats, Flat 14', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2893, 0, 0, 0, 'Alai Flats, Flat 15', 100000, 8, 0, 0, 0, 0, 34, NULL, 0, -1),
(2894, 0, 0, 0, 'Alai Flats, Flat 16', 100000, 8, 0, 0, 0, 0, 31, NULL, 0, -1),
(2895, 0, 0, 0, 'Alai Flats, Flat 17', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2896, 0, 0, 0, 'Alai Flats, Flat 18', 50000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2897, 0, 0, 0, 'Alai Flats, Flat 21', 50000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2898, 0, 0, 0, 'Alai Flats, Flat 22', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2899, 0, 0, 0, 'Alai Flats, Flat 23', 25000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2900, 0, 0, 0, 'Alai Flats, Flat 28', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2901, 0, 0, 0, 'Alai Flats, Flat 27', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2902, 0, 0, 0, 'Alai Flats, Flat 26', 100000, 8, 0, 0, 0, 0, 31, NULL, 0, -1),
(2903, 0, 0, 0, 'Alai Flats, Flat 25', 100000, 8, 0, 0, 0, 0, 34, NULL, 0, -1),
(2904, 0, 0, 0, 'Alai Flats, Flat 24', 80000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2905, 0, 0, 0, 'Beach Home Apartments, Flat 01', 50000, 8, 0, 0, 0, 0, 16, NULL, 0, -1),
(2906, 0, 0, 0, 'Beach Home Apartments, Flat 02', 80000, 8, 0, 0, 0, 0, 16, NULL, 0, -1),
(2907, 0, 0, 0, 'Beach Home Apartments, Flat 03', 80000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2908, 0, 0, 0, 'Beach Home Apartments, Flat 04', 50000, 8, 0, 0, 0, 0, 14, NULL, 0, -1),
(2909, 0, 0, 0, 'Beach Home Apartments, Flat 05', 80000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2910, 0, 0, 0, 'Beach Home Apartments, Flat 06', 100000, 8, 0, 0, 0, 0, 24, NULL, 0, -1),
(2911, 0, 0, 0, 'Beach Home Apartments, Flat 11', 25000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2912, 0, 0, 0, 'Beach Home Apartments, Flat 12', 50000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2913, 0, 0, 0, 'Beach Home Apartments, Flat 13', 80000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2914, 0, 0, 0, 'Beach Home Apartments, Flat 14', 25000, 8, 0, 0, 0, 0, 8, NULL, 0, -1),
(2915, 0, 0, 0, 'Beach Home Apartments, Flat 15', 25000, 8, 0, 0, 0, 0, 9, NULL, 0, -1),
(2916, 0, 0, 0, 'Beach Home Apartments, Flat 16', 80000, 8, 0, 0, 0, 0, 21, NULL, 0, -1),
(2917, 0, 0, 0, 'Demon Tower', 100000, 8, 0, 0, 0, 0, 75, NULL, 0, -1),
(2918, 0, 0, 0, 'Farm Lane, 1st floor (Shop)', 80000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2919, 0, 0, 0, 'Farm Lane, 2nd Floor (Shop)', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2920, 0, 0, 0, 'Farm Lane, Basement (Shop)', 50000, 8, 0, 0, 0, 0, 21, NULL, 0, -1),
(2921, 0, 0, 0, 'Fibula Village 1', 25000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2922, 0, 0, 0, 'Fibula Village 2', 25000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2923, 0, 0, 0, 'Fibula Village 4', 25000, 8, 0, 0, 0, 0, 27, NULL, 0, -1),
(2924, 0, 0, 0, 'Fibula Village 5', 50000, 8, 0, 0, 0, 0, 27, NULL, 0, -1),
(2925, 0, 0, 0, 'Fibula Village 3', 80000, 8, 0, 0, 0, 0, 60, NULL, 0, -1),
(2926, 0, 0, 0, 'Fibula Village, Tower Flat', 100000, 8, 0, 0, 0, 0, 94, NULL, 0, -1),
(2927, 0, 0, 0, 'Guildhall of the Red Rose', 250000, 8, 0, 0, 0, 0, 396, NULL, 0, -1),
(2928, 0, 0, 0, 'Fibula Village, Bar (Shop)', 100000, 8, 0, 0, 0, 0, 74, NULL, 0, -1),
(2929, 0, 0, 0, 'Fibula Village, Villa', 200000, 8, 0, 0, 0, 0, 264, NULL, 0, -1),
(2930, 0, 0, 0, 'Greenshore Village 1', 80000, 8, 0, 0, 0, 0, 39, NULL, 0, -1),
(2931, 0, 0, 0, 'Greenshore Clanhall', 250000, 8, 0, 0, 0, 0, 176, NULL, 0, -1),
(2932, 0, 0, 0, 'Castle of Greenshore', 250000, 8, 0, 0, 0, 0, 325, NULL, 0, -1),
(2933, 0, 0, 0, 'Greenshore Village, Shop', 80000, 8, 0, 0, 0, 0, 31, NULL, 0, -1),
(2934, 0, 0, 0, 'Greenshore Village, Villa', 300000, 8, 0, 0, 0, 0, 178, NULL, 0, -1),
(2935, 0, 0, 0, 'Greenshore Village 7', 25000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2936, 0, 0, 0, 'Greenshore Village 3', 50000, 8, 0, 0, 0, 0, 30, NULL, 0, -1),
(2939, 0, 0, 0, 'Greenshore Village 2', 50000, 8, 0, 0, 0, 0, 30, NULL, 0, -1),
(2940, 0, 0, 0, 'Greenshore Village 6', 150000, 8, 0, 0, 0, 0, 79, NULL, 0, -1),
(2941, 0, 0, 0, 'Harbour Place 1 (Shop)', 800000, 8, 0, 0, 0, 0, 21, NULL, 0, -1),
(2942, 0, 0, 0, 'Harbour Place 2 (Shop)', 600000, 8, 0, 0, 0, 0, 25, NULL, 0, -1),
(2943, 0, 0, 0, 'Harbour Place 3', 800000, 8, 0, 0, 0, 0, 88, NULL, 0, -1),
(2944, 0, 0, 0, 'Harbour Place 4', 80000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2945, 0, 0, 0, 'Lower Swamp Lane 1', 400000, 8, 0, 0, 0, 0, 80, NULL, 0, -1),
(2946, 0, 0, 0, 'Lower Swamp Lane 3', 400000, 8, 0, 0, 0, 0, 80, NULL, 0, -1),
(2947, 0, 0, 0, 'Main Street 9, 1st floor (Shop)', 200000, 8, 0, 0, 0, 0, 30, NULL, 0, -1),
(2948, 0, 0, 0, 'Main Street 9a, 2nd floor (Shop)', 100000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2949, 0, 0, 0, 'Main Street 9b, 2nd floor (Shop)', 150000, 8, 0, 0, 0, 0, 27, NULL, 0, -1),
(2950, 0, 0, 0, 'Mill Avenue 1 (Shop)', 200000, 8, 0, 0, 0, 0, 28, NULL, 0, -1),
(2951, 0, 0, 0, 'Mill Avenue 2 (Shop)', 200000, 8, 0, 0, 0, 0, 47, NULL, 0, -1),
(2952, 0, 0, 0, 'Mill Avenue 3', 100000, 8, 0, 0, 0, 0, 32, NULL, 0, -1),
(2953, 0, 0, 0, 'Mill Avenue 4', 100000, 8, 0, 0, 0, 0, 33, NULL, 0, -1),
(2954, 0, 0, 0, 'Mill Avenue 5', 300000, 8, 0, 0, 0, 0, 69, NULL, 0, -1),
(2955, 0, 0, 0, 'Open-Air Theatre', 150000, 8, 0, 0, 0, 0, 81, NULL, 0, -1),
(2956, 0, 0, 0, 'Smuggler\'s Den', 400000, 8, 0, 0, 0, 0, 227, NULL, 0, -1),
(2957, 0, 0, 0, 'Sorcerer\'s Avenue 1a', 100000, 8, 0, 0, 0, 0, 24, NULL, 0, -1),
(2958, 0, 0, 0, 'Sorcerer\'s Avenue 5 (Shop)', 150000, 8, 0, 0, 0, 0, 54, NULL, 0, -1),
(2959, 0, 0, 0, 'Sorcerer\'s Avenue 1b', 80000, 8, 0, 0, 0, 0, 19, NULL, 0, -1),
(2960, 0, 0, 0, 'Sorcerer\'s Avenue 1c', 100000, 8, 0, 0, 0, 0, 25, NULL, 0, -1),
(2961, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2a', 50000, 8, 0, 0, 0, 0, 29, NULL, 0, -1),
(2962, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2c', 50000, 8, 0, 0, 0, 0, 29, NULL, 0, -1),
(2963, 0, 0, 0, 'Sorcerer\'s Avenue Labs 2b', 50000, 8, 0, 0, 0, 0, 29, NULL, 0, -1),
(2964, 0, 0, 0, 'Sunset Homes, Flat 01', 100000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2965, 0, 0, 0, 'Sunset Homes, Flat 02', 80000, 8, 0, 0, 0, 0, 14, NULL, 0, -1),
(2966, 0, 0, 0, 'Sunset Homes, Flat 03', 80000, 8, 0, 0, 0, 0, 14, NULL, 0, -1),
(2967, 0, 0, 0, 'Sunset Homes, Flat 11', 80000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2968, 0, 0, 0, 'Sunset Homes, Flat 12', 50000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2969, 0, 0, 0, 'Sunset Homes, Flat 13', 100000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2970, 0, 0, 0, 'Sunset Homes, Flat 14', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2971, 0, 0, 0, 'Sunset Homes, Flat 21', 50000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2972, 0, 0, 0, 'Sunset Homes, Flat 22', 50000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(2973, 0, 0, 0, 'Sunset Homes, Flat 23', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2974, 0, 0, 0, 'Sunset Homes, Flat 24', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2975, 0, 0, 0, 'Thais Hostel', 200000, 8, 0, 0, 0, 0, 129, NULL, 0, -1),
(2976, 0, 0, 0, 'The City Wall 1a', 150000, 8, 0, 0, 0, 0, 32, NULL, 0, -1),
(2977, 0, 0, 0, 'The City Wall 1b', 100000, 8, 0, 0, 0, 0, 31, NULL, 0, -1),
(2978, 0, 0, 0, 'The City Wall 3a', 100000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2979, 0, 0, 0, 'The City Wall 3b', 100000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2980, 0, 0, 0, 'The City Wall 3c', 100000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2981, 0, 0, 0, 'The City Wall 3d', 100000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2982, 0, 0, 0, 'The City Wall 3e', 100000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2983, 0, 0, 0, 'The City Wall 3f', 100000, 8, 0, 0, 0, 0, 23, NULL, 0, -1),
(2984, 0, 0, 0, 'Upper Swamp Lane 12', 300000, 8, 0, 0, 0, 0, 76, NULL, 0, -1),
(2985, 0, 0, 0, 'Upper Swamp Lane 10', 150000, 8, 0, 0, 0, 0, 40, NULL, 0, -1),
(2986, 0, 0, 0, 'Upper Swamp Lane 8', 600000, 8, 0, 0, 0, 0, 159, NULL, 0, -1),
(2987, 0, 0, 0, 'Upper Swamp Lane 4', 600000, 8, 0, 0, 0, 0, 100, NULL, 0, -1),
(2988, 0, 0, 0, 'Upper Swamp Lane 2', 600000, 8, 0, 0, 0, 0, 100, NULL, 0, -1),
(2989, 0, 0, 0, 'The City Wall 9', 80000, 8, 0, 0, 0, 0, 25, NULL, 0, -1),
(2990, 0, 0, 0, 'The City Wall 7h', 50000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2991, 0, 0, 0, 'The City Wall 7b', 25000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2992, 0, 0, 0, 'The City Wall 7d', 50000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2993, 0, 0, 0, 'The City Wall 7f', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2994, 0, 0, 0, 'The City Wall 7c', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2995, 0, 0, 0, 'The City Wall 7a', 80000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2996, 0, 0, 0, 'The City Wall 7g', 50000, 8, 0, 0, 0, 0, 18, NULL, 0, -1),
(2997, 0, 0, 0, 'The City Wall 7e', 80000, 8, 0, 0, 0, 0, 22, NULL, 0, -1),
(2998, 0, 0, 0, 'The City Wall 5b', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(2999, 0, 0, 0, 'The City Wall 5d', 50000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(3000, 0, 0, 0, 'The City Wall 5f', 25000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(3001, 0, 0, 0, 'The City Wall 5a', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(3002, 0, 0, 0, 'The City Wall 5c', 50000, 8, 0, 0, 0, 0, 15, NULL, 0, -1),
(3003, 0, 0, 0, 'The City Wall 5e', 50000, 8, 0, 0, 0, 0, 17, NULL, 0, -1),
(3004, 0, 0, 0, 'Warriors\' Guildhall', 5000000, 8, 0, 0, 0, 0, 334, NULL, 0, -1),
(3005, 0, 0, 0, 'The Tibianic', 500000, 8, 0, 0, 0, 0, 809, NULL, 0, -1),
(3006, 0, 0, 0, 'Bloodhall', 500000, 8, 0, 0, 0, 0, 321, NULL, 0, -1),
(3007, 0, 0, 0, 'Fibula Clanhall', 250000, 8, 0, 0, 0, 0, 178, NULL, 0, -1),
(3008, 0, 0, 0, 'Dark Mansion', 1000000, 8, 0, 0, 0, 0, 375, NULL, 0, -1),
(3009, 0, 0, 0, 'Halls of the Adventurers', 250000, 8, 0, 0, 0, 0, 317, NULL, 0, -1),
(3010, 0, 0, 0, 'Mercenary Tower', 250000, 8, 0, 0, 0, 0, 619, NULL, 0, -1),
(3011, 0, 0, 0, 'Snake Tower', 500000, 8, 0, 0, 0, 0, 627, NULL, 0, -1),
(3012, 0, 0, 0, 'Southern Thais Guildhall', 1000000, 8, 0, 0, 0, 0, 374, NULL, 0, -1),
(3013, 0, 0, 0, 'Spiritkeep', 500000, 8, 0, 0, 0, 0, 289, NULL, 0, -1),
(3014, 0, 0, 0, 'Thais Clanhall', 500000, 8, 0, 0, 0, 0, 206, NULL, 0, -1),
(3015, 0, 0, 0, 'The Lair', 200000, 9, 0, 0, 0, 0, 259, NULL, 0, -1),
(3016, 0, 0, 0, 'Silver Street 4', 300000, 9, 0, 0, 0, 0, 119, NULL, 0, -1),
(3017, 0, 0, 0, 'Dream Street 1 (Shop)', 600000, 9, 0, 0, 0, 0, 149, NULL, 0, -1),
(3018, 0, 0, 0, 'Dagger Alley 1', 200000, 9, 0, 0, 0, 0, 103, NULL, 0, -1),
(3019, 0, 0, 0, 'Dream Street 2', 400000, 9, 0, 0, 0, 0, 113, NULL, 0, -1),
(3020, 0, 0, 0, 'Dream Street 3', 300000, 9, 0, 0, 0, 0, 104, NULL, 0, -1),
(3021, 0, 0, 0, 'Elm Street 1', 300000, 9, 0, 0, 0, 0, 99, NULL, 0, -1),
(3022, 0, 0, 0, 'Elm Street 3', 300000, 9, 0, 0, 0, 0, 107, NULL, 0, -1),
(3023, 0, 0, 0, 'Elm Street 2', 300000, 9, 0, 0, 0, 0, 98, NULL, 0, -1),
(3024, 0, 0, 0, 'Elm Street 4', 300000, 9, 0, 0, 0, 0, 108, NULL, 0, -1),
(3025, 0, 0, 0, 'Seagull Walk 1', 800000, 9, 0, 0, 0, 0, 169, NULL, 0, -1),
(3026, 0, 0, 0, 'Seagull Walk 2', 300000, 9, 0, 0, 0, 0, 102, NULL, 0, -1),
(3027, 0, 0, 0, 'Dream Street 4', 400000, 9, 0, 0, 0, 0, 128, NULL, 0, -1),
(3028, 0, 0, 0, 'Old Lighthouse', 200000, 9, 0, 0, 0, 0, 157, NULL, 0, -1),
(3029, 0, 0, 0, 'Market Street 1', 600000, 9, 0, 0, 0, 0, 220, NULL, 0, -1),
(3030, 0, 0, 0, 'Market Street 3', 600000, 9, 0, 0, 0, 0, 127, NULL, 0, -1),
(3031, 0, 0, 0, 'Market Street 4 (Shop)', 800000, 9, 0, 0, 0, 0, 176, NULL, 0, -1),
(3032, 0, 0, 0, 'Market Street 5 (Shop)', 800000, 9, 0, 0, 0, 0, 230, NULL, 0, -1),
(3033, 0, 0, 0, 'Market Street 2', 600000, 9, 0, 0, 0, 0, 173, NULL, 0, -1),
(3034, 0, 0, 0, 'Loot Lane 1 (Shop)', 600000, 9, 0, 0, 0, 0, 159, NULL, 0, -1),
(3035, 0, 0, 0, 'Mystic Lane 1', 300000, 9, 0, 0, 0, 0, 92, NULL, 0, -1),
(3036, 0, 0, 0, 'Mystic Lane 2', 200000, 9, 0, 0, 0, 0, 119, NULL, 0, -1),
(3037, 0, 0, 0, 'Lucky Lane 2 (Tower)', 600000, 9, 0, 0, 0, 0, 216, NULL, 0, -1),
(3038, 0, 0, 0, 'Lucky Lane 3 (Tower)', 600000, 9, 0, 0, 0, 0, 216, NULL, 0, -1),
(3039, 0, 0, 0, 'Iron Alley 1', 300000, 9, 0, 0, 0, 0, 101, NULL, 0, -1),
(3040, 0, 0, 0, 'Iron Alley 2', 300000, 9, 0, 0, 0, 0, 128, NULL, 0, -1),
(3041, 0, 0, 0, 'Swamp Watch', 500000, 9, 0, 0, 0, 0, 379, NULL, 0, -1),
(3042, 0, 0, 0, 'Golden Axe Guildhall', 500000, 9, 0, 0, 0, 0, 344, NULL, 0, -1),
(3043, 0, 0, 0, 'Silver Street 1', 200000, 9, 0, 0, 0, 0, 108, NULL, 0, -1),
(3044, 0, 0, 0, 'Valorous Venore', 500000, 9, 0, 0, 0, 0, 457, NULL, 0, -1),
(3045, 0, 0, 0, 'Salvation Street 2', 300000, 9, 0, 0, 0, 0, 113, NULL, 0, -1),
(3046, 0, 0, 0, 'Salvation Street 3', 300000, 9, 0, 0, 0, 0, 143, NULL, 0, -1),
(3047, 0, 0, 0, 'Silver Street 2', 200000, 9, 0, 0, 0, 0, 76, NULL, 0, -1),
(3048, 0, 0, 0, 'Silver Street 3', 200000, 9, 0, 0, 0, 0, 82, NULL, 0, -1),
(3049, 0, 0, 0, 'Mystic Lane 3 (Tower)', 800000, 9, 0, 0, 0, 0, 214, NULL, 0, -1),
(3050, 0, 0, 0, 'Market Street 7', 200000, 9, 0, 0, 0, 0, 90, NULL, 0, -1),
(3051, 0, 0, 0, 'Market Street 6', 600000, 9, 0, 0, 0, 0, 186, NULL, 0, -1),
(3052, 0, 0, 0, 'Iron Alley Watch, Upper', 600000, 9, 0, 0, 0, 0, 215, NULL, 0, -1),
(3053, 0, 0, 0, 'Iron Alley Watch, Lower', 600000, 9, 0, 0, 0, 0, 217, NULL, 0, -1),
(3054, 0, 0, 0, 'Blessed Shield Guildhall', 500000, 9, 0, 0, 0, 0, 250, NULL, 0, -1),
(3055, 0, 0, 0, 'Steel Home', 500000, 9, 0, 0, 0, 0, 388, NULL, 0, -1),
(3056, 0, 0, 0, 'Salvation Street 1 (Shop)', 600000, 9, 0, 0, 0, 0, 215, NULL, 0, -1),
(3057, 0, 0, 0, 'Lucky Lane 1 (Shop)', 800000, 9, 0, 0, 0, 0, 220, NULL, 0, -1),
(3058, 0, 0, 0, 'Paupers Palace, Flat 34', 100000, 9, 0, 0, 0, 0, 59, NULL, 0, -1),
(3059, 0, 0, 0, 'Paupers Palace, Flat 33', 50000, 9, 0, 0, 0, 0, 35, NULL, 0, -1),
(3060, 0, 0, 0, 'Paupers Palace, Flat 32', 100000, 9, 0, 0, 0, 0, 50, NULL, 0, -1),
(3061, 0, 0, 0, 'Paupers Palace, Flat 31', 80000, 9, 0, 0, 0, 0, 40, NULL, 0, -1),
(3062, 0, 0, 0, 'Paupers Palace, Flat 28', 25000, 9, 0, 0, 0, 0, 13, NULL, 0, -1),
(3063, 0, 0, 0, 'Paupers Palace, Flat 26', 25000, 9, 0, 0, 0, 0, 19, NULL, 0, -1),
(3064, 0, 0, 0, 'Paupers Palace, Flat 24', 25000, 9, 0, 0, 0, 0, 19, NULL, 0, -1),
(3065, 0, 0, 0, 'Paupers Palace, Flat 22', 25000, 9, 0, 0, 0, 0, 19, NULL, 0, -1),
(3066, 0, 0, 0, 'Paupers Palace, Flat 21', 25000, 9, 0, 0, 0, 0, 18, NULL, 0, -1),
(3067, 0, 0, 0, 'Paupers Palace, Flat 27', 50000, 9, 0, 0, 0, 0, 23, NULL, 0, -1),
(3068, 0, 0, 0, 'Paupers Palace, Flat 25', 50000, 9, 0, 0, 0, 0, 24, NULL, 0, -1),
(3069, 0, 0, 0, 'Paupers Palace, Flat 23', 50000, 9, 0, 0, 0, 0, 29, NULL, 0, -1),
(3070, 0, 0, 0, 'Paupers Palace, Flat 11', 25000, 9, 0, 0, 0, 0, 14, NULL, 0, -1),
(3071, 0, 0, 0, 'Paupers Palace, Flat 13', 50000, 9, 0, 0, 0, 0, 20, NULL, 0, -1),
(3072, 0, 0, 0, 'Paupers Palace, Flat 15', 50000, 9, 0, 0, 0, 0, 20, NULL, 0, -1),
(3073, 0, 0, 0, 'Paupers Palace, Flat 17', 25000, 9, 0, 0, 0, 0, 20, NULL, 0, -1),
(3074, 0, 0, 0, 'Paupers Palace, Flat 18', 25000, 9, 0, 0, 0, 0, 20, NULL, 0, -1),
(3075, 0, 0, 0, 'Paupers Palace, Flat 12', 50000, 9, 0, 0, 0, 0, 25, NULL, 0, -1),
(3076, 0, 0, 0, 'Paupers Palace, Flat 14', 50000, 9, 0, 0, 0, 0, 25, NULL, 0, -1),
(3077, 0, 0, 0, 'Paupers Palace, Flat 16', 50000, 9, 0, 0, 0, 0, 30, NULL, 0, -1),
(3078, 0, 0, 0, 'Paupers Palace, Flat 06', 25000, 9, 0, 0, 0, 0, 11, NULL, 0, -1),
(3079, 0, 0, 0, 'Paupers Palace, Flat 05', 25000, 9, 0, 0, 0, 0, 9, NULL, 0, -1),
(3080, 0, 0, 0, 'Paupers Palace, Flat 04', 25000, 9, 0, 0, 0, 0, 17, NULL, 0, -1),
(3081, 0, 0, 0, 'Paupers Palace, Flat 07', 50000, 9, 0, 0, 0, 0, 14, NULL, 0, -1),
(3082, 0, 0, 0, 'Paupers Palace, Flat 03', 25000, 9, 0, 0, 0, 0, 11, NULL, 0, -1),
(3083, 0, 0, 0, 'Paupers Palace, Flat 02', 25000, 9, 0, 0, 0, 0, 14, NULL, 0, -1),
(3084, 0, 0, 0, 'Paupers Palace, Flat 01', 25000, 9, 0, 0, 0, 0, 15, NULL, 0, -1),
(3085, 0, 0, 0, 'Castle, Residence', 600000, 11, 0, 0, 0, 0, 104, NULL, 0, -1),
(3086, 0, 0, 0, 'Castle, 3rd Floor, Flat 07', 80000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3087, 0, 0, 0, 'Castle, 3rd Floor, Flat 04', 25000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3088, 0, 0, 0, 'Castle, 3rd Floor, Flat 03', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3089, 0, 0, 0, 'Castle, 3rd Floor, Flat 06', 100000, 11, 0, 0, 0, 0, 22, NULL, 0, -1),
(3090, 0, 0, 0, 'Castle, 3rd Floor, Flat 05', 80000, 11, 0, 0, 0, 0, 18, NULL, 0, -1),
(3091, 0, 0, 0, 'Castle, 3rd Floor, Flat 02', 80000, 11, 0, 0, 0, 0, 18, NULL, 0, -1),
(3092, 0, 0, 0, 'Castle, 3rd Floor, Flat 01', 50000, 11, 0, 0, 0, 0, 15, NULL, 0, -1),
(3093, 0, 0, 0, 'Castle, 4th Floor, Flat 09', 50000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3094, 0, 0, 0, 'Castle, 4th Floor, Flat 08', 80000, 11, 0, 0, 0, 0, 22, NULL, 0, -1),
(3095, 0, 0, 0, 'Castle, 4th Floor, Flat 07', 80000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3096, 0, 0, 0, 'Castle, 4th Floor, Flat 04', 50000, 11, 0, 0, 0, 0, 14, NULL, 0, -1),
(3097, 0, 0, 0, 'Castle, 4th Floor, Flat 03', 50000, 11, 0, 0, 0, 0, 14, NULL, 0, -1),
(3098, 0, 0, 0, 'Castle, 4th Floor, Flat 06', 100000, 11, 0, 0, 0, 0, 21, NULL, 0, -1),
(3099, 0, 0, 0, 'Castle, 4th Floor, Flat 05', 80000, 11, 0, 0, 0, 0, 18, NULL, 0, -1),
(3100, 0, 0, 0, 'Castle, 4th Floor, Flat 02', 80000, 11, 0, 0, 0, 0, 18, NULL, 0, -1),
(3101, 0, 0, 0, 'Castle, 4th Floor, Flat 01', 50000, 11, 0, 0, 0, 0, 14, NULL, 0, -1),
(3102, 0, 0, 0, 'Castle Street 2', 150000, 11, 0, 0, 0, 0, 35, NULL, 0, -1),
(3103, 0, 0, 0, 'Castle Street 3', 150000, 11, 0, 0, 0, 0, 41, NULL, 0, -1),
(3104, 0, 0, 0, 'Castle Street 4', 150000, 11, 0, 0, 0, 0, 40, NULL, 0, -1),
(3105, 0, 0, 0, 'Castle Street 5', 150000, 11, 0, 0, 0, 0, 40, NULL, 0, -1),
(3106, 0, 0, 0, 'Castle Street 1', 300000, 11, 0, 0, 0, 0, 71, NULL, 0, -1),
(3107, 0, 0, 0, 'Edron Flats, Flat 08', 25000, 11, 0, 0, 0, 0, 10, NULL, 0, -1),
(3108, 0, 0, 0, 'Edron Flats, Flat 05', 25000, 11, 0, 0, 0, 0, 10, NULL, 0, -1),
(3109, 0, 0, 0, 'Edron Flats, Flat 04', 25000, 11, 0, 0, 0, 0, 10, NULL, 0, -1),
(3110, 0, 0, 0, 'Edron Flats, Flat 01', 50000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3111, 0, 0, 0, 'Edron Flats, Flat 07', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3112, 0, 0, 0, 'Edron Flats, Flat 06', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3113, 0, 0, 0, 'Edron Flats, Flat 03', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3114, 0, 0, 0, 'Edron Flats, Flat 02', 100000, 11, 0, 0, 0, 0, 20, NULL, 0, -1),
(3115, 0, 0, 0, 'Edron Flats, Basement Flat 2', 100000, 11, 0, 0, 0, 0, 36, NULL, 0, -1),
(3116, 0, 0, 0, 'Edron Flats, Basement Flat 1', 100000, 11, 0, 0, 0, 0, 36, NULL, 0, -1),
(3119, 0, 0, 0, 'Edron Flats, Flat 13', 80000, 11, 0, 0, 0, 0, 22, NULL, 0, -1),
(3121, 0, 0, 0, 'Edron Flats, Flat 14', 100000, 11, 0, 0, 0, 0, 31, NULL, 0, -1),
(3123, 0, 0, 0, 'Edron Flats, Flat 12', 80000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3124, 0, 0, 0, 'Edron Flats, Flat 11', 100000, 11, 0, 0, 0, 0, 32, NULL, 0, -1),
(3125, 0, 0, 0, 'Edron Flats, Flat 25', 80000, 11, 0, 0, 0, 0, 31, NULL, 0, -1),
(3127, 0, 0, 0, 'Edron Flats, Flat 24', 80000, 11, 0, 0, 0, 0, 22, NULL, 0, -1),
(3128, 0, 0, 0, 'Edron Flats, Flat 21', 80000, 11, 0, 0, 0, 0, 20, NULL, 0, -1),
(3131, 0, 0, 0, 'Edron Flats, Flat 23', 80000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3133, 0, 0, 0, 'Castle Shop 1', 400000, 11, 0, 0, 0, 0, 38, NULL, 0, -1),
(3134, 0, 0, 0, 'Castle Shop 2', 400000, 11, 0, 0, 0, 0, 38, NULL, 0, -1),
(3135, 0, 0, 0, 'Castle Shop 3', 300000, 11, 0, 0, 0, 0, 38, NULL, 0, -1),
(3136, 0, 0, 0, 'Central Circle 1', 800000, 11, 0, 0, 0, 0, 76, NULL, 0, -1),
(3137, 0, 0, 0, 'Central Circle 2', 800000, 11, 0, 0, 0, 0, 90, NULL, 0, -1),
(3138, 0, 0, 0, 'Central Circle 3', 800000, 11, 0, 0, 0, 0, 99, NULL, 0, -1),
(3139, 0, 0, 0, 'Central Circle 4', 800000, 11, 0, 0, 0, 0, 97, NULL, 0, -1),
(3140, 0, 0, 0, 'Central Circle 5', 800000, 11, 0, 0, 0, 0, 99, NULL, 0, -1),
(3141, 0, 0, 0, 'Central Circle 8 (Shop)', 400000, 11, 0, 0, 0, 0, 101, NULL, 0, -1),
(3142, 0, 0, 0, 'Central Circle 7 (Shop)', 400000, 11, 0, 0, 0, 0, 101, NULL, 0, -1),
(3143, 0, 0, 0, 'Central Circle 6 (Shop)', 400000, 11, 0, 0, 0, 0, 101, NULL, 0, -1),
(3144, 0, 0, 0, 'Central Circle 9a', 150000, 11, 0, 0, 0, 0, 23, NULL, 0, -1),
(3145, 0, 0, 0, 'Central Circle 9b', 150000, 11, 0, 0, 0, 0, 23, NULL, 0, -1),
(3146, 0, 0, 0, 'Sky Lane, Guild 1', 1000000, 11, 0, 0, 0, 0, 459, NULL, 0, -1),
(3147, 0, 0, 0, 'Sky Lane, Sea Tower', 300000, 11, 0, 0, 0, 0, 106, NULL, 0, -1),
(3148, 0, 0, 0, 'Sky Lane, Guild 3', 1000000, 11, 0, 0, 0, 0, 391, NULL, 0, -1),
(3149, 0, 0, 0, 'Sky Lane, Guild 2', 1000000, 11, 0, 0, 0, 0, 440, NULL, 0, -1),
(3150, 0, 0, 0, 'Wood Avenue 11', 600000, 11, 0, 0, 0, 0, 165, NULL, 0, -1),
(3151, 0, 0, 0, 'Wood Avenue 8', 800000, 11, 0, 0, 0, 0, 147, NULL, 0, -1),
(3152, 0, 0, 0, 'Wood Avenue 7', 800000, 11, 0, 0, 0, 0, 145, NULL, 0, -1),
(3153, 0, 0, 0, 'Wood Avenue 10a', 200000, 11, 0, 0, 0, 0, 35, NULL, 0, -1),
(3154, 0, 0, 0, 'Wood Avenue 9a', 200000, 11, 0, 0, 0, 0, 33, NULL, 0, -1),
(3155, 0, 0, 0, 'Wood Avenue 6a', 300000, 11, 0, 0, 0, 0, 34, NULL, 0, -1),
(3156, 0, 0, 0, 'Wood Avenue 6b', 200000, 11, 0, 0, 0, 0, 35, NULL, 0, -1),
(3157, 0, 0, 0, 'Wood Avenue 9b', 200000, 11, 0, 0, 0, 0, 33, NULL, 0, -1),
(3158, 0, 0, 0, 'Wood Avenue 10b', 200000, 11, 0, 0, 0, 0, 35, NULL, 0, -1),
(3159, 0, 0, 0, 'Stronghold', 800000, 11, 0, 0, 0, 0, 194, NULL, 0, -1),
(3160, 0, 0, 0, 'Wood Avenue 5', 300000, 11, 0, 0, 0, 0, 40, NULL, 0, -1),
(3161, 0, 0, 0, 'Wood Avenue 3', 200000, 11, 0, 0, 0, 0, 39, NULL, 0, -1),
(3162, 0, 0, 0, 'Wood Avenue 4', 200000, 11, 0, 0, 0, 0, 40, NULL, 0, -1),
(3163, 0, 0, 0, 'Wood Avenue 2', 200000, 11, 0, 0, 0, 0, 39, NULL, 0, -1),
(3164, 0, 0, 0, 'Wood Avenue 1', 200000, 11, 0, 0, 0, 0, 41, NULL, 0, -1),
(3165, 0, 0, 0, 'Wood Avenue 4c', 200000, 11, 0, 0, 0, 0, 41, NULL, 0, -1),
(3166, 0, 0, 0, 'Wood Avenue 4a', 150000, 11, 0, 0, 0, 0, 33, NULL, 0, -1),
(3167, 0, 0, 0, 'Wood Avenue 4b', 150000, 11, 0, 0, 0, 0, 35, NULL, 0, -1),
(3168, 0, 0, 0, 'Stonehome Village 1', 150000, 11, 0, 0, 0, 0, 45, NULL, 0, -1),
(3169, 0, 0, 0, 'Stonehome Flats, Flat 04', 80000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3171, 0, 0, 0, 'Stonehome Flats, Flat 03', 80000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3173, 0, 0, 0, 'Stonehome Flats, Flat 02', 25000, 11, 0, 0, 0, 0, 18, NULL, 0, -1),
(3174, 0, 0, 0, 'Stonehome Flats, Flat 01', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3175, 0, 0, 0, 'Stonehome Flats, Flat 13', 80000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3177, 0, 0, 0, 'Stonehome Flats, Flat 11', 50000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3178, 0, 0, 0, 'Stonehome Flats, Flat 14', 80000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3180, 0, 0, 0, 'Stonehome Flats, Flat 12', 50000, 11, 0, 0, 0, 0, 18, NULL, 0, -1),
(3181, 0, 0, 0, 'Stonehome Village 2', 50000, 11, 0, 0, 0, 0, 19, NULL, 0, -1),
(3182, 0, 0, 0, 'Stonehome Village 3', 50000, 11, 0, 0, 0, 0, 20, NULL, 0, -1),
(3183, 0, 0, 0, 'Stonehome Village 4', 80000, 11, 0, 0, 0, 0, 23, NULL, 0, -1),
(3184, 0, 0, 0, 'Stonehome Village 6', 100000, 11, 0, 0, 0, 0, 34, NULL, 0, -1),
(3185, 0, 0, 0, 'Stonehome Village 5', 80000, 11, 0, 0, 0, 0, 29, NULL, 0, -1),
(3186, 0, 0, 0, 'Stonehome Village 7', 100000, 11, 0, 0, 0, 0, 28, NULL, 0, -1),
(3187, 0, 0, 0, 'Stonehome Village 8', 25000, 11, 0, 0, 0, 0, 19, NULL, 0, -1),
(3188, 0, 0, 0, 'Stonehome Village 9', 50000, 11, 0, 0, 0, 0, 19, NULL, 0, -1),
(3189, 0, 0, 0, 'Stonehome Clanhall', 250000, 11, 0, 0, 0, 0, 205, NULL, 0, -1),
(3190, 0, 0, 0, 'Mad Scientist\'s Lab', 600000, 17, 0, 0, 0, 0, 63, NULL, 0, -1),
(3191, 0, 0, 0, 'Radiant Plaza 4', 800000, 17, 0, 0, 0, 0, 197, NULL, 0, -1),
(3192, 0, 0, 0, 'Radiant Plaza 3', 800000, 17, 0, 0, 0, 0, 126, NULL, 0, -1),
(3193, 0, 0, 0, 'Radiant Plaza 2', 600000, 17, 0, 0, 0, 0, 99, NULL, 0, -1),
(3194, 0, 0, 0, 'Radiant Plaza 1', 800000, 17, 0, 0, 0, 0, 138, NULL, 0, -1),
(3195, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 1, NULL, 0, -1),
(3196, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, NULL, 0, -1),
(3197, 0, 0, 0, 'Aureate Court 5', 600000, 17, 0, 0, 0, 0, 138, NULL, 0, -1),
(3198, 0, 0, 0, 'Aureate Court 2', 400000, 17, 0, 0, 0, 0, 125, NULL, 0, -1),
(3199, 0, 0, 0, 'Aureate Court 1', 600000, 17, 0, 0, 0, 0, 131, NULL, 0, -1),
(3205, 0, 0, 0, 'Halls of Serenity', 5000000, 17, 0, 0, 0, 0, 517, NULL, 0, -1),
(3206, 0, 0, 0, 'Fortune Wing 3', 600000, 17, 0, 0, 0, 0, 148, NULL, 0, -1),
(3207, 0, 0, 0, 'Fortune Wing 4', 600000, 17, 0, 0, 0, 0, 147, NULL, 0, -1),
(3208, 0, 0, 0, 'Fortune Wing 2', 600000, 17, 0, 0, 0, 0, 148, NULL, 0, -1),
(3209, 0, 0, 0, 'Fortune Wing 1', 800000, 17, 0, 0, 0, 0, 254, NULL, 0, -1),
(3211, 0, 0, 0, 'Cascade Towers', 5000000, 17, 0, 0, 0, 0, 419, NULL, 0, -1),
(3212, 0, 0, 0, 'Luminous Arc 5', 800000, 17, 0, 0, 0, 0, 145, NULL, 0, -1),
(3213, 0, 0, 0, 'Luminous Arc 2', 600000, 17, 0, 0, 0, 0, 161, NULL, 0, -1),
(3214, 0, 0, 0, 'Luminous Arc 1', 800000, 17, 0, 0, 0, 0, 167, NULL, 0, -1),
(3215, 0, 0, 0, 'Luminous Arc 3', 600000, 17, 0, 0, 0, 0, 139, NULL, 0, -1),
(3216, 0, 0, 0, 'Luminous Arc 4', 800000, 17, 0, 0, 0, 0, 200, NULL, 0, -1),
(3217, 0, 0, 0, 'Harbour Promenade 1', 800000, 17, 0, 0, 0, 0, 137, NULL, 0, -1),
(3218, 0, 0, 0, 'Sun Palace', 5000000, 17, 0, 0, 0, 0, 533, NULL, 0, -1),
(3219, 0, 0, 0, 'Haggler\'s Hangout 3', 300000, 15, 0, 0, 0, 0, 186, NULL, 0, -1),
(3220, 0, 0, 0, 'Haggler\'s Hangout 7', 400000, 15, 0, 0, 0, 0, 155, NULL, 0, -1),
(3221, 0, 0, 0, 'Big Game Hunter\'s Lodge', 600000, 15, 0, 0, 0, 0, 164, NULL, 0, -1),
(3222, 0, 0, 0, 'Haggler\'s Hangout 6', 400000, 15, 0, 0, 0, 0, 143, NULL, 0, -1),
(3223, 0, 0, 0, 'Haggler\'s Hangout 5 (Shop)', 200000, 15, 0, 0, 0, 0, 42, NULL, 0, -1),
(3224, 0, 0, 0, 'Haggler\'s Hangout 4b (Shop)', 150000, 15, 0, 0, 0, 0, 34, NULL, 0, -1),
(3225, 0, 0, 0, 'Haggler\'s Hangout 4a (Shop)', 200000, 15, 0, 0, 0, 0, 44, NULL, 0, -1),
(3226, 0, 0, 0, 'Haggler\'s Hangout 2', 100000, 15, 0, 0, 0, 0, 35, NULL, 0, -1),
(3227, 0, 0, 0, 'Haggler\'s Hangout 1', 100000, 15, 0, 0, 0, 0, 37, NULL, 0, -1),
(3228, 0, 0, 0, 'Bamboo Garden 3', 150000, 15, 0, 0, 0, 0, 44, NULL, 0, -1),
(3229, 0, 0, 0, 'Bamboo Fortress', 500000, 15, 0, 0, 0, 0, 531, NULL, 0, -1),
(3230, 0, 0, 0, 'Bamboo Garden 2', 80000, 15, 0, 0, 0, 0, 30, NULL, 0, -1),
(3231, 0, 0, 0, 'Bamboo Garden 1', 100000, 15, 0, 0, 0, 0, 44, NULL, 0, -1),
(3232, 0, 0, 0, 'Banana Bay 4', 25000, 15, 0, 0, 0, 0, 17, NULL, 0, -1),
(3233, 0, 0, 0, 'Banana Bay 2', 50000, 15, 0, 0, 0, 0, 27, NULL, 0, -1),
(3234, 0, 0, 0, 'Banana Bay 3', 50000, 15, 0, 0, 0, 0, 18, NULL, 0, -1),
(3235, 0, 0, 0, 'Banana Bay 1', 25000, 15, 0, 0, 0, 0, 17, NULL, 0, -1),
(3236, 0, 0, 0, 'Crocodile Bridge 1', 80000, 15, 0, 0, 0, 0, 29, NULL, 0, -1),
(3237, 0, 0, 0, 'Crocodile Bridge 2', 80000, 15, 0, 0, 0, 0, 25, NULL, 0, -1),
(3238, 0, 0, 0, 'Crocodile Bridge 3', 100000, 15, 0, 0, 0, 0, 34, NULL, 0, -1),
(3239, 0, 0, 0, 'Crocodile Bridge 4', 300000, 15, 0, 0, 0, 0, 119, NULL, 0, -1),
(3240, 0, 0, 0, 'Crocodile Bridge 5', 200000, 15, 0, 0, 0, 0, 102, NULL, 0, -1),
(3241, 0, 0, 0, 'Woodway 1', 80000, 15, 0, 0, 0, 0, 18, NULL, 0, -1),
(3242, 0, 0, 0, 'Woodway 2', 50000, 15, 0, 0, 0, 0, 17, NULL, 0, -1),
(3243, 0, 0, 0, 'Woodway 3', 150000, 15, 0, 0, 0, 0, 42, NULL, 0, -1),
(3244, 0, 0, 0, 'Woodway 4', 25000, 15, 0, 0, 0, 0, 17, NULL, 0, -1),
(3245, 0, 0, 0, 'Flamingo Flats 5', 150000, 15, 0, 0, 0, 0, 53, NULL, 0, -1),
(3246, 0, 0, 0, 'Flamingo Flats 4', 80000, 15, 0, 0, 0, 0, 23, NULL, 0, -1),
(3247, 0, 0, 0, 'Flamingo Flats 1', 50000, 15, 0, 0, 0, 0, 19, NULL, 0, -1),
(3248, 0, 0, 0, 'Flamingo Flats 2', 80000, 15, 0, 0, 0, 0, 28, NULL, 0, -1),
(3249, 0, 0, 0, 'Flamingo Flats 3', 50000, 15, 0, 0, 0, 0, 20, NULL, 0, -1),
(3250, 0, 0, 0, 'Jungle Edge 1', 200000, 15, 0, 0, 0, 0, 63, NULL, 0, -1),
(3251, 0, 0, 0, 'Jungle Edge 2', 200000, 15, 0, 0, 0, 0, 89, NULL, 0, -1),
(3252, 0, 0, 0, 'Jungle Edge 4', 80000, 15, 0, 0, 0, 0, 23, NULL, 0, -1),
(3253, 0, 0, 0, 'Jungle Edge 5', 80000, 15, 0, 0, 0, 0, 27, NULL, 0, -1),
(3254, 0, 0, 0, 'Jungle Edge 6', 25000, 15, 0, 0, 0, 0, 17, NULL, 0, -1),
(3255, 0, 0, 0, 'Jungle Edge 3', 80000, 15, 0, 0, 0, 0, 27, NULL, 0, -1),
(3256, 0, 0, 0, 'River Homes 3', 200000, 15, 0, 0, 0, 0, 111, NULL, 0, -1),
(3257, 0, 0, 0, 'River Homes 2b', 150000, 15, 0, 0, 0, 0, 37, NULL, 0, -1),
(3258, 0, 0, 0, 'River Homes 2a', 100000, 15, 0, 0, 0, 0, 33, NULL, 0, -1),
(3259, 0, 0, 0, 'River Homes 1', 300000, 15, 0, 0, 0, 0, 96, NULL, 0, -1),
(3260, 0, 0, 0, 'Coconut Quay 4', 150000, 15, 0, 0, 0, 0, 52, NULL, 0, -1),
(3261, 0, 0, 0, 'Coconut Quay 3', 200000, 15, 0, 0, 0, 0, 50, NULL, 0, -1),
(3262, 0, 0, 0, 'Coconut Quay 2', 100000, 15, 0, 0, 0, 0, 27, NULL, 0, -1),
(3263, 0, 0, 0, 'Coconut Quay 1', 150000, 15, 0, 0, 0, 0, 47, NULL, 0, -1),
(3264, 0, 0, 0, 'Shark Manor', 250000, 15, 0, 0, 0, 0, 173, NULL, 0, -1),
(3265, 0, 0, 0, 'Glacier Side 2', 300000, 16, 0, 0, 0, 0, 102, NULL, 0, -1),
(3266, 0, 0, 0, 'Glacier Side 1', 150000, 16, 0, 0, 0, 0, 34, NULL, 0, -1),
(3267, 0, 0, 0, 'Glacier Side 3', 150000, 16, 0, 0, 0, 0, 41, NULL, 0, -1),
(3268, 0, 0, 0, 'Glacier Side 4', 150000, 16, 0, 0, 0, 0, 46, NULL, 0, -1),
(3269, 0, 0, 0, 'Shelf Site', 300000, 16, 0, 0, 0, 0, 98, NULL, 0, -1),
(3270, 0, 0, 0, 'Spirit Homes 5', 150000, 16, 0, 0, 0, 0, 29, NULL, 0, -1),
(3271, 0, 0, 0, 'Spirit Homes 4', 80000, 16, 0, 0, 0, 0, 24, NULL, 0, -1),
(3272, 0, 0, 0, 'Spirit Homes 1', 150000, 16, 0, 0, 0, 0, 35, NULL, 0, -1),
(3273, 0, 0, 0, 'Spirit Homes 2', 150000, 16, 0, 0, 0, 0, 39, NULL, 0, -1),
(3274, 0, 0, 0, 'Spirit Homes 3', 300000, 16, 0, 0, 0, 0, 90, NULL, 0, -1),
(3275, 0, 0, 0, 'Arena Walk 3', 300000, 16, 0, 0, 0, 0, 74, NULL, 0, -1),
(3276, 0, 0, 0, 'Arena Walk 2', 150000, 16, 0, 0, 0, 0, 29, NULL, 0, -1),
(3277, 0, 0, 0, 'Arena Walk 1', 300000, 16, 0, 0, 0, 0, 67, NULL, 0, -1),
(3278, 0, 0, 0, 'Bears Paw 2', 300000, 16, 0, 0, 0, 0, 54, NULL, 0, -1),
(3279, 0, 0, 0, 'Bears Paw 1', 200000, 16, 0, 0, 0, 0, 42, NULL, 0, -1),
(3280, 0, 0, 0, 'Crystal Glance', 1000000, 16, 0, 0, 0, 0, 321, NULL, 0, -1),
(3281, 0, 0, 0, 'Shady Rocks 2', 200000, 16, 0, 0, 0, 0, 41, NULL, 0, -1),
(3282, 0, 0, 0, 'Shady Rocks 1', 300000, 16, 0, 0, 0, 0, 79, NULL, 0, -1),
(3283, 0, 0, 0, 'Shady Rocks 3', 300000, 16, 0, 0, 0, 0, 94, NULL, 0, -1),
(3284, 0, 0, 0, 'Shady Rocks 4 (Shop)', 200000, 16, 0, 0, 0, 0, 61, NULL, 0, -1),
(3285, 0, 0, 0, 'Shady Rocks 5', 300000, 16, 0, 0, 0, 0, 66, NULL, 0, -1),
(3286, 0, 0, 0, 'Tusk Flats 2', 80000, 16, 0, 0, 0, 0, 28, NULL, 0, -1),
(3287, 0, 0, 0, 'Tusk Flats 1', 80000, 16, 0, 0, 0, 0, 25, NULL, 0, -1),
(3288, 0, 0, 0, 'Tusk Flats 3', 80000, 16, 0, 0, 0, 0, 26, NULL, 0, -1),
(3289, 0, 0, 0, 'Tusk Flats 4', 25000, 16, 0, 0, 0, 0, 13, NULL, 0, -1),
(3290, 0, 0, 0, 'Tusk Flats 6', 50000, 16, 0, 0, 0, 0, 23, NULL, 0, -1),
(3291, 0, 0, 0, 'Tusk Flats 5', 25000, 16, 0, 0, 0, 0, 18, NULL, 0, -1),
(3292, 0, 0, 0, 'Corner Shop (Shop)', 200000, 16, 0, 0, 0, 0, 50, NULL, 0, -1),
(3293, 0, 0, 0, 'Bears Paw 5', 200000, 16, 0, 0, 0, 0, 45, NULL, 0, -1),
(3294, 0, 0, 0, 'Bears Paw 4', 400000, 16, 0, 0, 0, 0, 119, NULL, 0, -1),
(3295, 0, 0, 0, 'Trout Plaza 2', 150000, 16, 0, 0, 0, 0, 36, NULL, 0, -1),
(3296, 0, 0, 0, 'Trout Plaza 1', 200000, 16, 0, 0, 0, 0, 56, NULL, 0, -1),
(3297, 0, 0, 0, 'Trout Plaza 5 (Shop)', 300000, 16, 0, 0, 0, 0, 89, NULL, 0, -1),
(3298, 0, 0, 0, 'Trout Plaza 3', 80000, 16, 0, 0, 0, 0, 22, NULL, 0, -1),
(3299, 0, 0, 0, 'Trout Plaza 4', 80000, 16, 0, 0, 0, 0, 22, NULL, 0, -1),
(3300, 0, 0, 0, 'Skiffs End 2', 80000, 16, 0, 0, 0, 0, 21, NULL, 0, -1),
(3301, 0, 0, 0, 'Skiffs End 1', 100000, 16, 0, 0, 0, 0, 35, NULL, 0, -1),
(3302, 0, 0, 0, 'Furrier Quarter 3', 100000, 16, 0, 0, 0, 0, 40, NULL, 0, -1),
(3303, 0, 0, 0, 'Fimbul Shelf 4', 100000, 16, 0, 0, 0, 0, 42, NULL, 0, -1),
(3304, 0, 0, 0, 'Fimbul Shelf 3', 100000, 16, 0, 0, 0, 0, 49, NULL, 0, -1),
(3305, 0, 0, 0, 'Furrier Quarter 2', 80000, 16, 0, 0, 0, 0, 37, NULL, 0, -1),
(3306, 0, 0, 0, 'Furrier Quarter 1', 150000, 16, 0, 0, 0, 0, 53, NULL, 0, -1),
(3307, 0, 0, 0, 'Fimbul Shelf 2', 100000, 16, 0, 0, 0, 0, 43, NULL, 0, -1),
(3308, 0, 0, 0, 'Fimbul Shelf 1', 80000, 16, 0, 0, 0, 0, 36, NULL, 0, -1),
(3309, 0, 0, 0, 'Bears Paw 3', 200000, 16, 0, 0, 0, 0, 47, NULL, 0, -1),
(3310, 0, 0, 0, 'Raven Corner 2', 150000, 16, 0, 0, 0, 0, 36, NULL, 0, -1),
(3311, 0, 0, 0, 'Raven Corner 1', 80000, 16, 0, 0, 0, 0, 22, NULL, 0, -1),
(3312, 0, 0, 0, 'Raven Corner 3', 100000, 16, 0, 0, 0, 0, 22, NULL, 0, -1),
(3313, 0, 0, 0, 'Mammoth Belly', 1000000, 16, 0, 0, 0, 0, 404, NULL, 0, -1),
(3314, 0, 0, 0, 'Darashia 3, Flat 01', 150000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3315, 0, 0, 0, 'Darashia 3, Flat 05', 150000, 13, 0, 0, 0, 0, 26, NULL, 0, -1),
(3316, 0, 0, 0, 'Darashia 3, Flat 02', 200000, 13, 0, 0, 0, 0, 41, NULL, 0, -1),
(3317, 0, 0, 0, 'Darashia 3, Flat 04', 150000, 13, 0, 0, 0, 0, 39, NULL, 0, -1),
(3318, 0, 0, 0, 'Darashia 3, Flat 03', 150000, 13, 0, 0, 0, 0, 28, NULL, 0, -1),
(3319, 0, 0, 0, 'Darashia 3, Flat 12', 200000, 13, 0, 0, 0, 0, 56, NULL, 0, -1),
(3320, 0, 0, 0, 'Darashia 3, Flat 11', 100000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3321, 0, 0, 0, 'Darashia 3, Flat 14', 200000, 13, 0, 0, 0, 0, 59, NULL, 0, -1),
(3322, 0, 0, 0, 'Darashia 3, Flat 13', 100000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3323, 0, 0, 0, 'Darashia 8, Flat 01', 300000, 13, 0, 0, 0, 0, 55, NULL, 0, -1),
(3325, 0, 0, 0, 'Darashia 8, Flat 05', 300000, 13, 0, 0, 0, 0, 58, NULL, 0, -1),
(3326, 0, 0, 0, 'Darashia 8, Flat 04', 200000, 13, 0, 0, 0, 0, 63, NULL, 0, -1),
(3327, 0, 0, 0, 'Darashia 8, Flat 03', 300000, 13, 0, 0, 0, 0, 105, NULL, 0, -1),
(3328, 0, 0, 0, 'Darashia 8, Flat 12', 150000, 13, 0, 0, 0, 0, 39, NULL, 0, -1),
(3329, 0, 0, 0, 'Darashia 8, Flat 11', 200000, 13, 0, 0, 0, 0, 46, NULL, 0, -1),
(3330, 0, 0, 0, 'Darashia 8, Flat 14', 150000, 13, 0, 0, 0, 0, 42, NULL, 0, -1),
(3331, 0, 0, 0, 'Darashia 8, Flat 13', 150000, 13, 0, 0, 0, 0, 46, NULL, 0, -1),
(3332, 0, 0, 0, 'Darashia, Villa', 800000, 13, 0, 0, 0, 0, 120, NULL, 0, -1),
(3333, 0, 0, 0, 'Darashia, Eastern Guildhall', 1000000, 13, 0, 0, 0, 0, 272, NULL, 0, -1),
(3334, 0, 0, 0, 'Darashia, Western Guildhall', 500000, 13, 0, 0, 0, 0, 223, NULL, 0, -1),
(3335, 0, 0, 0, 'Darashia 2, Flat 03', 100000, 13, 0, 0, 0, 0, 31, NULL, 0, -1),
(3336, 0, 0, 0, 'Darashia 2, Flat 02', 100000, 13, 0, 0, 0, 0, 26, NULL, 0, -1),
(3337, 0, 0, 0, 'Darashia 2, Flat 01', 150000, 13, 0, 0, 0, 0, 29, NULL, 0, -1),
(3338, 0, 0, 0, 'Darashia 2, Flat 04', 80000, 13, 0, 0, 0, 0, 14, NULL, 0, -1),
(3339, 0, 0, 0, 'Darashia 2, Flat 05', 150000, 13, 0, 0, 0, 0, 31, NULL, 0, -1),
(3340, 0, 0, 0, 'Darashia 2, Flat 06', 80000, 13, 0, 0, 0, 0, 14, NULL, 0, -1),
(3341, 0, 0, 0, 'Darashia 2, Flat 07', 150000, 13, 0, 0, 0, 0, 29, NULL, 0, -1);
INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`, `new_owner`) VALUES
(3342, 0, 0, 0, 'Darashia 2, Flat 13', 100000, 13, 0, 0, 0, 0, 31, NULL, 0, -1),
(3343, 0, 0, 0, 'Darashia 2, Flat 14', 50000, 13, 0, 0, 0, 0, 14, NULL, 0, -1),
(3344, 0, 0, 0, 'Darashia 2, Flat 15', 100000, 13, 0, 0, 0, 0, 30, NULL, 0, -1),
(3345, 0, 0, 0, 'Darashia 2, Flat 16', 80000, 13, 0, 0, 0, 0, 18, NULL, 0, -1),
(3346, 0, 0, 0, 'Darashia 2, Flat 17', 100000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3347, 0, 0, 0, 'Darashia 2, Flat 18', 100000, 13, 0, 0, 0, 0, 17, NULL, 0, -1),
(3348, 0, 0, 0, 'Darashia 2, Flat 11', 100000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3349, 0, 0, 0, 'Darashia 2, Flat 12', 80000, 13, 0, 0, 0, 0, 13, NULL, 0, -1),
(3350, 0, 0, 0, 'Darashia 1, Flat 03', 300000, 13, 0, 0, 0, 0, 65, NULL, 0, -1),
(3351, 0, 0, 0, 'Darashia 1, Flat 04', 100000, 13, 0, 0, 0, 0, 28, NULL, 0, -1),
(3352, 0, 0, 0, 'Darashia 1, Flat 02', 100000, 13, 0, 0, 0, 0, 26, NULL, 0, -1),
(3353, 0, 0, 0, 'Darashia 1, Flat 01', 100000, 13, 0, 0, 0, 0, 29, NULL, 0, -1),
(3354, 0, 0, 0, 'Darashia 1, Flat 05', 100000, 13, 0, 0, 0, 0, 29, NULL, 0, -1),
(3355, 0, 0, 0, 'Darashia 1, Flat 12', 150000, 13, 0, 0, 0, 0, 46, NULL, 0, -1),
(3356, 0, 0, 0, 'Darashia 1, Flat 13', 150000, 13, 0, 0, 0, 0, 50, NULL, 0, -1),
(3357, 0, 0, 0, 'Darashia 1, Flat 14', 200000, 13, 0, 0, 0, 0, 69, NULL, 0, -1),
(3358, 0, 0, 0, 'Darashia 1, Flat 11', 100000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3359, 0, 0, 0, 'Darashia 5, Flat 02', 150000, 13, 0, 0, 0, 0, 41, NULL, 0, -1),
(3360, 0, 0, 0, 'Darashia 5, Flat 01', 150000, 13, 0, 0, 0, 0, 29, NULL, 0, -1),
(3361, 0, 0, 0, 'Darashia 5, Flat 05', 100000, 13, 0, 0, 0, 0, 29, NULL, 0, -1),
(3362, 0, 0, 0, 'Darashia 5, Flat 04', 150000, 13, 0, 0, 0, 0, 42, NULL, 0, -1),
(3363, 0, 0, 0, 'Darashia 5, Flat 03', 150000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3364, 0, 0, 0, 'Darashia 5, Flat 11', 150000, 13, 0, 0, 0, 0, 46, NULL, 0, -1),
(3365, 0, 0, 0, 'Darashia 5, Flat 12', 150000, 13, 0, 0, 0, 0, 39, NULL, 0, -1),
(3366, 0, 0, 0, 'Darashia 5, Flat 13', 150000, 13, 0, 0, 0, 0, 42, NULL, 0, -1),
(3367, 0, 0, 0, 'Darashia 5, Flat 14', 150000, 13, 0, 0, 0, 0, 38, NULL, 0, -1),
(3368, 0, 0, 0, 'Darashia 6a', 300000, 13, 0, 0, 0, 0, 67, NULL, 0, -1),
(3369, 0, 0, 0, 'Darashia 6b', 300000, 13, 0, 0, 0, 0, 80, NULL, 0, -1),
(3370, 0, 0, 0, 'Darashia 4, Flat 02', 200000, 13, 0, 0, 0, 0, 44, NULL, 0, -1),
(3371, 0, 0, 0, 'Darashia 4, Flat 03', 150000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3372, 0, 0, 0, 'Darashia 4, Flat 04', 200000, 13, 0, 0, 0, 0, 45, NULL, 0, -1),
(3373, 0, 0, 0, 'Darashia 4, Flat 05', 150000, 13, 0, 0, 0, 0, 30, NULL, 0, -1),
(3374, 0, 0, 0, 'Darashia 4, Flat 01', 100000, 13, 0, 0, 0, 0, 31, NULL, 0, -1),
(3375, 0, 0, 0, 'Darashia 4, Flat 12', 200000, 13, 0, 0, 0, 0, 64, NULL, 0, -1),
(3376, 0, 0, 0, 'Darashia 4, Flat 11', 100000, 13, 0, 0, 0, 0, 26, NULL, 0, -1),
(3377, 0, 0, 0, 'Darashia 4, Flat 13', 200000, 13, 0, 0, 0, 0, 44, NULL, 0, -1),
(3378, 0, 0, 0, 'Darashia 4, Flat 14', 150000, 13, 0, 0, 0, 0, 46, NULL, 0, -1),
(3379, 0, 0, 0, 'Darashia 7, Flat 01', 100000, 13, 0, 0, 0, 0, 26, NULL, 0, -1),
(3380, 0, 0, 0, 'Darashia 7, Flat 02', 100000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3381, 0, 0, 0, 'Darashia 7, Flat 03', 200000, 13, 0, 0, 0, 0, 65, NULL, 0, -1),
(3382, 0, 0, 0, 'Darashia 7, Flat 05', 150000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3383, 0, 0, 0, 'Darashia 7, Flat 04', 150000, 13, 0, 0, 0, 0, 27, NULL, 0, -1),
(3384, 0, 0, 0, 'Darashia 7, Flat 12', 200000, 13, 0, 0, 0, 0, 60, NULL, 0, -1),
(3385, 0, 0, 0, 'Darashia 7, Flat 11', 100000, 13, 0, 0, 0, 0, 26, NULL, 0, -1),
(3386, 0, 0, 0, 'Darashia 7, Flat 14', 200000, 13, 0, 0, 0, 0, 60, NULL, 0, -1),
(3387, 0, 0, 0, 'Darashia 7, Flat 13', 100000, 13, 0, 0, 0, 0, 25, NULL, 0, -1),
(3388, 0, 0, 0, 'Pirate Shipwreck 1', 800000, 13, 0, 0, 0, 0, 187, NULL, 0, -1),
(3389, 0, 0, 0, 'Pirate Shipwreck 2', 800000, 13, 0, 0, 0, 0, 276, NULL, 0, -1),
(3390, 0, 0, 0, 'The Shelter', 250000, 14, 0, 0, 0, 0, 422, NULL, 0, -1),
(3391, 0, 0, 0, 'Litter Promenade 1', 25000, 14, 0, 0, 0, 0, 15, NULL, 0, -1),
(3392, 0, 0, 0, 'Litter Promenade 2', 50000, 14, 0, 0, 0, 0, 14, NULL, 0, -1),
(3394, 0, 0, 0, 'Litter Promenade 3', 25000, 14, 0, 0, 0, 0, 21, NULL, 0, -1),
(3395, 0, 0, 0, 'Litter Promenade 4', 25000, 14, 0, 0, 0, 0, 18, NULL, 0, -1),
(3396, 0, 0, 0, 'Rum Alley 3', 25000, 14, 0, 0, 0, 0, 18, NULL, 0, -1),
(3397, 0, 0, 0, 'Straycat\'s Corner 5', 80000, 14, 0, 0, 0, 0, 25, NULL, 0, -1),
(3398, 0, 0, 0, 'Straycat\'s Corner 6', 25000, 14, 0, 0, 0, 0, 13, NULL, 0, -1),
(3399, 0, 0, 0, 'Litter Promenade 5', 25000, 14, 0, 0, 0, 0, 23, NULL, 0, -1),
(3401, 0, 0, 0, 'Straycat\'s Corner 4', 50000, 14, 0, 0, 0, 0, 23, NULL, 0, -1),
(3402, 0, 0, 0, 'Straycat\'s Corner 2', 50000, 14, 0, 0, 0, 0, 27, NULL, 0, -1),
(3403, 0, 0, 0, 'Straycat\'s Corner 1', 25000, 14, 0, 0, 0, 0, 14, NULL, 0, -1),
(3404, 0, 0, 0, 'Rum Alley 2', 25000, 14, 0, 0, 0, 0, 18, NULL, 0, -1),
(3405, 0, 0, 0, 'Rum Alley 1', 25000, 14, 0, 0, 0, 0, 25, NULL, 0, -1),
(3406, 0, 0, 0, 'Smuggler Backyard 3', 50000, 14, 0, 0, 0, 0, 27, NULL, 0, -1),
(3407, 0, 0, 0, 'Shady Trail 3', 25000, 14, 0, 0, 0, 0, 16, NULL, 0, -1),
(3408, 0, 0, 0, 'Shady Trail 1', 100000, 14, 0, 0, 0, 0, 34, NULL, 0, -1),
(3409, 0, 0, 0, 'Shady Trail 2', 25000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3410, 0, 0, 0, 'Smuggler Backyard 4', 25000, 14, 0, 0, 0, 0, 22, NULL, 0, -1),
(3411, 0, 0, 0, 'Smuggler Backyard 2', 25000, 14, 0, 0, 0, 0, 31, NULL, 0, -1),
(3412, 0, 0, 0, 'Smuggler Backyard 1', 25000, 14, 0, 0, 0, 0, 27, NULL, 0, -1),
(3413, 0, 0, 0, 'Smuggler Backyard 5', 25000, 14, 0, 0, 0, 0, 25, NULL, 0, -1),
(3414, 0, 0, 0, 'Sugar Street 1', 200000, 14, 0, 0, 0, 0, 60, NULL, 0, -1),
(3415, 0, 0, 0, 'Sugar Street 2', 150000, 14, 0, 0, 0, 0, 51, NULL, 0, -1),
(3416, 0, 0, 0, 'Sugar Street 3a', 100000, 14, 0, 0, 0, 0, 33, NULL, 0, -1),
(3417, 0, 0, 0, 'Sugar Street 3b', 150000, 14, 0, 0, 0, 0, 41, NULL, 0, -1),
(3418, 0, 0, 0, 'Sugar Street 4d', 50000, 14, 0, 0, 0, 0, 15, NULL, 0, -1),
(3419, 0, 0, 0, 'Sugar Street 4c', 25000, 14, 0, 0, 0, 0, 14, NULL, 0, -1),
(3420, 0, 0, 0, 'Sugar Street 4b', 100000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3421, 0, 0, 0, 'Sugar Street 4a', 80000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3422, 0, 0, 0, 'Harvester\'s Haven, Flat 01', 50000, 14, 0, 0, 0, 0, 17, NULL, 0, -1),
(3423, 0, 0, 0, 'Harvester\'s Haven, Flat 03', 50000, 14, 0, 0, 0, 0, 17, NULL, 0, -1),
(3424, 0, 0, 0, 'Harvester\'s Haven, Flat 05', 50000, 14, 0, 0, 0, 0, 17, NULL, 0, -1),
(3425, 0, 0, 0, 'Harvester\'s Haven, Flat 06', 50000, 14, 0, 0, 0, 0, 17, NULL, 0, -1),
(3426, 0, 0, 0, 'Harvester\'s Haven, Flat 04', 50000, 14, 0, 0, 0, 0, 17, NULL, 0, -1),
(3427, 0, 0, 0, 'Harvester\'s Haven, Flat 02', 50000, 14, 0, 0, 0, 0, 17, NULL, 0, -1),
(3428, 0, 0, 0, 'Harvester\'s Haven, Flat 07', 80000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3429, 0, 0, 0, 'Harvester\'s Haven, Flat 09', 50000, 14, 0, 0, 0, 0, 18, NULL, 0, -1),
(3430, 0, 0, 0, 'Harvester\'s Haven, Flat 11', 25000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3431, 0, 0, 0, 'Harvester\'s Haven, Flat 08', 50000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3432, 0, 0, 0, 'Harvester\'s Haven, Flat 10', 50000, 14, 0, 0, 0, 0, 18, NULL, 0, -1),
(3433, 0, 0, 0, 'Harvester\'s Haven, Flat 12', 25000, 14, 0, 0, 0, 0, 19, NULL, 0, -1),
(3434, 0, 0, 0, 'Marble Lane 3', 600000, 14, 0, 0, 0, 0, 163, NULL, 0, -1),
(3435, 0, 0, 0, 'Marble Lane 2', 400000, 14, 0, 0, 0, 0, 141, NULL, 0, -1),
(3436, 0, 0, 0, 'Marble Lane 4', 400000, 14, 0, 0, 0, 0, 134, NULL, 0, -1),
(3437, 0, 0, 0, 'Admiral\'s Avenue 1', 400000, 14, 0, 0, 0, 0, 97, NULL, 0, -1),
(3438, 0, 0, 0, 'Admiral\'s Avenue 2', 400000, 14, 0, 0, 0, 0, 111, NULL, 0, -1),
(3439, 0, 0, 0, 'Admiral\'s Avenue 3', 300000, 14, 0, 0, 0, 0, 99, NULL, 0, -1),
(3440, 0, 0, 0, 'Ivory Circle 1', 400000, 14, 0, 0, 0, 0, 101, NULL, 0, -1),
(3441, 0, 0, 0, 'Sugar Street 5', 150000, 14, 0, 0, 0, 0, 25, NULL, 0, -1),
(3442, 0, 0, 0, 'Freedom Street 1', 200000, 14, 0, 0, 0, 0, 47, NULL, 0, -1),
(3443, 0, 0, 0, 'Trader\'s Point 1', 200000, 14, 0, 0, 0, 0, 42, NULL, 0, -1),
(3444, 0, 0, 0, 'Trader\'s Point 2 (Shop)', 600000, 14, 0, 0, 0, 0, 122, NULL, 0, -1),
(3445, 0, 0, 0, 'Trader\'s Point 3 (Shop)', 600000, 14, 0, 0, 0, 0, 130, NULL, 0, -1),
(3446, 0, 0, 0, 'Ivory Mansion', 800000, 14, 0, 0, 0, 0, 319, NULL, 0, -1),
(3447, 0, 0, 0, 'Ivory Circle 2', 400000, 14, 0, 0, 0, 0, 142, NULL, 0, -1),
(3448, 0, 0, 0, 'Ivy Cottage', 500000, 14, 0, 0, 0, 0, 587, NULL, 0, -1),
(3449, 0, 0, 0, 'Marble Lane 1', 600000, 14, 0, 0, 0, 0, 228, NULL, 0, -1),
(3450, 0, 0, 0, 'Freedom Street 2', 400000, 14, 0, 0, 0, 0, 123, NULL, 0, -1),
(3452, 0, 0, 0, 'Meriana Beach', 150000, 14, 0, 0, 0, 0, 172, NULL, 0, -1),
(3453, 0, 0, 0, 'The Tavern 1a', 150000, 14, 0, 0, 0, 0, 52, NULL, 0, -1),
(3454, 0, 0, 0, 'The Tavern 1b', 100000, 14, 0, 0, 0, 0, 38, NULL, 0, -1),
(3455, 0, 0, 0, 'The Tavern 1c', 200000, 14, 0, 0, 0, 0, 85, NULL, 0, -1),
(3456, 0, 0, 0, 'The Tavern 1d', 100000, 14, 0, 0, 0, 0, 33, NULL, 0, -1),
(3457, 0, 0, 0, 'The Tavern 2a', 300000, 14, 0, 0, 0, 0, 111, NULL, 0, -1),
(3458, 0, 0, 0, 'The Tavern 2b', 100000, 14, 0, 0, 0, 0, 36, NULL, 0, -1),
(3459, 0, 0, 0, 'The Tavern 2d', 100000, 14, 0, 0, 0, 0, 27, NULL, 0, -1),
(3460, 0, 0, 0, 'The Tavern 2c', 50000, 14, 0, 0, 0, 0, 20, NULL, 0, -1),
(3461, 0, 0, 0, 'The Yeah Beach Project', 150000, 14, 0, 0, 0, 0, 157, NULL, 0, -1),
(3462, 0, 0, 0, 'Mountain Hideout', 500000, 14, 0, 0, 0, 0, 321, NULL, 0, -1),
(3463, 0, 0, 0, 'Darashia 8, Flat 02', 300000, 13, 0, 0, 0, 0, 76, NULL, 0, -1),
(3464, 0, 0, 0, 'Castle, Basement, Flat 01', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3465, 0, 0, 0, 'Castle, Basement, Flat 02', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3466, 0, 0, 0, 'Castle, Basement, Flat 03', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3467, 0, 0, 0, 'Castle, Basement, Flat 05', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3468, 0, 0, 0, 'Castle, Basement, Flat 04', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3469, 0, 0, 0, 'Castle, Basement, Flat 06', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3470, 0, 0, 0, 'Castle, Basement, Flat 07', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3471, 0, 0, 0, 'Castle, Basement, Flat 09', 25000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3472, 0, 0, 0, 'Castle, Basement, Flat 08', 50000, 11, 0, 0, 0, 0, 13, NULL, 0, -1),
(3473, 0, 0, 0, 'Cormaya 1', 150000, 11, 0, 0, 0, 0, 30, NULL, 0, -1),
(3474, 0, 0, 0, 'Cormaya Flats, Flat 01', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3475, 0, 0, 0, 'Cormaya Flats, Flat 02', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3476, 0, 0, 0, 'Cormaya Flats, Flat 03', 50000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3477, 0, 0, 0, 'Cormaya Flats, Flat 06', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3478, 0, 0, 0, 'Cormaya Flats, Flat 05', 25000, 11, 0, 0, 0, 0, 11, NULL, 0, -1),
(3479, 0, 0, 0, 'Cormaya Flats, Flat 04', 50000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3480, 0, 0, 0, 'Cormaya Flats, Flat 11', 100000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3482, 0, 0, 0, 'Cormaya Flats, Flat 13', 25000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3483, 0, 0, 0, 'Cormaya Flats, Flat 12', 100000, 11, 0, 0, 0, 0, 24, NULL, 0, -1),
(3485, 0, 0, 0, 'Cormaya Flats, Flat 14', 25000, 11, 0, 0, 0, 0, 17, NULL, 0, -1),
(3486, 0, 0, 0, 'Cormaya 2', 300000, 11, 0, 0, 0, 0, 84, NULL, 0, -1),
(3487, 0, 0, 0, 'Cormaya 4', 150000, 11, 0, 0, 0, 0, 39, NULL, 0, -1),
(3488, 0, 0, 0, 'Cormaya 3', 200000, 11, 0, 0, 0, 0, 47, NULL, 0, -1),
(3489, 0, 0, 0, 'Cormaya 6', 200000, 11, 0, 0, 0, 0, 56, NULL, 0, -1),
(3490, 0, 0, 0, 'Cormaya 7', 200000, 11, 0, 0, 0, 0, 54, NULL, 0, -1),
(3491, 0, 0, 0, 'Cormaya 8', 200000, 11, 0, 0, 0, 0, 65, NULL, 0, -1),
(3492, 0, 0, 0, 'Cormaya 5', 300000, 11, 0, 0, 0, 0, 123, NULL, 0, -1),
(3493, 0, 0, 0, 'Castle of the White Dragon', 1000000, 11, 0, 0, 0, 0, 532, NULL, 0, -1),
(3494, 0, 0, 0, 'Cormaya 9b', 150000, 11, 0, 0, 0, 0, 58, NULL, 0, -1),
(3495, 0, 0, 0, 'Cormaya 9a', 80000, 11, 0, 0, 0, 0, 28, NULL, 0, -1),
(3496, 0, 0, 0, 'Cormaya 9d', 150000, 11, 0, 0, 0, 0, 60, NULL, 0, -1),
(3497, 0, 0, 0, 'Cormaya 9c', 80000, 11, 0, 0, 0, 0, 28, NULL, 0, -1),
(3498, 0, 0, 0, 'Cormaya 10', 300000, 11, 0, 0, 0, 0, 85, NULL, 0, -1),
(3499, 0, 0, 0, 'Cormaya 11', 150000, 11, 0, 0, 0, 0, 47, NULL, 0, -1),
(3500, 0, 0, 0, 'Edron Flats, Flat 22', 50000, 11, 0, 0, 0, 0, 12, NULL, 0, -1),
(3501, 0, 0, 0, 'Magic Academy, Shop', 150000, 11, 0, 0, 0, 0, 23, NULL, 0, -1),
(3502, 0, 0, 0, 'Magic Academy, Flat 1', 100000, 11, 0, 0, 0, 0, 23, NULL, 0, -1),
(3503, 0, 0, 0, 'Magic Academy, Guild', 500000, 11, 0, 0, 0, 0, 195, NULL, 0, -1),
(3504, 0, 0, 0, 'Magic Academy, Flat 2', 80000, 11, 0, 0, 0, 0, 26, NULL, 0, -1),
(3505, 0, 0, 0, 'Magic Academy, Flat 3', 100000, 11, 0, 0, 0, 0, 26, NULL, 0, -1),
(3506, 0, 0, 0, 'Magic Academy, Flat 4', 100000, 11, 0, 0, 0, 0, 26, NULL, 0, -1),
(3507, 0, 0, 0, 'Magic Academy, Flat 5', 80000, 11, 0, 0, 0, 0, 26, NULL, 0, -1),
(3508, 0, 0, 0, 'Oskahl I f', 100000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3509, 0, 0, 0, 'Oskahl I g', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3510, 0, 0, 0, 'Oskahl I h', 150000, 10, 0, 0, 0, 0, 39, NULL, 0, -1),
(3511, 0, 0, 0, 'Oskahl I i', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3512, 0, 0, 0, 'Oskahl I j', 80000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3513, 0, 0, 0, 'Oskahl I b', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3514, 0, 0, 0, 'Oskahl I d', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3515, 0, 0, 0, 'Oskahl I e', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3516, 0, 0, 0, 'Oskahl I c', 80000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3517, 0, 0, 0, 'Chameken I', 100000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3518, 0, 0, 0, 'Chameken II', 80000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3519, 0, 0, 0, 'Charsirakh III', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3520, 0, 0, 0, 'Charsirakh II', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3521, 0, 0, 0, 'Murkhol I a', 80000, 10, 0, 0, 0, 0, 23, NULL, 0, -1),
(3523, 0, 0, 0, 'Murkhol I c', 50000, 10, 0, 0, 0, 0, 11, NULL, 0, -1),
(3524, 0, 0, 0, 'Murkhol I b', 50000, 10, 0, 0, 0, 0, 11, NULL, 0, -1),
(3525, 0, 0, 0, 'Charsirakh I b', 150000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3526, 0, 0, 0, 'Harrah I', 250000, 10, 0, 0, 0, 0, 124, NULL, 0, -1),
(3527, 0, 0, 0, 'Thanah I d', 200000, 10, 0, 0, 0, 0, 52, NULL, 0, -1),
(3528, 0, 0, 0, 'Thanah I c', 200000, 10, 0, 0, 0, 0, 61, NULL, 0, -1),
(3529, 0, 0, 0, 'Thanah I b', 150000, 10, 0, 0, 0, 0, 56, NULL, 0, -1),
(3530, 0, 0, 0, 'Thanah I a', 25000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3531, 0, 0, 0, 'Othehothep I c', 150000, 10, 0, 0, 0, 0, 38, NULL, 0, -1),
(3532, 0, 0, 0, 'Othehothep I d', 150000, 10, 0, 0, 0, 0, 43, NULL, 0, -1),
(3533, 0, 0, 0, 'Othehothep I b', 100000, 10, 0, 0, 0, 0, 32, NULL, 0, -1),
(3534, 0, 0, 0, 'Othehothep II c', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3535, 0, 0, 0, 'Othehothep II d', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3536, 0, 0, 0, 'Othehothep II e', 150000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3537, 0, 0, 0, 'Othehothep II f', 100000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3538, 0, 0, 0, 'Othehothep II b', 150000, 10, 0, 0, 0, 0, 43, NULL, 0, -1),
(3539, 0, 0, 0, 'Othehothep II a', 25000, 10, 0, 0, 0, 0, 10, NULL, 0, -1),
(3540, 0, 0, 0, 'Mothrem I', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3541, 0, 0, 0, 'Arakmehn I', 100000, 10, 0, 0, 0, 0, 28, NULL, 0, -1),
(3542, 0, 0, 0, 'Arakmehn II', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3543, 0, 0, 0, 'Arakmehn III', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3544, 0, 0, 0, 'Arakmehn IV', 100000, 10, 0, 0, 0, 0, 28, NULL, 0, -1),
(3545, 0, 0, 0, 'Unklath II b', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3546, 0, 0, 0, 'Unklath II c', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3547, 0, 0, 0, 'Unklath II d', 100000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3548, 0, 0, 0, 'Unklath II a', 50000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3549, 0, 0, 0, 'Rathal I b', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3550, 0, 0, 0, 'Rathal I c', 25000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3551, 0, 0, 0, 'Rathal I d', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3552, 0, 0, 0, 'Rathal I e', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3553, 0, 0, 0, 'Rathal I a', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3554, 0, 0, 0, 'Rathal II b', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3555, 0, 0, 0, 'Rathal II c', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3556, 0, 0, 0, 'Rathal II d', 100000, 10, 0, 0, 0, 0, 34, NULL, 0, -1),
(3557, 0, 0, 0, 'Rathal II a', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3558, 0, 0, 0, 'Esuph I', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3559, 0, 0, 0, 'Esuph II b', 100000, 10, 0, 0, 0, 0, 32, NULL, 0, -1),
(3560, 0, 0, 0, 'Esuph II a', 25000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3561, 0, 0, 0, 'Esuph III b', 100000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3562, 0, 0, 0, 'Esuph III a', 25000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3564, 0, 0, 0, 'Esuph IV c', 80000, 10, 0, 0, 0, 0, 23, NULL, 0, -1),
(3565, 0, 0, 0, 'Esuph IV d', 25000, 10, 0, 0, 0, 0, 20, NULL, 0, -1),
(3566, 0, 0, 0, 'Esuph IV a', 25000, 10, 0, 0, 0, 0, 10, NULL, 0, -1),
(3567, 0, 0, 0, 'Horakhal', 250000, 10, 0, 0, 0, 0, 205, NULL, 0, -1),
(3568, 0, 0, 0, 'Botham II d', 100000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3569, 0, 0, 0, 'Botham II e', 100000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3570, 0, 0, 0, 'Botham II f', 80000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3571, 0, 0, 0, 'Botham II g', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3572, 0, 0, 0, 'Botham II c', 100000, 10, 0, 0, 0, 0, 23, NULL, 0, -1),
(3573, 0, 0, 0, 'Botham II b', 100000, 10, 0, 0, 0, 0, 30, NULL, 0, -1),
(3574, 0, 0, 0, 'Botham II a', 25000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3575, 0, 0, 0, 'Botham III f', 150000, 10, 0, 0, 0, 0, 43, NULL, 0, -1),
(3576, 0, 0, 0, 'Botham III h', 200000, 10, 0, 0, 0, 0, 71, NULL, 0, -1),
(3577, 0, 0, 0, 'Botham III g', 100000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3578, 0, 0, 0, 'Botham III b', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3579, 0, 0, 0, 'Botham III c', 25000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3581, 0, 0, 0, 'Botham III e', 100000, 10, 0, 0, 0, 0, 38, NULL, 0, -1),
(3582, 0, 0, 0, 'Botham III a', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3583, 0, 0, 0, 'Botham IV f', 100000, 10, 0, 0, 0, 0, 32, NULL, 0, -1),
(3584, 0, 0, 0, 'Botham IV h', 100000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3585, 0, 0, 0, 'Botham IV i', 150000, 10, 0, 0, 0, 0, 32, NULL, 0, -1),
(3586, 0, 0, 0, 'Botham IV g', 100000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3587, 0, 0, 0, 'Botham IV e', 100000, 10, 0, 0, 0, 0, 85, NULL, 0, -1),
(3591, 0, 0, 0, 'Botham IV a', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3592, 0, 0, 0, 'Ramen Tah', 250000, 10, 0, 0, 0, 0, 125, NULL, 0, -1),
(3593, 0, 0, 0, 'Botham I c', 150000, 10, 0, 0, 0, 0, 32, NULL, 0, -1),
(3594, 0, 0, 0, 'Botham I e', 80000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3595, 0, 0, 0, 'Botham I d', 150000, 10, 0, 0, 0, 0, 57, NULL, 0, -1),
(3596, 0, 0, 0, 'Botham I b', 150000, 10, 0, 0, 0, 0, 56, NULL, 0, -1),
(3597, 0, 0, 0, 'Botham I a', 50000, 10, 0, 0, 0, 0, 19, NULL, 0, -1),
(3598, 0, 0, 0, 'Charsirakh I a', 25000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3599, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 2, NULL, 0, -1),
(3600, 0, 0, 0, 'Oskahl I a', 150000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3601, 0, 0, 0, 'Othehothep I a', 25000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3602, 0, 0, 0, 'Othehothep III a', 25000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3603, 0, 0, 0, 'Othehothep III b', 80000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3604, 0, 0, 0, 'Othehothep III c', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3605, 0, 0, 0, 'Othehothep III d', 80000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3606, 0, 0, 0, 'Othehothep III e', 50000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3607, 0, 0, 0, 'Othehothep III f', 50000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3608, 0, 0, 0, 'Unklath I f', 100000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3609, 0, 0, 0, 'Unklath I g', 100000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3610, 0, 0, 0, 'Unklath I d', 150000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3611, 0, 0, 0, 'Unklath I e', 150000, 10, 0, 0, 0, 0, 37, NULL, 0, -1),
(3612, 0, 0, 0, 'Unklath I b', 100000, 10, 0, 0, 0, 0, 34, NULL, 0, -1),
(3613, 0, 0, 0, 'Unklath I c', 100000, 10, 0, 0, 0, 0, 34, NULL, 0, -1),
(3614, 0, 0, 0, 'Unklath I a', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3615, 0, 0, 0, 'Thanah II a', 25000, 10, 0, 0, 0, 0, 17, NULL, 0, -1),
(3616, 0, 0, 0, 'Thanah II b', 50000, 10, 0, 0, 0, 0, 9, NULL, 0, -1),
(3617, 0, 0, 0, 'Thanah II d', 50000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3618, 0, 0, 0, 'Thanah II e', 25000, 10, 0, 0, 0, 0, 7, NULL, 0, -1),
(3619, 0, 0, 0, 'Thanah II c', 25000, 10, 0, 0, 0, 0, 9, NULL, 0, -1),
(3620, 0, 0, 0, 'Thanah II f', 150000, 10, 0, 0, 0, 0, 53, NULL, 0, -1),
(3621, 0, 0, 0, 'Thanah II g', 100000, 10, 0, 0, 0, 0, 31, NULL, 0, -1),
(3622, 0, 0, 0, 'Thanah II h', 100000, 10, 0, 0, 0, 0, 26, NULL, 0, -1),
(3623, 0, 0, 0, 'Thrarhor I a (Shop)', 50000, 10, 0, 0, 0, 0, 15, NULL, 0, -1),
(3624, 0, 0, 0, 'Thrarhor I c (Shop)', 50000, 10, 0, 0, 0, 0, 15, NULL, 0, -1),
(3625, 0, 0, 0, 'Thrarhor I d (Shop)', 80000, 10, 0, 0, 0, 0, 15, NULL, 0, -1),
(3626, 0, 0, 0, 'Thrarhor I b (Shop)', 50000, 10, 0, 0, 0, 0, 15, NULL, 0, -1),
(3627, 0, 0, 0, 'Uthemath I a', 25000, 10, 0, 0, 0, 0, 10, NULL, 0, -1),
(3628, 0, 0, 0, 'Uthemath I b', 50000, 10, 0, 0, 0, 0, 20, NULL, 0, -1),
(3629, 0, 0, 0, 'Uthemath I c', 80000, 10, 0, 0, 0, 0, 20, NULL, 0, -1),
(3630, 0, 0, 0, 'Uthemath I d', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3631, 0, 0, 0, 'Uthemath I e', 80000, 10, 0, 0, 0, 0, 21, NULL, 0, -1),
(3632, 0, 0, 0, 'Uthemath I f', 150000, 10, 0, 0, 0, 0, 56, NULL, 0, -1),
(3633, 0, 0, 0, 'Uthemath II', 250000, 10, 0, 0, 0, 0, 93, NULL, 0, -1),
(3634, 0, 0, 0, 'Marketplace 1', 400000, 22, 0, 0, 0, 0, 79, NULL, 0, -1),
(3635, 0, 0, 0, 'Marketplace 2', 400000, 22, 0, 0, 0, 0, 92, NULL, 0, -1),
(3636, 0, 0, 0, 'Quay 1', 200000, 22, 0, 0, 0, 0, 81, NULL, 0, -1),
(3637, 0, 0, 0, 'Quay 2', 200000, 22, 0, 0, 0, 0, 130, NULL, 0, -1),
(3638, 0, 0, 0, 'Halls of Sun and Sea', 1000000, 22, 0, 0, 0, 0, 423, NULL, 0, -1),
(3639, 0, 0, 0, 'Palace Vicinity', 200000, 22, 0, 0, 0, 0, 132, NULL, 0, -1),
(3640, 0, 0, 0, 'Wave Tower', 400000, 22, 0, 0, 0, 0, 212, NULL, 0, -1),
(3641, 0, 0, 0, 'Old Sanctuary of God King Qjell', 300000, 18, 0, 0, 0, 0, 699, NULL, 0, -1),
(3642, 0, 0, 0, 'Old Heritage Estate', 600000, 20, 0, 0, 0, 0, 335, NULL, 0, -1),
(3643, 0, 0, 0, 'Rathleton Plaza 4', 400000, 20, 0, 0, 0, 0, 144, NULL, 0, -1),
(3644, 0, 0, 0, 'Rathleton Plaza 3', 400000, 20, 0, 0, 0, 0, 157, NULL, 0, -1),
(3645, 0, 0, 0, 'Rathleton Plaza 2', 400000, 20, 0, 0, 0, 0, 77, NULL, 0, -1),
(3646, 0, 0, 0, 'Rathleton Plaza 1', 300000, 20, 0, 0, 0, 0, 80, NULL, 0, -1),
(3647, 0, 0, 0, 'Antimony Lane 2', 400000, 20, 0, 0, 0, 0, 127, NULL, 0, -1),
(3648, 0, 0, 0, 'Antimony Lane 1', 400000, 20, 0, 0, 0, 0, 189, NULL, 0, -1),
(3649, 0, 0, 0, 'Wallside Residence', 400000, 20, 0, 0, 0, 0, 182, NULL, 0, -1),
(3650, 0, 0, 0, 'Wallside Lane 1', 800000, 20, 0, 0, 0, 0, 216, NULL, 0, -1),
(3651, 0, 0, 0, 'Wallside Lane 2', 600000, 20, 0, 0, 0, 0, 227, NULL, 0, -1),
(3652, 0, 0, 0, 'Vanward Flats B', 400000, 20, 0, 0, 0, 0, 179, NULL, 0, -1),
(3653, 0, 0, 0, 'Vanward Flats A', 400000, 20, 0, 0, 0, 0, 189, NULL, 0, -1),
(3654, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 52, NULL, 0, -1),
(3655, 0, 0, 0, 'Cistern Ave', 300000, 20, 0, 0, 0, 0, 111, NULL, 0, -1),
(3656, 0, 0, 0, 'Antimony Lane 4', 400000, 20, 0, 0, 0, 0, 159, NULL, 0, -1),
(3657, 0, 0, 0, 'Antimony Lane 3', 400000, 20, 0, 0, 0, 0, 101, NULL, 0, -1),
(3658, 0, 0, 0, 'Rathleton Hills Residence', 400000, 20, 0, 0, 0, 0, 186, NULL, 0, -1),
(3659, 0, 0, 0, 'Rathleton Hills Estate', 1000000, 20, 0, 0, 0, 0, 534, NULL, 0, -1),
(3660, 0, 0, 0, 'Lion\'s Head Reef', 400000, 25, 0, 0, 0, 0, 166, NULL, 0, -1),
(3661, 0, 0, 0, 'Shadow Caves 1', 50000, 5, 0, 0, 0, 0, 32, NULL, 0, -1),
(3662, 0, 0, 0, 'Shadow Caves 2', 50000, 5, 0, 0, 0, 0, 37, NULL, 0, -1),
(3663, 0, 0, 0, 'Shadow Caves 3', 100000, 5, 0, 0, 0, 0, 61, NULL, 0, -1),
(3664, 0, 0, 0, 'Shadow Caves 4', 100000, 5, 0, 0, 0, 0, 53, NULL, 0, -1),
(3665, 0, 0, 0, 'Shadow Caves 5', 100000, 5, 0, 0, 0, 0, 61, NULL, 0, -1),
(3666, 0, 0, 0, 'Shadow Caves 6', 100000, 5, 0, 0, 0, 0, 50, NULL, 0, -1),
(3667, 0, 0, 0, 'Northport Clanhall', 250000, 6, 0, 0, 0, 0, 172, NULL, 0, -1),
(3668, 0, 0, 0, 'The Treehouse', 250000, 15, 0, 0, 0, 0, 972, NULL, 0, -1),
(3669, 0, 0, 0, 'Frost Manor', 500000, 16, 0, 0, 0, 0, 505, NULL, 0, -1),
(3670, 0, 0, 0, 'Hare\'s Den', 150000, 7, 0, 0, 0, 0, 304, NULL, 0, -1),
(3671, 0, 0, 0, 'Lost Cavern', 200000, 7, 0, 0, 0, 0, 705, NULL, 0, -1),
(3673, 0, 0, 0, 'Caveman Shelter', 150000, 12, 0, 0, 0, 0, 137, NULL, 0, -1),
(3674, 0, 0, 0, 'Eastern House of Tranquility', 200000, 12, 0, 0, 0, 0, 313, NULL, 0, -1),
(3675, 0, 0, 0, 'Lakeside Mansion', 300000, 16, 0, 0, 0, 0, 136, NULL, 0, -1),
(3676, 0, 0, 0, 'Pilchard Bin 1', 80000, 16, 0, 0, 0, 0, 14, NULL, 0, -1),
(3677, 0, 0, 0, 'Pilchard Bin 2', 50000, 16, 0, 0, 0, 0, 14, NULL, 0, -1),
(3678, 0, 0, 0, 'Pilchard Bin 3', 50000, 16, 0, 0, 0, 0, 14, NULL, 0, -1),
(3679, 0, 0, 0, 'Pilchard Bin 4', 50000, 16, 0, 0, 0, 0, 14, NULL, 0, -1),
(3680, 0, 0, 0, 'Pilchard Bin 5', 80000, 16, 0, 0, 0, 0, 14, NULL, 0, -1),
(3681, 0, 0, 0, 'Pilchard Bin 6', 25000, 16, 0, 0, 0, 0, 11, NULL, 0, -1),
(3682, 0, 0, 0, 'Pilchard Bin 7', 25000, 16, 0, 0, 0, 0, 11, NULL, 0, -1),
(3683, 0, 0, 0, 'Pilchard Bin 8', 25000, 16, 0, 0, 0, 0, 11, NULL, 0, -1),
(3684, 0, 0, 0, 'Pilchard Bin 9', 50000, 16, 0, 0, 0, 0, 11, NULL, 0, -1),
(3685, 0, 0, 0, 'Pilchard Bin 10', 0, 16, 0, 0, 0, 0, 11, NULL, 0, -1),
(3686, 0, 0, 0, 'Mammoth House', 300000, 16, 0, 0, 0, 0, 280, NULL, 0, -1),
(3687, 0, 0, 0, 'God House #3687', 6530000, 8, 0, 0, 0, 0, 657, NULL, 0, -1),
(3688, 0, 0, 0, 'House of the Rising Moon', 15000000, 28, 0, 0, 0, 0, 526, NULL, 0, -1),
(3689, 0, 0, 0, 'Centre 1', 6000000, 28, 0, 0, 0, 0, 156, NULL, 0, -1),
(3690, 0, 0, 0, 'Centre 2', 5000000, 28, 0, 0, 0, 0, 160, NULL, 0, -1),
(3691, 0, 0, 0, 'Cliffside', 10000000, 28, 0, 0, 0, 0, 365, NULL, 0, -1);

-- --------------------------------------------------------

--
-- Table structure for table `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `version` bigint(20) NOT NULL DEFAULT 0,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_bans`
--

CREATE TABLE `ip_bans` (
  `ip` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kv_store`
--

CREATE TABLE `kv_store` (
  `key_name` varchar(191) NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `value` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kv_store`
--

INSERT INTO `kv_store` (`key_name`, `timestamp`, `value`) VALUES
('migrations.20231128213158_move_hireling_data_to_kv', 1738648626014, 0x3001),
('migrations.20241708000535_move_achievement_to_kv', 1738648626089, 0x3001),
('migrations.20241708362079_move_vip_system_to_kv', 1738648626133, 0x3001),
('migrations.20241708485868_move_some_storages_to_kv', 1738648626178, 0x3001),
('player.0.achievements.unlocked.Si, Ariki!', 1738833722161, 0x10bafe91bd06),
('player.10.account.vip-system', 1739043423875, 0x3001),
('player.10.achievements.Potion Addict-progress', 1739046070570, 0x190000000000c05240),
('player.10.achievements.The Undertaker-progress', 1738835961344, 0x190000000000000040),
('player.10.combat-protection', 1738649582003, 0x19000000000000f03f),
('player.10.daily-reward.streak', 1739043423871, 0x190000000000000000),
('player.10.exhaustion.training-exhaustion', 1738977894561, 0x190000009cace9d941),
('player.10.last-mount', 1739045932290, 0x102f),
('player.11.account.vip-system', 1739012191805, 0x3001),
('player.11.achievements.Potion Addict-progress', 1738977196109, 0x190000000000003440),
('player.11.achievements.The Undertaker-progress', 1738827615381, 0x190000000000001840),
('player.11.combat-protection', 1738655656496, 0x19000000000000f03f),
('player.11.daily-reward.streak', 1738970094296, 0x190000000000000000),
('player.11.exhaustion.training-exhaustion', 1739046186443, 0x190000004defe9d941),
('player.11.last-mount', 1738977260101, 0x1079),
('player.9.achievements.points', 1738833722161, 0x1001),
('player.9.combat-protection', 1738834650985, 0x19000000000000f03f),
('player.9.daily-reward.streak', 1738984637204, 0x190000000000000000),
('player.9.last-mount', 1738833373765, 0x1001),
('raids.ankrahmun.the-welter.checks-today', 1739060006028, 0x19000000000076a840),
('raids.ankrahmun.the-welter.failed-attempts', 1739060006028, 0x19000000000076a840),
('raids.darashia.tyrn.checks-today', 1738654080027, 0x190000000000c05640),
('raids.darashia.tyrn.failed-attempts', 1738654020027, 0x190000000000805640),
('raids.darashia.tyrn.trigger-when-possible', 1739060006028, 0x3001),
('raids.drefia.arachir.checks-today', 1738727946556, 0x190000000000406c40),
('raids.drefia.arachir.failed-attempts', 1738727886554, 0x190000000000206c40),
('raids.drefia.arachir.trigger-when-possible', 1739060006027, 0x3001),
('raids.drefia.the-pale-count.checks-today', 1738942541072, 0x190000000000f49d40),
('raids.drefia.the-pale-count.failed-attempts', 1738942481074, 0x190000000000f09d40),
('raids.drefia.the-pale-count.trigger-when-possible', 1739060006028, 0x3001),
('raids.edron.valorcrest.checks-today', 1738803732604, 0x190000000000189040),
('raids.edron.valorcrest.failed-attempts', 1738803672606, 0x190000000000149040),
('raids.edron.valorcrest.trigger-when-possible', 1739060006028, 0x3001),
('raids.edron.weakened-shlorg.checks-today', 1738842226345, 0x190000000000749640),
('raids.edron.weakened-shlorg.failed-attempts', 1738842166342, 0x190000000000709640),
('raids.edron.weakened-shlorg.trigger-when-possible', 1739060006026, 0x3001),
('raids.edron.white-pale.checks-today', 1739060006027, 0x19000000000076a840),
('raids.edron.white-pale.failed-attempts', 1739060006027, 0x19000000000076a840),
('raids.farmine.draptor.checks-today', 1739060006027, 0x19000000000076a840),
('raids.farmine.draptor.failed-attempts', 1739060006027, 0x19000000000076a840),
('raids.folda.yeti.checks-today', 1739060006028, 0x19000000000076a840),
('raids.folda.yeti.failed-attempts', 1739060006028, 0x19000000000076a840),
('raids.fury-gates.furiosa.checks-today', 1739060006028, 0x19000000000076a840),
('raids.fury-gates.furiosa.failed-attempts', 1739060006028, 0x19000000000076a840),
('raids.nargor.diblis.checks-today', 1739060006028, 0x19000000000076a840),
('raids.nargor.diblis.failed-attempts', 1739060006028, 0x19000000000076a840),
('raids.roshamuul.mawhawk.checks-today', 1738843006340, 0x190000000000a89640),
('raids.roshamuul.mawhawk.failed-attempts', 1738842946350, 0x190000000000a49640),
('raids.roshamuul.mawhawk.trigger-when-possible', 1739060006027, 0x3001),
('raids.svargrond.hirintror.checks-today', 1738982553880, 0x190000000000e0a240),
('raids.svargrond.hirintror.failed-attempts', 1738982493883, 0x190000000000dea240),
('raids.svargrond.hirintror.trigger-when-possible', 1739060006027, 0x3001),
('raids.thais.rats.checks-today', 1738932581066, 0x190000000000006940),
('raids.thais.rats.failed-attempts', 1738932581066, 0x190000000000000000),
('raids.thais.rats.last-occurrence', 1738932581067, 0x190000405980e9d941),
('raids.thais.rats.trigger-when-possible', 1738932581066, 0x3000),
('raids.thais.wild-horses.checks-today', 1698949386044, 0x190000000000000040),
('raids.thais.wild-horses.failed-attempts', 1698846869889, 0x190000000000000040),
('raids.tiquanda.midnight-panther.checks-today', 1738649400018, 0x190000000000002a40),
('raids.tiquanda.midnight-panther.failed-attempts', 1738649340017, 0x190000000000002840),
('raids.tiquanda.midnight-panther.trigger-when-possible', 1739060006027, 0x3001),
('raids.venore.the-old-widow.checks-today', 1738743114973, 0x190000000000e07940),
('raids.venore.the-old-widow.failed-attempts', 1738743054963, 0x190000000000d07940),
('raids.venore.the-old-widow.trigger-when-possible', 1739060006027, 0x3001);

-- --------------------------------------------------------

--
-- Table structure for table `market_history`
--

CREATE TABLE `market_history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `itemtype` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `expires_at` bigint(20) UNSIGNED NOT NULL,
  `inserted` bigint(20) UNSIGNED NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL,
  `tier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `market_offers`
--

CREATE TABLE `market_offers` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `itemtype` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `created` bigint(20) UNSIGNED NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `market_offers`
--

INSERT INTO `market_offers` (`id`, `player_id`, `sale`, `itemtype`, `amount`, `created`, `anonymous`, `price`, `tier`) VALUES
(1, 10, 1, 22118, 50, 1738725803, 1, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_account_actions`
--

CREATE TABLE `myaac_account_actions` (
  `account_id` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  `ipv6` binary(16) NOT NULL DEFAULT '0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `date` int(11) NOT NULL DEFAULT 0,
  `action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_account_actions`
--

INSERT INTO `myaac_account_actions` (`account_id`, `ip`, `ipv6`, `date`, `action`) VALUES
(3, '2130706433', 0x00000000000000000000000000000000, 1738646751, 'Account created.'),
(4, '2130706433', 0x00000000000000000000000000000000, 1738647666, 'Account created.'),
(4, '2130706433', 0x00000000000000000000000000000000, 1738647666, 'Created character <b>Hunter</b>.'),
(4, '2130706433', 0x00000000000000000000000000000000, 1738650390, 'Changed name from <b>Hunter</b> to <b>Hunter Ka</b>.'),
(4, '2130706433', 0x00000000000000000000000000000000, 1738655632, 'Created character <b>Magalinda</b>.');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_admin_menu`
--

CREATE TABLE `myaac_admin_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_bugtracker`
--

CREATE TABLE `myaac_bugtracker` (
  `account` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `reply` int(11) NOT NULL DEFAULT 0,
  `who` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `tag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_changelog`
--

CREATE TABLE `myaac_changelog` (
  `id` int(11) NOT NULL,
  `body` varchar(500) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - added, 2 - removed, 3 - changed, 4 - fixed',
  `where` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - server, 2 - site',
  `date` int(11) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_charbazaar`
--

CREATE TABLE `myaac_charbazaar` (
  `id` int(11) NOT NULL,
  `account_old` int(11) NOT NULL,
  `account_new` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date_end` datetime NOT NULL,
  `date_start` datetime NOT NULL,
  `bid_account` int(11) NOT NULL,
  `bid_price` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_charbazaar_bid`
--

CREATE TABLE `myaac_charbazaar_bid` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `auction_id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_config`
--

CREATE TABLE `myaac_config` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_config`
--

INSERT INTO `myaac_config` (`id`, `name`, `value`) VALUES
(1, 'database_version', '43'),
(2, 'status_online', '0'),
(3, 'status_players', '0'),
(4, 'status_playersMax', '0'),
(5, 'status_lastCheck', '1739071421'),
(6, 'status_uptime', '1739071421'),
(7, 'status_monsters', '1258'),
(8, 'views_counter', '260'),
(9, 'status_uptimeReadable', '02 months, 09 days, 16h 23m'),
(10, 'status_motd', 'Welcome to Tibico!'),
(11, 'status_mapAuthor', 'PadilhaSantiago'),
(12, 'status_mapName', 'otservbr'),
(13, 'status_mapWidth', '34143'),
(14, 'status_mapHeight', '33812'),
(15, 'status_server', 'Canary'),
(16, 'status_serverVersion', '3.0'),
(17, 'status_clientVersion', '13.32'),
(18, 'last_usage_report', '1685905624'),
(19, 'status_playersTotal', '0');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_faq`
--

CREATE TABLE `myaac_faq` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(1020) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_faq`
--

INSERT INTO `myaac_faq` (`id`, `question`, `answer`, `ordering`, `hide`) VALUES
(1, 'What is this?', 'This is website for OTS powered by MyAAC.', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_forum`
--

CREATE TABLE `myaac_forum` (
  `id` int(11) NOT NULL,
  `first_post` int(11) NOT NULL DEFAULT 0,
  `last_post` int(11) NOT NULL DEFAULT 0,
  `section` int(3) NOT NULL DEFAULT 0,
  `replies` int(20) NOT NULL DEFAULT 0,
  `views` int(20) NOT NULL DEFAULT 0,
  `author_aid` int(20) NOT NULL DEFAULT 0,
  `author_guid` int(20) NOT NULL DEFAULT 0,
  `post_text` mediumtext NOT NULL,
  `post_topic` varchar(255) NOT NULL DEFAULT '',
  `post_smile` tinyint(1) NOT NULL DEFAULT 0,
  `post_html` tinyint(1) NOT NULL DEFAULT 0,
  `post_date` int(20) NOT NULL DEFAULT 0,
  `last_edit_aid` int(20) NOT NULL DEFAULT 0,
  `edit_date` int(20) NOT NULL DEFAULT 0,
  `post_ip` varchar(45) NOT NULL DEFAULT '0.0.0.0',
  `sticked` tinyint(1) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_forum_boards`
--

CREATE TABLE `myaac_forum_boards` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `guild` int(11) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_forum_boards`
--

INSERT INTO `myaac_forum_boards` (`id`, `name`, `description`, `ordering`, `guild`, `access`, `closed`, `hide`) VALUES
(1, 'News', 'News commenting', 0, 0, 0, 1, 0),
(2, 'Trade', 'Trade offers.', 1, 0, 0, 0, 0),
(3, 'Quests', 'Quest making.', 2, 0, 0, 0, 0),
(4, 'Pictures', 'Your pictures.', 3, 0, 0, 0, 0),
(5, 'Bug Report', 'Report bugs there.', 4, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_gallery`
--

CREATE TABLE `myaac_gallery` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_gallery`
--

INSERT INTO `myaac_gallery` (`id`, `comment`, `image`, `thumb`, `author`, `ordering`, `hide`) VALUES
(1, 'Demon', 'images/gallery/demon.jpg', 'images/gallery/demon_thumb.gif', 'MyAAC', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_menu`
--

CREATE TABLE `myaac_menu` (
  `id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `blank` tinyint(1) NOT NULL DEFAULT 0,
  `color` varchar(6) NOT NULL DEFAULT '',
  `category` int(11) NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `enabled` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_menu`
--

INSERT INTO `myaac_menu` (`id`, `template`, `name`, `link`, `blank`, `color`, `category`, `ordering`, `enabled`) VALUES
(1, 'tibiacom', 'Latest News', 'news', 0, '', 1, 0, 1),
(2, 'tibiacom', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(3, 'tibiacom', 'Event Schedule', 'eventcalendar', 0, '', 1, 2, 1),
(4, 'tibiacom', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(5, 'tibiacom', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(6, 'tibiacom', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(7, 'tibiacom', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(8, 'tibiacom', 'Downloads', 'downloadclient', 0, '', 2, 4, 1),
(9, 'tibiacom', 'Report Bug', 'bugtracker', 0, '', 2, 5, 1),
(10, 'tibiacom', 'Characters', 'characters', 0, '', 3, 0, 1),
(11, 'tibiacom', 'Who Is Online?', 'online', 0, '', 3, 1, 1),
(12, 'tibiacom', 'Highscores', 'highscores', 0, '', 3, 2, 1),
(13, 'tibiacom', 'Last Kills', 'last-kills', 0, '', 3, 3, 1),
(14, 'tibiacom', 'Houses', 'houses', 0, '', 3, 4, 1),
(15, 'tibiacom', 'Guilds', 'guilds', 0, '', 3, 5, 1),
(16, 'tibiacom', 'Polls', 'polls', 0, '', 3, 6, 1),
(17, 'tibiacom', 'Bans', 'bans', 0, '', 3, 7, 1),
(18, 'tibiacom', 'Support List', 'team', 0, '', 3, 8, 1),
(19, 'tibiacom', 'Forum', 'forum', 0, '', 4, 0, 1),
(20, 'tibiacom', 'Creatures', 'monsters', 0, '', 5, 0, 1),
(21, 'tibiacom', 'Spells', 'spells', 0, '', 5, 1, 1),
(22, 'tibiacom', 'Commands', 'commands', 0, '', 5, 2, 1),
(23, 'tibiacom', 'Gallery', 'gallery', 0, '', 5, 3, 1),
(24, 'tibiacom', 'Server Info', 'server-info', 0, '', 5, 4, 1),
(25, 'tibiacom', 'Experience Table', 'exp-table', 0, '', 5, 5, 1),
(26, 'tibiacom', 'Current Auctions', 'currentcharactertrades', 0, '', 7, 0, 1),
(27, 'tibiacom', 'Auction History', 'pastcharactertrades', 0, '', 7, 1, 1),
(28, 'tibiacom', 'My Bids', 'ownbids', 0, '', 7, 2, 1),
(29, 'tibiacom', 'My Auctions', 'owncharactertrades', 0, '', 7, 3, 1),
(30, 'tibiacom', 'Create Auction', 'createcharacterauction', 0, '', 7, 4, 1),
(31, 'tibiacom', 'Buy Points', 'points', 0, '', 6, 0, 1),
(32, 'tibiacom', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(33, 'tibiacom', 'Shop History', 'gifts/history', 0, '', 6, 2, 1),
(34, 'kathrine', 'Latest News', 'news', 0, '', 1, 0, 1),
(35, 'kathrine', 'News Archive', 'news/archive', 0, '', 1, 1, 1),
(36, 'kathrine', 'Changelog', 'changelog', 0, '', 1, 2, 1),
(37, 'kathrine', 'Account Management', 'account/manage', 0, '', 2, 0, 1),
(38, 'kathrine', 'Create Account', 'account/create', 0, '', 2, 1, 1),
(39, 'kathrine', 'Lost Account?', 'account/lost', 0, '', 2, 2, 1),
(40, 'kathrine', 'Server Rules', 'rules', 0, '', 2, 3, 1),
(41, 'kathrine', 'Downloads', 'downloads', 0, '', 2, 4, 1),
(42, 'kathrine', 'Characters', 'characters', 0, '', 3, 0, 1),
(43, 'kathrine', 'Who is Online?', 'online', 0, '', 3, 1, 1),
(44, 'kathrine', 'Highscores', 'highscores', 0, '', 3, 2, 1),
(45, 'kathrine', 'Last Kills', 'last-kills', 0, '', 3, 3, 1),
(46, 'kathrine', 'Houses', 'houses', 0, '', 3, 4, 1),
(47, 'kathrine', 'Guilds', 'guilds', 0, '', 3, 5, 1),
(48, 'kathrine', 'Polls', 'polls', 0, '', 3, 6, 1),
(49, 'kathrine', 'Bans', 'bans', 0, '', 3, 7, 1),
(50, 'kathrine', 'Forum', 'forum', 0, '', 3, 8, 1),
(51, 'kathrine', 'Team', 'team', 0, '', 3, 9, 1),
(52, 'kathrine', 'Monsters', 'monsters', 0, '', 5, 0, 1),
(53, 'kathrine', 'Spells', 'spells', 0, '', 5, 1, 1),
(54, 'kathrine', 'Server Info', 'server-info', 0, '', 5, 2, 1),
(55, 'kathrine', 'Commands', 'commands', 0, '', 5, 3, 1),
(56, 'kathrine', 'Exp Stages', 'exp-stages', 0, '', 5, 4, 1),
(57, 'kathrine', 'Gallery', 'gallery', 0, '', 5, 5, 1),
(58, 'kathrine', 'Exp Table', 'exp-table', 0, '', 5, 6, 1),
(59, 'kathrine', 'FAQ', 'faq', 0, '', 5, 7, 1),
(60, 'kathrine', 'Buy Points', 'points', 0, '', 6, 0, 1),
(61, 'kathrine', 'Shop Offer', 'gifts', 0, '', 6, 1, 1),
(62, 'kathrine', 'Shop History', 'gifts/history', 0, '', 6, 2, 1),
(324, 'old-school', 'Home', 'news', 0, 'ffffff', 7, 0, 1),
(325, 'old-school', 'News Archive', 'news/archive', 0, 'ffffff', 7, 1, 1),
(326, 'old-school', 'Changelog', 'changelog', 0, 'ffffff', 7, 2, 1),
(327, 'old-school', 'Downloads', 'downloads', 0, 'ffffff', 7, 3, 1),
(328, 'old-school', 'Rules', 'rules', 0, 'ffffff', 7, 4, 1),
(329, 'old-school', 'FAQ', 'faq', 0, 'ffffff', 7, 5, 1),
(330, 'old-school', 'Create Account', 'account/create', 0, 'ffffff', 2, 0, 1),
(331, 'old-school', 'Lost Account Interface', 'account/lost', 0, 'ffffff', 2, 1, 1),
(332, 'old-school', 'Forum', 'forum', 0, 'ffffff', 2, 2, 1),
(333, 'old-school', 'Search Character', 'characters', 0, 'ffffff', 3, 0, 1),
(334, 'old-school', 'Online', 'online', 0, 'ffffff', 3, 1, 1),
(335, 'old-school', 'Highscores', 'highscores', 0, 'ffffff', 3, 2, 1),
(336, 'old-school', 'Last Kills', 'lastkills', 0, 'ffffff', 3, 3, 1),
(337, 'old-school', 'Houses', 'houses', 0, 'ffffff', 3, 4, 1),
(338, 'old-school', 'Bug Tracker', 'bugtracker', 0, 'ffffff', 3, 5, 1),
(339, 'old-school', 'Guilds', 'guilds', 0, 'ffffff', 3, 6, 1),
(340, 'old-school', 'Bans', 'bans', 0, 'ffffff', 3, 7, 1),
(341, 'old-school', 'Forum', 'forum', 0, 'ffffff', 3, 8, 1),
(342, 'old-school', 'Team', 'team', 0, 'ffffff', 3, 9, 1),
(343, 'old-school', 'Creatures', 'creatures', 0, 'ffffff', 5, 0, 1),
(344, 'old-school', 'Spells', 'spells', 0, 'ffffff', 5, 1, 1),
(345, 'old-school', 'Commands', 'commands', 0, 'ffffff', 5, 2, 1),
(346, 'old-school', 'Server Info', 'serverInfo', 0, 'ffffff', 5, 3, 1),
(347, 'old-school', 'Gallery', 'gallery', 0, 'ffffff', 5, 4, 1),
(348, 'old-school', 'Experience Stages', 'experienceStages', 0, 'ffffff', 5, 5, 1),
(349, 'old-school', 'Experience Table', 'experienceTable', 0, 'ffffff', 5, 6, 1),
(350, 'old-school', 'Buy Master Coin', 'points', 0, 'ffffff', 6, 0, 1),
(351, 'old-school', 'Shop', 'gifts', 0, 'ffffff', 6, 1, 1),
(352, 'old-school', 'Transactions History', 'gifts/history', 0, 'ffffff', 6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_monsters`
--

CREATE TABLE `myaac_monsters` (
  `id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `mana` int(11) NOT NULL DEFAULT 0,
  `exp` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `look` varchar(255) NOT NULL DEFAULT '',
  `speed_lvl` int(11) NOT NULL DEFAULT 1,
  `use_haste` tinyint(1) NOT NULL,
  `voices` mediumtext NOT NULL,
  `immunities` varchar(255) NOT NULL,
  `elements` mediumtext NOT NULL,
  `summonable` tinyint(1) NOT NULL,
  `convinceable` tinyint(1) NOT NULL,
  `pushable` tinyint(1) NOT NULL DEFAULT 0,
  `canpushitems` tinyint(1) NOT NULL DEFAULT 0,
  `canwalkonenergy` tinyint(1) NOT NULL DEFAULT 0,
  `canwalkonpoison` tinyint(1) NOT NULL DEFAULT 0,
  `canwalkonfire` tinyint(1) NOT NULL DEFAULT 0,
  `runonhealth` tinyint(1) NOT NULL DEFAULT 0,
  `hostile` tinyint(1) NOT NULL DEFAULT 0,
  `attackable` tinyint(1) NOT NULL DEFAULT 0,
  `rewardboss` tinyint(1) NOT NULL DEFAULT 0,
  `defense` int(11) NOT NULL DEFAULT 0,
  `armor` int(11) NOT NULL DEFAULT 0,
  `canpushcreatures` tinyint(1) NOT NULL DEFAULT 0,
  `race` varchar(255) NOT NULL,
  `loot` mediumtext NOT NULL,
  `summons` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_news`
--

CREATE TABLE `myaac_news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` mediumtext NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - news, 2 - ticker, 3 - article',
  `date` int(11) NOT NULL DEFAULT 0,
  `category` tinyint(1) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `last_modified_by` int(11) NOT NULL DEFAULT 0,
  `last_modified_date` int(11) NOT NULL DEFAULT 0,
  `comments` varchar(50) NOT NULL DEFAULT '',
  `article_text` varchar(300) NOT NULL DEFAULT '',
  `article_image` varchar(100) NOT NULL DEFAULT '',
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_news`
--

INSERT INTO `myaac_news` (`id`, `title`, `body`, `type`, `date`, `category`, `player_id`, `last_modified_by`, `last_modified_date`, `comments`, `article_text`, `article_image`, `hide`) VALUES
(1, 'Tibico Online!', '<p>Welcome to Tibico</p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li>New Features</li>\r\n</ul>\r\n<p>. PvP - Tibico no bico!</p>\r\n<p>. New Monsters</p>\r\n<p>. Unique Maps</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/editor/lwlhxyou.jpg\" alt=\"\" width=\"686\" height=\"386\"></p>', 1, 1687890828, 2, 7, 9, 1738650658, 'https://my-aac.org', '', '', 0),
(2, '04/02/2025', '<p>Facebook @tibico</p>\r\n<p>Instagram @tibico</p>\r\n<p>https://www.youtube.com/@tibico</p>', 2, 1687890828, 4, 7, 9, 1738652321, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_news_categories`
--

CREATE TABLE `myaac_news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(50) NOT NULL DEFAULT '',
  `icon_id` int(2) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_news_categories`
--

INSERT INTO `myaac_news_categories` (`id`, `name`, `description`, `icon_id`, `hide`) VALUES
(1, '', '', 0, 0),
(2, '', '', 1, 0),
(3, '', '', 2, 0),
(4, '', '', 3, 0),
(5, '', '', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_notepad`
--

CREATE TABLE `myaac_notepad` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_pages`
--

CREATE TABLE `myaac_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `body` mediumtext NOT NULL,
  `date` int(11) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `php` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - plain html, 1 - php',
  `enable_tinymce` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - enabled, 0 - disabled',
  `access` tinyint(2) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_pages`
--

INSERT INTO `myaac_pages` (`id`, `name`, `title`, `body`, `date`, `player_id`, `php`, `enable_tinymce`, `access`, `hide`) VALUES
(1, 'downloads', 'Downloads', '<p>&nbsp;</p>\n<p>&nbsp;</p>\n<div style=\"text-align: center;\">We\'re using official Tibia Client <strong>{{ config.client / 100 }}</strong><br />\n<p>Download Tibia Client <strong>{{ config.client / 100 }}</strong>&nbsp;for Windows <a href=\"https://drive.google.com/drive/folders/0B2-sMQkWYzhGSFhGVlY2WGk5czQ\" target=\"_blank\" rel=\"noopener\">HERE</a>.</p>\n<h2>IP Changer:</h2>\n<a href=\"https://static.otland.net/ipchanger.exe\" target=\"_blank\" rel=\"noopener\">HERE</a></div>', 0, 1, 0, 1, 0, 0),
(2, 'commands', 'Commands', '<table style=\"border-collapse: collapse; width: 87.8471%; height: 57px;\" border=\"1\">\n<tbody>\n<tr style=\"height: 18px;\">\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Words</strong></span></td>\n<td style=\"width: 33.3333%; background-color: #505050; height: 18px;\"><span style=\"color: #ffffff;\"><strong>Description</strong></span></td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!example</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">This is just an example</td>\n</tr>\n<tr style=\"height: 18px; background-color: #d4c0a1;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!buyhouse</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy house you are looking at</td>\n</tr>\n<tr style=\"height: 18px; background-color: #f1e0c6;\">\n<td style=\"width: 33.3333%; height: 18px;\"><em>!aol</em></td>\n<td style=\"width: 33.3333%; height: 18px;\">Buy AoL</td>\n</tr>\n</tbody>\n</table>', 0, 1, 0, 1, 0, 0),
(3, 'rules_on_the_page', 'Rules', '1. Names\na) Names which contain insulting (e.g. \"Bastard\"), racist (e.g. \"Nigger\"), extremely right-wing (e.g. \"Hitler\"), sexist (e.g. \"Bitch\") or offensive (e.g. \"Copkiller\") language.\nb) Names containing parts of sentences (e.g. \"Mike returns\"), nonsensical combinations of letters (e.g. \"Fgfshdsfg\") or invalid formattings (e.g. \"Thegreatknight\").\nc) Names that obviously do not describe a person (e.g. \"Christmastree\", \"Matrix\"), names of real life celebrities (e.g. \"Britney Spears\"), names that refer to real countries (e.g. \"Swedish Druid\"), names which were created to fake other players\' identities (e.g. \"Arieswer\" instead of \"Arieswar\") or official positions (e.g. \"System Admin\").\n\n2. Cheating\na) Exploiting obvious errors of the game (\"bugs\"), for instance to duplicate items. If you find an error you must report it to CipSoft immediately.\nb) Intentional abuse of weaknesses in the gameplay, for example arranging objects or players in a way that other players cannot move them.\nc) Using tools to automatically perform or repeat certain actions without any interaction by the player (\"macros\").\nd) Manipulating the client program or using additional software to play the game.\ne) Trying to steal other players\' account data (\"hacking\").\nf) Playing on more than one account at the same time (\"multi-clienting\").\ng) Offering account data to other players or accepting other players\' account data (\"account-trading/sharing\").\n\n3. Gamemasters\na) Threatening a gamemaster because of his or her actions or position as a gamemaster.\nb) Pretending to be a gamemaster or to have influence on the decisions of a gamemaster.\nc) Intentionally giving wrong or misleading information to a gamemaster concerning his or her investigations or making false reports about rule violations.\n\n4. Player Killing\na) Excessive killing of characters who are not marked with a \"skull\" on worlds which are not PvP-enforced. Please note that killing marked characters is not a reason for a banishment.\n\nA violation of the Tibia Rules may lead to temporary banishment of characters and accounts. In severe cases removal or modification of character skills, attributes and belongings, as well as the permanent removal of accounts without any compensation may be considered. The sanction is based on the seriousness of the rule violation and the previous record of the player. It is determined by the gamemaster imposing the banishment.\n\nThese rules may be changed at any time. All changes will be announced on the official website.', 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `myaac_paypal`
--

CREATE TABLE `myaac_paypal` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `currency` varchar(10) NOT NULL,
  `points` int(11) NOT NULL,
  `payer_status` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_polls`
--

CREATE TABLE `myaac_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `votes_all` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_polls_answers`
--

CREATE TABLE `myaac_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_settings`
--

CREATE TABLE `myaac_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `key` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `myaac_settings`
--

INSERT INTO `myaac_settings` (`id`, `name`, `key`, `value`) VALUES
(3145, 'core', 'date_timezone', 'Pacific/Auckland'),
(3146, 'core', 'friendly_urls', 'false'),
(3147, 'core', 'csrf_protection', 'true'),
(3148, 'core', 'google_analytics_id', ''),
(3149, 'core', 'template', 'old-school'),
(3150, 'core', 'template_allow_change', 'true'),
(3151, 'core', 'charset', 'utf-8'),
(3152, 'core', 'meta_description', 'Tibia is a free massive multiplayer online role playing game (MMORPG).'),
(3153, 'core', 'meta_keywords', 'free online game, free multiplayer game, ots, open tibia server'),
(3154, 'core', 'footer', 'Tibico © 2023. All rights reserved.'),
(3155, 'core', 'footer_load_time', 'true'),
(3156, 'core', 'visitors_counter', 'false'),
(3157, 'core', 'visitors_counter_ttl', '10'),
(3158, 'core', 'views_counter', 'false'),
(3159, 'core', 'session_prefix', 'myaac_'),
(3160, 'core', 'backward_support', 'true'),
(3161, 'core', 'anonymous_usage_statistics', 'false'),
(3162, 'core', 'client', '1332'),
(3163, 'core', 'towns', '0=No Town\r\n1=Kharalias'),
(3164, 'core', 'genders', 'Female, Male'),
(3165, 'core', 'account_types', 'None, Normal, Tutor, Senior Tutor, Gamemaster, Community Manager, God'),
(3166, 'core', 'vocations_amount', '4'),
(3167, 'core', 'vocations', 'None, Sorcerer, Druid, Paladin, Knight, Master Sorcerer, Elder Druid,Royal Paladin, Elite Knight'),
(3168, 'core', 'mail_enabled', 'false'),
(3169, 'core', 'mail_address', 'no-reply@your-server.org'),
(3170, 'core', 'mail_signature_plain', '--\r\nSent by MyAAC,\r\nhttps://my-aac.org'),
(3171, 'core', 'mail_signature_html', '<br/>\r\nSent by MyAAC,<br/>\r\n<a href=\"https://my-aac.org\">my-aac.org</a>'),
(3172, 'core', 'mail_option', '0'),
(3173, 'core', 'smtp_host', ''),
(3174, 'core', 'smtp_port', '25'),
(3175, 'core', 'smtp_auth', 'true'),
(3176, 'core', 'smtp_user', 'admin@example.org'),
(3177, 'core', 'smtp_pass', ''),
(3178, 'core', 'smtp_security', '0'),
(3179, 'core', 'smtp_debug', 'false'),
(3180, 'core', 'account_welcome_mail', 'true'),
(3181, 'core', 'account_mail_verify', 'false'),
(3182, 'core', 'mail_send_when_change_password', 'true'),
(3183, 'core', 'mail_send_when_generate_reckey', 'true'),
(3184, 'core', 'mail_lost_account_interval', '60'),
(3185, 'core', 'account_management', 'true'),
(3186, 'core', 'account_login_by_email', 'false'),
(3187, 'core', 'account_login_by_email_fallback', 'false'),
(3188, 'core', 'account_create_auto_login', 'false'),
(3189, 'core', 'account_create_character_create', 'true'),
(3190, 'core', 'account_mail_unique', 'true'),
(3191, 'core', 'account_premium_days', '0'),
(3192, 'core', 'account_premium_points', '0'),
(3193, 'core', 'account_mail_change', '2'),
(3194, 'core', 'account_mail_block_plus_sign', 'true'),
(3195, 'core', 'account_country', 'true'),
(3196, 'core', 'account_country_recognize', 'true'),
(3197, 'core', 'characters_per_account', '10'),
(3198, 'core', 'character_samples', '1=Sorcerer Sample\r\n2=Druid Sample\r\n3=Paladin Sample\r\n4=Knight Sample'),
(3199, 'core', 'character_towns', '1'),
(3200, 'core', 'create_character_name_min_length', '3'),
(3201, 'core', 'create_character_name_max_length', '21'),
(3202, 'core', 'create_character_name_blocked_prefix', 'admin ,administrator ,gm ,cm ,god ,tutor'),
(3203, 'core', 'create_character_name_blocked_names', 'admin,administrator,gm,cm,god,tutor'),
(3204, 'core', 'create_character_name_blocked_words', 'admin,administrator,gamemaster,game master,game-master,game\'master,fuck,sux,suck,noob,tutor'),
(3205, 'core', 'create_character_name_monsters_check', 'true'),
(3206, 'core', 'create_character_name_npc_check', 'true'),
(3207, 'core', 'create_character_name_spells_check', 'true'),
(3208, 'core', 'use_character_sample_skills', 'false'),
(3209, 'core', 'account_mail_confirmed_reward_premium_days', '0'),
(3210, 'core', 'account_mail_confirmed_reward_premium_points', '0'),
(3211, 'core', 'account_mail_confirmed_reward_coins', '0'),
(3212, 'core', 'guild_management', 'true'),
(3213, 'core', 'guild_need_level', '1'),
(3214, 'core', 'guild_need_premium', 'true'),
(3215, 'core', 'guild_image_size_kb', '80'),
(3216, 'core', 'guild_description_default', 'New guild. Leader must edit this text :)'),
(3217, 'core', 'guild_description_chars_limit', '1000'),
(3218, 'core', 'guild_description_lines_limit', '6'),
(3219, 'core', 'guild_motd_chars_limit', '150'),
(3220, 'core', 'news_author', 'true'),
(3221, 'core', 'news_limit', '5'),
(3222, 'core', 'news_ticker_limit', '5'),
(3223, 'core', 'news_date_format', 'j.n.Y'),
(3224, 'core', 'forum', 'site'),
(3225, 'core', 'forum_level_required', '0'),
(3226, 'core', 'forum_post_interval', '30'),
(3227, 'core', 'forum_posts_per_page', '20'),
(3228, 'core', 'forum_threads_per_page', '20'),
(3229, 'core', 'forum_table_prefix', 'myaac_'),
(3230, 'core', 'highscores_per_page', '100'),
(3231, 'core', 'highscores_cache_ttl', '15'),
(3232, 'core', 'highscores_vocation_box', 'true'),
(3233, 'core', 'highscores_vocation', 'true'),
(3234, 'core', 'highscores_frags', 'false'),
(3235, 'core', 'highscores_balance', 'false'),
(3236, 'core', 'highscores_outfit', 'true'),
(3237, 'core', 'highscores_country_box', 'false'),
(3238, 'core', 'highscores_groups_hidden', '3'),
(3239, 'core', 'highscores_ids_hidden', '1, 2, 3, 4, 5'),
(3240, 'core', 'characters_search_limit', '15'),
(3241, 'core', 'characters_level', 'true'),
(3242, 'core', 'characters_experience', 'false'),
(3243, 'core', 'characters_magic_level', 'false'),
(3244, 'core', 'characters_balance', 'false'),
(3245, 'core', 'characters_marriage', 'true'),
(3246, 'core', 'characters_outfit', 'true'),
(3247, 'core', 'characters_creation_date', 'true'),
(3248, 'core', 'characters_quests', 'false'),
(3249, 'core', 'quests', 'Some Quest=123\r\nSome Quest Two=456'),
(3250, 'core', 'characters_skills', 'true'),
(3251, 'core', 'characters_equipment', 'true'),
(3252, 'core', 'characters_frags', 'false'),
(3253, 'core', 'characters_deleted', 'false'),
(3254, 'core', 'online_record', 'true'),
(3255, 'core', 'online_vocations', 'false'),
(3256, 'core', 'online_vocations_images', 'true'),
(3257, 'core', 'online_skulls', 'true'),
(3258, 'core', 'online_outfit', 'true'),
(3259, 'core', 'online_afk', 'false'),
(3260, 'core', 'team_style', '2'),
(3261, 'core', 'team_status', 'true'),
(3262, 'core', 'team_lastlogin', 'true'),
(3263, 'core', 'team_world', 'false'),
(3264, 'core', 'team_outfit', 'true'),
(3265, 'core', 'monsters_images_preview', 'false'),
(3266, 'core', 'monsters_items_url', 'https://www.tibiawiki.com.br/wiki/'),
(3267, 'core', 'monsters_loot_percentage', 'true'),
(3268, 'core', 'bans_per_page', '20'),
(3269, 'core', 'last_kills_limit', '50'),
(3270, 'core', 'experience_table_columns', '3'),
(3271, 'core', 'experience_table_rows', '200'),
(3272, 'core', 'signature_enabled', 'true'),
(3273, 'core', 'signature_type', 'tibian'),
(3274, 'core', 'signature_cache_time', '5'),
(3275, 'core', 'signature_browser_cache', '60'),
(3276, 'core', 'item_images_url', 'images/items'),
(3277, 'core', 'item_images_extension', '.png'),
(3278, 'core', 'outfit_images_url', 'https://outfit-images.ots.me/outfit.php'),
(3279, 'core', 'outfit_images_wrong_looktypes', '75, 126, 127, 266, 302'),
(3280, 'core', 'monsters_images_url', 'images/monsters/'),
(3281, 'core', 'monsters_images_extension', '.gif'),
(3282, 'core', 'multiworld', 'false'),
(3283, 'core', 'status_enabled', 'true'),
(3284, 'core', 'status_ip', '127.0.0.1'),
(3285, 'core', 'status_port', '7171'),
(3286, 'core', 'status_timeout', '1'),
(3287, 'core', 'status_interval', '60'),
(3288, 'core', 'admin_plugins_manage_enable', 'true'),
(3289, 'core', 'admin_pages_php_enable', 'false'),
(3290, 'core', 'admin_panel_modules', 'statistics,web_status,server_status,lastlogin,created,points,coins,balance'),
(3291, 'core', 'gifts_system', 'true'),
(3292, 'core', 'donate_column', 'premium_points'),
(3293, 'core', 'account_generate_new_reckey', 'true'),
(3294, 'core', 'account_generate_new_reckey_price', '20'),
(3295, 'core', 'account_change_character_name', 'false'),
(3296, 'core', 'account_change_character_name_price', '30'),
(3297, 'core', 'account_change_character_sex', 'false'),
(3298, 'core', 'account_change_character_sex_price', '30'),
(3299, 'core', 'account_login_ipban_protection', 'true'),
(3300, 'core', 'account_login_attempts_limit', '5'),
(3301, 'core', 'account_login_ban_time', '30');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_spells`
--

CREATE TABLE `myaac_spells` (
  `id` int(11) NOT NULL,
  `spell` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL,
  `words` varchar(255) NOT NULL DEFAULT '',
  `category` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - attack, 2 - healing, 3 - summon, 4 - supply, 5 - support',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - instant, 2 - conjure, 3 - rune',
  `level` int(11) NOT NULL DEFAULT 0,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `soul` tinyint(3) NOT NULL DEFAULT 0,
  `conjure_id` int(11) NOT NULL DEFAULT 0,
  `conjure_count` tinyint(3) NOT NULL DEFAULT 0,
  `reagent` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `premium` tinyint(1) NOT NULL DEFAULT 0,
  `vocations` varchar(100) NOT NULL DEFAULT '',
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_videos`
--

CREATE TABLE `myaac_videos` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `youtube_id` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaac_visitors`
--

CREATE TABLE `myaac_visitors` (
  `ip` varchar(45) NOT NULL,
  `lastvisit` int(11) NOT NULL DEFAULT 0,
  `page` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myaac_visitors`
--

INSERT INTO `myaac_visitors` (`ip`, `lastvisit`, `page`) VALUES
('127.0.0.1', 1698846313, '/'),
('::1', 1698846155, '/');

-- --------------------------------------------------------

--
-- Table structure for table `myaac_weapons`
--

CREATE TABLE `myaac_weapons` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `vocations` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `account_id` int(11) UNSIGNED NOT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `vocation` int(11) NOT NULL DEFAULT 0,
  `health` int(11) NOT NULL DEFAULT 150,
  `healthmax` int(11) NOT NULL DEFAULT 150,
  `experience` bigint(20) NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `manamax` int(11) NOT NULL DEFAULT 0,
  `manaspent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `soul` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 1,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT 0,
  `sex` int(11) NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `save` tinyint(1) NOT NULL DEFAULT 1,
  `skull` tinyint(1) NOT NULL DEFAULT 0,
  `skulltime` bigint(20) NOT NULL DEFAULT 0,
  `lastlogout` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `blessings` tinyint(2) NOT NULL DEFAULT 0,
  `blessings1` tinyint(4) NOT NULL DEFAULT 0,
  `blessings2` tinyint(4) NOT NULL DEFAULT 0,
  `blessings3` tinyint(4) NOT NULL DEFAULT 0,
  `blessings4` tinyint(4) NOT NULL DEFAULT 0,
  `blessings5` tinyint(4) NOT NULL DEFAULT 0,
  `blessings6` tinyint(4) NOT NULL DEFAULT 0,
  `blessings7` tinyint(4) NOT NULL DEFAULT 0,
  `blessings8` tinyint(4) NOT NULL DEFAULT 0,
  `onlinetime` int(11) NOT NULL DEFAULT 0,
  `deletion` bigint(15) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `offlinetraining_time` smallint(5) UNSIGNED NOT NULL DEFAULT 43200,
  `offlinetraining_skill` tinyint(2) NOT NULL DEFAULT -1,
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT 2520,
  `skill_fist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_club` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_club_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_sword` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_sword_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_axe` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_axe_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_dist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_dist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_shielding` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_shielding_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_fishing` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fishing_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_chance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_damage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_damage_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_chance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_amount_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_chance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_amount_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_criticalhit_chance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_criticalhit_damage` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_lifeleech_chance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_lifeleech_amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_manaleech_chance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_manaleech_amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `manashield` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_manashield` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `xpboost_stamina` smallint(5) UNSIGNED DEFAULT NULL,
  `xpboost_value` tinyint(4) UNSIGNED DEFAULT NULL,
  `marriage_status` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `marriage_spouse` int(11) NOT NULL DEFAULT -1,
  `bonus_rerolls` bigint(21) NOT NULL DEFAULT 0,
  `prey_wildcard` bigint(21) NOT NULL DEFAULT 0,
  `task_points` bigint(21) NOT NULL DEFAULT 0,
  `quickloot_fallback` tinyint(1) DEFAULT 0,
  `lookmountbody` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookmountfeet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookmounthead` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookmountlegs` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookfamiliarstype` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `isreward` tinyint(1) NOT NULL DEFAULT 1,
  `istutorial` tinyint(1) NOT NULL DEFAULT 0,
  `ismain` tinyint(1) NOT NULL DEFAULT 0,
  `forge_dusts` bigint(21) NOT NULL DEFAULT 0,
  `forge_dust_level` bigint(21) NOT NULL DEFAULT 100,
  `randomize_mount` tinyint(1) NOT NULL DEFAULT 0,
  `boss_points` int(11) NOT NULL DEFAULT 0,
  `created` int(11) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `comment` varchar(5000) NOT NULL DEFAULT '',
  `pronoun` int(11) NOT NULL DEFAULT 0,
  `hide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `blessings1`, `blessings2`, `blessings3`, `blessings4`, `blessings5`, `blessings6`, `blessings7`, `blessings8`, `onlinetime`, `deletion`, `balance`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `skill_critical_hit_chance`, `skill_critical_hit_chance_tries`, `skill_critical_hit_damage`, `skill_critical_hit_damage_tries`, `skill_life_leech_chance`, `skill_life_leech_chance_tries`, `skill_life_leech_amount`, `skill_life_leech_amount_tries`, `skill_mana_leech_chance`, `skill_mana_leech_chance_tries`, `skill_mana_leech_amount`, `skill_mana_leech_amount_tries`, `skill_criticalhit_chance`, `skill_criticalhit_damage`, `skill_lifeleech_chance`, `skill_lifeleech_amount`, `skill_manaleech_chance`, `skill_manaleech_amount`, `manashield`, `max_manashield`, `xpboost_stamina`, `xpboost_value`, `marriage_status`, `marriage_spouse`, `bonus_rerolls`, `prey_wildcard`, `task_points`, `quickloot_fallback`, `lookmountbody`, `lookmountfeet`, `lookmounthead`, `lookmountlegs`, `lookfamiliarstype`, `isreward`, `istutorial`, `ismain`, `forge_dusts`, `forge_dust_level`, `randomize_mount`, `boss_points`, `created`, `hidden`, `comment`, `pronoun`, `hide`) VALUES
(1, 'Rook Sample', 1, 1, 2, 0, 155, 155, 100, 113, 115, 95, 39, 129, 0, 2, 60, 60, 5936, 100, 1, 32069, 31901, 6, '', 410, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 12, 0, 12, 0, 12, 0, 12, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, '', 0, 0),
(2, 'Sorcerer Sample', 1, 1, 8, 1, 185, 185, 4200, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32369, 32241, 7, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, '', 0, 0),
(3, 'Druid Sample', 1, 1, 8, 2, 185, 185, 4200, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32369, 32241, 7, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, '', 0, 0),
(4, 'Paladin Sample', 1, 1, 8, 3, 185, 185, 4200, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32369, 32241, 7, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, '', 0, 0),
(5, 'Knight Sample', 1, 1, 8, 4, 185, 185, 4200, 113, 115, 95, 39, 129, 0, 0, 90, 90, 0, 100, 8, 32369, 32241, 7, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 0, '', 0, 0),
(6, 'GOD', 6, 2, 2, 0, 155, 155, 100, 0, 114, 114, 134, 128, 0, 0, 60, 60, 0, 0, 1, 32274, 32089, 7, '', 410, 1, 1738719334, 16777343, 1, 0, 0, 1739036139, 0, 1, 1, 1, 1, 1, 1, 1, 1, 324768, 0, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 0, 1, '', 0, 0),
(9, 'Slash', 6, 3, 1, 0, 100, 100, 0, 10, 10, 10, 10, 266, 0, 0, 100, 100, 0, 0, 1, 32278, 32102, 7, '', 0, 0, 1739049781, 16777343, 1, 0, 0, 1739050721, 0, 1, 1, 1, 1, 1, 1, 1, 1, 63380, 0, 0, 43200, -1, 1023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 100, 0, 0, 1738646751, 0, '', 0, 0),
(10, 'Hunter Ka', 1, 4, 20, 3, 305, 305, 105258, 81, 83, 95, 102, 1618, 3, 4, 170, 270, 1829, 100, 1, 32279, 32117, 7, '', 710, 1, 1739051819, 16777343, 1, 0, 0, 1739053135, 0, 1, 1, 1, 1, 1, 1, 1, 1, 173924, 0, 0, 17484, -1, 2520, 10, 2, 10, 0, 10, 0, 10, 0, 86, 5869, 48, 588, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3600, 50, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 992, 1, 0, 0, 17, 100, 0, 0, 1738647666, 0, '', 0, 0),
(11, 'Magalinda', 1, 4, 11, 1, 200, 200, 16480, 103, 83, 1, 80, 1385, 3, 75, 92, 180, 202845, 100, 1, 32252, 32115, 7, '', 500, 0, 1739046181, 16777343, 1, 0, 0, 1739046804, 0, 1, 1, 1, 1, 1, 1, 1, 1, 302788, 0, 3822, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 25, 136, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3600, 50, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 994, 1, 0, 0, 7, 100, 0, 0, 1738655632, 0, '', 0, 0);

--
-- Triggers `players`
--
DELIMITER $$
CREATE TRIGGER `ondelete_players` BEFORE DELETE ON `players` FOR EACH ROW BEGIN
        UPDATE `houses` SET `owner` = 0 WHERE `owner` = OLD.`id`;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `players_online`
--

CREATE TABLE `players_online` (
  `player_id` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_bosstiary`
--

CREATE TABLE `player_bosstiary` (
  `player_id` int(11) NOT NULL,
  `bossIdSlotOne` int(11) NOT NULL DEFAULT 0,
  `bossIdSlotTwo` int(11) NOT NULL DEFAULT 0,
  `removeTimes` int(11) NOT NULL DEFAULT 1,
  `tracker` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_bosstiary`
--

INSERT INTO `player_bosstiary` (`player_id`, `bossIdSlotOne`, `bossIdSlotTwo`, `removeTimes`, `tracker`) VALUES
(1, 0, 0, 1, ''),
(2, 0, 0, 1, ''),
(3, 0, 0, 1, ''),
(4, 0, 0, 1, ''),
(5, 0, 0, 1, ''),
(8, 0, 0, 1, ''),
(6, 0, 0, 1, ''),
(11, 0, 0, 1, ''),
(9, 0, 0, 1, ''),
(10, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `player_charms`
--

CREATE TABLE `player_charms` (
  `player_guid` int(250) NOT NULL,
  `charm_points` varchar(250) DEFAULT NULL,
  `charm_expansion` tinyint(1) DEFAULT NULL,
  `rune_wound` int(250) DEFAULT NULL,
  `rune_enflame` int(250) DEFAULT NULL,
  `rune_poison` int(250) DEFAULT NULL,
  `rune_freeze` int(250) DEFAULT NULL,
  `rune_zap` int(250) DEFAULT NULL,
  `rune_curse` int(250) DEFAULT NULL,
  `rune_cripple` int(250) DEFAULT NULL,
  `rune_parry` int(250) DEFAULT NULL,
  `rune_dodge` int(250) DEFAULT NULL,
  `rune_adrenaline` int(250) DEFAULT NULL,
  `rune_numb` int(250) DEFAULT NULL,
  `rune_cleanse` int(250) DEFAULT NULL,
  `rune_bless` int(250) DEFAULT NULL,
  `rune_scavenge` int(250) DEFAULT NULL,
  `rune_gut` int(250) DEFAULT NULL,
  `rune_low_blow` int(250) DEFAULT NULL,
  `rune_divine` int(250) DEFAULT NULL,
  `rune_vamp` int(250) DEFAULT NULL,
  `rune_void` int(250) DEFAULT NULL,
  `UsedRunesBit` varchar(250) DEFAULT NULL,
  `UnlockedRunesBit` varchar(250) DEFAULT NULL,
  `tracker list` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_charms`
--

INSERT INTO `player_charms` (`player_guid`, `charm_points`, `charm_expansion`, `rune_wound`, `rune_enflame`, `rune_poison`, `rune_freeze`, `rune_zap`, `rune_curse`, `rune_cripple`, `rune_parry`, `rune_dodge`, `rune_adrenaline`, `rune_numb`, `rune_cleanse`, `rune_bless`, `rune_scavenge`, `rune_gut`, `rune_low_blow`, `rune_divine`, `rune_vamp`, `rune_void`, `UsedRunesBit`, `UnlockedRunesBit`, `tracker list`) VALUES
(6, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(8, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(1, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(2, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(3, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(4, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(5, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(9, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(10, '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', ''),
(11, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT 1,
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT 0,
  `unjustified` tinyint(1) NOT NULL DEFAULT 0,
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_deaths`
--

INSERT INTO `player_deaths` (`player_id`, `time`, `level`, `killed_by`, `is_player`, `mostdamage_by`, `mostdamage_is_player`, `unjustified`, `mostdamage_unjustified`) VALUES
(10, 1738894734, 14, 'a dragon', 0, 'a dragon', 0, 0, 0),
(10, 1738950629, 16, 'a dragon', 0, 'a dragon', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_depotitems`
--

INSERT INTO `player_depotitems` (`player_id`, `sid`, `pid`, `itemtype`, `count`, `attributes`) VALUES
(10, 101, 1, 3349, 1, 0x290300000000000000030035303002163001010000000003003530310210300101000000000300353032021330010100000000),
(10, 102, 1, 3409, 1, ''),
(10, 103, 1, 3349, 1, ''),
(10, 104, 1, 3285, 1, ''),
(10, 105, 1, 3349, 1, ''),
(10, 106, 1, 7430, 1, ''),
(11, 101, 1, 3449, 3, 0x0f03),
(11, 102, 1, 3447, 37, 0x0f25),
(11, 103, 1, 3586, 1, 0x0f01),
(11, 104, 1, 285, 10, 0x0f0a),
(11, 105, 1, 2920, 1, ''),
(11, 106, 1, 2920, 1, ''),
(11, 107, 1, 11481, 7, 0x0f07);

-- --------------------------------------------------------

--
-- Table structure for table `player_hirelings`
--

CREATE TABLE `player_hirelings` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_inboxitems`
--

CREATE TABLE `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_items`
--

INSERT INTO `player_items` (`player_id`, `pid`, `sid`, `itemtype`, `count`, `attributes`) VALUES
(1, 11, 101, 23396, 1, ''),
(2, 11, 101, 23396, 1, ''),
(3, 11, 101, 23396, 1, ''),
(4, 11, 101, 23396, 1, ''),
(5, 11, 101, 23396, 1, ''),
(6, 1, 101, 3387, 1, ''),
(6, 2, 102, 3057, 1, 0x160100),
(6, 3, 103, 9601, 1, 0x240126000000802c00000080),
(6, 4, 104, 3388, 1, ''),
(6, 5, 105, 6390, 1, ''),
(6, 6, 106, 3288, 1, ''),
(6, 7, 107, 3389, 1, ''),
(6, 8, 108, 3079, 1, ''),
(6, 9, 109, 3007, 1, ''),
(6, 10, 110, 28493, 1, ''),
(6, 11, 111, 23396, 1, ''),
(6, 103, 112, 2854, 1, ''),
(6, 103, 113, 3505, 1, 0x06880046617a656e646f205469626961206f66696369616c2c206ee36f206361696120656d20676f6c706520656d2063616e61697320636f6d206e6f6d6520706172656369646f2071756520666f72616d2063726961646f73207061726120726f7562617220766f63ea2e0a0a7777772e796f75747562652e636f6d2f4066617a656e646f74696269612f125b58426500000000130300474f44),
(6, 112, 114, 3457, 1, ''),
(6, 112, 115, 3003, 1, ''),
(9, 3, 101, 2854, 1, 0x240126000000802c00000080),
(9, 6, 102, 43864, 1, ''),
(9, 11, 103, 23396, 1, ''),
(9, 101, 104, 3031, 45, 0x0f2d),
(9, 101, 105, 25718, 1, 0x160100),
(9, 101, 106, 18935, 1, ''),
(9, 101, 107, 3035, 15, 0x0f0f),
(9, 101, 108, 11492, 1, 0x0f01),
(9, 101, 109, 8010, 2, 0x0f02),
(9, 101, 110, 11456, 1, 0x0f01),
(9, 101, 111, 3043, 11, 0x0f0b),
(9, 101, 112, 3457, 1, ''),
(9, 101, 113, 3003, 1, ''),
(10, 1, 101, 3351, 1, ''),
(10, 3, 102, 2854, 1, 0x240126000000802c00000080),
(10, 4, 103, 3377, 1, ''),
(10, 5, 104, 35849, 1, 0x2403),
(10, 6, 105, 7438, 1, 0x290300000000000000030035303002165417010000000003003530310210541701000000000300353032021354170100000000),
(10, 7, 106, 3557, 1, ''),
(10, 9, 107, 18935, 1, ''),
(10, 11, 108, 23396, 1, 0x2402),
(10, 102, 109, 3031, 90, 0x0f5a),
(10, 102, 110, 3294, 1, ''),
(10, 102, 111, 3457, 1, ''),
(10, 102, 112, 25718, 1, 0x160100),
(10, 102, 113, 9657, 3, 0x0f03),
(10, 102, 114, 268, 3, 0x0f03),
(10, 102, 115, 7364, 100, 0x0f64),
(10, 102, 116, 11457, 2, 0x0f02),
(10, 102, 117, 3035, 5, 0x0f05),
(10, 102, 118, 3725, 13, 0x0f0d),
(10, 102, 119, 266, 11, 0x0f0b),
(10, 102, 120, 3003, 1, ''),
(10, 104, 121, 7364, 72, 0x0f48),
(10, 104, 122, 7364, 100, 0x0f64),
(10, 104, 123, 7364, 100, 0x0f64),
(10, 108, 124, 35288, 7055, 0x0136c2a5de94010000168f1b),
(10, 108, 125, 44067, 14375, 0x01a91821d994010000162738),
(10, 108, 126, 23398, 1, 0x01fd7194d49401000012e803000000000000075f00596f7520626f756768742074686973206974656d20696e207468652053746f72652e0a556e7772617020697420696e20796f7572206f776e20686f75736520746f206372656174652061203c6772656174206865616c7468206361736b3e2e2901000000000000000800756e777261706964021965000000000000),
(11, 1, 101, 3351, 1, ''),
(11, 3, 102, 2854, 1, 0x240126000000802c00000080),
(11, 4, 103, 3358, 1, ''),
(11, 5, 104, 3413, 1, ''),
(11, 6, 105, 3074, 1, ''),
(11, 7, 106, 3559, 1, ''),
(11, 8, 107, 3552, 1, ''),
(11, 11, 108, 23396, 1, 0x2402),
(11, 102, 109, 3607, 1, 0x0f01),
(11, 102, 110, 3294, 1, ''),
(11, 102, 111, 3031, 86, 0x0f56),
(11, 102, 112, 3035, 2, 0x0f02),
(11, 102, 113, 3449, 1, 0x0f01),
(11, 102, 114, 8861, 1, ''),
(11, 102, 115, 3457, 1, ''),
(11, 102, 116, 3003, 1, ''),
(11, 102, 117, 3601, 1, 0x0f01),
(11, 102, 118, 285, 10, 0x0f0a),
(11, 102, 119, 3725, 3, 0x0f03),
(11, 108, 120, 35290, 2134, 0x0157bdfccf94010000165608),
(11, 114, 121, 8860, 1, ''),
(11, 121, 122, 8860, 1, ''),
(11, 122, 123, 8860, 1, 0x2400),
(11, 123, 124, 8860, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `player_kills`
--

CREATE TABLE `player_kills` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `target` int(11) NOT NULL,
  `unavenged` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_misc`
--

CREATE TABLE `player_misc` (
  `player_id` int(11) NOT NULL,
  `info` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_misc`
--

INSERT INTO `player_misc` (`player_id`, `info`) VALUES
(8, 0x7b7d),
(6, 0x7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `player_namelocks`
--

CREATE TABLE `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_prey`
--

CREATE TABLE `player_prey` (
  `player_id` int(11) NOT NULL,
  `slot` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `raceid` varchar(250) NOT NULL,
  `option` tinyint(1) NOT NULL,
  `bonus_type` tinyint(1) NOT NULL,
  `bonus_rarity` tinyint(1) NOT NULL,
  `bonus_percentage` varchar(250) NOT NULL,
  `bonus_time` varchar(250) NOT NULL,
  `free_reroll` bigint(20) NOT NULL,
  `monster_list` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_prey`
--

INSERT INTO `player_prey` (`player_id`, `slot`, `state`, `raceid`, `option`, `bonus_type`, `bonus_rarity`, `bonus_percentage`, `bonus_time`, `free_reroll`, `monster_list`) VALUES
(6, 0, 3, '0', 0, 1, 4, '22', '0', 1698917617873, 0x160426007a069d070c0252023d0076063900),
(6, 1, 3, '0', 0, 1, 5, '25', '0', 1698917617875, 0x0707cc06f300d80032007300c8022c00c006),
(6, 2, 0, '0', 0, 2, 8, '34', '0', 1698917617877, ''),
(8, 0, 3, '0', 0, 3, 9, '37', '0', 1698918837690, 0x9b07f2008607de087a042d001c016902ce05),
(8, 1, 3, '0', 0, 1, 4, '22', '0', 1698918837690, 0x1b00d508e805d4021b07f4000d02da088206),
(8, 2, 0, '0', 0, 3, 8, '34', '0', 1698918837691, ''),
(9, 0, 3, '0', 0, 1, 9, '37', '0', 1738905087825, 0xe20577041d072d000d0126003600f7001200),
(9, 1, 3, '0', 0, 1, 3, '19', '0', 1738905087825, 0x2109ab070602920373007801870609030200),
(9, 2, 0, '0', 0, 3, 5, '25', '0', 1738905087825, ''),
(10, 0, 4, '0', 0, 0, 9, '37', '0', 1738909598466, 0x56062a052d09300041001000ff0081027003),
(10, 1, 3, '0', 0, 3, 9, '37', '0', 1738719753119, ''),
(10, 2, 0, '0', 0, 2, 8, '34', '0', 1738719753119, ''),
(11, 0, 3, '0', 0, 1, 6, '28', '0', 1738727656442, 0xfc0129091b0635083e0181022f00c7011400),
(11, 1, 3, '0', 0, 0, 9, '37', '0', 1738727656442, 0x32009e038c070c02f4074e01220639017a00),
(11, 2, 0, '0', 0, 2, 8, '34', '0', 1738727656442, '');

-- --------------------------------------------------------

--
-- Table structure for table `player_rewards`
--

CREATE TABLE `player_rewards` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_stash`
--

CREATE TABLE `player_stash` (
  `player_id` int(16) NOT NULL,
  `item_id` int(16) NOT NULL,
  `item_count` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_stash`
--

INSERT INTO `player_stash` (`player_id`, `item_id`, `item_count`) VALUES
(10, 285, 13),
(10, 3446, 12),
(10, 11456, 4),
(10, 11457, 6),
(10, 11492, 12);

-- --------------------------------------------------------

--
-- Table structure for table `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `key` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_storage`
--

INSERT INTO `player_storage` (`player_id`, `key`, `value`) VALUES
(6, 0, 1),
(6, 12330, 1),
(6, 12332, 13),
(6, 12333, 3),
(6, 12450, 6),
(6, 13413, 1739034300),
(6, 13414, 2),
(6, 14903, -2),
(6, 17101, 0),
(6, 30029, 0),
(6, 42701, 29),
(6, 42703, 3),
(6, 42704, 4),
(6, 42705, 1),
(6, 42706, 1),
(6, 42707, 1),
(6, 42708, 3),
(6, 42709, 2),
(6, 42710, 2),
(6, 42711, 1),
(6, 42712, 1),
(6, 42713, 1),
(6, 42715, 1),
(6, 42716, 1),
(6, 42717, 5),
(6, 42718, 2),
(6, 42720, 2),
(6, 42721, 3),
(6, 42724, 2),
(6, 42725, 1),
(6, 42729, 12),
(6, 44956, 1),
(6, 44957, 1),
(6, 45751, 1),
(6, 45752, 16),
(6, 46309, 1),
(6, 46402, 1),
(6, 46403, 1),
(6, 46404, 1),
(6, 47402, 1),
(6, 47403, 1),
(6, 47512, 1),
(6, 47514, 1),
(6, 47601, 1),
(6, 50043, 1),
(6, 50080, 1),
(6, 50081, 10),
(6, 50082, 2),
(6, 50083, 2),
(6, 50090, 10),
(6, 50091, 2),
(6, 50092, 2),
(6, 50115, 10),
(6, 50116, 3),
(6, 50117, 2),
(6, 50118, 2),
(6, 50139, 10),
(6, 50141, 10),
(6, 50143, 30),
(6, 50200, 7),
(6, 50203, 1),
(6, 50210, 1),
(6, 50225, 1),
(6, 50226, 1),
(6, 50230, 1),
(6, 50231, 1),
(6, 50240, 1),
(6, 50245, 1),
(6, 50250, 1),
(6, 50251, 1),
(6, 50252, 1),
(6, 50255, 1),
(6, 50256, 1),
(6, 50257, 1),
(6, 50258, 1),
(6, 50470, 1),
(6, 50471, 1),
(6, 50472, 1),
(6, 50473, 1),
(6, 50474, 1),
(6, 50475, 1),
(6, 50486, 1),
(6, 50488, 1),
(6, 50490, 1),
(6, 50492, 1),
(6, 50494, 1),
(6, 50496, 1),
(6, 50498, 1),
(6, 50501, 1),
(6, 50506, 1),
(6, 50530, 61),
(6, 50541, 2),
(6, 50600, 2),
(6, 50601, 5),
(6, 50602, 3),
(6, 50603, 3),
(6, 50604, 3),
(6, 50605, 2),
(6, 50606, 1),
(6, 50620, 2),
(6, 50630, 1),
(6, 50631, 2),
(6, 50632, 2),
(6, 50633, 2),
(6, 50634, 3),
(6, 50640, 1),
(6, 50641, 3),
(6, 50642, 3),
(6, 50643, 3),
(6, 50660, 23),
(6, 50662, 5),
(6, 50663, 2),
(6, 50672, 1440),
(6, 50699, 2),
(6, 50700, 2),
(6, 50701, 2),
(6, 50850, 1),
(6, 50852, 3000),
(6, 51060, 1),
(6, 51061, 18),
(6, 51110, 25),
(6, 51111, 7),
(6, 51112, 3),
(6, 51113, 6),
(6, 51114, 3),
(6, 51115, 3),
(6, 51116, 3),
(6, 51117, 1),
(6, 51120, 1),
(6, 51121, 1),
(6, 51123, 1),
(6, 51124, 1),
(6, 51125, 1),
(6, 51140, 1),
(6, 51141, 3),
(6, 51142, 3),
(6, 51143, 3),
(6, 51160, 12),
(6, 51161, 3),
(6, 51162, 5),
(6, 51163, 3),
(6, 51164, 2),
(6, 51165, 6),
(6, 51166, 8),
(6, 51167, 3),
(6, 51168, 4),
(6, 51169, 2),
(6, 51170, 2),
(6, 51171, 2),
(6, 51172, 6),
(6, 51210, 51),
(6, 51211, 6),
(6, 51212, 8),
(6, 51213, 6),
(6, 51214, 6),
(6, 51215, 8),
(6, 51216, 5),
(6, 51217, 5),
(6, 51218, 4),
(6, 51219, 2),
(6, 51220, 1),
(6, 51221, 1),
(6, 51222, 1),
(6, 51223, 1),
(6, 51224, 1),
(6, 51225, 1),
(6, 51228, 1),
(6, 51229, 1),
(6, 51231, 1),
(6, 51232, 1),
(6, 51234, 1),
(6, 51235, 1),
(6, 51236, 1),
(6, 51237, 1),
(6, 51238, 1),
(6, 51239, 1),
(6, 51242, 1),
(6, 51243, 1),
(6, 51244, 1),
(6, 51247, 1),
(6, 51248, 1),
(6, 51262, 3),
(6, 51263, 5),
(6, 51264, 3),
(6, 51266, 3),
(6, 51267, 1),
(6, 51268, 1),
(6, 51269, 1),
(6, 51300, 29),
(6, 51301, 3),
(6, 51302, 3),
(6, 51303, 3),
(6, 51304, 3),
(6, 51305, 3),
(6, 51306, 4),
(6, 51307, 6),
(6, 51308, 2),
(6, 51309, 2),
(6, 51310, 1),
(6, 51340, 1),
(6, 51341, 2),
(6, 51342, 2),
(6, 51343, 12),
(6, 51394, 8),
(6, 51396, 4),
(6, 51397, 2),
(6, 51398, 1),
(6, 51450, 1),
(6, 51453, 1),
(6, 51480, 1),
(6, 51486, 1),
(6, 51540, 3),
(6, 51541, 3),
(6, 51542, 2),
(6, 51543, 1),
(6, 51544, 3),
(6, 51545, 5),
(6, 51546, 1),
(6, 51547, 1),
(6, 51548, 2),
(6, 51549, 1),
(6, 51550, 4),
(6, 51590, 1),
(6, 51591, 1),
(6, 51592, 1),
(6, 51593, 1),
(6, 51594, 1),
(6, 51595, 1),
(6, 51596, 1),
(6, 51597, 1),
(6, 51598, 1),
(6, 51712, 1),
(6, 52146, 2),
(6, 55047, 1),
(6, 55136, 1),
(6, 55137, 1),
(6, 55145, 21),
(6, 55146, 2),
(6, 55148, 6),
(6, 55154, 1),
(6, 55226, 1),
(6, 55227, 1),
(6, 55230, 1),
(6, 55233, 1),
(6, 56395, 2),
(6, 100157, 1),
(6, 112550, 0),
(6, 515206, 1),
(6, 515207, 2),
(6, 515208, 3),
(6, 515209, 3),
(6, 10002004, 1572864),
(9, 9007, 1739050618),
(9, 13413, 1739034300),
(9, 13414, 2),
(9, 14903, 0),
(9, 10002011, 1),
(9, 61305253, 3),
(9, 61305254, 2),
(9, 61305255, 2),
(9, 61305310, 65),
(9, 61305776, 47),
(9, 61305777, 38),
(10, 9007, 1739052277),
(10, 13413, 1739034300),
(10, 13414, 2),
(10, 14903, 0),
(10, 51052, 0),
(10, 64125, 1),
(10, 10001001, 106037251),
(10, 10001002, 106102787),
(10, 10001003, 90701827),
(10, 10001004, 90767363),
(10, 10001005, 103219203),
(10, 10001006, 103284739),
(10, 10001007, 63832064),
(10, 10001008, 63897600),
(10, 10001009, 9109507),
(10, 10001010, 8585219),
(10, 10002001, 2101256),
(10, 10002002, 32768),
(10, 10002004, 2097152),
(10, 10002007, 8388624),
(10, 10002011, 47),
(10, 61305011, 4),
(10, 61305012, 13),
(10, 61305018, 225),
(10, 61305021, 5),
(10, 61305022, 30),
(10, 61305025, 33),
(10, 61305026, 55),
(10, 61305029, 2),
(10, 61305033, 2),
(10, 61305034, 47),
(10, 61305043, 2),
(10, 61305077, 35),
(10, 61305122, 2),
(10, 61305251, 35),
(10, 61305253, 1),
(10, 61305254, 1),
(10, 61305255, 1),
(10, 61305310, 72),
(10, 61305385, 157),
(10, 61305777, 26),
(11, 13413, 1739034300),
(11, 13414, 2),
(11, 14903, 0),
(11, 51052, 0),
(11, 10001001, 90767363),
(11, 10001002, 90701827),
(11, 10002003, 69632),
(11, 10002004, 134217728),
(11, 10002011, 121),
(11, 10003001, 65142784),
(11, 61305011, 6),
(11, 61305021, 9),
(11, 61305022, 13),
(11, 61305025, 131),
(11, 61305033, 81);

-- --------------------------------------------------------

--
-- Table structure for table `player_taskhunt`
--

CREATE TABLE `player_taskhunt` (
  `player_id` int(11) NOT NULL,
  `slot` tinyint(1) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `raceid` varchar(250) NOT NULL,
  `upgrade` tinyint(1) NOT NULL,
  `rarity` tinyint(1) NOT NULL,
  `kills` varchar(250) NOT NULL,
  `disabled_time` bigint(20) NOT NULL,
  `free_reroll` bigint(20) NOT NULL,
  `monster_list` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `player_taskhunt`
--

INSERT INTO `player_taskhunt` (`player_id`, `slot`, `state`, `raceid`, `upgrade`, `rarity`, `kills`, `disabled_time`, `free_reroll`, `monster_list`) VALUES
(6, 0, 2, '0', 0, 1, '0', 0, 1689290891724, 0xe6050f021200dc080c061d02050072008f02),
(6, 1, 2, '0', 0, 1, '0', 0, 1689290891725, 0xd90220047103cf024401dd006a020700fb00),
(6, 2, 0, '0', 0, 1, '0', 0, 1689290891727, ''),
(8, 0, 2, '0', 0, 1, '0', 0, 1689290895871, 0x1d01c102cf011b00cc016c001c010f027706),
(8, 1, 2, '0', 0, 1, '0', 0, 1689290895872, 0x97033c08f5054b04c706150005015c047303),
(8, 2, 0, '0', 0, 1, '0', 0, 1689290895872, ''),
(9, 0, 2, '0', 0, 1, '0', 0, 1738905087825, 0x0803aa07070003085f00d6032f0869036a00),
(9, 1, 2, '0', 0, 1, '0', 0, 1738905087825, 0x8102e502710345003600cf026f041200f304),
(9, 2, 0, '0', 0, 1, '0', 0, 1738905087825, ''),
(10, 0, 2, '0', 0, 1, '0', 0, 1738719753119, 0x27010b036c023600e100c80435004c019307),
(10, 1, 2, '0', 0, 1, '0', 0, 1738719753119, ''),
(10, 2, 0, '0', 0, 1, '0', 0, 1738719753119, ''),
(11, 0, 2, '0', 0, 1, '0', 0, 1738727656442, 0xda003d0032086e000c015e03210976001701),
(11, 1, 2, '0', 0, 1, '0', 0, 1738727656442, 0x03088306d303fd031a0074004900c4022d00),
(11, 2, 0, '0', 0, 1, '0', 0, 1738727656442, '');

-- --------------------------------------------------------

--
-- Table structure for table `player_wheeldata`
--

CREATE TABLE `player_wheeldata` (
  `player_id` int(11) NOT NULL,
  `slot` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `server_config`
--

CREATE TABLE `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT '',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `server_config`
--

INSERT INTO `server_config` (`config`, `value`, `timestamp`) VALUES
('db_version', '44', '2024-03-05 23:30:43'),
('motd_hash', 'c688534ee07393eb160109a60b002a2828da0883', '2025-02-04 05:56:43'),
('motd_num', '2', '2025-02-04 05:56:43'),
('players_record', '1', '2023-11-01 14:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `store_history`
--

CREATE TABLE `store_history` (
  `id` int(11) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `mode` smallint(2) NOT NULL DEFAULT 0,
  `description` varchar(3500) NOT NULL,
  `coin_type` tinyint(1) NOT NULL DEFAULT 0,
  `coin_amount` int(12) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `store_history`
--

INSERT INTO `store_history` (`id`, `account_id`, `mode`, `description`, `coin_type`, `coin_amount`, `time`, `timestamp`) VALUES
(1, 4, 0, 'Durable Exercise Bow', 0, -90, 1738648664, 0),
(2, 4, 0, 'Frostbringer', 0, -750, 1738648812, 0),
(3, 4, 0, 'Full Armoured Archer Outfit', 0, -600, 1738648827, 0),
(4, 4, 0, '30 Days of Premium Time', 0, -250, 1738649561, 0),
(5, 4, 0, 'Coralripper', 0, -570, 1738655733, 0),
(6, 4, 0, 'Flitterkatzen', 0, -870, 1738655764, 0),
(7, 4, 0, 'Sanguine Frog', 0, -690, 1738655941, 0),
(8, 4, 0, 'Full Rune Master Outfit', 0, -870, 1738656059, 0),
(9, 4, 0, 'Lasting Exercise Wand', 0, -720, 1738656234, 0),
(10, 4, 0, 'Full Rune Master Outfit', 0, -870, 1738662816, 0),
(11, 4, 0, 'Emerald Raven', 0, -690, 1738662831, 0),
(12, 4, 0, 'Flamesteed', 0, -900, 1738719513, 0),
(13, 4, 0, 'Full Fencer Outfit', 0, -750, 1738720003, 0),
(14, 4, 0, 'Retro Citizen', 0, -870, 1738720040, 0),
(15, 4, 0, 'Durable Exercise Bow', 0, -90, 1738720337, 0),
(16, 4, 0, 'Durable Exercise Bow', 0, -90, 1738720340, 0),
(17, 4, 0, 'The Wisdom of Solitude', 0, -15, 1738725079, 0),
(18, 4, 0, 'The Wisdom of Solitude', 0, -15, 1738725233, 0),
(19, 4, 0, 'Black Stag', 0, -660, 1738725238, 0),
(20, 4, 0, 'XP Boost', 0, -30, 1738726886, 0),
(21, 4, 0, 'Lasting Exercise Bow', 0, -720, 1738730513, 0),
(22, 4, 0, 'Great Health Cask', 0, -22, 1738733285, 0),
(23, 4, 0, 'Lasting Exercise Bow', 0, -720, 1738809110, 0),
(24, 4, 0, 'Lasting Exercise Shield', 0, -720, 1738809612, 0),
(25, 4, 0, '30 Days of Premium Time', 0, -250, 1738810913, 0),
(26, 4, 0, '90 Days of Premium Time', 0, -750, 1738811070, 0),
(27, 4, 0, '30 Days of Premium Time', 0, -250, 1738812976, 0),
(28, 4, 0, 'Charm Expansion', 0, -450, 1738836960, 0),
(29, 4, 0, 'Lasting Exercise Wand', 0, -720, 1738839825, 0),
(30, 4, 0, 'Lasting Exercise Wand', 0, -720, 1738865986, 0),
(31, 4, 0, 'Lasting Exercise Bow', 0, -720, 1738902192, 0),
(32, 4, 0, 'Coral Rhea', 0, -500, 1738913252, 0),
(33, 4, 0, 'Lasting Exercise Bow', 0, -720, 1738929885, 0),
(34, 4, 0, 'Prismatic Unicorn', 0, -870, 1738929960, 0),
(35, 4, 0, '30 Days of vipp', 0, -250, 1739011319, 0),
(36, 4, 0, '30 Days of vipp', 0, -250, 1739011880, 0),
(37, 4, 0, '30 Days of vipp', 0, -250, 1739012068, 0),
(38, 4, 0, '30 Days of vipp', 0, -250, 1739012191, 0),
(39, 4, 0, 'XP Boost', 0, -30, 1739036988, 0),
(40, 4, 0, '30 Days of vipp', 0, -250, 1739037023, 0),
(41, 4, 0, '30 Days of vipp', 0, -250, 1739037027, 0),
(42, 4, 0, '30 Days of vipp', 0, -250, 1739037030, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stripe`
--

CREATE TABLE `stripe` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `api_version` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tile_store`
--

CREATE TABLE `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z_ots_comunication`
--

CREATE TABLE `z_ots_comunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `action` varchar(255) NOT NULL DEFAULT '',
  `param1` varchar(255) NOT NULL DEFAULT '',
  `param2` varchar(255) NOT NULL DEFAULT '',
  `param3` varchar(255) NOT NULL DEFAULT '',
  `param4` varchar(255) NOT NULL DEFAULT '',
  `param5` varchar(255) NOT NULL DEFAULT '',
  `param6` varchar(255) NOT NULL DEFAULT '',
  `param7` varchar(255) NOT NULL DEFAULT '',
  `delete_it` int(2) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls`
--

CREATE TABLE `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `end` int(11) NOT NULL DEFAULT 0,
  `start` int(11) NOT NULL DEFAULT 0,
  `answers` int(11) NOT NULL DEFAULT 0,
  `votes_all` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls_answers`
--

CREATE TABLE `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_categories`
--

CREATE TABLE `z_shop_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `z_shop_categories`
--

INSERT INTO `z_shop_categories` (`id`, `name`, `hidden`) VALUES
(1, 'Tibicoins', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_history`
--

CREATE TABLE `z_shop_history` (
  `id` int(11) NOT NULL,
  `comunication_id` int(11) NOT NULL DEFAULT 0,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT 0,
  `from_nick` varchar(255) NOT NULL DEFAULT '',
  `from_account` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `offer_id` int(11) NOT NULL DEFAULT 0,
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT 0,
  `trans_real` int(11) NOT NULL DEFAULT 0,
  `is_pacc` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `z_shop_history`
--

INSERT INTO `z_shop_history` (`id`, `comunication_id`, `to_name`, `to_account`, `from_nick`, `from_account`, `price`, `offer_id`, `trans_state`, `trans_start`, `trans_real`, `is_pacc`) VALUES
(1, 1, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738650404, 1738723475, 0),
(2, 2, 'Hunter Ka', 4, 'Anonymous', 4, 10, 3, 'realized', 1738650425, 1738723475, 0),
(3, 3, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738720960, 1738723475, 0),
(4, 4, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738722177, 1738723505, 0),
(5, 5, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738723089, 1738723505, 0),
(6, 6, 'Hunter Ka', 4, 'Anonymous', 4, 10, 2, 'realized', 1738723660, 1738723685, 0),
(7, 7, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738725475, 1738725486, 0),
(8, 8, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738726195, 1738726206, 0),
(9, 9, 'Hunter Ka', 4, 'Anonymous', 4, 10, 5, 'realized', 1738732888, 1738732896, 0),
(10, 10, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738774780, 1738774796, 0),
(11, 11, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738774978, 1738775006, 0),
(12, 12, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738775248, 1738775262, 0),
(13, 13, 'Hunter Ka', 4, 'magalinda', 4, 10, 1, 'realized', 1738775296, 1738775322, 0),
(14, 14, 'Hunter Ka', 4, 'Anonymous', 4, 10, 1, 'realized', 1738810721, 1738810722, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_offer`
--

CREATE TABLE `z_shop_offer` (
  `id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `itemid1` int(11) NOT NULL DEFAULT 0,
  `count1` int(11) NOT NULL DEFAULT 0,
  `itemid2` int(11) NOT NULL DEFAULT 0,
  `count2` int(11) NOT NULL DEFAULT 0,
  `category_id` tinyint(1) NOT NULL DEFAULT 0,
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `z_shop_offer`
--

INSERT INTO `z_shop_offer` (`id`, `points`, `itemid1`, `count1`, `itemid2`, `count2`, `category_id`, `offer_type`, `offer_description`, `offer_name`, `hidden`, `ordering`) VALUES
(1, 10, 22118, 250, 0, 0, 1, 'item', '250 tibicoins. You can use it in our store.', '250 Tibicoins.', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_unique` (`name`);

--
-- Indexes for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `account_sessions`
--
ALTER TABLE `account_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_viplist_unique` (`account_id`,`player_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `boosted_boss`
--
ALTER TABLE `boosted_boss`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `boosted_creature`
--
ALTER TABLE `boosted_creature`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `coins_transactions`
--
ALTER TABLE `coins_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `forge_history`
--
ALTER TABLE `forge_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `global_storage`
--
ALTER TABLE `global_storage`
  ADD UNIQUE KEY `global_storage_unique` (`key`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guilds_name_unique` (`name`),
  ADD UNIQUE KEY `guilds_owner_unique` (`ownerid`);

--
-- Indexes for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indexes for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indexes for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD PRIMARY KEY (`house_id`,`listid`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `version` (`version`);

--
-- Indexes for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `kv_store`
--
ALTER TABLE `kv_store`
  ADD PRIMARY KEY (`key_name`);

--
-- Indexes for table `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`,`sale`);

--
-- Indexes for table `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale` (`sale`,`itemtype`),
  ADD KEY `created` (`created`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `myaac_account_actions`
--
ALTER TABLE `myaac_account_actions`
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_charbazaar`
--
ALTER TABLE `myaac_charbazaar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_charbazaar_bid`
--
ALTER TABLE `myaac_charbazaar_bid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_config`
--
ALTER TABLE `myaac_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myaac_faq`
--
ALTER TABLE `myaac_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_forum`
--
ALTER TABLE `myaac_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indexes for table `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_menu`
--
ALTER TABLE `myaac_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_news`
--
ALTER TABLE `myaac_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_pages`
--
ALTER TABLE `myaac_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myaac_paypal`
--
ALTER TABLE `myaac_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_polls`
--
ALTER TABLE `myaac_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_settings`
--
ALTER TABLE `myaac_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`key`);

--
-- Indexes for table `myaac_spells`
--
ALTER TABLE `myaac_spells`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `myaac_videos`
--
ALTER TABLE `myaac_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaac_visitors`
--
ALTER TABLE `myaac_visitors`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `myaac_weapons`
--
ALTER TABLE `myaac_weapons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `players_unique` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indexes for table `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indexes for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_depotitems_unique` (`player_id`,`sid`);

--
-- Indexes for table `player_hirelings`
--
ALTER TABLE `player_hirelings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD UNIQUE KEY `player_inboxitems_unique` (`player_id`,`sid`);

--
-- Indexes for table `player_items`
--
ALTER TABLE `player_items`
  ADD PRIMARY KEY (`player_id`,`sid`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD UNIQUE KEY `player_namelocks_unique` (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indexes for table `player_prey`
--
ALTER TABLE `player_prey`
  ADD PRIMARY KEY (`player_id`,`slot`);

--
-- Indexes for table `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD UNIQUE KEY `player_rewards_unique` (`player_id`,`sid`);

--
-- Indexes for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD PRIMARY KEY (`player_id`,`name`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_stash`
--
ALTER TABLE `player_stash`
  ADD PRIMARY KEY (`player_id`,`item_id`);

--
-- Indexes for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indexes for table `player_taskhunt`
--
ALTER TABLE `player_taskhunt`
  ADD PRIMARY KEY (`player_id`,`slot`);

--
-- Indexes for table `player_wheeldata`
--
ALTER TABLE `player_wheeldata`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `store_history`
--
ALTER TABLE `store_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `stripe`
--
ALTER TABLE `stripe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tile_store`
--
ALTER TABLE `tile_store`
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_polls`
--
ALTER TABLE `z_polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_categories`
--
ALTER TABLE `z_shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_history`
--
ALTER TABLE `z_shop_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_offer`
--
ALTER TABLE `z_shop_offer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coins_transactions`
--
ALTER TABLE `coins_transactions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forge_history`
--
ALTER TABLE `forge_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3692;

--
-- AUTO_INCREMENT for table `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myaac_admin_menu`
--
ALTER TABLE `myaac_admin_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_bugtracker`
--
ALTER TABLE `myaac_bugtracker`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_changelog`
--
ALTER TABLE `myaac_changelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myaac_charbazaar`
--
ALTER TABLE `myaac_charbazaar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_charbazaar_bid`
--
ALTER TABLE `myaac_charbazaar_bid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_config`
--
ALTER TABLE `myaac_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `myaac_faq`
--
ALTER TABLE `myaac_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myaac_forum`
--
ALTER TABLE `myaac_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_forum_boards`
--
ALTER TABLE `myaac_forum_boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myaac_gallery`
--
ALTER TABLE `myaac_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myaac_menu`
--
ALTER TABLE `myaac_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `myaac_monsters`
--
ALTER TABLE `myaac_monsters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_news`
--
ALTER TABLE `myaac_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myaac_news_categories`
--
ALTER TABLE `myaac_news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myaac_notepad`
--
ALTER TABLE `myaac_notepad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_pages`
--
ALTER TABLE `myaac_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myaac_paypal`
--
ALTER TABLE `myaac_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_settings`
--
ALTER TABLE `myaac_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3302;

--
-- AUTO_INCREMENT for table `myaac_spells`
--
ALTER TABLE `myaac_spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaac_videos`
--
ALTER TABLE `myaac_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `player_hirelings`
--
ALTER TABLE `player_hirelings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_history`
--
ALTER TABLE `store_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `stripe`
--
ALTER TABLE `stripe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `z_polls`
--
ALTER TABLE `z_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_shop_history`
--
ALTER TABLE `z_shop_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `z_shop_offer`
--
ALTER TABLE `z_shop_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_player_fk` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_bans_history_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_history_player_fk` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_player_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coins_transactions`
--
ALTER TABLE `coins_transactions`
  ADD CONSTRAINT `coins_transactions_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  ADD CONSTRAINT `daily_reward_history_player_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forge_history`
--
ALTER TABLE `forge_history`
  ADD CONSTRAINT `forge_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ownerid_fk` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_warid_fk` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_guild_fk` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_player_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_guild_fk` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_player_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_rank_fk` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_fk` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `houses_list_house_fk` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_players_fk` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_hirelings`
--
ALTER TABLE `player_hirelings`
  ADD CONSTRAINT `player_hirelings_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_players2_fk` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD CONSTRAINT `player_rewards_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_wheeldata`
--
ALTER TABLE `player_wheeldata`
  ADD CONSTRAINT `player_wheeldata_players_fk` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `store_history`
--
ALTER TABLE `store_history`
  ADD CONSTRAINT `store_history_account_fk` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_account_fk` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
