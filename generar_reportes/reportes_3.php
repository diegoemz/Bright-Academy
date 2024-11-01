<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BrightAcademy</title>
    <link rel="stylesheet" href="../css/menu.css">
    <link rel="stylesheet" href="../css/cursos.css">
    <link rel="stylesheet" href="../css/reportes.css">
    <link rel="stylesheet" href="../css/tabla.css">
    <link rel="icon" href="../../img/educacion.png" type="image/x-icon">
    <script src="../jsReportes/db_3.js"></script> <!-- Asegúrate de que esta ruta sea correcta -->
</head>
<body onload="obtenerEstudiantes(); graficoProgreso();">
    <header>
        <div class="container">
            <img class="icono" src="../img/perfil.png" alt="Perfil usuario">
            <p class="nombre">Admin</p>
            <nav class="nav">
                <a href="../main-area.html">Área Principal</a>
                <a href="../cursos-area.html">Cursos</a>
            </nav>
        </div>
        <div class="decoration"></div>
    </header> 
    <section class="vista-cursos">
        <div id="titulo">
            <h1>Reporte de rendimiento</h1>
            <h1>Base de Datos I</h1>
        </div>

        <a href="../generar_pdf/generar_pdf_3.php" class="btn btn-primary">Descargar Informe en PDF</a>

        <div id="graficos">
            <article>
                <div class="container-graficos">
                    <div id="grafico-progreso">
                        <span id="valor-progreso">0%</span>
                    </div>
                </div>
                <h2>Promedio de progreso</h2>
            </article>
            <article>
                <div class="container-graficos">
                    <div id="grafico-calificacion">
                        <span id="valor-calificacion">0</span>
                    </div>
                </div>
                <h2>Promedio de calificaciones</h2>
            </article>
        </div>
    </section>
    <section id="tabla" class="vista-cursos">
        <h1>Listado general</h1>
        <div id="containerEstudiantes"></div>
    </section>
</body>
<footer>
    <div class="cont">
        <p>&copy; BrightAcademy</p>
    </div>
</footer>
</html>
