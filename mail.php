	
<?php
	
	if(!empty($_POST)){
		$destino="gil.q.c.dq@gmail.com";
$nombre=$_POST['Nombrereg'];
$correo=$_POST['Emailreg'];
$asunto="ESTE ES EL ASUNTO";
$contenido="Nombre: ".$nombre. "\nCorreo: " .$correo;

		$captcha = $_POST['g-recaptcha-response'];
		
		$secret = '6LdD9J0UAAAAAGlV9aDFfSJaf0peH1ya6Pk-Tb7r';
		
		if(!$captcha){
            ?>
            <script type="text/javascript">
            alert("Verifica correctamente el recaptcha");
           window.location.href="http://paginamuestra.info/office/index.php";
            </script>
            <?php
			
			} else {
			
			$response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$captcha");
			
			$arr = json_decode($response, TRUE);
			
			if($arr['success'])
			{
                mail($destino,$asunto,$contenido);
                ?>
                <script type="text/javascript">
                alert("Tu mensaje ha sido enviado éxitosamente");
                window.location.href="http://paginamuestra.info/office/index.php";
                </script>
                <?php
                
				} else {
                    ?>
                    <script type="text/javascript">
                    alert("Verifica correctamente el recaptcha");
                    window.location.href="http://paginamuestra.info/office/index.php";
                    </script>
                    <?php
			}
		}
	}
?>




