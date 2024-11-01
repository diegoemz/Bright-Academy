<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/cursos_profesores.css">
    <link rel="stylesheet" href="../css/upload.css">
    <title>Curso: 2024 - Desarrollo Web I</title>
</head>
<body> 
    <!-- Encabezado -->
    <header>
        <div class="container">
            <div>
                <img class="icono" src="../img/perfil.png" alt="Perfil de usuario">
                <p class="nombre">Estudiante</p>
            </div>
            <nav class="nav">
                <a href="../main-area-2.html">Área Principal</a>
                <a href="../cursos_estudiantes.php">Cursos</a>
                <a href="../php/logout.php">Cerrar Sesión</a>
            </nav>
        </div>
        <div class="decoration"></div>
    </header>

    <!-- Navegación Secundaria -->
    <section class="navegador2"> 
        <h1>2024 - Desarrollo Web I - Sección 1</h1>
        <nav class="nav2" aria-label="Navegación de curso">
            <a href="../cursos_estudiantes/curso_5.php">Curso</a>
            <a href="../participantes_estudiantes/participantes_5.php">Participantes</a>
            <a href="../calificaciones_estudiantes/calificaciones_estudiantes_5.php">Calificaciones</a>
            <a href="../upload_estudiantes/upload_est_5.html">Cargar Tareas</a>
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

            <h2>Calificaciones Obtenidas</h2>
            <?php include('../mostrar_calificaciones/mostrar_calificaciones_5.php'); ?>
        </div>
    </section>

    <!-- Pie de Página -->
    <footer>
        <p>&copy; BrightAcademy</p>
    </footer>    
</body>
</html>