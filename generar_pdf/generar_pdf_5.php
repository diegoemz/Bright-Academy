<?php
require('../fpdf.php'); // Asegúrate de que la ruta a FPDF sea correcta

$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Consulta para obtener los datos de estudiantes
$sql = "SELECT carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3 FROM estudiantes_5";
$result = $conexion->query($sql);

// Crear un nuevo PDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 16);
$pdf->Cell(0, 10, 'Informe de Estudiantes', 0, 1, 'C');

// Encabezados de la tabla
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(30, 10, 'Carnet', 1);
$pdf->Cell(60, 10, 'Nombre Completo', 1);
$pdf->Cell(30, 10, 'Nota 1', 1);
$pdf->Cell(30, 10, 'Nota 2', 1);
$pdf->Cell(30, 10, 'Nota 3', 1);
$pdf->Ln();

// Variables para calcular el promedio
$totalNotas = 0;
$totalEstudiantes = 0;

if ($result->num_rows > 0) {
    // Recorrer los resultados y agregar las filas al PDF
    while ($row = $result->fetch_assoc()) {
        $pdf->Cell(30, 10, $row["carnet"], 1);
        $pdf->Cell(60, 10, $row["nombre_estudiante"] . " " . $row["apellido_estudiante"], 1);
        $pdf->Cell(30, 10, $row["nota1"], 1);
        $pdf->Cell(30, 10, $row["nota2"], 1);
        $pdf->Cell(30, 10, $row["nota3"], 1);
        $pdf->Ln();

        // Sumar las notas para calcular el promedio
        $totalNotas += (float)$row["nota1"] + (float)$row["nota2"] + (float)$row["nota3"];
        $totalEstudiantes += 1; // Contar cada estudiante una vez
    }
}

// Calcular el promedio
$numeroDeNotas = $totalEstudiantes * 3; // Suponiendo 3 notas por estudiante
$promedio = ($numeroDeNotas > 0) ? ($totalNotas / $numeroDeNotas) : 0;

// Mostrar el promedio en el PDF
$pdf->SetFont('Arial', 'B', 12);
$pdf->Ln(10);
$pdf->Cell(0, 10, 'Promedio de Calificaciones: ' . number_format($promedio, 2), 0, 1, 'C');

// Salida del PDF
$pdf->Output('D', 'Informe_Estudiantes.pdf'); // Descargar el PDF
$conexion->close();
?>
