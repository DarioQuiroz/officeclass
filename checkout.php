<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>M-Store | Checkout</title>

  <!--SEO Meta Tags-->
  <meta name="description" content="M-Store - Modern E-Commerce Template" />
  <meta name="keywords" content="shop, e-commerce, modern, minimalist style, responsive, online store, business, mobile, blog, bootstrap, html5, css3, jquery, js, gallery, slider, touch, creative, clean" />
  <meta name="author" content="Rokaux" />

  <!--Mobile Specific Meta Tag-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

  <!--Favicon-->
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  <link rel="icon" href="favicon.ico" type="image/x-icon">

  <!-- Google Material Icons -->
  <link href="css/vendor/material-icons.min.css" rel="stylesheet" media="screen">

  <!-- Brand Icons -->
  <link href="css/vendor/socicon.min.css" rel="stylesheet" media="screen">

  <!-- Bootstrap -->
  <link href="css/vendor/bootstrap.min.css" rel="stylesheet" media="screen">

  <!-- Theme Styles -->
  <link href="css/theme.min.css" rel="stylesheet" media="screen">

  <!-- Page Preloading -->
  <script src="js/vendor/page-preloading.js"></script>

  <!-- Modernizr -->
  <script src="js/vendor/modernizr.custom.js"></script>
</head>

