<?php
$server = "localhost";
$user = "root";
$pass = "";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Consulta para obtener los datos de estudiantes
$sql = "SELECT carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3 FROM estudiantes_1";
$result = $conexion->query($sql);

// Variables para calcular el promedio
$totalNotas = 0;
$totalEstudiantes = 0;

if ($result->num_rows > 0) {
    // Iniciar tabla HTML
    echo "<table class='table table-light table-striped'>";
    echo "<thead>";
    echo "<tr>";
    echo "<th scope='col'>Carnet</th>";
    echo "<th scope='col'>Nombre Completo</th>";
    echo "<th scope='col'>Nota 1</th>";
    echo "<th scope='col'>Nota 2</th>";
    echo "<th scope='col'>Nota 3</th>";
    echo "</tr>";
    echo "</thead>";
    echo "<tbody>";

    // Recorrer los resultados y construir las filas de la tabla
    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row["carnet"] . "</td>";
        echo "<td>" . $row["nombre_estudiante"] . " " . $row["apellido_estudiante"] . "</td>";
        echo "<td>" . $row["nota1"] . "</td>";
        echo "<td>" . $row["nota2"] . "</td>";
        echo "<td>" . $row["nota3"] . "</td>";
        echo "</tr>";

        // Sumar las notas para calcular el promedio
        $totalNotas += (float)$row["nota1"] + (float)$row["nota2"] + (float)$row["nota3"];
        $totalEstudiantes += 1; // Contar cada estudiante una vez
    }

    echo "</tbody>";
    echo "</table>";

    // Calcular y mostrar el promedio
    $numeroDeNotas = $totalEstudiantes * 3; // Suponiendo 3 notas por estudiante
    $promedio = ($numeroDeNotas > 0) ? ($totalNotas / $numeroDeNotas) : 0;
    echo "<h2 id='promedio'>Promedio de Calificaciones: " . number_format($promedio, 2) . "</h2>";
} else {
    echo "No se encontraron estudiantes.";
}

$conexion->close();
?>
