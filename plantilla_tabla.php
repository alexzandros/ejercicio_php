<!DOCTYPE html>

<html>
	<head>
		<link rel="stylesheet" href="css/estilo.css" />
		<title>Datos de la tabla</title>
		<meta charset="utf-8"/>
	</head>
	<body>
		<header>
			<img alt="Carlos Roberto Rojas" src="img/bannerCRRC.png" />
		</header>
		<table border="1">
			<thead>
				<tr>
					<th>NOMBRE</th><th>APELLIDO</th><th>ENFERMEDAD</th>
				</tr>
			</thead>
			<tbody>
			
			
			<?php
				foreach ($resultado as $elemento)
				{
					echo "<tr><td>".utf8_encode($elemento["nombre"])."</td><td>".
					utf8_encode($elemento["apellido"]).
					"</td><td>".utf8_encode($elemento["enfermedad"])."</td></tr>\n";				
				}
			?>
			</tbody>
		</table>
	<footer>
		<nav class="navegacion">
			<ul>
				<li><a href="index.php">Ver la lista de enfermedades.</a></li>
				<li><a href="captura_datos.html">Ingresar paciente.</a></li>
				<li><a href="index.html">Inicio</a></li>
			</ul>
		</nav>
	</footer>

	</body>
</html>
