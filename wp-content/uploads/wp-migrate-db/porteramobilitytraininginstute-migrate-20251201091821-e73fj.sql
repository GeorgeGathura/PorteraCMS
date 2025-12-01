# WordPress MySQL database migration
#
# Generated: Monday 1. December 2025 09:18 UTC
# Hostname: 127.0.0.1
# Database: `portera`
# URL: //portera.test
# Path: /Users/georgek/Herd/portera
# Tables: mtip_commentmeta, mtip_comments, mtip_links, mtip_options, mtip_postmeta, mtip_posts, mtip_term_relationships, mtip_term_taxonomy, mtip_termmeta, mtip_terms, mtip_usermeta, mtip_users
# Table Prefix: mtip_
# Post Types: revision, acf-field, acf-field-group, attachment, customize_changeset, nav_menu_item, page, post, wpcf7_contact_form
# Protocol: https
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `mtip_commentmeta`
#

DROP TABLE IF EXISTS `mtip_commentmeta`;


#
# Table structure of table `mtip_commentmeta`
#

CREATE TABLE `mtip_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_commentmeta`
#

#
# End of data contents of table `mtip_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `mtip_comments`
#

DROP TABLE IF EXISTS `mtip_comments`;


#
# Table structure of table `mtip_comments`
#

CREATE TABLE `mtip_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_comments`
#
INSERT INTO `mtip_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-11-29 15:44:05', '2025-11-29 15:44:05', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com/">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0) ;

#
# End of data contents of table `mtip_comments`
# --------------------------------------------------------



#
# Delete any existing table `mtip_links`
#

DROP TABLE IF EXISTS `mtip_links`;


#
# Table structure of table `mtip_links`
#

CREATE TABLE `mtip_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_links`
#

#
# End of data contents of table `mtip_links`
# --------------------------------------------------------



#
# Delete any existing table `mtip_options`
#

DROP TABLE IF EXISTS `mtip_options`;


#
# Table structure of table `mtip_options`
#

CREATE TABLE `mtip_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_options`
#
INSERT INTO `mtip_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:10:{i:1764582254;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1764603853;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1764603861;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764603865;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1764607445;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764609245;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764611045;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1765092621;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1765122253;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'https://portera.test', 'on'),
(3, 'home', 'https://portera.test', 'on'),
(4, 'blogname', 'Portera Mobility Training Instute', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'gkwambata@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:95:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:24:"index.php??sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=29&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:47:"show-current-template/show-current-template.php";i:3;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '3', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'portera', 'on'),
(42, 'stylesheet', 'portera', 'on'),
(43, 'comment_registration', '', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '29', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '8', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1779983045', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on') ;
INSERT INTO `mtip_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'initial_db_version', '60421', 'on'),
(102, 'mtip_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(125, 'recovery_keys', 'a:0:{}', 'off'),
(138, 'can_compress_scripts', '0', 'on'),
(149, 'theme_mods_twentytwentyfive', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1764431076;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(150, 'current_theme', 'portera', 'auto'),
(151, 'theme_mods_portera', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"top-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:16;s:12:"header_image";s:61:"https://portera.test/wp-content/uploads/2025/11/logo-dark.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:9;s:3:"url";s:61:"https://portera.test/wp-content/uploads/2025/11/logo-dark.png";s:13:"thumbnail_url";s:61:"https://portera.test/wp-content/uploads/2025/11/logo-dark.png";s:6:"height";i:104;s:5:"width";i:290;}}', 'on'),
(152, 'theme_switched', '', 'auto'),
(158, 'finished_updating_comment_type', '1', 'auto'),
(171, 'recently_activated', 'a:0:{}', 'off'),
(172, 'acf_version', '6.1.6', 'auto'),
(173, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.9.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1764487621;s:7:"version";s:5:"5.9.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'auto'),
(186, 'WPLANG', '', 'auto'),
(187, 'new_admin_email', 'gkwambata@gmail.com', 'auto'),
(193, 'site_logo', '16', 'auto'),
(232, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'off'),
(245, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(248, 'category_children', 'a:0:{}', 'auto'),
(321, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1764580701;}', 'off') ;

#
# End of data contents of table `mtip_options`
# --------------------------------------------------------



#
# Delete any existing table `mtip_postmeta`
#

DROP TABLE IF EXISTS `mtip_postmeta`;


#
# Table structure of table `mtip_postmeta`
#

CREATE TABLE `mtip_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_postmeta`
#
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(10, 7, '_wp_attached_file', '2025/11/favicon.png'),
(11, 7, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:96;s:6:"height";i:108;s:4:"file";s:19:"2025/11/favicon.png";s:8:"filesize";i:8530;s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(12, 8, '_wp_attached_file', '2025/11/cropped-favicon.png'),
(13, 8, '_wp_attachment_context', 'site-icon'),
(14, 8, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:27:"2025/11/cropped-favicon.png";s:8:"filesize";i:57084;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:27:"cropped-favicon-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:24725;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"cropped-favicon-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:7834;}s:13:"site_icon-270";a:5:{s:4:"file";s:27:"cropped-favicon-270x270.png";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:20810;}s:13:"site_icon-192";a:5:{s:4:"file";s:27:"cropped-favicon-192x192.png";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10956;}s:13:"site_icon-180";a:5:{s:4:"file";s:27:"cropped-favicon-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:10492;}s:12:"site_icon-32";a:5:{s:4:"file";s:25:"cropped-favicon-32x32.png";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:949;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 9, '_wp_attached_file', '2025/11/logo-dark.png'),
(16, 9, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:290;s:6:"height";i:104;s:4:"file";s:21:"2025/11/logo-dark.png";s:8:"filesize";i:26920;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:21:"logo-dark-150x104.png";s:5:"width";i:150;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:3744;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 10, '_wp_trash_meta_status', 'publish'),
(18, 10, '_wp_trash_meta_time', '1764487925'),
(19, 11, '_edit_lock', '1764496114:1'),
(20, 12, '_wp_attached_file', '2025/11/contactus.webp'),
(21, 12, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:1000;s:4:"file";s:22:"2025/11/contactus.webp";s:8:"filesize";i:58692;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:22:"contactus-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10442;}s:5:"large";a:5:{s:4:"file";s:23:"contactus-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:51010;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"contactus-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5372;}s:12:"medium_large";a:5:{s:4:"file";s:22:"contactus-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:36330;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 11, '_thumbnail_id', '12'),
(23, 9, '_wp_attachment_custom_header_last_used_portera', '1764495535'),
(24, 9, '_wp_attachment_is_custom_header', 'portera'),
(25, 14, '_wp_trash_meta_status', 'publish'),
(26, 14, '_wp_trash_meta_time', '1764495535'),
(27, 11, '_wp_page_template', 'contact-us.php'),
(28, 15, 'footnotes', ''),
(29, 16, '_wp_attached_file', '2025/11/logo.png'),
(30, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:397;s:6:"height";i:148;s:4:"file";s:16:"2025/11/logo.png";s:8:"filesize";i:60304;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:16:"logo-300x112.png";s:5:"width";i:300;s:6:"height";i:112;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:11111;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"logo-150x148.png";s:5:"width";i:150;s:6:"height";i:148;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5314;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 17, '_wp_trash_meta_status', 'publish'),
(32, 17, '_wp_trash_meta_time', '1764495902'),
(33, 16, '_wp_attachment_image_alt', 'logo'),
(34, 18, '_wp_trash_meta_status', 'publish'),
(35, 18, '_wp_trash_meta_time', '1764496000'),
(36, 19, '_edit_last', '1'),
(37, 19, '_edit_lock', '1764496851:1'),
(38, 23, '_edit_lock', '1764496973:1'),
(39, 23, '_edit_last', '1'),
(40, 23, 'faq_section_0_question', 'What is Portera Mobility Training Institute (PMTI)?'),
(41, 23, '_faq_section_0_question', 'field_692c130f167d8'),
(42, 23, 'faq_section_0_answer', 'PMTI is Kenya\'s first dedicated training and certification institute for professional movers. We equip trainees with the technical skills, safety knowledge, and professional conduct needed to excel in the moving and logistics industry.'),
(43, 23, '_faq_section_0_answer', 'field_692c131a167d9'),
(44, 23, 'faq_section_1_question', 'Who can join PMTI?'),
(45, 23, '_faq_section_1_question', 'field_692c130f167d8'),
(46, 23, 'faq_section_1_answer', 'Our programs are open to high school and college leavers, as well as individuals already working in the moving or logistics field who want to formalize and advance their skills.'),
(47, 23, '_faq_section_1_answer', 'field_692c131a167d9'),
(48, 23, 'faq_section_2_question', 'What courses does PMTI offer?'),
(49, 23, '_faq_section_2_question', 'field_692c130f167d8'),
(50, 23, 'faq_section_2_answer', 'We offer structured programs in professional moving, packing and handling, customer service, workplace safety, and leadership in mobility operations. Each course combines theory with hands-on training.'),
(51, 23, '_faq_section_2_answer', 'field_692c131a167d9'),
(52, 23, 'faq_section_3_question', 'How long does the training take?'),
(53, 23, '_faq_section_3_question', 'field_692c130f167d8'),
(54, 23, 'faq_section_3_answer', 'Course durations vary depending on the program — from short certification courses lasting a few weeks to comprehensive professional programs designed for full qualification.'),
(55, 23, '_faq_section_3_answer', 'field_692c131a167d9'),
(56, 23, 'faq_section_4_question', 'Will I receive a certificate after completing my training?'),
(57, 23, '_faq_section_4_question', 'field_692c130f167d8'),
(58, 23, 'faq_section_4_answer', 'Yes. Every graduate receives a PMTI Certificate, recognized by the moving industry and aligned with international standards of relocation and logistics practice.'),
(59, 23, '_faq_section_4_answer', 'field_692c131a167d9'),
(60, 23, 'faq_section_5_question', 'What career opportunities are available after training?'),
(61, 23, '_faq_section_5_question', 'field_692c130f167d8'),
(62, 23, 'faq_section_5_answer', 'PMTI graduates are prepared for employment in local and international moving companies, logistics firms, warehousing, and facilities management. Many go on to become team leaders, supervisors, or even start their own moving businesses.'),
(63, 23, '_faq_section_5_answer', 'field_692c131a167d9'),
(64, 23, 'faq_section_6_question', 'Is the training practical or classroom-based?'),
(65, 23, '_faq_section_6_question', 'field_692c130f167d8'),
(66, 23, 'faq_section_6_answer', 'Training is highly practical. We combine classroom instruction with real moving simulations and supervised field practice to ensure every trainee gains hands-on experience.'),
(67, 23, '_faq_section_6_answer', 'field_692c131a167d9'),
(68, 23, 'faq_section_7_question', 'Where is PMTI located?'),
(69, 23, '_faq_section_7_question', 'field_692c130f167d8'),
(70, 23, 'faq_section_7_answer', 'Our training facility is based in Kiamumbi Campus, off Kamiti Road, near Kahawa West, Kiambu County.'),
(71, 23, '_faq_section_7_answer', 'field_692c131a167d9'),
(72, 23, 'faq_section_8_question', 'How can I apply for training?'),
(73, 23, '_faq_section_8_question', 'field_692c130f167d8'),
(74, 23, 'faq_section_8_answer', 'You can apply directly through our website or contact the PMTI Admissions Office for guidance on enrollment, upcoming intakes, and course requirements.'),
(75, 23, '_faq_section_8_answer', 'field_692c131a167d9'),
(76, 23, 'faq_section_9_question', 'Why should I choose PMTI?'),
(77, 23, '_faq_section_9_question', 'field_692c130f167d8'),
(78, 23, 'faq_section_9_answer', 'Because PMTI is redefining what it means to be a mover. We believe in turning skill into a career, and work into a respected profession through excellence, discipline, and opportunity.'),
(79, 23, '_faq_section_9_answer', 'field_692c131a167d9'),
(80, 23, 'faq_section', '10'),
(81, 23, '_faq_section', 'field_692c12fc167d7'),
(82, 24, 'faq_section_0_question', 'What is Portera Mobility Training Institute (PMTI)?'),
(83, 24, '_faq_section_0_question', 'field_692c130f167d8'),
(84, 24, 'faq_section_0_answer', 'PMTI is Kenya\'s first dedicated training and certification institute for professional movers. We equip trainees with the technical skills, safety knowledge, and professional conduct needed to excel in the moving and logistics industry.'),
(85, 24, '_faq_section_0_answer', 'field_692c131a167d9'),
(86, 24, 'faq_section_1_question', 'Who can join PMTI?'),
(87, 24, '_faq_section_1_question', 'field_692c130f167d8'),
(88, 24, 'faq_section_1_answer', 'Our programs are open to high school and college leavers, as well as individuals already working in the moving or logistics field who want to formalize and advance their skills.'),
(89, 24, '_faq_section_1_answer', 'field_692c131a167d9'),
(90, 24, 'faq_section_2_question', 'What courses does PMTI offer?'),
(91, 24, '_faq_section_2_question', 'field_692c130f167d8'),
(92, 24, 'faq_section_2_answer', 'We offer structured programs in professional moving, packing and handling, customer service, workplace safety, and leadership in mobility operations. Each course combines theory with hands-on training.'),
(93, 24, '_faq_section_2_answer', 'field_692c131a167d9'),
(94, 24, 'faq_section_3_question', 'How long does the training take?'),
(95, 24, '_faq_section_3_question', 'field_692c130f167d8'),
(96, 24, 'faq_section_3_answer', 'Course durations vary depending on the program — from short certification courses lasting a few weeks to comprehensive professional programs designed for full qualification.'),
(97, 24, '_faq_section_3_answer', 'field_692c131a167d9'),
(98, 24, 'faq_section_4_question', 'Will I receive a certificate after completing my training?'),
(99, 24, '_faq_section_4_question', 'field_692c130f167d8'),
(100, 24, 'faq_section_4_answer', 'Yes. Every graduate receives a PMTI Certificate, recognized by the moving industry and aligned with international standards of relocation and logistics practice.'),
(101, 24, '_faq_section_4_answer', 'field_692c131a167d9'),
(102, 24, 'faq_section_5_question', 'What career opportunities are available after training?'),
(103, 24, '_faq_section_5_question', 'field_692c130f167d8'),
(104, 24, 'faq_section_5_answer', 'PMTI graduates are prepared for employment in local and international moving companies, logistics firms, warehousing, and facilities management. Many go on to become team leaders, supervisors, or even start their own moving businesses.'),
(105, 24, '_faq_section_5_answer', 'field_692c131a167d9'),
(106, 24, 'faq_section_6_question', 'Is the training practical or classroom-based?'),
(107, 24, '_faq_section_6_question', 'field_692c130f167d8') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(108, 24, 'faq_section_6_answer', 'Training is highly practical. We combine classroom instruction with real moving simulations and supervised field practice to ensure every trainee gains hands-on experience.'),
(109, 24, '_faq_section_6_answer', 'field_692c131a167d9'),
(110, 24, 'faq_section_7_question', 'Where is PMTI located?'),
(111, 24, '_faq_section_7_question', 'field_692c130f167d8'),
(112, 24, 'faq_section_7_answer', 'Our training facility is based in Kiamumbi Campus, off Kamiti Road, near Kahawa West, Kiambu County.'),
(113, 24, '_faq_section_7_answer', 'field_692c131a167d9'),
(114, 24, 'faq_section_8_question', 'How can I apply for training?'),
(115, 24, '_faq_section_8_question', 'field_692c130f167d8'),
(116, 24, 'faq_section_8_answer', 'You can apply directly through our website or contact the PMTI Admissions Office for guidance on enrollment, upcoming intakes, and course requirements.'),
(117, 24, '_faq_section_8_answer', 'field_692c131a167d9'),
(118, 24, 'faq_section_9_question', 'Why should I choose PMTI?'),
(119, 24, '_faq_section_9_question', 'field_692c130f167d8'),
(120, 24, 'faq_section_9_answer', 'Because PMTI is redefining what it means to be a mover. We believe in turning skill into a career, and work into a respected profession through excellence, discipline, and opportunity.'),
(121, 24, '_faq_section_9_answer', 'field_692c131a167d9'),
(122, 24, 'faq_section', '10'),
(123, 24, '_faq_section', 'field_692c12fc167d7'),
(124, 26, '_wp_attached_file', '2025/11/faq.webp'),
(125, 26, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:1100;s:4:"file";s:16:"2025/11/faq.webp";s:8:"filesize";i:61014;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"faq-300x220.webp";s:5:"width";i:300;s:6:"height";i:220;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11610;}s:5:"large";a:5:{s:4:"file";s:17:"faq-1024x751.webp";s:5:"width";i:1024;s:6:"height";i:751;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:54024;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"faq-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4758;}s:12:"medium_large";a:5:{s:4:"file";s:16:"faq-768x563.webp";s:5:"width";i:768;s:6:"height";i:563;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:37978;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 23, '_thumbnail_id', '26'),
(127, 25, 'faq_section_0_question', 'What is Portera Mobility Training Institute (PMTI)?'),
(128, 25, '_faq_section_0_question', 'field_692c130f167d8'),
(129, 25, 'faq_section_0_answer', 'PMTI is Kenya\'s first dedicated training and certification institute for professional movers. We equip trainees with the technical skills, safety knowledge, and professional conduct needed to excel in the moving and logistics industry.'),
(130, 25, '_faq_section_0_answer', 'field_692c131a167d9'),
(131, 25, 'faq_section_1_question', 'Who can join PMTI?'),
(132, 25, '_faq_section_1_question', 'field_692c130f167d8'),
(133, 25, 'faq_section_1_answer', 'Our programs are open to high school and college leavers, as well as individuals already working in the moving or logistics field who want to formalize and advance their skills.'),
(134, 25, '_faq_section_1_answer', 'field_692c131a167d9'),
(135, 25, 'faq_section_2_question', 'What courses does PMTI offer?'),
(136, 25, '_faq_section_2_question', 'field_692c130f167d8'),
(137, 25, 'faq_section_2_answer', 'We offer structured programs in professional moving, packing and handling, customer service, workplace safety, and leadership in mobility operations. Each course combines theory with hands-on training.'),
(138, 25, '_faq_section_2_answer', 'field_692c131a167d9'),
(139, 25, 'faq_section_3_question', 'How long does the training take?'),
(140, 25, '_faq_section_3_question', 'field_692c130f167d8'),
(141, 25, 'faq_section_3_answer', 'Course durations vary depending on the program — from short certification courses lasting a few weeks to comprehensive professional programs designed for full qualification.'),
(142, 25, '_faq_section_3_answer', 'field_692c131a167d9'),
(143, 25, 'faq_section_4_question', 'Will I receive a certificate after completing my training?'),
(144, 25, '_faq_section_4_question', 'field_692c130f167d8'),
(145, 25, 'faq_section_4_answer', 'Yes. Every graduate receives a PMTI Certificate, recognized by the moving industry and aligned with international standards of relocation and logistics practice.'),
(146, 25, '_faq_section_4_answer', 'field_692c131a167d9'),
(147, 25, 'faq_section_5_question', 'What career opportunities are available after training?'),
(148, 25, '_faq_section_5_question', 'field_692c130f167d8'),
(149, 25, 'faq_section_5_answer', 'PMTI graduates are prepared for employment in local and international moving companies, logistics firms, warehousing, and facilities management. Many go on to become team leaders, supervisors, or even start their own moving businesses.'),
(150, 25, '_faq_section_5_answer', 'field_692c131a167d9'),
(151, 25, 'faq_section_6_question', 'Is the training practical or classroom-based?'),
(152, 25, '_faq_section_6_question', 'field_692c130f167d8'),
(153, 25, 'faq_section_6_answer', 'Training is highly practical. We combine classroom instruction with real moving simulations and supervised field practice to ensure every trainee gains hands-on experience.'),
(154, 25, '_faq_section_6_answer', 'field_692c131a167d9'),
(155, 25, 'faq_section_7_question', 'Where is PMTI located?'),
(156, 25, '_faq_section_7_question', 'field_692c130f167d8'),
(157, 25, 'faq_section_7_answer', 'Our training facility is based in Kiamumbi Campus, off Kamiti Road, near Kahawa West, Kiambu County.'),
(158, 25, '_faq_section_7_answer', 'field_692c131a167d9'),
(159, 25, 'faq_section_8_question', 'How can I apply for training?'),
(160, 25, '_faq_section_8_question', 'field_692c130f167d8'),
(161, 25, 'faq_section_8_answer', 'You can apply directly through our website or contact the PMTI Admissions Office for guidance on enrollment, upcoming intakes, and course requirements.'),
(162, 25, '_faq_section_8_answer', 'field_692c131a167d9'),
(163, 25, 'faq_section_9_question', 'Why should I choose PMTI?'),
(164, 25, '_faq_section_9_question', 'field_692c130f167d8'),
(165, 25, 'faq_section_9_answer', 'Because PMTI is redefining what it means to be a mover. We believe in turning skill into a career, and work into a respected profession through excellence, discipline, and opportunity.'),
(166, 25, '_faq_section_9_answer', 'field_692c131a167d9'),
(167, 25, 'faq_section', '10'),
(168, 25, '_faq_section', 'field_692c12fc167d7'),
(169, 23, '_wp_page_template', 'Faq.php'),
(170, 27, '_menu_item_type', 'post_type'),
(171, 27, '_menu_item_menu_item_parent', '0'),
(172, 27, '_menu_item_object_id', '23'),
(173, 27, '_menu_item_object', 'page'),
(174, 27, '_menu_item_target', ''),
(175, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 27, '_menu_item_xfn', ''),
(177, 27, '_menu_item_url', ''),
(179, 28, '_menu_item_type', 'post_type'),
(180, 28, '_menu_item_menu_item_parent', '0'),
(181, 28, '_menu_item_object_id', '11'),
(182, 28, '_menu_item_object', 'page'),
(183, 28, '_menu_item_target', ''),
(184, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(185, 28, '_menu_item_xfn', ''),
(186, 28, '_menu_item_url', ''),
(188, 29, '_edit_lock', '1764527857:1'),
(189, 31, '_menu_item_type', 'post_type'),
(190, 31, '_menu_item_menu_item_parent', '0'),
(191, 31, '_menu_item_object_id', '29'),
(192, 31, '_menu_item_object', 'page'),
(193, 31, '_menu_item_target', ''),
(194, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 31, '_menu_item_xfn', ''),
(196, 31, '_menu_item_url', ''),
(198, 32, '_edit_lock', '1764509360:1'),
(199, 34, '_edit_lock', '1764501202:1'),
(200, 36, '_edit_lock', '1764499052:1'),
(201, 38, '_wp_attached_file', '2025/11/about.webp'),
(202, 38, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:18:"2025/11/about.webp";s:8:"filesize";i:95698;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:18:"about-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11940;}s:5:"large";a:5:{s:4:"file";s:19:"about-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:56746;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"about-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5842;}s:12:"medium_large";a:5:{s:4:"file";s:18:"about-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:39392;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(203, 36, '_thumbnail_id', '38'),
(204, 39, '_menu_item_type', 'post_type'),
(205, 39, '_menu_item_menu_item_parent', '0'),
(206, 39, '_menu_item_object_id', '36'),
(207, 39, '_menu_item_object', 'page'),
(208, 39, '_menu_item_target', ''),
(209, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(210, 39, '_menu_item_xfn', '') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(211, 39, '_menu_item_url', ''),
(213, 40, '_menu_item_type', 'post_type'),
(214, 40, '_menu_item_menu_item_parent', '0'),
(215, 40, '_menu_item_object_id', '34'),
(216, 40, '_menu_item_object', 'page'),
(217, 40, '_menu_item_target', ''),
(218, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(219, 40, '_menu_item_xfn', ''),
(220, 40, '_menu_item_url', ''),
(222, 41, '_menu_item_type', 'post_type'),
(223, 41, '_menu_item_menu_item_parent', '0'),
(224, 41, '_menu_item_object_id', '32'),
(225, 41, '_menu_item_object', 'page'),
(226, 41, '_menu_item_target', ''),
(227, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(228, 41, '_menu_item_xfn', ''),
(229, 41, '_menu_item_url', ''),
(231, 42, '_edit_lock', '1764507876:1'),
(239, 42, '_wp_old_slug', '42-2'),
(241, 46, '_wp_attached_file', '2025/11/2.webp'),
(242, 46, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:14:"2025/11/2.webp";s:8:"filesize";i:920588;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:14:"2-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:23618;}s:5:"large";a:5:{s:4:"file";s:15:"2-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:102860;}s:9:"thumbnail";a:5:{s:4:"file";s:14:"2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14264;}s:12:"medium_large";a:5:{s:4:"file";s:14:"2-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:70380;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(244, 42, '_thumbnail_id', '46'),
(245, 47, '_wp_attached_file', '2025/11/events.webp'),
(246, 47, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:600;s:4:"file";s:19:"2025/11/events.webp";s:8:"filesize";i:120298;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:19:"events-300x150.webp";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10042;}s:5:"large";a:5:{s:4:"file";s:20:"events-1024x512.webp";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:42992;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"events-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5578;}s:12:"medium_large";a:5:{s:4:"file";s:19:"events-768x384.webp";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:31564;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(247, 34, '_thumbnail_id', '47'),
(248, 48, '_wp_attached_file', '2025/11/blog-main.webp'),
(249, 48, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1497;s:6:"height";i:1009;s:4:"file";s:22:"2025/11/blog-main.webp";s:8:"filesize";i:50148;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:22:"blog-main-300x202.webp";s:5:"width";i:300;s:6:"height";i:202;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10412;}s:5:"large";a:5:{s:4:"file";s:23:"blog-main-1024x690.webp";s:5:"width";i:1024;s:6:"height";i:690;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:45256;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"blog-main-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5224;}s:12:"medium_large";a:5:{s:4:"file";s:22:"blog-main-768x518.webp";s:5:"width";i:768;s:6:"height";i:518;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:32412;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(250, 32, '_thumbnail_id', '48'),
(252, 1, '_edit_lock', '1764507524:1'),
(253, 1, '_wp_trash_meta_status', 'publish'),
(254, 1, '_wp_trash_meta_time', '1764507669'),
(255, 1, '_wp_desired_post_slug', 'hello-world'),
(256, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(257, 51, '_edit_lock', '1764509438:1'),
(258, 52, '_form', '<label> Your name\n    [text* your-name autocomplete:name class:form-control] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email class:form-control] </label>\n\n[tel* YourPhone class:form-control]\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message\n    [textarea your-message class:form-control] </label>\n\n[submit "Submit"]'),
(259, 52, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:38:"[_site_title] <wordpress@portera.test>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:191:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(260, 52, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:38:"[_site_title] <wordpress@portera.test>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(261, 52, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}'),
(262, 52, '_additional_settings', ''),
(263, 52, '_locale', 'en_US'),
(264, 52, '_hash', '18ca9ce4718ff8a784419366dd5b527c12ef4047'),
(265, 53, '_form', '<label> Your name\n    [text* your-name autocomplete:name class:form-control] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email class:form-control] </label>\n\n<label> Your Phone\n[tel* YourPhone class:form-control]</label>\n\n<label> Tell me about courses\n    [textarea your-message class:form-control] </label>\n\n[submit id:submit "Submit"]'),
(266, 53, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:38:"[_site_title] <wordpress@portera.test>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:191:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(267, 53, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:38:"[_site_title] <wordpress@portera.test>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(268, 53, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}'),
(269, 53, '_additional_settings', ''),
(270, 53, '_locale', 'en_US'),
(271, 53, '_hash', '6d9a055525a439eb3eb365ccf0a71f4468bfc221'),
(272, 32, '_wp_page_template', 'blog.php'),
(273, 54, '_edit_last', '1'),
(274, 54, '_edit_lock', '1764512228:1'),
(277, 62, '_wp_attached_file', '2025/11/movers1.webp'),
(278, 62, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:210;s:4:"file";s:20:"2025/11/movers1.webp";s:8:"filesize";i:26780;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"movers1-300x121.webp";s:5:"width";i:300;s:6:"height";i:121;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7754;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5238;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(279, 63, '_wp_attached_file', '2025/11/movers2.webp'),
(280, 63, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:305;s:4:"file";s:20:"2025/11/movers2.webp";s:8:"filesize";i:34114;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"movers2-300x176.webp";s:5:"width";i:300;s:6:"height";i:176;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10018;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4656;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;

#
# End of data contents of table `mtip_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `mtip_posts`
#

DROP TABLE IF EXISTS `mtip_posts`;


#
# Table structure of table `mtip_posts`
#

CREATE TABLE `mtip_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_posts`
#
INSERT INTO `mtip_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-11-29 15:44:05', '2025-11-29 15:44:05', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2025-11-30 16:01:09', '2025-11-30 13:01:09', '', 0, 'https://portera.test/?p=1', 0, 'post', '', 1),
(2, 1, '2025-11-29 15:44:05', '2025-11-29 15:44:05', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="https://portera.test/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2025-11-29 15:44:05', '2025-11-29 15:44:05', '', 0, 'https://portera.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-11-29 15:44:05', '2025-11-29 15:44:05', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: https://portera.test.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2025-11-29 15:44:05', '2025-11-29 15:44:05', '', 0, 'https://portera.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2025-11-29 15:44:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-11-29 15:44:25', '0000-00-00 00:00:00', '', 0, 'https://portera.test/?p=4', 0, 'post', '', 0),
(6, 1, '2025-11-30 07:27:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-11-30 07:27:07', '0000-00-00 00:00:00', '', 0, 'https://portera.test/?post_type=acf-field-group&p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2025-11-30 07:30:56', '2025-11-30 07:30:56', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2025-11-30 07:30:56', '2025-11-30 07:30:56', '', 0, 'https://portera.test/wp-content/uploads/2025/11/favicon.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2025-11-30 07:31:04', '2025-11-30 07:31:04', 'https://portera.test/wp-content/uploads/2025/11/cropped-favicon.png', 'cropped-favicon.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2025-11-30 07:31:04', '2025-11-30 07:31:04', '', 7, 'https://portera.test/wp-content/uploads/2025/11/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2025-11-30 10:31:55', '2025-11-30 07:31:55', '', 'logo-dark', '', 'inherit', 'open', 'closed', '', 'logo-dark', '', '', '2025-11-30 10:31:55', '2025-11-30 07:31:55', '', 0, 'https://portera.test/wp-content/uploads/2025/11/logo-dark.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2025-11-30 10:32:05', '2025-11-30 07:32:05', '{"portera::custom_logo":{"value":9,"type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 07:32:05"}}', '', '', 'trash', 'closed', 'closed', '', 'fbb1db40-fe10-4491-b813-51b9b681f4a4', '', '', '2025-11-30 10:32:05', '2025-11-30 07:32:05', '', 0, 'https://portera.test/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2025-11-30 12:38:23', '2025-11-30 09:38:23', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2025-11-30 12:40:53', '2025-11-30 09:40:53', '', 0, 'https://portera.test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2025-11-30 12:38:12', '2025-11-30 09:38:12', '', 'contactus', '', 'inherit', 'open', 'closed', '', 'contactus', '', '', '2025-11-30 12:38:12', '2025-11-30 09:38:12', '', 11, 'https://portera.test/wp-content/uploads/2025/11/contactus.webp', 0, 'attachment', 'image/webp', 0),
(13, 1, '2025-11-30 12:38:23', '2025-11-30 09:38:23', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2025-11-30 12:38:23', '2025-11-30 09:38:23', '', 11, 'https://portera.test/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-11-30 12:38:55', '2025-11-30 09:38:55', '{"portera::header_image":{"value":"https:\\/\\/portera.test\\/wp-content\\/uploads\\/2025\\/11\\/logo-dark.png","type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 09:38:55"},"portera::header_image_data":{"value":{"url":"https:\\/\\/portera.test\\/wp-content\\/uploads\\/2025\\/11\\/logo-dark.png","thumbnail_url":"https:\\/\\/portera.test\\/wp-content\\/uploads\\/2025\\/11\\/logo-dark.png","timestamp":1764495532451,"attachment_id":9,"width":290,"height":104},"type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 09:38:55"}}', '', '', 'trash', 'closed', 'closed', '', 'abca8229-c80a-49d5-8fa2-b865fd38dc11', '', '', '2025-11-30 12:38:55', '2025-11-30 09:38:55', '', 0, 'https://portera.test/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2025-11-30 12:41:47', '2025-11-30 09:41:47', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2025-11-30 12:41:47', '2025-11-30 09:41:47', '', 11, 'https://portera.test/?p=15', 0, 'revision', '', 0),
(16, 1, '2025-11-30 12:44:56', '2025-11-30 09:44:56', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2025-11-30 12:46:32', '2025-11-30 09:46:32', '', 0, 'https://portera.test/wp-content/uploads/2025/11/logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2025-11-30 12:45:02', '2025-11-30 09:45:02', '{"portera::custom_logo":{"value":16,"type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 09:45:02"}}', '', '', 'trash', 'closed', 'closed', '', '69492c29-c4d3-498e-b05d-57458da9d54d', '', '', '2025-11-30 12:45:02', '2025-11-30 09:45:02', '', 0, 'https://portera.test/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2025-11-30 12:46:40', '2025-11-30 09:46:40', '{"portera::custom_logo":{"value":16,"type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 09:46:40"}}', '', '', 'trash', 'closed', 'closed', '', '324ac196-1584-4f3d-9fe2-bc7efadb117e', '', '', '2025-11-30 12:46:40', '2025-11-30 09:46:40', '', 0, 'https://portera.test/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2025-11-30 12:50:07', '2025-11-30 09:50:07', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:7:"Faq.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'FAQ Sections', 'faq-sections', 'publish', 'closed', 'closed', '', 'group_692c12fca38a5', '', '', '2025-11-30 13:03:05', '2025-11-30 10:03:05', '', 0, 'https://portera.test/?post_type=acf-field-group&#038;p=19', 0, 'acf-field-group', '', 0),
(20, 1, '2025-11-30 12:50:07', '2025-11-30 09:50:07', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"table";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'FAQ Section', 'faq_section', 'publish', 'closed', 'closed', '', 'field_692c12fc167d7', '', '', '2025-11-30 12:50:07', '2025-11-30 09:50:07', '', 19, 'https://portera.test/?post_type=acf-field&p=20', 0, 'acf-field', '', 0),
(21, 1, '2025-11-30 12:50:07', '2025-11-30 09:50:07', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_692c130f167d8', '', '', '2025-11-30 12:50:07', '2025-11-30 09:50:07', '', 20, 'https://portera.test/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2025-11-30 12:50:07', '2025-11-30 09:50:07', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:0:"";}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_692c131a167d9', '', '', '2025-11-30 12:50:07', '2025-11-30 09:50:07', '', 20, 'https://portera.test/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 1, '2025-11-30 12:54:54', '2025-11-30 09:54:54', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2025-11-30 13:02:53', '2025-11-30 10:02:53', '', 0, 'https://portera.test/?page_id=23', 0, 'page', '', 0),
(24, 1, '2025-11-30 12:54:54', '2025-11-30 09:54:54', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-11-30 12:54:54', '2025-11-30 09:54:54', '', 23, 'https://portera.test/?p=24', 0, 'revision', '', 0),
(25, 1, '2025-11-30 12:54:54', '2025-11-30 09:54:54', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-11-30 12:54:54', '2025-11-30 09:54:54', '', 23, 'https://portera.test/?p=25', 0, 'revision', '', 0),
(26, 1, '2025-11-30 12:59:24', '2025-11-30 09:59:24', '', 'faq', '', 'inherit', 'open', 'closed', '', 'faq-2', '', '', '2025-11-30 12:59:24', '2025-11-30 09:59:24', '', 23, 'https://portera.test/wp-content/uploads/2025/11/faq.webp', 0, 'attachment', 'image/webp', 0),
(27, 1, '2025-11-30 13:37:56', '2025-11-30 10:11:05', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2025-11-30 13:37:56', '2025-11-30 10:37:56', '', 0, 'https://portera.test/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2025-11-30 13:37:56', '2025-11-30 10:11:05', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2025-11-30 13:37:56', '2025-11-30 10:37:56', '', 0, 'https://portera.test/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2025-11-30 13:35:44', '2025-11-30 10:35:44', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-11-30 13:35:44', '2025-11-30 10:35:44', '', 0, 'https://portera.test/?page_id=29', 0, 'page', '', 0),
(30, 1, '2025-11-30 13:35:44', '2025-11-30 10:35:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-11-30 13:35:44', '2025-11-30 10:35:44', '', 29, 'https://portera.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2025-11-30 13:37:56', '2025-11-30 10:36:08', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2025-11-30 13:37:56', '2025-11-30 10:37:56', '', 0, 'https://portera.test/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2025-11-30 13:36:30', '2025-11-30 10:36:30', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2025-11-30 16:31:43', '2025-11-30 13:31:43', '', 0, 'https://portera.test/?page_id=32', 0, 'page', '', 0),
(33, 1, '2025-11-30 13:36:30', '2025-11-30 10:36:30', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-11-30 13:36:30', '2025-11-30 10:36:30', '', 32, 'https://portera.test/?p=33', 0, 'revision', '', 0),
(34, 1, '2025-11-30 13:36:47', '2025-11-30 10:36:47', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2025-11-30 14:13:25', '2025-11-30 11:13:25', '', 0, 'https://portera.test/?page_id=34', 0, 'page', '', 0),
(35, 1, '2025-11-30 13:36:47', '2025-11-30 10:36:47', '', 'Events', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2025-11-30 13:36:47', '2025-11-30 10:36:47', '', 34, 'https://portera.test/?p=35', 0, 'revision', '', 0),
(36, 1, '2025-11-30 13:37:06', '2025-11-30 10:37:06', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2025-11-30 13:37:33', '2025-11-30 10:37:33', '', 0, 'https://portera.test/?page_id=36', 0, 'page', '', 0),
(37, 1, '2025-11-30 13:37:06', '2025-11-30 10:37:06', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2025-11-30 13:37:06', '2025-11-30 10:37:06', '', 36, 'https://portera.test/?p=37', 0, 'revision', '', 0),
(38, 1, '2025-11-30 13:37:29', '2025-11-30 10:37:29', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2025-11-30 13:37:29', '2025-11-30 10:37:29', '', 36, 'https://portera.test/wp-content/uploads/2025/11/about.webp', 0, 'attachment', 'image/webp', 0),
(39, 1, '2025-11-30 13:37:56', '2025-11-30 10:37:56', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2025-11-30 13:37:56', '2025-11-30 10:37:56', '', 0, 'https://portera.test/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2025-11-30 13:37:56', '2025-11-30 10:37:56', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2025-11-30 13:37:56', '2025-11-30 10:37:56', '', 0, 'https://portera.test/?p=40', 4, 'nav_menu_item', '', 0),
(41, 1, '2025-11-30 13:37:56', '2025-11-30 10:37:56', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2025-11-30 13:37:56', '2025-11-30 10:37:56', '', 0, 'https://portera.test/?p=41', 5, 'nav_menu_item', '', 0),
(42, 1, '2025-11-30 13:41:28', '2025-11-30 10:41:28', '<!-- wp:paragraph -->\n<p>For years, moving has been seen as casual work, the kind of job one takes up to “fill the gap” before something better comes along. Yet behind every successful relocation is a skillset that demands precision, care, and trust. From planning logistics and safeguarding fragile belongings to ensuring smooth handovers across borders, professional moving is far from simple labour. It’s a trade — and one that is evolving fast.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Shift Toward Professionalization</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kenya’s relocation industry is growing rapidly, fueled by urbanization, global mobility, and corporate expansion. With that growth comes a new challenge: consistency and professionalism. Nairobi is alos one of the United Nations Global Headquarters and the city has more than one hunc Clients today expect more — safety, efficiency, and courtesy that match international standards. But here’s the reality: until now, there has been no structured way to learn the art and science of moving. Most movers have learned on the job, through experience alone. That gap is what inspired the creation of the Portera Mobility Training Institute (PMTI) , a pioneering institution dedicated to training and certifying movers in Kenya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Raising the Bar for a Growing Industry</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI was founded by Nellions Moving &amp; Relocations, one of East Africa’s most trusted moving brands, with a clear mission to redefine what it means to be a mover. The institute offers structured courses that blend hands-on training, safety education, client service, and professional etiquette. Graduates leave with more than just a certificate. They gain discipline, confidence, and a clear understanding that moving is not casual work; it\'s a profession built on integrity, skill, and care.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Empowering the Next Generation of Skilled Workers</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>For young Kenyans, the moving industry represents a gateway to stability and growth. Every day, movers help families start new chapters and help businesses expand into new spaces. Their work carries impact and purpose. By offering a recognized path to certification, PMTI gives the opportunity to pursue dignified, hands-on careers that can sustain families and inspire pride.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Ripple Effect: Industry Transformation</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Standardized training doesn’t just benefit the worker, it strengthens the entire value chain. Professional movers improve customer satisfaction, reduce loss and damage, and raise the reputation of the companies they work for. Over time, a trained workforce creates trust in the market and attracts investment in logistics and relocation services. This ripple effect is how PMTI envisions the future: a Kenya where the moving industry stands as a model for skilled, ethical service delivery.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><!-- wp:paragraph -->\n<p>The rise of professional movers in Kenya isn’t just about filling a market gap, it\'s about shifting perception. It’s about showing that skill, when nurtured and respected, becomes the foundation for entire industries to grow. At PMTI, we’re not just training movers; we’re shaping professionals who move lives forward.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></blockquote>\n<!-- /wp:quote -->', 'The Rise of Professional Movers in Kenya', 'For years, moving has been seen as casual work, the kind of job one takes up to “fill the gap” before something better comes along. Yet behind every successful relocation is a skillset that demands precision, care, and trust. ', 'publish', 'closed', 'open', '', 'the-rise-of-professional-movers-in-kenya', '', '', '2025-11-30 16:00:50', '2025-11-30 13:00:50', '', 0, 'https://portera.test/?p=42', 0, 'post', '', 0),
(43, 1, '2025-11-30 13:41:28', '2025-11-30 10:41:28', '<!-- wp:paragraph -->\n<p>For years, moving has been seen as casual work, the kind of job one takes up to “fill the gap” before something better comes along. Yet behind every successful relocation is a skillset that demands precision, care, and trust. From planning logistics and safeguarding fragile belongings to ensuring smooth handovers across borders, professional moving is far from simple labour. It’s a trade — and one that is evolving fast.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Shift Toward Professionalization</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kenya’s relocation industry is growing rapidly, fueled by urbanization, global mobility, and corporate expansion. With that growth comes a new challenge: consistency and professionalism. Nairobi is alos one of the United Nations Global Headquarters and the city has more than one hunc Clients today expect more — safety, efficiency, and courtesy that match international standards. But here’s the reality: until now, there has been no structured way to learn the art and science of moving. Most movers have learned on the job, through experience alone. That gap is what inspired the creation of the Portera Mobility Training Institute (PMTI) , a pioneering institution dedicated to training and certifying movers in Kenya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Raising the Bar for a Growing Industry</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI was founded by Nellions Moving &amp; Relocations, one of East Africa’s most trusted moving brands, with a clear mission to redefine what it means to be a mover. The institute offers structured courses that blend hands-on training, safety education, client service, and professional etiquette. Graduates leave with more than just a certificate. They gain discipline, confidence, and a clear understanding that moving is not casual work; it\'s a profession built on integrity, skill, and care.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Empowering the Next Generation of Skilled Workers</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>For young Kenyans, the moving industry represents a gateway to stability and growth. Every day, movers help families start new chapters and help businesses expand into new spaces. Their work carries impact and purpose. By offering a recognized path to certification, PMTI gives the opportunity to pursue dignified, hands-on careers that can sustain families and inspire pride.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Ripple Effect: Industry Transformation</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Standardized training doesn’t just benefit the worker, it strengthens the entire value chain. Professional movers improve customer satisfaction, reduce loss and damage, and raise the reputation of the companies they work for. Over time, a trained workforce creates trust in the market and attracts investment in logistics and relocation services. This ripple effect is how PMTI envisions the future: a Kenya where the moving industry stands as a model for skilled, ethical service delivery.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><!-- wp:paragraph -->\n<p>The rise of professional movers in Kenya isn’t just about filling a market gap, it\'s about shifting perception. It’s about showing that skill, when nurtured and respected, becomes the foundation for entire industries to grow. At PMTI, we’re not just training movers; we’re shaping professionals who move lives forward.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></blockquote>\n<!-- /wp:quote -->', '', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2025-11-30 13:41:28', '2025-11-30 10:41:28', '', 42, 'https://portera.test/?p=43', 0, 'revision', '', 0),
(45, 1, '2025-11-30 13:50:32', '2025-11-30 10:50:32', '<!-- wp:paragraph -->\n<p>For years, moving has been seen as casual work, the kind of job one takes up to “fill the gap” before something better comes along. Yet behind every successful relocation is a skillset that demands precision, care, and trust. From planning logistics and safeguarding fragile belongings to ensuring smooth handovers across borders, professional moving is far from simple labour. It’s a trade — and one that is evolving fast.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Shift Toward Professionalization</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kenya’s relocation industry is growing rapidly, fueled by urbanization, global mobility, and corporate expansion. With that growth comes a new challenge: consistency and professionalism. Nairobi is alos one of the United Nations Global Headquarters and the city has more than one hunc Clients today expect more — safety, efficiency, and courtesy that match international standards. But here’s the reality: until now, there has been no structured way to learn the art and science of moving. Most movers have learned on the job, through experience alone. That gap is what inspired the creation of the Portera Mobility Training Institute (PMTI) , a pioneering institution dedicated to training and certifying movers in Kenya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Raising the Bar for a Growing Industry</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI was founded by Nellions Moving &amp; Relocations, one of East Africa’s most trusted moving brands, with a clear mission to redefine what it means to be a mover. The institute offers structured courses that blend hands-on training, safety education, client service, and professional etiquette. Graduates leave with more than just a certificate. They gain discipline, confidence, and a clear understanding that moving is not casual work; it\'s a profession built on integrity, skill, and care.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Empowering the Next Generation of Skilled Workers</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>For young Kenyans, the moving industry represents a gateway to stability and growth. Every day, movers help families start new chapters and help businesses expand into new spaces. Their work carries impact and purpose. By offering a recognized path to certification, PMTI gives the opportunity to pursue dignified, hands-on careers that can sustain families and inspire pride.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Ripple Effect: Industry Transformation</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Standardized training doesn’t just benefit the worker, it strengthens the entire value chain. Professional movers improve customer satisfaction, reduce loss and damage, and raise the reputation of the companies they work for. Over time, a trained workforce creates trust in the market and attracts investment in logistics and relocation services. This ripple effect is how PMTI envisions the future: a Kenya where the moving industry stands as a model for skilled, ethical service delivery.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><!-- wp:paragraph -->\n<p>The rise of professional movers in Kenya isn’t just about filling a market gap, it\'s about shifting perception. It’s about showing that skill, when nurtured and respected, becomes the foundation for entire industries to grow. At PMTI, we’re not just training movers; we’re shaping professionals who move lives forward.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></blockquote>\n<!-- /wp:quote -->', 'The Rise of Professional Movers in Kenya', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2025-11-30 13:50:32', '2025-11-30 10:50:32', '', 42, 'https://portera.test/?p=45', 0, 'revision', '', 0),
(46, 1, '2025-11-30 14:01:23', '2025-11-30 11:01:23', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2025-11-30 14:01:23', '2025-11-30 11:01:23', '', 42, 'https://portera.test/wp-content/uploads/2025/11/2.webp', 0, 'attachment', 'image/webp', 0),
(47, 1, '2025-11-30 14:13:20', '2025-11-30 11:13:20', '', 'events', '', 'inherit', 'open', 'closed', '', 'events-2', '', '', '2025-11-30 14:13:20', '2025-11-30 11:13:20', '', 34, 'https://portera.test/wp-content/uploads/2025/11/events.webp', 0, 'attachment', 'image/webp', 0),
(48, 1, '2025-11-30 15:45:47', '2025-11-30 12:45:47', '', 'blog-main', '', 'inherit', 'open', 'closed', '', 'blog-main', '', '', '2025-11-30 15:45:47', '2025-11-30 12:45:47', '', 32, 'https://portera.test/wp-content/uploads/2025/11/blog-main.webp', 0, 'attachment', 'image/webp', 0),
(49, 1, '2025-11-30 16:00:50', '2025-11-30 13:00:50', '<!-- wp:paragraph -->\n<p>For years, moving has been seen as casual work, the kind of job one takes up to “fill the gap” before something better comes along. Yet behind every successful relocation is a skillset that demands precision, care, and trust. From planning logistics and safeguarding fragile belongings to ensuring smooth handovers across borders, professional moving is far from simple labour. It’s a trade — and one that is evolving fast.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Shift Toward Professionalization</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kenya’s relocation industry is growing rapidly, fueled by urbanization, global mobility, and corporate expansion. With that growth comes a new challenge: consistency and professionalism. Nairobi is alos one of the United Nations Global Headquarters and the city has more than one hunc Clients today expect more — safety, efficiency, and courtesy that match international standards. But here’s the reality: until now, there has been no structured way to learn the art and science of moving. Most movers have learned on the job, through experience alone. That gap is what inspired the creation of the Portera Mobility Training Institute (PMTI) , a pioneering institution dedicated to training and certifying movers in Kenya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Raising the Bar for a Growing Industry</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI was founded by Nellions Moving &amp; Relocations, one of East Africa’s most trusted moving brands, with a clear mission to redefine what it means to be a mover. The institute offers structured courses that blend hands-on training, safety education, client service, and professional etiquette. Graduates leave with more than just a certificate. They gain discipline, confidence, and a clear understanding that moving is not casual work; it\'s a profession built on integrity, skill, and care.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Empowering the Next Generation of Skilled Workers</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>For young Kenyans, the moving industry represents a gateway to stability and growth. Every day, movers help families start new chapters and help businesses expand into new spaces. Their work carries impact and purpose. By offering a recognized path to certification, PMTI gives the opportunity to pursue dignified, hands-on careers that can sustain families and inspire pride.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">The Ripple Effect: Industry Transformation</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Standardized training doesn’t just benefit the worker, it strengthens the entire value chain. Professional movers improve customer satisfaction, reduce loss and damage, and raise the reputation of the companies they work for. Over time, a trained workforce creates trust in the market and attracts investment in logistics and relocation services. This ripple effect is how PMTI envisions the future: a Kenya where the moving industry stands as a model for skilled, ethical service delivery.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><!-- wp:quote {"className":"is-style-default"} -->\n<blockquote class="wp-block-quote is-style-default"><!-- wp:paragraph -->\n<p>The rise of professional movers in Kenya isn’t just about filling a market gap, it\'s about shifting perception. It’s about showing that skill, when nurtured and respected, becomes the foundation for entire industries to grow. At PMTI, we’re not just training movers; we’re shaping professionals who move lives forward.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote --></blockquote>\n<!-- /wp:quote -->', 'The Rise of Professional Movers in Kenya', 'For years, moving has been seen as casual work, the kind of job one takes up to “fill the gap” before something better comes along. Yet behind every successful relocation is a skillset that demands precision, care, and trust. ', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2025-11-30 16:00:50', '2025-11-30 13:00:50', '', 42, 'https://portera.test/?p=49', 0, 'revision', '', 0),
(50, 1, '2025-11-30 16:01:09', '2025-11-30 13:01:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2025-11-30 16:01:09', '2025-11-30 13:01:09', '', 1, 'https://portera.test/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-11-30 16:01:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-11-30 16:01:11', '0000-00-00 00:00:00', '', 0, 'https://portera.test/?p=51', 0, 'post', '', 0),
(52, 1, '2025-11-30 16:03:18', '2025-11-30 13:03:18', '<label> Your name\r\n    [text* your-name autocomplete:name class:form-control] </label>\r\n\r\n<label> Your email\r\n    [email* your-email autocomplete:email class:form-control] </label>\r\n\r\n[tel* YourPhone class:form-control]\r\n<label> Subject\r\n    [text* your-subject] </label>\r\n\r\n<label> Your message\r\n    [textarea your-message class:form-control] </label>\r\n\r\n[submit "Submit"]\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@portera.test>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@portera.test>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2025-11-30 16:03:18', '2025-11-30 13:03:18', '', 0, 'https://portera.test/?post_type=wpcf7_contact_form&p=52', 0, 'wpcf7_contact_form', '', 0),
(53, 1, '2025-11-30 16:05:56', '2025-11-30 13:05:56', '<label> Your name\r\n    [text* your-name autocomplete:name class:form-control] </label>\r\n\r\n<label> Your email\r\n    [email* your-email autocomplete:email class:form-control] </label>\r\n\r\n<label> Your Phone\r\n[tel* YourPhone class:form-control]</label>\r\n\r\n<label> Tell me about courses\r\n    [textarea your-message class:form-control] </label>\r\n\r\n[submit id:submit "Submit"]\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@portera.test>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@portera.test>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Course Form', '', 'publish', 'closed', 'closed', '', 'contact-form_copy', '', '', '2025-11-30 16:10:26', '2025-11-30 13:10:26', '', 0, 'https://portera.test/?post_type=wpcf7_contact_form&#038;p=53', 0, 'wpcf7_contact_form', '', 0),
(54, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Home Carousel', 'home-carousel', 'publish', 'closed', 'closed', '', 'group_692c5119b0567', '', '', '2025-11-30 17:19:27', '2025-11-30 14:19:27', '', 0, 'https://portera.test/?post_type=acf-field-group&#038;p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"table";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Carousel', 'carousel', 'publish', 'closed', 'closed', '', 'field_692c51190b7fa', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 54, 'https://portera.test/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Top title', 'top_title', 'publish', 'closed', 'closed', '', 'field_692c51300b7fb', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 55, 'https://portera.test/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_692c51390b7fc', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 55, 'https://portera.test/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:7:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Learn More Button', 'learn_more', 'publish', 'closed', 'closed', '', 'field_692c51450b7fd', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 55, 'https://portera.test/?post_type=acf-field&p=58', 2, 'acf-field', '', 0),
(59, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:7:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Carousel Link', 'carousel_link', 'publish', 'closed', 'closed', '', 'field_692c51ae0b7fe', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 55, 'https://portera.test/?post_type=acf-field&p=59', 3, 'acf-field', '', 0),
(60, 1, '2025-11-30 17:19:27', '2025-11-30 14:19:27', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Carousel Item', 'carousel_item', 'publish', 'closed', 'closed', '', 'field_692c525d8118e', '', '', '2025-11-30 17:19:27', '2025-11-30 14:19:27', '', 55, 'https://portera.test/?post_type=acf-field&p=60', 4, 'acf-field', '', 0),
(62, 1, '2025-11-30 17:37:13', '2025-11-30 14:37:13', '', 'movers1', '', 'inherit', 'open', 'closed', '', 'movers1', '', '', '2025-11-30 17:37:13', '2025-11-30 14:37:13', '', 29, 'https://portera.test/wp-content/uploads/2025/11/movers1.webp', 0, 'attachment', 'image/webp', 0),
(63, 1, '2025-11-30 17:37:18', '2025-11-30 14:37:18', '', 'movers2', '', 'inherit', 'open', 'closed', '', 'movers2', '', '', '2025-11-30 17:37:18', '2025-11-30 14:37:18', '', 29, 'https://portera.test/wp-content/uploads/2025/11/movers2.webp', 0, 'attachment', 'image/webp', 0) ;

#
# End of data contents of table `mtip_posts`
# --------------------------------------------------------



#
# Delete any existing table `mtip_term_relationships`
#

DROP TABLE IF EXISTS `mtip_term_relationships`;


#
# Table structure of table `mtip_term_relationships`
#

CREATE TABLE `mtip_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_term_relationships`
#
INSERT INTO `mtip_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(31, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 1, 0) ;

#
# End of data contents of table `mtip_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `mtip_term_taxonomy`
#

DROP TABLE IF EXISTS `mtip_term_taxonomy`;


#
# Table structure of table `mtip_term_taxonomy`
#

CREATE TABLE `mtip_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_term_taxonomy`
#
INSERT INTO `mtip_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6) ;

#
# End of data contents of table `mtip_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `mtip_termmeta`
#

DROP TABLE IF EXISTS `mtip_termmeta`;


#
# Table structure of table `mtip_termmeta`
#

CREATE TABLE `mtip_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_termmeta`
#

#
# End of data contents of table `mtip_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `mtip_terms`
#

DROP TABLE IF EXISTS `mtip_terms`;


#
# Table structure of table `mtip_terms`
#

CREATE TABLE `mtip_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_terms`
#
INSERT INTO `mtip_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Home', 'home', 0) ;

#
# End of data contents of table `mtip_terms`
# --------------------------------------------------------



#
# Delete any existing table `mtip_usermeta`
#

DROP TABLE IF EXISTS `mtip_usermeta`;


#
# Table structure of table `mtip_usermeta`
#

CREATE TABLE `mtip_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_usermeta`
#
INSERT INTO `mtip_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminPMTI'),
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
(12, 1, 'mtip_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'mtip_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"62064f073f8a745ef4e329c377ad0029493338a793aef41976ddabbbdcf5a1c3";a:4:{s:10:"expiration";i:1765640661;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36";s:5:"login";i:1764431061;}}'),
(17, 1, 'mtip_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'mtip_user-settings', 'libraryContent=browse'),
(20, 1, 'mtip_user-settings-time', '1764487884'),
(21, 1, 'mtip_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:1:{s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2025-11-30T08:07:13.261Z";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(24, 1, 'nav_menu_recently_edited', '2') ;

#
# End of data contents of table `mtip_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `mtip_users`
#

DROP TABLE IF EXISTS `mtip_users`;


#
# Table structure of table `mtip_users`
#

CREATE TABLE `mtip_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_users`
#
INSERT INTO `mtip_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminPMTI', '$wp$2y$12$2.pDZ/z34g.EREjUcnKPSew95KARdSLl1VOgysIDqdcl.SX5FgOp6', 'adminpmti', 'gkwambata@gmail.com', 'https://portera.test', '2025-11-29 15:44:05', '', 0, 'adminPMTI') ;

#
# End of data contents of table `mtip_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

