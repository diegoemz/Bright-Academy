<?php
$server = "localhost";
$user = "root";
$pass = "root";
$db = "BrightAcademy";

$conexion = new mysqli($server, $user, $pass, $db);

if ($conexion->connect_errno) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$consulta = "SELECT * FROM files_3"; 
$resultado = $conexion->query($consulta);

if ($resultado->num_rows > 0) {
    // Agregar estilos CSS dentro del echo
    echo '
    <style>
        #progress-container {
            margin: 20px 0;
            text-align: center;
        }

        #progress-container .tit {
            color: #012E40;
            font-size: 2em;
            margin-top: 1.5em;
            padding-bottom: 0.5em;
        }

        #progress-bar {
            width: 80%; /* Ajusta el ancho si es necesario */
            height: 20px;
            background-color: #012E40;
            border-radius: 5px;
            display: inline-block;
            vertical-align: middle;
        }

        #progress-percentage {
            font-size: 1em;
            color: #012E40;
            display: inline-block;
            vertical-align: middle;
            margin-left: 10px;
        }

        /* Estilos para la barra de progreso en navegadores */
        progress::-webkit-progress-bar {
            background-color: #5AAEE6;
            border-radius: 5px;
        }

        progress::-webkit-progress-value {
            background-color: #4caf50;
            border-radius: 5px;
        }

        progress::-moz-progress-bar {
            background-color: #4caf50;
            border-radius: 5px;
        }
    </style>
    ';

    // Código para mostrar progreso y archivos
    echo '<div id="progress-container">
            <label for="progress-bar" class="tit">Progreso </label><br><br>
            <progress id="progress-bar" value="0" max="100"></progress>
            <span id="progress-percentage">0%</span>
          </div>';

    while ($row = $resultado->fetch_assoc()) {
        $filePath = $row['ruta_archivo'];
        $fileName = htmlspecialchars($row['nombre_archivo']);

        echo '
        <article class="vista">
            <div class="div-1">
                <img src="../img/pdf.png" alt="Archivo">
                <h3>' . $fileName . '</h3>
                <a href="../uploads_3/' . $filePath . '" download class="download-btn">Descargar</a><br>
                <input type="checkbox" class="progress-check" onclick="updateProgress()">
            </div>
        </article>';
    }
} else {
    echo '<p>No hay archivos disponibles.</p>';
}

$conexion->close();
?>

<script>
// Función para actualizar la barra de progreso y el porcentaje
function updateProgress() {
    const checks = document.querySelectorAll(".progress-check");
    const progressBar = document.getElementById("progress-bar");
    const progressPercentage = document.getElementById("progress-percentage");
    
    let checkedCount = 0;
    checks.forEach(check => {
        if (check.checked) {
            checkedCount++;
        }
    });
    
    const progress = (checkedCount / checks.length) * 100;
    progressBar.value = progress;
    progressPercentage.textContent = Math.round(progress) + "%";
}
</script>
