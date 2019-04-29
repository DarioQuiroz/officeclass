<?php include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'cavecera.php' ?>

<!-- Hero Slider -->
<!-- Data API:
      data-loop="true/false" enable/disable looping
      data-autoplay="true/false" enable/disable carousel autoplay
      data-interval="3000" autoplay interval timeout in miliseconds
      Simply add necessary data attribute to the ".hero-carousel" with appropriate value to adjust carousel functionality.
     -->
<section class="hero-slider" data-loop="true" data-autoplay="true" data-interval="7000">
  <div class="inner">
    <div class="slide" style="background-image: url(img/Headers/header 1.jpg);">
      <img class="slide" style="width: 100%" src="img/Headers/header 1.jpg">
      <div class="container">
        <div class="absolute from-top" style="top: 13%;">
          <span class="h1 hidden-xs">New SPA<br>Cosmetics</span>
        </div>
        <div class="absolute text-right from-bottom" style="bottom: 13%; right: 15px;">
          <span class="h2"><span class="text-thin">Only</span><br><strong>$127.99</strong></span><br>
          <a href="#" class="btn btn-primary btn-with-icon-right waves-effect waves-light space-top-none">
            View Offer
            <i class="material-icons arrow_forward"></i>
          </a>
        </div>
      </div>
    </div><!-- .slide -->
    <div class="slide" style="background-image: url(img/Headers/header 1.jpg);">
      <img class="slide" style="width: 100%" src="img/Headers/header 2.jpg">
      <div class="container text-center padding-top-3x">
        <span class="h1 from-bottom">Stylish Chair</span><br>
        <span class="h2 from-bottom"><span class="text-thin">Special offer: </span> <strong>-25%</strong></span><br>
        <a href="#" class="btn btn-primary btn-with-icon-right waves-effect waves-light scale-up">
          View Offer
          <i class="material-icons arrow_forward"></i>
        </a>
      </div>
    </div><!-- .slide -->
    <div class="slide" style="background-image: url(img/Headers/header 1.jpg);">
      <img class="slide" style="width: 100%" src="img/Headers/header 3.jpg">
      <div class="container padding-top-3x">
        <span class="h1 space-top from-left">Dior Sunglasses</span><br>
        <span class="h2 from-right"><span class="text-thin">Only <span class="hidden-xs">today</span></span>
          <strong>-30%</strong></span><br>
        <a href="#" class="btn btn-primary btn-with-icon-right waves-effect waves-light scale-up">
          View Offer
          <i class="material-icons arrow_forward"></i>
        </a>
      </div>
    </div><!-- .slide -->
  </div><!-- .inner -->
</section><!-- .hero-slider -->

<section class="container-fluid padding-top-3x">

  <!-- Featured Categories -->
  <h3 class="text-center padding-top">Categorias</h3>
  <div class="row padding-top padding-bottom-3x" style="display: flex; justify-content: center;">

  <div class="col-sm-3 col-xs-6">
      <a href="catesillas.php" class="category-link">
        <img src="img/PORTADAS/PORT SILLAS/Portada Sillas.jpg" alt="Category">
        SILLAS
      </a><!-- .category-link -->
    </div><!-- .col-sm-4 -->
  <div class="col-sm-3 col-xs-6">
      <a href="#" class="category-link">
        <img src="img/portada a medida 400 x 500/Portadas_escritorios principal.jpg" alt="Category">
        ESCRITORIOS
      </a><!-- .category-link -->
    </div><!-- .col-sm-4 -->
    <div class="col-sm-3 col-xs-6">
      <a href="#" class="category-link">
        <img src="img/portada a medida 400 x 500/Portadas_modulares.jpg" alt="Category">
        MODULARES
      </a><!-- .category-link -->
    </div><!-- .row -->

    <div class="col-sm-3 col-xs-6">
      <a href="#" class="category-link">
        <img src="img/portada a medida 400 x 500/Portadas_mesas trabajo.jpg" alt="Category">
        MESAS
      </a><!-- .category-link -->
    </div><!-- .col-sm-4 -->
    </div>
    <div class="row padding-top padding-bottom-3x" style="display: flex; justify-content: center;">
    <div class="col-sm-3 col-xs-6">
      <a href="#" class="category-link">
        <img src="img/portada a medida 400 x 500/Portadas_recepcion.jpg" alt="Category">
        RECEPCIÓN
      </a><!-- .category-link -->
    </div><!-- .col-sm-4 -->
    <div class="col-sm-3 col-xs-6">
      <a href="#" class="category-link">
        <img src="img/portada a medida 400 x 500/Portadas_modulares.jpg" alt="Category">
        ALMACENAJE
      </a><!-- .category-link -->

    </div><!-- .row -->
    <div class="col-sm-3 col-xs-6">
      <a href="#" class="category-link">
        <img src="img/portada a medida 400 x 500/Portadas_modulares.jpg" alt="Category">
        DISEÑO
      </a><!-- .category-link -->
    </div><!-- .row -->

  </div><!-- .row -->
