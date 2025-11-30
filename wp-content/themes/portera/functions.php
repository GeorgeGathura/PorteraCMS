<?php
/**
 * portera functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package portera
 */

if ( ! defined( '_S_VERSION' ) ) {
	// Replace the version number of the theme on each release.
	define( '_S_VERSION', '1.0.0' );
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function portera_setup() {
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on portera, use a find and replace
		* to change 'portera' to the name of your theme in all the template files.
		*/
	load_theme_textdomain( 'portera', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support( 'title-tag' );

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'top-menu' => esc_html__( 'Primary', 'portera' ),
            'footer-menu' => esc_html__( 'Footer', 'portera' ),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'portera_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support( 'customize-selective-refresh-widgets' );

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 80,
			'width'       => 215,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action( 'after_setup_theme', 'portera_setup' );

/**
 * Register Custom Navigation Walker
 */
function register_navwalker(){
    require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
}
add_action( 'after_setup_theme', 'register_navwalker' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function portera_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'portera_content_width', 640 );
}
add_action( 'after_setup_theme', 'portera_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function portera_widgets_init() {
	register_sidebar(
		array(
			'name'          => esc_html__( 'Sidebar', 'portera' ),
			'id'            => 'sidebar-1',
			'description'   => esc_html__( 'Add widgets here.', 'portera' ),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action( 'widgets_init', 'portera_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function portera_scripts(): void
{
	wp_enqueue_style( 'portera-bootstrap', get_theme_file_uri('assets/css/bootstrap.min.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-awesome', get_theme_file_uri('assets/css/font-awesome.min.cs'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-flaticon', get_theme_file_uri('assets/css/flaticon-set.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-elegant', get_theme_file_uri('assets/css/elegant-icons.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-popup', get_theme_file_uri('assets/css/magnific-popup.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-carousel', get_theme_file_uri('assets/css/owl.carousel.min.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-owl', get_theme_file_uri('assets/css/owl.theme.default.min.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-animate', get_theme_file_uri('assets/css/animate.css'), array(), _S_VERSION );
    wp_enqueue_style( 'portera-bootsnav', get_theme_file_uri('assets/css/bootsnav.css'), array(), _S_VERSION );
 //	wp_style_add_data( 'portera-style', 'rtl', 'replace' );
	wp_enqueue_style( 'portera-style', get_stylesheet_uri(), array(), _S_VERSION );
    wp_enqueue_style( 'portera-responsive', get_theme_file_uri('assets/css/responsive.css'), array(), _S_VERSION );

	wp_enqueue_script( 'portera-bundlejs', get_theme_file_uri('assets/js/bootstrap.bundle.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'jquery', 'https://code.jquery.com/jquery-3.6.0.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'popperjs', 'https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'bootjs', 'https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js', array(), _S_VERSION, true );
    wp_enqueue_script( 'stackpath', 'https://stackpath.bootstrapcdn.com/bootstrap/4.6.2/js/bootstrap.min.js', array(), _S_VERSION, true );

    wp_enqueue_script( 'portera-jquery', get_theme_file_uri('assets/js/jquery-3.7.1.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-navigation', get_theme_file_uri('assets/js/bootstrap.bundle.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-appear', get_theme_file_uri('assets/js/jquery.appear.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-easin', get_theme_file_uri('assets/js/jquery.easing.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-magnific', get_theme_file_uri('assets/js/jquery.magnific-popup.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-carouseljs', get_theme_file_uri('assets/js/owl.carousel.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-wow', get_theme_file_uri('assets/js/wow.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-isotope', get_theme_file_uri('assets/js/isotope.pkgd.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-imagesloaded', get_theme_file_uri('assets/js/imagesloaded.pkgd.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-countjs', get_theme_file_uri('assets/js/count-to.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-loop', get_theme_file_uri('assets/js/loopcounter.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-nicejs', get_theme_file_uri('assets/js/jquery.nice-select.min.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-bootnavjs', get_theme_file_uri('assets/js/bootsnav.js'), array(), _S_VERSION, true );
    wp_enqueue_script( 'portera-mainjs', get_theme_file_uri('assets/js/main.js'), array(), _S_VERSION, true );

    wp_enqueue_script( 'portera-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true );
  
    
	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'portera_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

