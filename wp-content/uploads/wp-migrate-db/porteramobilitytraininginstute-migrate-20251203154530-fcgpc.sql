# WordPress MySQL database migration
#
# Generated: Wednesday 3. December 2025 15:45 UTC
# Hostname: 127.0.0.1
# Database: `portera`
# URL: //porteracms.test
# Path: C:\\Users\\George\\PhpstormProjects\\PorteraCMS
# Tables: mtip_commentmeta, mtip_comments, mtip_links, mtip_options, mtip_postmeta, mtip_posts, mtip_term_relationships, mtip_term_taxonomy, mtip_termmeta, mtip_terms, mtip_usermeta, mtip_users
# Table Prefix: mtip_
# Post Types: revision, acf-field, acf-field-group, attachment, customize_changeset, events, nav_menu_item, page, post, simple_cpt, trainers, wpcf7_contact_form
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
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
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_options`
#
INSERT INTO `mtip_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1764780245;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764780254;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1764782045;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764783845;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764819861;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1764820442;a:1:{s:29:"fs_data_sync_debug-log-viewer";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1764863053;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1764863061;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1764863065;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1765092621;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1765122253;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'https://porteracms.test', 'on'),
(3, 'home', 'https://porteracms.test', 'on'),
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
(27, 'comment_moderation', '1', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:135:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:11:"trainers/?$";s:28:"index.php?post_type=trainers";s:41:"trainers/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=trainers&feed=$matches[1]";s:36:"trainers/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?post_type=trainers&feed=$matches[1]";s:28:"trainers/page/([0-9]{1,})/?$";s:46:"index.php?post_type=trainers&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"events/([^/]+)/embed/?$";s:39:"index.php?events=$matches[1]&embed=true";s:27:"events/([^/]+)/trackback/?$";s:33:"index.php?events=$matches[1]&tb=1";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?events=$matches[1]&cpage=$matches[2]";s:31:"events/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?events=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"trainers/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"trainers/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"trainers/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"trainers/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"trainers/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"trainers/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"trainers/([^/]+)/embed/?$";s:41:"index.php?trainers=$matches[1]&embed=true";s:29:"trainers/([^/]+)/trackback/?$";s:35:"index.php?trainers=$matches[1]&tb=1";s:49:"trainers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?trainers=$matches[1]&feed=$matches[2]";s:44:"trainers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?trainers=$matches[1]&feed=$matches[2]";s:37:"trainers/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?trainers=$matches[1]&paged=$matches[2]";s:44:"trainers/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?trainers=$matches[1]&cpage=$matches[2]";s:33:"trainers/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?trainers=$matches[1]&page=$matches[2]";s:25:"trainers/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"trainers/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"trainers/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"trainers/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"trainers/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"trainers/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:23:"index.php?sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=29&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:6:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:37:"debug-log-viewer/debug-log-viewer.php";i:3;s:47:"show-current-template/show-current-template.php";i:4;s:25:"simple-cpt/simple-cpt.php";i:5;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
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
(47, 'db_version', '60717', 'on'),
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
(80, 'uninstall_plugins', 'a:1:{s:43:"debug-log-viewer/admin/debug-log-viewer.php";a:2:{i:0;s:50:"DebugLogViewer\\Admin\\Controllers\\ServiceController";i:1;s:16:"uninstallHandler";}}', 'off'),
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
(149, 'theme_mods_twentytwentyfive', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1764431076;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(150, 'current_theme', 'portera', 'auto'),
(151, 'theme_mods_portera', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"top-menu";i:2;}s:18:"custom_css_post_id";i:-1;s:11:"custom_logo";i:16;s:12:"header_image";s:61:"https://portera.test/wp-content/uploads/2025/11/logo-dark.png";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:9;s:3:"url";s:61:"https://portera.test/wp-content/uploads/2025/11/logo-dark.png";s:13:"thumbnail_url";s:61:"https://portera.test/wp-content/uploads/2025/11/logo-dark.png";s:6:"height";i:104;s:5:"width";i:290;}}', 'on'),
(152, 'theme_switched', '', 'auto'),
(158, 'finished_updating_comment_type', '1', 'auto'),
(171, 'recently_activated', 'a:0:{}', 'off'),
(172, 'acf_version', '6.1.6', 'auto'),
(173, 'wpcf7', 'a:2:{s:7:"version";s:5:"6.1.4";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1764487621;s:7:"version";s:5:"5.9.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'auto'),
(186, 'WPLANG', '', 'auto'),
(187, 'new_admin_email', 'gkwambata@gmail.com', 'auto'),
(193, 'site_logo', '16', 'auto'),
(232, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'off'),
(245, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(321, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1764776730;}', 'off'),
(414, 'recovery_mode_email_last_sent', '1764676649', 'auto'),
(436, 'secret_key', 'eZ`GGI+[gnd=8q>cp/{vEuh2tYrVdCPE1/}BJN?$,g:J:$yqC(yCd:2>%5^a&;GU', 'off'),
(465, 'core_updater.lock', '1764715322', 'off'),
(468, 'wp_notes_notify', '', 'on'),
(469, 'db_upgraded', '', 'on'),
(470, 'can_compress_scripts', '0', 'on'),
(473, 'fs_active_plugins', 'O:8:"stdClass":3:{s:7:"plugins";a:1:{s:46:"debug-log-viewer/vendor/freemius/wordpress-sdk";O:8:"stdClass":4:{s:7:"version";s:6:"2.13.0";s:4:"type";s:6:"plugin";s:9:"timestamp";i:1764716116;s:11:"plugin_path";s:37:"debug-log-viewer/debug-log-viewer.php";}}s:7:"abspath";s:44:"C:\\Users\\George\\PhpstormProjects\\PorteraCMS/";s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:37:"debug-log-viewer/debug-log-viewer.php";s:8:"sdk_path";s:46:"debug-log-viewer/vendor/freemius/wordpress-sdk";s:7:"version";s:6:"2.13.0";s:13:"in_activation";b:0;s:9:"timestamp";i:1764716116;}}', 'auto'),
(474, 'fs_debug_mode', '', 'auto'),
(475, 'fs_accounts', 'a:12:{s:21:"id_slug_type_path_map";a:1:{i:17350;a:3:{s:4:"slug";s:16:"debug-log-viewer";s:4:"type";s:6:"plugin";s:4:"path";s:37:"debug-log-viewer/debug-log-viewer.php";}}s:11:"plugin_data";a:1:{s:16:"debug-log-viewer";a:25:{s:19:"last_load_timestamp";i:1764716118;s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:37:"debug-log-viewer/debug-log-viewer.php";}s:20:"is_network_activated";b:0;s:17:"install_timestamp";i:1764716118;s:17:"was_plugin_loaded";b:1;s:21:"is_plugin_new_install";b:0;s:16:"sdk_last_version";N;s:11:"sdk_version";s:6:"2.13.0";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:5:"2.0.4";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:17:"connectivity_test";a:6:{s:12:"is_connected";b:1;s:4:"host";s:15:"porteracms.test";s:9:"server_ip";s:9:"127.0.0.1";s:9:"is_active";b:1;s:9:"timestamp";i:1764716142;s:7:"version";s:5:"2.0.4";}s:15:"prev_is_premium";b:0;s:18:"sticky_optin_added";b:1;s:30:"is_diagnostic_tracking_allowed";b:1;s:30:"is_extensions_tracking_allowed";b:1;s:14:"has_trial_plan";b:0;s:19:"keepalive_timestamp";i:1764750005;s:20:"activation_timestamp";i:1764716142;s:9:"sync_cron";O:8:"stdClass":5:{s:7:"version";s:5:"2.0.4";s:7:"blog_id";i:0;s:11:"sdk_version";s:6:"2.13.0";s:9:"timestamp";i:1764716149;s:2:"on";b:1;}s:14:"sync_timestamp";i:1764750005;s:22:"install_sync_timestamp";i:1764750005;}}s:13:"file_slug_map";a:1:{s:37:"debug-log-viewer/debug-log-viewer.php";s:16:"debug-log-viewer";}s:7:"plugins";a:1:{s:16:"debug-log-viewer";O:9:"FS_Plugin":25:{s:2:"id";s:5:"17350";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:0;s:10:"public_key";s:32:"pk_d456c712f16510d920c9f4ba4880a";s:10:"secret_key";N;s:16:"parent_plugin_id";N;s:5:"title";s:16:"Debug Log Viewer";s:4:"slug";s:16:"debug-log-viewer";s:12:"premium_slug";s:24:"debug-log-viewer-premium";s:4:"type";s:6:"plugin";s:20:"affiliate_moderation";b:0;s:19:"is_wp_org_compliant";b:1;s:22:"premium_releases_count";N;s:4:"file";s:37:"debug-log-viewer/debug-log-viewer.php";s:7:"version";s:5:"2.0.4";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:14:"premium_suffix";s:9:"(Premium)";s:7:"is_live";b:1;s:9:"bundle_id";N;s:17:"bundle_public_key";N;s:17:"opt_in_moderation";N;s:11:"_is_updated";b:0;}}s:13:"admin_notices";a:1:{s:16:"debug-log-viewer";a:0:{}}s:9:"unique_id";s:32:"700f81401012983c4d57af2a0458ba4b";s:5:"plans";a:1:{s:16:"debug-log-viewer";a:2:{i:0;O:14:"FS_Plugin_Plan":25:{s:2:"id";s:8:"Mjg5MTQ=";s:7:"updated";N;s:7:"created";s:28:"MjAyNC0xMi0xNiAxNTozNjo0Nw==";s:22:"\0FS_Entity\0_is_updated";b:0;s:9:"plugin_id";s:8:"MTczNTA=";s:4:"name";s:8:"ZnJlZQ==";s:5:"title";s:8:"RnJlZQ==";s:11:"description";N;s:17:"is_free_localhost";s:4:"MQ==";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";s:0:"";s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:0:"";s:9:"is_hidden";s:0:"";s:7:"pricing";N;s:8:"features";N;s:11:"_is_updated";b:0;}i:1;O:14:"FS_Plugin_Plan":25:{s:2:"id";s:8:"Mjk4NDg=";s:7:"updated";s:28:"MjAyNS0wOS0yMiAxMjo0MzowNw==";s:7:"created";s:28:"MjAyNS0wMi0xNyAxODowMDoxOQ==";s:22:"\0FS_Entity\0_is_updated";b:0;s:9:"plugin_id";s:8:"MTczNTA=";s:4:"name";s:4:"cHJv";s:5:"title";s:4:"UHJv";s:11:"description";s:44:"QmVzdCBmb3IgZnJlZWxhbmNlcnMgYW5kIGFnZW5jaWVz";s:17:"is_free_localhost";s:0:"";s:17:"is_block_features";s:4:"MQ==";s:12:"license_type";s:4:"MA==";s:16:"is_https_support";s:0:"";s:12:"trial_period";N;s:23:"is_require_subscription";s:0:"";s:10:"support_kb";N;s:13:"support_forum";s:72:"aHR0cHM6Ly93b3JkcHJlc3Mub3JnL3N1cHBvcnQvcGx1Z2luL2RlYnVnLWxvZy12aWV3ZXIv";s:13:"support_email";s:28:"c2FuY2hvY2xvQGdtYWlsLmNvbQ==";s:13:"support_phone";N;s:13:"support_skype";s:0:"";s:18:"is_success_manager";s:0:"";s:11:"is_featured";s:4:"MQ==";s:9:"is_hidden";s:0:"";s:7:"pricing";N;s:8:"features";N;s:11:"_is_updated";b:0;}}}s:14:"active_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1764750005;s:3:"md5";s:32:"646096c45cc3d62fa3f55793a86ebb84";s:7:"plugins";a:6:{s:34:"advanced-custom-fields-pro/acf.php";a:5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:7:"version";s:5:"6.1.6";s:5:"title";s:26:"Advanced Custom Fields PRO";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:36:"contact-form-7/wp-contact-form-7.php";a:5:{s:4:"slug";s:14:"contact-form-7";s:7:"version";s:5:"6.1.4";s:5:"title";s:14:"Contact Form 7";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:37:"debug-log-viewer/debug-log-viewer.php";a:5:{s:4:"slug";s:16:"debug-log-viewer";s:7:"version";s:5:"2.0.4";s:5:"title";s:16:"Debug Log Viewer";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:47:"show-current-template/show-current-template.php";a:5:{s:4:"slug";s:21:"show-current-template";s:7:"version";s:5:"0.5.3";s:5:"title";s:21:"Show Current Template";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:31:"wp-migrate-db/wp-migrate-db.php";a:5:{s:4:"slug";s:13:"wp-migrate-db";s:7:"version";s:5:"2.7.7";s:5:"title";s:15:"WP Migrate Lite";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:25:"simple-cpt/simple-cpt.php";a:5:{s:4:"slug";s:10:"simple-cpt";s:7:"version";s:5:"1.1.0";s:5:"title";s:10:"Simple CPT";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}}}s:11:"all_plugins";O:8:"stdClass":3:{s:9:"timestamp";i:1764750005;s:3:"md5";s:32:"7d938ac2ea7aee4806a7f15bde2a9b66";s:7:"plugins";a:9:{s:34:"advanced-custom-fields-pro/acf.php";a:5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:7:"version";s:5:"6.1.6";s:5:"title";s:26:"Advanced Custom Fields PRO";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:19:"akismet/akismet.php";a:5:{s:4:"slug";s:7:"akismet";s:7:"version";s:3:"5.6";s:5:"title";s:34:"Akismet Anti-spam: Spam Protection";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:36:"contact-form-7/wp-contact-form-7.php";a:5:{s:4:"slug";s:14:"contact-form-7";s:7:"version";s:5:"6.1.4";s:5:"title";s:14:"Contact Form 7";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:37:"debug-log-viewer/debug-log-viewer.php";a:5:{s:4:"slug";s:16:"debug-log-viewer";s:7:"version";s:5:"2.0.4";s:5:"title";s:16:"Debug Log Viewer";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:9:"hello.php";a:5:{s:4:"slug";s:11:"hello-dolly";s:7:"version";s:5:"1.7.2";s:5:"title";s:11:"Hello Dolly";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:19:"portera/portera.php";a:5:{s:4:"slug";s:7:"portera";s:7:"version";s:5:"1.0.0";s:5:"title";s:19:"Portera Base Plugin";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:47:"show-current-template/show-current-template.php";a:5:{s:4:"slug";s:21:"show-current-template";s:7:"version";s:5:"0.5.3";s:5:"title";s:21:"Show Current Template";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:31:"wp-migrate-db/wp-migrate-db.php";a:5:{s:4:"slug";s:13:"wp-migrate-db";s:7:"version";s:5:"2.7.7";s:5:"title";s:15:"WP Migrate Lite";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:25:"simple-cpt/simple-cpt.php";a:5:{s:4:"slug";s:10:"simple-cpt";s:7:"version";s:5:"1.1.0";s:5:"title";s:10:"Simple CPT";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:10:"all_themes";O:8:"stdClass":3:{s:9:"timestamp";i:1764750005;s:3:"md5";s:32:"361fab2bb27f2aaf416cd36561b178b2";s:6:"themes";a:4:{s:7:"portera";a:5:{s:4:"slug";s:7:"portera";s:7:"version";s:3:"2.0";s:5:"title";s:7:"portera";s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;}s:16:"twentytwentyfive";a:5:{s:4:"slug";s:16:"twentytwentyfive";s:7:"version";s:3:"1.3";s:5:"title";s:18:"Twenty Twenty-Five";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:16:"twentytwentyfour";a:5:{s:4:"slug";s:16:"twentytwentyfour";s:7:"version";s:3:"1.3";s:5:"title";s:18:"Twenty Twenty-Four";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}s:17:"twentytwentythree";a:5:{s:4:"slug";s:17:"twentytwentythree";s:7:"version";s:3:"1.6";s:5:"title";s:19:"Twenty Twenty-Three";s:9:"is_active";b:0;s:14:"is_uninstalled";b:0;}}}s:5:"sites";a:1:{s:16:"debug-log-viewer";O:7:"FS_Site":27:{s:2:"id";s:8:"19121471";s:7:"updated";N;s:7:"created";s:19:"2025-12-02 22:55:41";s:22:"\0FS_Entity\0_is_updated";b:0;s:10:"public_key";s:32:"pk_ddcb2f33fe1f8381a977fb5e18508";s:10:"secret_key";s:32:"sk_0_eYVYBi-!;=E@s76xHF&S%KP~G4X";s:7:"site_id";s:9:"280456918";s:7:"blog_id";N;s:9:"plugin_id";s:5:"17350";s:7:"user_id";s:7:"9945615";s:5:"title";s:33:"Portera Mobility Training Instute";s:3:"url";s:23:"https://porteracms.test";s:7:"version";s:5:"2.0.4";s:8:"language";s:5:"en-US";s:16:"platform_version";s:3:"6.9";s:11:"sdk_version";s:6:"2.13.0";s:28:"programming_language_version";s:6:"8.4.15";s:7:"plan_id";s:5:"28914";s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:10:"is_premium";b:0;s:15:"is_disconnected";b:0;s:9:"is_active";b:1;s:14:"is_uninstalled";b:0;s:7:"is_beta";b:0;s:11:"_is_updated";b:0;}}s:5:"users";a:1:{i:9945615;O:7:"FS_User":13:{s:2:"id";s:7:"9945615";s:7:"updated";N;s:7:"created";s:19:"2025-12-02 22:55:41";s:22:"\0FS_Entity\0_is_updated";b:0;s:10:"public_key";s:32:"pk_dd6c6f03c2fd14869bcfe38712794";s:10:"secret_key";s:32:"sk_r?<0#m0mk.C&.m?EFNc]142Occ+eI";s:5:"email";s:19:"gkwambata@gmail.com";s:5:"first";s:5:"Admin";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:11:"customer_id";N;s:5:"gross";N;s:11:"_is_updated";b:0;}}}', 'auto'),
(476, 'fs_api_cache', 'a:4:{s:31:"get:/v1/plugins/17350/info.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":14:{s:9:"plugin_id";s:5:"17350";s:3:"url";N;s:11:"description";N;s:17:"short_description";N;s:10:"banner_url";N;s:15:"card_banner_url";N;s:15:"selling_point_0";N;s:15:"selling_point_1";N;s:15:"selling_point_2";N;s:11:"screenshots";N;s:2:"id";s:4:"4790";s:7:"created";s:19:"2025-02-14 13:01:06";s:7:"updated";N;s:4:"icon";s:100:"https://s3-us-west-2.amazonaws.com/freemius/plugins/17350/icons/966a23c37f6e9976f295ff93b85c6529.png";}s:7:"created";i:1764716134;s:9:"timestamp";i:1765320934;}s:26:"get:/v1/users/9945615.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":10:{s:5:"email";s:19:"gkwambata@gmail.com";s:5:"first";s:5:"Admin";s:4:"last";s:0:"";s:11:"is_verified";b:0;s:4:"auth";s:8:"password";s:10:"secret_key";s:32:"sk_r?<0#m0mk.C&.m?EFNc]142Occ+eI";s:10:"public_key";s:32:"pk_dd6c6f03c2fd14869bcfe38712794";s:2:"id";s:7:"9945615";s:7:"created";s:19:"2025-12-02 22:55:41";s:7:"updated";N;}s:7:"created";i:1764716142;s:9:"timestamp";i:1764802542;}s:30:"get:/v1/installs/19121471.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":33:{s:7:"site_id";s:9:"280456918";s:9:"plugin_id";s:5:"17350";s:7:"user_id";s:7:"9945615";s:3:"url";s:23:"https://porteracms.test";s:5:"title";s:33:"Portera Mobility Training Instute";s:7:"version";s:5:"2.0.4";s:7:"plan_id";s:5:"28914";s:10:"license_id";N;s:13:"trial_plan_id";N;s:10:"trial_ends";N;s:15:"subscription_id";N;s:5:"gross";i:0;s:12:"country_code";s:2:"ke";s:8:"language";s:5:"en-US";s:16:"platform_version";s:3:"6.9";s:11:"sdk_version";s:6:"2.13.0";s:28:"programming_language_version";s:6:"8.4.15";s:9:"is_active";b:1;s:15:"is_disconnected";b:0;s:10:"is_premium";b:0;s:14:"is_uninstalled";b:0;s:9:"is_locked";b:0;s:6:"source";i:0;s:8:"upgraded";N;s:12:"last_seen_at";s:19:"2025-12-02 22:55:45";s:26:"last_served_update_version";N;s:10:"secret_key";s:32:"sk_0_eYVYBi-!;=E@s76xHF&S%KP~G4X";s:10:"public_key";s:32:"pk_ddcb2f33fe1f8381a977fb5e18508";s:2:"id";s:8:"19121471";s:7:"created";s:19:"2025-12-02 22:55:41";s:7:"updated";N;s:7:"charset";N;s:7:"is_beta";b:0;}s:7:"created";i:1764716142;s:9:"timestamp";i:1764802542;}s:46:"get:/v1/users/9945615/plugins/17350/plans.json";O:8:"stdClass":3:{s:6:"result";O:8:"stdClass":1:{s:5:"plans";a:2:{i:0;O:8:"stdClass":22:{s:9:"plugin_id";s:5:"17350";s:4:"name";s:4:"free";s:5:"title";s:4:"Free";s:11:"description";N;s:17:"is_free_localhost";b:1;s:17:"is_block_features";b:1;s:25:"is_block_features_monthly";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";N;s:23:"is_require_subscription";b:0;s:10:"support_kb";N;s:13:"support_forum";N;s:13:"support_email";N;s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:0;s:9:"is_hidden";b:0;s:2:"id";s:5:"28914";s:7:"created";s:19:"2024-12-16 15:36:47";s:7:"updated";N;}i:1;O:8:"stdClass":22:{s:9:"plugin_id";s:5:"17350";s:4:"name";s:3:"pro";s:5:"title";s:3:"Pro";s:11:"description";s:33:"Best for freelancers and agencies";s:17:"is_free_localhost";b:0;s:17:"is_block_features";b:1;s:25:"is_block_features_monthly";b:1;s:12:"license_type";i:0;s:16:"is_https_support";b:0;s:12:"trial_period";N;s:23:"is_require_subscription";b:0;s:10:"support_kb";N;s:13:"support_forum";s:54:"https://wordpress.org/support/plugin/debug-log-viewer/";s:13:"support_email";s:19:"sanchoclo@gmail.com";s:13:"support_phone";N;s:13:"support_skype";N;s:18:"is_success_manager";b:0;s:11:"is_featured";b:1;s:9:"is_hidden";b:0;s:2:"id";s:5:"29848";s:7:"created";s:19:"2025-02-17 18:00:19";s:7:"updated";s:19:"2025-09-22 12:43:07";}}}s:7:"created";i:1764749989;s:9:"timestamp";i:1764836389;}}', 'off'),
(477, 'dbg_lv_log_last_position', '34550', 'auto'),
(478, 'fs_gdpr', 'a:1:{s:2:"u1";a:1:{s:18:"show_opt_in_notice";b:0;}}', 'auto'),
(486, 'simple_cpt_flush_needed', '', 'auto'),
(563, 'category_children', 'a:0:{}', 'auto') ;

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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(19, 11, '_edit_lock', '1764774921:1'),
(20, 12, '_wp_attached_file', '2025/11/contactus.webp'),
(21, 12, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:1000;s:4:"file";s:22:"2025/11/contactus.webp";s:8:"filesize";i:58692;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:22:"contactus-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10442;}s:5:"large";a:5:{s:4:"file";s:23:"contactus-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:51010;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"contactus-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5372;}s:12:"medium_large";a:5:{s:4:"file";s:22:"contactus-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:36330;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 11, '_thumbnail_id', '147'),
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
(37, 19, '_edit_lock', '1764714268:1'),
(38, 23, '_edit_lock', '1764716885:1'),
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
(188, 29, '_edit_lock', '1764715053:1'),
(189, 31, '_menu_item_type', 'post_type'),
(190, 31, '_menu_item_menu_item_parent', '0'),
(191, 31, '_menu_item_object_id', '29'),
(192, 31, '_menu_item_object', 'page'),
(193, 31, '_menu_item_target', ''),
(194, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(195, 31, '_menu_item_xfn', ''),
(196, 31, '_menu_item_url', ''),
(198, 32, '_edit_lock', '1764772555:1'),
(199, 34, '_edit_lock', '1764761421:1'),
(200, 36, '_edit_lock', '1764755578:1'),
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
(250, 32, '_thumbnail_id', '148'),
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
(274, 54, '_edit_lock', '1764675839:1'),
(277, 62, '_wp_attached_file', '2025/11/movers1.webp'),
(278, 62, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:210;s:4:"file";s:20:"2025/11/movers1.webp";s:8:"filesize";i:26780;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"movers1-300x121.webp";s:5:"width";i:300;s:6:"height";i:121;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7754;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5238;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(279, 63, '_wp_attached_file', '2025/11/movers2.webp'),
(280, 63, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:520;s:6:"height";i:305;s:4:"file";s:20:"2025/11/movers2.webp";s:8:"filesize";i:34114;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"movers2-300x176.webp";s:5:"width";i:300;s:6:"height";i:176;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10018;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4656;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(281, 64, '_wp_attached_file', '2025/12/movers1.webp'),
(282, 64, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:700;s:4:"file";s:20:"2025/12/movers1.webp";s:8:"filesize";i:207152;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:20:"movers1-300x140.webp";s:5:"width";i:300;s:6:"height";i:140;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11146;}s:5:"large";a:5:{s:4:"file";s:21:"movers1-1024x478.webp";s:5:"width";i:1024;s:6:"height";i:478;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:62986;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7300;}s:12:"medium_large";a:5:{s:4:"file";s:20:"movers1-768x358.webp";s:5:"width";i:768;s:6:"height";i:358;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:42380;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(283, 65, '_edit_lock', '1764776212:1'),
(284, 67, '_wp_attached_file', '2025/12/contactus.webp'),
(285, 67, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:1000;s:4:"file";s:22:"2025/12/contactus.webp";s:8:"filesize";i:58692;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:22:"contactus-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11232;}s:5:"large";a:5:{s:4:"file";s:23:"contactus-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:52932;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"contactus-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5858;}s:12:"medium_large";a:5:{s:4:"file";s:22:"contactus-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:37746;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(286, 65, '_thumbnail_id', '147'),
(287, 68, '_wp_attached_file', '2025/12/movers2.webp'),
(288, 68, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:700;s:4:"file";s:20:"2025/12/movers2.webp";s:8:"filesize";i:182694;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:20:"movers2-300x140.webp";s:5:"width";i:300;s:6:"height";i:140;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10010;}s:5:"large";a:5:{s:4:"file";s:21:"movers2-1024x478.webp";s:5:"width";i:1024;s:6:"height";i:478;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:54640;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5690;}s:12:"medium_large";a:5:{s:4:"file";s:20:"movers2-768x358.webp";s:5:"width";i:768;s:6:"height";i:358;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:37918;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(289, 29, '_edit_last', '1'),
(290, 29, 'carousel_0_top_title', 'Next Intake begins'),
(291, 29, '_carousel_0_top_title', 'field_692c51300b7fb'),
(292, 29, 'carousel_0_title', ' 5th January 2026'),
(293, 29, '_carousel_0_title', 'field_692c51390b7fc'),
(294, 29, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:8:"About Us";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(295, 29, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(296, 29, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:19:"Our Core Curriculum";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(297, 29, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(298, 29, 'carousel_0_carousel_item', '72'),
(299, 29, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(300, 29, 'carousel_1_top_title', 'Learn the art and science of moving'),
(301, 29, '_carousel_1_top_title', 'field_692c51300b7fb'),
(302, 29, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(303, 29, '_carousel_1_title', 'field_692c51390b7fc'),
(304, 29, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(305, 29, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(306, 29, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(307, 29, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(308, 29, 'carousel_1_carousel_item', '64'),
(309, 29, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(310, 29, 'carousel', '4'),
(311, 29, '_carousel', 'field_692c51190b7fa'),
(312, 30, 'carousel_0_top_title', 'Learn the art and science of moving'),
(313, 30, '_carousel_0_top_title', 'field_692c51300b7fb'),
(314, 30, 'carousel_0_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(315, 30, '_carousel_0_title', 'field_692c51390b7fc'),
(316, 30, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(317, 30, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(318, 30, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(319, 30, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(320, 30, 'carousel_0_carousel_item', '64'),
(321, 30, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(322, 30, 'carousel_1_top_title', 'We\'re glad to see you'),
(323, 30, '_carousel_1_top_title', 'field_692c51300b7fb'),
(324, 30, 'carousel_1_title', 'Join the Next Generation of Professional Movers'),
(325, 30, '_carousel_1_title', 'field_692c51390b7fc') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(326, 30, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(327, 30, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(328, 30, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(329, 30, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(330, 30, 'carousel_1_carousel_item', '68'),
(331, 30, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(332, 30, 'carousel', '2'),
(333, 30, '_carousel', 'field_692c51190b7fa'),
(334, 70, '_wp_attached_file', '2025/12/movers3.webp'),
(335, 70, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:700;s:4:"file";s:20:"2025/12/movers3.webp";s:8:"filesize";i:222088;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:20:"movers3-300x140.webp";s:5:"width";i:300;s:6:"height";i:140;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:13286;}s:5:"large";a:5:{s:4:"file";s:21:"movers3-1024x478.webp";s:5:"width";i:1024;s:6:"height";i:478;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:73462;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"movers3-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7866;}s:12:"medium_large";a:5:{s:4:"file";s:20:"movers3-768x358.webp";s:5:"width";i:768;s:6:"height";i:358;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:49394;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(336, 29, 'carousel_2_top_title', 'We\'re glad to see you'),
(337, 29, '_carousel_2_top_title', 'field_692c51300b7fb'),
(338, 29, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(339, 29, '_carousel_2_title', 'field_692c51390b7fc'),
(340, 29, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(341, 29, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(342, 29, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(343, 29, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(344, 29, 'carousel_2_carousel_item', '68'),
(345, 29, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(346, 69, 'carousel_0_top_title', 'Learn the art and science of moving'),
(347, 69, '_carousel_0_top_title', 'field_692c51300b7fb'),
(348, 69, 'carousel_0_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(349, 69, '_carousel_0_title', 'field_692c51390b7fc'),
(350, 69, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(351, 69, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(352, 69, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(353, 69, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(354, 69, 'carousel_0_carousel_item', '64'),
(355, 69, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(356, 69, 'carousel_1_top_title', 'We\'re glad to see you'),
(357, 69, '_carousel_1_top_title', 'field_692c51300b7fb'),
(358, 69, 'carousel_1_title', 'Join the Next Generation of Professional Movers'),
(359, 69, '_carousel_1_title', 'field_692c51390b7fc'),
(360, 69, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(361, 69, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(362, 69, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(363, 69, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(364, 69, 'carousel_1_carousel_item', '68'),
(365, 69, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(366, 69, 'carousel', '3'),
(367, 69, '_carousel', 'field_692c51190b7fa'),
(368, 69, 'carousel_2_top_title', 'Start Your TrainingStart Your Training'),
(369, 69, '_carousel_2_top_title', 'field_692c51300b7fb'),
(370, 69, 'carousel_2_title', 'From packing and lifting to logistics and client service'),
(371, 69, '_carousel_2_title', 'field_692c51390b7fc'),
(372, 69, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(373, 69, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(374, 69, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(375, 69, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(376, 69, 'carousel_2_carousel_item', '70'),
(377, 69, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(378, 72, '_wp_attached_file', '2025/12/welcome-banner.webp'),
(379, 72, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:900;s:4:"file";s:27:"2025/12/welcome-banner.webp";s:8:"filesize";i:95954;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:27:"welcome-banner-300x225.webp";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7134;}s:5:"large";a:5:{s:4:"file";s:28:"welcome-banner-1024x768.webp";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:30902;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"welcome-banner-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3886;}s:12:"medium_large";a:5:{s:4:"file";s:27:"welcome-banner-768x576.webp";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:21460;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(380, 29, 'carousel_3_top_title', 'Start Your Training'),
(381, 29, '_carousel_3_top_title', 'field_692c51300b7fb'),
(382, 29, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(383, 29, '_carousel_3_title', 'field_692c51390b7fc'),
(384, 29, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(385, 29, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(386, 29, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(387, 29, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(388, 29, 'carousel_3_carousel_item', '70'),
(389, 29, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(390, 71, 'carousel_0_top_title', 'Next Intake begins'),
(391, 71, '_carousel_0_top_title', 'field_692c51300b7fb'),
(392, 71, 'carousel_0_title', ' 5th January 2026'),
(393, 71, '_carousel_0_title', 'field_692c51390b7fc'),
(394, 71, 'carousel_0_learn_more', ''),
(395, 71, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(396, 71, 'carousel_0_carousel_link', ''),
(397, 71, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(398, 71, 'carousel_0_carousel_item', '72'),
(399, 71, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(400, 71, 'carousel_1_top_title', 'Learn the art and science of moving'),
(401, 71, '_carousel_1_top_title', 'field_692c51300b7fb'),
(402, 71, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(403, 71, '_carousel_1_title', 'field_692c51390b7fc'),
(404, 71, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(405, 71, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(406, 71, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(407, 71, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(408, 71, 'carousel_1_carousel_item', '64'),
(409, 71, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(410, 71, 'carousel', '4'),
(411, 71, '_carousel', 'field_692c51190b7fa'),
(412, 71, 'carousel_2_top_title', 'We\'re glad to see you'),
(413, 71, '_carousel_2_top_title', 'field_692c51300b7fb'),
(414, 71, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(415, 71, '_carousel_2_title', 'field_692c51390b7fc'),
(416, 71, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(417, 71, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(418, 71, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(419, 71, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(420, 71, 'carousel_2_carousel_item', '68'),
(421, 71, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(422, 71, 'carousel_3_top_title', 'Start Your TrainingStart Your Training'),
(423, 71, '_carousel_3_top_title', 'field_692c51300b7fb'),
(424, 71, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(425, 71, '_carousel_3_title', 'field_692c51390b7fc') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(426, 71, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(427, 71, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(428, 71, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(429, 71, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(430, 71, 'carousel_3_carousel_item', '70'),
(431, 71, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(432, 73, 'carousel_0_top_title', 'Next Intake begins'),
(433, 73, '_carousel_0_top_title', 'field_692c51300b7fb'),
(434, 73, 'carousel_0_title', ' 5th January 2026'),
(435, 73, '_carousel_0_title', 'field_692c51390b7fc'),
(436, 73, 'carousel_0_learn_more', ''),
(437, 73, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(438, 73, 'carousel_0_carousel_link', ''),
(439, 73, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(440, 73, 'carousel_0_carousel_item', '72'),
(441, 73, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(442, 73, 'carousel_1_top_title', 'Learn the art and science of moving'),
(443, 73, '_carousel_1_top_title', 'field_692c51300b7fb'),
(444, 73, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(445, 73, '_carousel_1_title', 'field_692c51390b7fc'),
(446, 73, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(447, 73, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(448, 73, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(449, 73, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(450, 73, 'carousel_1_carousel_item', '64'),
(451, 73, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(452, 73, 'carousel', '4'),
(453, 73, '_carousel', 'field_692c51190b7fa'),
(454, 73, 'carousel_2_top_title', 'We\'re glad to see you'),
(455, 73, '_carousel_2_top_title', 'field_692c51300b7fb'),
(456, 73, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(457, 73, '_carousel_2_title', 'field_692c51390b7fc'),
(458, 73, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(459, 73, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(460, 73, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(461, 73, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(462, 73, 'carousel_2_carousel_item', '68'),
(463, 73, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(464, 73, 'carousel_3_top_title', 'Start Your TrainingStart Your Training'),
(465, 73, '_carousel_3_top_title', 'field_692c51300b7fb'),
(466, 73, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(467, 73, '_carousel_3_title', 'field_692c51390b7fc'),
(468, 73, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(469, 73, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(470, 73, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(471, 73, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(472, 73, 'carousel_3_carousel_item', '70'),
(473, 73, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(474, 74, 'carousel_0_top_title', 'Next Intake begins'),
(475, 74, '_carousel_0_top_title', 'field_692c51300b7fb'),
(476, 74, 'carousel_0_title', ' 5th January 2026'),
(477, 74, '_carousel_0_title', 'field_692c51390b7fc'),
(478, 74, 'carousel_0_learn_more', ''),
(479, 74, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(480, 74, 'carousel_0_carousel_link', ''),
(481, 74, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(482, 74, 'carousel_0_carousel_item', '72'),
(483, 74, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(484, 74, 'carousel_1_top_title', 'Learn the art and science of moving'),
(485, 74, '_carousel_1_top_title', 'field_692c51300b7fb'),
(486, 74, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(487, 74, '_carousel_1_title', 'field_692c51390b7fc'),
(488, 74, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(489, 74, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(490, 74, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(491, 74, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(492, 74, 'carousel_1_carousel_item', '64'),
(493, 74, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(494, 74, 'carousel', '4'),
(495, 74, '_carousel', 'field_692c51190b7fa'),
(496, 74, 'carousel_2_top_title', 'We\'re glad to see you'),
(497, 74, '_carousel_2_top_title', 'field_692c51300b7fb'),
(498, 74, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(499, 74, '_carousel_2_title', 'field_692c51390b7fc'),
(500, 74, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(501, 74, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(502, 74, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(503, 74, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(504, 74, 'carousel_2_carousel_item', '68'),
(505, 74, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(506, 74, 'carousel_3_top_title', 'Start Your Training'),
(507, 74, '_carousel_3_top_title', 'field_692c51300b7fb'),
(508, 74, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(509, 74, '_carousel_3_title', 'field_692c51390b7fc'),
(510, 74, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(511, 74, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(512, 74, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(513, 74, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(514, 74, 'carousel_3_carousel_item', '70'),
(515, 74, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(516, 75, 'carousel_0_top_title', 'Next Intake begins'),
(517, 75, '_carousel_0_top_title', 'field_692c51300b7fb'),
(518, 75, 'carousel_0_title', ' 5th January 2026'),
(519, 75, '_carousel_0_title', 'field_692c51390b7fc'),
(520, 75, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:8:"About Us";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(521, 75, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(522, 75, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:26:"Movers – Core Curriculum";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(523, 75, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(524, 75, 'carousel_0_carousel_item', '72'),
(525, 75, '_carousel_0_carousel_item', 'field_692c525d8118e') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(526, 75, 'carousel_1_top_title', 'Learn the art and science of moving'),
(527, 75, '_carousel_1_top_title', 'field_692c51300b7fb'),
(528, 75, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(529, 75, '_carousel_1_title', 'field_692c51390b7fc'),
(530, 75, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(531, 75, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(532, 75, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(533, 75, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(534, 75, 'carousel_1_carousel_item', '64'),
(535, 75, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(536, 75, 'carousel', '4'),
(537, 75, '_carousel', 'field_692c51190b7fa'),
(538, 75, 'carousel_2_top_title', 'We\'re glad to see you'),
(539, 75, '_carousel_2_top_title', 'field_692c51300b7fb'),
(540, 75, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(541, 75, '_carousel_2_title', 'field_692c51390b7fc'),
(542, 75, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(543, 75, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(544, 75, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(545, 75, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(546, 75, 'carousel_2_carousel_item', '68'),
(547, 75, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(548, 75, 'carousel_3_top_title', 'Start Your Training'),
(549, 75, '_carousel_3_top_title', 'field_692c51300b7fb'),
(550, 75, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(551, 75, '_carousel_3_title', 'field_692c51390b7fc'),
(552, 75, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(553, 75, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(554, 75, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(555, 75, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(556, 75, 'carousel_3_carousel_item', '70'),
(557, 75, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(558, 76, 'carousel_0_top_title', 'Next Intake begins'),
(559, 76, '_carousel_0_top_title', 'field_692c51300b7fb'),
(560, 76, 'carousel_0_title', ' 5th January 2026'),
(561, 76, '_carousel_0_title', 'field_692c51390b7fc'),
(562, 76, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:8:"About Us";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(563, 76, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(564, 76, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:19:"Our Core Curriculum";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(565, 76, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(566, 76, 'carousel_0_carousel_item', '72'),
(567, 76, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(568, 76, 'carousel_1_top_title', 'Learn the art and science of moving'),
(569, 76, '_carousel_1_top_title', 'field_692c51300b7fb'),
(570, 76, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(571, 76, '_carousel_1_title', 'field_692c51390b7fc'),
(572, 76, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(573, 76, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(574, 76, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(575, 76, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(576, 76, 'carousel_1_carousel_item', '64'),
(577, 76, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(578, 76, 'carousel', '4'),
(579, 76, '_carousel', 'field_692c51190b7fa'),
(580, 76, 'carousel_2_top_title', 'We\'re glad to see you'),
(581, 76, '_carousel_2_top_title', 'field_692c51300b7fb'),
(582, 76, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(583, 76, '_carousel_2_title', 'field_692c51390b7fc'),
(584, 76, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(585, 76, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(586, 76, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(587, 76, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(588, 76, 'carousel_2_carousel_item', '68'),
(589, 76, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(590, 76, 'carousel_3_top_title', 'Start Your Training'),
(591, 76, '_carousel_3_top_title', 'field_692c51300b7fb'),
(592, 76, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(593, 76, '_carousel_3_title', 'field_692c51390b7fc'),
(594, 76, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(595, 76, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(596, 76, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(597, 76, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(598, 76, 'carousel_3_carousel_item', '70'),
(599, 76, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(600, 79, '_edit_last', '1'),
(601, 79, '_edit_lock', '1764678660:1'),
(602, 83, '_wp_attached_file', '2025/12/1.webp'),
(603, 83, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:200;s:6:"height";i:100;s:4:"file";s:14:"2025/12/1.webp";s:8:"filesize";i:10548;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:14:"1-150x100.webp";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6538;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(604, 84, '_wp_attached_file', '2025/12/2.webp'),
(605, 84, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:200;s:6:"height";i:100;s:4:"file";s:14:"2025/12/2.webp";s:8:"filesize";i:8310;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:14:"2-150x100.webp";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4228;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(606, 85, '_wp_attached_file', '2025/12/3.webp'),
(607, 85, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:200;s:6:"height";i:100;s:4:"file";s:14:"2025/12/3.webp";s:8:"filesize";i:8454;s:5:"sizes";a:1:{s:9:"thumbnail";a:5:{s:4:"file";s:14:"3-150x100.webp";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4878;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(608, 29, 'section_title', 'Our Trusted Partners'),
(609, 29, '_section_title', 'field_692ed4bf17c0a'),
(610, 29, 'section_description', 'We collaborate with organizations that share our commitment to innovation and growth. Together, we strive to create meaningful opportunities and deliver exceptional value across every initiative.'),
(611, 29, '_section_description', 'field_692ed4eb17c0b'),
(612, 29, 'partnerlogos', 'a:3:{i:0;s:2:"83";i:1;s:2:"84";i:2;s:2:"85";}'),
(613, 29, '_partnerlogos', 'field_692ed4fb17c0c'),
(614, 77, 'carousel_0_top_title', 'Next Intake begins'),
(615, 77, '_carousel_0_top_title', 'field_692c51300b7fb'),
(616, 77, 'carousel_0_title', ' 5th January 2026'),
(617, 77, '_carousel_0_title', 'field_692c51390b7fc'),
(618, 77, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:8:"About Us";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(619, 77, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(620, 77, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:19:"Our Core Curriculum";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(621, 77, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(622, 77, 'carousel_0_carousel_item', '72'),
(623, 77, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(624, 77, 'carousel_1_top_title', 'Learn the art and science of moving'),
(625, 77, '_carousel_1_top_title', 'field_692c51300b7fb') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(626, 77, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(627, 77, '_carousel_1_title', 'field_692c51390b7fc'),
(628, 77, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(629, 77, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(630, 77, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(631, 77, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(632, 77, 'carousel_1_carousel_item', '64'),
(633, 77, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(634, 77, 'carousel', '4'),
(635, 77, '_carousel', 'field_692c51190b7fa'),
(636, 77, 'carousel_2_top_title', 'We\'re glad to see you'),
(637, 77, '_carousel_2_top_title', 'field_692c51300b7fb'),
(638, 77, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(639, 77, '_carousel_2_title', 'field_692c51390b7fc'),
(640, 77, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(641, 77, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(642, 77, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(643, 77, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(644, 77, 'carousel_2_carousel_item', '68'),
(645, 77, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(646, 77, 'carousel_3_top_title', 'Start Your Training'),
(647, 77, '_carousel_3_top_title', 'field_692c51300b7fb'),
(648, 77, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(649, 77, '_carousel_3_title', 'field_692c51390b7fc'),
(650, 77, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(651, 77, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(652, 77, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(653, 77, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(654, 77, 'carousel_3_carousel_item', '70'),
(655, 77, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(656, 77, 'section_title', 'Our Trusted Partners'),
(657, 77, '_section_title', 'field_692ed4bf17c0a'),
(658, 77, 'section_description', 'We collaborate with organizations that share our commitment to innovation and growth. Together, we strive to create meaningful opportunities and deliver exceptional value across every initiative.'),
(659, 77, '_section_description', 'field_692ed4eb17c0b'),
(660, 77, 'partnerlogos', 'a:3:{i:0;s:2:"83";i:1;s:2:"84";i:2;s:2:"85";}'),
(661, 77, '_partnerlogos', 'field_692ed4fb17c0c'),
(662, 88, 'carousel_0_top_title', 'Next Intake begins'),
(663, 88, '_carousel_0_top_title', 'field_692c51300b7fb'),
(664, 88, 'carousel_0_title', ' 5th January 2026'),
(665, 88, '_carousel_0_title', 'field_692c51390b7fc'),
(666, 88, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:8:"About Us";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(667, 88, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(668, 88, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:19:"Our Core Curriculum";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(669, 88, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(670, 88, 'carousel_0_carousel_item', '72'),
(671, 88, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(672, 88, 'carousel_1_top_title', 'Learn the art and science of moving'),
(673, 88, '_carousel_1_top_title', 'field_692c51300b7fb'),
(674, 88, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(675, 88, '_carousel_1_title', 'field_692c51390b7fc'),
(676, 88, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(677, 88, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(678, 88, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(679, 88, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(680, 88, 'carousel_1_carousel_item', '64'),
(681, 88, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(682, 88, 'carousel', '4'),
(683, 88, '_carousel', 'field_692c51190b7fa'),
(684, 88, 'carousel_2_top_title', 'We\'re glad to see you'),
(685, 88, '_carousel_2_top_title', 'field_692c51300b7fb'),
(686, 88, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(687, 88, '_carousel_2_title', 'field_692c51390b7fc'),
(688, 88, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(689, 88, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(690, 88, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(691, 88, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(692, 88, 'carousel_2_carousel_item', '68'),
(693, 88, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(694, 88, 'carousel_3_top_title', 'Start Your Training'),
(695, 88, '_carousel_3_top_title', 'field_692c51300b7fb'),
(696, 88, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(697, 88, '_carousel_3_title', 'field_692c51390b7fc'),
(698, 88, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(699, 88, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(700, 88, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(701, 88, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(702, 88, 'carousel_3_carousel_item', '70'),
(703, 88, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(704, 88, 'section_title', 'Our Trusted Partners'),
(705, 88, '_section_title', 'field_692ed4bf17c0a'),
(706, 88, 'section_description', 'We collaborate with organizations that share our commitment to innovation and growth. Together, we strive to create meaningful opportunities and deliver exceptional value across every initiative.'),
(707, 88, '_section_description', 'field_692ed4eb17c0b'),
(708, 88, 'partnerlogos', 'a:3:{i:0;s:2:"83";i:1;s:2:"84";i:2;s:2:"85";}'),
(709, 88, '_partnerlogos', 'field_692ed4fb17c0c'),
(710, 89, '_form', '<label> Your name\n    [text* your-name autocomplete:name class:form-control] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email class:form-control] </label>\n\n<label> Your Phone Number\n[tel* YourPhoneNumber class:form-control] </label>\n\n[submit "Submit"]'),
(711, 89, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:41:"[_site_title] <wordpress@porteracms.test>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:191:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(712, 89, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:41:"[_site_title] <wordpress@porteracms.test>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(713, 89, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}'),
(714, 89, '_additional_settings', ''),
(715, 89, '_locale', 'en_US'),
(716, 89, '_hash', 'ea164d01be34fc30527fe03b4f2254f5c684f412'),
(717, 90, '_edit_last', '1'),
(718, 90, '_edit_lock', '1764712878:1'),
(719, 29, 'statistics_heading', 'Shaping the next generation of Movers'),
(720, 29, '_statistics_heading', 'field_692f596d99184'),
(721, 29, 'statistics_1_label', 'Years In Logistics'),
(722, 29, '_statistics_1_label', 'field_692f584c9917c'),
(723, 29, 'statistics_1_counter', '12'),
(724, 29, '_statistics_1_counter', 'field_692f58b49917d'),
(725, 29, 'statistics_2_label', 'Experienced Teachers') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(726, 29, '_statistics_2_label', 'field_692f58c99917e'),
(727, 29, 'statistics_2_counter', '5'),
(728, 29, '_statistics_2_counter', 'field_692f58f69917f'),
(729, 29, 'statistics_3_label', 'Students Enrolled'),
(730, 29, '_statistics_3_label', 'field_692f591199180'),
(731, 29, 'statistics_3_counter', '500'),
(732, 29, '_statistics_3_counter', 'field_692f592299181'),
(733, 29, 'statistics_4_label', 'Courses'),
(734, 29, '_statistics_4_label', 'field_692f593e99182'),
(735, 29, 'statistics_4_counter', '2'),
(736, 29, '_statistics_4_counter', 'field_692f595699183'),
(737, 88, 'statistics_heading', 'Shaping the next generation of Movers'),
(738, 88, '_statistics_heading', 'field_692f596d99184'),
(739, 88, 'statistics_1_label', 'Years In Logistics'),
(740, 88, '_statistics_1_label', 'field_692f584c9917c'),
(741, 88, 'statistics_1_counter', '12'),
(742, 88, '_statistics_1_counter', 'field_692f58b49917d'),
(743, 88, 'statistics_2_label', 'Experienced Teachers'),
(744, 88, '_statistics_2_label', 'field_692f58c99917e'),
(745, 88, 'statistics_2_counter', '5'),
(746, 88, '_statistics_2_counter', 'field_692f58f69917f'),
(747, 88, 'statistics_3_label', 'Students Enrolled'),
(748, 88, '_statistics_3_label', 'field_692f591199180'),
(749, 88, 'statistics_3_counter', '500'),
(750, 88, '_statistics_3_counter', 'field_692f592299181'),
(751, 88, 'statistics_4_label', 'Courses'),
(752, 88, '_statistics_4_label', 'field_692f593e99182'),
(753, 88, 'statistics_4_counter', '2'),
(754, 88, '_statistics_4_counter', 'field_692f595699183'),
(755, 100, 'carousel_0_top_title', 'Next Intake begins'),
(756, 100, '_carousel_0_top_title', 'field_692c51300b7fb'),
(757, 100, 'carousel_0_title', ' 5th January 2026'),
(758, 100, '_carousel_0_title', 'field_692c51390b7fc'),
(759, 100, 'carousel_0_learn_more', 'a:3:{s:5:"title";s:8:"About Us";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(760, 100, '_carousel_0_learn_more', 'field_692c51450b7fd'),
(761, 100, 'carousel_0_carousel_link', 'a:3:{s:5:"title";s:19:"Our Core Curriculum";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(762, 100, '_carousel_0_carousel_link', 'field_692c51ae0b7fe'),
(763, 100, 'carousel_0_carousel_item', '72'),
(764, 100, '_carousel_0_carousel_item', 'field_692c525d8118e'),
(765, 100, 'carousel_1_top_title', 'Learn the art and science of moving'),
(766, 100, '_carousel_1_top_title', 'field_692c51300b7fb'),
(767, 100, 'carousel_1_title', 'Portera, Africa’s first Movers Training Academy powered by Nellions'),
(768, 100, '_carousel_1_title', 'field_692c51390b7fc'),
(769, 100, 'carousel_1_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(770, 100, '_carousel_1_learn_more', 'field_692c51450b7fd'),
(771, 100, 'carousel_1_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(772, 100, '_carousel_1_carousel_link', 'field_692c51ae0b7fe'),
(773, 100, 'carousel_1_carousel_item', '64'),
(774, 100, '_carousel_1_carousel_item', 'field_692c525d8118e'),
(775, 100, 'carousel', '4'),
(776, 100, '_carousel', 'field_692c51190b7fa'),
(777, 100, 'carousel_2_top_title', 'We\'re glad to see you'),
(778, 100, '_carousel_2_top_title', 'field_692c51300b7fb'),
(779, 100, 'carousel_2_title', 'Join the Next Generation of Professional Movers'),
(780, 100, '_carousel_2_title', 'field_692c51390b7fc'),
(781, 100, 'carousel_2_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(782, 100, '_carousel_2_learn_more', 'field_692c51450b7fd'),
(783, 100, 'carousel_2_carousel_link', 'a:3:{s:5:"title";s:11:"View Course";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(784, 100, '_carousel_2_carousel_link', 'field_692c51ae0b7fe'),
(785, 100, 'carousel_2_carousel_item', '68'),
(786, 100, '_carousel_2_carousel_item', 'field_692c525d8118e'),
(787, 100, 'carousel_3_top_title', 'Start Your Training'),
(788, 100, '_carousel_3_top_title', 'field_692c51300b7fb'),
(789, 100, 'carousel_3_title', 'From packing and lifting to logistics and client service'),
(790, 100, '_carousel_3_title', 'field_692c51390b7fc'),
(791, 100, 'carousel_3_learn_more', 'a:3:{s:5:"title";s:10:"Learn More";s:3:"url";s:33:"https://porteracms.test/about-us/";s:6:"target";s:0:"";}'),
(792, 100, '_carousel_3_learn_more', 'field_692c51450b7fd'),
(793, 100, 'carousel_3_carousel_link', 'a:3:{s:5:"title";s:12:"View Courses";s:3:"url";s:47:"https://porteracms.test/movers-core-curriculum/";s:6:"target";s:0:"";}'),
(794, 100, '_carousel_3_carousel_link', 'field_692c51ae0b7fe'),
(795, 100, 'carousel_3_carousel_item', '70'),
(796, 100, '_carousel_3_carousel_item', 'field_692c525d8118e'),
(797, 100, 'section_title', 'Our Trusted Partners'),
(798, 100, '_section_title', 'field_692ed4bf17c0a'),
(799, 100, 'section_description', 'We collaborate with organizations that share our commitment to innovation and growth. Together, we strive to create meaningful opportunities and deliver exceptional value across every initiative.'),
(800, 100, '_section_description', 'field_692ed4eb17c0b'),
(801, 100, 'partnerlogos', 'a:3:{i:0;s:2:"83";i:1;s:2:"84";i:2;s:2:"85";}'),
(802, 100, '_partnerlogos', 'field_692ed4fb17c0c'),
(803, 100, 'statistics_heading', 'Shaping the next generation of Movers'),
(804, 100, '_statistics_heading', 'field_692f596d99184'),
(805, 100, 'statistics_1_label', 'Years In Logistics'),
(806, 100, '_statistics_1_label', 'field_692f584c9917c'),
(807, 100, 'statistics_1_counter', '12'),
(808, 100, '_statistics_1_counter', 'field_692f58b49917d'),
(809, 100, 'statistics_2_label', 'Experienced Teachers'),
(810, 100, '_statistics_2_label', 'field_692f58c99917e'),
(811, 100, 'statistics_2_counter', '5'),
(812, 100, '_statistics_2_counter', 'field_692f58f69917f'),
(813, 100, 'statistics_3_label', 'Students Enrolled'),
(814, 100, '_statistics_3_label', 'field_692f591199180'),
(815, 100, 'statistics_3_counter', '500'),
(816, 100, '_statistics_3_counter', 'field_692f592299181'),
(817, 100, 'statistics_4_label', 'Courses'),
(818, 100, '_statistics_4_label', 'field_692f593e99182'),
(819, 100, 'statistics_4_counter', '2'),
(820, 100, '_statistics_4_counter', 'field_692f595699183'),
(821, 102, '_edit_last', '1'),
(822, 102, '_edit_lock', '1764716563:1'),
(823, 102, 'simple_cpt_name', 'trainers'),
(824, 102, 'simple_cpt_label', 'Trainer'),
(825, 102, 'simple_cpt_singular_name', 'Trainer') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(826, 102, 'simple_cpt_description', ''),
(827, 102, 'simple_cpt_icon_slug', ''),
(828, 102, 'simple_cpt_public', '0'),
(829, 102, 'simple_cpt_show_ui', '1'),
(830, 102, 'simple_cpt_has_archive', '1'),
(831, 102, 'simple_cpt_exclude_from_search', '1'),
(832, 102, 'simple_cpt_capability_type', 'post'),
(833, 102, 'simple_cpt_hierarchical', '0'),
(834, 102, 'simple_cpt_rewrite', '0'),
(835, 102, 'simple_cpt_withfront', '1'),
(836, 102, 'simple_cpt_feeds', '0'),
(837, 102, 'simple_cpt_pages', '0'),
(838, 102, 'simple_cpt_custom_rewrite_slug', 'trainer'),
(839, 102, 'simple_cpt_query_var', '1'),
(840, 102, 'simple_cpt_show_in_rest', '1'),
(841, 102, 'simple_cpt_publicly_queryable', '1'),
(842, 102, 'simple_cpt_menu_position', ''),
(843, 102, 'simple_cpt_show_in_menu', '1'),
(844, 102, 'simple_cpt_supports', 'a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}'),
(845, 102, 'simple_cpt_builtin_tax', 'a:0:{}'),
(846, 102, 'simple_cpt_tax_post_types', 'a:0:{}'),
(847, 103, '_edit_lock', '1764716721:1'),
(848, 104, '_edit_last', '1'),
(849, 104, '_edit_lock', '1764716621:1'),
(850, 106, '_edit_lock', '1764716867:1'),
(851, 107, '_wp_attached_file', '2025/12/2-1.webp'),
(852, 107, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:524;s:6:"height";i:600;s:4:"file";s:16:"2025/12/2-1.webp";s:8:"filesize";i:130208;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:16:"2-1-262x300.webp";s:5:"width";i:262;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:22660;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"2-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6634;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(853, 106, '_thumbnail_id', '107'),
(854, 106, '_edit_last', '1'),
(855, 106, 'role', 'Client Communication & Service Etiquette'),
(856, 106, '_role', 'field_692f70bbbf4e1'),
(857, 108, '_edit_lock', '1764716917:1'),
(858, 109, '_wp_attached_file', '2025/12/4.webp'),
(859, 109, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:533;s:6:"height";i:600;s:4:"file";s:14:"2025/12/4.webp";s:8:"filesize";i:121498;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:14:"4-267x300.webp";s:5:"width";i:267;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:20948;}s:9:"thumbnail";a:5:{s:4:"file";s:14:"4-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6954;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(860, 108, '_thumbnail_id', '109'),
(861, 108, '_edit_last', '1'),
(862, 108, 'role', 'Housekeeping for Movers'),
(863, 108, '_role', 'field_692f70bbbf4e1'),
(864, 110, '_edit_lock', '1764716963:1'),
(865, 111, '_wp_attached_file', '2025/12/5.webp'),
(866, 111, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:533;s:6:"height";i:600;s:4:"file";s:14:"2025/12/5.webp";s:8:"filesize";i:103500;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:14:"5-267x300.webp";s:5:"width";i:267;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:17568;}s:9:"thumbnail";a:5:{s:4:"file";s:14:"5-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5610;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(867, 110, '_thumbnail_id', '111'),
(868, 110, '_edit_last', '1'),
(869, 110, 'role', 'Safety in Moving & Introduction to Moving Industry'),
(870, 110, '_role', 'field_692f70bbbf4e1'),
(871, 112, '_edit_lock', '1764717042:1'),
(872, 113, '_wp_attached_file', '2025/12/3-1.webp'),
(873, 113, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:533;s:6:"height";i:600;s:4:"file";s:16:"2025/12/3-1.webp";s:8:"filesize";i:128866;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:16:"3-1-267x300.webp";s:5:"width";i:267;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:23142;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"3-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7040;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(874, 112, '_thumbnail_id', '113'),
(875, 112, '_edit_last', '1'),
(876, 112, 'role', 'Packing & Handling Techniques'),
(877, 112, '_role', 'field_692f70bbbf4e1'),
(878, 114, '_edit_lock', '1764717098:1'),
(879, 115, '_wp_attached_file', '2025/12/1-1.webp'),
(880, 115, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:533;s:6:"height";i:600;s:4:"file";s:16:"2025/12/1-1.webp";s:8:"filesize";i:90918;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:16:"1-1-267x300.webp";s:5:"width";i:267;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:15256;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"1-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5296;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(881, 114, '_thumbnail_id', '115'),
(882, 114, '_edit_last', '1'),
(883, 114, 'role', 'Documentation & Records Management'),
(884, 114, '_role', 'field_692f70bbbf4e1'),
(885, 116, '_edit_lock', '1764761428:1'),
(886, 117, '_wp_attached_file', '2025/12/advisor.webp'),
(887, 117, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1500;s:6:"height";i:700;s:4:"file";s:20:"2025/12/advisor.webp";s:8:"filesize";i:104330;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:20:"advisor-300x140.webp";s:5:"width";i:300;s:6:"height";i:140;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5528;}s:5:"large";a:5:{s:4:"file";s:21:"advisor-1024x478.webp";s:5:"width";i:1024;s:6:"height";i:478;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:28132;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"advisor-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3488;}s:12:"medium_large";a:5:{s:4:"file";s:20:"advisor-768x358.webp";s:5:"width";i:768;s:6:"height";i:358;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:19790;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(888, 116, '_thumbnail_id', '117'),
(890, 116, '_wp_page_template', 'Trainers.php'),
(891, 122, '_menu_item_type', 'post_type'),
(892, 122, '_menu_item_menu_item_parent', '0'),
(893, 122, '_menu_item_object_id', '116'),
(894, 122, '_menu_item_object', 'page'),
(895, 122, '_menu_item_target', ''),
(896, 122, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(897, 122, '_menu_item_xfn', ''),
(898, 122, '_menu_item_url', ''),
(900, 31, '_wp_old_date', '2025-11-30'),
(901, 39, '_wp_old_date', '2025-11-30'),
(902, 27, '_wp_old_date', '2025-11-30'),
(903, 40, '_wp_old_date', '2025-11-30'),
(904, 41, '_wp_old_date', '2025-11-30'),
(905, 28, '_wp_old_date', '2025-11-30'),
(906, 36, '_wp_page_template', 'about-us.php'),
(907, 123, '_edit_last', '1'),
(908, 123, '_edit_lock', '1764761474:1'),
(909, 123, 'simple_cpt_name', 'events'),
(910, 123, 'simple_cpt_label', 'Events'),
(911, 123, 'simple_cpt_singular_name', 'Event'),
(912, 123, 'simple_cpt_description', ''),
(913, 123, 'simple_cpt_icon_slug', ''),
(914, 123, 'simple_cpt_public', '0'),
(915, 123, 'simple_cpt_show_ui', '1'),
(916, 123, 'simple_cpt_has_archive', '0'),
(917, 123, 'simple_cpt_exclude_from_search', '1'),
(918, 123, 'simple_cpt_capability_type', 'post'),
(919, 123, 'simple_cpt_hierarchical', '0'),
(920, 123, 'simple_cpt_rewrite', '1'),
(921, 123, 'simple_cpt_withfront', '0'),
(922, 123, 'simple_cpt_feeds', '0'),
(923, 123, 'simple_cpt_pages', '1'),
(924, 123, 'simple_cpt_custom_rewrite_slug', ''),
(925, 123, 'simple_cpt_query_var', '1'),
(926, 123, 'simple_cpt_show_in_rest', '1'),
(927, 123, 'simple_cpt_publicly_queryable', '1') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(928, 123, 'simple_cpt_menu_position', ''),
(929, 123, 'simple_cpt_show_in_menu', '1'),
(930, 123, 'simple_cpt_supports', 'a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}'),
(931, 123, 'simple_cpt_builtin_tax', 'a:0:{}'),
(932, 123, 'simple_cpt_tax_post_types', 'a:0:{}'),
(933, 124, '_edit_lock', '1764763753:1'),
(934, 125, '_edit_last', '1'),
(935, 125, '_edit_lock', '1764763335:1'),
(936, 34, '_wp_page_template', 'Events.php'),
(937, 124, '_edit_last', '1'),
(938, 124, 'location', 'Nairobi, Kenya'),
(939, 124, '_location', 'field_693016fb3660a'),
(940, 124, 'date', '2025-09-01 00:00:00'),
(941, 124, '_date', 'field_693017303660c'),
(942, 124, 'start_time', '08:00:00'),
(943, 124, '_start_time', 'field_693017103660b'),
(944, 124, 'endtime_', '17:00:00'),
(945, 124, '_endtime_', 'field_6930176d3660d'),
(946, 124, 'end_time', '17:00:00'),
(947, 124, '_end_time', 'field_6930176d3660d'),
(948, 130, '_wp_attached_file', '2025/12/2-2.webp'),
(949, 130, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:16:"2025/12/2-2.webp";s:8:"filesize";i:95698;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"2-2-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12974;}s:5:"large";a:5:{s:4:"file";s:17:"2-2-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:57460;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"2-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6292;}s:12:"medium_large";a:5:{s:4:"file";s:16:"2-2-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:40092;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(950, 124, '_thumbnail_id', '130'),
(951, 131, '_edit_lock', '1764764570:1'),
(952, 131, '_edit_last', '1'),
(953, 131, 'location', 'Nairobi, Kenya'),
(954, 131, '_location', 'field_693016fb3660a'),
(955, 131, 'date', '2025-12-10 00:00:00'),
(956, 131, '_date', 'field_693017303660c'),
(957, 131, 'start_time', ''),
(958, 131, '_start_time', 'field_693017103660b'),
(959, 131, 'end_time', ''),
(960, 131, '_end_time', 'field_6930176d3660d'),
(961, 132, '_wp_attached_file', '2025/12/3-2.webp'),
(962, 132, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:16:"2025/12/3-2.webp";s:8:"filesize";i:147906;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"3-2-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:18446;}s:5:"large";a:5:{s:4:"file";s:17:"3-2-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:96030;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"3-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7974;}s:12:"medium_large";a:5:{s:4:"file";s:16:"3-2-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:65218;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(963, 131, '_thumbnail_id', '132'),
(964, 133, '_edit_lock', '1764764568:1'),
(965, 134, '_wp_attached_file', '2025/12/4-1.webp'),
(966, 134, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:705;s:4:"file";s:16:"2025/12/4-1.webp";s:8:"filesize";i:99306;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"4-1-300x176.webp";s:5:"width";i:300;s:6:"height";i:176;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11414;}s:5:"large";a:5:{s:4:"file";s:17:"4-1-1024x602.webp";s:5:"width";i:1024;s:6:"height";i:602;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:57274;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"4-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5148;}s:12:"medium_large";a:5:{s:4:"file";s:16:"4-1-768x451.webp";s:5:"width";i:768;s:6:"height";i:451;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:39644;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(967, 133, '_thumbnail_id', '134'),
(968, 133, '_edit_last', '1'),
(969, 133, 'location', 'Nairobi, Kenya'),
(970, 133, '_location', 'field_693016fb3660a'),
(971, 133, 'date', '2025-09-15 00:00:00'),
(972, 133, '_date', 'field_693017303660c'),
(973, 133, 'start_time', ''),
(974, 133, '_start_time', 'field_693017103660b'),
(975, 133, 'end_time', ''),
(976, 133, '_end_time', 'field_6930176d3660d'),
(977, 135, '_edit_lock', '1764764691:1'),
(978, 135, '_edit_last', '1'),
(979, 135, 'location', ' Nairobi, Kenya'),
(980, 135, '_location', 'field_693016fb3660a'),
(981, 135, 'date', '2025-10-08 00:00:00'),
(982, 135, '_date', 'field_693017303660c'),
(983, 135, 'start_time', '08:00:00'),
(984, 135, '_start_time', 'field_693017103660b'),
(985, 135, 'end_time', '17:00:00'),
(986, 135, '_end_time', 'field_6930176d3660d'),
(987, 136, '_wp_attached_file', '2025/12/6.webp'),
(988, 136, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:640;s:4:"file";s:14:"2025/12/6.webp";s:8:"filesize";i:87752;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:14:"6-300x160.webp";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7482;}s:5:"large";a:5:{s:4:"file";s:15:"6-1024x546.webp";s:5:"width";i:1024;s:6:"height";i:546;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:37160;}s:9:"thumbnail";a:5:{s:4:"file";s:14:"6-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4442;}s:12:"medium_large";a:5:{s:4:"file";s:14:"6-768x410.webp";s:5:"width";i:768;s:6:"height";i:410;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:26076;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(989, 135, '_thumbnail_id', '136'),
(990, 137, '_edit_lock', '1764764792:1'),
(991, 138, '_wp_attached_file', '2025/12/7.webp'),
(992, 138, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1199;s:6:"height";i:910;s:4:"file";s:14:"2025/12/7.webp";s:8:"filesize";i:237798;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:14:"7-300x228.webp";s:5:"width";i:300;s:6:"height";i:228;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:19386;}s:5:"large";a:5:{s:4:"file";s:15:"7-1024x777.webp";s:5:"width";i:1024;s:6:"height";i:777;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:109600;}s:9:"thumbnail";a:5:{s:4:"file";s:14:"7-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8020;}s:12:"medium_large";a:5:{s:4:"file";s:14:"7-768x583.webp";s:5:"width";i:768;s:6:"height";i:583;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:74328;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(993, 137, '_thumbnail_id', '138'),
(994, 137, '_edit_last', '1'),
(995, 137, 'location', ' Nairobi, Kenya'),
(996, 137, '_location', 'field_693016fb3660a'),
(997, 137, 'date', '2025-10-20 00:00:00'),
(998, 137, '_date', 'field_693017303660c'),
(999, 137, 'start_time', '08:00:00'),
(1000, 137, '_start_time', 'field_693017103660b'),
(1001, 137, 'end_time', '17:00:00'),
(1002, 137, '_end_time', 'field_6930176d3660d'),
(1003, 139, '_edit_lock', '1764770787:1'),
(1004, 140, '_wp_attached_file', '2025/12/5-1.webp'),
(1005, 140, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:16:"2025/12/5-1.webp";s:8:"filesize";i:188176;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"5-1-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:16004;}s:5:"large";a:5:{s:4:"file";s:17:"5-1-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:82028;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"5-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6554;}s:12:"medium_large";a:5:{s:4:"file";s:16:"5-1-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:58632;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1006, 139, '_thumbnail_id', '140'),
(1007, 139, '_edit_last', '1'),
(1008, 139, 'location', 'Nairobi, Kenya'),
(1009, 139, '_location', 'field_693016fb3660a'),
(1010, 139, 'date', ''),
(1011, 139, '_date', 'field_693017303660c'),
(1012, 139, 'start_time', '08:00:00'),
(1013, 139, '_start_time', 'field_693017103660b'),
(1014, 139, 'end_time', '17:00:00'),
(1015, 139, '_end_time', 'field_6930176d3660d'),
(1016, 141, '_edit_lock', '1764776210:1'),
(1017, 142, '_wp_attached_file', '2025/12/1-2.webp'),
(1018, 142, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1195;s:6:"height";i:800;s:4:"file";s:16:"2025/12/1-2.webp";s:8:"filesize";i:38256;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"1-2-300x201.webp";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10264;}s:5:"large";a:5:{s:4:"file";s:17:"1-2-1024x686.webp";s:5:"width";i:1024;s:6:"height";i:686;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:44314;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"1-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5144;}s:12:"medium_large";a:5:{s:4:"file";s:16:"1-2-768x514.webp";s:5:"width";i:768;s:6:"height";i:514;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:32088;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1020, 141, '_thumbnail_id', '142'),
(1022, 141, '_wp_old_date', '2025-12-03'),
(1023, 144, '_edit_lock', '1764776627:1'),
(1024, 145, '_wp_attached_file', '2025/12/3-3.webp'),
(1025, 145, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:16:"2025/12/3-3.webp";s:8:"filesize";i:684618;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:16:"3-3-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12982;}s:5:"large";a:5:{s:4:"file";s:17:"3-3-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:58400;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"3-3-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6254;}s:12:"medium_large";a:5:{s:4:"file";s:16:"3-3-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:40630;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1027, 144, '_thumbnail_id', '145'),
(1028, 147, '_wp_attached_file', '2025/12/contact_us-scaled.webp'),
(1029, 147, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1708;s:4:"file";s:30:"2025/12/contact_us-scaled.webp";s:8:"filesize";i:172498;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:23:"contact_us-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10016;}s:5:"large";a:5:{s:4:"file";s:24:"contact_us-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:48904;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"contact_us-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5180;}s:12:"medium_large";a:5:{s:4:"file";s:23:"contact_us-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:33196;}s:9:"1536x1536";a:5:{s:4:"file";s:25:"contact_us-1536x1025.webp";s:5:"width";i:1536;s:6:"height";i:1025;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:80530;}s:9:"2048x2048";a:5:{s:4:"file";s:25:"contact_us-2048x1366.webp";s:5:"width";i:2048;s:6:"height";i:1366;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:121652;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:15:"contact_us.webp";}'),
(1030, 148, '_wp_attached_file', '2025/12/about_us2-scaled.webp') ;
INSERT INTO `mtip_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1031, 148, '_wp_attachment_metadata', 'a:7:{s:5:"width";i:2560;s:6:"height";i:1707;s:4:"file";s:29:"2025/12/about_us2-scaled.webp";s:8:"filesize";i:167318;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:22:"about_us2-300x200.webp";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9308;}s:5:"large";a:5:{s:4:"file";s:23:"about_us2-1024x683.webp";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:39662;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"about_us2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5052;}s:12:"medium_large";a:5:{s:4:"file";s:22:"about_us2-768x512.webp";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27530;}s:9:"1536x1536";a:5:{s:4:"file";s:24:"about_us2-1536x1024.webp";s:5:"width";i:1536;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:68458;}s:9:"2048x2048";a:5:{s:4:"file";s:24:"about_us2-2048x1365.webp";s:5:"width";i:2048;s:6:"height";i:1365;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:114110;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:14:"original_image";s:14:"about_us2.webp";}'),
(1032, 65, '_wp_page_template', 'course.php'),
(1034, 150, 'footnotes', '') ;

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
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(11, 1, '2025-11-30 12:38:23', '2025-11-30 09:38:23', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2025-12-03 17:35:00', '2025-12-03 14:35:00', '', 0, 'https://portera.test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2025-11-30 12:38:12', '2025-11-30 09:38:12', '', 'contactus', '', 'inherit', 'open', 'closed', '', 'contactus', '', '', '2025-11-30 12:38:12', '2025-11-30 09:38:12', '', 11, 'https://portera.test/wp-content/uploads/2025/11/contactus.webp', 0, 'attachment', 'image/webp', 0),
(13, 1, '2025-11-30 12:38:23', '2025-11-30 09:38:23', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2025-11-30 12:38:23', '2025-11-30 09:38:23', '', 11, 'https://portera.test/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-11-30 12:38:55', '2025-11-30 09:38:55', '{"portera::header_image":{"value":"https:\\/\\/portera.test\\/wp-content\\/uploads\\/2025\\/11\\/logo-dark.png","type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 09:38:55"},"portera::header_image_data":{"value":{"url":"https:\\/\\/portera.test\\/wp-content\\/uploads\\/2025\\/11\\/logo-dark.png","thumbnail_url":"https:\\/\\/portera.test\\/wp-content\\/uploads\\/2025\\/11\\/logo-dark.png","timestamp":1764495532451,"attachment_id":9,"width":290,"height":104},"type":"theme_mod","user_id":1,"date_modified_gmt":"2025-11-30 09:38:55"}}', '', '', 'trash', 'closed', 'closed', '', 'abca8229-c80a-49d5-8fa2-b865fd38dc11', '', '', '2025-11-30 12:38:55', '2025-11-30 09:38:55', '', 0, 'https://portera.test/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2025-12-03 17:33:15', '2025-12-03 14:33:15', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2025-12-03 17:33:15', '2025-12-03 14:33:15', '', 11, 'https://portera.test/?p=15', 0, 'revision', '', 0),
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
(27, 1, '2025-12-03 12:53:04', '2025-11-30 10:11:05', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://portera.test/?p=27', 3, 'nav_menu_item', '', 0),
(28, 1, '2025-12-03 12:53:04', '2025-11-30 10:11:05', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://portera.test/?p=28', 7, 'nav_menu_item', '', 0),
(29, 1, '2025-11-30 13:35:44', '2025-11-30 10:35:44', '<!-- wp:heading {"level":5} -->\n<h5 class="wp-block-heading">Introduction</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Portera Mobility Training Institute</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Portera Mobility Training Institute (PMTI) is shaping the next generation of skilled movers; professionals who approach relocation as craftsmanship.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Born from the vision and experience of Nellions Moving &amp; Relocations, PMTI was founded to professionalize an industry that has long relied on untrained hands and untapped potential. Our mission is clear: to build skill, discipline, and pride in the art of moving; and to open real career paths for Kenya’s young workforce.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every relocation tells a story - of new beginnings, fresh opportunities, and human connection. Behind each of those stories are movers who handle lives in motion. PMTI exists to prepare them for that responsibility through a blend of practical training, safety awareness, and professional ethics that meet global standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our approach is simple: we don’t just teach how to move things — we teach how to move with purpose. Graduates leave PMTI not only certified, but transformed; ready to deliver excellence, uphold integrity, and represent a new face of professionalism in Kenya’s mobility and logistics industry.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-12-03 00:33:01', '2025-12-02 21:33:01', '', 0, 'https://portera.test/?page_id=29', 0, 'page', '', 0),
(30, 1, '2025-11-30 13:35:44', '2025-11-30 10:35:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-11-30 13:35:44', '2025-11-30 10:35:44', '', 29, 'https://portera.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2025-12-03 12:53:04', '2025-11-30 10:36:08', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://portera.test/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2025-11-30 13:36:30', '2025-11-30 10:36:30', '<!-- wp:paragraph -->\n<p>Welcome to our Portera Blog, where curiosity meets expertise. Our blog is dedicated to exploring the intersection of Moving and Logistics overrall. We\'ll take you on a journey of exploration, sharing insights from experts, thought leaders, and everyday people who are shaping our world.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2025-12-03 17:35:56', '2025-12-03 14:35:56', '', 0, 'https://portera.test/?page_id=32', 0, 'page', '', 0),
(33, 1, '2025-11-30 13:36:30', '2025-11-30 10:36:30', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-11-30 13:36:30', '2025-11-30 10:36:30', '', 32, 'https://portera.test/?p=33', 0, 'revision', '', 0),
(34, 1, '2025-11-30 13:36:47', '2025-11-30 10:36:47', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2025-12-03 14:29:59', '2025-12-03 11:29:59', '', 0, 'https://portera.test/?page_id=34', 0, 'page', '', 0),
(35, 1, '2025-11-30 13:36:47', '2025-11-30 10:36:47', '', 'Events', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2025-11-30 13:36:47', '2025-11-30 10:36:47', '', 34, 'https://portera.test/?p=35', 0, 'revision', '', 0),
(36, 1, '2025-11-30 13:37:06', '2025-11-30 10:37:06', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2025-12-03 12:55:20', '2025-12-03 09:55:20', '', 0, 'https://portera.test/?page_id=36', 0, 'page', '', 0),
(37, 1, '2025-11-30 13:37:06', '2025-11-30 10:37:06', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2025-11-30 13:37:06', '2025-11-30 10:37:06', '', 36, 'https://portera.test/?p=37', 0, 'revision', '', 0),
(38, 1, '2025-11-30 13:37:29', '2025-11-30 10:37:29', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2025-11-30 13:37:29', '2025-11-30 10:37:29', '', 36, 'https://portera.test/wp-content/uploads/2025/11/about.webp', 0, 'attachment', 'image/webp', 0),
(39, 1, '2025-12-03 12:53:04', '2025-11-30 10:37:56', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://portera.test/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2025-12-03 12:53:04', '2025-11-30 10:37:56', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://portera.test/?p=40', 4, 'nav_menu_item', '', 0),
(41, 1, '2025-12-03 12:53:04', '2025-11-30 10:37:56', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://portera.test/?p=41', 6, 'nav_menu_item', '', 0),
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
(54, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Home Carousel', 'home-carousel', 'publish', 'closed', 'closed', '', 'group_692c5119b0567', '', '', '2025-12-02 14:26:53', '2025-12-02 11:26:53', '', 0, 'https://portera.test/?post_type=acf-field-group&#038;p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"table";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:0:"";s:13:"rows_per_page";i:20;}', 'Carousel', 'carousel', 'publish', 'closed', 'closed', '', 'field_692c51190b7fa', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 54, 'https://portera.test/?post_type=acf-field&p=55', 0, 'acf-field', '', 0),
(56, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Top title', 'top_title', 'publish', 'closed', 'closed', '', 'field_692c51300b7fb', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 55, 'https://portera.test/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_692c51390b7fc', '', '', '2025-11-30 17:18:02', '2025-11-30 14:18:02', '', 55, 'https://portera.test/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:7:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'Learn More Button', 'learn_more', 'publish', 'closed', 'closed', '', 'field_692c51450b7fd', '', '', '2025-12-02 14:26:53', '2025-12-02 11:26:53', '', 55, 'https://portera.test/?post_type=acf-field&#038;p=58', 2, 'acf-field', '', 0),
(59, 1, '2025-11-30 17:18:02', '2025-11-30 14:18:02', 'a:7:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'Carousel Link', 'carousel_link', 'publish', 'closed', 'closed', '', 'field_692c51ae0b7fe', '', '', '2025-12-02 14:26:53', '2025-12-02 11:26:53', '', 55, 'https://portera.test/?post_type=acf-field&#038;p=59', 3, 'acf-field', '', 0),
(60, 1, '2025-11-30 17:19:27', '2025-11-30 14:19:27', 'a:16:{s:10:"aria-label";s:0:"";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Carousel Item', 'carousel_item', 'publish', 'closed', 'closed', '', 'field_692c525d8118e', '', '', '2025-11-30 17:19:27', '2025-11-30 14:19:27', '', 55, 'https://portera.test/?post_type=acf-field&p=60', 4, 'acf-field', '', 0),
(62, 1, '2025-11-30 17:37:13', '2025-11-30 14:37:13', '', 'movers1', '', 'inherit', 'open', 'closed', '', 'movers1', '', '', '2025-11-30 17:37:13', '2025-11-30 14:37:13', '', 29, 'https://portera.test/wp-content/uploads/2025/11/movers1.webp', 0, 'attachment', 'image/webp', 0),
(63, 1, '2025-11-30 17:37:18', '2025-11-30 14:37:18', '', 'movers2', '', 'inherit', 'open', 'closed', '', 'movers2', '', '', '2025-11-30 17:37:18', '2025-11-30 14:37:18', '', 29, 'https://portera.test/wp-content/uploads/2025/11/movers2.webp', 0, 'attachment', 'image/webp', 0),
(64, 1, '2025-12-02 13:28:07', '2025-12-02 10:28:07', '', 'movers1', '', 'inherit', 'open', 'closed', '', 'movers1-2', '', '', '2025-12-02 13:28:07', '2025-12-02 10:28:07', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/movers1.webp', 0, 'attachment', 'image/webp', 0) ;
INSERT INTO `mtip_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(65, 1, '2025-12-02 13:31:52', '2025-12-02 10:31:52', '<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Course Description</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Graduates leave able to perform the full scope of an entry-level mover’s role and take on supervisory responsibilities over time. Core modules include:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li> Industry foundations and job roles</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Packing systems and load optimisation</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Safe lifting, rigging and vehicle loading practices</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Equipment handling and basic maintenance (trolleys, straps, protective materials)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Client communication, job briefings and professional presentation</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Housekeeping, site clean-up and client handover procedures</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Documentation, inventories and basic compliance processes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Emergency response and incident reporting</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Career pathways &amp; outcomes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI trains for clear progression: entry mover → crew member → team lead → move supervisor → operations or business owner. Employers receive trainees who understand procedures, reduce damage risk, and represent their brand professionally.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For graduates, that translates to higher employability, faster promotion potential, and clearer options to start independent ventures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Other than moving industry, PMTI graduates can suitably fit into other sectors like general logistics, cargo handling (like in the entry ports), supermarkets, hotels, cleaning industry and many more</p>\n<!-- /wp:paragraph -->', 'Movers - Core Curriculum', '', 'publish', 'closed', 'closed', '', 'movers-core-curriculum', '', '', '2025-12-03 18:08:16', '2025-12-03 15:08:16', '', 0, 'https://porteracms.test/?page_id=65', 0, 'page', '', 0),
(66, 1, '2025-12-02 13:31:52', '2025-12-02 10:31:52', '', 'Movers - Core Curriculum', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2025-12-02 13:31:52', '2025-12-02 10:31:52', '', 65, 'https://porteracms.test/?p=66', 0, 'revision', '', 0),
(67, 1, '2025-12-02 13:32:28', '2025-12-02 10:32:28', '', 'contactus', '', 'inherit', 'open', 'closed', '', 'contactus-2', '', '', '2025-12-02 13:32:28', '2025-12-02 10:32:28', '', 65, 'https://porteracms.test/wp-content/uploads/2025/12/contactus.webp', 0, 'attachment', 'image/webp', 0),
(68, 1, '2025-12-02 14:06:51', '2025-12-02 11:06:51', '', 'movers2', '', 'inherit', 'open', 'closed', '', 'movers2-2', '', '', '2025-12-02 14:06:51', '2025-12-02 11:06:51', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/movers2.webp', 0, 'attachment', 'image/webp', 0),
(69, 1, '2025-12-02 14:07:40', '2025-12-02 11:07:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:07:40', '2025-12-02 11:07:40', '', 29, 'https://porteracms.test/?p=69', 0, 'revision', '', 0),
(70, 1, '2025-12-02 14:08:31', '2025-12-02 11:08:31', '', 'movers3', '', 'inherit', 'open', 'closed', '', 'movers3', '', '', '2025-12-02 14:08:31', '2025-12-02 11:08:31', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/movers3.webp', 0, 'attachment', 'image/webp', 0),
(71, 1, '2025-12-02 14:08:36', '2025-12-02 11:08:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:08:36', '2025-12-02 11:08:36', '', 29, 'https://porteracms.test/?p=71', 0, 'revision', '', 0),
(72, 1, '2025-12-02 14:21:37', '2025-12-02 11:21:37', '', 'welcome-banner', '', 'inherit', 'open', 'closed', '', 'welcome-banner', '', '', '2025-12-02 14:21:37', '2025-12-02 11:21:37', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/welcome-banner.webp', 0, 'attachment', 'image/webp', 0),
(73, 1, '2025-12-02 14:21:46', '2025-12-02 11:21:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:21:46', '2025-12-02 11:21:46', '', 29, 'https://porteracms.test/?p=73', 0, 'revision', '', 0),
(74, 1, '2025-12-02 14:22:26', '2025-12-02 11:22:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:22:26', '2025-12-02 11:22:26', '', 29, 'https://porteracms.test/?p=74', 0, 'revision', '', 0),
(75, 1, '2025-12-02 14:39:01', '2025-12-02 11:39:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:39:01', '2025-12-02 11:39:01', '', 29, 'https://porteracms.test/?p=75', 0, 'revision', '', 0),
(76, 1, '2025-12-02 14:42:59', '2025-12-02 11:42:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:42:59', '2025-12-02 11:42:59', '', 29, 'https://porteracms.test/?p=76', 0, 'revision', '', 0),
(77, 1, '2025-12-02 14:43:17', '2025-12-02 11:43:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 14:43:17', '2025-12-02 11:43:17', '', 29, 'https://porteracms.test/?p=77', 0, 'revision', '', 0),
(78, 1, '2025-12-02 14:46:42', '2025-12-02 11:46:42', '<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Course Description</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Graduates leave able to perform the full scope of an entry-level mover’s role and take on supervisory responsibilities over time. Core modules include:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul class="wp-block-list"><!-- wp:list-item -->\n<li> Industry foundations and job roles</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Packing systems and load optimisation</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Safe lifting, rigging and vehicle loading practices</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Equipment handling and basic maintenance (trolleys, straps, protective materials)</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Client communication, job briefings and professional presentation</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Housekeeping, site clean-up and client handover procedures</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Documentation, inventories and basic compliance processes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li> Emergency response and incident reporting</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">Career pathways &amp; outcomes</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI trains for clear progression: entry mover → crew member → team lead → move supervisor → operations or business owner. Employers receive trainees who understand procedures, reduce damage risk, and represent their brand professionally.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For graduates, that translates to higher employability, faster promotion potential, and clearer options to start independent ventures.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Other than moving industry, PMTI graduates can suitably fit into other sectors like general logistics, cargo handling (like in the entry ports), supermarkets, hotels, cleaning industry and many more</p>\n<!-- /wp:paragraph -->', 'Movers - Core Curriculum', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2025-12-02 14:46:42', '2025-12-02 11:46:42', '', 65, 'https://porteracms.test/?p=78', 0, 'revision', '', 0),
(79, 1, '2025-12-02 15:01:50', '2025-12-02 12:01:50', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Partnership Section', 'partnership-section', 'publish', 'closed', 'closed', '', 'group_692ed4bf3529c', '', '', '2025-12-02 15:13:34', '2025-12-02 12:13:34', '', 0, 'https://porteracms.test/?post_type=acf-field-group&#038;p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2025-12-02 15:01:50', '2025-12-02 12:01:50', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Section Title', 'section_title', 'publish', 'closed', 'closed', '', 'field_692ed4bf17c0a', '', '', '2025-12-02 15:01:50', '2025-12-02 12:01:50', '', 79, 'https://porteracms.test/?post_type=acf-field&p=80', 0, 'acf-field', '', 0),
(81, 1, '2025-12-02 15:01:50', '2025-12-02 12:01:50', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:11:"placeholder";s:0:"";s:9:"new_lines";s:0:"";}', 'Section Description', 'section_description', 'publish', 'closed', 'closed', '', 'field_692ed4eb17c0b', '', '', '2025-12-02 15:01:50', '2025-12-02 12:01:50', '', 79, 'https://porteracms.test/?post_type=acf-field&p=81', 1, 'acf-field', '', 0),
(82, 1, '2025-12-02 15:01:50', '2025-12-02 12:01:50', 'a:19:{s:10:"aria-label";s:0:"";s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:7:"library";s:3:"all";s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:6:"insert";s:6:"append";s:12:"preview_size";s:6:"medium";}', 'PartnerLogos', 'partnerlogos', 'publish', 'closed', 'closed', '', 'field_692ed4fb17c0c', '', '', '2025-12-02 15:13:34', '2025-12-02 12:13:34', '', 79, 'https://porteracms.test/?post_type=acf-field&#038;p=82', 2, 'acf-field', '', 0),
(83, 1, '2025-12-02 15:07:22', '2025-12-02 12:07:22', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2025-12-02 15:07:22', '2025-12-02 12:07:22', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/1.webp', 0, 'attachment', 'image/webp', 0),
(84, 1, '2025-12-02 15:07:22', '2025-12-02 12:07:22', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2025-12-02 15:07:22', '2025-12-02 12:07:22', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/2.webp', 0, 'attachment', 'image/webp', 0),
(85, 1, '2025-12-02 15:07:22', '2025-12-02 12:07:22', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2025-12-02 15:07:22', '2025-12-02 12:07:22', '', 29, 'https://porteracms.test/wp-content/uploads/2025/12/3.webp', 0, 'attachment', 'image/webp', 0),
(86, 1, '2025-12-02 15:07:32', '2025-12-02 12:07:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 15:07:32', '2025-12-02 12:07:32', '', 29, 'https://porteracms.test/?p=86', 0, 'revision', '', 0),
(87, 1, '2025-12-02 15:25:13', '2025-12-02 12:25:13', '<!-- wp:paragraph -->\n<p>Welcome to our Portera Blog, where curiosity meets expertise. Our blog is dedicated to exploring the intersection of Moving and Logistics overrall. We\'ll take you on a journey of exploration, sharing insights from experts, thought leaders, and everyday people who are shaping our world.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2025-12-02 15:25:13', '2025-12-02 12:25:13', '', 32, 'https://porteracms.test/?p=87', 0, 'revision', '', 0),
(88, 1, '2025-12-02 23:19:19', '2025-12-02 20:19:19', '<!-- wp:heading {"level":5} -->\n<h5 class="wp-block-heading">Introduction</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Portera Mobility Training Institute</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Portera Mobility Training Institute (PMTI) is shaping the next generation of skilled movers; professionals who approach relocation as craftsmanship.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Born from the vision and experience of Nellions Moving &amp; Relocations, PMTI was founded to professionalize an industry that has long relied on untrained hands and untapped potential. Our mission is clear: to build skill, discipline, and pride in the art of moving; and to open real career paths for Kenya’s young workforce.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every relocation tells a story - of new beginnings, fresh opportunities, and human connection. Behind each of those stories are movers who handle lives in motion. PMTI exists to prepare them for that responsibility through a blend of practical training, safety awareness, and professional ethics that meet global standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our approach is simple: we don’t just teach how to move things — we teach how to move with purpose. Graduates leave PMTI not only certified, but transformed; ready to deliver excellence, uphold integrity, and represent a new face of professionalism in Kenya’s mobility and logistics industry.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-02 23:19:19', '2025-12-02 20:19:19', '', 29, 'https://porteracms.test/?p=88', 0, 'revision', '', 0),
(89, 1, '2025-12-02 23:28:27', '2025-12-02 20:28:27', '<label> Your name\r\n    [text* your-name autocomplete:name class:form-control] </label>\r\n\r\n<label> Your email\r\n    [email* your-email autocomplete:email class:form-control] </label>\r\n\r\n<label> Your Phone Number\r\n[tel* YourPhoneNumber class:form-control] </label>\r\n\r\n[submit "Submit"]\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@porteracms.test>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@porteracms.test>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Online Registration', '', 'publish', 'closed', 'closed', '', 'online-registration', '', '', '2025-12-02 23:29:34', '2025-12-02 20:29:34', '', 0, 'https://porteracms.test/?post_type=wpcf7_contact_form&#038;p=89', 0, 'wpcf7_contact_form', '', 0),
(90, 1, '2025-12-03 00:26:42', '2025-12-02 21:26:42', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Statistics - Homepage', 'statistics-homepage', 'publish', 'closed', 'closed', '', 'group_692f584c56ffb', '', '', '2025-12-03 00:26:42', '2025-12-02 21:26:42', '', 0, 'https://porteracms.test/?post_type=acf-field-group&#038;p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:37:"Shaping the next generation of Movers";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics Heading', 'statistics_heading', 'publish', 'closed', 'closed', '', 'field_692f596d99184', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(92, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:18:"Years In Logistics";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 1 Label', 'statistics_1_label', 'publish', 'closed', 'closed', '', 'field_692f584c9917c', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=92', 1, 'acf-field', '', 0),
(93, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";i:12;s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 1 Counter', 'statistics_1_counter', 'publish', 'closed', 'closed', '', 'field_692f58b49917d', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=93', 2, 'acf-field', '', 0),
(94, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:20:"Experienced Teachers";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 2 Label', 'statistics_2_label', 'publish', 'closed', 'closed', '', 'field_692f58c99917e', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=94', 3, 'acf-field', '', 0),
(95, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";i:5;s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 2 Counter', 'statistics_2_counter', 'publish', 'closed', 'closed', '', 'field_692f58f69917f', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=95', 4, 'acf-field', '', 0),
(96, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:17:"Students Enrolled";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 3 Label', 'statistics_3_label', 'publish', 'closed', 'closed', '', 'field_692f591199180', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=96', 5, 'acf-field', '', 0),
(97, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 3 Counter', 'statistics_3_counter', 'publish', 'closed', 'closed', '', 'field_692f592299181', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=97', 6, 'acf-field', '', 0),
(98, 1, '2025-12-03 00:26:41', '2025-12-02 21:26:41', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 4 Label', 'statistics_4_label', 'publish', 'closed', 'closed', '', 'field_692f593e99182', '', '', '2025-12-03 00:26:41', '2025-12-02 21:26:41', '', 90, 'https://porteracms.test/?post_type=acf-field&p=98', 7, 'acf-field', '', 0),
(99, 1, '2025-12-03 00:26:42', '2025-12-02 21:26:42', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Statistics 4 Counter', 'statistics_4_counter', 'publish', 'closed', 'closed', '', 'field_692f595699183', '', '', '2025-12-03 00:26:42', '2025-12-02 21:26:42', '', 90, 'https://porteracms.test/?post_type=acf-field&p=99', 8, 'acf-field', '', 0),
(100, 1, '2025-12-03 00:27:24', '2025-12-02 21:27:24', '<!-- wp:heading {"level":5} -->\n<h5 class="wp-block-heading">Introduction</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Portera Mobility Training Institute</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Portera Mobility Training Institute (PMTI) is shaping the next generation of skilled movers; professionals who approach relocation as craftsmanship.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Born from the vision and experience of Nellions Moving &amp; Relocations, PMTI was founded to professionalize an industry that has long relied on untrained hands and untapped potential. Our mission is clear: to build skill, discipline, and pride in the art of moving; and to open real career paths for Kenya’s young workforce.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every relocation tells a story - of new beginnings, fresh opportunities, and human connection. Behind each of those stories are movers who handle lives in motion. PMTI exists to prepare them for that responsibility through a blend of practical training, safety awareness, and professional ethics that meet global standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our approach is simple: we don’t just teach how to move things — we teach how to move with purpose. Graduates leave PMTI not only certified, but transformed; ready to deliver excellence, uphold integrity, and represent a new face of professionalism in Kenya’s mobility and logistics industry.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-03 00:27:24', '2025-12-02 21:27:24', '', 29, 'https://porteracms.test/?p=100', 0, 'revision', '', 0),
(101, 1, '2025-12-03 00:33:01', '2025-12-02 21:33:01', '<!-- wp:heading {"level":5} -->\n<h5 class="wp-block-heading">Introduction</h5>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Portera Mobility Training Institute</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Portera Mobility Training Institute (PMTI) is shaping the next generation of skilled movers; professionals who approach relocation as craftsmanship.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Born from the vision and experience of Nellions Moving &amp; Relocations, PMTI was founded to professionalize an industry that has long relied on untrained hands and untapped potential. Our mission is clear: to build skill, discipline, and pride in the art of moving; and to open real career paths for Kenya’s young workforce.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Every relocation tells a story - of new beginnings, fresh opportunities, and human connection. Behind each of those stories are movers who handle lives in motion. PMTI exists to prepare them for that responsibility through a blend of practical training, safety awareness, and professional ethics that meet global standards.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our approach is simple: we don’t just teach how to move things — we teach how to move with purpose. Graduates leave PMTI not only certified, but transformed; ready to deliver excellence, uphold integrity, and represent a new face of professionalism in Kenya’s mobility and logistics industry.</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2025-12-03 00:33:01', '2025-12-02 21:33:01', '', 29, 'https://porteracms.test/?p=101', 0, 'revision', '', 0),
(102, 1, '2025-12-03 02:05:02', '2025-12-02 23:05:02', '', 'Trainers', '', 'publish', 'closed', 'closed', '', 'trainers', '', '', '2025-12-03 02:05:02', '2025-12-02 23:05:02', '', 0, 'https://porteracms.test/?post_type=simple_cpt&#038;p=102', 0, 'simple_cpt', '', 0),
(103, 1, '2025-12-03 02:05:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-12-03 02:05:09', '0000-00-00 00:00:00', '', 0, 'https://porteracms.test/?post_type=trainers&p=103', 0, 'trainers', '', 0) ;
INSERT INTO `mtip_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2025-12-03 02:05:57', '2025-12-02 23:05:57', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"trainers";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Trainer Meta', 'trainer-meta', 'publish', 'closed', 'closed', '', 'group_692f70babb4b4', '', '', '2025-12-03 02:06:02', '2025-12-02 23:06:02', '', 0, 'https://porteracms.test/?post_type=acf-field-group&#038;p=104', 0, 'acf-field-group', '', 0),
(105, 1, '2025-12-03 02:05:57', '2025-12-02 23:05:57', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Role', 'role', 'publish', 'closed', 'closed', '', 'field_692f70bbbf4e1', '', '', '2025-12-03 02:05:57', '2025-12-02 23:05:57', '', 104, 'https://porteracms.test/?post_type=acf-field&p=105', 0, 'acf-field', '', 0),
(106, 1, '2025-12-03 02:07:43', '2025-12-02 23:07:43', '<!-- wp:paragraph -->\n<p><br>Mrs. Nabiswa\'s course focuses on building interpersonal and customer service skills. Her module trains students on communication etiquette, conflict management, teamwork, and maintaining professionalism at every stage of client interaction.</p>\n<!-- /wp:paragraph -->', 'Elizabeth Nabiswa', '', 'publish', 'closed', 'closed', '', 'elizabeth-nabiswa', '', '', '2025-12-03 02:07:44', '2025-12-02 23:07:44', '', 0, 'https://porteracms.test/?post_type=trainers&#038;p=106', 0, 'trainers', '', 0),
(107, 1, '2025-12-03 02:07:37', '2025-12-02 23:07:37', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2025-12-03 02:07:37', '2025-12-02 23:07:37', '', 106, 'https://porteracms.test/wp-content/uploads/2025/12/2-1.webp', 0, 'attachment', 'image/webp', 0),
(108, 1, '2025-12-03 02:08:36', '2025-12-02 23:08:36', '<!-- wp:paragraph -->\n<p>Mr. Kimani\'s lessons emphasize designing, organizing, and maintaining neat, client-ready environments before and after move-ins. Students learn attention to detail, use of cleaning materials, and how to align with client expectations during setups.</p>\n<!-- /wp:paragraph -->', 'Julius Kimani', '', 'publish', 'closed', 'closed', '', 'julius-kimani', '', '', '2025-12-03 02:08:37', '2025-12-02 23:08:37', '', 0, 'https://porteracms.test/?post_type=trainers&#038;p=108', 0, 'trainers', '', 0),
(109, 1, '2025-12-03 02:08:30', '2025-12-02 23:08:30', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2025-12-03 02:08:30', '2025-12-02 23:08:30', '', 108, 'https://porteracms.test/wp-content/uploads/2025/12/4.webp', 0, 'attachment', 'image/webp', 0),
(110, 1, '2025-12-03 02:09:21', '2025-12-02 23:09:21', '<!-- wp:paragraph -->\n<p>Mr. Mwaura introduces students to the fundamentals of the moving industry, safety protocols, and professional conduct. His sessions focus on lifting techniques, teamwork coordination, hazard awareness, and maintaining a safety-first culture on every job site.</p>\n<!-- /wp:paragraph -->', 'Sam Mwaura', '', 'publish', 'closed', 'closed', '', 'sam-mwaura', '', '', '2025-12-03 02:09:22', '2025-12-02 23:09:22', '', 0, 'https://porteracms.test/?post_type=trainers&#038;p=110', 0, 'trainers', '', 0),
(111, 1, '2025-12-03 02:09:13', '2025-12-02 23:09:13', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2025-12-03 02:09:13', '2025-12-02 23:09:13', '', 110, 'https://porteracms.test/wp-content/uploads/2025/12/5.webp', 0, 'attachment', 'image/webp', 0),
(112, 1, '2025-12-03 02:10:41', '2025-12-02 23:10:41', '<!-- wp:paragraph -->\n<p>Mrs. Karanja\'s course covers professional packing standards, material selection, and handling of delicate, high-value items. She trains students on wrapping methods, packing for export and local moves, and load arrangement for safety and efficiency.</p>\n<!-- /wp:paragraph -->', 'Cecilia Karanja', '', 'publish', 'closed', 'closed', '', 'cecilia-karanja', '', '', '2025-12-03 02:10:41', '2025-12-02 23:10:41', '', 0, 'https://porteracms.test/?post_type=trainers&#038;p=112', 0, 'trainers', '', 0),
(113, 1, '2025-12-03 02:10:35', '2025-12-02 23:10:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2025-12-03 02:10:35', '2025-12-02 23:10:35', '', 112, 'https://porteracms.test/wp-content/uploads/2025/12/3-1.webp', 0, 'attachment', 'image/webp', 0),
(114, 1, '2025-12-03 02:11:33', '2025-12-02 23:11:33', '<!-- wp:paragraph -->\n<p>Mr. Ndungu teaches students how to prepare, manage, and maintain moving and relocation documents. The sessions focus on inventory management, labeling, customs forms, and the importance of accuracy and traceability in professional moving operations.</p>\n<!-- /wp:paragraph -->', 'Joseph Ndung’u', '', 'publish', 'closed', 'closed', '', 'joseph-ndungu', '', '', '2025-12-03 02:11:34', '2025-12-02 23:11:34', '', 0, 'https://porteracms.test/?post_type=trainers&#038;p=114', 0, 'trainers', '', 0),
(115, 1, '2025-12-03 02:11:29', '2025-12-02 23:11:29', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2025-12-03 02:11:29', '2025-12-02 23:11:29', '', 114, 'https://porteracms.test/wp-content/uploads/2025/12/1-1.webp', 0, 'attachment', 'image/webp', 0),
(116, 1, '2025-12-03 11:24:55', '2025-12-03 08:24:55', '<!-- wp:paragraph -->\n<p>Our instructors are professional movers, fleet managers, and logistics specialists from Nellions with years of on-the-ground experience. They’ll mentor you to build both skill and confidence in the moving trade.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[trainers][/trainers]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Our Instructors', '', 'publish', 'closed', 'closed', '', 'our-instructors', '', '', '2025-12-03 12:52:40', '2025-12-03 09:52:40', '', 0, 'https://porteracms.test/?page_id=116', 0, 'page', '', 0),
(117, 1, '2025-12-03 11:24:47', '2025-12-03 08:24:47', '', 'advisor', '', 'inherit', 'open', 'closed', '', 'advisor', '', '', '2025-12-03 11:24:47', '2025-12-03 08:24:47', '', 116, 'https://porteracms.test/wp-content/uploads/2025/12/advisor.webp', 0, 'attachment', 'image/webp', 0),
(118, 1, '2025-12-03 11:24:55', '2025-12-03 08:24:55', '<!-- wp:paragraph -->\n<p>Our instructors are professional movers, fleet managers, and logistics specialists from Nellions with years of on-the-ground experience. They’ll mentor you to build both skill and confidence in the moving trade.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Our Instructors', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2025-12-03 11:24:55', '2025-12-03 08:24:55', '', 116, 'https://porteracms.test/?p=118', 0, 'revision', '', 0),
(120, 1, '2025-12-03 11:25:50', '2025-12-03 08:25:50', '<!-- wp:paragraph -->\n<p>Our instructors are professional movers, fleet managers, and logistics specialists from Nellions with years of on-the-ground experience. They’ll mentor you to build both skill and confidence in the moving trade.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[trainers][/trainers]</p>\n<!-- /wp:paragraph -->', 'Our Instructors', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2025-12-03 11:25:50', '2025-12-03 08:25:50', '', 116, 'https://porteracms.test/?p=120', 0, 'revision', '', 0),
(121, 1, '2025-12-03 12:52:26', '2025-12-03 09:52:26', '<!-- wp:paragraph -->\n<p>Our instructors are professional movers, fleet managers, and logistics specialists from Nellions with years of on-the-ground experience. They’ll mentor you to build both skill and confidence in the moving trade.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[trainers][/trainers]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Our Instructors', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2025-12-03 12:52:26', '2025-12-03 09:52:26', '', 116, 'https://porteracms.test/?p=121', 0, 'revision', '', 0),
(122, 1, '2025-12-03 12:53:04', '2025-12-03 09:53:04', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2025-12-03 12:53:04', '2025-12-03 09:53:04', '', 0, 'https://porteracms.test/?p=122', 5, 'nav_menu_item', '', 0),
(123, 1, '2025-12-03 13:47:26', '2025-12-03 10:47:26', '', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2025-12-03 14:33:36', '2025-12-03 11:33:36', '', 0, 'https://porteracms.test/?post_type=simple_cpt&#038;p=123', 0, 'simple_cpt', '', 0),
(124, 1, '2025-12-03 13:54:44', '2025-12-03 10:54:44', '<!-- wp:paragraph -->\n<p>Portera officially opened its doors to the first group of trainees, marking the start of a program designed to equip Kenyan youth with practical, employable skills in the moving and housekeeping industry. The event introduced students to the school’s vision, values, and the importance of professionalism in service delivery.</p>\n<!-- /wp:paragraph -->', 'Official Launch &amp; Student Orientation', '', 'publish', 'closed', 'closed', '', 'official-launch-student-orientation', '', '', '2025-12-03 14:34:07', '2025-12-03 11:34:07', '', 0, 'https://porteracms.test/?post_type=events&#038;p=124', 0, 'events', '', 0),
(125, 1, '2025-12-03 13:57:47', '2025-12-03 10:57:47', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"events";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Events Meta', 'events-meta', 'publish', 'closed', 'closed', '', 'group_693016fb31f17', '', '', '2025-12-03 14:47:16', '2025-12-03 11:47:16', '', 0, 'https://porteracms.test/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2025-12-03 13:57:46', '2025-12-03 10:57:46', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_693016fb3660a', '', '', '2025-12-03 13:57:46', '2025-12-03 10:57:46', '', 125, 'https://porteracms.test/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2025-12-03 13:57:47', '2025-12-03 10:57:47', 'a:9:{s:10:"aria-label";s:0:"";s:4:"type";s:16:"date_time_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:11:"d/m/Y g:i a";s:13:"return_format";s:11:"d/m/Y g:i a";s:9:"first_day";i:1;}', 'Date', 'date', 'publish', 'closed', 'closed', '', 'field_693017303660c', '', '', '2025-12-03 14:47:16', '2025-12-03 11:47:16', '', 125, 'https://porteracms.test/?post_type=acf-field&#038;p=127', 1, 'acf-field', '', 0),
(128, 1, '2025-12-03 13:57:47', '2025-12-03 10:57:47', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:11:"time_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"g:i a";s:13:"return_format";s:5:"g:i a";}', 'Start Time', 'start_time', 'publish', 'closed', 'closed', '', 'field_693017103660b', '', '', '2025-12-03 13:57:47', '2025-12-03 10:57:47', '', 125, 'https://porteracms.test/?post_type=acf-field&p=128', 2, 'acf-field', '', 0),
(129, 1, '2025-12-03 13:57:47', '2025-12-03 10:57:47', 'a:8:{s:10:"aria-label";s:0:"";s:4:"type";s:11:"time_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:14:"display_format";s:5:"g:i a";s:13:"return_format";s:5:"g:i a";}', 'End Time', 'end_time', 'publish', 'closed', 'closed', '', 'field_6930176d3660d', '', '', '2025-12-03 14:32:36', '2025-12-03 11:32:36', '', 125, 'https://porteracms.test/?post_type=acf-field&#038;p=129', 3, 'acf-field', '', 0),
(130, 1, '2025-12-03 14:34:03', '2025-12-03 11:34:03', '', '2', '', 'inherit', 'open', 'closed', '', '2-4', '', '', '2025-12-03 14:34:03', '2025-12-03 11:34:03', '', 124, 'https://porteracms.test/wp-content/uploads/2025/12/2-2.webp', 0, 'attachment', 'image/webp', 0),
(131, 1, '2025-12-03 15:05:03', '2025-12-03 12:05:03', '<!-- wp:paragraph -->\n<p>Trainees got their hands dirty learning how to use basic hand and power tools — drills, screwdrivers, tape measures, and levels — essential in professional moving, furniture assembly, and home setup.</p>\n<!-- /wp:paragraph -->', 'Hands-On Tools and Equipment Practice', '', 'publish', 'closed', 'closed', '', 'hands-on-tools-and-equipment-practice', '', '', '2025-12-03 15:06:56', '2025-12-03 12:06:56', '', 0, 'https://porteracms.test/?post_type=events&#038;p=131', 0, 'events', '', 0),
(132, 1, '2025-12-03 15:06:34', '2025-12-03 12:06:34', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2025-12-03 15:06:34', '2025-12-03 12:06:34', '', 131, 'https://porteracms.test/wp-content/uploads/2025/12/3-2.webp', 0, 'attachment', 'image/webp', 0),
(133, 1, '2025-12-03 15:10:55', '2025-12-03 12:10:55', '<!-- wp:paragraph -->\n<p>In a practical exercise, trainees practiced arranging furniture, hanging curtains, and cleaning after setup — replicating what happens during a real client move-in. The activity emphasized attention to detail and client satisfaction.</p>\n<!-- /wp:paragraph -->', 'House Setup Simulation Exercise', '', 'publish', 'closed', 'closed', '', 'house-setup-simulation-exercise', '', '', '2025-12-03 15:10:55', '2025-12-03 12:10:55', '', 0, 'https://porteracms.test/?post_type=events&#038;p=133', 0, 'events', '', 0),
(134, 1, '2025-12-03 15:10:49', '2025-12-03 12:10:49', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2025-12-03 15:10:49', '2025-12-03 12:10:49', '', 133, 'https://porteracms.test/wp-content/uploads/2025/12/4-1.webp', 0, 'attachment', 'image/webp', 0),
(135, 1, '2025-12-03 15:23:38', '2025-12-03 12:23:38', '<!-- wp:paragraph -->\n<p>This session focused on workplace safety, grooming, and professional conduct. Students learned about PPE use, safe lifting techniques, and maintaining discipline and teamwork at job sites.</p>\n<!-- /wp:paragraph -->', 'Safety and Professional Conduct Workshop', '', 'publish', 'closed', 'closed', '', 'safety-and-professional-conduct-workshop', '', '', '2025-12-03 15:23:57', '2025-12-03 12:23:57', '', 0, 'https://porteracms.test/?post_type=events&#038;p=135', 0, 'events', '', 0),
(136, 1, '2025-12-03 15:23:53', '2025-12-03 12:23:53', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2025-12-03 15:23:53', '2025-12-03 12:23:53', '', 135, 'https://porteracms.test/wp-content/uploads/2025/12/6.webp', 0, 'attachment', 'image/webp', 0),
(137, 1, '2025-12-03 15:26:07', '2025-12-03 12:26:07', '<!-- wp:paragraph -->\n<p>Students showcased everything they had learned in a three-day full house setup challenge. They were assessed on teamwork, time management, and quality of work. Outstanding trainees received recognition for their dedication and skill.</p>\n<!-- /wp:paragraph -->', 'Mid-Term Practical Assessment &amp; Recognition Day', '', 'publish', 'closed', 'closed', '', 'mid-term-practical-assessment-recognition-day', '', '', '2025-12-03 15:26:07', '2025-12-03 12:26:07', '', 0, 'https://porteracms.test/?post_type=events&#038;p=137', 0, 'events', '', 0),
(138, 1, '2025-12-03 15:26:01', '2025-12-03 12:26:01', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2025-12-03 15:26:01', '2025-12-03 12:26:01', '', 137, 'https://porteracms.test/wp-content/uploads/2025/12/7.webp', 0, 'attachment', 'image/webp', 0),
(139, 1, '2025-12-03 15:27:32', '2025-12-03 12:27:32', '<!-- wp:paragraph -->\n<p>Plans are underway for Portera’s first graduation ceremony, where students will be awarded certificates of completion. The event will celebrate their journey, growth, and readiness to enter Kenya’s professional moving and housekeeping industry.</p>\n<!-- /wp:paragraph -->', 'Graduation Ceremony', '', 'publish', 'closed', 'closed', '', 'graduation-ceremony', '', '', '2025-12-03 15:27:32', '2025-12-03 12:27:32', '', 0, 'https://porteracms.test/?post_type=events&#038;p=139', 0, 'events', '', 0),
(140, 1, '2025-12-03 15:27:27', '2025-12-03 12:27:27', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2025-12-03 15:27:27', '2025-12-03 12:27:27', '', 139, 'https://porteracms.test/wp-content/uploads/2025/12/5-1.webp', 0, 'attachment', 'image/webp', 0),
(141, 1, '2025-11-24 16:38:00', '2025-11-24 13:38:00', '<!-- wp:paragraph -->\n<p>In a world that often glorifies white-collar jobs, it’s easy to overlook the power of skilled hands. Yet, across Kenya, millions of livelihoods depend on craftsmanship, precision, and physical work; the kind that keeps homes safe, companies running, and communities moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Skills training sits at the heart of this reality. It bridges the gap between talent and opportunity, turning potential into employability. And for young people stepping out of school and into the job market, it offers something deeper: dignity, confidence, and purpose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The Stigma Around Blue-Collar Work</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For decades, technical and vocational work in Kenya has been seen as a last resort. Many young people are encouraged to chase office jobs, even when their strengths lie in practical problem-solving or manual skill.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This stigma not only limits individual potential; it weakens industries that depend on technical excellence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The truth is, hands-on professions like logistics, moving, and skilled trade are the backbone of modern economies. They require intelligence, discipline, and responsibility, qualities that training helps unlock and refine.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Training Creates More Than Skill.. It Builds Character</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At the Portera Mobility Training Institute (PMTI), every lesson goes beyond technique. Trainees learn safety, communication, teamwork, and client care, all of which shape them into dependable professionals.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It’s not just about learning how to pack or lift correctly. It’s about showing up with integrity, respecting clients’ trust, and finding pride in a job well done.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each trainee who walks through PMTI’s doors is reminded that professionalism comes from mastering your craft and carrying yourself with purpose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Why Hands-On Skills Are the Future</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kenya’s economy is shifting. Urbanization, infrastructure development, and global mobility are driving demand for skilled, reliable workers. From movers and technicians to logistics support staff, the market is hungry for trained talent.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Technical and vocational education (TVET) is the future of sustainable employment. By creating structured learning environments like PMTI, we’re ensuring that this generation builds careers that uplift families and communities.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Turning Skill Into Opportunity</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For many of PMTI’s trainees, the journey starts with curiosity and ends in transformation. They discover that with the right training, they can earn, grow, and lead.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Certification gives them a voice in an industry that has long been informal. It helps them stand out to employers, open doors to leadership roles, and gain confidence in their craft.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is the dignity of work! When effort meets knowledge, and skill earns respect.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The PMTI Promise</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At PMTI, we believe that every mover, packer, and logistics worker deserves the chance to be recognized for their skill. Our programs are built to empower through tools and techniques as well as through mindset and professionalism.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Because when hands are trained, hearts are lifted. And that’s how a nation moves forward.</p>\n<!-- /wp:paragraph -->', 'Why Skills Training Matters: Building Dignity and Opportunity in Hands-On Careers', 'In a world that often glorifies white-collar jobs, it’s easy to overlook the power of skilled hands. Yet, across Kenya, millions of livelihoods depend on craftsmanship, precision, and physical work; the kind that keeps homes safe, companies running, and communities moving forward.', 'publish', 'open', 'open', '', 'why-skills-training-matters-building-dignity-and-opportunity-in-hands-on-careers', '', '', '2025-12-03 18:17:07', '2025-12-03 15:17:07', '', 0, 'https://porteracms.test/?p=141', 0, 'post', '', 0),
(142, 1, '2025-12-03 16:38:44', '2025-12-03 13:38:44', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2025-12-03 16:38:44', '2025-12-03 13:38:44', '', 141, 'https://porteracms.test/wp-content/uploads/2025/12/1-2.webp', 0, 'attachment', 'image/webp', 0),
(143, 1, '2025-12-03 16:38:55', '2025-12-03 13:38:55', '', 'Why Skills Training Matters: Building Dignity and Opportunity in Hands-On Careers', 'In a world that often glorifies white-collar jobs, it’s easy to overlook the power of skilled hands. Yet, across Kenya, millions of livelihoods depend on craftsmanship, precision, and physical work; the kind that keeps homes safe, companies running, and communities moving forward.', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-12-03 16:38:55', '2025-12-03 13:38:55', '', 141, 'https://porteracms.test/?p=143', 0, 'revision', '', 0),
(144, 1, '2025-12-03 16:40:31', '2025-12-03 13:40:31', '<!-- wp:paragraph -->\n<p>Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>So what exactly does it take to become a <strong>certified professional mover</strong> in Kenya? At the <strong>Portera Mobility Training Institute (PMTI)</strong>, the answer lies in structured learning, discipline, and passion for service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">A Profession Built on Skill and Responsibility</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Being a mover is about understanding logistics, respecting clients’ belongings, and ensuring safety every step of the way. PMTI trains its students to approach every move with both technical and human awareness: how to handle fragile items, how to communicate with clients, and how to work efficiently as a team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Graduates leave ready to represent a standard and be the first to shape the new face of Kenya’s relocation industry.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">What the Training Looks Like</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI’s 3-month Certificate Course combines practical experience with classroom learning to give trainees a holistic understanding of the industry. Here’s a glimpse into what students learn:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>1. Understanding the Moving Industry </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trainees start by learning about the global moving ecosystem, how relocation services operate, and why professionalism is key to growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2. Packing &amp; Handling Techniques</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Students are taught the science of safe packing: wrapping delicate items, optimizing loads, and ensuring protection throughout the journey.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3. Safety and Emergency Procedures</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Every mover learns to identify risks and respond quickly - from lifting safely to managing emergencies responsibly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4. Client Care &amp; Communication </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>PMTI emphasizes respect and empathy. Trainees are coached to listen, respond calmly, and leave a lasting impression on clients.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5. Documentation &amp; Compliance</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Behind every move is paperwork — insurance, customs forms, and company documentation. Students learn how to manage it efficiently.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">The Human Side of Training</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>What sets PMTI apart is more than the technical skill. Trainers emphasize punctuality, teamwork, and pride in every assignment. This builds not just employable workers, but professionals who understand that reliability and courtesy are as valuable as muscle and motion.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each graduate carries the PMTI ethos: to handle every move with precision, respect, and integrity.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">The Road Ahead: From Trainee to Professional</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once certified, PMTI graduates can take on roles such as:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Professional mover or packer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Warehouse assistant</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Logistics support staff</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Team leader in moving crews</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Handy man in relocation support</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>And for many, that’s only the beginning. The moving industry is growing fast; both locally and globally - offering space for leadership, entrepreneurship, and lifelong learning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Professional movers make transition possible — for families, companies, and entire communities. At PMTI, we’re shaping the next generation of these professionals: disciplined, skilled, and proud of the work they do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Moving is a craft. And in the right hands, it’s a career worth building.</p>\n<!-- /wp:paragraph -->', 'Inside the World of Moving: What It Takes to Be a Certified Professional Mover', 'Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.', 'publish', 'open', 'open', '', 'inside-the-world-of-moving-what-it-takes-to-be-a-certified-professional-mover', '', '', '2025-12-03 18:26:11', '2025-12-03 15:26:11', '', 0, 'https://porteracms.test/?p=144', 0, 'post', '', 0),
(145, 1, '2025-12-03 16:40:22', '2025-12-03 13:40:22', '', '3', '', 'inherit', 'open', 'closed', '', '3-4', '', '', '2025-12-03 16:40:22', '2025-12-03 13:40:22', '', 144, 'https://porteracms.test/wp-content/uploads/2025/12/3-3.webp', 0, 'attachment', 'image/webp', 0),
(146, 1, '2025-12-03 16:40:31', '2025-12-03 13:40:31', '', 'Inside the World of Moving: What It Takes to Be a Certified Professional Mover', 'Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2025-12-03 16:40:31', '2025-12-03 13:40:31', '', 144, 'https://porteracms.test/?p=146', 0, 'revision', '', 0),
(147, 1, '2025-12-03 17:33:22', '2025-12-03 14:33:22', '', 'contact_us', '', 'inherit', 'open', 'closed', '', 'contact_us', '', '', '2025-12-03 17:33:22', '2025-12-03 14:33:22', '', 11, 'https://porteracms.test/wp-content/uploads/2025/12/contact_us.webp', 0, 'attachment', 'image/webp', 0),
(148, 1, '2025-12-03 17:35:31', '2025-12-03 14:35:31', '', 'about_us2', '', 'inherit', 'open', 'closed', '', 'about_us2', '', '', '2025-12-03 17:35:31', '2025-12-03 14:35:31', '', 32, 'https://porteracms.test/wp-content/uploads/2025/12/about_us2.webp', 0, 'attachment', 'image/webp', 0),
(149, 1, '2025-12-03 18:17:07', '2025-12-03 15:17:07', '<!-- wp:paragraph -->\n<p>In a world that often glorifies white-collar jobs, it’s easy to overlook the power of skilled hands. Yet, across Kenya, millions of livelihoods depend on craftsmanship, precision, and physical work; the kind that keeps homes safe, companies running, and communities moving forward.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Skills training sits at the heart of this reality. It bridges the gap between talent and opportunity, turning potential into employability. And for young people stepping out of school and into the job market, it offers something deeper: dignity, confidence, and purpose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The Stigma Around Blue-Collar Work</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For decades, technical and vocational work in Kenya has been seen as a last resort. Many young people are encouraged to chase office jobs, even when their strengths lie in practical problem-solving or manual skill.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This stigma not only limits individual potential; it weakens industries that depend on technical excellence.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The truth is, hands-on professions like logistics, moving, and skilled trade are the backbone of modern economies. They require intelligence, discipline, and responsibility, qualities that training helps unlock and refine.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Training Creates More Than Skill.. It Builds Character</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At the Portera Mobility Training Institute (PMTI), every lesson goes beyond technique. Trainees learn safety, communication, teamwork, and client care, all of which shape them into dependable professionals.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It’s not just about learning how to pack or lift correctly. It’s about showing up with integrity, respecting clients’ trust, and finding pride in a job well done.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each trainee who walks through PMTI’s doors is reminded that professionalism comes from mastering your craft and carrying yourself with purpose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Why Hands-On Skills Are the Future</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kenya’s economy is shifting. Urbanization, infrastructure development, and global mobility are driving demand for skilled, reliable workers. From movers and technicians to logistics support staff, the market is hungry for trained talent.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Technical and vocational education (TVET) is the future of sustainable employment. By creating structured learning environments like PMTI, we’re ensuring that this generation builds careers that uplift families and communities.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Turning Skill Into Opportunity</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For many of PMTI’s trainees, the journey starts with curiosity and ends in transformation. They discover that with the right training, they can earn, grow, and lead.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Certification gives them a voice in an industry that has long been informal. It helps them stand out to employers, open doors to leadership roles, and gain confidence in their craft.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This is the dignity of work! When effort meets knowledge, and skill earns respect.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The PMTI Promise</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At PMTI, we believe that every mover, packer, and logistics worker deserves the chance to be recognized for their skill. Our programs are built to empower through tools and techniques as well as through mindset and professionalism.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Because when hands are trained, hearts are lifted. And that’s how a nation moves forward.</p>\n<!-- /wp:paragraph -->', 'Why Skills Training Matters: Building Dignity and Opportunity in Hands-On Careers', 'In a world that often glorifies white-collar jobs, it’s easy to overlook the power of skilled hands. Yet, across Kenya, millions of livelihoods depend on craftsmanship, precision, and physical work; the kind that keeps homes safe, companies running, and communities moving forward.', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2025-12-03 18:17:07', '2025-12-03 15:17:07', '', 141, 'https://porteracms.test/?p=149', 0, 'revision', '', 0),
(150, 1, '2025-12-03 18:25:16', '2025-12-03 15:25:16', '<!-- wp:paragraph -->\n<p>Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>So what exactly does it take to become a <strong>certified professional mover</strong> in Kenya? At the <strong>Portera Mobility Training Institute (PMTI)</strong>, the answer lies in structured learning, discipline, and passion for service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">A Profession Built on Skill and Responsibility</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Being a mover is about understanding logistics, respecting clients’ belongings, and ensuring safety every step of the way. PMTI trains its students to approach every move with both technical and human awareness: how to handle fragile items, how to communicate with clients, and how to work efficiently as a team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Graduates leave ready to represent a standard and be the first to shape the new face of Kenya’s relocation industry.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">What the Training Looks Like</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI’s 3-month Certificate Course combines practical experience with classroom learning to give trainees a holistic understanding of the industry. Here’s a glimpse into what students learn:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>1. Understanding the Moving Industry </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trainees start by learning about the global moving ecosystem, how relocation services operate, and why professionalism is key to growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2. Packing &amp; Handling Techniques</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Students are taught the science of safe packing: wrapping delicate items, optimizing loads, and ensuring protection throughout the journey.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3. Safety and Emergency Procedures</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Every mover learns to identify risks and respond quickly - from lifting safely to managing emergencies responsibly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4. Client Care &amp; Communication </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>PMTI emphasizes respect and empathy. Trainees are coached to listen, respond calmly, and leave a lasting impression on clients.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5. Documentation &amp; Compliance</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Behind every move is paperwork — insurance, customs forms, and company documentation. Students learn how to manage it efficiently.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">The Human Side of Training</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>What sets PMTI apart is more than the technical skill. Trainers emphasize punctuality, teamwork, and pride in every assignment. This builds not just employable workers, but professionals who understand that reliability and courtesy are as valuable as muscle and motion.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each graduate carries the PMTI ethos: to handle every move with precision, respect, and integrity.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">The Road Ahead: From Trainee to Professional</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once certified, PMTI graduates can take on roles such as:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Professional mover or packer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Warehouse assistant</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Logistics support staff</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Team leader in moving crews</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Handy man in relocation support</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>And for many, that’s only the beginning. The moving industry is growing fast; both locally and globally - offering space for leadership, entrepreneurship, and lifelong learning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Professional movers make transition possible — for families, companies, and entire communities. At PMTI, we’re shaping the next generation of these professionals: disciplined, skilled, and proud of the work they do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Moving is a craft. And in the right hands, it’s a career worth building.</p>\n<!-- /wp:paragraph -->', 'Inside the World of Moving: What It Takes to Be a Certified Professional Mover', 'Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.', 'inherit', 'closed', 'closed', '', '144-autosave-v1', '', '', '2025-12-03 18:25:16', '2025-12-03 15:25:16', '', 144, 'https://porteracms.test/?p=150', 0, 'revision', '', 0),
(151, 1, '2025-12-03 18:26:11', '2025-12-03 15:26:11', '<!-- wp:paragraph -->\n<p>Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>So what exactly does it take to become a <strong>certified professional mover</strong> in Kenya? At the <strong>Portera Mobility Training Institute (PMTI)</strong>, the answer lies in structured learning, discipline, and passion for service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">A Profession Built on Skill and Responsibility</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Being a mover is about understanding logistics, respecting clients’ belongings, and ensuring safety every step of the way. PMTI trains its students to approach every move with both technical and human awareness: how to handle fragile items, how to communicate with clients, and how to work efficiently as a team.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Graduates leave ready to represent a standard and be the first to shape the new face of Kenya’s relocation industry.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">What the Training Looks Like</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>PMTI’s 3-month Certificate Course combines practical experience with classroom learning to give trainees a holistic understanding of the industry. Here’s a glimpse into what students learn:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>1. Understanding the Moving Industry </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Trainees start by learning about the global moving ecosystem, how relocation services operate, and why professionalism is key to growth.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2. Packing &amp; Handling Techniques</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Students are taught the science of safe packing: wrapping delicate items, optimizing loads, and ensuring protection throughout the journey.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3. Safety and Emergency Procedures</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Every mover learns to identify risks and respond quickly - from lifting safely to managing emergencies responsibly.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4. Client Care &amp; Communication </strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>PMTI emphasizes respect and empathy. Trainees are coached to listen, respond calmly, and leave a lasting impression on clients.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5. Documentation &amp; Compliance</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Behind every move is paperwork — insurance, customs forms, and company documentation. Students learn how to manage it efficiently.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">The Human Side of Training</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>What sets PMTI apart is more than the technical skill. Trainers emphasize punctuality, teamwork, and pride in every assignment. This builds not just employable workers, but professionals who understand that reliability and courtesy are as valuable as muscle and motion.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Each graduate carries the PMTI ethos: to handle every move with precision, respect, and integrity.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">The Road Ahead: From Trainee to Professional</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Once certified, PMTI graduates can take on roles such as:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Professional mover or packer</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Warehouse assistant</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Logistics support staff</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Team leader in moving crews</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>● Handy man in relocation support</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>And for many, that’s only the beginning. The moving industry is growing fast; both locally and globally - offering space for leadership, entrepreneurship, and lifelong learning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Professional movers make transition possible — for families, companies, and entire communities. At PMTI, we’re shaping the next generation of these professionals: disciplined, skilled, and proud of the work they do.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Moving is a craft. And in the right hands, it’s a career worth building.</p>\n<!-- /wp:paragraph -->', 'Inside the World of Moving: What It Takes to Be a Certified Professional Mover', 'Every move tells a story of new beginnings, new spaces, and new opportunities. But behind every seamless relocation is a team of professionals whose expertise turns chaos into calm. They plan, lift, pack, secure, transport, and deliver with precision and care that only comes from proper training.', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2025-12-03 18:26:11', '2025-12-03 15:26:11', '', 144, 'https://porteracms.test/?p=151', 0, 'revision', '', 0) ;

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
(42, 1, 0),
(122, 2, 0),
(141, 1, 0),
(144, 1, 0) ;

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
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
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
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 7) ;

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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
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
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_terms`
#
INSERT INTO `mtip_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'News', 'news', 0),
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_usermeta`
#
INSERT INTO `mtip_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Portera Team'),
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
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:"62064f073f8a745ef4e329c377ad0029493338a793aef41976ddabbbdcf5a1c3";a:4:{s:10:"expiration";i:1765640661;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:117:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36";s:5:"login";i:1764431061;}s:64:"53e1fbbc9dc35e76d1fd033fe1c0dcae9be26914f748dd525fd8b97cbaac03ac";a:4:{s:10:"expiration";i:1764928338;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36";s:5:"login";i:1764755538;}}'),
(17, 1, 'mtip_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'mtip_user-settings', 'libraryContent=browse'),
(20, 1, 'mtip_user-settings-time', '1764487884'),
(21, 1, 'mtip_persisted_preferences', 'a:3:{s:4:"core";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:14:"core/edit-post";a:3:{s:12:"welcomeGuide";b:0;s:23:"metaBoxesMainOpenHeight";i:346;s:19:"metaBoxesMainIsOpen";b:1;}s:9:"_modified";s:24:"2025-12-02T23:06:33.706Z";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_page', 'a:2:{i:0;s:23:"acf-group_692c5119b0567";i:1;s:23:"acf-group_692ed4bf3529c";}'),
(26, 1, 'metaboxhidden_page', 'a:0:{}'),
(27, 1, 'dbg_lv_next_schedule_review_notice_time', '1765925719') ;

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
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `mtip_users`
#
INSERT INTO `mtip_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminPMTI', '$wp$2y$12$0bpkPPrwEy19FRdfvEzatOyr1yR0IL4/yUB1Y0WIWi5lYIrMu1BRS', 'adminpmti', 'gkwambata@gmail.com', 'https://portera.test', '2025-11-29 15:44:05', '', 0, 'Portera Team') ;

#
# End of data contents of table `mtip_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

