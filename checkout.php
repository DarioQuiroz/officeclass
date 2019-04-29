<?php
include 'php/config.php';
include 'carrito.php';
include 'cavecera.php' ?>
<!-- Container -->


<form action="pagar.php" method="post" class="container padding-top-3x padding-bottom-2x">
  <div class="alert alert-success" role="alert">
    <h1 class="space-top-half">Pagar</h1>
    <div class="row padding-top">

      <!-- Checkout Form -->
      <div class="col-sm-8 padding-bottom">
        <div class="row">
          <div class="col-sm-6">
            <input type="text" class="form-control" name="co_f_name" placeholder="Nombre" required>
            <input type="email" class="form-control" id="email" name="email" placeholder="correo" required>
            <input type="text" class="form-control" name="co_address1" placeholder="Dirección 1" required>
          </div>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="co_l_name" placeholder="Apellido" required>
            <input type="tel" class="form-control" name="co_phone" placeholder="Telefono" required>
            <input type="text" class="form-control" name="co_address2" placeholder="Dirección 2">
          </div>
        </div><!-- .row -->
        <div class="row">
          <div class="col-sm-6">
            <input type="text" class="form-control" name="ciudad" placeholder="Ciudad">
            <input type="text" class="form-control" name="co_postal" placeholder="Codigo Postal" required>
          </div>
          <div class="col-sm-6">
            <input type="text" class="form-control" name="estado" placeholder="Estado">
          </div>
        </div><!-- .row -->
        <div class="col-sm-12" style="    display: flex;    justify-content: center;">
          <h3 style=" display: flex; justify-content: center;" class="h3"> ¿Deseas facturar?</h3>
        </div>
        <div class="col-sm-6">
          <input type="text" class="form-control" name="rfc" placeholder="RFC">
        </div>

        <div class="col-sm-6">
          <input type="text" class="form-control" name="dirección" placeholder="Dirección de facturación">
        </div>

        <div class="col-sm-6">
          <input type="text" class="form-control" name="ra_social" placeholder="Razón Social">
        </div>


      </div><!-- .col-sm-8 -->

      <!-- Sidebar -->
      <div class="col-md-3 col-md-offset-1 col-sm-4 padding-bottom">
        <aside>
          <h3>Total de compra</h3>
          <h4> <?php echo number_format($total, 2) ?></h4>
          <p class="text-sm text-gray">* Note: This amount includes costs for shipping to address you provided.</p>
          <a href="carritodecompras.php" class="btn btn-default btn-warning icon-left btn-block">
            <i class="material-icons arrow_back"></i>
            Regresar al carrito
          </a>
          <button type="submit" class="btn btn-primary btn-block waves-effect waves-light space-top-none" name="btnAccion" value="proceder"> proceder a pagar</button>
        </aside>
      </div><!-- .col-md-3.col-sm-4 -->
    </div>
  </div><!-- .row -->
</form><!-- .container -->

<?php include 'footer.php'; ?>

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