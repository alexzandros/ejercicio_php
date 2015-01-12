<?php
	require_once"conectar.php";
	
	$conexion=conectar(	);
	if ($conexion)
	{
		$nombre=$_POST["txt_nombre"];
		$apellido=$_POST["txt_apellido"];
		$documento=$_POST["txt_documento"];
		$direccion=$_POST["txt_direccion"];
		$telefono=$_POST["txt_telefono"];
		$cadena="insert into paciente(nombre,apellido,direccion,telefono,
		documento_paciente) 
		values('$nombre','$apellido','$direccion','$telefono','$documento')";
		if(mysqli_query($conexion,$cadena))
			header("Location:index.php");
		else
			echo mysqli_error($conexion);
	}
	else
		echo "nop";
?>
