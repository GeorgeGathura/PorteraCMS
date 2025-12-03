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

        function portera_render_trainers($atts = [], $content = null)
        {
            return '
<section id="advisor" class="advisor-area default-padding bottom-less">
  <div class="container">
    <div class="advisor-items text-center text-light">
      <div class="row">
        <!-- Single Item -->
        <div class="col-lg-4 col-md-6 single-item">
          <div class="advisor-item">
            <div class="info-box">
              <img src="assets/img/advisor/1.webp" alt="Thumb" />
              <div class="info-title">
                <h4>Joseph Ndung’u</h4>
                <span>Documentation & Records Management</span>
                <div class="social">
                  <p>
                    Mr. Ndungu teaches students how to prepare, manage, and
                    maintain moving and relocation documents. The sessions focus
                    on inventory management, labeling, customs forms, and the
                    importance of accuracy and traceability in professional
                    moving operations.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 single-item">
          <div class="advisor-item">
            <div class="info-box">
              <img src="assets/img/advisor/3.webp" alt="Thumb" />
              <div class="info-title">
                <h4>Cecilia Karanja</h4>
                <span>Packing & Handling Techniques</span>
                <div class="social">
                  <p>
                    Mrs. Karanjas course covers professional packing standards,
                    material selection, and handling of delicate, high-value
                    items. She trains students on wrapping methods, packing for
            export and local moves, and load arrangement for safety and
                                                             efficiency.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 single-item">
          <div class="advisor-item">
            <div class="info-box">
              <img src="assets/img/advisor/2.webp" alt="Thumb" />
              <div class="info-title">
                <h4>Elizabeth Nabiswa</h4>
                <span>Client Communication & Service Etiquette</span>
                <div class="social">
                  <p>
        Mrs. Nabiswas course focuses on building interpersonal and
                    customer service skills. Her module trains students on
                    communication etiquette, conflict management, teamwork, and
                    maintaining professionalism at every stage of client
                    interaction.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Single Item -->
        <!-- Single Item -->
        <div class="col-lg-4 col-md-6 single-item">
          <div class="advisor-item">
            <div class="info-box">
              <img src="assets/img/advisor/4.webp" alt="Thumb" />
              <div class="info-title">
                <h4>Junias Kimani</h4>
                <span>Housekeeping for Movers</span>
                <div class="social">
                  <p>
                    Mr. Kimanis lessons emphasize designing, organizing, and
                    maintaining neat, client-ready environments before and after
                    move-ins. Students learn attention to detail, use of
                    cleaning materials, and how to align with client
                    expectations during setups.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
    
       <div class="col-lg-4 col-md-6 single-item">
          <div class="advisor-item">
            <div class="info-box">
              <img src="assets/img/advisor/4.webp" alt="Thumb" />
              <div class="info-title">
                <h4>Charles Lumumba</h4>
                <span>Housekeeping for Movers</span>
                <div class="social">
                  <p>
        Mr. Lumumbas lessons emphasize designing, organizing, and
                    maintaining neat, client-ready environments before and after
                    move-ins. Students learn attention to detail, use of
                    cleaning materials, and how to align with client
                    expectations during setups.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-md-6 single-item">
          <div class="advisor-item">
            <div class="info-box">
              <img src="assets/img/advisor/5.webp" alt="Thumb" />
              <div class="info-title">
                <h4>Sam Mwaura</h4>
                <span>Safety in Moving & Introduction to Moving Industry</span>
                <div class="social">
                  <p>
                    Mr. Mwaura introduces students to the fundamentals of the
                    moving industry, safety protocols, and professional conduct.
                    His sessions focus on lifting techniques, teamwork
                    coordination, hazard awareness, and maintaining a
                    safety-first culture on every job site.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
';
        }
    
    add_shortcode('trainers', 'portera_render_trainers');
    register_activation_hook( __FILE__, 'portera_init' );

    add_action( 'init', 'portera_setup' );




