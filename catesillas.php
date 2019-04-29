<?php include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
 include 'cavecera.php'?>

    <!-- Hero Slider -->
    <!-- Data API:
      data-loop="true/false" enable/disable looping
      data-autoplay="true/false" enable/disable carousel autoplay
      data-interval="3000" autoplay interval timeout in miliseconds
      Simply add necessary data attribute to the ".hero-carousel" with appropriate value to adjust carousel functionality.
     -->
  
    <!-- Content Wide -->
    <section class="container-fluid padding-top-3x">

      <!-- Featured Categories -->
      <h3 class="text-center padding-top">Categories</h3>
      

      <div class="row padding-top">



        <!-- Products -->
        <div class="col-lg-12 col-md-8">
         
          <!-- Tab Panes -->
          <div class="tab-content">

            <!-- #newcomers -->
            <div role="tabpanel" class="tab-pane transition fade scale in active" id="newcomers">
              <div class="row space-top-half">
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="bancas.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada-Bancas copia.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="bancas.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="bancas.php">Bancas</a></h3>
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="bancosaltos.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="bancosaltos.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="bancosaltos.php">Bancos altos</a></h3>
                     
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="bancosdedisegno.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="bancosdedisegno.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="bancosdediseño.php">Bancos de diseño</a></h3>

                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="sillasdirectivas.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada-Sillas Directivas.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="sillasdirectivas.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="sillasdirectivas.php">Sillas directivas</a></h3>
                    
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
              </div><!-- .row -->

              <div class="row space-top-half">
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="sillasejecutivas.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada-Sillas Ejecutivas copia.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="sillasejecutivas.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="bancas.php">Sillas ejecutivas</a></h3>
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="sillasoperativas.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada-Sillas Operativas 1.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="sillasoperativas.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="bancosaltos.php">Sillas operativas</a></h3>
                     
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="sillasindustriales.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada Sillas Industriales.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="sillasindustriales.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="sillasindustriales.php">Sillas industriales</a></h3>

                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="sillasvisitantes.php" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada-Sillas para Visitantes Op.2.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="sillasvisitantes.php" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="sillasvisitantes.php">Sillas para visitantes</a></h3>
                    
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
              </div><!-- .row -->

              <div class="row"style="display: flex;   justify-content: center;      align-items: center;">
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="shop-single.html" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada-Sillas Escolares.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="#" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="shop-single.html">SILLAS ESCOLARES</a></h3>
                      
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6">
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <a href="shop-single.html" class="item-link"></a>
                      <img src="img/shop/th06.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="#" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="shop-single.html">SILLAS DE DISEÑO</a></h3>
                      
                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
                <div class="col-lg-3 col-sm-6" >
                  <div class="shop-item">
                    <div class="shop-thumbnail">
                      <span class="shop-label text-warning">Popular</span>
                      <a href="shop-single.html" class="item-link"></a>
                      <img src="img/PORTADAS/PORT SILLAS/Portada Sofas copia.jpg" alt="Shop item">
                      <div class="shop-item-tools">
                        <a href="#" class="add-to-whishlist" data-toggle="tooltip" data-placement="top"
                          title="Wishlist">
                          <i class="material-icons favorite_border"></i>
                        </a>
                        <a href="#" class="add-to-cart">
                          <em>Ver Categoria</em>
                          <svg x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                            <path stroke-dasharray="19.79 19.79" stroke-dashoffset="19.79" fill="none" stroke="#FFFFFF"
                              stroke-width="2" stroke-linecap="square" stroke-miterlimit="10"
                              d="M9,17l3.9,3.9c0.1,0.1,0.2,0.1,0.3,0L23,11" />
                          </svg>
                        </a>
                      </div>
                    </div>
                    <div class="shop-item-details">
                      <h3 class="shop-item-title"><a href="shop-single.html">SOFAS</a></h3>

                    </div>
                  </div><!-- .shop-item -->
                </div><!-- .col-lg-3.col-sm-6 -->
              
              </div><!-- .row -->
            </div><!-- .tab-pane#newcomers -->

           

           
          </div><!-- .tab-content -->
        </div><!-- .col-lg-9.col-md-8 -->
      </div><!-- .row -->
    </section><!-- .container-fluid -->

    <!-- Brands -->
    <section class="container padding-top-2x padding-bottom">
      <hr>
      <h3 class="text-center padding-top-2x">More brands</h3>
      <div class="row padding-top">
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
          <a href="#" class="brand">
            <div class="brand-logo opacity-75">
              <img src="img/brands/01.svg" alt="Brand">
            </div>
            <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente
              itaque.</p>
          </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
          <a href="#" class="brand">
            <div class="brand-logo opacity-75">
              <img src="img/brands/02.svg" alt="Brand">
            </div>
            <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente
              itaque.</p>
          </a>
        </div>
        <!-- Brand -->
        <div class="col-sm-4 col-xs-6">
          <a href="#" class="brand">
            <div class="brand-logo opacity-75">
              <img src="img/brands/03.svg" alt="Brand">
            </div>
            <p class="brand-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi est corrupti sapiente
              itaque.</p>
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
    <div class="fw-section space-top-2x padding-top-3x padding-bottom-3x"
      style="background-image: url(img/video_bg.jpg);">
      <div class="container padding-top-3x padding-bottom-3x text-center">
        <div class="space-top-3x space-bottom">
          <!-- Add ".light-skin" class to alter appearance. -->
          <a href="https://player.vimeo.com/video/135832597?color=77cde3&title=0&byline=0&portrait=0"
            class="video-popup-btn">
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