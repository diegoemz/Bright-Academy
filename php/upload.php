<?php
session_start(); // Asegúrate de iniciar la sesión al principio
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if($conexion->connect_errno){
    die("conexion fallida". $conexion->connect_errno);
} else {
    echo"conectada con exito";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica si se subió un archivo
    if (isset($_FILES['file']) && $_FILES['file']['error'] == UPLOAD_ERR_OK) {
        $nombreArchivo = $_FILES['file']['name'];
        $rutaTemporal = $_FILES['file']['tmp_name'];
        $nombreArchivoInput = $_POST['file_name'];

        // Define la ruta donde se guardará el archivo
        $rutaDestino = "../uploads/" . $nombreArchivo;

        // Mueve el archivo a la carpeta de destino
        if (move_uploaded_file($rutaTemporal, $rutaDestino)) {
            // Guarda la información del archivo en la base de datos
            $consulta = $conexion->prepare("INSERT INTO files (nombre_archivo, ruta_archivo) VALUES (?, ?)");
            $consulta->bind_param("ss", $nombreArchivoInput, $rutaDestino);
            
            if ($consulta->execute()) {
                echo "<script>alert('Archivo subido con éxito.');</script>";
            } else {
                echo "<script>alert('Error al guardar en la base de datos.');</script>";
            }

            $consulta->close();
        } else {
            echo "<script>alert('Error al mover el archivo.');</script>";
        }
    } else {
        echo "<script>alert('No se subió ningún archivo o hubo un error.');</script>";
    }
}

// Cierra la conexión
$conexion->close();

// Redirige de vuelta al formulario
echo "<script>window.location.href = '../upload_pages/upload.html';</script>";
?>
