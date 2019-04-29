<?php
include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
 include 'cavecera.php'?>

        <!-- Shop Catalog -->
        <section class="container-fluid padding-top-3x padding-bottom-3x">

            <!-- Sidebar Toggle / visible only on mobile -->
            <section class="container-fluid padding-top-3x padding-bottom-3x">

<!-- Sidebar Toggle / visible only on mobile -->
<div class="sidebar-toggle">
<i class="material-icons filter_list"></i>
</div>

<h1 class="space-top-half">Sillas para visitantes</h1>

<div style="background-color: " class="alert alert-success">

<?php if($mensaje!="") {
?>
<?php echo $mensaje; ?>

<a href="carritodecompras.php" class="badge badge-success">ver carrito</a>


<?php 
}
?>
</div>
            <div class="row padding-top">

                <!-- Sidebar (Filters) -->
                <?php  include 'lateralizq.php';?>
     
     <!-- .col-md-3.col-sm-4 -->

                <!-- Products Grid -->
                <div class="col-lg-10 col-md-9 col-sm-8">

                    <!-- Shop Bar -->
                    <div class="shop-bar">
                        <div class="column">
                            <p class="text-sm space-bottom-none">
                            <span class="text-gray">Cantidad de articulos:</span> <?php 
                                
                                if ($result = mysqli_query($link, "SELECT id, modelo FROM sillasdevisitantes ORDER BY id")) {
                                
                                    /* determinar el número de filas del resultado */
                                    $row_cnt = mysqli_num_rows($result);
                                
                                   // printf("El resultado tiene %d filas.\n", $row_cnt);
                                   echo  $row_cnt;
                                    /* cerrar el resulset */
                                    mysqli_free_result($result);
                                }
                                                             ?> 
                            </p>
                        </div><!-- .column -->
                       
                    </div><!-- .shop-bar -->

                    <div class="row">
                    <?php
$sentencia=$pdo->prepare("SELECT * FROM `sillasdevisitantes` ORDER BY precio desc");
$sentencia->execute();
$listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);

//print_r($listaProductos);
?>
<?php foreach($listaProductos as $producto)
{
  ?>
                        <!-- Item -->
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="shop-item">
                                <div class="shop-thumbnail">
                                    <a href="descripcion.php?id=<?php echo  $producto ['id'];  ?>&pag=8" class="item-link"></a>
                                    <img src="img/FOTOS OFFICE CLASS/SILLAS PARA VISITANTES/<?php echo  $producto ['modelo'];  ?>.png"
                                        style="width:190px; height: 318px;" alt="Shop item">
                                    <div class="shop-item-tools">
                                    <div class="shop-item-tools">
                                        <form action="" method="POST">
                                            <input type="hidden" name="id" id="id" value="<?php echo  openssl_encrypt($producto['id'], code, key); ?>">
                                            <input type="hidden" name="modelo" id="modelo" value="<?php echo openssl_encrypt($producto['modelo'], code, key); ?>">
                                            <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['precio'], code, key); ?>">
                                            <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1, code, key); ?>">
                                            <button class="add-to-cart" name="btnAccion" value="agregar" type="submit"> <em>Comprar</em></button>
                                        </form>
                                    </div>

                                </div>
                            </div>
                            <div class="shop-item-details">
                                <h3 class="shop-item-title"><a href="shop-single.html"><?php echo  $producto['nombre'];  ?></a></h3>
                                <span class="shop-item-price">

                                      
                                        $<?php echo  $producto ['precio'];  ?>
                                    </span>
                                </div>
                            </div><!-- .shop-item -->
                        </div><!-- .col-md-4.col-sm-6 -->

                 
                        <?php
}
?>

                    </div><!-- .row -->
                    <hr>

                    <!-- Pagination -->
                   
                </div><!-- .col-md-9 col-sm-8 -->
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
    <script src="js/vendor/nouislider.min.js"></script>
    <script src="js/scripts.js"></script>

</body><!-- <body> -->

</html>