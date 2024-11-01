<?php
require_once('../fpdf.php'); // Asegúrate de que la ruta sea correcta

// Crear nuevo PDF
$pdf = new TCPDF();

// Configurar el PDF
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Tu Nombre');
$pdf->SetTitle('Informe de Estudiantes');
$pdf->SetSubject('Informe de Notas');

// Añadir una página
$pdf->AddPage();

// Establecer fuente (incluyendo soporte para UTF-8)
$pdf->SetFont('helvetica', '', 12);

// Conectar a la base de datos
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

// Encabezados de la tabla
$html = '<table border="1" cellpadding="5">
<tr>
    <th>Carnet</th>
    <th>Nombre Completo</th>
    <th>Nota 1</th>
    <th>Nota 2</th>
    <th>Nota 3</th>
</tr>';

$totalNotas = 0;
$totalEstudiantes = 0;

if ($result->num_rows > 0) {
    // Recorrer los resultados y agregar las filas al HTML
    while ($row = $result->fetch_assoc()) {
        $html .= '<tr>
            <td>' . $row["carnet"] . '</td>
            <td>' . $row["nombre_estudiante"] . ' ' . $row["apellido_estudiante"] . '</td>
            <td>' . $row["nota1"] . '</td>
            <td>' . $row["nota2"] . '</td>
            <td>' . $row["nota3"] . '</td>
        </tr>';

        // Sumar las notas para calcular el promedio
        $totalNotas += (float)$row["nota1"] + (float)$row["nota2"] + (float)$row["nota3"];
        $totalEstudiantes += 3; // Contar cada nota
    }
}

// Cerrar la tabla HTML
$html .= '</table>';

// Calcular el promedio
$promedio = ($totalEstudiantes > 0) ? ($totalNotas / $totalEstudiantes) : 0;

// Mostrar el promedio en el PDF
$html .= '<h2>Promedio de Calificaciones: ' . number_format($promedio, 2) . '</h2>';

// Imprimir el HTML en el PDF
$pdf->writeHTML($html, true, false, true, false, '');

// Salida del PDF
$pdf->Output('Informe_Estudiantes.pdf', 'D'); // Descargar el PDF
$conexion->close();
?>
