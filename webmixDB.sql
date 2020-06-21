-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 03:17 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmix`
--

-- --------------------------------------------------------

--
-- Table structure for table `ip_administrator`
--

CREATE TABLE `ip_administrator` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `hash` text NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `resetSecret` varchar(32) DEFAULT NULL,
  `resetTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_administrator`
--

INSERT INTO `ip_administrator` (`id`, `username`, `hash`, `email`, `resetSecret`, `resetTime`) VALUES
(1, 'admin', '$P$BrEd/SdTjPynWeB2GtmK7xNCOGbeRC.', 'webmix@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_email_queue`
--

CREATE TABLE `ip_email_queue` (
  `id` int(11) NOT NULL,
  `email` mediumtext NOT NULL,
  `to` varchar(255) NOT NULL,
  `toName` varchar(255) DEFAULT NULL,
  `from` varchar(255) NOT NULL,
  `fromName` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `immediate` tinyint(1) NOT NULL DEFAULT '0',
  `html` tinyint(1) NOT NULL,
  `send` timestamp NULL DEFAULT NULL,
  `lock` varchar(32) DEFAULT NULL,
  `lockedAt` timestamp NULL DEFAULT NULL,
  `files` mediumtext,
  `fileNames` mediumtext,
  `fileMimeTypes` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_global`
--

CREATE TABLE `ip_inline_value_global` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_inline_value_global`
--

INSERT INTO `ip_inline_value_global` (`plugin`, `key`, `value`) VALUES
('inline_management', 'logo_', '{\"type\":\"image\",\"imageOrig\":\"LOGO.png\",\"x1\":\"-327\",\"y1\":\"-314\",\"x2\":\"1023\",\"y2\":\"986\",\"text\":\"webmix\",\"color\":\"#b56e6e\",\"font\":\"\\\"Helvetica Neue\\\", Helvetica, Arial, sans-serif\",\"requiredWidth\":\"322\",\"requiredHeight\":\"310\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_language`
--

CREATE TABLE `ip_inline_value_language` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `languageId` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_inline_value_page`
--

CREATE TABLE `ip_inline_value_page` (
  `plugin` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `pageId` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_language`
--

CREATE TABLE `ip_language` (
  `id` int(11) NOT NULL,
  `abbreviation` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `languageOrder` double NOT NULL DEFAULT '0',
  `isVisible` int(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `code` varchar(255) NOT NULL,
  `textDirection` varchar(10) NOT NULL DEFAULT 'ltr'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_language`
--

INSERT INTO `ip_language` (`id`, `abbreviation`, `title`, `languageOrder`, `isVisible`, `url`, `code`, `textDirection`) VALUES
(1, 'EN', 'English', 2, 1, '', 'en', 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `ip_log`
--

CREATE TABLE `ip_log` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `level` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `context` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_log`
--

INSERT INTO `ip_log` (`id`, `time`, `level`, `message`, `context`) VALUES
(1, '2019-01-04 12:24:56', 'info', 'Cron.started', '{\"firstTimeThisYear\":true,\"firstTimeThisMonth\":true,\"firstTimeThisWeek\":true,\"firstTimeThisDay\":true,\"firstTimeThisHour\":true,\"lastTime\":null,\"test\":null}'),
(2, '2019-01-04 12:24:58', 'info', 'Cron.finished', '[]'),
(3, '2019-01-04 12:29:40', 'info', 'Admin.loggedIn: {username} from {ip}', '{\"username\":\"admin\",\"ip\":\"::1\"}'),
(4, '2019-01-04 12:30:06', 'info', 'Cron.started', '{\"firstTimeThisYear\":false,\"firstTimeThisMonth\":false,\"firstTimeThisWeek\":false,\"firstTimeThisDay\":false,\"firstTimeThisHour\":true,\"lastTime\":1546604698,\"test\":null}'),
(5, '2019-01-04 12:30:06', 'info', 'Cron.finished', '[]'),
(6, '2019-01-04 12:50:48', 'error', 'Unknown exception: Methods with the same name as their class will not be constructors in a future version of PHP; Crypt_RSA has a deprecated constructor in {file}:{line}', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\impresspages\\\\vendor\\\\impresspages\\\\impresspages\\\\Ip\\\\Lib\\\\phpseclib\\\\Crypt\\\\RSA.php\",\"line\":249}'),
(7, '2019-01-04 12:50:48', 'error', 'Unknown exception: Methods with the same name as their class will not be constructors in a future version of PHP; Crypt_Hash has a deprecated constructor in {file}:{line}', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\impresspages\\\\vendor\\\\impresspages\\\\impresspages\\\\Ip\\\\Lib\\\\phpseclib\\\\Crypt\\\\Hash.php\",\"line\":84}'),
(8, '2019-01-04 12:51:07', 'error', 'Unknown exception: Methods with the same name as their class will not be constructors in a future version of PHP; Math_BigInteger has a deprecated constructor in {file}:{line}', '{\"file\":\"C:\\\\xampp\\\\htdocs\\\\impresspages\\\\vendor\\\\impresspages\\\\impresspages\\\\Ip\\\\Lib\\\\phpseclib\\\\Math\\\\BigInteger.php\",\"line\":182}'),
(9, '2019-01-04 13:31:00', 'error', 'Cron.failedFakeCron', '{\"result\":false,\"type\":\"curl\",\"error\":\"Operation timed out after 10000 milliseconds with 0 bytes received\"}'),
(10, '2019-01-04 13:31:00', 'info', 'Cron.started', '{\"firstTimeThisYear\":false,\"firstTimeThisMonth\":false,\"firstTimeThisWeek\":false,\"firstTimeThisDay\":false,\"firstTimeThisHour\":true,\"lastTime\":1546605006,\"test\":null}'),
(11, '2019-01-04 13:31:01', 'info', 'Cron.finished', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `ip_page`
--

CREATE TABLE `ip_page` (
  `id` int(11) NOT NULL,
  `languageCode` varchar(6) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `urlPath` varchar(140) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `pageOrder` double NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `metaTitle` mediumtext,
  `keywords` mediumtext,
  `description` mediumtext,
  `type` varchar(255) NOT NULL DEFAULT 'default',
  `alias` varchar(255) DEFAULT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `isVisible` tinyint(1) NOT NULL DEFAULT '0',
  `isDisabled` tinyint(1) NOT NULL DEFAULT '0',
  `isSecured` tinyint(1) NOT NULL DEFAULT '0',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `isBlank` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Open page in new window',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `deletedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_page`
--

INSERT INTO `ip_page` (`id`, `languageCode`, `urlPath`, `parentId`, `pageOrder`, `title`, `metaTitle`, `keywords`, `description`, `type`, `alias`, `layout`, `redirectUrl`, `isVisible`, `isDisabled`, `isSecured`, `isDeleted`, `isBlank`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'en', NULL, 0, 0, 'Menu1', NULL, NULL, NULL, 'default', 'menu1', 'main.php', NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(2, 'en', NULL, 0, 1, 'Menu2', NULL, NULL, NULL, 'default', 'menu2', 'main.php', NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(3, 'en', NULL, 0, 2, 'Menu3', NULL, NULL, NULL, 'default', 'menu3', 'main.php', NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(4, 'en', 'home/', 1, 0, 'Home', NULL, NULL, NULL, 'default', NULL, 'home.php', NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-03 18:30:00', NULL),
(5, 'en', 'contact-us/', 1, 1, 'Contact Us', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2019-01-03 18:30:00', '2019-01-03 18:30:00', NULL),
(6, 'en', 'page1/', 2, 0, 'Page1', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(7, 'en', 'page2/', 2, 1, 'Page2', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(8, 'en', 'example1/', 3, 0, 'Example 1', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(9, 'en', 'example2/', 3, 1, 'Example 2', NULL, NULL, NULL, 'default', NULL, NULL, NULL, 1, 0, 0, 0, 0, '2019-01-04 12:24:52', '2019-01-04 12:24:52', NULL),
(10, 'en', 'about-us/', 1, 1.5, 'About Us', '', '', '', 'default', '', NULL, '', 1, 0, 0, 0, 0, '2019-01-03 18:30:00', '2019-01-03 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_page_storage`
--

CREATE TABLE `ip_page_storage` (
  `pageId` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_permission`
--

CREATE TABLE `ip_permission` (
  `administratorId` int(11) NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_permission`
--

INSERT INTO `ip_permission` (`administratorId`, `permission`) VALUES
(1, 'Super admin');

-- --------------------------------------------------------

--
-- Table structure for table `ip_plugin`
--

CREATE TABLE `ip_plugin` (
  `title` varchar(100) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `version` decimal(10,2) NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_plugin`
--

INSERT INTO `ip_plugin` (`title`, `name`, `version`, `isActive`) VALUES
('Application', 'Application', '1.00', 1),
('Colorbox', 'Colorbox', '1.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ip_repository_file`
--

CREATE TABLE `ip_repository_file` (
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `plugin` varchar(255) NOT NULL,
  `baseDir` varchar(255) NOT NULL,
  `instanceId` int(11) NOT NULL COMMENT 'Unique identificator. Tells in which part of the module the file is used. Teoretically there could be two identical records. The same module binds the same file to the same instance. For example: gallery widget adds the same photo twice.',
  `createdAt` int(11) NOT NULL COMMENT 'Time, when this module started to use this resource.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='File usage table. Track which modules uses which files';

--
-- Dumping data for table `ip_repository_file`
--

INSERT INTO `ip_repository_file` (`fileId`, `filename`, `plugin`, `baseDir`, `instanceId`, `createdAt`) VALUES
(1, 'JHON_1.JPG', 'Content', 'file/repository/', 25, 1546608932),
(2, 'joh2a_1_.jpg', 'Content', 'file/repository/', 25, 1546608932),
(3, 'joh6a.jpg', 'Content', 'file/repository/', 25, 1546608932),
(4, 'LOGO.png', 'developer/inline_management', 'file/repository/', 1, 1546609353),
(5, 'LOGO.png', 'Content', 'file/repository/', 42, 1546610958);

-- --------------------------------------------------------

--
-- Table structure for table `ip_repository_reflection`
--

CREATE TABLE `ip_repository_reflection` (
  `reflectionId` int(11) NOT NULL,
  `options` text CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `optionsFingerprint` char(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL COMMENT 'unique cropping options key',
  `original` varchar(255) NOT NULL,
  `reflection` varchar(255) NOT NULL COMMENT 'Cropped version of original file.',
  `createdAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cropped versions of original image file';

--
-- Dumping data for table `ip_repository_reflection`
--

INSERT INTO `ip_repository_reflection` (`reflectionId`, `options`, `optionsFingerprint`, `original`, `reflection`, `createdAt`) VALUES
(1, '{\"type\":\"fit\",\"width\":140,\"height\":140,\"forced\":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'JHON_1.JPG', '2019/01/04/JHON_1.JPG', 1546608924),
(2, '{\"type\":\"fit\",\"width\":140,\"height\":140,\"forced\":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'joh2a_1_.jpg', '2019/01/04/joh2a_1_.jpg', 1546608928),
(3, '{\"type\":\"fit\",\"width\":140,\"height\":140,\"forced\":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'joh6a.jpg', '2019/01/04/joh6a.jpg', 1546608930),
(4, '{\"type\":\"fit\",\"width\":800,\"height\":600}', '41db051fa26a4946666a03e9c8575ac6', 'JHON_1.JPG', '2019/01/04/JHON_1_1.JPG', 1546608932),
(5, '{\"type\":\"center\",\"width\":200,\"height\":200,\"quality\":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'JHON_1.JPG', '2019/01/04/JHON_1_2.JPG', 1546608932),
(6, '{\"type\":\"fit\",\"width\":800,\"height\":600}', '41db051fa26a4946666a03e9c8575ac6', 'joh2a_1_.jpg', '2019/01/04/joh2a_1__1.jpg', 1546608932),
(7, '{\"type\":\"center\",\"width\":200,\"height\":200,\"quality\":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'joh2a_1_.jpg', '2019/01/04/joh2a_1__2.jpg', 1546608932),
(8, '{\"type\":\"fit\",\"width\":800,\"height\":600}', '41db051fa26a4946666a03e9c8575ac6', 'joh6a.jpg', '2019/01/04/joh6a_1.jpg', 1546608932),
(9, '{\"type\":\"center\",\"width\":200,\"height\":200,\"quality\":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'joh6a.jpg', '2019/01/04/joh6a_2.jpg', 1546608932),
(10, '{\"type\":\"fit\",\"width\":140,\"height\":140,\"forced\":true}', '2b122a9be86f44c7b91e28a9c1a58492', 'LOGO.png', '2019/01/04/LOGO.png', 1546609349),
(11, '{\"type\":\"crop\",\"x1\":\"0\",\"y1\":\"0\",\"x2\":\"694\",\"y2\":\"668\",\"width\":\"322\",\"height\":\"310\",\"quality\":100}', 'fc479abf230e3333b410f37a803d39de', 'LOGO.png', '2019/01/04/webmix.png', 1546609353),
(12, '{\"type\":\"crop\",\"x1\":\"-327\",\"y1\":\"-314\",\"x2\":\"1023\",\"y2\":\"986\",\"width\":\"322\",\"height\":\"310\",\"quality\":100}', 'a7458777080c4daa2fe3d4949189cd29', 'LOGO.png', '2019/01/04/webmix_1.png', 1546609362),
(13, '{\"type\":\"fit\",\"width\":800,\"height\":600}', '41db051fa26a4946666a03e9c8575ac6', 'LOGO.png', '2019/01/04/LOGO_1.png', 1546610958),
(14, '{\"type\":\"center\",\"width\":200,\"height\":200,\"quality\":90}', 'eb575174915cfd83425d8fe5ef3705d2', 'LOGO.png', '2019/01/04/LOGO_2.png', 1546610958);

-- --------------------------------------------------------

--
-- Table structure for table `ip_revision`
--

CREATE TABLE `ip_revision` (
  `revisionId` int(11) NOT NULL,
  `pageId` int(11) NOT NULL DEFAULT '0',
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_revision`
--

INSERT INTO `ip_revision` (`revisionId`, `pageId`, `isPublished`, `createdAt`) VALUES
(1, 4, 0, '2019-01-04 12:24:52'),
(2, 5, 0, '2019-01-04 12:24:52'),
(3, 7, 1, '2019-01-04 12:27:27'),
(4, 6, 1, '2019-01-04 12:27:28'),
(5, 4, 1, '2019-01-04 12:29:41'),
(6, 4, 0, '2019-01-04 12:49:27'),
(7, 4, 0, '2019-01-04 12:49:42'),
(8, 4, 0, '2019-01-04 12:54:55'),
(9, 6, 0, '2019-01-04 13:01:07'),
(10, 10, 0, '2019-01-04 13:34:29'),
(11, 10, 1, '2019-01-04 13:34:29'),
(12, 5, 0, '2019-01-04 13:38:47'),
(13, 7, 0, '2019-01-04 13:38:52'),
(14, 10, 0, '2019-01-04 14:01:00'),
(15, 5, 1, '2019-01-04 14:01:33'),
(16, 5, 0, '2019-01-04 14:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `ip_storage`
--

CREATE TABLE `ip_storage` (
  `plugin` varchar(40) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_storage`
--

INSERT INTO `ip_storage` (`plugin`, `key`, `value`) VALUES
('Admin', 'failedLogins', '[]'),
('Config', 'Colorbox.style', '\"4\"'),
('Config', 'Config.automaticCron', '\"1\"'),
('Config', 'Config.availableFonts', '\"Arial,Arial,Helvetica,sans-serif\\nArial Black,Arial Black,Gadget,sans-serif\\nComic Sans MS,Comic Sans MS,cursive\\nCourier New,Courier New,Courier,monospace\\nGeorgia,Georgia,serif\\nImpact,Charcoal,sans-serif\\nLucida Console,Monaco,monospace\\nLucida Sans Unicode,Lucida Grande,sans-serif\\nPalatino Linotype,Book Antiqua,Palatino,serif\\nTahoma,Geneva,sans-serif\\nTimes New Roman,Times,serif\\nTrebuchet MS,Helvetica,sans-serif\\nVerdana,Geneva,sans-serif\\nGill Sans,Geneva,sans-serif\"'),
('Config', 'Config.cronPassword', '392642'),
('Config', 'Config.defaultImageQuality', '80'),
('Config', 'Config.en.websiteEmail', '\"webmix@gmail.com\"'),
('Config', 'Config.en.websiteTitle', '\"webmix\"'),
('Config', 'Config.gmapsApiKey', ''),
('Config', 'Config.lightboxHeight', '600'),
('Config', 'Config.lightboxWidth', '800'),
('Config', 'Config.reservedDirs', '[\"file\",\"install\",\"Ip\",\"Plugin\",\"update\",\"Theme\",\"index.php\",\"admin\",\"admin.php\"]'),
('Config', 'Config.trailingSlash', '1'),
('Config', 'Content.widgetGalleryHeight', '200'),
('Config', 'Content.widgetGalleryQuality', '90'),
('Config', 'Content.widgetGalleryWidth', '200'),
('Config', 'Content.widgetImageHeight', '342'),
('Config', 'Content.widgetImageWidth', '540'),
('Config', 'Design.themeDirs', '\"\"'),
('Config', 'Email.hourlyLimit', '100'),
('Config', 'Pages.hideNewPages', '0'),
('Cron', 'lastExecutionEnd', '1546608661'),
('Cron', 'lastExecutionStart', '1546608660'),
('Cron', 'lastFailureAt', '1546608660'),
('Ip', 'cachedBaseUrl', '\"http:\\/\\/localhost:8000\\/\"'),
('Ip', 'cacheVersion', '3'),
('Ip', 'dbVersion', '101'),
('Ip', 'getImpressPagesSupport', '\"1\"'),
('Ip', 'lastSystemMessageSent', ''),
('Ip', 'lastSystemMessageShown', '\"18ee961f7585f2ab8dd0727d628bbbbd\"'),
('Ip', 'theme', '\"QuickStart\"'),
('Ip', 'version', '\"5.0.3\"'),
('Ip', 'websiteId', '\"tHWvMzaJ2h87Z6YLs09LL0inGTFv8iRN\"'),
('Pages', 'menu_menu1_default_position', '\"bottom\"');

-- --------------------------------------------------------

--
-- Table structure for table `ip_theme_storage`
--

CREATE TABLE `ip_theme_storage` (
  `theme` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_widget`
--

CREATE TABLE `ip_widget` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `skin` varchar(25) NOT NULL,
  `data` text NOT NULL,
  `revisionId` int(11) NOT NULL,
  `languageId` int(11) NOT NULL,
  `blockName` varchar(25) NOT NULL,
  `position` double NOT NULL,
  `isVisible` tinyint(1) NOT NULL DEFAULT '1',
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` int(11) NOT NULL COMMENT 'unix timestamp',
  `updatedAt` int(11) NOT NULL,
  `deletedAt` int(11) DEFAULT NULL COMMENT 'unix timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_widget`
--

INSERT INTO `ip_widget` (`id`, `name`, `skin`, `data`, `revisionId`, `languageId`, `blockName`, `position`, `isVisible`, `isDeleted`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Heading', 'default', '{\"title\":\"Homepage\",\"level\":\"1\"}', 1, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(2, 'Text', 'default', '{\"text\":\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\"}', 1, 0, 'main', 90, 1, 0, 1546604692, 1546604692, NULL),
(3, 'Heading', 'default', '{\"title\":\"Page content\",\"level\":\"1\"}', 2, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(4, 'Text', 'default', '{\"text\":\"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>\"}', 2, 0, 'main', 90, 1, 0, 1546604692, 1546604692, NULL),
(5, 'Heading', 'default', '{\"title\":\"Homepage\",\"level\":\"1\"}', 5, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(6, 'Text', 'default', '{\"text\":\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\"}', 5, 0, 'main', 90, 1, 0, 1546604692, 1546604692, NULL),
(7, 'Text', 'default', '{\"text\":\"<p>\\u00a0hhehhe\\u00a0<\\/p>\"}', 5, 0, 'main', 100, 1, 0, 1546605117, 1546605117, NULL),
(8, 'Form', 'default', '{\"fields\":[{\"type\":\"Text\",\"label\":\"Name\",\"options\":[]},{\"type\":\"Email\",\"label\":\"Email\",\"options\":[]},{\"type\":\"Textarea\",\"label\":\"Text\",\"options\":[]}]}', 5, 0, 'main', 110, 1, 1, 1546606085, 1546606085, 1546606093),
(9, 'Heading', 'default', '{\"title\":\"Homepage\",\"level\":\"1\"}', 6, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(10, 'Text', 'default', '{\"text\":\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\"}', 6, 0, 'main', 90, 1, 0, 1546604692, 1546604692, NULL),
(11, 'Text', 'default', '{\"text\":\"<p>\\u00a0hhehhe\\u00a0<\\/p>\"}', 6, 0, 'main', 100, 1, 0, 1546605117, 1546605117, NULL),
(12, 'Heading', 'default', '{\"title\":\"Opera King\",\"level\":\"1\"}', 7, 0, 'main', -30, 1, 0, 1546604692, 1546604692, NULL),
(13, 'Text', 'default', '{\"text\":\"<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec accumsan, tellus posuere sodales rhoncus, nulla nulla dignissim leo, ac consectetur elit mauris quis leo. Phasellus odio orci, ultricies sit amet tristique ac, varius at nisi. Vivamus eros massa, aliquet at sem ut, placerat interdum elit. Vivamus nisi augue, auctor eget malesuada vel, pulvinar eget orci. Quisque sit amet posuere augue. Aenean sodales augue non aliquam molestie. Nunc feugiat aliquam orci a aliquet. Aenean fermentum enim a luctus posuere. Mauris elementum facilisis urna, a adipiscing tortor congue vel. Nullam facilisis ultrices quam. Donec nunc orci, ullamcorper hendrerit nunc a, fringilla rhoncus est. Suspendisse laoreet posuere sapien.<\\/span>\\u00a0<\\/p>\"}', 7, 0, 'main', 90, 1, 1, 1546604692, 1546604692, 1546606313),
(14, 'Text', 'default', '{\"text\":\"<p>\\u00a0hhehhe\\u00a0<\\/p>\"}', 7, 0, 'main', 100, 1, 1, 1546605117, 1546605117, 1546606315),
(15, 'Heading', 'default', '[]', 7, 0, 'main', 10, 1, 1, 1546606320, 1546606320, 1546606352),
(16, 'File', 'default', '[]', 7, 0, 'main', 10, 1, 0, 1546606430, 1546606430, NULL),
(17, 'Heading', 'default', '{\"title\":\"Our Story\",\"level\":\"1\"}', 8, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(18, 'Text', 'default', '{\"text\":\"<p><span>Website.com began in 2005. After years in the web hosting industry, we realized that it was near impossible for the average Jane or Joe to create their own website. Traditional web hosting services were simply too complicated, time consuming, and expensive to manage.<\\/span><\\/p>\"}', 8, 0, 'main', 90, 1, 0, 1546604692, 1546604692, NULL),
(19, 'Text', 'default', '{\"text\":\"<p>\\u00a0hhehhe\\u00a0<\\/p>\"}', 8, 0, 'main', 100, 1, 1, 1546605117, 1546605117, 1546606990),
(20, 'Divider', 'default', '[]', 8, 0, 'main', 95, 1, 1, 1546606504, 1546606504, 1546606986),
(21, 'Heading', 'default', '[]', 9, 0, 'main', 0, 1, 0, 1546606874, 1546606874, NULL),
(22, 'Text', 'default', '{\"text\":\"<p>\\u00a0<span>We created the Website.com Site Builder with the user\'s perspective in mind. We wanted to offer a platform that would require no coding skills or design experience. We keep it simple, so users can focus on creating an amazing website that reflects their brand. Best of all - it\'s free. You can get online, showcase your brand, or start selling products right away.<\\/span><\\/p>\"}', 8, 0, 'main', 130, 1, 0, 1546607801, 1546607801, NULL),
(23, 'Text', 'default', '[]', 8, 0, 'main', 170, 1, 0, 1546607864, 1546607864, NULL),
(24, 'Heading', 'default', '[]', 0, 1, 'side1', 0, 1, 1, 1546608878, 1546608878, 1546609161),
(25, 'Gallery', 'default', '{\"images\":[{\"imageOriginal\":\"JHON_1.JPG\",\"title\":\"JHON_1.JPG\"},{\"imageOriginal\":\"joh2a_1_.jpg\",\"title\":\"joh2a_1_.jpg\"},{\"imageOriginal\":\"joh6a.jpg\",\"title\":\"joh6a.jpg\"}]}', 11, 0, 'main', 25, 1, 1, 1546608884, 1546608884, 1546609038),
(26, 'Heading', 'default', '{\"title\":\"Our Story\",\"level\":\"1\"}', 11, 0, 'main', 0, 1, 0, 1546608942, 1546608942, NULL),
(27, 'Text', 'default', '{\"text\":\"<p>\\u00a0<\\/p>\\n<p>Website.com began in 2005. After years in the web hosting industry, we realized that it was near impossible for the average Jane or Joe to create their own website. Traditional web hosting services were simply too complicated, time consuming, and expensive to manage.<\\/p>\\n<p>We created the Website.com Site Builder with the user\'s perspective in mind. We wanted to offer a platform that would require no coding skills or design experience. We keep it simple, so users can focus on creating an amazing website that reflects their brand. Best of all - it\'s free. You can get online, showcase your brand, or start selling products right away.<\\/p>\\n<p>After seeing an increased need for ecommerce solutions, we developed one of the only fully-featured, free and commission-free online store builders, allowing business owners to launch their online business.<\\/p>\\n<p>Today, we\'re proud to empower individuals and small business owners around the world. Everyone deserves a website, and we\'re excited to see what you create.<\\/p>\"}', 11, 0, 'main', 40, 1, 1, 1546609018, 1546609018, 1546609034),
(28, 'Text', 'default', '{\"text\":\"<p>&nbsp;<\\/p><p>Website.com began in 2005. After years in the web hosting industry, we realized that it was near impossible for the average Jane or Joe to create their own website. Traditional web hosting services were simply too complicated, time consuming, and expensive to manage.<\\/p>\"}', 11, 0, 'main', 20, 1, 0, 1546609033, 1546609033, NULL),
(29, 'Text', 'default', '{\"text\":\"<p>We created the Website.com Site Builder with the user\'s perspective in mind. We wanted to offer a platform that would require no coding skills or design experience. We keep it simple, so users can focus on creating an amazing website that reflects their brand. Best of all - it\'s free. You can get online, showcase your brand, or start selling products right away.<\\/p><p>After seeing an increased need for ecommerce solutions, we developed one of the only fully-featured, free and commission-free online store builders, allowing business owners to launch their online business.<\\/p><p>Today, we\'re proud to empower individuals and small business owners around the world. Everyone deserves a website, and we\'re excited to see what you create.<\\/p>\"}', 11, 0, 'main', 30, 1, 0, 1546609034, 1546609034, NULL),
(30, 'Html', 'default', '[]', 11, 0, 'main', 25, 1, 0, 1546609074, 1546609074, NULL),
(31, 'Heading', 'default', '{\"title\":\"Contact Us\",\"level\":\"1\"}', 12, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(32, 'Text', 'default', '{\"text\":\"<p><span>Aliquam erat volutpat. Donec rutrum venenatis dignissim. Duis eu neque in neque venenatis tincidunt sit amet sed velit. Pellentesque quis luctus orci. Phasellus sed aliquam risus, eu varius sapien. Etiam ac adipiscing enim, eu molestie erat. Donec sodales pulvinar lorem, ut sagittis purus suscipit nec. In id velit nec nisi porta egestas. Maecenas rutrum felis vel nunc varius, vel ornare lectus dignissim. Maecenas vitae ante dui. Maecenas sollicitudin dolor at enim porttitor, eu placerat nulla adipiscing. Morbi sed varius nisi, sed posuere risus. Ut velit urna, dignissim ac lobortis id, sollicitudin non libero. Donec arcu massa, facilisis ut sapien et, aliquet porta dui.<\\/span>\\u00a0<\\/p>\"}', 12, 0, 'main', 90, 1, 1, 1546604692, 1546604692, 1546610316),
(33, 'Form', 'default', '{\"fields\":[{\"label\":\"Name\",\"type\":\"Text\",\"required\":\"0\"},{\"label\":\"Email\",\"type\":\"Email\",\"required\":\"0\"},{\"label\":\"Text\",\"type\":\"Textarea\",\"required\":\"0\"}],\"success\":\"\",\"sendTo\":\"default\",\"emails\":\"\",\"buttonText\":\"\"}', 12, 0, 'main', 90, 1, 0, 1546610321, 1546610321, NULL),
(34, 'Heading', 'default', '{\"title\":\"Our Story\",\"level\":\"1\"}', 14, 0, 'main', 0, 1, 0, 1546608942, 1546608942, NULL),
(35, 'Text', 'default', '{\"text\":\"<p>&nbsp;<\\/p><p>Website.com began in 2005. After years in the web hosting industry, we realized that it was near impossible for the average Jane or Joe to create their own website. Traditional web hosting services were simply too complicated, time consuming, and expensive to manage.<\\/p>\"}', 14, 0, 'main', 20, 1, 0, 1546609033, 1546609033, NULL),
(36, 'Html', 'default', '[]', 14, 0, 'main', 25, 1, 0, 1546609074, 1546609074, NULL),
(37, 'Text', 'default', '{\"text\":\"<p>We created the Website.com Site Builder with the user\'s perspective in mind. We wanted to offer a platform that would require no coding skills or design experience. We keep it simple, so users can focus on creating an amazing website that reflects their brand. Best of all - it\'s free. You can get online, showcase your brand, or start selling products right away.<\\/p><p>After seeing an increased need for ecommerce solutions, we developed one of the only fully-featured, free and commission-free online store builders, allowing business owners to launch their online business.<\\/p><p>Today, we\'re proud to empower individuals and small business owners around the world. Everyone deserves a website, and we\'re excited to see what you create.<\\/p>\"}', 14, 0, 'main', 30, 1, 0, 1546609034, 1546609034, NULL),
(38, 'Heading', 'default', '{\"title\":\"Contact Us\",\"level\":\"1\"}', 15, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(39, 'Form', 'default', '{\"fields\":[{\"label\":\"Name\",\"type\":\"Text\",\"required\":\"0\"},{\"label\":\"Email\",\"type\":\"Email\",\"required\":\"0\"},{\"label\":\"Text\",\"type\":\"Textarea\",\"required\":\"0\"}],\"success\":\"\",\"sendTo\":\"default\",\"emails\":\"\",\"buttonText\":\"\"}', 15, 0, 'main', 90, 1, 0, 1546610321, 1546610321, NULL),
(40, 'Text', 'default', '[]', 8, 0, 'main', 110, 1, 0, 1546610948, 1546610948, NULL),
(41, 'Divider', 'default', '[]', 8, 0, 'main', 100, 1, 0, 1546610950, 1546610950, NULL),
(42, 'Gallery', 'default', '{\"images\":[{\"imageOriginal\":\"LOGO.png\",\"title\":\"LOGO.png\"}]}', 8, 0, 'main', 95, 1, 0, 1546610953, 1546610953, NULL),
(43, 'Html', 'default', '[]', 15, 0, 'main', 10, 1, 0, 1546610977, 1546610977, NULL),
(44, 'Map', 'default', '[]', 15, 0, 'main', 30, 1, 0, 1546610980, 1546610980, NULL),
(45, 'Form', 'default', '{\"fields\":[{\"type\":\"Text\",\"label\":\"Name\",\"options\":[]},{\"type\":\"Email\",\"label\":\"Email\",\"options\":[]},{\"type\":\"Textarea\",\"label\":\"Text\",\"options\":[]}]}', 15, 0, 'main', -30, 1, 0, 1546610984, 1546610984, NULL),
(46, 'Form', 'default', '{\"fields\":[{\"type\":\"Text\",\"label\":\"Name\",\"options\":[]},{\"type\":\"Email\",\"label\":\"Email\",\"options\":[]},{\"type\":\"Textarea\",\"label\":\"Text\",\"options\":[]}]}', 16, 0, 'main', -30, 1, 1, 1546610984, 1546610984, 1546611035),
(47, 'Html', 'default', '[]', 16, 0, 'main', 10, 1, 1, 1546610977, 1546610977, 1546611054),
(48, 'Map', 'default', '[]', 16, 0, 'main', 30, 1, 1, 1546610980, 1546610980, 1546611045),
(49, 'Heading', 'default', '{\"title\":\"Contact Us\",\"level\":\"1\"}', 16, 0, 'main', 50, 1, 0, 1546604692, 1546604692, NULL),
(50, 'Form', 'default', '{\"fields\":[{\"label\":\"Name\",\"type\":\"Text\",\"required\":\"0\"},{\"label\":\"Email\",\"type\":\"Email\",\"required\":\"0\"},{\"label\":\"Text\",\"type\":\"Textarea\",\"required\":\"0\"}],\"success\":\"\",\"sendTo\":\"default\",\"emails\":\"\",\"buttonText\":\"\"}', 16, 0, 'main', 90, 1, 1, 1546610321, 1546610321, 1546611039),
(51, 'Form', 'default', '{\"fields\":[{\"type\":\"Text\",\"label\":\"Name\",\"options\":[]},{\"type\":\"Email\",\"label\":\"Email\",\"options\":[]},{\"type\":\"Textarea\",\"label\":\"Text\",\"options\":[]}]}', 16, 0, 'main', 90, 1, 0, 1546611047, 1546611047, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ip_widget_order`
--

CREATE TABLE `ip_widget_order` (
  `widgetName` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ip_widget_order`
--

INSERT INTO `ip_widget_order` (`widgetName`, `priority`) VALUES
('Divider', 30),
('File', 60),
('Gallery', 50),
('Heading', 10),
('Html', 80),
('Image', 40),
('Map', 100),
('Text', 20),
('Video', 90);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ip_administrator`
--
ALTER TABLE `ip_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `ip_email_queue`
--
ALTER TABLE `ip_email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_inline_value_global`
--
ALTER TABLE `ip_inline_value_global`
  ADD PRIMARY KEY (`plugin`,`key`);

--
-- Indexes for table `ip_inline_value_language`
--
ALTER TABLE `ip_inline_value_language`
  ADD PRIMARY KEY (`plugin`,`key`,`languageId`);

--
-- Indexes for table `ip_inline_value_page`
--
ALTER TABLE `ip_inline_value_page`
  ADD PRIMARY KEY (`plugin`,`key`,`pageId`);

--
-- Indexes for table `ip_language`
--
ALTER TABLE `ip_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_log`
--
ALTER TABLE `ip_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time` (`time`),
  ADD KEY `message` (`message`);

--
-- Indexes for table `ip_page`
--
ALTER TABLE `ip_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`urlPath`,`languageCode`);

--
-- Indexes for table `ip_page_storage`
--
ALTER TABLE `ip_page_storage`
  ADD UNIQUE KEY `pageKey` (`pageId`,`key`);

--
-- Indexes for table `ip_permission`
--
ALTER TABLE `ip_permission`
  ADD PRIMARY KEY (`administratorId`,`permission`);

--
-- Indexes for table `ip_plugin`
--
ALTER TABLE `ip_plugin`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `ip_repository_file`
--
ALTER TABLE `ip_repository_file`
  ADD PRIMARY KEY (`fileId`),
  ADD KEY `filename` (`filename`);

--
-- Indexes for table `ip_repository_reflection`
--
ALTER TABLE `ip_repository_reflection`
  ADD PRIMARY KEY (`reflectionId`),
  ADD KEY `optionsFingerprint` (`optionsFingerprint`,`original`);

--
-- Indexes for table `ip_revision`
--
ALTER TABLE `ip_revision`
  ADD PRIMARY KEY (`revisionId`);

--
-- Indexes for table `ip_storage`
--
ALTER TABLE `ip_storage`
  ADD UNIQUE KEY `pluginkey` (`plugin`,`key`);

--
-- Indexes for table `ip_theme_storage`
--
ALTER TABLE `ip_theme_storage`
  ADD UNIQUE KEY `themeKey` (`theme`,`key`);

--
-- Indexes for table `ip_widget`
--
ALTER TABLE `ip_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_widget_order`
--
ALTER TABLE `ip_widget_order`
  ADD UNIQUE KEY `widgetName` (`widgetName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ip_administrator`
--
ALTER TABLE `ip_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ip_email_queue`
--
ALTER TABLE `ip_email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ip_language`
--
ALTER TABLE `ip_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ip_log`
--
ALTER TABLE `ip_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ip_page`
--
ALTER TABLE `ip_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ip_repository_file`
--
ALTER TABLE `ip_repository_file`
  MODIFY `fileId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ip_repository_reflection`
--
ALTER TABLE `ip_repository_reflection`
  MODIFY `reflectionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `ip_revision`
--
ALTER TABLE `ip_revision`
  MODIFY `revisionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `ip_widget`
--
ALTER TABLE `ip_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
