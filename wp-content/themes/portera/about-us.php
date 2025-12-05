<?php
/**
 * Template Name: About us
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
    <!-- Start About -->
    <div class="about-area default-padding-top">
        <div class="container">
            <div class="about-info">
                <div class="row">
                    <div class="col-lg-12 col-xxl-6 thumb d-none d-lg-block">
                       <img src="https://portera.ac.ke/wp-content/uploads/2025/12/movers.webp" alt="an employee in a warehouse placing a package in a designated area" />
                    </div>
                    <div class="col-lg-12 col-xxl-6 info">
                        <h2 class="text-dark">Building skilled movers. Raising the standard. Creating real careers.</h2>
                        <p>
                            Portera Mobility Training Institute (PMTI) is a practical training centre and certification pathway founded by
                            Nellions Moving &amp; Relocations. PMTI’s purpose is straightforward: prepare people for reliable, well-paid work
                            in the moving and relocations sector by teaching clear, measurable skills and professional practice.
                        </p>
                    </div>



                </div>


            </div>

        </div>
    </div>
    <!-- End About -->
    <!-- Start About -->
    <div class="about-area default-padding-bottom">
        <div class="container">
            <div class="about-info">
                <div class="row">

                    <div class="col-lg-6 info">
                        <h2 class="text-dark">Why PMTI exists</h2>
                        <p>
                            Kenya’s moving industry is expanding, yet training remains fragmented. That creates three problems we address directly:
                        </p>
                        <ul>
                            <li>
                                <i class="fas fa-check-double"></i>
                                <span>Unnecessary risk : poor handling and weak safety practice cause damage, injuries and high operational costs.</span>
                            </li>
                            <li>  <i class="fas fa-check-double"></i>
                                <span>Unstable livelihoods : many workers lack a clear path from day-work to stable employment or supervision.</span>
                            </li>
                            <li>  <i class="fas fa-check-double"></i>
                                <span>Variable service quality : companies and clients suffer where standards aren’t defined or enforced.</span>
                            </li>
                        </ul>
                        <div class="mt-5">
                            <p>
                                PMTI corrects these issues by delivering competency-based training, consistent assessment, and employer-facing certification so that employers can hire with confidence and trainees can build a career.
                            </p>
                        </div>

                    </div>
                    <div class="col-lg-6  thumb">
                        <img src="<?php echo get_theme_file_uri('assets/img/about2.webp'); ?>" alt="Thumb" />
                    </div>
                </div>


            </div>

        </div>
    </div>
    <!-- End About -->
    <!-- Start Training Philosophy
    ============================================= -->
    <div id="category" class="what-learn-area pb-5 ">
        <div class="container">
            <div class="content-box">
                <div class="row">

                    <div class="col-lg-5 info ">
                        <div class="">
                            <h2 class="text-dark">Training philosophy, skills first, work-ready always</h2>
                            <p>
                                Learning at PMTI is hands-on and outcome-driven. The curriculum is
                                modular and performance-based: every unit maps to a job task and a
                                measurable outcome. Teaching methods include:                        </p>
                        </div>
                    </div>

                    <div class="col-lg-7 categories order-lg-first">
                        <div class="row">
                            <!-- Single Item -->
                            <div class="col-lg-4 col-md-4 single-item ">
                                <div class="item ">
                                    <div class="bg-light">
                                        <i class="fas fa-hammer"></i>
                                        <div class="info ">
                                            <h4>Practical workshops
                                                and real-job simulations</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            <!-- Single Item -->
                            <div class="col-lg-4 col-md-4 single-item">
                                <div class="item">
                                    <div class="bg-light">
                                        <i class="fas fa-digging"></i>
                                        <div class="info">
                                            <h4>Supervised field attachments
                                                on live moves</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            <!-- Single Item -->
                            <div class="col-lg-4 col-md-4 single-item">
                                <div class="item">
                                    <div class="bg-light">
                                        <i class="fas fa-clipboard-list"></i>
                                        <div class="info">
                                            <h4>Short classroom sessions
                                                on procedural knowledge and documentation</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                            <!-- Single Item -->
                            <div class="col-lg-4 col-md-4 single-item">
                                <div class="item">
                                    <div class="bg-light">
                                        <i class="fas fa-user-tie"></i>
                                        <div class="info">
                                            <h4>On-the-job mentorship
                                                from experienced supervisors</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->

                            <!-- Single Item -->
                            <div class="col-lg-4 col-md-4 single-item">
                                <div class="item">
                                    <div class="bg-light">
                                        <i class="fas fa-badge-check"></i>
                                        <div class="info">
                                            <h4>Regular practical assessments
                                                With clear pass criteria</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Item -->
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- End Training Philosophy -->




    <!-- Partnerships Area
       ============================================= -->
    <div class="video-area padding-xl text-center bg-fixed text-light shadow dark-hard" style="background-image: url(<?php echo get_theme_file_uri('assets/img/welcome.webp'); ?>);">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="video-heading">
                        <h2>Partnerships, recognition and accountability</h2>
                        <p>
                            PMTI operates as an industry-facing training centre. Certification is issued by PMTI with backing from
                            Nellions and partner employers; we are building formal recognition pathways with sector bodies and external
                            certifiers. Employers are invited to participate in curriculum validation, field attachments, and graduate
                            recruitment — ensuring training stays relevant and accountable.
                        </p>

                        <h4>PMTI is an accredited center by the Institute of Commercial Management (ICM)</h4>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- End Partnership Area -->

    <!-- Start Values 
============================================= -->
    <div class="wcs-area default-padding bg-light content-default">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 thumb">
                    <img src="https://portera.ac.ke/wp-content/uploads/2025/12/about3.webp" alt="Thumb">
                </div>
                <div class="col-lg-6 content">
                    <div class="site-heading text-left">
                        <h2 class="text-dark">Values that shape our work</h2>
                        <p>
                        </p>
                    </div>

                    <!-- item -->
                    <div class="item">
                        <div class="icon">
                            <i class="fad fa-hard-hat"></i>                        </div>
                        <div class="info">
                            <h4>
                                <a href="#">Safety first</a>
                            </h4>
                            <p>
                                Every technique is taught with worker and client safety as the baseline.
                            </p>
                        </div>
                    </div>
                    <!-- item -->

                    <!-- item -->
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-certificate"></i>
                        </div>
                        <div class="info">
                            <h4>
                                <a href="#">Workmanship</a>
                            </h4>
                            <p>
                                Pride in doing a job well.
                            </p>
                        </div>
                    </div>
                    <!-- item -->

                    <!-- item -->
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="info">
                            <h4>
                                <a href="#">Reliability</a>
                            </h4>
                            <p>
                                Punctuality, discipline and professional conduct matter.
                            </p>
                        </div>
                    </div>
                    <!-- item -->
                    <!-- item -->
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-tools"></i>
                        </div>
                        <div class="info">
                            <h4>
                                <a href="#">Practicality</a>
                            </h4>
                            <p>
                                Training is useful from day one on the job.
                            </p>
                        </div>
                    </div>
                    <!-- item -->
                    <!-- item -->
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-handshake"></i>
                        </div>
                        <div class="info">
                            <h4>
                                <a href="#">Respect</a>
                            </h4>
                            <p>
                                For clients, colleagues and the tools of the trade.
                            </p>
                        </div>
                    </div>
                    <!-- item -->

                </div>
            </div>
        </div>
    </div>
    <!-- End Values -->


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

    <!-- Start Video Area
   ============================================= -->
    <div class="video-area padding-xl text-center bg-fixed text-light shadow dark-hard" style="background-image: url(https://portera.ac.ke/wp-content/uploads/2025/12/warehouse_worker.webp)">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="video-heading">
                        <h2>Take a short tour in our campus</h2>
                        <p>
                            Born from the vision and experience of Nellions Moving & Relocations, PMTI was founded to professionalize an industry that has long relied on untrained hands and untapped potential. Our mission is clear: to build skill, discipline, and pride in the art of moving; and to open real career paths for Kenya’s young workforce.
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="video-info">
                    <div class="overlay-video">
<!--                        <a class="popup-youtube video-play-button" href="https://www.youtube.com/watch?v=8GQTt50izkg">-->
<!--                            <i class="fa fa-play"></i>-->
<!--                        </a>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Video Area -->


    <!-- Start Portfolio -->
    <div id="portfolio" class="portfolio-area default-padding">
        <div class="container">
            <div class="row">
                <div class="site-heading text-center">
                    <div class="col-lg-8 offset-lg-2">
                        <h2 class="text-dark">Our Gallery</h2>
                        <p>
                            See our trainees in action, from classroom lessons to hands-on
                            packing and lifting drills. Every moment at Portera is a step toward
                            mastery in the moving and logistics industry.
                        </p>
                    </div>
                </div>
            </div>
            <div class="portfolio-items-area text-center">
                <div class="row">
                    <div class="col-lg-12 portfolio-content">
                        <div class="mix-item-menu active-theme">
                            <button class="active" data-filter="*">All</button>
                            <!-- <button data-filter=".campus">Campus</button> -->
                            <button data-filter=".teachers">Teachers</button>
                            <button data-filter=".education">Education</button>
                            <!-- <button data-filter=".ceremony">Ceremony</button> -->
                            <button data-filter=".students">Students</button>
                        </div>

                        <div class="magnific-mix-gallery masonary text-light">
                            <div id="portfolio-grid" class="portfolio-items colums-3">




                                <div class="pf-item  education teachers">
                                    <div class="item-effect">
                                        <img src="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" alt="thumb" />
                                        <div class="overlay">
                                            <a href="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" class="item popup-link"
                                            ><i class="fa fa-expand"></i
                                                ></a>
                                            <a href="#"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="pf-item education students teachers">
                                    <div class="item-effect">
                                        <img src="<?php echo get_theme_file_uri('assets/img/about.webp'); ?>" alt="thumb" />
                                        <div class="overlay">
                                            <a href="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" class="item popup-link"
                                            ><i class="fa fa-expand"></i
                                                ></a>
                                            <a href="#"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pf-item education students">
                                    <div class="item-effect">
                                        <img src="<?php echo get_theme_file_uri('assets/img/about2.webp'); ?>" alt="thumb" />
                                        <div class="overlay">
                                            <a href="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" class="item popup-link"
                                            ><i class="fa fa-expand"></i
                                                ></a>
                                            <a href="#"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pf-item students">
                                    <div class="item-effect">
                                        <img src="<?php echo get_theme_file_uri('assets/img/banner/movers2.webp'); ?>" alt="thumb" />
                                        <div class="overlay">
                                            <a href="<?php echo get_theme_file_uri('assets/img/advisor.webp'); ?>" class="item popup-link"
                                            ><i class="fa fa-expand"></i
                                                ></a>
                                            <a href="#"><i class="fas fa-link"></i></a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Portfolio -->
<?php
get_footer();


