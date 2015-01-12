<?php
function conectar(){

$conexion = mysqli_connect("localhost","carlos","","ejercicio");
if($conexion)
	return $conexion;
else
	return false;
}

function cerrar()
{
	mysqli_close($conexion);
}

?>