<!-- Body -->
<!-- Adding/Removing class ".page-preloading" is enabling/disabling background smooth page transition effect and spinner. Make sure you also added/removed link to page-preloading.js script in the <head> of the document. -->
<body class="page-preloading">

  <!-- Page Pre-Loader -->
  <div class="page-preloader">
    <div class="preloader">
      <img src="img/preloader.gif" alt="Preloader">
    </div>
  </div><!-- .page-preloader -->

  <!-- Page Wrapper -->
  <div class="page-wrapper">

    <!-- Navbar -->
    <!-- Remove ".navbar-sticky" class to make navigation bar scrollable with the page. -->
    <header class="navbar navbar-sticky">

      <!-- Site Logo -->
      <a href="index.html" class="site-logo visible-desktop">
        <span>[</span> M
        <span class="text-gray">/</span>
        STORE <span>]</span>
      </a><!-- site-logo.visible-desktop -->
      <a href="index.html" class="site-logo visible-mobile">
        <span>[</span> M <span>]</span>
      </a><!-- site-logo.visible-mobile -->

      <!-- Language Switcher -->
      <div class="lang-switcher">
        <div class="lang-toggle">
          <img src="img/flags/GB.png" alt="English">
          <i class="material-icons arrow_drop_down"></i>
          <ul class="lang-dropdown">
            <li><a href="#"><img src="img/flags/FR.png" alt="French">FR</a></li>
            <li><a href="#"><img src="img/flags/DE.png" alt="German">DE</a></li>
            <li><a href="#"><img src="img/flags/IT.png" alt="Italian">IT</a></li>
          </ul>
        </div>
      </div><!-- .lang-switcher -->

      <!-- Main Navigation -->
      <!-- Control the position of navigation via modifier classes: "text-left, text-center, text-right" -->
      <nav class="main-navigation text-center">
        <ul class="menu">
          <li class="menu-item-has-children">
            <a href="#">Home</a>
            <ul class="sub-menu">
              <li><a href="index.html">Home Version 1</a></li>
              <li><a href="home-v2.html">Home Version 2</a></li>
              <li><a href="home-v3.html">Home Version 3</a></li>
            </ul>
          </li>
          <li class="menu-item-has-children current-menu-item">
            <a href="#">Shop</a>
            <ul class="sub-menu">
              <li><a href="shop-fullwidth-sl.html">Full Width Sidebar Left</a></li>
              <li><a href="shop-fullwidth-sr.html">Full Width Sidebar Right</a></li>
              <li><a href="shop-fullwidth-ft.html">Full Width Filters Top</a></li>
              <li><a href="shop-boxed-sl.html">Boxed Sidebar Left</a></li>
              <li><a href="shop-boxed-sr.html">Boxed Sidebar Right</a></li>
              <li><a href="shop-boxed-ft.html">Boxed Filters Top</a></li>
              <li><a href="shop-single.html">Single Product</a></li>
              <li><a href="shopping-cart.html">Shopping Cart</a></li>
              <li class="current-menu-item"><a href="checkout.html">Checkout</a></li>
              <li><a href="login.html">Login / Register Page</a></li>
              <li><a href="account.html">User Account Page</a></li>
            </ul>
          </li>
          <li><a href="blog.html">Blog</a></li>
          <li class="menu-item-has-children">
            <a href="#">Gallery</a>
            <ul class="sub-menu">
              <li><a href="gallery-fullwidth-with-gap.html">Full Width With Gap</a></li>
              <li><a href="gallery-fullwidth-no-gap.html">Full Width No Gap</a></li>
              <li><a href="gallery-boxed-with-gap.html">Boxed With Gap</a></li>
              <li><a href="gallery-boxed-no-gap.html">Boxed No Gap</a></li>
            </ul>
          </li>
          <li class="menu-item-has-children">
            <a href="#">Multilevel</a>
            <ul class="sub-menu">
              <li class="submenu-item-has-children">
                <a href="#">Submenu Item 1</a>
                <ul class="sub-menu">
                  <li><a href="#">Submenu Item 1</a></li>
                  <li><a href="#">Submenu Item 2</a></li>
                  <li><a href="#">Submenu Item 3</a></li>
                </ul>
              </li>
              <li class="submenu-item-has-children">
                <a href="#">Submenu Item 2</a>
                <ul class="sub-menu">
                  <li><a href="#">Submenu Item 1</a></li>
                  <li><a href="#">Submenu Item 2</a></li>
                  <li><a href="#">Submenu Item 3</a></li>
                </ul>
              </li>
              <li><a href="#">Submenu Item 3</a></li>
              <li><a href="#">Submenu Item 4</a></li>
            </ul>
          </li>
          <li class="menu-item-has-children">
            <a href="#">Pages</a>
            <ul class="sub-menu">
              <li><a href="about.html">About</a></li>
              <li><a href="contacts.html">Contacts</a></li>
              <li><a href="faq.html">FAQ</a></li>
            </ul>
          </li>
          <li class="hidden-md"><a href="elements.html">Elements</a></li>
        </ul><!-- .menu -->
      </nav><!-- .main-navigation -->

      <!-- Toolbar -->
      <div class="toolbar">
        <div class="inner">
          <a href="#" class="mobile-menu-toggle"><i class="material-icons menu"></i></a>
          <a href="account.html"><i class="material-icons person"></i></a>
          <div class="cart-btn">
            <a href="shopping-cart.html">
              <i>
                <span class="material-icons shopping_basket"></span>
                <span class="count">2</span>
              </i>
            </a>
            <!-- Cart Dropdown -->
            <div class="cart-dropdown">
              <div class="cart-item">
                <a href="shop-single.html" class="item-thumb">
                  <img src="img/cart/item01.jpg" alt="Item">
                </a>
                <div class="item-details">
                  <h3 class="item-title"><a href="shop-single.html">Concrete Lamp</a></h3>
                  <h4 class="item-price">1 x $85.90</h4>
                </div>
                <a href="#" class="close-btn">
                  <i class="material-icons close"></i>
                </a>
              </div><!-- .cart-item -->
              <div class="cart-item">
                <a href="shop-single.html" class="item-thumb">
                  <img src="img/cart/item02.jpg" alt="Item">
                </a>
                <div class="item-details">
                  <h3 class="item-title"><a href="shop-single.html">Storage Box</a></h3>
                  <h4 class="item-price">2 x $38.00</h4>
                </div>
                <a href="#" class="close-btn">
                  <i class="material-icons close"></i>
                </a>
              </div><!-- .cart-item -->
              <div class="cart-subtotal">
                <div class="column">
                  <span>Subtotal:</span>
                </div>
                <div class="column">
                  <span class="amount">$161.90</span>
                </div>
              </div>
            </div><!-- .cart-dropdown -->
          </div><!-- .cart-btn -->
        </div><!-- .inner -->
      </div><!-- .toolbar -->
    </header><!-- .navbar.navbar-sticky -->

    <!-- Container -->
    <form method="post" class="container padding-top-3x padding-bottom-2x">

      <h1 class="space-top-half">Checkout</h1>
      <div class="row padding-top">

        <!-- Checkout Form -->
        <div class="col-sm-8 padding-bottom">
          <div class="row">
            <div class="col-sm-6">
              <input type="text" class="form-control" name="co_f_name" placeholder="First name" required>
              <input type="email" class="form-control" name="co_email" placeholder="Email" required>
              <input type="text" class="form-control" name="co_address1" placeholder="Address 1" required>
            </div>
            <div class="col-sm-6">
              <input type="text" class="form-control" name="co_l_name" placeholder="Last name" required>
              <input type="tel" class="form-control" name="co_phone" placeholder="Phone" required>
              <input type="text" class="form-control" name="co_address2" placeholder="Address 2">
            </div>
          </div><!-- .row -->
          <input type="text" class="form-control" name="co_company" placeholder="Company">
          <div class="row">
            <div class="col-sm-6">
              <div class="form-element form-select">
                <select class="form-control" name="co_country">
                  <option value="">Country</option>
                  <option value="australia">Australia</option>
                  <option value="gb">Great Britain</option>
                  <option value="poland">Poland</option>
                  <option value="switzerland">Switzerland</option>
                  <option value="usa">USA</option>
                </select>
              </div>
              <div class="form-element form-select">
                <select class="form-control" name="co_city">
                  <option value="">City</option>
                  <option value="bern">Bern</option>
                  <option value="london">London</option>
                  <option value="ny">New York</option>
                  <option value="warsaw">Warsaw</option>
                </select>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-element form-select">
                <select class="form-control" name="co_state">
                  <option value="">State</option>
                  <option value="1">State 1</option>
                  <option value="2">State 2</option>
                  <option value="3">State 3</option>
                  <option value="4">State 4</option>
                  <option value="5">State 5</option>
                </select>
              </div>
              <input type="text" class="form-control" name="co_zip" placeholder="ZIP code" required>
            </div>
          </div><!-- .row -->
          <div class="form-group">
            <label class="radio radio-inline">
              <input type="radio" name="co_shipping" checked> Ship to this address
            </label>
            <label class="radio radio-inline">
              <input type="radio" name="co_shipping"> Ship to different address
            </label>
          </div><!-- .form-group -->
        </div><!-- .col-sm-8 -->

        <!-- Sidebar -->
        <div class="col-md-3 col-md-offset-1 col-sm-4 padding-bottom">
          <aside>
            <h3>Cart total:</h3>
            <h4>$460.90</h4>
            <p class="text-sm text-gray">* Note: This amount includes costs for shipping to address you provided.</p>
            <a href="shopping-cart.html" class="btn btn-default btn-ghost icon-left btn-block">
              <i class="material-icons arrow_back"></i>
              Back To Cart
            </a>
            <button type="submit" class="btn btn-primary btn-block waves-effect waves-light space-top-none">Checkout</button>
          </aside>
        </div><!-- .col-md-3.col-sm-4 -->
      </div><!-- .row -->
    </form><!-- .container -->

    <!-- Footer -->
    <footer class="footer space-top">
      <div class="column">
        <p class="text-sm">Need support? Call <span class="text-primary">001 (917) 555-4836</span></p>
        <div class="social-bar text-center space-bottom">
          <a href="#" class="sb-skype" data-toggle="tooltip" data-placement="top" title="Skype">
            <i class="socicon-skype"></i>
          </a>
          <a href="#" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
            <i class="socicon-facebook"></i>
          </a>
          <a href="#" class="sb-google-plus" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google+">
            <i class="socicon-googleplus"></i>
          </a>
          <a href="#" class="sb-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
            <i class="socicon-twitter"></i>
          </a>
          <a href="#" class="sb-instagram" data-toggle="tooltip" data-placement="top" title="" data-original-title="Instagram">
            <i class="socicon-instagram"></i>
          </a>
        </div><!-- .social-bar -->
        <p class="copyright">&copy; 2016. Made with <i class="text-danger material-icons favorite"></i> by rokaux.</p>
      </div><!-- .column -->
      <div class="column">
        <h3 class="widget-title">
          Subscription
          <small>To receive latest offers and discounts from the shop.</small>
        </h3>
        <form action="//rokaux.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;id=1194bb7544" method="post" target="_blank" class="subscribe-form" novalidate>
          <input type="email" class="form-control" name="EMAIL" placeholder="Your e-mail">
          <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
          <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1" value=""></div>
          <button type="submit"><i class="material-icons send"></i></button>
        </form>
      </div><!-- .column -->
      <div class="column">
        <h3 class="widget-title">
          Payment Methods
          <small>We support one of the following payment methods.</small>
        </h3>
        <div class="cards"><img src="img/cards.png" alt="Cards"></div>
        <!-- Scroll To Top Button -->
        <div class="scroll-to-top-btn"><i class="material-icons trending_flat"></i></div>
      </div><!-- .column -->
    </footer><!-- .footer -->

  </div><!-- .page-wrapper -->

  <!-- JavaScript (jQuery) libraries, plugins and custom scripts -->
  <script src="js/vendor/jquery-2.1.4.min.js"></script>
  <script src="js/vendor/bootstrap.min.js"></script>
  <script src="js/vendor/smoothscroll.js"></script>
  <script src="js/vendor/velocity.min.js"></script>
  <script src="js/vendor/waves.min.js"></script>
  <script src="js/vendor/icheck.min.js"></script>
  <script src="js/scripts.js"></script>

</body><!-- <body> -->

</html>
