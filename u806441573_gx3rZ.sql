-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2025 at 04:18 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u806441573_gx3rZ`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 4, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-02-04 00:00:00', '2022-02-04 00:00:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\" rel=\"nofollow ugc\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(3, 4, '1xbet зеркало мобильная', 'richarliahor1980@gmail.com', 'https://bet-promokod.ru/', '188.134.68.55', '2023-02-15 21:32:34', '2023-02-15 21:32:34', '1xBet является одной из самых популярных на рынке. <a href=\"https://bet-promokod.ru/\" rel=\"nofollow ugc\">1xbet зеркало мобильная</a> Огромный выбор спортивных и киберспортивных событий, десятки открытых линий, самые высокие коэффициенты. Также, БК имеет широкий функционал и немногие дает возможность совершать ставки по уникальным промокодам. Используя промокоды, вы можете получить реальный денежный выигрыш, не внося абсолютно никаких средств. Фантастика? – Нет, Реальность Узнать актуальный промокод вы можете прямо сейчас, однако использовать его необходимо в соответствии с правилами и инструкциями, которые приведены ниже.', 0, '0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'comment', 0, 0),
(4, 4, 'buying cialis in australia', '', 'https://cialssis.com', '191.102.155.13', '2024-01-17 19:10:36', '2024-01-17 19:10:36', '<strong>buying cialis in australia</strong>\n\nbuying cialis in australia', 0, '0', 'PHP/5.3.13', 'trackback', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_litespeed_url`
--

CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL,
  `url` varchar(500) NOT NULL,
  `cache_tags` varchar(1000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_litespeed_url_file`
--

CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `mobile` tinyint(4) NOT NULL COMMENT 'mobile=1',
  `webp` tinyint(4) NOT NULL COMMENT 'webp=1',
  `expired` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://alhashemico.com', 'yes'),
(2, 'home', 'https://alhashemico.com', 'yes'),
(3, 'blogname', 'www.alhashemico.com', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jafarsadik@outlook.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:17:\"breeze/breeze.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:35:\"litespeed-cache/litespeed-cache.php\";i:5;s:37:\"object-cache-pro/object-cache-pro.php\";i:6;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:95:\"/home/u806441573/domains/alhashemico.com/public_html/wp-content/themes/alhashemia/functions.php\";i:2;s:96:\"/home/u806441573/domains/alhashemico.com/public_html/wp-content/themes/alhashemia/front-page.php\";i:3;s:91:\"/home/u806441573/domains/alhashemico.com/public_html/wp-content/themes/alhashemia/style.css\";i:4;s:91:\"/home/u806441573/domains/alhashemico.com/public_html/wp-content/themes/alhashemia/index.php\";i:5;s:92:\"/home/u806441573/domains/alhashemico.com/public_html/wp-content/themes/alhashemia/footer.php\";}', 'no'),
(40, 'template', 'alhashemia', 'yes'),
(41, 'stylesheet', 'alhashemia', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '58975', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:3:{i:0;b:0;s:28:\"malcare-security/malcare.php\";a:2:{i:0;s:10:\"MCWPAction\";i:1;s:9:\"uninstall\";}s:35:\"litespeed-cache/litespeed-cache.php\";s:47:\"LiteSpeed\\Activation::uninstall_litespeed_cache\";}', 'yes'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1755499495', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'off'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'off'),
(102, 'widget_block', 'a:3:{i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:11:{i:1743783494;a:2:{s:27:\"litespeed_task_imgoptm_pull\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}s:19:\"litespeed_task_lqip\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1743784293;a:1:{s:27:\"objectcache_prune_analytics\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1743786621;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1743804551;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743808221;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1743835541;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743851421;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743861353;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1743861358;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1744138561;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1644052248;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(119, 'recovery_keys', 'a:0:{}', 'off'),
(120, 'https_detection_errors', 'a:0:{}', 'off'),
(129, 'recently_activated', 'a:2:{s:91:\"all-in-one-wp-migration-unlimited-extension/all-in-one-wp-migration-unlimited-extension.php\";i:1739947635;s:35:\"litespeed-cache/litespeed-cache.php\";i:1739947629;}', 'off'),
(130, 'breeze_advanced_settings_120', 'yes', 'yes'),
(131, 'breeze_basic_settings', 'a:10:{s:13:\"breeze-active\";s:1:\"1\";s:19:\"breeze-cross-origin\";s:1:\"0\";s:20:\"breeze-disable-admin\";a:5:{s:13:\"administrator\";i:0;s:6:\"editor\";i:0;s:6:\"author\";i:0;s:11:\"contributor\";i:0;s:10:\"subscriber\";i:0;}s:23:\"breeze-gzip-compression\";s:1:\"1\";s:20:\"breeze-desktop-cache\";s:1:\"1\";s:19:\"breeze-mobile-cache\";s:1:\"1\";s:20:\"breeze-browser-cache\";s:1:\"1\";s:16:\"breeze-lazy-load\";s:1:\"0\";s:23:\"breeze-lazy-load-native\";s:1:\"0\";s:20:\"breeze-display-clean\";s:1:\"1\";}', 'yes'),
(132, 'breeze_advanced_settings', 'a:3:{s:19:\"breeze-exclude-urls\";a:0:{}s:20:\"cached-query-strings\";a:0:{}s:15:\"breeze-wp-emoji\";s:1:\"0\";}', 'yes'),
(133, 'breeze_preload_settings', 'a:2:{s:20:\"breeze-preload-fonts\";a:0:{}s:20:\"breeze-preload-links\";s:1:\"0\";}', 'yes'),
(134, 'breeze_file_settings', 'a:4:{s:19:\"breeze-exclude-urls\";a:0:{}s:20:\"cached-query-strings\";a:0:{}s:15:\"breeze-wp-emoji\";s:1:\"0\";s:23:\"breeze-delay-js-scripts\";a:32:{i:0;s:4:\"gtag\";i:1;s:14:\"document.write\";i:2;s:8:\"html5.js\";i:3;s:11:\"show_ads.js\";i:4;s:9:\"google_ad\";i:5;s:17:\"blogcatalog.com/w\";i:6;s:15:\"tweetmeme.com/i\";i:7;s:14:\"mybloglog.com/\";i:8;s:14:\"histats.com/js\";i:9;s:22:\"ads.smowtion.com/ad.js\";i:10;s:34:\"statcounter.com/counter/counter.js\";i:11;s:16:\"widgets.amung.us\";i:12;s:21:\"ws.amazon.com/widgets\";i:13;s:19:\"media.fastclick.net\";i:14;s:5:\"/ads/\";i:15;s:36:\"comment-form-quicktags/quicktags.php\";i:16;s:9:\"edToolbar\";i:17;s:17:\"intensedebate.com\";i:18;s:20:\"scripts.chitika.net/\";i:19;s:9:\"_gaq.push\";i:20;s:12:\"jotform.com/\";i:21;s:16:\"admin-bar.min.js\";i:22;s:21:\"GoogleAnalyticsObject\";i:23;s:20:\"plupload.full.min.js\";i:24;s:17:\"syntaxhighlighter\";i:25;s:11:\"adsbygoogle\";i:26;s:15:\"gist.github.com\";i:27;s:4:\"_stq\";i:28;s:5:\"nonce\";i:29;s:7:\"post_id\";i:30;s:14:\"data-noptimize\";i:31;s:16:\"googletagmanager\";}}', 'yes'),
(135, 'breeze_cdn_integration', 'a:5:{s:10:\"cdn-active\";s:1:\"0\";s:7:\"cdn-url\";s:0:\"\";s:11:\"cdn-content\";a:2:{i:0;s:11:\"wp-includes\";i:1;s:10:\"wp-content\";}s:19:\"cdn-exclude-content\";a:1:{i:0;s:4:\".php\";}s:17:\"cdn-relative-path\";s:1:\"1\";}', 'yes'),
(136, 'breeze_varnish_cache', 'a:3:{s:18:\"auto-purge-varnish\";s:1:\"1\";s:24:\"breeze-varnish-server-ip\";s:9:\"127.0.0.1\";s:10:\"breeze-ttl\";i:1440;}', 'yes'),
(138, 'db_upgraded', '', 'on'),
(142, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"jafarsadik@outlook.com\";s:7:\"version\";s:5:\"6.7.2\";s:9:\"timestamp\";i:1739321593;}', 'off'),
(143, 'breeze_first_install', 'no', 'yes'),
(145, 'mcredirect', 'no', 'no'),
(146, 'bvActivateTime', '1643973073', 'no'),
(148, 'bvAccountsList', 'a:0:{}', 'off'),
(149, 'bvLastRecvTime', '1735284766', 'off'),
(150, 'bvApiPublic', '2e4a227f4b47470c229d0fc2b65d22d9', 'no'),
(151, 'bvwatchtime', '1735284768', 'off'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(158, 'current_theme', 'Alhashemia', 'yes'),
(159, 'theme_mods_alhashemia', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(160, 'theme_switched', '', 'yes'),
(170, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(171, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'category_children', 'a:0:{}', 'yes'),
(175, 'gallery-year_children', 'a:0:{}', 'yes'),
(182, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"6.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1644999310;s:7:\"version\";s:5:\"5.5.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(183, 'breeze_show_incompatibility', 'd751713988987e9331980363e24189ce', 'no'),
(318, 'secret_key', '7xIk:25!;^ES1<uU+]|4(,MYS%2;(l.`cJxxG*Mwc$&~uwJpMDEi31EY`j8}2k,p', 'no'),
(10158, 'user_count', '1', 'no'),
(11746, 'objectcache_license', 'O:8:\"stdClass\":7:{s:4:\"plan\";N;s:5:\"state\";s:7:\"invalid\";s:5:\"token\";N;s:12:\"organization\";O:8:\"stdClass\":2:{s:4:\"name\";N;s:4:\"slug\";N;}s:9:\"stability\";s:5:\"alpha\";s:10:\"last_check\";i:1743783467;s:11:\"valid_as_of\";N;}', 'off'),
(11749, 'bv_site_settings', 'a:0:{}', 'no'),
(12114, 'objectcache_flushlog', 'a:10:{i:0;a:6:{s:4:\"time\";i:1739947343;s:4:\"user\";i:1;s:4:\"site\";N;s:4:\"cron\";b:0;s:3:\"cli\";b:0;s:5:\"trace\";s:360:\"wp_dashboard, do_meta_boxes, wp_dashboard_quick_press, get_default_post_to_edit, wp_insert_post, do_action(\'save_post\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCache->purge_post_on_update, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:1;a:6:{s:4:\"time\";i:1739883696;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:2;a:6:{s:4:\"time\";i:1739806166;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:3;a:6:{s:4:\"time\";i:1739715198;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:4;a:6:{s:4:\"time\";i:1739618829;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:5;a:6:{s:4:\"time\";i:1739540682;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:6;a:6:{s:4:\"time\";i:1739450550;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:7;a:6:{s:4:\"time\";i:1739358741;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:8;a:6:{s:4:\"time\";i:1739321590;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:413:\"do_action_ref_array(\'wp_version_check\'), WP_Hook->do_action, WP_Hook->apply_filters, wp_version_check, do_action(\'wp_maybe_auto_update\'), WP_Hook->do_action, WP_Hook->apply_filters, wp_maybe_auto_update, WP_Automatic_Updater->run, WP_Automatic_Updater->update, Core_Upgrader->upgrade, update_core, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}i:9;a:6:{s:4:\"time\";i:1739282115;s:4:\"user\";N;s:4:\"site\";N;s:4:\"cron\";b:1;s:3:\"cli\";b:0;s:5:\"trace\";s:282:\"do_action_ref_array(\'breeze_purge_cache\'), WP_Hook->do_action, WP_Hook->apply_filters, Breeze_PurgeCacheTime->schedule_varnish, Breeze_PurgeCache::breeze_cache_flush, wp_cache_flush, apply_filters(\'pre_objectcache_flush\'), WP_Hook->apply_filters, RedisCachePro\\Plugin->maybeLogFlush\";}}', 'off'),
(12632, 'wp_attachment_pages_enabled', '1', 'yes'),
(13781, 'can_compress_scripts', '0', 'on'),
(13784, 'ai1wm_secret_key', 'qEArjvd6XBJe', 'auto'),
(13785, 'ai1wm_backups_labels', 'a:0:{}', 'auto'),
(13786, 'ai1wm_sites_links', 'a:0:{}', 'auto'),
(13787, 'ai1wm_backups_path', '/home/u806441573/domains/alhashemico.com/public_html/wp-content/ai1wm-backups', 'auto'),
(13788, 'swift_performance_plugin_organizer', 'a:0:{}', 'auto'),
(13789, 'jetpack_active_modules', 'a:0:{}', 'auto'),
(13790, 'litespeed.conf.__activation', '-1', 'auto'),
(13791, 'litespeed.cloud._summary', '{\"curr_request.ver_check\":0,\"last_request.ver_check\":1739947633}', 'auto'),
(13792, 'litespeed.conf._version', '6.5.4', 'auto'),
(13793, 'litespeed.conf.hash', 'C85Ntj2I4DKfZW7iZyVGrKPQsVNI5MHx', 'auto'),
(13794, 'litespeed.conf.auto_upgrade', '', 'auto'),
(13795, 'litespeed.conf.api_key', '', 'auto'),
(13796, 'litespeed.conf.server_ip', '', 'auto'),
(13797, 'litespeed.conf.guest', '', 'auto'),
(13798, 'litespeed.conf.guest_optm', '', 'auto'),
(13799, 'litespeed.conf.news', '1', 'auto'),
(13800, 'litespeed.conf.guest_uas', '[\"Lighthouse\",\"GTmetrix\",\"Google\",\"Pingdom\",\"bot\",\"spider\",\"PTST\",\"HeadlessChrome\"]', 'auto'),
(13801, 'litespeed.conf.guest_ips', '[\"208.70.247.157\",\"172.255.48.130\",\"172.255.48.131\",\"172.255.48.132\",\"172.255.48.133\",\"172.255.48.134\",\"172.255.48.135\",\"172.255.48.136\",\"172.255.48.137\",\"172.255.48.138\",\"172.255.48.139\",\"172.255.48.140\",\"172.255.48.141\",\"172.255.48.142\",\"172.255.48.143\",\"172.255.48.144\",\"172.255.48.145\",\"172.255.48.146\",\"172.255.48.147\",\"52.229.122.240\",\"104.214.72.101\",\"13.66.7.11\",\"13.85.24.83\",\"13.85.24.90\",\"13.85.82.26\",\"40.74.242.253\",\"40.74.243.13\",\"40.74.243.176\",\"104.214.48.247\",\"157.55.189.189\",\"104.214.110.135\",\"70.37.83.240\",\"65.52.36.250\",\"13.78.216.56\",\"52.162.212.163\",\"23.96.34.105\",\"65.52.113.236\",\"172.255.61.34\",\"172.255.61.35\",\"172.255.61.36\",\"172.255.61.37\",\"172.255.61.38\",\"172.255.61.39\",\"172.255.61.40\",\"104.41.2.19\",\"191.235.98.164\",\"191.235.99.221\",\"191.232.194.51\",\"52.237.235.185\",\"52.237.250.73\",\"52.237.236.145\",\"104.211.143.8\",\"104.211.165.53\",\"52.172.14.87\",\"40.83.89.214\",\"52.175.57.81\",\"20.188.63.151\",\"20.52.36.49\",\"52.246.165.153\",\"51.144.102.233\",\"13.76.97.224\",\"102.133.169.66\",\"52.231.199.170\",\"13.53.162.7\",\"40.123.218.94\"]', 'auto'),
(13802, 'litespeed.conf.cache', '1', 'auto'),
(13803, 'litespeed.conf.cache-priv', '1', 'auto'),
(13804, 'litespeed.conf.cache-commenter', '1', 'auto'),
(13805, 'litespeed.conf.cache-rest', '1', 'auto'),
(13806, 'litespeed.conf.cache-page_login', '1', 'auto'),
(13807, 'litespeed.conf.cache-resources', '1', 'auto'),
(13808, 'litespeed.conf.cache-mobile', '', 'auto'),
(13809, 'litespeed.conf.cache-mobile_rules', '[\"Mobile\",\"Android\",\"Silk\\/\",\"Kindle\",\"BlackBerry\",\"Opera Mini\",\"Opera Mobi\"]', 'auto'),
(13810, 'litespeed.conf.cache-browser', '', 'auto'),
(13811, 'litespeed.conf.cache-exc_useragents', '[]', 'auto'),
(13812, 'litespeed.conf.cache-exc_cookies', '[]', 'auto'),
(13813, 'litespeed.conf.cache-exc_qs', '[]', 'auto'),
(13814, 'litespeed.conf.cache-exc_cat', '[]', 'auto'),
(13815, 'litespeed.conf.cache-exc_tag', '[]', 'auto'),
(13816, 'litespeed.conf.cache-force_uri', '[]', 'auto'),
(13817, 'litespeed.conf.cache-force_pub_uri', '[]', 'auto'),
(13818, 'litespeed.conf.cache-priv_uri', '[]', 'auto'),
(13819, 'litespeed.conf.cache-exc', '[]', 'auto'),
(13820, 'litespeed.conf.cache-exc_roles', '[]', 'auto'),
(13821, 'litespeed.conf.cache-drop_qs', '[\"fbclid\",\"gclid\",\"utm*\",\"_ga\"]', 'auto'),
(13822, 'litespeed.conf.cache-ttl_pub', '604800', 'auto'),
(13823, 'litespeed.conf.cache-ttl_priv', '1800', 'auto'),
(13824, 'litespeed.conf.cache-ttl_frontpage', '604800', 'auto'),
(13825, 'litespeed.conf.cache-ttl_feed', '604800', 'auto'),
(13826, 'litespeed.conf.cache-ttl_rest', '604800', 'auto'),
(13827, 'litespeed.conf.cache-ttl_browser', '31557600', 'auto'),
(13828, 'litespeed.conf.cache-ttl_status', '[\"404 3600\",\"500 600\"]', 'auto'),
(13829, 'litespeed.conf.cache-login_cookie', '', 'auto'),
(13830, 'litespeed.conf.cache-ajax_ttl', '[]', 'auto'),
(13831, 'litespeed.conf.cache-vary_cookies', '[]', 'auto'),
(13832, 'litespeed.conf.cache-vary_group', '[]', 'auto'),
(13833, 'litespeed.conf.purge-upgrade', '1', 'auto'),
(13834, 'litespeed.conf.purge-stale', '', 'auto'),
(13835, 'litespeed.conf.purge-post_all', '', 'auto'),
(13836, 'litespeed.conf.purge-post_f', '1', 'auto'),
(13837, 'litespeed.conf.purge-post_h', '1', 'auto'),
(13838, 'litespeed.conf.purge-post_p', '1', 'auto'),
(13839, 'litespeed.conf.purge-post_pwrp', '1', 'auto'),
(13840, 'litespeed.conf.purge-post_a', '1', 'auto'),
(13841, 'litespeed.conf.purge-post_y', '', 'auto'),
(13842, 'litespeed.conf.purge-post_m', '1', 'auto'),
(13843, 'litespeed.conf.purge-post_d', '', 'auto'),
(13844, 'litespeed.conf.purge-post_t', '1', 'auto'),
(13845, 'litespeed.conf.purge-post_pt', '1', 'auto'),
(13846, 'litespeed.conf.purge-timed_urls', '[]', 'auto'),
(13847, 'litespeed.conf.purge-timed_urls_time', '', 'auto'),
(13848, 'litespeed.conf.purge-hook_all', '[\"switch_theme\",\"wp_create_nav_menu\",\"wp_update_nav_menu\",\"wp_delete_nav_menu\",\"create_term\",\"edit_terms\",\"delete_term\",\"add_link\",\"edit_link\",\"delete_link\"]', 'auto'),
(13849, 'litespeed.conf.esi', '', 'auto'),
(13850, 'litespeed.conf.esi-cache_admbar', '1', 'auto'),
(13851, 'litespeed.conf.esi-cache_commform', '1', 'auto'),
(13852, 'litespeed.conf.esi-nonce', '[\"stats_nonce\",\"subscribe_nonce\"]', 'auto'),
(13853, 'litespeed.conf.util-instant_click', '', 'auto'),
(13854, 'litespeed.conf.util-no_https_vary', '', 'auto'),
(13855, 'litespeed.conf.debug-disable_all', '', 'auto'),
(13856, 'litespeed.conf.debug', '', 'auto'),
(13857, 'litespeed.conf.debug-ips', '[\"127.0.0.1\"]', 'auto'),
(13858, 'litespeed.conf.debug-level', '', 'auto'),
(13859, 'litespeed.conf.debug-filesize', '3', 'auto'),
(13860, 'litespeed.conf.debug-collapse_qs', '', 'auto'),
(13861, 'litespeed.conf.debug-inc', '[]', 'auto'),
(13862, 'litespeed.conf.debug-exc', '[]', 'auto'),
(13863, 'litespeed.conf.debug-exc_strings', '[]', 'auto'),
(13864, 'litespeed.conf.db_optm-revisions_max', '0', 'auto'),
(13865, 'litespeed.conf.db_optm-revisions_age', '0', 'auto'),
(13866, 'litespeed.conf.optm-css_min', '', 'auto'),
(13867, 'litespeed.conf.optm-css_comb', '', 'auto'),
(13868, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'auto'),
(13869, 'litespeed.conf.optm-ucss', '', 'auto'),
(13870, 'litespeed.conf.optm-ucss_inline', '', 'auto'),
(13871, 'litespeed.conf.optm-ucss_whitelist', '[]', 'auto'),
(13872, 'litespeed.conf.optm-ucss_file_exc_inline', '[]', 'auto'),
(13873, 'litespeed.conf.optm-ucss_exc', '[]', 'auto'),
(13874, 'litespeed.conf.optm-css_exc', '[]', 'auto'),
(13875, 'litespeed.conf.optm-js_min', '', 'auto'),
(13876, 'litespeed.conf.optm-js_comb', '', 'auto'),
(13877, 'litespeed.conf.optm-js_comb_ext_inl', '1', 'auto'),
(13878, 'litespeed.conf.optm-js_delay_inc', '[]', 'auto'),
(13879, 'litespeed.conf.optm-js_exc', '[\"jquery.js\",\"jquery.min.js\"]', 'auto'),
(13880, 'litespeed.conf.optm-html_min', '', 'auto'),
(13881, 'litespeed.conf.optm-html_lazy', '[]', 'auto'),
(13882, 'litespeed.conf.optm-html_skip_comment', '[]', 'auto'),
(13883, 'litespeed.conf.optm-qs_rm', '', 'auto'),
(13884, 'litespeed.conf.optm-ggfonts_rm', '', 'auto'),
(13885, 'litespeed.conf.optm-css_async', '', 'auto'),
(13886, 'litespeed.conf.optm-ccss_per_url', '', 'auto'),
(13887, 'litespeed.conf.optm-ccss_sep_posttype', '[\"page\"]', 'auto'),
(13888, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'auto'),
(13889, 'litespeed.conf.optm-css_async_inline', '1', 'auto'),
(13890, 'litespeed.conf.optm-css_font_display', '', 'auto'),
(13891, 'litespeed.conf.optm-js_defer', '', 'auto'),
(13892, 'litespeed.conf.optm-emoji_rm', '', 'auto'),
(13893, 'litespeed.conf.optm-noscript_rm', '', 'auto'),
(13894, 'litespeed.conf.optm-ggfonts_async', '', 'auto'),
(13895, 'litespeed.conf.optm-exc_roles', '[]', 'auto'),
(13896, 'litespeed.conf.optm-ccss_con', '', 'auto'),
(13897, 'litespeed.conf.optm-js_defer_exc', '[\"jquery.js\",\"jquery.min.js\",\"gtm.js\",\"analytics.js\"]', 'auto'),
(13898, 'litespeed.conf.optm-gm_js_exc', '[]', 'auto'),
(13899, 'litespeed.conf.optm-dns_prefetch', '[]', 'auto'),
(13900, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'auto'),
(13901, 'litespeed.conf.optm-dns_preconnect', '[]', 'auto'),
(13902, 'litespeed.conf.optm-exc', '[]', 'auto'),
(13903, 'litespeed.conf.optm-guest_only', '1', 'auto'),
(13904, 'litespeed.conf.object', '', 'auto'),
(13905, 'litespeed.conf.object-kind', '', 'auto'),
(13906, 'litespeed.conf.object-host', 'localhost', 'auto'),
(13907, 'litespeed.conf.object-port', '11211', 'auto'),
(13908, 'litespeed.conf.object-life', '360', 'auto'),
(13909, 'litespeed.conf.object-persistent', '1', 'auto'),
(13910, 'litespeed.conf.object-admin', '1', 'auto'),
(13911, 'litespeed.conf.object-transients', '1', 'auto'),
(13912, 'litespeed.conf.object-db_id', '0', 'auto'),
(13913, 'litespeed.conf.object-user', '', 'auto'),
(13914, 'litespeed.conf.object-pswd', '', 'auto'),
(13915, 'litespeed.conf.object-global_groups', '[\"users\",\"userlogins\",\"useremail\",\"userslugs\",\"usermeta\",\"user_meta\",\"site-transient\",\"site-options\",\"site-lookup\",\"site-details\",\"blog-lookup\",\"blog-details\",\"blog-id-cache\",\"rss\",\"global-posts\",\"global-cache-test\"]', 'auto'),
(13916, 'litespeed.conf.object-non_persistent_groups', '[\"comment\",\"counts\",\"plugins\",\"wc_session_id\"]', 'auto'),
(13917, 'litespeed.conf.discuss-avatar_cache', '', 'auto'),
(13918, 'litespeed.conf.discuss-avatar_cron', '', 'auto'),
(13919, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'auto'),
(13920, 'litespeed.conf.optm-localize', '', 'auto'),
(13921, 'litespeed.conf.optm-localize_domains', '[\"### Popular scripts ###\",\"https:\\/\\/platform.twitter.com\\/widgets.js\",\"https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js\"]', 'auto'),
(13922, 'litespeed.conf.media-lazy', '', 'auto'),
(13923, 'litespeed.conf.media-lazy_placeholder', '', 'auto'),
(13924, 'litespeed.conf.media-placeholder_resp', '', 'auto'),
(13925, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'auto'),
(13926, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"{width}\" height=\"{height}\" viewBox=\"0 0 {width} {height}\"><rect width=\"100%\" height=\"100%\" style=\"fill:{color};fill-opacity: 0.1;\"/></svg>', 'auto'),
(13927, 'litespeed.conf.media-lqip', '', 'auto'),
(13928, 'litespeed.conf.media-lqip_qual', '4', 'auto'),
(13929, 'litespeed.conf.media-lqip_min_w', '150', 'auto'),
(13930, 'litespeed.conf.media-lqip_min_h', '150', 'auto'),
(13931, 'litespeed.conf.media-placeholder_resp_async', '1', 'auto'),
(13932, 'litespeed.conf.media-iframe_lazy', '', 'auto'),
(13933, 'litespeed.conf.media-add_missing_sizes', '', 'auto'),
(13934, 'litespeed.conf.media-lazy_exc', '[]', 'auto'),
(13935, 'litespeed.conf.media-lazy_cls_exc', '[\"wmu-preview-img\"]', 'auto'),
(13936, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'auto'),
(13937, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'auto'),
(13938, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'auto'),
(13939, 'litespeed.conf.media-lazy_uri_exc', '[]', 'auto'),
(13940, 'litespeed.conf.media-lqip_exc', '[]', 'auto'),
(13941, 'litespeed.conf.media-vpi', '', 'auto'),
(13942, 'litespeed.conf.media-vpi_cron', '', 'auto'),
(13943, 'litespeed.conf.img_optm-auto', '', 'auto'),
(13944, 'litespeed.conf.img_optm-cron', '1', 'auto'),
(13945, 'litespeed.conf.img_optm-ori', '1', 'auto'),
(13946, 'litespeed.conf.img_optm-rm_bkup', '', 'auto'),
(13947, 'litespeed.conf.img_optm-webp', '', 'auto'),
(13948, 'litespeed.conf.img_optm-lossless', '', 'auto'),
(13949, 'litespeed.conf.img_optm-exif', '1', 'auto'),
(13950, 'litespeed.conf.img_optm-webp_attr', '[\"img.src\",\"div.data-thumb\",\"img.data-src\",\"img.data-lazyload\",\"div.data-large_image\",\"img.retina_logo_url\",\"div.data-parallax-image\",\"div.data-vc-parallax-image\",\"video.poster\"]', 'auto'),
(13951, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'auto'),
(13952, 'litespeed.conf.img_optm-jpg_quality', '82', 'auto'),
(13953, 'litespeed.conf.crawler', '', 'auto'),
(13954, 'litespeed.conf.crawler-usleep', '500', 'auto'),
(13955, 'litespeed.conf.crawler-run_duration', '400', 'auto'),
(13956, 'litespeed.conf.crawler-run_interval', '600', 'auto'),
(13957, 'litespeed.conf.crawler-crawl_interval', '302400', 'auto'),
(13958, 'litespeed.conf.crawler-threads', '3', 'auto'),
(13959, 'litespeed.conf.crawler-timeout', '30', 'auto'),
(13960, 'litespeed.conf.crawler-load_limit', '1', 'auto'),
(13961, 'litespeed.conf.crawler-sitemap', '', 'auto'),
(13962, 'litespeed.conf.crawler-drop_domain', '1', 'auto'),
(13963, 'litespeed.conf.crawler-map_timeout', '120', 'auto'),
(13964, 'litespeed.conf.crawler-roles', '[]', 'auto'),
(13965, 'litespeed.conf.crawler-cookies', '[]', 'auto'),
(13966, 'litespeed.conf.misc-heartbeat_front', '', 'auto'),
(13967, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'auto'),
(13968, 'litespeed.conf.misc-heartbeat_back', '', 'auto'),
(13969, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'auto'),
(13970, 'litespeed.conf.misc-heartbeat_editor', '', 'auto'),
(13971, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'auto'),
(13972, 'litespeed.conf.cdn', '', 'auto'),
(13973, 'litespeed.conf.cdn-ori', '[]', 'auto'),
(13974, 'litespeed.conf.cdn-ori_dir', '[\"wp-content\",\"wp-includes\"]', 'auto'),
(13975, 'litespeed.conf.cdn-exc', '[]', 'auto'),
(13976, 'litespeed.conf.cdn-quic', '', 'auto'),
(13977, 'litespeed.conf.cdn-cloudflare', '', 'auto'),
(13978, 'litespeed.conf.cdn-cloudflare_email', '', 'auto'),
(13979, 'litespeed.conf.cdn-cloudflare_key', '', 'auto'),
(13980, 'litespeed.conf.cdn-cloudflare_name', '', 'auto'),
(13981, 'litespeed.conf.cdn-cloudflare_zone', '', 'auto'),
(13982, 'litespeed.conf.cdn-mapping', '[{\"url\":\"\",\"inc_img\":\"1\",\"inc_css\":\"1\",\"inc_js\":\"1\",\"filetype\":[\".aac\",\".css\",\".eot\",\".gif\",\".jpeg\",\".jpg\",\".js\",\".less\",\".mp3\",\".mp4\",\".ogg\",\".otf\",\".pdf\",\".png\",\".svg\",\".ttf\",\".webp\",\".woff\",\".woff2\"]}]', 'auto'),
(13983, 'litespeed.conf.cdn-attr', '[\".src\",\".data-src\",\".href\",\".poster\",\"source.srcset\"]', 'auto'),
(13984, 'litespeed.conf.qc-token', '', 'auto'),
(13985, 'litespeed.conf.qc-nameservers', '', 'auto'),
(13992, 'litespeed.purge.queue', '-1', 'auto'),
(13993, 'litespeed.purge.queue2', '-1', 'auto'),
(13994, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(13995, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1743783469;s:15:\"version_checked\";s:5:\"6.7.2\";s:12:\"translations\";a:0:{}}', 'off'),
(13996, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743769053;s:7:\"checked\";a:8:{s:10:\"alhashemia\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:16:\"twentytwentyfive\";s:3:\"1.0\";s:16:\"twentytwentyfour\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.0\";}s:8:\"response\";a:7:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"3.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.3.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.1.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.2.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.9.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(13997, '_site_transient_ai1wm_last_check_for_updates', '1743783467', 'off'),
(13998, 'ai1wm_updater', 'a:0:{}', 'auto'),
(14035, 'breeze_new_update', 'yes', 'off'),
(14036, 'litespeed.optimize.timestamp_purge_css', '1743051983', 'auto'),
(14040, 'breeze_version', '2.2.4', 'on'),
(14184, '_transient_health-check-site-status-result', '{\"good\":23,\"recommended\":6,\"critical\":1}', 'on'),
(14258, 'litespeed.admin_display.messages', '-1', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(14259, 'litespeed.admin_display.msg_pin', '[\"<div class=\\\"litespeed_icon notice notice-error litespeed-irremovable\\\"><p><div id=\\\"lscwp-incompatible-plugin-notice\\\">Please consider disabling the following detected plugins, as they may conflict with LiteSpeed Cache:<p style=\\\"color: red;font-weight: 700\\\">Breeze<\\/p><\\/div><\\/p><\\/div>\"]', 'auto'),
(14260, 'litespeed.admin_display.thirdparty_litespeed_check', '1', 'auto'),
(16473, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1743783466;s:8:\"response\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.92\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.92.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3264554\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3264554\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:3:\"6.8\";s:12:\"requires_php\";s:3:\"5.3\";s:16:\"requires_plugins\";a:0:{}}s:17:\"breeze/breeze.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:20:\"w.org/plugins/breeze\";s:4:\"slug\";s:6:\"breeze\";s:6:\"plugin\";s:17:\"breeze/breeze.php\";s:11:\"new_version\";s:5:\"2.2.8\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/breeze/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/breeze.2.2.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/breeze/assets/icon-256x256.gif?rev=2594160\";s:2:\"1x\";s:59:\"https://ps.w.org/breeze/assets/icon-128x128.gif?rev=2594160\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/breeze/assets/banner-772x250.jpg?rev=1705548\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:23:\"hostinger/hostinger.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/hostinger\";s:4:\"slug\";s:9:\"hostinger\";s:6:\"plugin\";s:23:\"hostinger/hostinger.php\";s:11:\"new_version\";s:6:\"3.0.32\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/hostinger/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/hostinger.3.0.32.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/hostinger/assets/icon.svg?rev=3097386\";s:3:\"svg\";s:54:\"https://ps.w.org/hostinger/assets/icon.svg?rev=3097386\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/hostinger/assets/banner-1544x500.png?rev=3097370\";s:2:\"1x\";s:64:\"https://ps.w.org/hostinger/assets/banner-772x250.png?rev=3097370\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"8.0\";s:16:\"requires_plugins\";a:0:{}}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"7.0.0.1\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.7.0.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=2554181\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=2554181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2554181\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2554181\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}s:37:\"object-cache-pro/object-cache-pro.php\";O:8:\"stdClass\":9:{s:4:\"slug\";s:16:\"object-cache-pro\";s:6:\"plugin\";s:37:\"object-cache-pro/object-cache-pro.php\";s:3:\"url\";s:23:\"https://objectcache.pro\";s:11:\"new_version\";s:6:\"1.23.1\";s:7:\"package\";N;s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.2\";s:5:\"icons\";a:1:{s:7:\"default\";s:48:\"https://objectcache.pro/assets/icon.png?v=1.20.2\";}s:7:\"banners\";a:2:{s:3:\"low\";s:50:\"https://objectcache.pro/assets/banner.png?v=1.20.2\";s:4:\"high\";s:50:\"https://objectcache.pro/assets/banner.png?v=1.20.2\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:5:\"0.8.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=2791650\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}}s:7:\"checked\";a:11:{s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.90\";s:17:\"breeze/breeze.php\";s:5:\"2.2.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"6.0.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:49:\"hostinger-ai-assistant/hostinger-ai-assistant.php\";s:6:\"2.0.31\";s:55:\"hostinger-easy-onboarding/hostinger-easy-onboarding.php\";s:6:\"2.0.65\";s:23:\"hostinger/hostinger.php\";s:6:\"3.0.28\";s:35:\"litespeed-cache/litespeed-cache.php\";s:5:\"6.5.4\";s:37:\"object-cache-pro/object-cache-pro.php\";s:6:\"1.20.2\";s:41:\"wordpress-importer/wordpress-importer.php\";s:5:\"0.8.4\";}}', 'off'),
(16552, '_site_transient_timeout_browser_3fa31b52dd6ebc517e5492d43d77e61c', '1744270858', 'off'),
(16553, '_site_transient_browser_3fa31b52dd6ebc517e5492d43d77e61c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"134.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(16554, '_site_transient_timeout_php_check_617fc4d260191bf0de418d0d961f5a43', '1744270858', 'off'),
(16555, '_site_transient_php_check_617fc4d260191bf0de418d0d961f5a43', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(16556, 'litespeed.gui.lscwp_whm_install', '-1', 'auto'),
(16557, 'litespeed.gui.dismiss', '-1', 'auto'),
(16558, 'litespeed.gui._summary', '{\"new_version\":1744270858,\"score\":1744875658}', 'auto'),
(16559, 'litespeed.data.upgrading', '-1', 'auto'),
(16744, '_site_transient_timeout_wp_theme_files_patterns-2bd03869f4085e019060d3ff9dae95e6', '1743785267', 'off'),
(16745, '_site_transient_wp_theme_files_patterns-2bd03869f4085e019060d3ff9dae95e6', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(16747, '_site_transient_timeout_objectcache_update', '1743869867', 'off'),
(16748, '_site_transient_objectcache_update', 'O:8:\"stdClass\":2:{s:7:\"version\";s:6:\"1.23.1\";s:10:\"last_check\";i:1743783467;}', 'off'),
(16749, '_site_transient_timeout_theme_roots', '1743785268', 'off'),
(16750, '_site_transient_theme_roots', 'a:8:{s:10:\"alhashemia\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 4, '_edit_last', '1'),
(11, 9, 'gallery_image_url', ''),
(12, 9, '_wp_page_template', 'default'),
(13, 10, 'gallery_image_url', ''),
(14, 10, '_wp_page_template', 'default'),
(15, 11, 'gallery_image_url', ''),
(16, 11, 'gallery_image_url', ''),
(17, 11, '_edit_last', '1'),
(18, 11, '_wp_page_template', 'templates/investments.php'),
(19, 12, 'gallery_image_url', ''),
(20, 12, 'gallery_image_url', ''),
(21, 12, '_edit_last', '1'),
(22, 12, '_wp_page_template', 'templates/petroleum.php'),
(23, 13, 'gallery_image_url', ''),
(24, 13, 'gallery_image_url', ''),
(25, 13, '_edit_last', '1'),
(26, 13, '_wp_page_template', 'templates/solar-energy.php'),
(27, 15, 'gallery_image_url', ''),
(28, 15, 'gallery_image_url', ''),
(29, 15, '_edit_last', '1'),
(30, 15, '_wp_page_template', 'templates/subsidiaries.php'),
(31, 17, 'gallery_image_url', ''),
(32, 17, 'gallery_image_url', ''),
(33, 17, '_edit_last', '1'),
(34, 17, '_wp_page_template', 'templates/about-us.php'),
(35, 18, 'gallery_image_url', ''),
(36, 19, 'gallery_image_url', ''),
(37, 18, '_edit_lock', '1645011919:1'),
(38, 21, 'gallery_image_url', ''),
(39, 21, '_form', '<label> Your name\n    [text* your-name class:form-control class:footer-input] </label>\n\n<label> Your email\n    [email* your-email class:form-control class:footer-input] </label>\n\n<label> Subject\n    [text* your-subject class:form-control class:footer-input] </label>\n\n<label> Your message (optional)\n    [textarea your-message class:form-control class:footer-input class:margin-b-20] </label>\n\n[submit class:btn-theme class:btn-theme-sm class:btn-base-bg class:text-uppercase \"Submit\"]'),
(40, 21, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:68:\"[_site_title] <wordpress@wordpress-487847-2423307.cloudwaysapps.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(41, 21, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:68:\"[_site_title] <wordpress@wordpress-487847-2423307.cloudwaysapps.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(42, 21, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(43, 21, '_additional_settings', ''),
(44, 21, '_locale', 'en_US'),
(45, 22, 'gallery_image_url', ''),
(46, 22, '_edit_lock', '1645011978:1'),
(47, 22, '_wp_page_template', 'templates/contact.php'),
(48, 18, '_wp_page_template', 'templates/forex.php'),
(49, 24, 'gallery_image_url', ''),
(50, 24, '_edit_lock', '1645011977:1'),
(51, 27, '_wp_attached_file', '2022/02/abt1.jpg'),
(52, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:352;s:4:\"file\";s:16:\"2022/02/abt1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"abt1-300x106.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:106;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"abt1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"abt1-768x270.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1467728318\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 24, '_thumbnail_id', '27'),
(54, 28, 'gallery_image_url', ''),
(55, 28, '_edit_lock', '1645094985:1'),
(56, 30, '_wp_attached_file', '2022/02/airplane-sunset-2.jpg'),
(57, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1067;s:4:\"file\";s:29:\"2022/02/airplane-sunset-2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"airplane-sunset-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"airplane-sunset-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"airplane-sunset-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"airplane-sunset-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:31:\"airplane-sunset-2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 28, '_thumbnail_id', '35'),
(59, 31, '_wp_attached_file', '2022/02/plane.jpg'),
(60, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:776;s:4:\"file\";s:17:\"2022/02/plane.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"plane-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"plane-1024x497.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"plane-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"plane-768x372.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"plane-1536x745.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:745;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 32, '_wp_attached_file', '2022/02/plane-4.jpg'),
(62, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:776;s:4:\"file\";s:19:\"2022/02/plane-4.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"plane-4-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"plane-4-1024x497.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:497;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"plane-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"plane-4-768x372.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:20:\"plane-4-1536x745.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:745;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 35, '_wp_attached_file', '2022/02/slider-1.jpg'),
(64, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:874;s:4:\"file\";s:20:\"2022/02/slider-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"slider-1-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"slider-1-1024x559.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:559;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"slider-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"slider-1-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"slider-1-1536x839.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:839;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 17, '_edit_lock', '1645134989:1'),
(67, 21, '_hash', '499087f21df8d70dd5b376648354f8abaded6705'),
(68, 37, 'gallery_image_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2022-02-04 11:10:21', '2022-02-04 11:10:21', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://alhashemico.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-02-04 11:10:21', '2022-02-04 11:10:21', '', 0, 'https://alhashemico.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-02-04 11:10:21', '2022-02-04 11:10:21', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://alhashemico.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-02-04 11:10:21', '2022-02-04 11:10:21', '', 0, 'https://alhashemico.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-02-04 00:00:00', '2022-02-04 00:00:00', '<p>It seems like you’re running a default WordPress website. Here are a few useful links to get you started:</p>\n			<h3>Migration</h3>\n			<ul>\n				<li><a href=\"https://support.cloudways.com/how-to-migrate-wordpress-to-cloudways/?utm_source=WordPress&amp;Staging&amp;Sites&amp;utm_medium=WP&amp;Staging&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to use WordPress Migrator Plugin?</a></li>\n				<li><a href=\"https://support.cloudways.com/siteground-to-cloudways-wordpress-migration/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Migrate WordPress from Siteground to Cloudways</a></li>\n				<li><a href=\"https://support.cloudways.com/godaddy-to-cloudways-wordpress-migration/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Migrate WordPress from GoDaddy to Cloudways</a></li>\n				</ul>\n				<h3>General</h3>\n				<ul>\n					<li><a href=\"https://support.cloudways.com/how-do-i-take-my-website-live-from-cloudways/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How do I take my website live from Cloudways?</a></li>\n					<li><a href=\"https://support.cloudways.com/how-to-manage-wordpress-with-wp-cli/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to manage WordPress via WP-CLI on Cloudways?</a></li>\n					<li><a href=\"https://support.cloudways.com/how-to-setup-a-wordpress-multisite-on-cloudways/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to configure WordPress Multisite on Cloudways?</a></li>\n					<li><a href=\"https://support.cloudways.com/mysql-database-access-options/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to access your databases on Cloudways?</a></li>\n					</ul>\n					<h3>Performance</h3>\n					<ul>\n						<li><a href=\"https://support.cloudways.com/breeze-wordpress-cache-configuration/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to install and configure Breeze WordPress cache plugin?</a></li>\n						<li><a href=\"https://support.cloudways.com/wordpress-cloudways-cdn/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to integrate CloudwaysCDN with your WordPress website?</a></li>\n						<li><a href=\"https://support.cloudways.com/how-to-configure-wp-rocket-plugin-wordpress/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to configure WP Rocket plugin for WordPress?</a></li>\n						</ul>\n						<h3>Security</h3>\n						<ul>\n							<li><a href=\"https://support.cloudways.com/what-can-i-do-with-an-htaccess-file/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\" data-wplink-edit=\"true\">What can I do with an .htaccess file?</a></li>\n							<li><a href=\"https://www.cloudways.com/blog/add-free-ssl-certificate-to-wordpress-websites/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Add free SSL certificate to WordPress websites</a></li>\n							<li><a href=\"https://support.cloudways.com/how-to-set-up-sucuri-antivirus-website-monitoring/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to setup Sucuri on WordPress websites at Cloudways?</a></li>\n							</ul>\n							<h3>Email</h3>\n							<ul>\n								<li><a href=\"https://support.cloudways.com/emailing-with-cloudways/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">Which email add-on should I use?</a></li>\n								<li><a href=\"https://support.cloudways.com/how-to-activate-rackspace-email-addon/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to activate Rackspace email addon?</a></li>\n								<li><a href=\"https://support.cloudways.com/how-to-activate-elasticemail-addon/?utm_source=WordPress&amp;&amp;Sites&amp;utm_medium=WP&amp;&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noopener, noindex, nofollow noopener\">How to activate the Elastic email add-on?</a></li>\n								</ul>\n\n								<!-- wp:heading {\"level\":4} -->\n								<h4>Our Partners</h4>\n								<!-- /wp:heading -->\n\n								<!-- wp:image {\"id\":15,\"linkDestination\":\"custom\"} -->\n								<figure class=\"wp-block-image\"><a href=\"https://mainwp.com/?utm_source=cloudways-partner&amp;utm_campaign=cloudways\" target=\"_blank\" rel=\"noreferrer, noopener, noindex, nofollow noopener\"><img src=\"https://s3.amazonaws.com/cloudways-static-content/applications/wordpress/mainWP-Banner-1.jpg\" alt=\"\" class=\"wp-image-15\"/></a></figure>\n								<!-- /wp:image -->\n\n								<!-- wp:image {\"id\":20,\"linkDestination\":\"custom\"} -->\n								<figure class=\"wp-block-image\"><a href=\"https://oceanwp.org/?utm_source=cloudways-partner&amp;utm_campaign=cloudways\" target=\"_blank\" rel=\"noreferrer, noopener, noindex, nofollow noopener\"><img src=\"https://s3.amazonaws.com/cloudways-static-content/applications/wordpress/OceanWP-Banner.jpg\" alt=\"\" class=\"wp-image-20\"/></a></figure>\n								<!-- /wp:image -->\n\n								<!-- wp:heading {\"level\":4} -->\n								<h4>Join The Community Forum<br></h4>\n									<!-- /wp:heading -->\n\n									<!-- wp:image {\"id\":23,\"linkDestination\":\"custom\"} -->\n									<figure class=\"wp-block-image\"><a href=\"https://community.cloudways.com/?utm_source=cloudways-wp&amp;utm_medium=cloudways&amp;utm_campaign=cloudways-wp\" target=\"_blank\" rel=\"noreferrer, noopener, noindex, nofollow noopener\"><img src=\"https://s3.amazonaws.com/cloudways-static-content/applications/wordpress/cloudways-community1.jpg\" alt=\"\" class=\"wp-image-23\"/></a></figure>\n									<!-- /wp:image -->\n\n</ul>', 'Some Useful Links for You to Get Started', '', 'publish', 'open', 'open', '', 'welcome-to-cloudways', '', '', '2022-02-04 00:00:00', '2022-02-04 00:00:00', '', 0, 'https://alhashemico.com/?p=1', 0, 'post', '', 1),
(9, 1, '2022-02-04 15:26:48', '2022-02-04 15:26:48', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/alhashemia/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page-2', '', '', '2022-02-04 15:26:48', '2022-02-04 15:26:48', '', 0, 'http://localhost/alhashemia/?page_id=2', 0, 'page', '', 0),
(10, 1, '2022-02-04 15:26:48', '2022-02-04 15:26:48', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/alhashemia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-02-04 15:26:48', '2022-02-04 15:26:48', '', 0, 'http://localhost/alhashemia/?page_id=3', 0, 'page', '', 0),
(11, 1, '2022-02-11 17:18:22', '2022-02-11 17:18:22', '', 'Investments', '', 'publish', 'closed', 'closed', '', 'investments', '', '', '2022-02-11 17:18:22', '2022-02-11 17:18:22', '', 0, 'http://localhost/alhashemia/?page_id=9', 0, 'page', '', 0),
(12, 1, '2022-02-11 17:32:03', '2022-02-11 17:32:03', '', 'Petroleum', '', 'publish', 'closed', 'closed', '', 'petroleum', '', '', '2022-02-11 17:32:03', '2022-02-11 17:32:03', '', 0, 'http://localhost/alhashemia/?page_id=11', 0, 'page', '', 0),
(13, 1, '2022-02-11 17:49:09', '2022-02-11 17:49:09', '', 'Solar Energy', '', 'publish', 'closed', 'closed', '', 'solar-energy', '', '', '2022-02-11 17:49:09', '2022-02-11 17:49:09', '', 0, 'http://localhost/alhashemia/?page_id=13', 0, 'page', '', 0),
(15, 1, '2022-02-11 17:55:05', '2022-02-11 17:55:05', '', 'Subsidiaries', '', 'publish', 'closed', 'closed', '', 'subsidiaries', '', '', '2022-02-11 17:55:05', '2022-02-11 17:55:05', '', 0, 'http://localhost/alhashemia/?page_id=15', 0, 'page', '', 0),
(17, 1, '2022-02-11 18:43:54', '2022-02-11 18:43:54', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2022-02-11 18:43:54', '2022-02-11 18:43:54', '', 0, 'http://localhost/alhashemia/?page_id=17', 0, 'page', '', 0),
(18, 1, '2022-02-15 15:48:29', '2022-02-15 15:48:29', '', 'Foreign Exchange', '', 'publish', 'closed', 'closed', '', 'foreign-exchange', '', '', '2022-02-16 08:18:43', '2022-02-16 08:18:43', '', 0, 'https://alhashemico.com/?page_id=18', 0, 'page', '', 0),
(19, 1, '2022-02-15 15:47:36', '2022-02-15 15:47:36', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-alhashemia', '', '', '2022-02-15 15:47:36', '2022-02-15 15:47:36', '', 0, 'https://alhashemico.com/wp-global-styles-alhashemia/', 0, 'wp_global_styles', '', 0),
(20, 1, '2022-02-15 15:48:29', '2022-02-15 15:48:29', '', 'Foreign Exchange', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2022-02-15 15:48:29', '2022-02-15 15:48:29', '', 18, 'https://alhashemico.com/?p=20', 0, 'revision', '', 0),
(21, 1, '2022-02-16 08:15:10', '2022-02-16 08:15:10', '<label> Your name\r\n    [text* your-name class:form-control class:footer-input] </label>\r\n\r\n<label> Your email\r\n    [email* your-email class:form-control class:footer-input] </label>\r\n\r\n<label> Subject\r\n    [text* your-subject class:form-control class:footer-input] </label>\r\n\r\n<label> Your message (optional)\r\n    [textarea your-message class:form-control class:footer-input class:margin-b-20] </label>\r\n\r\n[submit class:btn-theme class:btn-theme-sm class:btn-base-bg class:text-uppercase \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wordpress-487847-2423307.cloudwaysapps.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wordpress-487847-2423307.cloudwaysapps.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-02-16 08:16:15', '2022-02-16 08:16:15', '', 0, 'https://alhashemico.com/?post_type=wpcf7_contact_form&#038;p=21', 0, 'wpcf7_contact_form', '', 0),
(22, 1, '2022-02-16 08:17:04', '2022-02-16 08:17:04', '<!-- wp:contact-form-7/contact-form-selector {\"id\":21,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"21\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-02-16 08:17:12', '2022-02-16 08:17:12', '', 0, 'https://alhashemico.com/?page_id=22', 0, 'page', '', 0),
(23, 1, '2022-02-16 08:17:04', '2022-02-16 08:17:04', '<!-- wp:contact-form-7/contact-form-selector {\"id\":21,\"title\":\"Contact form 1\"} -->\n<div class=\"wp-block-contact-form-7-contact-form-selector\">[contact-form-7 id=\"21\" title=\"Contact form 1\"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2022-02-16 08:17:04', '2022-02-16 08:17:04', '', 22, 'https://alhashemico.com/?p=23', 0, 'revision', '', 0),
(24, 1, '2022-02-16 08:21:16', '2022-02-16 08:21:16', '<!-- wp:paragraph -->\n<p>Established with the purpose of pioneering a new way forward in business through innovation, Alhashemi Company has provided its customers with the best solutions or products</p>\n<!-- /wp:paragraph -->', 'Careers', '', 'publish', 'closed', 'closed', '', 'careers', '', '', '2022-02-16 11:48:40', '2022-02-16 11:48:40', '', 0, 'https://alhashemico.com/?page_id=24', 0, 'page', '', 0),
(25, 1, '2022-02-16 08:21:16', '2022-02-16 08:21:16', '', 'Careers', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-02-16 08:21:16', '2022-02-16 08:21:16', '', 24, 'https://alhashemico.com/?p=25', 0, 'revision', '', 0),
(26, 1, '2022-02-16 08:21:35', '2022-02-16 08:21:35', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua<br>enim minim estudiat veniam siad venumus dolore</p>\n<!-- /wp:paragraph -->', 'Careers', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-02-16 08:21:35', '2022-02-16 08:21:35', '', 24, 'https://alhashemico.com/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-02-16 08:24:28', '2022-02-16 08:24:28', '', 'abt1', '', 'inherit', 'open', 'closed', '', 'abt1', '', '', '2022-02-16 08:24:28', '2022-02-16 08:24:28', '', 24, 'https://alhashemico.com/wp-content/uploads/2022/02/abt1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2022-02-16 08:26:55', '2022-02-16 08:26:55', '<!-- wp:paragraph -->\n<p>Established with the purpose of pioneering a new way forward in business through innovation, Alhashemi Company has provided its customers with the best solutions or products</p>\n<!-- /wp:paragraph -->', 'Aviation', '', 'publish', 'closed', 'closed', '', 'aviation', '', '', '2022-02-17 10:49:07', '2022-02-17 10:49:07', '', 0, 'https://alhashemico.com/?page_id=28', 0, 'page', '', 0),
(29, 1, '2022-02-16 08:26:55', '2022-02-16 08:26:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet consectetur adipiscing dolore magna aliqua<br>enim minim estudiat veniam siad venumus dolore</p>\n<!-- /wp:paragraph -->', 'Aviation', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-02-16 08:26:55', '2022-02-16 08:26:55', '', 28, 'https://alhashemico.com/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-02-16 08:27:33', '2022-02-16 08:27:33', '', 'airplane-sunset-2', '', 'inherit', 'open', 'closed', '', 'airplane-sunset-2', '', '', '2022-02-16 08:27:33', '2022-02-16 08:27:33', '', 28, 'https://alhashemico.com/wp-content/uploads/2022/02/airplane-sunset-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2022-02-16 08:28:02', '2022-02-16 08:28:02', '', 'plane', '', 'inherit', 'open', 'closed', '', 'plane', '', '', '2022-02-16 08:28:02', '2022-02-16 08:28:02', '', 28, 'https://alhashemico.com/wp-content/uploads/2022/02/plane.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2022-02-16 08:28:41', '2022-02-16 08:28:41', '', 'plane-4', '', 'inherit', 'open', 'closed', '', 'plane-4', '', '', '2022-02-16 08:28:41', '2022-02-16 08:28:41', '', 28, 'https://alhashemico.com/wp-content/uploads/2022/02/plane-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2022-02-16 11:48:04', '2022-02-16 11:48:04', '<!-- wp:paragraph -->\n<p>Established with the purpose of pioneering a new way forward in business through innovation, Alhashemi Company has provided its customers with the best solutions or products</p>\n<!-- /wp:paragraph -->', 'Aviation', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-02-16 11:48:04', '2022-02-16 11:48:04', '', 28, 'https://alhashemico.com/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-02-16 11:48:40', '2022-02-16 11:48:40', '<!-- wp:paragraph -->\n<p>Established with the purpose of pioneering a new way forward in business through innovation, Alhashemi Company has provided its customers with the best solutions or products</p>\n<!-- /wp:paragraph -->', 'Careers', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2022-02-16 11:48:40', '2022-02-16 11:48:40', '', 24, 'https://alhashemico.com/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-02-17 10:49:02', '2022-02-17 10:49:02', '', 'slider-1', '', 'inherit', 'open', 'closed', '', 'slider-1', '', '', '2022-02-17 10:49:02', '2022-02-17 10:49:02', '', 28, 'https://alhashemico.com/wp-content/uploads/2022/02/slider-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2025-04-03 07:40:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-04-03 07:40:58', '0000-00-00 00:00:00', '', 0, 'https://alhashemico.com/?p=37', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'alhashemia', 'alhashemia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(4, 1, 0),
(19, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jafarsadik@outlook.com'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"de1e332acb1ed3a686f103af564d252fcbf1fea3069d731d4430323504965f3c\";a:4:{s:10:\"expiration\";i:1743838858;s:2:\"ip\";s:15:\"117.248.157.136\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36\";s:5:\"login\";i:1743666058;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '37'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"117.248.157.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1644999974');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'alhashemi_mstr!25KW', '$P$Bcw4j5TIp85AlZF9AqWxMuCDGzqMmq1', 'jafarsadik', 'jafarsadik@outlook.com', 'https://alhashemico.com', '2022-02-04 11:10:21', '', 0, 'Jafarsadik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`(191)),
  ADD KEY `cache_tags` (`cache_tags`(191));

--
-- Indexes for table `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`),
  ADD KEY `type` (`type`),
  ADD KEY `url_id_2` (`url_id`,`vary`,`type`),
  ADD KEY `filename_2` (`filename`,`expired`),
  ADD KEY `url_id` (`url_id`,`expired`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_litespeed_url`
--
ALTER TABLE `wp_litespeed_url`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_litespeed_url_file`
--
ALTER TABLE `wp_litespeed_url_file`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16751;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