</section><!-- .container-fluid -->




<!-- Content Wide -->
<section class="container-fluid padding-top-3x">

  <!-- Featured Categories -->

  <div class="row padding-top padding-bottom-3x">
    
    <div class="row padding-top">



      <!-- Products -->
      <div class="col-lg-12 col-md-8">
        <!-- Nav Tabs -->
        <ul class="nav-tabs text-center" role="tablist">
          <li class="active"><a href="#newcomers" role="tab" data-toggle="tab">New Arrivals</a></li>
          <li><a href="#toprated" role="tab" data-toggle="tab">Top Rated</a></li>
        </ul><!-- .nav-tabs -->

        <!-- Tab Panes -->
        <div class="tab-content">

          <!-- #newcomers -->
          <div role="tabpanel" class="tab-pane transition fade scale in active" id="newcomers">
            <div class="row space-top-half">
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="shop-label text-danger">Sale</span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th01.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Storage Box</a></h3>
                    <span class="shop-item-price">
                      <span class="old-price">$49.00</span>
                      $38.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th02.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Shoulder Bag</a></h3>
                    <span class="shop-item-price">
                      $125.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th03.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Glass Vase</a></h3>
                    <span class="shop-item-price">
                      $62.50
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th04.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Alarm Clock</a></h3>
                    <span class="shop-item-price">
                      $178.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
            </div><!-- .row -->
            <div class="row">
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th05.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Wall Clock</a></h3>
                    <span class="shop-item-price">
                      $69.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th06.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">LED Lighting</a></h3>
                    <span class="shop-item-price">
                      $130.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="shop-label text-warning">Popular</span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th07.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Sunglasses</a></h3>
                    <span class="shop-item-price">
                      $99.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th08.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Hook Basket</a></h3>
                    <span class="shop-item-price">
                      $112.35
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
            </div><!-- .row -->
          </div><!-- .tab-pane#newcomers -->

          <!-- #toprated -->
          <div role="tabpanel" class="tab-pane transition fade scale" id="toprated">
            <div class="row">
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th09.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Leather Case</a></h3>
                    <span class="shop-item-price">
                      $118.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th10.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Concrete Lamp</a></h3>
                    <span class="shop-item-price">
                      $85.90
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star_half"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th11.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Stylish Chair</a></h3>
                    <span class="shop-item-price">
                      $417.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star_border"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th12.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Desktop Light</a></h3>
                    <span class="shop-item-price">
                      $245.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
            </div><!-- .row -->
            <div class="row">
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star_border"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th13.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Storage Jar</a></h3>
                    <span class="shop-item-price">
                      $19.80
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star_half"></i>
                      <i class="material-icons star_border"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th14.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Ceramic Watch</a></h3>
                    <span class="shop-item-price">
                      $299.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star_half"></i>
                      <i class="material-icons star_border"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th15.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Tissue Holder</a></h3>
                    <span class="shop-item-price">
                      $76.40
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
              <div class="col-lg-3 col-sm-6">
                <div class="shop-item">
                  <div class="shop-thumbnail">
                    <span class="item-rating text-warning">
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star"></i>
                      <i class="material-icons star_border"></i>
                      <i class="material-icons star_border"></i>
                    </span>
                    <a href="shop-single.html" class="item-link"></a>
                    <img src="img/shop/th16.jpg" alt="Shop item">
                    <div class="shop-item-tools">
                      <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top" title="Wishlist">
                        <i class="material-icons favorite_border"></i>
                      </a>
                      <a href="#" class="add-to-cart">
                        <em>Add to Cart</em>
                        <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                          <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF" stroke-width="2" stroke-linecap="square" stroke-miterlimit="10" d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                        </svg>
                      </a>
                    </div>
                  </div>
                  <div class="shop-item-details">
                    <h3 class="shop-item-title"><a href="shop-single.html">Pendant Lamp</a></h3>
                    <span class="shop-item-price">
                      $27.00
                    </span>
                  </div>
                </div><!-- .shop-item -->
              </div><!-- .col-lg-3.col-sm-6 -->
            </div><!-- .row -->
          </div><!-- .tab-pane#toprated -->


        </div><!-- .tab-content -->
      </div><!-- .col-lg-9.col-md-8 -->
    </div><!-- .row -->
</section><!-- .container-fluid -->

