<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/cursos_profesores.css">
    <link rel="stylesheet" href="../css/upload.css">
    <title>Curso: 2024 - Requerimientos</title>
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
                <a href="../main-area.html">Área Principal</a>
                <a href="../cursos_profesores.php">Cursos</a>
                <a href="../php/logout.php">Cerrar Sesión</a>
            </nav>
        </div>
        <div class="decoration"></div>
    </header>

    <!-- Navegación Secundaria -->
    <section class="navegador2"> 
        <h1>2024 - Requerimientos - Sección 1</h1>
        <nav class="nav2" aria-label="Navegación de curso">
            <a href="../cursos_profesores/curso_profe_2.php">Curso</a>
            <a href="../participantes_profesores/participantes_2_profe.php">Participantes</a>
            <a href="../calificaciones_profesores/calificaciones_profesores_2.php">Calificaciones</a>
            <a href="../upload_pages/upload_2.html">Subir Material</a>
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

            <h2>Semana 1</h2>
            
            <!-- Inclusión de archivos PHP -->
            <?php include('../php/mostrar_archivos_estudiante_2.php'); ?>
        </div>
    </section>

    <!-- Pie de Página -->
    <footer>
        <p>&copy; BrightAcademy</p>
    </footer>    
</body>
</html>