<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package portera
 */

?>

<!-- Start Footer
============================================= -->
<footer class="bg-dark default-padding-top text-light">
    <div class="container">
        <div class="f-items">
            <div class="row">
                <div class="col-lg-4 col-md-6 item">
                    <div class="f-item">
                        <img src="<?php echo get_theme_file_uri('assets/img/logo-light.webp'); ?>" alt="Logo">
                        <p>
                            PMTI operates as an industry-facing training centre. Certification is issued by PMTI with backing from Nellions and partner employers; we are building formal recognition pathways with sector bodies and external certifiers.

                        </p>
                        <p class="text-italic">
                            Employers are invited to participate in curriculum validation, field attachments, and graduate recruitment — ensuring training stays relevant and accountable.
                        </p>
                        <div class="subscribe">
                            <form action="#">
                                <div class="input-group stylish-input-group">
                                    <input type="email" placeholder="Enter your e-mail here" class="form-control" name="email" style="min-height:50px;">
                                    <button type="submit">
                                        <i class="fa fa-paper-plane"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 item">
                    <div class="f-item link">
                        <h4>Links</h4>
                        <ul>
                            <li>
                                <a href="#">Courses</a>
                            </li>
                            <li>
                                <a href="#">Event</a>
                            </li>
                            <li>
                                <a href="#">Gallery</a>
                            </li>
                            <li>
                                <a href="#">Faqs</a>
                            </li>
                            <li>
                                <a href="#">Teachers</a>
                            </li>
                            <li>
                                <a href="#">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 item">
                    <div class="f-item link">
                        <h4>Support</h4>
                        <ul>
                            <li>
                                <a href="#">Documentation</a>
                            </li>
                            <li>
                                <a href="#">Forums</a>
                            </li>
                            <li>
                                <a href="#">Language Packs</a>
                            </li>
                            <li>
                                <a href="#">Release Status</a>
                            </li>
                            <li>
                                <a href="#">LearnPress</a>
                            </li>
                            <li>
                                <a href="#">Feedback</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 item">
                    <div class="f-item address">
                        <h4>Address</h4>
                        <ul>
                            <li>
                                <i class="fas fa-envelope"></i>
                                <p>Email <span>info@portera.ac.ke</span></p>
                            </li>
                            <li>
                                <i class="fas fa-map"></i>
                                <p>Office<span>Maputo Street, off Kamiti Road</span>
                                    <span>Kiamumbi, Kiambu</span>
                                </p>
                            </li>
                        </ul>
                        <div class="opening-info mt-5">
                            <h5>Opening Hours</h5>
                            <ul>
                                <li> <span> Mon - Tues :  </span>
                                    <div class="float-end"> 6.00 am - 10.00 pm </div>
                                </li>
                                <li> <span> Wednes - Thurs :</span>
                                    <div class="float-end"> 8.00 am - 6.00 pm </div>
                                </li>
                                <li> <span> Sun : </span>
                                    <div class="float-end closed"> Closed </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Footer Bottom -->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <p>&copy; Copyright <?php echo date(
                                "Y",
                        ); ?>. All Rights Reserved by <a href="#">Portera</a></p>
                </div>
                <div class="col-lg-6 text-end link">
                    <ul>
                        <li>
                            <a href="#">Terms of user</a>
                        </li>
                        <li>
                            <a href="#">License</a>
                        </li>
                        <li>
                            <a href="#">Support</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer Bottom -->
</footer>
<!-- End Footer -->

<?php 
wp_footer();
?>
<script>
    $(window).on('load', function() {
        setTimeout(() => {
            if (typeof $.fn.carousel === "function" && $('#bootcarousel').length) {
                $('#bootcarousel').carousel({ interval: 6000, pause: false });
                console.log("✅ Bootstrap carousel initialized");
            } else {
                console.warn("⚠️ Bootstrap carousel plugin not ready or .animate_text missing.");
            }
        }, 300);
    });
</script>





<script>
    window.addEventListener('load', function() {
        const loader = document.querySelector('.se-pre-con');
        if (loader) {
            loader.style.opacity = '0';
            setTimeout(() => loader.style.display = 'none', 500);
        }
    });

    document.addEventListener('DOMContentLoaded', function() {
        setTimeout(() => {
            const loader = document.querySelector('.se-pre-con');
            if (loader) {
                loader.style.opacity = '0';
                loader.style.display = 'none';
            }
        }, 4000);
    });
</script>


</body>
</html>