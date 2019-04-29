<?php 
print_r($_GET);
$ClientID="AfHi-y5F8YfvNtP4W4OJxIETtCtGqxUo7ns02btAYgpH1gif6fnpwiubpCe1Z2vEXnFZWg66lXWcaVgZ";
$Secret="EEzdoF1P6DLqGTWdehUSaK9KPtx3nw_bk__CVcZpSWd5B05Zs7PRjdKKqiO4WilpZokim4AxPVwMu9L1";

$Loguin=curl_init("https://api.sandbox.paypal.com/v1/oauth2/token");

curl_setopt($Loguin,CURLOPT_RETURNTRANSFER,TRUE);

curl_setopt($Loguin, CURLOPT_USERPWD, $ClientID.":".$Secret);

curl_setopt($Loguin, CURLOPT_POSTFIELDS,"grant_type=client_credentials");

$Respuesta=curl_exec($Loguin);

print_r($Respuesta);
?>