<!-- Brands -->
<section class="container padding-top-2x padding-bottom">
  <hr>
  <h3 class="text-center padding-top-2x">Nuestras Marcas</h3>
  <div class="row padding-top">
    <!-- Brand -->
    <div class="col-sm-4 col-xs-6">
      <a href="#" class="brand">
        <div class="brand-logo opacity-75">
          <img src="img/logos/logo interstuhl.png" alt="logo interstuhl">
        </div>
        <p class="brand-text">logo interstuhl</p>
      </a>
    </div>
    <!-- Brand -->
    <div class="col-sm-4 col-xs-6">
      <a href="#" class="brand">
        <div class="brand-logo opacity-75">
          <img src="img/logos/logo offiho.png" alt="logo offiho">
        </div>
        <p class="brand-text">logo offiho</p>
      </a>
    </div>
    <!-- Brand -->
    <div class="col-sm-4 col-xs-6">
      <a href="#" class="brand">
        <div class="brand-logo opacity-75">
          <img src="img/logos/logo requiez.png" alt="Brand">
        </div>
        <p class="brand-text">logo requiez</p>
      </a>
    </div>
    <!-- Brand -->
    <div class="col-sm-4 col-xs-6">
      <a href="#" class="brand">
        <div class="brand-logo opacity-75">
          <img src="img/brands/04.svg" alt="Brand">
        </div>
        <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente
          itaque.</p>
      </a>
    </div>
    <!-- Brand -->
    <div class="col-sm-4 col-xs-6">
      <a href="#" class="brand">
        <div class="brand-logo opacity-75">
          <img src="img/brands/05.svg" alt="Brand">
        </div>
        <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente
          itaque.</p>
      </a>
    </div>
    <!-- Brand -->
    <div class="col-sm-4 col-xs-6">
      <a href="#" class="brand">
        <div class="brand-logo opacity-75">
          <img src="img/brands/06.svg" alt="Brand">
        </div>
        <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente
          itaque.</p>
      </a>
    </div>
  </div><!-- .row -->
</section><!-- .container -->

<!-- Video Popup -->
<div class="fw-section space-top-2x padding-top-3x padding-bottom-3x" style="background-image: url(img/video_bg.jpg);">
  <div class="container padding-top-3x padding-bottom-3x text-center">
    <div class="space-top-3x space-bottom">
      <!-- Add ".light-skin" class to alter appearance. -->
      <a href="https://player.vimeo.com/video/135832597?color=77cde3&title=0&byline=0&portrait=0" class="video-popup-btn">
        <i class="material-icons play_arrow"></i>
      </a>
    </div>
    <p class="space-bottom-2x">M-Store - your reliable partner.</p>
  </div>
</div><!-- .fw-section -->

<!-- Features -->
<section class="container space-top space-bottom padding-top-3x padding-bottom-3x">
  <div class="row">
    <!-- Feature -->
    <div class="col-md-3 col-sm-6">
      <div class="feature text-center">
        <div class="feature-icon">
          <i class="material-icons location_on"></i>
        </div>
        <h4 class="feature-title">Free World-Wide Shipping</h4>
        <p class="feature-text">Free shipping on all orders over $100</p>
      </div>
    </div>
    <!-- Feature -->
    <div class="col-md-3 col-sm-6">
      <div class="feature text-center">
        <div class="feature-icon">
          <i class="material-icons autorenew"></i>
        </div>
        <h4 class="feature-title">Money Back Guarantee</h4>
        <p class="feature-text">We return money within 30 days</p>
      </div>
    </div>
    <!-- Feature -->
    <div class="col-md-3 col-sm-6">
      <div class="feature text-center">
        <div class="feature-icon">
          <i class="material-icons headset_mic"></i>
        </div>
        <h4 class="feature-title">24/7 Online Support</h4>
        <p class="feature-text">Friendly 24/7 customer support</p>
      </div>
    </div>
    <!-- Feature -->
    <div class="col-md-3 col-sm-6">
      <div class="feature text-center">
        <div class="feature-icon">
          <i class="material-icons credit_card"></i>
        </div>
        <h4 class="feature-title">Secure Online Payments</h4>
        <p class="feature-text">We posess SSL / Secure Certificate</p>
      </div>
    </div>
  </div><!-- .row -->
</section><!-- .container -->

<?php include 'footer.php';?>
</div><!-- .page-wrapper -->

<!-- JavaScript (jQuery) libraries, plugins and custom scripts -->
<script src="js/vendor/jquery-2.1.4.min.js"></script>
<script src="js/vendor/bootstrap.min.js"></script>
<script src="js/vendor/smoothscroll.js"></script>
<script src="js/vendor/velocity.min.js"></script>
<script src="js/vendor/waves.min.js"></script>
<script src="js/vendor/icheck.min.js"></script>
<script src="js/vendor/owl.carousel.min.js"></script>
<script src="js/vendor/jquery.downCount.js"></script>
<script src="js/vendor/magnific-popup.min.js"></script>
<script src="js/scripts.js"></script>

</body><!-- <body> -->

</html>