<?php
$servidor="mysql:dbname=".bd.";host=".servidor;
try{
$pdo=new PDO($servidor, usuario, password,
array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));
//echo "<script>alert ('conectado')</script>";
}
catch(PDOException $e){
   // echo "<script>alert('error')</script>";

}





$link = mysqli_connect("localhost", "root", "", "tienda");

/* verificar la conexión */
if (mysqli_connect_errno()) {
    printf("Conexión fallida: %s\n", mysqli_connect_error());
    exit();
}
?>