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
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        PMTI is Kenya's first dedicated training and certification
                                        institute for professional movers. We equip trainees with the
                                        technical skills, safety knowledge, and professional conduct
                                        needed to excel in the moving and logistics industry.
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
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        Our programs are open to high school and college leavers, as
                                        well as individuals already working in the moving or logistics
                                        field who want to formalize and advance their skills.
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
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        We offer structured programs in professional moving, packing
                                        and handling, customer service, workplace safety, and
                                        leadership in mobility operations. Each course combines theory
                                        with hands-on training.
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
                                    data-bs-parent="#faqAccordion"
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

                        <!-- Accordion Item 5 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFive">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseFive"
                                        aria-expanded="false"
                                        aria-controls="collapseFive"
                                >
                                    Will I receive a certificate after completing my training?
                                </button>
                            </h2>
                            <div
                                    id="collapseFive"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingFive"
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        Yes. Every graduate receives a PMTI Certificate, recognized by
                                        the moving industry and aligned with international standards
                                        of relocation and logistics practice.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Accordion Item -->

                        <!-- Accordion Item 6 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSix">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseSix"
                                        aria-expanded="false"
                                        aria-controls="collapseSix"
                                >
                                    What career opportunities are available after training?
                                </button>
                            </h2>
                            <div
                                    id="collapseSix"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingSix"
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        PMTI graduates are prepared for employment in local and
                                        international moving companies, logistics firms, warehousing,
                                        and facilities management. Many go on to become team leaders,
                                        supervisors, or even start their own moving businesses.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Accordion Item -->

                        <!-- Accordion Item 7 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSeven">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseSeven"
                                        aria-expanded="false"
                                        aria-controls="collapseSeven"
                                >
                                    Is the training practical or classroom-based?
                                </button>
                            </h2>
                            <div
                                    id="collapseSeven"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingSeven"
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        Training is highly practical. We combine classroom instruction
                                        with real moving simulations and supervised field practice to
                                        ensure every trainee gains hands-on experience.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Accordion Item -->

                        <!-- Accordion Item 8 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingEight">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseEight"
                                        aria-expanded="false"
                                        aria-controls="collapseEight"
                                >
                                    Where is PMTI located?
                                </button>
                            </h2>
                            <div
                                    id="collapseEight"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingEight"
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        Our training facility is based in Kiamumbi Campus, off Kamiti
                                        Road, near Kahawa West, Kiambu County.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Accordion Item -->

                        <!-- Accordion Item 9 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingNine">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseNine"
                                        aria-expanded="false"
                                        aria-controls="collapseNine"
                                >
                                    How can I apply for training?
                                </button>
                            </h2>
                            <div
                                    id="collapseNine"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingNine"
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        You can apply directly through our website or contact the PMTI
                                        Admissions Office for guidance on enrollment, upcoming
                                        intakes, and course requirements.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Accordion Item -->

                        <!-- Accordion Item 10 -->
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTen">
                                <button
                                        class="accordion-button collapsed"
                                        type="button"
                                        data-bs-toggle="collapse"
                                        data-bs-target="#collapseTen"
                                        aria-expanded="false"
                                        aria-controls="collapseTen"
                                >
                                    Why should I choose PMTI?
                                </button>
                            </h2>
                            <div
                                    id="collapseTen"
                                    class="accordion-collapse collapse"
                                    aria-labelledby="headingTen"
                                    data-bs-parent="#faqAccordion"
                            >
                                <div class="accordion-body">
                                    <p>
                                        Because PMTI is redefining what it means to be a mover. We
                                        believe in turning skill into a career, and work into a
                                        respected profession through excellence, discipline, and
                                        opportunity.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- End Accordion Item -->
                    </div>
                </div>
                <!-- Start Sidebar -->


                <!-- End Home Sidebar -->
                <div class="col-lg-4 home-sidebar">
                    <!-- Start Latest Post -->
                    <div class="sidebar-item latest-posts trending-courses-box">
                        <h4>Latest News</h4>
                        <div class="trending-courses-items">
                            <div class="item">
                                <h4>
                                    <a href="#">The Rise of Professional Movers in Kenya</a>
                                </h4>
                                <div class="meta">
                                    <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>

                                </div>
                            </div>
                            <div class="item">
                                <h4>
                                    <a href="#">Why Skills Training Matters: Building Dignity and
                                        Opportunity in Hands-On Careers</a>
                                </h4>
                                <div class="meta">
                                    <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>

                                </div>
                            </div>
                            <div class="item">
                                <h4>
                                    <a href="#">Inside the World of Moving: What It Takes to Be a
                                        Certified Professional Mover</a>
                                </h4>
                                <div class="meta">
                                    <i class="fas fa-user"></i> By <a href="#">Sam Mwaura</a>

                                </div>
                            </div>
                            <a href="#" class="more">Browse All News <i class="fas fa-angle-double-right"></i></a>
                        </div>
                    </div>
                    <!-- End Latest Posts -->

                    <!-- Start Online Registration -->
                    <div class="sidebar-item online-registration">
                        <h4>Online Registration</h4>
                        <div class="reg-form">
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Name*" type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Email*" type="email">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input class="form-control" placeholder="Phone" type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <button class="btn btn-dark effect btn-sm" type="submit">
                                            Register Now
                                        </button>
                                    </div>
                                </div>
                            </form>
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
