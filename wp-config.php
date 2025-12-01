<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'portera' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'SKYking01' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '$dDjgicj@sMYb3;T%~TImo5b|.rg:(q3))?ltG+:=&cQr%&e);WE,cJ},V%=*f^i' );
define( 'SECURE_AUTH_KEY',  'F<c(2FJH!e$<|OVuZ@wS6a9W0ih:do`a_cvBpUc.f%ClwcFZC  m?(}Sm&L0-^Tu' );
define( 'LOGGED_IN_KEY',    '23;+mhXNXUE}NjcF0LgUqV  IytX.xMgu6D-XNfUI@pOGQzZ/U,i[h/w:OdM( XY' );
define( 'NONCE_KEY',        '+ONs+/[v6c:yxx)(~>S-5SKW4)>II@/n;{=CKqr9A@AwvBx,}bVU}$yGcB.0}X o' );
define( 'AUTH_SALT',        'g|U>D<xhq{oTT=@XDYHk6!}`}N$-^b(Q^MY=pYK>DHf%*t0j!C+;S:mF/6_5#l*`' );
define( 'SECURE_AUTH_SALT', 'bRc?G8y>taYdB5UE!c!QY8i8~UjpHJ:I.hF6=K=htyH9qmMnlfk&DeQS/SV#SRF&' );
define( 'LOGGED_IN_SALT',   '^R)Be^6-d.9QLH_ySaEr`?^_1?#Is+`89GDveBm:<z;/0M<>p$2fBfM{.nUoq0%$' );
define( 'NONCE_SALT',       'nRA?LfMZR@cedh((;9I(FZ3p1rz)hGTIk:DE?H=<C%/(XNef%9W8^-7mnGap==($' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'mtip_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
