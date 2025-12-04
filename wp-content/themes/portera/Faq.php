<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 * Template Name: FAQ
 * @package portera
 */

get_header();
$featuredImage = get_the_post_thumbnail_url();
?>
    <!-- Start Breadcrumb -->
    <div
            class="breadcrumb-area shadow dark text-center bg-fixed text-light"
            style="background-image: url(<?php echo $featuredImage; ?>)"
    >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                  <?php the_title('<h1>','</h1>') ?>
                    <ul class="breadcrumb">
                        <li>
                            <a href="<?php echo home_url(); ?>"><i class="fas fa-home"></i> Home</a>
                        </li>
                        <?php
                         the_title('<li class="active">','<li>'); 
                         ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="faq-area left-sidebar course-details-area default-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 faq-content">
                    <div class="accordion" id="faqAccordion">
                   
                        <!-- End Accordion Item -->
                             <?php

                            // Check rows exists.
                            if( have_rows('faq_section') ):
                                $i=0;
                                // Loop through rows.
                                while( have_rows('faq_section') ) : the_row();
                            
                                    // Load sub field value.
                                    $title = get_sub_field('question');
                                    $answer = get_sub_field('answer');
                            ?>
                                    <!-- Accordion Item 1 -->
                                    <div class="accordion-item">
                                        <h2 class="accordion-header" id="headingOne">
                                            <button
                                                    class="accordion-button"
                                                    type="button"
                                                    data-bs-toggle="collapse"
                                                    data-bs-target="#collapse<?php echo $i; ?>"
                                                    aria-expanded="true"
                                                    aria-controls="collapse<?php echo $i; ?>"
                                            >
                                               <?php echo $title; ?>
                                            </button>
                                        </h2>
                                        <div
                                                id="collapse<?php echo $i; ?>"
                                                class="accordion-collapse collapse <?php if($i==0) echo 'show'; ?>"
                                                aria-labelledby="heading<?php echo $i; ?>"
                                                data-bs-parent="#faqAccordion"
                                        >
                                            <div class="accordion-body">
                                                <p>
                                                    <?php echo $answer; ?>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                            <?php
                                // End loop.
                                    $i+=1;
                                endwhile;
                            endif;
                            ?>
                    </div>
                </div>
                <!-- Start Sidebar -->


                <!-- End Home Sidebar -->
                <div class="col-lg-4 home-sidebar">
                    <!-- Start Latest Post -->
                    <div class="sidebar-item latest-posts trending-courses-box">
                        <h4>Latest News</h4>
                        <div class="trending-courses-items">
                            <?php

                            $args = array('post_type' => 'post', 'posts_per_page' => 4);
                            $featured = new WP_Query($args);
                            if ( $featured->have_posts() ) :

                                while ( $featured->have_posts() ) : $featured->the_post();

                                    ?>
                                    <div class="item">
                                        <h4>
                                            <a href="#"><?php echo get_the_title(); ?></a>
                                        </h4>
                                        <div class="meta">
                                            <i class="fas fa-user"></i> By <a href="#"><?php echo get_the_author_meta('display_name'); ?></a>
                                            <span><i class="fas fa-clock"></i>  <?php echo get_the_date('dS M Y'); ?></span>
                                        </div>
                                    </div>
                                <?php
                                endwhile;
                            endif;
                            ?>
                            <a href="<?php echo get_permalink(32); ?>" class="more"
                            >Browse All News <i class="fas fa-angle-double-right"></i
                                ></a>
                        </div>
                    </div>
                    <!-- End Latest Posts -->

                    <!-- Start Online Registration -->
                    <div class="sidebar-item online-registration">
                        <h4>Online Registration</h4>
                        <div class="reg-form">
                            <?php echo do_shortcode('[contact-form-7 id="ea164d0" title="Online Registration"]'); ?>
                        </div>
                    </div>
                    <!-- End Online Registration -->
                </div>
                <!-- End Home Sidebar -->

                <!-- End Sidebar -->
            </div>
        </div>
    </div>
    <!-- End Faq -->
<?php
//get_sidebar();
get_footer();
