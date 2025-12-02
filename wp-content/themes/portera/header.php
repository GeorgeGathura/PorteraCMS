<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package portera
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
    <!-- ========== Meta Tags ========== -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Portera - Mobility Training Institute" />
    <meta name="robots" content="noindex, nofollow" />

  
    <?php wp_head(); ?>
    <link
            rel="shortcut icon"
            href="assets/img/favicon.png"
            type="image/x-icon"
    />


    <!--[if lte IE 9]>
    <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
    </p>
    <![endif]-->
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<!-- Preloader Start -->
<div class="se-pre-con"></div>
<!-- Preloader Ends -->

<!-- Start Header Top -->
<div class="top-bar-area address-two-lines bg-dark text-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 address-info">
                <div class="info box">
                    <ul>
                        <li>
                            <span><i class="fas fa-map"></i> Address</span>
                            Maputo street, off Kamiti road Kiamumbi, Kiambu
                        </li>
                        <li>
                            <span><i class="fas fa-envelope-open"></i> Email</span>
                            info@portera.ac.ke
                        </li>
                        <li>
                            <span><i class="fas fa-phone"></i> Contact</span>
                            +254 116 850 136
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Header Top -->

<!-- Header -->
<header>
    <nav class="navbar inc-shape navbar-sticky navbar-default validnavs dark">
        <!-- Start Top Search -->
        <div class="top-search">
            <div class="container-xl">
                <div class="input-group">
          <span class="input-group-addon"
          ><i class="fa fa-search"></i
              ></span>
                    <input type="text" class="form-control" placeholder="Search" />
                    <span class="input-group-addon close-search"
                    ><i class="fa fa-times"></i
                        ></span>
                </div>
            </div>
        </div>
        <!-- End Top Search -->

        <div
                class="container d-flex justify-content-between align-items-center"
        >
            <div class="attr-right">
                <div class="attr-nav attr-box">
                    <ul>
                        <li class="side-menu">
                            <a href="#"><i class="fa fa-bars"></i></a>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Start Side Menu -->
            <div class="side">
                <a href="#" class="close-side"><i class="fas fa-times"></i></a>
                <div class="widget">
                    <div class="logo">
<!--                            <img-->
<!--                                    src="assets/img/logo-dark.png"-->
<!--                                    style="height: 80px"-->
<!--                                    alt="Logo"-->
<!--                            />-->
                        <?php  the_custom_logo(); ?>
                    </div>
                </div>
                <div class="widget">
                    <?php
                    wp_nav_menu(
                            array(
                                    'theme_location' => 'mobile_menu',
                                    'menu_id'        => 'primary-menu',
                            )
                    );
                    ?>
               
                </div>
                <div class="widget social">
                    <h4 class="title">Connect With Us</h4>
                    <ul class="link">
                        <li class="facebook">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                        </li>
                        <li class="twitter">
                            <a href="#"><i class="fab fa-twitter"></i></a>
                        </li>
                        <li class="pinterest">
                            <a href="#"><i class="fab fa-pinterest"></i></a>
                        </li>
                        <li class="dribbble">
                            <a href="#"><i class="fab fa-dribbble"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- End Side Menu -->

            <div class="navbar-brand-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="<?php echo home_url(); ?>">

                        <?php
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                        echo '<img src="' . esc_url( $custom_logo_url ) . '" alt="">';
                        ?>
                    </a>
                </div>
            </div>
            <?php
            wp_nav_menu(
                    array(
                     
                        'theme_location'  => 'top-menu',
                        'depth'           => 2, // 1 = no dropdowns, 2 = with dropdowns.
                        'container'       => 'div',
                        'container_class' => '',
                        'container_id'    => '',
                        'menu_class'     => 'nav navbar-nav navbar-right',
                        'fallback_cb'     => 'WP_Bootstrap_Navwalker::fallback',
                        'walker'          => new WP_Bootstrap_Navwalker(),
                    )
            );
            
            
            ?>
         

            <div class="attr-nav attr-box">
                <ul>
                    <li class="search">
                        <a href="#"><i class="far fa-search"></i></a>
                    </li>
                </ul>
            </div>
        </div>

        <!-- Overlay screen for menu -->
        <div class="overlay-screen"></div>
    </nav>
</header>
<!-- End Header -->

