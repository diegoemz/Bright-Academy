<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BrightAcademy</title>
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/manage_courses.css">
</head>

<body>
    <header>
        <div class="container">
            <div>
                <img class="icono" src="../img/perfil.png" alt="Perfil de usuario">
                <p class="nombre"> Estudiante </p>
            </div>
            <nav class="nav">
                <a href="./main-area-2.html">Área Principal</a>
                <a href="#">Cursos</a>
                <a href="php/logout.php">Cerrar Sesión</a>
            </nav>
        </div>
        <div class="decoration"></div>
    </header>

    <main>
        <section class="info">
            <h1>Vista general de los cursos</h1>
            <div class="cont">
                <article class="vista" id="course-1">
                    <div class="div-1">
                        <img src="./img/fondo-abstracto.jpg" alt="Fondo abstracto">
                        <h2>2024 - Pruebas de Software</h2>
                        <h3>Estudiante</h3>
                    </div>
                    <div class="linea"></div>
                    <div class="div-2">
                        <h2><span>Información general:</span></h2>
                        <ul>
                            <li><span class="bold">Profesor:</span> Patricia Rodríguez Polanco</li>
                            <li><span class="bold">Correo electrónico:</span> <span
                                    class="decoration-1">patricia.rodriguez@esen.edu.sv</span></li>
                            <li><span class="bold">Participantes:</span> 47 participantes</li>
                        </ul>
                        <a href="cursos_estudiantes/curso_1.php" class="button">Ver Curso</a>
                    </div>
                </article>
                <article class="vista" id="course-2">
                    <div class="div-1">
                        <img src="./img/fondo-cursos.png" alt="Fondo abstracto">
                        <h2>2024 - Requerimientos</h2>
                        <h3>Estudiante</h3>
                    </div>
                    <div class="linea"></div>
                    <div class="div-2">
                        <h2><span>Información general:</span></h2>
                        <ul>
                        <li><span class="bold">Profesor:</span> Patricia Rodríguez Polanco</li>
                            <li><span class="bold">Correo electrónico:</span> <span
                                    class="decoration-1">patricia.rodriguez@esen.edu.sv</span></li>
                            <li><span class="bold">Participantes:</span> 44 participantes</li>
                        </ul>
                        <a href="cursos_estudiantes/curso_2.php" class="button">Ver Curso</a>
                    </div>
                </article>
                <article class="vista" id="course-3">
                    <div class="div-1">
                        <img src="./img/fondo-formas.jpg" alt="Fondo abstracto">
                        <h2>2024 - Base de Datos I</h2>
                        <h3>Estudiante</h3>
                    </div>
                    <div class="linea"></div>
                    <div class="div-2">
                        <h2><span>Información general:</span></h2>
                        <ul>
                        <li><span class="bold">Profesor:</span> Patricia Rodríguez Polanco</li>
                            <li><span class="bold">Correo electrónico:</span> <span
                                    class="decoration-1">patricia.rodriguez@esen.edu.sv</span></li>
                            <li><span class="bold">Participantes:</span> 50 participantes</li>
                        </ul>
                        <a href="cursos_estudiantes/curso_3.php" class="button">Ver Curso</a>
                    </div>
                </article>
                <article class="vista" id="course-4">
                    <div class="div-1">
                        <img src="./img/fondo-vector.jpg" alt="Fondo abstracto">
                        <h2>2024 - Pilares de Liderazgo</h2>
                        <h3>Estudiante</h3>
                    </div>
                    <div class="linea"></div>
                    <div class="div-2">
                        <h2><span>Información general:</span></h2>
                        <ul>
                        <li><span class="bold">Profesor:</span> Patricia Rodríguez Polanco</li>
                            <li><span class="bold">Correo electrónico:</span> <span
                                    class="decoration-1">patricia.rodriguez@esen.edu.sv</span></li>
                            <li><span class="bold">Participantes:</span> 48 participantes</li>
                        </ul>
                        <a href="cursos_estudiantes/curso_4.php" class="button">Ver Curso</a>
                    </div>
                </article>
                <article class="vista" id="course-5">
                    <div class="div-1">
                        <img src="./img/fondos-de-colores.jpg" alt="Fondo abstracto">
                        <h2>2024 - Desarrollo Web I</h2>
                        <h3>Estudiante</h3>
                    </div>
                    <div class="linea"></div>
                    <div class="div-2">
                        <h2><span>Información general:</span></h2>
                        <ul>
                        <li><span class="bold">Profesor:</span> Patricia Rodríguez Polanco</li>
                            <li><span class="bold">Correo electrónico:</span> <span
                                    class="decoration-1">patricia.rodriguez@esen.edu.sv</span></li>
                            <li><span class="bold">Participantes:</span> 99 participantes</li>
                        </ul>
                        <a href="cursos_estudiantes/curso_5.php" class="button">Ver Curso</a>
                    </div>
                </article>
            </div>
        </section>

        <!-- Nueva sección para Inscribirse/Eliminar Cursos -->
        <section class="manage-courses">
            <h2>Administrar Cursos</h2>
            <p>Selecciona los cursos que deseas eliminar de tu inscripción:</p>
            <div class="course-options">
                <label>
                    <input type="checkbox" onclick="toggleCourseVisibility('course-1')">
                    2024 - Pruebas de Software
                </label>
                <label>
                    <input type="checkbox" onclick="toggleCourseVisibility('course-2')">
                    2024 - Requerimientos
                </label>
                <label>
                    <input type="checkbox" onclick="toggleCourseVisibility('course-3')">
                    2024 - Base de Datos I
                </label>
                <label>
                    <input type="checkbox" onclick="toggleCourseVisibility('course-4')">
                    2024 - Pilares de Liderazgo
                </label>
                <label>
                    <input type="checkbox" onclick="toggleCourseVisibility('course-5')">
                    2024 - Desarrollo Web I
                </label>
            </div>
        </section>

        <script>
            function toggleCourseVisibility(courseId) {
                const courseElement = document.getElementById(courseId);
                if (courseElement) {
                    courseElement.style.display = courseElement.style.display === 'none' ? 'block' : 'none';
                }
            }
        </script>
    </main>

    <footer>
        <p>&copy; 2024 BrightAcademy</p>
    </footer>
</body>

</html>