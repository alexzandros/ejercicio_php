<?php

require_once"conectar.php";

$conexion=conectar();
if(!$conexion)
	die("No conecta");
$resultado=mysqli_query($conexion,"select paciente.nombre, paciente.apellido, 
	enfermedad.descripcion as enfermedad from paciente left join padece on 
	paciente.id_paciente=padece.id_paciente left join enfermedad on 
	enfermedad.id_enfermedad=padece.id_enfermedad order by apellido;");
include_once"plantilla_tabla.php";
?>
