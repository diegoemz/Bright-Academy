<?php
session_start();

$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

// Verifica si la conexión falló
if ($conexion->connect_errno) {
    header("Location: ../index.html?error=conexion");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $usuario = $conexion->real_escape_string(trim($_POST["username"]));
    $contrasenia = $conexion->real_escape_string(trim($_POST["password"]));

    // Función para verificar las credenciales en una tabla
    function verificarCredenciales($conexion, $tabla, $campoUsuario, $campoContrasenia, $usuario, $contrasenia) {
        $consulta = $conexion->prepare("SELECT 1 FROM `$tabla` WHERE `$campoUsuario` = ? AND `$campoContrasenia` = ?");
        $consulta->bind_param("ss", $usuario, $contrasenia);
        $consulta->execute();
        $resultado = $consulta->get_result();
        $consulta->close();
        return $resultado->num_rows === 1;
    }

    // Verifica en cada tabla
    if (verificarCredenciales($conexion, "estudiante", "nombreEstudiante", "contrasenia", $usuario, $contrasenia)) {
        $_SESSION['usuario'] = $usuario;
        header("Location: ../cursos_estudiantes.php");
    } elseif (verificarCredenciales($conexion, "profesor", "nombreProfesor", "contrasenia", $usuario, $contrasenia)) {
        $_SESSION['usuario'] = $usuario;
        header("Location: ../cursos_profesores.php");
    } elseif (verificarCredenciales($conexion, "administrador", "nombreAdmin", "contrasenia", $usuario, $contrasenia)) {
        $_SESSION['usuario'] = $usuario;
        header("Location: ../cursos_admin.php");
    } else {
        header("Location: ../index.html?error=credenciales");
    }
    exit();
}

$conexion->close();
?>