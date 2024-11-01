<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/cursos_profesores.css">
    <title>Participantes - Desarrollo Web I</title>
</head>
<body>
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
        <h1>2024 - Desarrollo Web I - Sección 1</h1>
        <nav class="nav2" aria-label="Navegación de curso">
            <a href="../cursos_profesores/curso_profe_5.php">Curso</a>
            <a href="../participantes_profesores/participantes_5_profe.php">Participantes</a>
            <a href="../calificaciones_profesores/calificaciones_profesores_5.php">Calificaciones</a>
            <a href="../upload_pages/upload_5.html">Subir Material</a>
        </nav>
    </section>

    <?php include('../php/mostrar_participantes.php'); ?>
    
    <footer>
        <p>&copy; BrightAcademy</p>
    </footer> 
</body>
</html>