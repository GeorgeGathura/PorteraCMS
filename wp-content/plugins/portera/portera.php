<?php
/*
 * Plugin Name: Portera Base Plugin
 * Description:       Handle the basics for this website.
 * Version:           1.0.0
 * Requires at least: 5.2
 * Requires PHP:      8.2
 * Author:            George K
 * Author URI:        https://acaciafive.com
 * License:           GPL v2 or later
 * License URI:       https://www.gnu.org/licenses/gpl-2.0.html
 * Update URI:        https://example.com/my-plugin/
 * Text Domain:       portera-basic
 * Domain Path:       /languages
 */
if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}

        function portera_setupTrainers(): void
        {
            register_post_type('trainers',
                array(
                    'labels'      => array(
                        'name'          => __('Trainers', 'portera-basic'),
                        'singular_name' => __('Trainers', 'portera-basic'),
                    ),
                    'public'      => false,
                    'has_archive' => true,
                )
            );
            
        }


        /**
         * Register the "trainer" custom post type
         */
        function portera_setup()
        {
            portera_setupTrainers();
        }


        /**
         * Activate the plugin.
         */
         function portera_init()
        {
            // Trigger our function that registers the custom post type plugin.
            portera_setup();
            // Clear the permalinks after the post type has been registered.
            flush_rewrite_rules();
        }


    
    
    register_activation_hook( __FILE__, 'portera_init' );

    add_action( 'init', 'portera_setup' );




