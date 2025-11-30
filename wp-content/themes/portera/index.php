<?php
get_header();
global $post;
$featuredImage = get_the_post_thumbnail_url($post);
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
 
    <!-- End Breadcrumb -->

    <!-- Start Blog
        ============================================= -->
    <div class="blog-area full-blog right-sidebar full-blog default-padding">
        <div class="container">
            <div class="blog-items">
                <div class="row">
                    <div class="blog-content col-lg-8">
                        <?php

                        $args = array('post_type' => 'post', 'posts_per_page' => 4);
                        $featured = new WP_Query($args);
                        if ( $featured->have_posts() ) :

                            while ( $featured->have_posts() ) : $featured->the_post();
                        ?>
                                <!-- Single Item -->
                                <div class="single-item">
                                    <div class="item">
                                        <div class="thumb">
                                            <a href="<?php echo get_permalink($featured->ID); ?>"
                                            >
                                                <img src="<?php get_the_post_thumbnail_url($featured->ID); ?>" alt="Thumb"
                                                /></a>
                                            <div class="date">
                                                <h4><span>24</span> Nov, 2025</h4>
                                            </div>
                                        </div>
                                        <div class="info">
                                            <h3>
                                                <a href="<?php echo get_permalink($featured->ID); ?>"
                                                ><?php echo get_the_title(); ?></a>
                                            </h3>
                                            <p>
                                                <?php the_excerpt(); ?>
                                            </p>
                                            <a href="<?php echo get_permalink($featured->ID); ?>"
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
                                <nav aria-label="navigation">
                                    <ul class="pagination">
                                        <li><a href="#">Previous</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">Next</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- Start Sidebar -->
                    <div class="sidebar col-lg-4">
                        <aside>
                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item search">
                                <div class="title">
                                    <h4>Search</h4>
                                </div>
                                <div class="sidebar-info">
                                    <form>
                                        <input type="text" class="form-control" />
                                        <input type="submit" value="search" />
                                    </form>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item category">
                                <div class="title">
                                    <h4>Category</h4>
                                </div>
                                <div class="sidebar-info">
                                    <ul>
                                        <li>
                                            <a href="#">Business Management <span>12</span></a>
                                        </li>
                                        <li>
                                            <a href="#">Online Learning <span>17</span></a>
                                        </li>
                                        <li>
                                            <a href="#">Course Management <span>0</span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item recent-post">
                                <div class="title">
                                    <h4>Recent Posts</h4>
                                </div>

                                <div class="item">
                                    <div class="content">
                                        <div class="thumb">
                                            <a href="#">
                                                <img src="assets/img/blog/1.webp" alt="Thumb" />
                                            </a>
                                        </div>
                                        <div class="info">
                                            <h4>
                                                <a href="#">The Rise of Professional Movers in Kenya</a>
                                            </h4>
                                            <div class="meta">
                                                <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="content">
                                        <div class="thumb">
                                            <a href="#">
                                                <img src="assets/img/blog/2.webp" alt="Thumb" />
                                            </a>
                                        </div>
                                        <div class="info">
                                            <h4>
                                                <a href="#"
                                                >Why Skills Training Matters: Building Dignity and
                                                    Opportunity in Hands-On Careers</a
                                                >
                                            </h4>
                                            <div class="meta">
                                                <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="content">
                                        <div class="thumb">
                                            <a href="#">
                                                <img src="assets/img/blog/3.webp" alt="Thumb" />
                                            </a>
                                        </div>
                                        <div class="info">
                                            <h4>
                                                <a href="#"
                                                >Inside the World of Moving: What It Takes to Be a
                                                    Certified Professional Mover</a
                                                >
                                            </h4>
                                            <div class="meta">
                                                <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->



                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item archives">
                                <div class="title">
                                    <h4>Archives</h4>
                                </div>
                                <div class="sidebar-info">
                                    <ul>
                                        <li><a href="#">Aug 2025</a></li>
                                        <li><a href="#">Sept 2025</a></li>
                                        <li><a href="#">Nov 2025</a></li>
                                        <li><a href="#">Dec 2025</a></li>
                                    </ul>
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
                                                <img src="assets/img/advisor.webp" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="assets/img/about.webp" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="assets/img/about2.webp" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="assets/img/banner/movers2.webp" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="assets/img/advisor.webp" alt="thumb" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="assets/img/advisor.webp" alt="thumb" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item social-sidebar">
                                <div class="title">
                                    <h4>follow us</h4>
                                </div>
                                <div class="sidebar-info">
                                    <ul>
                                        <li class="facebook">
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li class="twitter">
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="pinterest">
                                            <a href="#">
                                                <i class="fab fa-pinterest"></i>
                                            </a>
                                        </li>
                                        <li class="g-plus">
                                            <a href="#">
                                                <i class="fab fa-google-plus-g"></i>
                                            </a>
                                        </li>
                                        <li class="linkedin">
                                            <a href="#">
                                                <i class="fab fa-linkedin-in"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Sidebar Item -->

                            <!-- Start Sidebar Item -->
                            <div class="sidebar-item tags">
                                <div class="title">
                                    <h4>tags</h4>
                                </div>
                                <div class="sidebar-info">
                                    <ul>
                                        <li><a href="#">Fashion</a></li>
                                        <li><a href="#">Education</a></li>
                                        <li><a href="#">nation</a></li>
                                        <li><a href="#">study</a></li>
                                        <li><a href="#">health</a></li>
                                        <li><a href="#">food</a></li>
                                        <li><a href="#">travel</a></li>
                                        <li><a href="#">science</a></li>
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