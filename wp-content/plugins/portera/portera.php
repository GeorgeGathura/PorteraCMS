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
                        'singular_name' => __('Trainer', 'portera-basic'),
                    ),
                    'public'      => false,
                    'has_archive' => true,
                )
            );
            
        }
        function portera_setupEvents(): void
        {
            register_post_type('events',
                array(
                    'labels'      => array(
                        'name'          => __('Events', 'portera-basic'),
                        'singular_name' => __('Event', 'portera-basic'),
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
            portera_setupEvents();
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

        function portera_render_trainers($atts = [], $content = null)
        {
            $content='<section id="advisor" class="advisor-area default-padding bottom-less">
    <div class="container">
        <div class="advisor-items text-center text-light">
            <div class="row">';
        

        $args = array('post_type' => 'trainers', 'posts_per_page' => 4);
        $featured = new WP_Query($args);
        if ( $featured->have_posts() ) :
        
            while ( $featured->have_posts() ) : $featured->the_post();
                $featuredImage = get_the_post_thumbnail_url(get_the_ID(), 'full');
        
         
               $content.='
                <div class="col-lg-4 col-md-6 single-item">
                    <div class="advisor-item">
                        <div class="info-box">
                            <img src="<?php echo $featuredImage; ?>" alt="Thumb" />
                            <div class="info-title">';
               $content. = '<h4>'.get_the_title().'</h4>'; 
               $content.='
                                <span>'.get_field('role').'</span>
                                <div class="social">';
               $content.= get_the_content();

               $content.='                 </div>
                            </div>
                        </div>
                    </div>
                </div>';
            
             endwhile; wp_reset_postdata();
        endif;
         $content.='
                        </div>
                    </div>
                </div>
            </section>';
            return $content;
        }
    
    add_shortcode('trainers', 'portera_render_trainers');
    register_activation_hook( __FILE__, 'portera_init' );

    add_action( 'init', 'portera_setup' );




