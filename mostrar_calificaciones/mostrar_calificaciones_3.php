<?php
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Consulta para obtener las notas
$consulta = "SELECT * FROM notas_3"; 
$resultado = $conexion->query($consulta);

// Consulta para calcular el promedio de notas
$consultaPromedio = "SELECT ROUND(AVG(nota_obtenida), 1) AS promedio_notas FROM notas_3";
$resultadoPromedio = $conexion->query($consultaPromedio);
$promedio = $resultadoPromedio->fetch_assoc()['promedio_notas'];

// Verifica si hay notas
if ($resultado->num_rows > 0) {
    echo '<div style="padding: 5px 20px; font-family: Arial, sans-serif; color: #333;">';
    echo '<p style="font-size: 18px; margin-bottom: 20px;">Promedio de Calificaciones: <span style="font-weight: bold; color: #012E40;">' . $promedio . '</span></p>';
    echo '<div class="notas-container" style="display: flex; flex-wrap: wrap; gap: 20px;">';

    // Estilo para cada nota
    while ($row = $resultado->fetch_assoc()) {
        $nombreTarea = htmlspecialchars($row['nombre_archivo']);
        $calificacion = $row['nota_obtenida'];
        $fechaSubida = $row['fecha_subida'];

        echo '
        <article style="padding: 15px; width: 250px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
            <h3 style="font-size: 20px; color: #333; margin: 0;">' . $nombreTarea . '</h3>
            <p style="font-size: 16px; color: #555;">Calificación: <span style="font-weight: bold; color: #012E40;">' . $calificacion . '</span></p>
            <p style="font-size: 14px; color: #777;">Fecha de Subida: ' . $fechaSubida . '</p>
        </article>';
    }
    
    echo '</div>';
    echo '</div>';
} else {
    echo '<p>No hay notas disponibles.</p>';
}

$conexion->close();
?>
