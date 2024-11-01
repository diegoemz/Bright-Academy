let arrayEstudiantes = [];

// Función para obtener los datos de estudiantes desde la base de datos
async function obtenerEstudiantes() {
    try {
        const response = await fetch('../mostrar_reportes/mostrar_reportes_2.php'); // Asegúrate de que esta URL sea correcta
        if (!response.ok) {
            throw new Error(`HTTP error! Status: ${response.status}`);
        }
        const html = await response.text(); // Obtener el contenido HTML
        document.getElementById('containerEstudiantes').innerHTML = html; // Insertar el HTML en el contenedor

        // Capturar el promedio de calificaciones
        const promedioElement = document.getElementById('promedio'); // Obtener el elemento por ID
        let promedioCalificaciones = 0; // Variable para almacenar el promedio

        if (promedioElement) {
            // Extraer el número del texto del elemento
            const promedioText = promedioElement.textContent.replace('Promedio de Calificaciones: ', '');
            promedioCalificaciones = parseFloat(promedioText);
        }

        graficoCalificaciones(promedioCalificaciones); // Pasar el promedio al gráfico

    } catch (error) {
        console.error("Error al obtener los datos de estudiantes:", error);
    }
}

function graficoProgreso() {
    let circularProgress = document.querySelector("#grafico-progreso"),
        progressValue = document.querySelector("#valor-progreso");

    let progressStartValue = 0,
        progressEndValue = 70.5, // Puedes cambiar esto si necesitas un valor dinámico
        speed = 7;

    let progress = setInterval(() => {
        progressStartValue += 0.5;

        progressValue.textContent = `${progressStartValue.toFixed(1)}%`;
        circularProgress.style.background = `conic-gradient(var(--celeste-2) ${progressStartValue * 3.6}deg, var(--grisNuevo) 0deg)`;

        if (progressStartValue >= progressEndValue) {
            clearInterval(progress);
            progressValue.textContent = `${progressEndValue.toFixed(1)}%`;
        }
    }, speed);
}

function graficoCalificaciones(promedioCalificaciones) {
    let circularCalification = document.querySelector("#grafico-calificacion"),
        calificationValue = document.querySelector("#valor-calificacion");

    let calificationStartValue = 0,
        calificationEndValue = promedioCalificaciones,
        maxCalificationValue = 10,
        speed = 15;

    let progress = setInterval(() => {
        calificationStartValue += 0.1;

        calificationValue.textContent = `${calificationStartValue.toFixed(1)}`;
        circularCalification.style.background = `conic-gradient(var(--azul-3) ${(calificationStartValue / maxCalificationValue) * 360}deg, var(--grisNuevo) 0deg)`;

        if (calificationStartValue >= calificationEndValue) {
            clearInterval(progress);
            calificationValue.textContent = `${calificationEndValue.toFixed(1)}`;
        }
    }, speed);
}

window.onload = function() {
    obtenerEstudiantes();
    graficoProgreso();
};
