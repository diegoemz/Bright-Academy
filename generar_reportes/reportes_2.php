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
        <h2>Reporte de Cursos - Requerimientos</h2>
        <div style="text-align: center;">
            <a href="../generar_pdf/generar_pdf_2.php" class="button" style="display: inline-block; padding: 10px 20px; background-color: #007bff; color: #fff; text-decoration: none; border-radius: 5px; text-align: center;">
                Descargar Informe en PDF
            </a>
        </div>
        <div class="report-container">
            <?php include('../mostrar_reportes/mostrar_reportes_2.php'); ?>
        </div>
    </section>
    <footer>
        <p>&copy; BrightAcademy</p>
    </footer> 
</body>
</html>
