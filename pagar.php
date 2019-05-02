<?php include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'cavecera.php';
?>
<?php
if ($_POST) {
  $total = 0;
  $sid = session_id();
  $correo = $_POST['correo'];
  $nombre = $_POST['Nombre'];
  $Apellido = $_POST['Apellido'];
  $Telefono = $_POST['Telefono'];
  $Direccion = $_POST['direccion'];
  $Ciudad = $_POST['Ciudad'];
  $Estado = $_POST['Estado'];
  $Codigo_postal = $_POST['Codigo_postal'];
  $RFC = $_POST['RFC'];
  $direccion_fac = $_POST['direccion_fac'];
  $razon_social = $_POST['razon_social'];
  
  

  foreach ($_SESSION['carrito'] as $indice => $producto) {
    $total = $total + ($producto['CANTIDAD'] * $producto['PRECIO']);
  }
   
//    

  $sentencia = $pdo->prepare("INSERT INTO `tblventas` (`id`, `clavetransaccion`, `paypaldatos`, `fecha`, `correo`, 
                                                        `total`, `status`, `nombre`, `apellido`, `telefono`,
                                                        `direccion1`, `ciudad`, `estado`, `codigo_postal`, `rfc`, `direccion_factura`, `razon_social`)
                                                 VALUES (NULL, :clavetransaccion, '', NOW(), :correo,
                                                 :total, 'vendido', :nombre, :Apellido, :Telefono,
                                                 :Direccion, :Ciudad, :Estado, :Codigo_postal, :RFC, :direccion_fac, :razon_social);");
  $sentencia->bindParam(":clavetransaccion", $sid);
  $sentencia->bindParam(":correo", $correo);
  $sentencia->bindParam(":total", $total);
  $sentencia->bindParam(":nombre", $nombre);     
  $sentencia->bindParam(":Apellido", $Apellido);
  $sentencia->bindParam(":Telefono", $Telefono);
  $sentencia->bindParam(":Direccion", $Direccion);
  $sentencia->bindParam(":Ciudad", $Ciudad);
  $sentencia->bindParam(":Estado", $Estado);
  $sentencia->bindParam(":Codigo_postal", $Codigo_postal);
  $sentencia->bindParam(":RFC", $RFC);
  $sentencia->bindParam(":direccion_fac", $direccion_fac);
  $sentencia->bindParam(":razon_social", $razon_social);
  
  
  $sentencia->execute();
  $idventa = $pdo->lastInsertId();



  foreach ($_SESSION['carrito'] as $indice => $producto) {
    $sentencia = $pdo->prepare("INSERT INTO 
`detalleventa` (`id`, `idventa`, `idproducto`, `preciounitario`, `cantidad`, `vendido`, `modelo`) 
VALUES (NULL, $idventa, :idproducto , :preciounitario, :cantidad, '0', :modelo)");
 


 //$sentencia->bindParam(":idventa", $idventa);
    $sentencia->bindParam(":idproducto", $producto['ID']);
    $sentencia->bindParam(":preciounitario", $producto['PRECIO']);
    $sentencia->bindParam(":cantidad", $producto['CANTIDAD']);
    $sentencia->bindParam(":cantidad", $producto['CANTIDAD']);
    $sentencia->bindParam(":modelo", $producto['modelo']);
    $sentencia->execute();
  
 
  }
    //echo "<h3>".$total."</h3>";
 }
?>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
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
            description: "compra de productos a office class $ <?php echo number_format($total, 2); ?>",
            custom: " <?php echo $sid;?>#<?php echo openssl_encrypt($idventa,code,key ); ?>"
          }]
        }
      });
    },
    onAuthorize: function(data, actions) {
      return actions.payment.execute().then(function() {
      //  window.alert('Payment Complete!');
        console.log(data);
        window.location = "verificar.php?paymentToken=" + data.paymentToken +"&paymentID="+data.paymentID;
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