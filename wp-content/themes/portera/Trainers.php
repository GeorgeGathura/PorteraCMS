<?php
/**
 * Template Name: Trainers
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
<!-- Start Advisor Area
    ============================================= -->
<section id="advisor" class="advisor-area default-padding bottom-less">
    <div class="container">
        <div class="advisor-items text-center text-light">
            <div class="row">
        <?php

        $args = array('post_type' => 'trainers', 'posts_per_page' => 4);
        $featured = new WP_Query($args);
        if ( $featured->have_posts() ) :
        
            while ( $featured->have_posts() ) : $featured->the_post();
                $featuredImage = get_the_post_thumbnail_url(get_the_ID(), 'full');
        ?>
         
                <!-- Single Item -->
                <div class="col-lg-4 col-md-6 single-item">
                    <div class="advisor-item">
                        <div class="info-box">
                            <img src="<?php echo $featuredImage; ?>" alt="Thumb" />
                            <div class="info-title">
                                <?php the_title('<h4>','</h4>'); ?>
                                <span><?php echo get_field('role'); ?></span>
                                <div class="social">

                                    <?php the_content(); ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
        <?php
             endwhile; wp_reset_postdata();
        endif;
            ?>
            </div>
        </div>
    </div>
</section>
<!--End Advisor Area -->
<?php
get_footer();