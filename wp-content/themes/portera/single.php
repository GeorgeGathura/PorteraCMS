<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package portera
 */

get_header();
$featuredImage = get_the_post_thumbnail_url();
$category = get_the_category() ?? 'Uncategorized';
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
                        <li><a href="<?php echo get_permalink( 32); ?>">Blog</a></li>
                        <li>
                            <a href="#"><?php echo $category[0]->name ?? $category ?? 'Uncategorized'; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!-- Start Blog
        ============================================= -->
    <div class="blog-area full-blog standard single-blog full-blog ">
        <div class="container">
            <div class="blog-items">
                <div class="row">
                    <?php
                    while ( have_posts() ) :
                  
                    ?>
                    <div class="blog-content col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
                        <div class="item-box">
                            <div class="item">
                            
                                <div class="info">
                                        <div class="meta">
                                       
<!--                                            <div class="share">-->
<!--                                                <i class="fas fa-share-alt"></i>-->
<!--                                                <ul>-->
<!--                                                    <li class="facebook">-->
<!--                                                        <a href="#"><i class="fab fa-facebook-f"></i></a>-->
<!--                                                    </li>-->
<!--                                                    <li class="twitter">-->
<!--                                                        <a href="#"><i class="fab fa-twitter"></i></a>-->
<!--                                                    </li>-->
<!--                                                    <li class="pinterest">-->
<!--                                                        <a href="#"><i class="fab fa-pinterest"></i></a>-->
<!--                                                    </li>-->
<!--                                                    <li class="dribbble">-->
<!--                                                        <a href="#"><i class="fab fa-dribbble"></i></a>-->
<!--                                                    </li>-->
<!--                                                </ul>-->
<!--                                            </div>-->
                                        </div>

                                        <?php
                                        the_post();
                                        the_content();
                                        //get_template_part( 'template-parts/content', get_post_type() );

                                                                              // If comments are open or we have at least one comment, load up the comment template.
                                        if ( comments_open() || get_comments_number() ) :
                                            comments_template();
                                        endif;

                                   
                                    ?>

                                </div>
                                <div class="post-pagi-area mx-0">
                                    <?php
                                    the_post_navigation(
                                            array(
                                                    'prev_text' => '<i class="fas fa-angle-double-left"></i>' . esc_html__( 'Previous', 'portera' ) ,
                                                    'next_text' => esc_html__( 'Next:', 'portera' ) . '<i class="fas fa-angle-double-right"></i>',
                                            )
                                    );


                                    ?> 
                                </div>
                                <div class="post-tags">
                                    <span>Tags: </span>
                                    <?php the_tags('<a href="'.get_tag_link(get_the_ID()).'">','</a> <a href="'.get_tag_link(get_the_ID()).'">','</a>'); ?>
                                  
                                </div>
                             
                        
                            </div>
                        </div>
                    </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
    <!-- End Blog -->
<?php
//get_sidebar();
get_footer();
