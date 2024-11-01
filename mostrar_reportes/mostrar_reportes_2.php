<?php
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$estudiantesPorPagina = 20;
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $estudiantesPorPagina;

// Consulta para contar el total de estudiantes
$countQuery = "SELECT COUNT(*) as total FROM estudiantes_2";
$countResult = $conexion->query($countQuery);
$totalEstudiantes = $countResult->fetch_assoc()['total'];
$totalPaginas = ceil($totalEstudiantes / $estudiantesPorPagina);

echo '<div class="total-students">Total de estudiantes: ' . $totalEstudiantes . '</div>';

// Consulta para los promedios generales
$query = "
    SELECT 
        ROUND(AVG((CAST(nota1 AS DECIMAL) + CAST(nota2 AS DECIMAL) + CAST(nota3 AS DECIMAL)) / 3), 2) AS promedio_general
    FROM 
        estudiantes_2";
$result = $conexion->query($query);

$promedioCalificaciones = 0;

if ($result) {
    $row = $result->fetch_assoc();
    $promedioCalificaciones = $row['promedio_general'];
}

echo '<div style="padding: 20px; font-family: Arial, sans-serif; color: #012E40;">';
echo '<h2 style="font-size: 24px; color: #024959;">Resumen de Estudiantes</h2>';
echo '<p style="font-size: 18px; margin: 10px 0; text-align: center;">Promedio General de Notas: <span style="font-weight: bold; color: #000;">' . $promedioCalificaciones . '</span></p>';
echo '<p style="font-size: 18px; margin: 10px 0; text-align: center;">Promedio General de Porcentaje: <span style="font-weight: bold; color: #000;">' . "80%" . '</span></p>';
echo '</div>';
?>

<div class="charts-container">
    <canvas id="graficoPromedioNotas"></canvas>
    <canvas id="graficoPromedioPorcentaje"></canvas>
</div><br><br><br>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
document.addEventListener("DOMContentLoaded", function () {
    var ctxNotas = document.getElementById('graficoPromedioNotas').getContext('2d');
    new Chart(ctxNotas, {
        type: 'doughnut',
        data: {
            labels: ['Promedio de Notas', 'Restante'],
            datasets: [{
                data: [<?php echo $promedioCalificaciones; ?>, 10 - <?php echo $promedioCalificaciones; ?>],
                backgroundColor: ['#3CA6A6', '#E0E0E0'],
                hoverBackgroundColor: ['#45bdbd', '#f0f0f0']
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: true,
            plugins: {
                legend: {
                    display: true,
                    position: 'bottom'
                }
            }
        }
    });

    var ctxPorcentaje = document.getElementById('graficoPromedioPorcentaje').getContext('2d');
    new Chart(ctxPorcentaje, {
        type: 'doughnut',
        data: {
            labels: ['Promedio de Porcentaje', 'Restante'],
            datasets: [{
                data: [80, 20],
                backgroundColor: ['#012E40', '#94C1FF'],
                hoverBackgroundColor: ['#024959', '#3CA6A6']
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: true,
            plugins: {
                legend: {
                    display: true,
                    position: 'bottom'
                }
            }
        }
    });
});
</script>

<?php
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
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: #024959;
        color: white;
    }
    .no-data {
        text-align: center;
        font-size: 18px;
        color: #777;
    }
</style>';

// Consulta para obtener los detalles de los estudiantes con límite y desplazamiento
$query = "SELECT carnet, nombre_estudiante, apellido_estudiante, 
                 CAST(nota1 AS DECIMAL) AS nota1, 
                 CAST(nota2 AS DECIMAL) AS nota2, 
                 CAST(nota3 AS DECIMAL) AS nota3 
          FROM estudiantes_2 
          LIMIT $estudiantesPorPagina OFFSET $offset";
$result = $conexion->query($query);

echo '<table>';
echo '<thead>';
echo '<tr>';
echo '<th>Carnet</th>';
echo '<th>Nombre Completo</th>';
echo '<th>Tarea 1</th>';
echo '<th>Tarea 2</th>';
echo '<th>Parcial</th>';
echo '<th>Promedio</th>';
echo '</tr>';
echo '</thead>';
echo '<tbody>';

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $carnet = $row['carnet'];
        $nombreCompleto = $row['nombre_estudiante'] . ' ' . $row['apellido_estudiante'];
        $nota1 = $row['nota1'];
        $nota2 = $row['nota2'];
        $nota3 = $row['nota3'];
        $promedio = round(($nota1 + $nota2 + $nota3) / 3, 2);

        echo '<tr>';
        echo '<td>' . $carnet . '</td>';
        echo '<td>' . $nombreCompleto . '</td>';
        echo '<td>' . $nota1 . '</td>';
        echo '<td>' . $nota2 . '</td>';
        echo '<td>' . $nota3 . '</td>';
        echo '<td>' . $promedio . '</td>';
        echo '</tr>';
    }
} else {
    echo '<tr><td colspan="5" class="no-data">No hay datos disponibles.</td></tr>';
}

echo '</tbody>';
echo '</table>';

// Navegación de la paginación
echo '<div class="pagination">';
if ($page > 1) {
    echo '<a class="button-1" href="?page=' . ($page - 1) . '">Anterior</a>';
}
if ($page < $totalPaginas) {
    echo '<a class="button-1" href="?page=' . ($page + 1) . '">Siguiente</a>';
}
echo '</div>';

$conexion->close();
?>
