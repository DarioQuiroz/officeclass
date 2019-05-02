<?php include 'php/config.php';
include 'php/conexion.php';
include 'carrito.php';
include 'cavecera.php';
?>
<?php
//print_r($_GET);
$ClientID = "AfHi-y5F8YfvNtP4W4OJxIETtCtGqxUo7ns02btAYgpH1gif6fnpwiubpCe1Z2vEXnFZWg66lXWcaVgZ";
$Secret = "EEzdoF1P6DLqGTWdehUSaK9KPtx3nw_bk__CVcZpSWd5B05Zs7PRjdKKqiO4WilpZokim4AxPVwMu9L1";

$Loguin = curl_init("https://api.sandbox.paypal.com/v1/oauth2/token");

curl_setopt($Loguin, CURLOPT_RETURNTRANSFER, TRUE);

curl_setopt($Loguin, CURLOPT_USERPWD, $ClientID . ":" . $Secret);

curl_setopt($Loguin, CURLOPT_POSTFIELDS, "grant_type=client_credentials");

$Respuesta = curl_exec($Loguin);


$objRespuesta = json_decode($Respuesta);

$AccessToken = $objRespuesta->access_token;

//print_r($AccessToken);

$venta = curl_init("https://api.sandbox.paypal.com/v1/payments/payment/" . $_GET['paymentID']);

curl_setopt($venta, CURLOPT_HTTPHEADER, array("Content-Type: application/json", "Authorization: Bearer " . $AccessToken));
curl_setopt($venta, CURLOPT_RETURNTRANSFER, TRUE);



$RespuestaVenta = curl_exec($venta);
//print_r($RespuestaVenta);
$objDatosTransaccion = json_decode($RespuestaVenta);


$state = $objDatosTransaccion->state;

$emai = $objDatosTransaccion->payer->payer_info->email;

$total = $objDatosTransaccion->transactions[0]->amount->total;

$currency = $objDatosTransaccion->transactions[0]->amount->currency;
$custom = $objDatosTransaccion->transactions[0]->custom;



$clave = explode("#", $custom);
$SID = $clave[0];

$claveVenta = openssl_decrypt($clave[1], code, key);

curl_close($venta);
curl_close($Loguin);


if ($state == "approved") {
    $mensajePaypal = "<h3>pago aprovado<h3>";
    $sentencia = $pdo->prepare("UPDATE `tblventas` SET `paypaldatos` = :paypaldatos, `status` = 'APROVADO' WHERE `id` = :ID;");
    $sentencia->bindParam(":ID", $claveVenta);
    $sentencia->bindParam(":paypaldatos", $RespuestaVenta);
    $sentencia->execute();


    $sentencia = $pdo->prepare("UPDATE `tblventas` SET `status` = 'PAGADO'
                                WHERE `id` = :ID
                                AND  `total`= :TOTAL;");
    $sentencia->bindParam(":ID", $claveVenta);
    $sentencia->bindParam(":TOTAL", $total);
    $sentencia->execute(); 
  
    $completado = $sentencia->rowCount();
 

} else {
    $mensajePaypal = "<h3>hay un problema con el pago<h3>";
}
echo ($mensajePaypal);

?>
<div class="jumbotron">
    <h1 class="display-4"> ¡ listo ! </h1>

    <hr class="my-4">
    <p class="lead"> <?php echo $mensajePaypal; ?></p>

    <p>
        <?php if ($completado >= 1) {

            $sentencia = $pdo->prepare(" SELECT * FROM detalleventa WHERE detalleventa.idventa=:ID");
            $sentencia->bindParam(":ID", $claveVenta);
            $sentencia->execute();
            $listaProductos = $sentencia->fetchALL(PDO::FETCH_ASSOC);
            
            
            
            
             
             $sentencia1 = $pdo->prepare("SELECT correo, nombre, apellido, telefono, direccion1,
             ciudad, estado, codigo_postal, rfc, direccion_factura, razon_social from tblventas where id=:ID");
            $sentencia1->bindParam(":ID", $claveVenta);
            $sentencia1->execute();
            $listaProductos1 = $sentencia1->fetchALL(PDO::FETCH_ASSOC);
   ?>

    </div> <h1 class="display-4"> ¡ productos comprados ! </h1>
    <?php
 foreach ($_SESSION['carrito'] as $indice => $producto) {

    ?>
    <div class="col-lg-3 col-md-4 col-sm-6">

        <div class="shop-item">
            <div class="shop-thumbnail">

                <img src="img/FOTOS OFFICE CLASS/todas/<?php echo  $producto['modelo'];  ?>.png" style="width:190px; height: 318px;" alt="Shop item">
                <h3 class="shop-item-title"><?php echo  $producto['nombre'];  ?></h3>


            </div>

        </div>

    </div>
    
    <?php
}


      print_r($listaProductos);
         print_r($listaProductos1);



/*envio de correos*/
$destino="gil.q.c.dq@gmail.com";
$nombre="dario";
$correo="hola";
$telefono="4251052913";
$asunto="sin asunto";
$mensaje=$sentencia;
$contenido="Nombre: ".$nombre. "\nCorreo: " .$correo. "\nTelefono: " .$telefono."\nMensaje: " .$mensaje;
mail($destino,$asunto,$contenido);


$destino="gil.q.c.dq@gmail.com";
$nombre="dario";
$correo="hola";
$telefono="4251052913";
$asunto="sin asunto";
$mensaje=$sentencia;
$contenido="Nombre: ".$nombre. "\nCorreo: " .$correo. "\nTelefono: " .$telefono."\nMensaje: " .$mensaje;
mail($destino,$asunto,$listaProductos);

        }
        ?>

    </p>
