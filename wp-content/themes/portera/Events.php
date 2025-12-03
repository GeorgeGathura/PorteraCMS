<?php
/**
 * Template Name: Events
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
<!-- Start Event
    ============================================= -->
<section id="event" class="event-area default-padding">
    <div class="container">
        <div class="event-items">
<?php
$paged = get_query_var('paged') ? (int) get_query_var('paged') : ( get_query_var('page') ? (int) get_query_var('page') : 1 );
// Determine whether we're in "view all" mode: explicit query var or any paged view
$is_view_all = isset($_GET['view']) && 'all' === sanitize_text_field( wp_unslash( $_GET['view'] ) );
if ( $paged > 1 ) {
    $is_view_all = true;
}

$args = array(
    'post_type'      => 'events',
    'posts_per_page' => 8,
    'order'          => 'ASC',
    'paged'          => $paged,
);
$featured = new WP_Query($args);
if ( $featured->have_posts() ) :
    $i=0;
    while ( $featured->have_posts() ) : $featured->the_post();
        $featuredImage = get_the_post_thumbnail_url(get_the_ID(), 'full');
        $date_string = get_field( 'date' );
        $date = DateTime::createFromFormat( 'd/m/Y g:i a', $date_string );
      
        if (($i != 0 && $i % 3 == 0) || (7 == $i)) {
            echo ' </div>';
        }
        if ($i === 1 || $i % 3 == 1) {
            echo ' <div class="row">';
        }


        if($i ==0 || $i%3 ==0):
        ?>
           
     
            
            <div class="item horizontal">
                <div
                    class="col-lg-6 thumb bg-cover"
                    style="background-image: url(<?php echo $featuredImage; ?>)"
                >
                    <div class="date">
                        <h4> <span><?php echo $date ? $date->format('d') : $date_string; ?></span>
                            <?php echo $date ?  $date->format('M Y') : ""; ?></h4>
                    </div>
                </div>
                <div class="col-lg-6 info">
                    <h4>
                        <a href="#"><?php echo get_the_title(); ?></a>
                    </h4>
                    <div class="meta">
                        <ul>
                            <li><i class="fas fa-calendar-alt"></i><?php echo $date ? $date->format('dS M Y'): $date_string; ?></li>
                            <li><i class="fas fa-clock"></i> <?php echo get_field('start_time'); ?> - <?php echo get_field('end_time'); ?></li>
                            <li><i class="fas fa-map"></i><?php echo get_field('location'); ?></li>
                        </ul>
                    </div>
                   <?php the_content(); ?>


                </div>
            </div>
        <?php
        else:
        ?>
            <div class="col-lg-6">
                    <!-- Single Item -->
                    <div class="item vertical">
                        <div class="thumb">
                            <img src="<?php echo $featuredImage; ?>" alt="Thumb" />
                            <div class="date">
                                <h4> <span><?php echo $date ? $date->format('d') : 'TBD'; ?></span>
                                    <?php echo $date ? $date->format('M, Y') : ''; ?></h4>
                            </div>
                        </div>
                        <div class="info">
                            <h4>
                                <a href="#"><?php echo get_the_title(); ?></a>
                            </h4>
                            <div class="meta">
                                <ul>
                                    <li><i class="fas fa-calendar-alt"></i><?php echo $date ? $date->format('dS M Y'): 'TBD'; ?></li>
                                    <li><i class="fas fa-clock"></i> <?php echo get_field('start_time'); ?> - <?php echo get_field('end_time'); ?></li>
                                    <li><i class="fas fa-map"></i><?php echo get_field('location'); ?></li>
                                </ul>
                            </div>
                            <p>
                                <?php the_content(); ?>
                            </p>

                        </div>
                    </div>
                    <!-- Single Item -->
                </div>
     
    <?php
        endif;
        $i+=1;
    endwhile; wp_reset_postdata();
endif;
?>
            <?php
            // Show the "View All Events" button only when not in view-all mode
            if ( ! $is_view_all ) :
                $view_all_url = add_query_arg( array( 'view' => 'all' ), get_permalink() );
            ?>
                <div class="more-btn col-md-12 text-center">
                    <a href="<?php echo esc_url( $view_all_url ); ?>" class="btn btn-dark border btn-md">View All Events</a>
                </div>
            <?php endif; ?>

            <?php
            // Render pagination only in view-all mode and when there are multiple pages
            if ( $is_view_all && isset( $featured ) && $featured->max_num_pages > 1 ) :
                $big = 999999999; // need an unlikely integer
                // Ensure view=all persists across pagination links
                $base = str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) );
                // Append view=all to base if needed (for query-string mode)
                $base_with_view = add_query_arg( array( 'view' => 'all' ), $base );
                $format = ( strpos( $base_with_view, '?' ) !== false ) ? '&paged=%#%' : '?paged=%#%';
                $pagination_links = paginate_links( array(
                    'base'      => $base_with_view,
                    'format'    => $format,
                    'current'   => max( 1, $paged ),
                    'total'     => (int) $featured->max_num_pages,
                    'prev_text' => 'Previous',
                    'next_text' => 'Next',
                    'type'      => 'array',
                ) );

                if ( ! empty( $pagination_links ) ) : ?>
                    <div class="row">
                        <div class="col-lg-12 pagi-area">
                            <nav aria-label="navigation">
                                <ul class="pagination">
                                    <?php foreach ( $pagination_links as $link ) :
                                        $is_current = strpos( $link, 'class="page-numbers current"' ) !== false;
                                    ?>
                                        <li<?php echo $is_current ? ' class="active"' : ''; ?>><?php echo $link; ?></li>
                                    <?php endforeach; ?>
                                </ul>
                            </nav>
                        </div>
                    </div>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
</section>
<!-- End Event -->
<?php
get_footer();

