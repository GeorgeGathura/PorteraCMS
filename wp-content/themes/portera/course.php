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
 *  Template Name: Course Details
 * @package portera
 */

get_header();
$featuredImage = get_the_post_thumbnail_url();
$title = get_the_title();
?>
<!-- Start Breadcrumb
============================================= -->
<div class="breadcrumb-area shadow dark text-center bg-fixed text-light" style="background-image: url(<?php echo esc_url($featuredImage); ?>);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1><?php echo $title; ?></h1>
                <ul class="breadcrumb">
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li class="active"><?php echo $title; ?></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumb -->


<!-- Start Course Details 
============================================= -->
<div class="course-details-area default-padding">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div class="course-details-info">
                    <!-- Star Top Info -->
                    <div class="top-info">
               
                        <!-- Course Meta -->
                        <div class="course-meta">
                            <div class="item author">
                                <div class="thumb">
                                    <a href="#"
                                    ><img alt="Thumb" 
                                          src="<?php echo get_theme_file_uri('assets/img/logo-profile.webp'); ?>"
                                        /></a>
                                </div>
                                <div class="desc">
                                    <h4>Insitute</h4>
                                    <a href="#">PMTI</a>
                                </div>
                            </div>
                            <div class="item category">
                                <h4>Students enrolled</h4>
                                <span>100+</span>
                            </div>
                            <div class="item rating">
                                <h4>Duration</h4>
                                <span>5<sup>th</sup> JANUARY - 30 <sup>th</sup>MARCH</span>
                            </div>
                            <div class="item price">
                                <h4>Price</h4>
                                <span>KES 50,000.00</span>
                            </div>
                            <div class="align-right">
                                <a class="btn btn-dark effect btn-sm" href="#">
                                    <i class="fas fa-chart-bar"></i> Enroll
                                </a>
                            </div>
                        </div>
                        <!-- End Course Meta -->
                    </div>
                    <!-- End Top Info -->

                    <!-- Star Tab Info -->
                    <div class="tab-info">
                        <!-- Tab Nav -->
                        <ul class="nav nav-tabs nav-pills" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link active"
                                    id="tab_1"
                                    data-bs-toggle="tab"
                                    data-bs-target="#tabs_1"
                                    type="button"
                                    role="tab"
                                    aria-controls="tabs_1"
                                    aria-selected="true"
                                >
                                    Overview
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="tab_2"
                                    data-bs-toggle="tab"
                                    data-bs-target="#tabs_2"
                                    type="button"
                                    role="tab"
                                    aria-controls="tabs_2"
                                    aria-selected="false"
                                >
                                    Curriculum
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button
                                    class="nav-link"
                                    id="tab_3"
                                    data-bs-toggle="tab"
                                    data-bs-target="#tabs_3"
                                    type="button"
                                    role="tab"
                                    aria-controls="tabs_3"
                                    aria-selected="false"
                                >
                                    Trainers
                                </button>
                            </li>

                        </ul>
                        <!-- End Tab Nav -->

                        <!-- Start Tab Content -->
                        <div class="tab-content tab-content-info" id="myTabContent">
                            <!-- Single Tab -->
                            <div
                                class="tab-pane fade show active"
                                id="tabs_1"
                                role="tabpanel"
                                aria-labelledby="tab_1"
                            >
                                <div class="info title">
                                    <h4>Course Description</h4>
                                    <p>
                                        Graduates leave able to perform the full scope of an entry-level mover’s role and take on supervisory responsibilities over time. Core modules include:
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
                                            <span>Safe lifting, rigging and vehicle loading practices</span>
                                        </li>
                                        <li>
                                            <i class="fas fa-check-double"></i>
                                            <span>Equipment handling and basic maintenance (trolleys, straps, protective materials)</span>
                                        </li>
                                        <li>
                                            <i class="fas fa-check-double"></i>
                                            <span>Client communication, job briefings and professional presentation</span>
                                        </li>
                                        <li>
                                            <i class="fas fa-check-double"></i>
                                            <span>Housekeeping, site clean-up and client handover procedures</span>
                                        </li>
                                        <li>
                                            <i class="fas fa-check-double"></i>
                                            <span>Documentation, inventories and basic compliance processes</span>
                                        </li>
                                        <li>
                                            <i class="fas fa-check-double"></i>
                                            <span>Emergency response and incident reporting</span>
                                        </li>

                                    </ul>

                                    <h4 class="mt-2">Career pathways & outcomes</h4>
                                    <p>PMTI trains for clear progression:
                                        entry mover → crew member → team lead → move supervisor → operations or business owner.
                                        Employers receive trainees who understand procedures, reduce damage risk, and represent their brand professionally.</p>
                                    <p>For graduates, that translates to higher employability, faster promotion potential, and clearer options to start independent ventures.</p>
                                    <p>Other than moving  industry, PMTI graduates can suitably fit into other sectors like general logistics,  cargo handling  (like in the entry ports),  supermarkets, hotels, cleaning industry and many  more</p>
                                </div>
                            </div>
                            <!-- End Single Tab -->

                            <!-- Single Tab -->
                            <div
                                class="tab-pane fade"
                                id="tabs_2"
                                role="tabpanel"
                                aria-labelledby="tab_2"
                            >
                                <div class="info title">
                                    <p>
                                        Placing assured be if removed it besides on. Far shed
                                        each high read are men over day. Afraid we praise lively
                                        he suffer family estate is. Ample order up in of in
                                        ready. Timed blind had now those ought set often which.
                                        Or snug dull he show more true wish. No at many deny
                                        away miss evil. On in so indeed spirit an mother.
                                        Amounted old strictly but marianne admitted. People
                                        former is remove remain as.
                                    </p>
                                    <h4>List Of Modules</h4>
                                    <div class="accordion" id="faqAccordion">
                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingOne"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseOne"
                                                                aria-expanded="true"
                                                                aria-controls="collapseOne"
                                                            >
                                                                Industry foundations and job roles
                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseOne"
                                                        class="accordion-collapse collapse show"
                                                        aria-labelledby="headingOne"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction of movers</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Scoping work</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 3 hours 15 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->
                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingTwo"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseTen"
                                                                aria-expanded="true"
                                                                aria-controls="collapseTen"
                                                            >
                                                                Safe lifting, rigging and vehicle loading practices
                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseTen"
                                                        class="accordion-collapse collapse"
                                                        aria-labelledby="headingTwo"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Division of function</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 2 hours 12 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->


                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingTwo"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseNine"
                                                                aria-expanded="true"
                                                                aria-controls="collapseNine"
                                                            >
                                                                Equipment handling and basic maintenance (trolleys, straps, protective materials)

                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseNine"
                                                        class="accordion-collapse collapse"
                                                        aria-labelledby="headingTwo"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Division of function</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 2 hours 12 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->

                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingTwo"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseFour"
                                                                aria-expanded="true"
                                                                aria-controls="collapseFour"
                                                            >
                                                                Client communication, job briefings and professional presentation
                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseFour"
                                                        class="accordion-collapse collapse"
                                                        aria-labelledby="headingTwo"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Division of function</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 2 hours 12 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->

                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingTwo"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseFive"
                                                                aria-expanded="true"
                                                                aria-controls="collapseFive"
                                                            >
                                                                Housekeeping, site clean-up and client handover procedures
                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseFive"
                                                        class="accordion-collapse collapse"
                                                        aria-labelledby="headingTwo"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Division of function</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 2 hours 12 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->

                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingTwo"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseSix"
                                                                aria-expanded="true"
                                                                aria-controls="collapseSix"
                                                            >
                                                                Documentation, inventories and basic compliance processes
                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseSix"
                                                        class="accordion-collapse collapse"
                                                        aria-labelledby="headingTwo"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Division of function</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 2 hours 12 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->

                                        <!-- Start Course List -->
                                        <div class="course-list-items acd-items acd-arrow">
                                            <div class="panel-group symb" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4
                                                            class="panel-title accordion-header"
                                                            id="headingTwo"
                                                        >
                                                            <button
                                                                type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseSeven"
                                                                aria-expanded="true"
                                                                aria-controls="collapseSeven"
                                                            >
                                                                Emergency response and incident reporting

                                                            </button>
                                                        </h4>
                                                    </div>
                                                    <div
                                                        id="collapseSeven"
                                                        class="accordion-collapse collapse"
                                                        aria-labelledby="headingTwo"
                                                        data-bs-parent="#faqAccordion"
                                                    >
                                                        <div class="panel-body">
                                                            <ul>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-play"></i>
                                                                        <span>Lecture 1.1</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Introduction</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 1 hours 30 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="item name">
                                                                        <i class="fas fa-file"></i>
                                                                        <span>Lecture 1.2</span>
                                                                    </div>
                                                                    <div class="item title">
                                                                        <h5>Division of function</h5>
                                                                    </div>
                                                                    <div class="item info">
                                                                        <span>Duration: 2 hours 12 min</span>
                                                                        <a href="#">Preview</a>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Course List -->
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Tab -->

                            <!-- Single Tab -->
                            <div
                                class="tab-pane fade"
                                id="tabs_3"
                                role="tabpanel"
                                aria-labelledby="tab_3"
                            >
                                <div class="info title">
                                    <div class="advisor-list-items">
                                        <?php
                                        
                                        $args = array('post_type' => 'trainers', 'posts_per_page' => 4);
                                        $featured = new WP_Query($args);
                                        if ( $featured->have_posts() ) :
                                        
                                            while ( $featured->have_posts() ) : $featured->the_post();
                                                $featuredImage = get_the_post_thumbnail_url(get_the_ID(), 'thumbnail');
                                        ?>
                                                <!-- Advisor Item -->
                                                <div class="item">
                                                    <div class="thumb">
                                                        <img src="<?php echo $featuredImage; ?>" alt="Thumb" />
                                                    </div>
                                                    <div class="info">
                                                        <?php the_title('<h4>','</h4>'); ?>
                                                        <span><?php echo get_field('role'); ?></span>
                                                        <div class="social">

                                                            <?php the_content(); ?>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End Advisor Item -->
                                        <?php
                                            endwhile;
                                        endif;
                                        ?>
                                   
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Tab -->

                            <!-- Single Tab -->
                            <div
                                class="tab-pane fade"
                                id="tabs_4"
                                role="tabpanel"
                                aria-labelledby="tab_4"
                            >
                                <div class="info title">
                                    <div class="course-rating-list">
                                        <h4>Average Rating</h4>
                                        <div class="item rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                            <span>4.5 (16)</span>
                                        </div>
                                        <ul>
                                            <li>
                                                <span>5 Star</span>
                                                <div class="rating-bar"></div>
                                                <span>13</span>
                                            </li>
                                            <li>
                                                <span>4 Star</span>
                                                <div class="rating-bar"></div>
                                                <span>1</span>
                                            </li>
                                            <li>
                                                <span>3 Star</span>
                                                <div class="rating-bar"></div>
                                                <span>0</span>
                                            </li>
                                            <li>
                                                <span>2 Star</span>
                                                <div class="rating-bar"></div>
                                                <span>1</span>
                                            </li>
                                            <li>
                                                <span>1 Star</span>
                                                <div class="rating-bar"></div>
                                                <span>0</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Tab -->
                        </div>
                        <!-- End Tab Content -->
                    </div>
                    <!-- End Tab Info -->
                </div>
            </div>
            <!-- Start Sidebar -->

        </div>
    </div>
</div>
<!-- End Course Details -->

<?php
get_footer();