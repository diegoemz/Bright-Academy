<?php
session_start(); // Asegúrate de iniciar la sesión al principio
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_errno);
} else {
    echo "Conectada con éxito";
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica que se reciban los datos del formulario
    if (isset($_POST['nombre_tarea']) && isset($_POST['calificacion'])) {
        $nombreArchivo = $_POST['nombre_tarea'];
        $notaObtenida = $_POST['calificacion'];

        // Prepara la consulta para insertar en la tabla notas
        $consulta = $conexion->prepare("INSERT INTO notas_5 (nombre_archivo, nota_obtenida) VALUES (?, ?)");
        $consulta->bind_param("sd", $nombreArchivo, $notaObtenida); // "sd" indica que el primer parámetro es un string y el segundo es un double (decimal)

        if ($consulta->execute()) {
            echo "<script>alert('Nota registrada con éxito.');</script>";
        } else {
            echo "<script>alert('Error al guardar en la base de datos.');</script>";
        }

        $consulta->close();
    } else {
        echo "<script>alert('Datos incompletos.');</script>";
    }
}

// Cierra la conexión
$conexion->close();

// Redirige de vuelta al formulario (ajusta la ruta según sea necesario)
echo "<script>window.location.href = '../calificaciones_profesores/calificaciones_profesores_5.php';</script>";
?>
