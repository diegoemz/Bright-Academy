<?php
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";


$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Consulta a la base de datos
$query = "SELECT nombreEstudiante, apellidoEstudiante, idRol FROM estudiante";
$result = $conexion->query($query);

if ($result->num_rows > 0) {
    echo '<section class="info">';
    echo '<table class="tabla">';
    echo '<tr><th>Nombre</th><th>Rol</th></tr>';

    // Iterar sobre los resultados de la consulta
    while ($row = $result->fetch_assoc()) {
        $nombreCompleto = $row['nombreEstudiante'] . ' ' . $row['apellidoEstudiante'];
        $rol = ($row['idRol'] == 1) ? 'Estudiante' : 'Otro'; // Ajustar según tus roles

        echo '<tr>';
        echo '<th><img src="../img/perfil.png" alt="alumno"> ' . $nombreCompleto . '</th>';
        echo '<th>' . $rol . '</th>';
        echo '</tr>';
    }

    echo '</table>';
    echo '</section>';
} else {
    echo "No hay datos disponibles.";
}

// Cerrar conexión
$conexion->close();
?>
