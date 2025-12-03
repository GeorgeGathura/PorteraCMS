<?php

get_header();
global $post;
$homepageId = $post->ID;
?>

    <!-- Start Banner
        ============================================= -->
    <div
        class="banner-area banner-style-one content-top-heading less-paragraph text-normal"
    >
        <div
            id="bootcarousel"
            class="carousel slide animate_text carousel-fade"
            data-ride="carousel"
            data-interval="3000"
            data-pause="false"
        >
            <!-- Wrapper for slides -->
            <div class="carousel-inner text-light carousel-zoom">
              
                <?php
                // Check rows exists.
                if( have_rows('carousel') ):
                    $i=0;
                    // Loop through rows.
                    while( have_rows('carousel') ) : the_row();

                        // Load sub field value.
                        $topTitle = get_sub_field('top_title');
                        $title = get_sub_field('title');
                        $learnMore = get_sub_field('learn_more');
                        $carouselLink = get_sub_field('carousel_link');

                        // Do something, but make sure you escape the value if outputting directly...
                ?>
                        <div class="carousel-item <?php echo esc_attr( $i==0 ? 'active' : '' ); ?>">
                            <div
                                    class="slider-thumb bg-fixed"
                                    style="background-image: url(<?php echo esc_url( get_sub_field('carousel_item') ); ?>)"
                            ></div>
                            <div class="box-table shadow dark">
                                <div class="box-cell">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-7">
                                                <div class="content">
                                                    <h3 data-animation="animated slideInLeft">
                                                        <?php echo esc_html( $topTitle ); ?>
                                                    </h3>
                                                    <h1 data-animation="animated slideInUp">
                                                       <?php echo esc_html( $title ); ?> 
                                                    </h1>
                                              
                                                    <?php
                                                    if( $learnMore ):
                                                        $link_url = $learnMore['url'];
                                                        $link_title = $learnMore['title'];
                                                        $link_target = $learnMore['target'] ? $learnMore['target'] : '_self';
                                                        ?>
                                                        <a  data-animation="animated slideInUp"
                                                            class="btn btn-light border btn-md"
                                                                href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>"><?php echo esc_html( $link_title ); ?></a>
                                                    <?php 
                                                     endif; 
                                                 
                                                    if( $carouselLink ):
                                                        $link_url = $carouselLink['url'];
                                                        $link_title = $carouselLink['title'];
                                                        $link_target = $carouselLink['target'] ? $carouselLink['target'] : '_self';
                                                        ?>
                                                        <a   data-animation="animated slideInUp"
                                                             class="btn btn-dark effect btn-md" href="<?php echo esc_url( $link_url ); ?>" target="<?php echo esc_attr( $link_target ); ?>"><?php echo esc_html( $link_title ); ?></a>
                                                    <?php
                                                    endif;
                                                    ?>



                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>    
                <?php
                    $i+=1;
                        // End loop.
                    endwhile;

                endif;
                ?>
             
            </div>
            <!-- End Wrapper for slides -->

            <a
                class="carousel-control-prev"
                href="#bootcarousel"
                role="button"
                data-slide="prev"
            >
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a
                class="carousel-control-next"
                href="#bootcarousel"
                role="button"
                data-slide="next"
            >
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <!-- End Banner -->

    <!-- Start About 
         ============================================= -->

    <div
        id="about"
        class="our-featues-area inc-trending-courses about-area default-padding"
    >
        <div class="container">
            <div class="row">
                <div class="col-lg-8 our-feature-items">
                    <div class="less-bar info">
                      <?php the_content(); ?>
                        <a href="<?php echo get_permalink(36); ?>" class="btn btn-dark border btn-md"
                        >Read More</a
                        >
                    </div>

                    <div class="our-features">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <div class="item mariner">
                                    <div class="icon">
                                        <i
                                            class="fas fa-hammer"
                                            style="color: var(--color-primary)"
                                        ></i>
                                    </div>
                                    <div class="info">
                                        <h4>Practical workshops and real-job simulations</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="item java">
                                    <div class="icon">
                                        <i
                                            class="fas fa-digging"
                                            style="color: var(--color-primary)"
                                        ></i>
                                    </div>
                                    <div class="info">
                                        <h4>On-the-job mentorship from experienced supervisors</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="item malachite">
                                    <div class="icon">
                                        <i
                                            class="fas fa-badge-check"
                                            style="color: var(--color-primary)"
                                        ></i>
                                    </div>
                                    <div class="info">
                                        <h4>
                                            Regular practical assessments With clear pass criteria
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Our Features -->

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
            </div>
        </div>
    </div>

    <!-- End About -->

    <!-- Start Featured Courses 
        ============================================= -->
    <div
        id="featured-courses"
        class="featured-courses-area left-details dcwefault-padding"
    >
        <div class="container">
            <div class="row">
                <div class="featured-courses-carousel owl-carousel owl-theme">
                    <!-- Start Single Item -->
                    <div class="item">
                        <div class="row align-items-center">
                            <?php
                            
                            $args = array('page_id' => 65, 'posts_per_page' => 1);
                            $featured = new WP_Query($args);
                            if ( $featured->have_posts() ) :
                            
                                while ( $featured->have_posts() ) : $featured->the_post();
                                    $featuredImage = get_the_post_thumbnail_url(get_the_ID(), 'medium');
                            ?>
                            <div class="col-lg-5">
                                <div class="thumb">
                                    <img src="<?php echo $featuredImage; ?>" alt="Thumb" />

                                </div>
                            </div>
                            <div class="col-lg-7 info">
                                <h2>
                                    <a href="<?php echo get_permalink($post->ID); ?>"> Movers Course</a>
                                </h2>
                                <h4>Core curriculum</h4>
                                <p>
                                    Our Graduates will be able to perform the full scope of an
                                    entry-level mover’s role and take on supervisory
                                    responsibilities over time. Core modules include:
                                </p>
                                <ul>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span>Industry foundations and job roles</span>
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span>Packing systems and load optimisation</span>
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span
                                        >Safe lifting, rigging and vehicle loading practices</span
                                        >
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span
                                        >Equipment handling and basic maintenance (trolleys, straps,
                    protective materials)</span
                                        >
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span
                                        >Client communication, job briefings and professional
                    presentation</span
                                        >
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span
                                        >Housekeeping, site clean-up and client handover
                    procedures</span
                                        >
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span
                                        >Documentation, inventories and basic compliance
                    processes</span
                                        >
                                    </li>
                                    <li>
                                        <i class="fas fa-check-double"></i>
                                        <span>Emergency response and incident reporting</span>
                                    </li>
                                </ul>

                                <p>
                                    We also include short modules on basic digital tools used in
                                    logistics (inventory apps, job scheduling) and an introduction
                                    to entrepreneurship for trainees who want to run small teams or
                                    businesses.
                                </p>

                                <a
                                    href="<?php echo get_permalink($post->ID); ?>"
                                    class="btn btn-dark effect btn-sm"
                                    data-animation="animated slideInUp"
                                >Read More</a
                                >
                                <div class="bottom-info align-left">
                                    <div class="item">
                                        <h4>Institute</h4>
                                        <a href="#">
                                            <span>PMTI</span>
                                        </a>
                                    </div>
                                    <div class="item">
                                        <h4>Available Students Slot</h4>
                                        <span>50</span>
                                    </div>
                                    <div class="item">
                                        <h4>Duration</h4>
                                        <span>5<sup>th</sup> JANUARY - 30 <sup>th</sup>MARCH</span>
                                    </div>
                                </div>
                            </div>
    
                            <?php
                                endwhile;
                            endif;
                            ?>
                        </div>
                    </div>
                    <!-- End Single Item -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Featured Courses -->

    <!-- Start Join Us 
        ============================================= -->

    <div
        class="subscribe-area text-center text-light default-padding bg-fixed shadow dark-hard"
        style="background-image: url(<?php echo get_theme_file_uri('assets/img/welcome.webp' ); ?>)"
    >
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="content">
                        <h2>Next Intake begins on 5th January 2026</h2>
                        <p>
                            Start Your Journey With Portera! Join Africa’s first Movers Training
                            Academy and gain the skills, confidence, and professional edge
                            needed to succeed in the mobility industry. Whether you’re just
                            starting out or looking to advance your career, Portera provides the
                            hands-on training and real-world experience you need to stand out.
                        </p>
                        <p>
                            Spaces are limited for this session, so early registration is
                            encouraged. Enroll today to secure your place in our upcoming cohort
                            and take the first step toward becoming a certified professional
                            mover.
                        </p>
                    </div>
                    <div class="form">
                        <form action="#">
                            <a href="#" class="btn btn-light border btn-md">Join Us</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- End Join Us -->


    <!-- Start Advisor Area
        ============================================= -->
    <section
        id="advisor"
        class="advisor-area bg-gray carousel-shadow default-padding bottom-less"
    >
        <div class="container">
            <div class="row">
                <div class="site-heading text-center">
                    <div class="col-lg-8 offset-lg-2">
                        <h2>Our Instructors</h2>
                        <p>
                            Our instructors are professional movers, fleet managers, and
                            logistics specialists from Nellions with years of on-the-ground
                            experience. They’ll mentor you to build both skill and confidence in
                            the moving trade.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div
                        class="advisor-items advisor-carousel-solid owl-carousel owl-theme text-center text-light"
                    >
                        <?php
                        
                        $args = array('post_type' => 'trainers', 'posts_per_page' => 4);
                        $featured = new WP_Query($args);
                        if ( $featured->have_posts() ) :
                        
                            while ( $featured->have_posts() ) : $featured->the_post();
                                $featuredImage = get_the_post_thumbnail_url(get_the_ID(), 'full');
                                ?>
                        <!-- Single Item -->
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
    
                        <?php
                            endwhile; wp_reset_postdata();
                        endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Advisor Area -->

    <!-- Start Fun Factor 
        ============================================= -->
