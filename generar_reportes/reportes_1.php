<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/reportes.css">
    <title>Participantes</title>
</head>
<body>
    <header>
        <div class="container">
            <div>
                <img class="icono" src="../img/perfil.png" alt="Perfil de usuario">
                <p class="nombre">Administrador</p>
            </div>
            <nav class="nav">
                <a href="../main-area-3.html">Área Principal</a>
                <a href="../cursos_admin.php">Cursos</a>
                <a href="../php/logout.php">Cerrar Sesión</a>
            </nav>
        </div>
        <div class="decoration"></div>
    </header>
    <section class="cursos">
        <br><br><br>
        <h2>Reporte de Cursos - Pruebas de Software</h2>
        <div class="report-container">
            <?php include('../mostrar_reportes/mostrar_reportes.php'); ?>
        </div>
    </section>
    <footer>
        <p>&copy; BrightAcademy</p>
    </footer> 
</body>
</html>
