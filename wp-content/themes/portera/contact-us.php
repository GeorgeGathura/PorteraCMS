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
 *  Template Name: Contact Us
 * @package portera
 */

get_header();
$featuredImage = get_the_post_thumbnail_url();
?>
<!-- Start Breadcrumb
============================================= -->
<div class="breadcrumb-area shadow dark text-center bg-fixed text-light" style="background-image: url(<?php echo esc_url($featuredImage); ?>);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h1>Contact Us</h1>
                <ul class="breadcrumb">
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li class="active">Contact</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End Breadcrumb -->



<!-- Start Contact Info
============================================= -->
<div class="contact-info-area default-padding">
    <div class="container">
        <div class="contact-info">
            <!-- Start Contact Info -->
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-mobile-alt"></i>
                        </div>
                        <div class="info">
                            <h4>Call Us</h4>
                            <span>+254 116 850 136</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-map-marker-alt"></i>
                        </div>
                        <div class="info">
                            <h4>Address</h4>
                            <span>Maputo Street, off Kamiti Road</span>
                            <span>Kiamumbi, Kiambu</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="item">
                        <div class="icon">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="info">
                            <h4>Email Us</h4>
                            <span>info@portera.ac.ke</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Contact Info -->

            <div class="seperator col-lg-12">
                <span class="border"></span>
            </div>

            <!-- Start Maps & Contact Form -->
            <div class="maps-form">
                <div class="row">
                    <div class="col-lg-6 maps">
                        <h3 class="text-dark">Our Location</h3>
                        <div class="google-maps">
                            <iframe
                                width="600"
                                height="450"
                                style="border:0;"
                                allowfullscreen=""
                                loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.876825522172!2d36.886079!3d-1.185008!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTEnMDYuMCJTIDM2wrA1MycwOS45IkU!5e0!3m2!1sen!2ske!4v1730030000000!5m2!1sen!2ske">
                            </iframe>
                        </div>
                    </div>
                    <div class="col-lg-6 form">
                        <div class="heading">
                            <h3 class="text-dark">Contact Us</h3>
                            <p>
                                Are you interested in a course? Please fill out the form below, and we will get back to you as soon as possible.
                            </p>
                        </div>
                        <?php echo do_shortcode('[contact-form-7 id="18ca9ce" title="Contact Form"]'); ?>
                    </div>
                </div>
            </div>
            <!-- End Maps & Contact Form -->

        </div>
    </div>
</div>
<!-- End Contact Info -->
<?php
get_footer();