<?php
    $statisticsHeading = get_field('statistics_heading',$homepageId);
    $statistics1Label = get_field('statistics_1_label',$homepageId);
    $statistics2Label = get_field('statistics_2_label',$homepageId);
    $statistics3Label = get_field('statistics_3_label',$homepageId);
    $statistics4Label = get_field('statistics_4_label',$homepageId);
    
    $statisticsCounter1 = get_field('statistics_1_counter',$homepageId);
    $statisticsCounter2 = get_field('statistics_2_counter',$homepageId);
    $statisticsCounter3 = get_field('statistics_3_counter',$homepageId);
    $statisticsCounter4 = get_field('statistics_4_counter',$homepageId);
?>
    <div
        class="fun-factor-area default-padding bottom-less text-center bg-fixed shadow dark-hard"
        style="background-image: url(assets/img/about/partnerships.webp)"
    >
        <div class="container">
            <div class="row">
                <h3 class="text-white"><?php echo $statisticsHeading; ?></h3>
                <div class="col-lg-3 col-md-6 item">
                    <div class="fun-fact">
                        <div class="icon">
                            <i class="flaticon-contract"></i>
                        </div>
                        <div class="info">
                            <span class="timer" data-to="<?php echo $statisticsCounter1; ?>" data-speed="5000"></span>
                            <span class="medium"><?php echo $statistics1Label; ?></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 item">
                    <div class="fun-fact">
                        <div class="icon">
                            <i class="flaticon-professor"></i>
                        </div>
                        <div class="info">
                            <span class="timer" data-to="<?php echo $statisticsCounter2; ?>" data-speed="5000"></span>
                            <span class="medium"><?php echo $statistics2Label; ?></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 item">
                    <div class="fun-fact">
                        <div class="icon">
                            <i class="flaticon-online"></i>
                        </div>
                        <div class="info">
                            <span class="timer" data-to="<?php echo $statisticsCounter3; ?>" data-speed="5000"></span>
                            <span class="medium"><?php echo $statistics3Label; ?></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 item">
                    <div class="fun-fact">
                        <div class="icon">
                            <i class="flaticon-reading"></i>
                        </div>
                        <div class="info">
                            <span class="timer" data-to="<?php echo $statisticsCounter4; ?>" data-speed="5000"></span>
                            <span class="medium"><?php echo $statistics4Label; ?></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Fun Factor -->

    <!-- Start Contact & Faq 
        ============================================= -->
    <div class="reg-area inc-faq default-padding">
        <div class="container">
            <div class="reg-items">
                <div class="row">
                    <div class="col-lg-6 reg-form">
                        <!-- Start Contact Info -->
                        <div id="contact" class="contact-info-area bg-gray default-padding">
                            <div class="heading">
                                <h3>Contact Us</h3>
                                <p>
                                    Are you interested in a course? Please fill out the form below, and we will get back to you as soon as possible.
                                </p>
                            </div>
                            <?php echo do_shortcode('[contact-form-7 id="6d9a055" title="Course Form"]'); ?>
                        </div>
                        <!-- End Contact Info -->
                    </div>
                    <div class="col-lg-6 faq-items">
                        <div class="site-heading text-left">
                            <h2>Frequently Asked Question</h2>
                        </div>
                        <!-- Start Accordion -->
                        <div class="accordion" id="faqAccordion2">
                            <!-- Accordion Item 1 -->
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">
                                    <button
                                        class="accordion-button"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne"
                                        aria-expanded="true"
                                        aria-controls="collapseOne"
                                    >
                                        What is Portera Mobility Training Institute (PMTI)?
                                    </button>
                                </h2>
                                <div
                                    id="collapseOne"
                                    class="accordion-collapse collapse show"
                                    aria-labelledby="headingOne"
                                    data-bs-parent="#faqAccordion2"
                                >
                                    <div class="accordion-body">
                                        <p>
                                            PMTI is Kenya's first dedicated training and certification
                                            institute for professional movers. We equip trainees with
                                            the technical skills, safety knowledge, and professional
                                            conduct needed to excel in the moving and logistics
                                            industry.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordion Item -->

                            <!-- Accordion Item 2 -->
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseTwo"
                                        aria-expanded="false"
                                        aria-controls="collapseTwo"
                                    >
                                        Who can join PMTI?
                                    </button>
                                </h2>
                                <div
                                    id="collapseTwo"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingTwo"
                                    data-bs-parent="#faqAccordion2"
                                >
                                    <div class="accordion-body">
                                        <p>
                                            Our programs are open to high school and college leavers,
                                            as well as individuals already working in the moving or
                                            logistics field who want to formalize and advance their
                                            skills.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordion Item -->

                            <!-- Accordion Item 3 -->
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingThree">
                                    <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree"
                                        aria-expanded="false"
                                        aria-controls="collapseThree"
                                    >
                                        What courses does PMTI offer?
                                    </button>
                                </h2>
                                <div
                                    id="collapseThree"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingThree"
                                    data-bs-parent="#faqAccordion2"
                                >
                                    <div class="accordion-body">
                                        <p>
                                            We offer structured programs in professional moving,
                                            packing and handling, customer service, workplace safety,
                                            and leadership in mobility operations. Each course
                                            combines theory with hands-on training.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordion Item -->
                            <!-- Accordion Item 4 -->
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingFour">
                                    <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseFour"
                                        aria-expanded="false"
                                        aria-controls="collapseFour"
                                    >
                                        How long does the training take?
                                    </button>
                                </h2>
                                <div
                                    id="collapseFour"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingFour"
                                    data-bs-parent="#faqAccordion2"
                                >
                                    <div class="accordion-body">
                                        <p>
                                            Course durations vary depending on the program — from short
                                            certification courses lasting a few weeks to comprehensive
                                            professional programs designed for full qualification.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- End Accordion Item -->
                        </div>
                        <!-- End Accordion -->
                        <a
                            href="course-details.php"
                            class="btn btn-dark effect btn-sm"
                            data-animation="animated slideInUp"
                        > More FAQ</a
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- End Registration & Faq  -->

    <!-- Start Blog 
        ============================================= -->
    <div id="blog" class="blog-area default-padding bottom-less">
        <div class="container">
            <div class="row">
                <div class="site-heading text-center">
                    <div class="col-lg-8 offset-lg-2">
                        <h2>Latest News</h2>
                        <p>
                         <?php  echo get_the_excerpt(32); ?>
                        </p>
                    </div>
                </div>
            </div>
            <div class="blog-items">
                <div class="row">
                    <?php
                    
                    $args = array('post_type' => 'post', 'posts_per_page' => 4);
                    $featured = new WP_Query($args);
                    if ( $featured->have_posts() ) :
                    
                        while ( $featured->have_posts() ) : $featured->the_post();
                    ?>
                            <!-- Single Item -->
                             <div class="col-lg-4 single-item">
                        <div class="item">
                            <div class="thumb">
                                <a href="<?php echo get_permalink($featured->ID); ?>"
                                ><img src="<?php echo get_the_post_thumbnail_url($featured->ID); ?>" alt="Thumb"
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
                </div>
            </div>
        </div>
    </div>
    <!-- End Blog -->

    <!-- Start Clients Area 
    ============================================= -->
    <div class="clients-area default-padding bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 info">
                    <h4><?php echo get_field('section_title'); ?></h4>
                    <p>
                        <?php echo get_field('section_description'); ?>
                       </p>
                </div>
                <div class="col-lg-8 clients">
                    <div class="clients-items owl-carousel owl-theme text-center">

                        <?php
                        $images = get_field('partnerlogos');
                        $size = 'full'; // (thumbnail, medium, large, full or custom size)
                        if( $images ): ?>
                        
                                <?php foreach( $images as $image ): ?>
                                  
                                    <div class="single-item">
                                        <a href="#">
                                           
                                            <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
                                        </a>
                                    </div>
                                <?php endforeach; ?>
                        
                        <?php endif; ?>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Clients Area -->

<?php
get_footer();