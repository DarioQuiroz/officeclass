<?php include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'cavecera.php' ?>

<?php if ($_POST) {
  $total = 0;
  $sid = session_id();
  $SID = $sid;
  $correo = $_POST['email'];
  foreach ($_SESSION['carrito'] as $indice => $producto) {
    $total = $total + ($producto['CANTIDAD'] * $producto['PRECIO']);
  }
  $sentencia = $pdo->prepare("INSERT INTO `tblventas` (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, `total`, `status`)
   VALUES (NULL, :clavetransaccion, '', NOW(), :correo, :total, 'vendido');");
  $sentencia->bindParam(":clavetransaccion", $sid);
  $sentencia->bindParam(":correo", $correo);
  $sentencia->bindParam(":total", $total);
  $sentencia->execute();
  $idventa = $pdo->lastInsertId();

  foreach ($_SESSION['carrito'] as $indice => $producto) {
    $sentencia = $pdo->prepare("INSERT INTO 
`detalleventa` (`id`, `idventa`, `idproducto`, `preciounitario`, `cantidad`, `vendido`, `modelo`) 
VALUES (NULL, :idventa, :idproducto, :preciounitario, :cantidad, '0');");

    $sentencia->bindParam(":idventa", $idventa);
    $sentencia->bindParam(":idproducto", $producto['ID']);
    $sentencia->bindParam(":preciounitario", $producto['PRECIO']);
    $sentencia->bindParam(":cantidad", $producto['CANTIDAD']);
    $sentencia->execute();
    //echo "<h3>".$total."</h3>";

  }
} ?>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<script src="https://www.paypalobjects.com/api/checkout.js">
</script>
<style>
  @media screen and (max-width:400px) {
    #paypal-button-container {
      width: 100%;
    }
  }

  @media screen and (min-width:400px) {
    #paypal-button-container {
      width: 250px;
      display: inline-block;
    }
  }
</style>
<div class="jumbotron text-center">

  <h1 class="display-4">¡Paso final!</h1>
  <hr class="my-4">
  <p class="lead">estas a punto de pagar la contidad de </p>
  <h4>$<?php echo number_format($total, 2) ?> </h4>
  <div id="paypal-button-container"></div>



  <p>los productos te serán enviados en cuanto se vea reflejado tu pago<br />
    <strong>para aclaraciones conmigo</strong></p>
</div>


<script>
  paypal.Button.render({
    env: 'sandbox',
    style: {
      label: 'checkout',
      size: 'responsive',
      shape: 'pill',
      color: 'blue'
    },

    client: {
      sandbox: 'AfHi-y5F8YfvNtP4W4OJxIETtCtGqxUo7ns02btAYgpH1gif6fnpwiubpCe1Z2vEXnFZWg66lXWcaVgZ',
      production: 'ATgrO75d3t_2ryno6aKCHSw3C2HR8EVz2i2o8RPujuTf5yc67gKKYu5mxvw-4PULI2F4PxKVVgA26p3j'
    },

    payment: function(data, actions) {
      return actions.payment.create({
        payment: {
          transactions: [{
            amount: {
              total: '<?php echo $total ?>',
              currency: 'MXN'
            },
            description: "compra de productos a offic class $ <?php echo number_format($total, 2); ?>",
            custom: ' <?php echo $total ?>'
          }]
        }
      });
    },
    onAuthorize: function(data, actions) {
      return actions.payment.execute().then(function() {
        window.alert('Payment Complete!');
        console.log(data);
        window.location = "verificar.php?paymentToken=" + data.paymentToken
      });

    }

  }, '#paypal-button-container');
</script>



<?php include 'footer.php'; ?>
</div><!-- .page-wrapper -->

<!-- JavaScript (jQuery) libraries, plugins and custom scripts -->
<script src="../js/vendor/jquery-2.1.4.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>
<script src="../js/vendor/smoothscroll.js"></script>
<script src="../js/vendor/velocity.min.js"></script>
<script src="../js/vendor/waves.min.js"></script>
<script src="../js/vendor/icheck.min.js"></script>
<script src="../js/vendor/owl.carousel.min.js"></script>
<script src="../js/vendor/jquery.downCount.js"></script>
<script src="../js/vendor/magnific-popup.min.js"></script>
<script src="js/scripts.js"></script>

</body><!-- <body> -->

</html>