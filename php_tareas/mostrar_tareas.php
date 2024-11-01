<?php
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";


$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

// Consulta para obtener los archivos
$consulta = "SELECT * FROM tarea"; 
$resultado = $conexion->query($consulta);

// Verifica si hay archivos
if ($resultado->num_rows > 0) {
    while ($row = $resultado->fetch_assoc()) {
        $filePath = $row['ruta_archivo']; // Asegúrate de que este sea el nombre de la columna correcta
        $fileName = htmlspecialchars($row['nombre_archivo']); // Escapar el nombre del archivo

        echo '
        <article class="vista">
            <div class="div-1">
                <img src="../img/pdf.png" alt="Archivo">
                <h3>' . $fileName . '</h3>
                <a href="../uploads_est_/upload_est/' . $filePath . '" download class="download-btn">Descargar</a>
            </div>
        </article>';
    }
} else {
    echo '<p>No hay archivos disponibles.</p>';
}

$conexion->close();
?>
