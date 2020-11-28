<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '~Q^NWLk-B1{w?HlJ&%16&1E1q6GttU/ mhHIjsRB7+cJW)*91r0$d=F/6=9&(N^p' );
define( 'SECURE_AUTH_KEY',  '{M6t<w@esbw!a|OPf=G^ZCc1)r*h@_&5I*V$RK~B}0#xauKD>|<{c6527|g0:s0U' );
define( 'LOGGED_IN_KEY',    '2M|<aOIA~3Ze7ABGAG09_Ded2H^,w*x*d%~L463u^`2X-8X,&3PJ#KG?d&$+r&qX' );
define( 'NONCE_KEY',        '2/{6@h=|De}M!}^::+JOP _c%*9VFHn.pa6*s5Dm@4<)blT,uYr}#l-V&OXHV(1 ' );
define( 'AUTH_SALT',        'U~6FKs92WZ3gCsOP/dD,hCuy!6p8IN51ja`81qIT$z:byC/xQstC;KDXe:jl?>&l' );
define( 'SECURE_AUTH_SALT', 'o9CDX%p9ec7at}[1Xhho48G7xI7>.=lfpd}mU`Nuv}#,{?SpsS-jVhu*8_k,<RS_' );
define( 'LOGGED_IN_SALT',   'p|5&Hb0eF7aijwYL2Jc4VTjk8y0@UWm~ k.RZ!j/):$WYhTF#EKX*YDkRiJAk+ji' );
define( 'NONCE_SALT',       '[,2v(b+[Je%LkvKA.~!A`r i1BV@c9G[PRI&ieO[gT[H<wa *Z94g|PA_)5.7vhu' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
