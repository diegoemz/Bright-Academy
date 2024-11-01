<?php
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Parámetros para la paginación
$estudiantesPorPagina = 20;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $estudiantesPorPagina;

// Consulta para contar el total de estudiantes
$countQuery = "SELECT COUNT(*) as total FROM estudiantes_4";
$countResult = $conexion->query($countQuery);
$totalEstudiantes = $countResult->fetch_assoc()['total'];
$totalPaginas = ceil($totalEstudiantes / $estudiantesPorPagina);

echo '<div class="total-students">Total de estudiantes: ' . $totalEstudiantes . '</div>';

$query = "
    SELECT 
        ROUND(AVG(CAST(promedio_estudiante AS DECIMAL(5,2))), 2) AS promedio_promedios,
        ROUND(AVG(CAST(porcentaje_progreso AS DECIMAL(5,2))), 2) AS promedio_progresos
    FROM 
        estudiantes_4";
$result = $conexion->query($query);

if ($result) {
    $row = $result->fetch_assoc();
    echo '<div style="padding: 20px; font-family: Arial, sans-serif; color: #3CA6A6;">';
    echo '<h2 style="font-size: 24px; color: #024959;">Resumen de Estudiantes</h2>';
    echo '<p style="font-size: 18px; margin: 10px 0; text-align: center;">Promedio de Notas: <span style="font-weight: bold; color: #000;">' . $row['promedio_promedios'] . '</span></p>';
    echo '<p style="font-size: 18px; margin: 10px 0; text-align: center;">Promedio de Progresos: <span style="font-weight: bold; color: #000;">' . $row['promedio_progresos'] . '%</span></p>';
    echo '</div>';
}

echo '<style>
    .pagination {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    .button-1 {
        padding: 10px 20px;
        margin-top: 1em;
        background-color: var(--color-boton);
        color: var(--color-primario);
        text-decoration: none;
        border-radius: 5px;
        font-size: 1em;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }
    .button-1:hover {
        background-color: var(--color-hover);
    }
</style>';

// Consulta para obtener los detalles de los estudiantes con límite y desplazamiento
$query = "SELECT nombre_estudiante, apellido_estudiante, promedio_estudiante, porcentaje_progreso 
          FROM estudiantes_4
          LIMIT $estudiantesPorPagina OFFSET $offset";
$result = $conexion->query($query);

if ($result->num_rows > 0) {
    // Iterar sobre los resultados de la consulta
    while ($row = $result->fetch_assoc()) {
        $nombreCompleto = $row['nombre_estudiante'] . ' ' . $row['apellido_estudiante'];
        $promedio = $row['promedio_estudiante'];
        $progreso = $row['porcentaje_progreso'];

        echo '<div class="student-report">';
        echo '<div class="student-info">';
        echo '<img src="../img/perfil.png" alt="alumno">';
        echo '<h3>' . $nombreCompleto . '</h3>';
        echo '</div>';
        echo '<div class="student-average">Promedio: <span>' . $promedio . '</span></div>';
        echo '<div class="student-progress">Progreso: <span>' . $progreso . '</span></div>';
        echo '</div>';
    }
} else {
    echo '<div class="no-data">No hay datos disponibles.</div>';
}

// Navegación de la paginación
echo '<div class="pagination">';
if ($page > 1) {
    echo '<a class="button-1" href="?page=' . ($page - 1) . '">Anterior</a>';
}
if ($page < $totalPaginas) {
    echo '<a class="button-1" href="?page=' . ($page + 1) . '">Siguiente</a>';
}
echo '</div>';


// Cerrar conexión
$conexion->close();
?>
