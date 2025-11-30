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
 *
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


    <!-- End Faq -->
<?php
//get_sidebar();
get_footer();
