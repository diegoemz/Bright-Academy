<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/cursos_profesores.css">
    <link rel="stylesheet" href="../css/upload.css">
    <link rel="stylesheet" href="../css/formulario_calificaciones.css">
    <title>Curso: 2024 - Desarrollo Web I</title>
</head>
<body> 
    <!-- Encabezado -->
    <header>
        <div class="container">
            <div>
                <img class="icono" src="../img/perfil.png" alt="Perfil de usuario">
                <p class="nombre">Profesor</p>
            </div>
            <nav class="nav">
                <a href="../main-area-2.html">Área Principal</a>
                <a href="../cursos_profesores.php">Cursos</a>
                <a href="../php/logout.php">Cerrar Sesión</a>
            </nav>
        </div>
        <div class="decoration"></div>
    </header>

    <!-- Navegación Secundaria -->
    <section class="navegador2"> 
        <h1>2024 - Desarrollo Web I - Sección 1</h1>
        <nav class="nav2" aria-label="Navegación de curso">
            <a href="../cursos_profesores/curso_profe_5.php">Curso</a>
            <a href="../participantes_profesores/participantes_5_profe.php">Participantes</a>
            <a href="../calificaciones_profesores/calificaciones_profesores_5.php">Calificaciones</a>
            <a href="../upload_pages/upload_5.html">Subir Material</a>
        </nav>
    </section>

    <!-- Contenido de Cursos -->
    <section class="cursos">
        <div class="cont">
            <h2>General</h2>
            <article class="vista">
                <div class="div-1">
                    <img src="../img/anuncio.png" alt="Imagen de aviso">
                    <h3>Avisos</h3>
                </div>
            </article>

            <h2>Tareas Cargadas</h2>
            
            <!-- Inclusión de archivos PHP -->
            <?php include('../php_tareas/mostrar_tareas_5.php'); ?>

            <div class="container">
                <h1>Registro de Tareas</h1>
                
                <form action="../notas_profesores/notas_profesores_5.php" method="POST">
                    <label for="nombre_tarea">Nombre de la Tarea:</label>
                    <input type="text" id="nombre_tarea" name="nombre_tarea" required>
                    
                    <label for="calificacion">Calificación (0 a 10):</label>
                    <input type="number" id="calificacion" name="calificacion" min="0" max="10" required>
                    
                    <button type="submit" class="upload-btn">Subir</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Pie de Página -->
    <footer>
        <p>&copy; BrightAcademy</p>
    </footer>    
</body>
</html>