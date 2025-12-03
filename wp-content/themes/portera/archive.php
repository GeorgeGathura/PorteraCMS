<?php
/**
 *
 * Template Name: Blog
 */
get_header();
global $post;
$featuredImage = get_the_post_thumbnail_url($post->ID);
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
                        <li>
                            <a href="#"><?php echo $category[0]->name ?? $category ?? 'Uncategorized'; ?></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="blog-area full-blog right-sidebar full-blog default-padding">
        <div class="container">
            <div class="blog-items">
                <div class="row">
                    <div class="blog-content col-lg-8">
                        <?php

                        // Proper pagination for page templates

                        if ( have_posts() ) :

                            while ( have_posts() ) : the_post();
                                ?>
                                <!-- Single Item -->
                                <div class="single-item">
                                    <div class="item">
                                        <div class="thumb">
                                            <a href="<?php echo get_permalink($post->ID); ?>"
                                            >
                                                <img src="<?php echo get_the_post_thumbnail_url($post->ID); ?>" alt="Thumb"
                                                /></a>
                                            <div class="date">
                                                <h4>
                                                    <span><?php echo get_the_date('d'); ?></span>
                                                    <?php echo get_the_date('M, Y'); ?>
                                                </h4>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <h3>
                                                <a href="<?php echo get_permalink($post->ID); ?>"
                                                ><?php echo get_the_title(); ?></a>
                                            </h3>
                                            <p>
                                                <?php the_excerpt(); ?>
                                            </p>
                                            <a href="<?php echo get_permalink($post->ID); ?>"
                                            >Read More <i class="fas fa-angle-double-right"></i
                                                ></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Item -->

                            <?php
                            endwhile; wp_reset_postdata();
                        endif;
                        ?>


                        <!-- Pagination -->
                        <div class="row">
                            <div class="col-lg-12 pagi-area">
                                <?php
                                // Build pagination based on the custom query
                                $big = 999999999; // need an unlikely integer
                                $pagination_links = paginate_links( array(
                                    'base'      => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
                                    'format'    => '?paged=%#%',
                                    'current'   => max( 1, $paged ),
                                    'total'     => (int) $post->max_num_pages,
                                    'prev_text' => 'Previous',
                                    'next_text' => 'Next',
                                    'type'      => 'array',
                                ) );

                                if ( ! empty( $pagination_links ) ) : ?>
                                    <nav aria-label="navigation">
                                        <ul class="pagination">
                                            <?php foreach ( $pagination_links as $link ) :
                                                // Detect current page item and map classes
                                                $is_current = strpos( $link, 'class="page-numbers current"' ) !== false;
                                                // Strip default list wrappers if any and keep anchor/span HTML
                                                // Output with theme-friendly classes
                                                ?>
                                                <li<?php echo $is_current ? ' class="active"' : ''; ?>><?php echo $link; ?></li>
                                            <?php endforeach; ?>
                                        </ul>
                                    </nav>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <!-- Start Sidebar -->
                    <div class="sidebar col-lg-4">
                        <aside>

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item category">
                                <div class="title">
                                    <h4>Category</h4>
                                </div>
                                <div class="sidebar-info">
                                    <?php
                                    $categories = get_categories( array(
                                        'orderby' => 'name',
                                        'order'   => 'ASC'
                                    ) );

                                    if($categories):
                                        ?>
                                        <ul>
                                            <?php
                                            foreach( $categories as $category ):
                                                ?>
                                                <li>
                                                    <a href="<?php echo esc_url( get_category_link( $category->term_id ) ); ?>">
                                                        <?php echo $category->name; ?> <span><?php echo sizeof($categories); ?></span>
                                                    </a>
                                                </li>
                                            <?php endforeach; ?>
                                        </ul>
                                    <?php else: ?>
                                        <strong>No Categories Found</strong>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item recent-post">
                                <div class="title">
                                    <h4>Recent Posts</h4>
                                </div>
                                <?php
                                $notPaged = get_query_var( 'paged' ) >1 ? get_query_var( 'paged' )-1 : 2 ;
                                $args = array('post_type' => 'post', 'posts_per_page' => 4, 'paged' => $notPaged);
                                $featured = new WP_Query($args);
                                if ( $featured->have_posts() ) :

                                    while ( $featured->have_posts() ) : $featured->the_post();
                                        ?>
                                        <div class="item">
                                            <div class="content">
                                                <div class="thumb">
                                                    <a href="<?php echo get_permalink($featured->ID); ?>"
                                                    >
                                                        <img src="<?php echo get_the_post_thumbnail_url($featured->ID); ?>" alt="Thumb"
                                                        /></a>
                                                </div>
                                                <div class="info">
                                                    <h4>
                                                        <a href="<?php echo get_permalink($featured->ID); ?>"
                                                        ><?php echo get_the_title(); ?></a>
                                                    </h4>
                                                    <div class="meta">
                                                        <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    <?php
                                    endwhile; wp_reset_postdata();

                                else:
                                    ?>
                                    <strong>No Recent Posts Found</strong>
                                <?php
                                endif;
                                ?>
                            </div>
                            <!-- End Sidebar Item -->



                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item archives">
                                <div class="title">
                                    <h4>Archives</h4>
                                </div>
                                <div class="sidebar-info">
                                    <?php
                                    $args = array(
                                        'type'            => 'monthly',
                                        'limit'           => '',
                                        'format'          => 'html',
                                        'before'          => '',
                                        'after'           => '',
                                        'show_post_count' => false,
                                        'echo'            => 1,
                                        'order'           => 'DESC'
                                    );
                                    wp_get_archives( $args );
                                    ?>

                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item gallery">
                                <div class="title">
                                    <h4>Gallery</h4>
                                </div>
                                <div class="sidebar-info">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_theme_file_uri('assets/img/about.webp'); ?>" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_theme_file_uri('assets/img/about2.webp'); ?>" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_theme_file_uri('assets/img/banner/movers2.webp'); ?>" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" alt="thumb" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                        </aside>
                    </div>
                    <!-- End Start Sidebar -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Blog -->

<?php

get_footer();