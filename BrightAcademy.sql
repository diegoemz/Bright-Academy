CREATE DATABASE BrightAcademy;
Use BrightAcademy;

CREATE TABLE roles(
	idRol INT PRIMARY KEY NOT NULL,
	rol VARCHAR(100) NOT NULL
);

CREATE TABLE estudiante(
	idEstudiante INT PRIMARY KEY NOT NULL,
	nombreEstudiante VARCHAR(100) NOT NULL,
	apellidoEstudiante VARCHAR(100) NOT NULL,
	idRol INT NOT NULL,
	FOREIGN KEY (idRol) REFERENCES roles(idRol) ON DELETE CASCADE,
	contrasenia VARCHAR(100) NOT NULL
);
CREATE TABLE profesor(
	idProfesor INT PRIMARY KEY NOT NULL,
	nombreProfesor VARCHAR(100) NOT NULL,
	apellidoProfesor VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	idRol INT NOT NULL,
	FOREIGN KEY (idRol) REFERENCES roles(idRol) ON DELETE CASCADE,
	contrasenia VARCHAR(100) NOT NULL
);
CREATE TABLE administrador(
	idAdmin INT PRIMARY KEY NOT NULL,
	nombreAdmin VARCHAR(100) NOT NULL,
	apellidoAdmin VARCHAR(100) NOT NULL,
	idRol INT NOT NULL,
	FOREIGN KEY (idRol) REFERENCES roles(idRol) ON DELETE CASCADE,
	contrasenia VARCHAR(100) NOT NULL
);
CREATE TABLE curso(
	idCurso INT PRIMARY KEY NOT NULL,
	nombreCurso VARCHAR(100) NOT NULL,
	descripcion VARCHAR(2000) NOT NULL
);
CREATE TABLE tipoEvaluacion(
	idTipoEvaluacion INT PRIMARY KEY NOT NULL,
	tipoEvaluacion VARCHAR(100) NOT NULL
);
CREATE TABLE cursoxProfe(
	idProfesor INT NOT NULL,
	idCurso INT NOT NULL,
	PRIMARY KEY (idCurso, idProfesor),
	FOREIGN KEY (idProfesor) REFERENCES profesor(idProfesor) ON DELETE CASCADE,
	FOREIGN KEY (idCurso) REFERENCES curso(idCurso) ON DELETE CASCADE
);
CREATE TABLE cursoxEst(
	idEstudiante INT NOT NULL,
	idCurso INT NOT NULL,
	PRIMARY KEY (idEstudiante, idCurso),
	FOREIGN KEY (idEstudiante) REFERENCES estudiante(idEstudiante) ON DELETE CASCADE,
	FOREIGN KEY (idCurso) REFERENCES curso(idCurso) ON DELETE CASCADE
);
CREATE TABLE evaluacion(
	idEvaluacion INT PRIMARY KEY NOT NULL,
	nombreEvaluacion VARCHAR(100) NOT NULL,
	descripcion VARCHAR(2000) NOT NULL,
	idCurso INT NOT NULL,
	idTipoEvaluacion INT NOT NULL,
	FOREIGN KEY (idCurso) REFERENCES curso(idCurso) ON DELETE CASCADE,
	FOREIGN KEY (idTipoEvaluacion) REFERENCES tipoEvaluacion(idTipoEvaluacion) ON DELETE CASCADE
);
CREATE TABLE evalxEst(
	idEvaluacion INT NOT NULL,
	idEstudiante INT NOT NULL,
	PRIMARY KEY (idEvaluacion, idEstudiante),
	FOREIGN KEY (idEvaluacion) REFERENCES evaluacion(idEvaluacion) ON DELETE CASCADE,
	FOREIGN KEY (idEstudiante) REFERENCES estudiante(idEstudiante) ON DELETE CASCADE,
	calificacion FLOAT NOT NULL
);

CREATE TABLE files (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    ruta_archivo VARCHAR(255) NOT NULL,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE files_2 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE files_3 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE files_4 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE files_5 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tarea (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    ruta_archivo VARCHAR(255) NOT NULL,
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tarea_2 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tarea_3 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tarea_4 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tarea_5 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre_archivo VARCHAR(255) NOT NULL,
	ruta_archivo VARCHAR(255) NOT NULL,
	fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    nota_obtenida DECIMAL(3, 1) CHECK (nota_obtenida BETWEEN 0 AND 10),
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notas_2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    nota_obtenida DECIMAL(3, 1) CHECK (nota_obtenida BETWEEN 0 AND 10),
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notas_3 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    nota_obtenida DECIMAL(3, 1) CHECK (nota_obtenida BETWEEN 0 AND 10),
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notas_4 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    nota_obtenida DECIMAL(3, 1) CHECK (nota_obtenida BETWEEN 0 AND 10),
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE notas_5 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_archivo VARCHAR(255) NOT NULL,
    nota_obtenida DECIMAL(3, 1) CHECK (nota_obtenida BETWEEN 0 AND 10),
    fecha_subida TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE estudiantes_1 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	carnet INT(8)NOT NULL,
	nombre_estudiante VARCHAR(255) NOT NULL,
	apellido_estudiante VARCHAR(255) NOT NULL,
	nota1 VARCHAR(255) NOT NULL,
	nota2 VARCHAR(255) NOT NULL,
	nota3 VARCHAR(255) NOT NULL
);

CREATE TABLE estudiantes_2 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	carnet INT(8)NOT NULL,
	nombre_estudiante VARCHAR(255) NOT NULL,
	apellido_estudiante VARCHAR(255) NOT NULL,
	nota1 VARCHAR(255) NOT NULL,
	nota2 VARCHAR(255) NOT NULL,
	nota3 VARCHAR(255) NOT NULL
);

CREATE TABLE estudiantes_3 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	carnet INT(8)NOT NULL,
	nombre_estudiante VARCHAR(255) NOT NULL,
	apellido_estudiante VARCHAR(255) NOT NULL,
	nota1 VARCHAR(255) NOT NULL,
	nota2 VARCHAR(255) NOT NULL,
	nota3 VARCHAR(255) NOT NULL
);

CREATE TABLE estudiantes_4 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	carnet INT(8)NOT NULL,
	nombre_estudiante VARCHAR(255) NOT NULL,
	apellido_estudiante VARCHAR(255) NOT NULL,
	nota1 VARCHAR(255) NOT NULL,
	nota2 VARCHAR(255) NOT NULL,
	nota3 VARCHAR(255) NOT NULL
);

CREATE TABLE estudiantes_5 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	carnet INT(8)NOT NULL,
	nombre_estudiante VARCHAR(255) NOT NULL,
	apellido_estudiante VARCHAR(255) NOT NULL,
	nota1 VARCHAR(255) NOT NULL,
	nota2 VARCHAR(255) NOT NULL,
	nota3 VARCHAR(255) NOT NULL
);

CREATE TABLE estudiantes_6 (
	id INT AUTO_INCREMENT PRIMARY KEY,
	carnet INT(8)NOT NULL,
	nombre_estudiante VARCHAR(255) NOT NULL,
	apellido_estudiante VARCHAR(255) NOT NULL,
	nota1 VARCHAR(255) NOT NULL,
	nota2 VARCHAR(255) NOT NULL,
	nota3 VARCHAR(255) NOT NULL
);

INSERT INTO estudiantes_1 (carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3) VALUES
(20235794, "Nahomi", "Serrano", "9.9", "8.6", "5.2"),
(20235801, "Luis", "Martínez", "7.8", "8.3", "6.9"),
(20235802, "Ana", "López", "9.1", "7.4", "8.0"),
(20235803, "Carlos", "Gómez", "8.6", "6.8", "7.5"),
(20235804, "María", "Rodríguez", "7.2", "8.1", "8.9"),
(20235805, "Juan", "Hernández", "9.3", "7.6", "7.1"),
(20235806, "Laura", "Fernández", "8.4", "8.9", "6.7"),
(20235807, "Pedro", "Jiménez", "9.0", "7.2", "8.4"),
(20235808, "Lucía", "Díaz", "8.1", "8.7", "7.3"),
(20235809, "Ricardo", "Pérez", "7.9", "6.5", "8.6"),
(20235810, "Isabel", "Morales", "9.4", "7.1", "7.8"),
(20235811, "David", "Torres", "8.2", "8.5", "6.4"),
(20235812, "Andrea", "Suárez", "9.6", "8.0", "7.7"),
(20235813, "Fernando", "Romero", "8.7", "7.9", "6.8"),
(20235814, "Gabriela", "García", "7.4", "9.2", "8.3"),
(20235815, "Santiago", "Mendoza", "9.5", "6.7", "7.6"),
(20235816, "Paula", "Navarro", "8.3", "8.6", "6.9"),
(20235817, "Javier", "Rivera", "7.6", "8.0", "8.1"),
(20235818, "Diana", "Vega", "9.2", "7.3", "7.9"),
(20235819, "Jorge", "Aguilar", "8.0", "8.4", "6.5"),
(20235820, "Carla", "Ortiz", "7.7", "8.8", "7.2"),
(20235821, "Mario", "Castro", "9.1", "6.9", "8.0"),
(20235822, "Sofía", "Ríos", "8.5", "8.1", "7.4"),
(20235823, "Daniel", "Medina", "7.5", "9.0", "8.2"),
(20235824, "Mónica", "Herrera", "9.7", "7.2", "7.0"),
(20235825, "Andrés", "Silva", "8.9", "6.8", "8.7"),
(20235826, "Patricia", "Escobar", "8.0", "8.9", "6.6"),
(20235827, "Felipe", "Núñez", "9.3", "7.0", "7.9"),
(20235828, "Natalia", "Pineda", "8.2", "8.3", "7.1"),
(20235829, "Hugo", "Flores", "7.8", "8.7", "8.5"),
(20235830, "Valeria", "Soto", "9.5", "6.6", "7.3"),
(20235831, "Sergio", "Vargas", "8.4", "7.1", "8.6"),
(20235832, "Liliana", "Carrillo", "7.3", "8.9", "7.8"),
(20235833, "Samuel", "Moreno", "9.0", "6.7", "7.5"),
(20235834, "Daniela", "Rojas", "8.6", "8.5", "6.9"),
(20235835, "Roberto", "Ruiz", "7.9", "7.3", "8.1"),
(20235836, "Camila", "Cabrera", "9.4", "6.8", "7.7"),
(20235837, "Tomás", "Castellanos", "8.3", "8.2", "6.4"),
(20235838, "Alejandra", "Palacios", "7.6", "9.1", "8.0"),
(20235839, "Guillermo", "Figueroa", "9.2", "7.0", "7.4"),
(20235840, "Luisa", "Quintero", "8.0", "8.8", "6.7"),
(20235841, "Oscar", "Acosta", "7.7", "8.3", "8.4"),
(20235842, "Estefanía", "Mora", "9.6", "6.9", "7.1"),
(20235843, "Rodrigo", "Cruz", "8.7", "7.4", "8.2"),
(20235844, "Vanessa", "Cordero", "7.4", "8.5", "7.9"),
(20235845, "Miguel", "Bermúdez", "9.1", "6.7", "7.6"),
(20235846, "Paulo", "Salazar", "8.5", "7.8", "6.5");

INSERT INTO estudiantes_2 (carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3) VALUES
(20235847, "Juliana", "Ramos", "8.8", "7.5", "6.9"),
(20235848, "Raúl", "Luna", "9.3", "6.8", "7.5"),
(20235849, "Marcos", "Benítez", "7.9", "8.2", "7.0"),
(20235850, "Alicia", "Vázquez", "8.5", "7.7", "8.4"),
(20235851, "Pablo", "Valencia", "9.0", "8.6", "6.5"),
(20235852, "Cristina", "Paredes", "7.8", "8.9", "7.6"),
(20235853, "Rafael", "Guzmán", "8.3", "6.9", "8.8"),
(20235854, "Irene", "Lara", "9.1", "7.4", "6.7"),
(20235855, "Raquel", "Sáenz", "8.9", "8.0", "7.5"),
(20235856, "Oscar", "Maldonado", "7.5", "9.3", "8.2"),
(20235857, "Teresa", "Camacho", "8.7", "6.8", "7.8"),
(20235858, "Marcelo", "Ávila", "9.4", "7.3", "7.0"),
(20235859, "Elsa", "Peña", "8.6", "8.2", "6.6"),
(20235860, "Joaquín", "Peralta", "7.6", "8.5", "8.1"),
(20235861, "Inés", "Montes", "9.7", "7.2", "7.3"),
(20235862, "Alejo", "Ponce", "8.1", "8.4", "6.8"),
(20235863, "Manuela", "Araya", "9.2", "7.5", "7.6"),
(20235864, "Alberto", "Soler", "7.8", "8.1", "8.7"),
(20235865, "Eva", "Mejía", "8.9", "7.0", "6.5"),
(20235866, "Romina", "Montoya", "9.5", "8.3", "7.4"),
(20235867, "Elías", "Parra", "8.4", "7.7", "8.0"),
(20235868, "Beatriz", "Valle", "7.9", "8.9", "6.9"),
(20235869, "Maximiliano", "Ríos", "9.1", "7.3", "8.2"),
(20235870, "Florencia", "Cano", "8.0", "8.6", "7.1"),
(20235871, "Ernesto", "Muñoz", "7.4", "9.0", "6.8"),
(20235872, "Nora", "Alonso", "9.6", "6.8", "7.9"),
(20235873, "Federico", "Rivas", "8.2", "7.5", "8.3"),
(20235874, "Marina", "Palma", "7.6", "8.4", "6.7"),
(20235875, "Lucas", "Villalobos", "9.3", "7.2", "7.4"),
(20235876, "Elena", "Hidalgo", "8.7", "8.1", "8.5"),
(20235877, "Iván", "Cortés", "7.2", "9.1", "6.9"),
(20235878, "Amparo", "Galeano", "9.5", "7.4", "7.7"),
(20235879, "Cristóbal", "Ángel", "8.0", "8.5", "6.8"),
(20235880, "Leonor", "Villaseñor", "8.9", "7.1", "8.3"),
(20235881, "Esteban", "Calvo", "9.4", "6.9", "7.8"),
(20235882, "Brenda", "Pizarro", "8.3", "8.2", "7.0"),
(20235883, "Ulises", "Morán", "7.5", "8.9", "6.5"),
(20235884, "Claudia", "Reyes", "9.0", "7.6", "7.9"),
(20235885, "Ignacio", "Ledesma", "8.1", "8.7", "7.2"),
(20235886, "Sara", "Estévez", "9.7", "6.8", "8.4"),
(20235887, "Héctor", "Arenas", "8.4", "7.9", "6.6"),
(20235888, "Berta", "Guzmán", "7.3", "8.5", "8.8"),
(20235889, "Silvio", "Valdés", "9.2", "7.3", "7.1"),
(20235890, "Gloria", "Mena", "8.0", "8.3", "7.5");

INSERT INTO estudiantes_3 (carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3) VALUES
(20235891, "Ivana", "Castillo", "8.7", "7.6", "6.9"),
(20235892, "Hugo", "Pacheco", "9.2", "8.3", "7.1"),
(20235893, "Silvia", "Rojas", "7.8", "8.1", "8.3"),
(20235894, "Alfonso", "Arce", "8.5", "7.9", "6.8"),
(20235895, "Martina", "Campos", "9.1", "8.6", "7.5"),
(20235896, "Joaquín", "Cabrera", "8.3", "6.7", "8.2"),
(20235897, "Camilo", "Rico", "7.9", "8.0", "7.4"),
(20235898, "Bárbara", "Tejada", "9.4", "7.2", "8.1"),
(20235899, "Leonardo", "Cifuentes", "8.2", "8.5", "6.6"),
(20235900, "Clara", "Alfaro", "7.5", "8.8", "7.0"),
(20235901, "Ramiro", "López", "8.9", "7.1", "7.3"),
(20235902, "Verónica", "Galindo", "9.0", "8.3", "6.7"),
(20235903, "Emiliano", "Castañeda", "8.6", "7.4", "8.9"),
(20235904, "María", "Villanueva", "7.3", "8.6", "7.5"),
(20235905, "Felipe", "Montes", "9.7", "6.8", "7.2"),
(20235906, "Juana", "Santana", "8.5", "8.4", "6.9"),
(20235907, "Álvaro", "Espinoza", "7.6", "8.7", "7.8"),
(20235908, "Amalia", "León", "9.1", "7.5", "8.0"),
(20235909, "Germán", "Arrieta", "8.0", "6.9", "8.4"),
(20235910, "Sandra", "Sandoval", "7.8", "9.2", "6.8"),
(20235911, "Cristina", "Salas", "8.3", "8.9", "7.1"),
(20235912, "Hernán", "Bravo", "9.5", "7.0", "8.6"),
(20235913, "Lucía", "Maldonado", "8.1", "7.8", "7.7"),
(20235914, "Francisco", "Morales", "9.0", "8.3", "6.5"),
(20235915, "Daniela", "Lozano", "8.4", "7.3", "8.5"),
(20235916, "Nicolás", "Perales", "7.7", "8.1", "6.9"),
(20235917, "Elisa", "Santos", "9.4", "6.7", "8.2"),
(20235918, "Sebastián", "Garay", "8.0", "8.6", "7.4"),
(20235919, "Ariana", "Mora", "7.6", "9.1", "7.0"),
(20235920, "Gustavo", "Beltrán", "9.2", "7.5", "8.3"),
(20235921, "Teresa", "Arellano", "8.7", "7.2", "6.6"),
(20235922, "Rodrigo", "Ibarra", "7.9", "8.5", "7.8"),
(20235923, "Ana", "Guerra", "8.3", "6.8", "8.9"),
(20235924, "Matías", "Sánchez", "9.1", "7.4", "8.1"),
(20235925, "Rocío", "Valdés", "8.2", "8.7", "7.3"),
(20235926, "César", "Miranda", "7.5", "8.3", "6.7"),
(20235927, "Liliana", "Garrido", "9.6", "7.0", "7.9"),
(20235928, "Tomás", "Navarrete", "8.1", "8.2", "7.5"),
(20235929, "Susana", "Pérez", "7.8", "9.4", "6.9"),
(20235930, "Ignacio", "Calderón", "8.9", "7.1", "8.2"),
(20235931, "Raquel", "Cano", "9.3", "6.8", "7.0"),
(20235932, "Antonio", "Lara", "8.0", "8.1", "7.6"),
(20235933, "Karina", "Chávez", "7.7", "8.6", "7.3"),
(20235934, "Mauro", "Carballo", "9.4", "7.9", "6.5"),
(20235935, "Elena", "Martínez", "8.5", "6.7", "8.7"),
(20235936, "René", "Quintana", "7.4", "8.9", "7.8"),
(20235937, "Daniel", "Ledesma", "9.0", "7.5", "8.3"),
(20235938, "Miriam", "Estévez", "8.1", "8.6", "6.8"),
(20235939, "Carlos", "Zamora", "9.5", "7.0", "7.4"),
(20235940, "Gabriela", "Ramírez", "8.7", "7.3", "8.0");

INSERT INTO estudiantes_4 (carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3) VALUES
(20235941, "Andrea", "Herrera", "8.8", "7.9", "6.7"),
(20235942, "Javier", "Pineda", "9.3", "6.8", "8.5"),
(20235943, "Luisa", "Márquez", "8.0", "8.1", "7.3"),
(20235944, "Mauricio", "Salinas", "9.1", "7.4", "7.8"),
(20235945, "Estela", "Moreno", "8.5", "8.6", "6.9"),
(20235946, "Ramón", "Silva", "8.3", "6.9", "7.7"),
(20235947, "Natalia", "Bustamante", "9.2", "7.0", "8.3"),
(20235948, "Roberto", "Meza", "8.1", "8.7", "7.5"),
(20235949, "Ana", "Rosas", "8.9", "7.1", "8.2"),
(20235950, "Omar", "González", "7.7", "9.4", "6.6"),
(20235951, "Fabiola", "Reyes", "9.4", "6.8", "8.1"),
(20235952, "Rodrigo", "Suárez", "8.2", "7.9", "6.5"),
(20235953, "Sofía", "Guerrero", "8.6", "8.5", "7.0"),
(20235954, "Fernando", "Pérez", "7.8", "9.1", "8.3"),
(20235955, "Catalina", "Torres", "9.5", "6.7", "7.4"),
(20235956, "Guillermo", "Espinosa", "8.3", "8.2", "7.6"),
(20235957, "Victoria", "Soto", "8.8", "7.3", "8.9"),
(20235958, "Agustín", "Núñez", "7.9", "8.6", "6.8"),
(20235959, "Valeria", "Ibáñez", "9.0", "7.4", "7.9"),
(20235960, "Mario", "Vera", "8.4", "6.9", "8.7"),
(20235961, "Julia", "Molina", "7.6", "8.5", "7.0"),
(20235962, "Renato", "Flores", "9.3", "7.1", "6.9"),
(20235963, "Alba", "Carrillo", "8.2", "9.0", "8.1"),
(20235964, "Ricardo", "Peña", "7.8", "8.3", "7.2"),
(20235965, "Viviana", "Ortega", "9.1", "6.8", "8.4"),
(20235966, "Diego", "Ramírez", "8.5", "7.9", "6.6"),
(20235967, "Lorena", "Jiménez", "9.4", "7.2", "7.7"),
(20235968, "Juan", "Cruz", "8.0", "8.8", "6.9"),
(20235969, "Noemí", "Salazar", "8.7", "7.5", "7.3"),
(20235970, "Adrián", "Padilla", "9.2", "8.4", "7.8"),
(20235971, "Milagros", "Ayala", "7.5", "8.7", "8.0"),
(20235972, "Saúl", "Lopez", "8.9", "6.7", "8.3"),
(20235973, "Elsa", "Mendoza", "7.9", "8.4", "7.1"),
(20235974, "Humberto", "Franco", "9.6", "7.0", "6.8"),
(20235975, "Claudia", "Escobar", "8.3", "8.9", "7.7"),
(20235976, "Ismael", "Palacios", "7.7", "8.5", "6.9"),
(20235977, "Luciana", "Álvarez", "9.0", "7.4", "8.2"),
(20235978, "Pablo", "Blanco", "8.6", "8.3", "6.5"),
(20235979, "Carmen", "Díaz", "9.4", "7.1", "8.0"),
(20235980, "Francisco", "Ruiz", "8.1", "8.7", "7.2"),
(20235981, "Aldo", "Mora", "7.4", "9.0", "6.6"),
(20235982, "Patricia", "Calvo", "9.3", "6.9", "7.9"),
(20235983, "Jorge", "Montoya", "8.5", "8.2", "7.4"),
(20235984, "Mónica", "Castro", "7.9", "8.8", "6.8"),
(20235985, "Luis", "Valencia", "9.1", "7.0", "8.6"),
(20235986, "Daniel", "Solano", "8.0", "8.9", "7.1"),
(20235987, "Blanca", "Águila", "7.6", "9.2", "8.3"),
(20235988, "Andrés", "Linares", "9.5", "6.8", "7.0");

INSERT INTO estudiantes_5 (carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3) VALUES
(20235901, "Lucía", "Morales", "8.7", "7.9", "6.8"),
(20235902, "Jorge", "Pérez", "9.1", "6.7", "8.5"),
(20235903, "Rosa", "Vargas", "7.8", "8.2", "7.4"),
(20235904, "Carlos", "Ortega", "8.9", "8.0", "7.1"),
(20235905, "Alejandro", "Soto", "8.2", "7.3", "8.0"),
(20235906, "Camila", "Ramírez", "9.4", "6.8", "7.6"),
(20235907, "Hugo", "González", "8.5", "7.1", "8.3"),
(20235908, "Ana", "López", "9.0", "8.5", "6.9"),
(20235909, "Sofía", "Alvarado", "8.6", "7.2", "8.8"),
(20235910, "Diego", "García", "7.9", "8.6", "7.5"),
(20235911, "Claudia", "Hernández", "9.3", "8.0", "6.7"),
(20235912, "Mario", "Silva", "8.4", "7.9", "7.0"),
(20235913, "Valentina", "Maldonado", "9.5", "7.3", "8.1"),
(20235914, "Gabriel", "Reyes", "8.1", "6.9", "8.2"),
(20235915, "Patricia", "Torres", "8.9", "7.0", "6.8"),
(20235916, "José", "Gómez", "8.7", "8.5", "7.2"),
(20235917, "Marcela", "Iglesias", "7.8", "8.1", "6.9"),
(20235918, "Raúl", "Luna", "9.1", "7.5", "8.4"),
(20235919, "Inés", "Espinoza", "8.2", "7.7", "7.1"),
(20235920, "Arturo", "Ríos", "9.0", "8.6", "6.8"),
(20235921, "Carmen", "Fuentes", "7.6", "8.3", "8.7"),
(20235922, "Sergio", "Navarro", "8.5", "7.8", "7.3"),
(20235923, "Elena", "Ruiz", "9.2", "6.8", "8.5"),
(20235924, "Ismael", "Mora", "8.3", "7.2", "7.9"),
(20235925, "Natalia", "Serrano", "7.7", "8.4", "6.6"),
(20235926, "Antonio", "Guerra", "9.4", "7.0", "8.3"),
(20235927, "Julia", "Peña", "8.1", "8.9", "7.8"),
(20235928, "Rubén", "Villalobos", "7.9", "7.6", "8.4"),
(20235929, "Laura", "Carrillo", "8.7", "8.1", "6.7"),
(20235930, "Felipe", "Castro", "9.3", "7.4", "7.2"),
(20235931, "Esteban", "Ramos", "8.0", "7.8", "8.6"),
(20235932, "Marta", "Alfaro", "9.1", "6.7", "8.0"),
(20235933, "Daniel", "Ponce", "8.4", "8.5", "7.1"),
(20235934, "Eva", "Cabrera", "7.5", "9.0", "6.9"),
(20235935, "Luis", "Jiménez", "9.6", "7.8", "7.0"),
(20235936, "Adriana", "Lagos", "8.2", "8.4", "8.3"),
(20235937, "Héctor", "Valle", "8.9", "6.8", "8.1"),
(20235938, "Emilia", "Salinas", "7.8", "8.7", "7.5"),
(20235939, "Benjamín", "Bravo", "8.5", "7.9", "6.8"),
(20235940, "Aurora", "Linares", "9.4", "7.0", "8.6"),
(20235941, "Francisco", "Medina", "8.3", "7.7", "7.3"),
(20235942, "Teresa", "Padilla", "7.9", "8.5", "6.9"),
(20235943, "Andrés", "Vargas", "9.2", "6.9", "8.0"),
(20235944, "Gloria", "Moreno", "8.7", "7.2", "7.4"),
(20235945, "Ricardo", "Rosales", "8.0", "8.8", "6.7"),
(20235946, "Elisa", "Montero", "9.5", "7.1", "8.2"),
(20235947, "Matías", "Cruz", "8.4", "8.3", "7.5"),
(20235948, "Sara", "Cordero", "7.6", "9.1", "6.8"),
(20235949, "Diego", "Solís", "9.3", "8.2", "7.1"),
(20235950, "Nicolás", "Maldonado", "7.5", "8.6", "8.0"),
(20235951, "Vanessa", "Rodríguez", "9.0", "7.3", "8.4"),
(20235952, "Cristina", "Castañeda", "8.1", "7.7", "6.6"),
(20235953, "Joaquín", "López", "9.4", "6.8", "8.5"),
(20235954, "Daniela", "Montes", "8.0", "8.9", "7.4"),
(20235955, "Emilio", "Velasco", "7.8", "7.5", "8.7"),
(20235956, "Paola", "Nieves", "9.6", "7.0", "8.3"),
(20235957, "Raquel", "Muñoz", "8.2", "8.4", "7.8"),
(20235958, "Pablo", "Ibáñez", "7.9", "9.0", "6.7"),
(20235959, "Alfonso", "Mendoza", "9.3", "7.1", "8.0"),
(20235960, "Tania", "Barrera", "8.6", "6.8", "7.9"),
(20235961, "Roberto", "Morales", "7.7", "8.3", "8.6"),
(20235962, "Silvia", "Jiménez", "9.5", "8.0", "7.2"),
(20235963, "Octavio", "Durán", "8.4", "7.9", "6.9"),
(20235964, "Sandra", "Campos", "9.1", "8.7", "7.0"),
(20235965, "Santiago", "Guzmán", "7.6", "8.1", "8.5"),
(20235966, "Andrea", "Vega", "8.9", "7.3", "7.6"),
(20235967, "Rafael", "García", "9.2", "6.9", "8.1"),
(20235968, "Bárbara", "Cisneros", "8.3", "8.6", "7.4"),
(20235969, "Pedro", "Ramírez", "9.4", "7.1", "6.8"),
(20235970, "Verónica", "Galván", "7.8", "8.5", "8.2"),
(20235971, "Miguel", "Figueroa", "8.1", "8.0", "7.9"),
(20235972, "Cristina", "Hidalgo", "9.0", "7.4", "6.7"),
(20235973, "Estela", "Rivera", "8.5", "7.8", "8.6"),
(20235974, "Alejo", "Rosales", "7.7", "8.4", "6.9"),
(20235975, "Renata", "Palacios", "9.6", "8.1", "7.3"),
(20235976, "Alberto", "Ochoa", "8.3", "7.5", "8.9"),
(20235977, "Montserrat", "Mejía", "8.0", "9.2", "7.2"),
(20235978, "Josué", "Esquivel", "7.9", "8.8", "6.7"),
(20235979, "Luciana", "Rojas", "9.5", "7.0", "8.3"),
(20235980, "Fernando", "Medrano", "8.6", "6.8", "7.8"),
(20235981, "Gloria", "López", "8.1", "7.9", "8.0"),
(20235982, "Miriam", "Sánchez", "9.4", "7.6", "7.2"),
(20235983, "Hernán", "Valdés", "8.7", "8.5", "6.9"),
(20235984, "Alicia", "Domínguez", "7.5", "8.4", "8.3"),
(20235985, "Alma", "Padilla", "9.1", "8.3", "7.1"),
(20235986, "Esteban", "Salinas", "8.0", "7.5", "6.7"),
(20235987, "Victoria", "Reyna", "9.6", "8.2", "8.4"),
(20235988, "Ignacio", "Cano", "7.7", "8.6", "7.3"),
(20235989, "Manuel", "Villanueva", "8.4", "7.8", "6.9"),
(20235990, "Diana", "Pérez", "9.2", "8.5", "8.1"),
(20235991, "Laura", "Silva", "7.9", "9.1", "6.8"),
(20235992, "Rubén", "Zamora", "8.7", "7.6", "8.3"),
(20235993, "Nuria", "Moreno", "9.3", "6.8", "7.5"),
(20235994, "Gustavo", "Bautista", "7.8", "8.9", "7.0"),
(20235995, "Rebeca", "Alonso", "9.1", "8.3", "8.4"),
(20235996, "Óscar", "Noriega", "8.0", "7.4", "6.9"),
(20235997, "Francisca", "Miranda", "9.4", "7.7", "7.3"),
(20235998, "Edgar", "Urbina", "8.5", "8.1", "6.6"),
(20235999, "Julia", "Lagos", "9.2", "8.4", "7.0");

INSERT INTO estudiantes_6 (carnet, nombre_estudiante, apellido_estudiante, nota1, nota2, nota3) VALUES
(20235851, "Clara", "Díaz", "8.7", "7.3", "6.8"),
(20235852, "Daniel", "Ramírez", "9.1", "6.9", "8.4"),
(20235853, "Rocío", "Vargas", "7.9", "8.4", "7.2"),
(20235854, "Felipe", "Martínez", "8.8", "7.5", "6.9"),
(20235855, "Carolina", "Ortega", "9.2", "8.2", "7.6"),
(20235856, "Guillermo", "Ríos", "8.1", "7.0", "8.3"),
(20235857, "Berta", "Rodríguez", "9.0", "8.3", "6.8"),
(20235858, "Elías", "Alonso", "8.3", "7.1", "8.7"),
(20235859, "Gloria", "Lara", "9.4", "7.9", "7.2"),
(20235860, "Tomás", "Medina", "7.8", "8.1", "8.0"),
(20235861, "Álvaro", "Santos", "9.5", "6.8", "7.9"),
(20235862, "Elena", "Reyes", "8.0", "8.6", "7.3"),
(20235863, "Hugo", "Núñez", "7.7", "9.0", "6.7"),
(20235864, "Marcela", "Pineda", "9.3", "7.4", "8.5"),
(20235865, "Natalia", "Suárez", "8.6", "7.9", "6.9"),
(20235866, "Ignacio", "Vega", "8.2", "8.5", "7.1"),
(20235867, "Beatriz", "López", "9.0", "6.9", "8.3"),
(20235868, "David", "Flores", "7.9", "8.2", "8.6"),
(20235869, "Paulina", "Hernández", "8.7", "7.8", "6.5"),
(20235870, "Samuel", "Méndez", "9.1", "7.2", "8.4"),
(20235871, "Alejandro", "Silva", "8.5", "6.7", "8.1"),
(20235872, "Ingrid", "Pérez", "9.2", "7.5", "7.3"),
(20235873, "Alfonso", "Cano", "8.1", "8.9", "7.0"),
(20235874, "Martín", "Guzmán", "9.4", "8.0", "7.8"),
(20235875, "Emilia", "Muñoz", "8.0", "7.9", "8.5"),
(20235876, "Rafael", "Padilla", "9.3", "7.4", "8.2"),
(20235877, "Rosario", "Cabrera", "8.6", "7.7", "7.0"),
(20235878, "Andrea", "Ramos", "9.1", "6.8", "7.9"),
(20235879, "Rogelio", "Navarro", "8.4", "7.2", "8.3"),
(20235880, "Valeria", "Salazar", "8.9", "8.5", "6.9"),
(20235881, "Javier", "Rojas", "7.8", "8.7", "7.5"),
(20235882, "Teresa", "Velasco", "9.6", "8.0", "8.1"),
(20235883, "Patricia", "Castaño", "8.2", "6.9", "8.4"),
(20235884, "Miguel", "Fuentes", "9.0", "8.1", "7.7"),
(20235885, "Rosa", "Cornejo", "8.5", "7.6", "6.8"),
(20235886, "Antonio", "Espinoza", "9.4", "7.3", "8.2"),
(20235887, "Nicolás", "Carrasco", "8.0", "8.8", "7.4"),
(20235888, "Jimena", "Lagos", "9.3", "6.7", "8.1"),
(20235889, "Eliseo", "Villalobos", "7.8", "8.4", "8.0"),
(20235890, "Silvia", "Camacho", "8.7", "7.2", "6.9"),
(20235891, "Ernesto", "Galindo", "9.1", "7.5", "8.3"),
(20235892, "Ángela", "Tobar", "8.4", "8.6", "7.0"),
(20235893, "Manuel", "Palacios", "9.2", "7.8", "6.6"),
(20235894, "Carla", "Franco", "8.0", "8.3", "8.9");


INSERT INTO roles(idRol, rol) VALUES
(1, 'Estudiante'),
(2, 'Profesor'),
(3, 'Administrador');

INSERT INTO estudiante(idEstudiante, nombreEstudiante, apellidoEstudiante, idRol, contrasenia) VALUES
(20235809, 'Alessandra', 'Aguiluz', 1, 'estudiante23'),
(20235058, 'Helder', 'Alfaro', 1, 'estudiante23'),
(20235947, 'Gerardo', 'Ardon', 1, 'estudiante23'),
(20235762, 'Roberto', 'Argueta', 1, 'estudiante23'),
(20235753, 'Daniela', 'Argueta', 1, 'estudiante23'),
(20235886, 'Astrid', 'Ayala', 1, 'estudiante23'),
(20235915, 'Erick', 'Bernal', 1, 'estudiante23'),
(20235760, 'Diego', 'Cabezas', 1, 'estudiante23'),
(20235676, 'Alexis', 'Cabrera', 1, 'estudiante23'),
(20235057, 'Valeria', 'Castro', 1, 'estudiante23'),
(20235111, 'Andrea', 'Cobos', 1, 'estudiante23'),
(20235918, 'Julio', 'Contreras', 1, 'estudiante23'),
(20235894, 'Ricardo', 'Cubias', 1, 'estudiante23'),
(20235866, 'Leonardo', 'Escalante', 1, 'estudiante23'),
(20235854, 'Fernando', 'Fuentes', 1, 'estudiante23'),
(20235810, 'Masciel', 'Fuentes', 1, 'estudiante23'),
(20235981, 'Daniela', 'Guardado', 1, 'estudiante23'),
(20235838, 'Levi', 'Guerra', 1, 'estudiante23'),
(20235917, 'Marcelo', 'Guerra', 1, 'estudiante23'),
(20235929, 'Cristina', 'Guillen', 1, 'estudiante23'),
(20235806, 'Jaime', 'Lazo', 1, 'estudiante23'),
(20235691, 'Camila', 'Melara', 1, 'estudiante23'),
(20235962, 'Marjorie', 'Monson', 1, 'estudiante23'),
(20235780, 'Diego', 'Morales', 1, 'estudiante23'),
(20235766, 'Rene', 'Morataya', 1, 'estudiante23'),
(20235764, 'Carla', 'Navas', 1, 'estudiante23'),
(20235861, 'Genesis', 'Parada', 1, 'estudiante23'),
(20235662, 'Daniela', 'Pineda', 1, 'estudiante23'),
(20235782, 'Nataly', 'Ponce', 1, 'estudiante23'),
(20225526, 'Mauricio', 'Ramirez', 1, 'estudiante23'),
(20235067, 'Axel', 'Renderos', 1, 'estudiante23'),
(20235053, 'Cristina', 'Rosa', 1, 'estudiante23'),
(20235795, 'Fernanda', 'Rubio', 1, 'estudiante23'),
(20235787, 'Christian', 'Sanchez', 1, 'estudiante23'),
(20235794, 'Nahomi', 'Serrano', 1, 'estudiante23'),
(20235905, 'Fernando', 'Solorzano', 1, 'estudiante23'),
(20215249, 'Alejandro', 'Tobar', 1, 'estudiante23'),
(20235722, 'Melissa', 'Torres', 1, 'estudiante23'),
(20235128, 'Benjamin', 'Trabanino', 1, 'estudiante23'),
(20235772, 'Lucia', 'Turcios', 1, 'estudiante23'),
(20225407, 'Giovanna', 'Valle', 1, 'estudiante23'),
(20235007, 'Rolando', 'Zelaya', 1, 'estudiante23'),
(20235973, 'Ximena', 'Zelaya', 1, 'estudiante23');

INSERT INTO profesor (idProfesor, nombreProfesor, apellidoProfesor, email, idRol, contrasenia) VALUES
(1, 'Patricia', 'Rodriguez Polanco', 'patricia.rodriguez@esen.edu.sv', 2, 'profesor24'),
(2, 'Hugo', 'Barrientos', 'hugo.barrientos@esen.edu.sv', 2, 'profesor24'),
(3, 'John Bryan', 'Guzman', 'john.guzman@esen.edu.sv', 2, 'profesor24'),
(4, 'Manuel', 'Masferrer', 'msanchez@esen.edu.sv', 2, 'profesor24'),
(5, 'Gabriela', 'Carranza', 'gcarranza@esen.edu.sv', 2, 'profesor24'),
(6, 'Guillermo', 'Calderon', 'guillermo.calderon@esen.edu.sv', 2, 'profesor24');


INSERT INTO administrador(idAdmin,nombreAdmin, apellidoAdmin, idRol, contrasenia) VALUES
(1, 'Alexis', 'Ayala', 3,'admin94'),
(2, 'Everardo', 'Rivera', 3,'admin94'),
(3, 'Luis', 'Poma', 3,'admin94');

INSERT INTO curso(idCurso, nombreCurso, descripcion) VALUES
(1, 'Pruebas de Software', 'En esta asignatura exploraremos las t�cnicas de pruebas de software, aplicables a cualquier tipo de aplicaci�n inform�tica. Ademas, abordaremos las t�cnicas involucradas en el desarrollo basado en pruebas (TDD - Test Driven Development), la integraci�n continua y su influencia en el proceso de aseguramiento de la calidad de software.'),
(2, 'Requerimientos y Prototipado', 'Este curso tiene como objetivo proporcionar a los estudiantes una comprensi�n profunda de las t�cnicas y herramientas necesarias para la captura de requerimientos, as� como el dise�o y creaci�n de prototipos. Los estudiantes aprender�n a identificar, documentar y validar los requerimientos de software, y a traducirlos en prototipos funcionales que faciliten la comunicaci�n con los interesados, sobre todo con clientes y stakeholders.'),
(3, 'Base de Datos I', 'Este curso desarrolla competencias de los principios fundamentales y metodolog�as para la estructuraci�n y uso de bases de datos. Las actividades se centrar�n en comprender los fundamentos del dise�o de una base de datos y ejercicios pr�cticos donde se implementar�n los principios de sistemas de bases de datos, incluyendo saberes adicionales �tiles para ingenier�a de software. Finalmente, estas bases se convertir�n en saberes clave para pr�ximos cursos que poseer�n un mayor grado de especializaci�n.'),
(4, 'Estructura de Datos y Algoritmos', 'Este curso busca que los estudiantes dominen las estructuras de datos m�s importantes utilizadas en la programaci�n de aplicaciones inform�ticas, y los algoritmos que son utilizados para trabajar con ellas, as� como el cumplimiento de objetivos y restricciones impuestas sobre los algoritmos.'),
(5, 'Pilares de Liderazgo', 'Esta materia tiene como objetivo principal generar introspecci�n y reflexi�n sobre nuestra situaci�n actual, nuestros sue�os, objetivos, metas y los niveles de bienestar que queremos alcanzar; as� como, proporcionarnos herramientas pr�cticas para reducir la brecha entre la situaci�n actual y de la deseada.'),
(6, 'Desarrollo Web I', 'Este curso tiene como objetivo proporcionar a los estudiantes los fundamentos b�sicos de los lenguajes HTML, CSS y JavaScript para el desarrollo web. Los estudiantes ser�n capaces de crear, dise�ar y estructurar sitios webs funcionales y aplicaciones interactivas.');

INSERT INTO tipoEvaluacion(idTipoEvaluacion, tipoEvaluacion) VALUES
(1, 'Tarea'),
(2, 'Control'),
(3, 'Parcial');

INSERT INTO cursoxProfe (idCurso, idProfesor) VALUES
(1,1), (2,2), (3,3), (4,4), (5,5), (6,6);

INSERT INTO cursoxEst (idEstudiante, idCurso) VALUES
(20235809, 1), (20235809, 2), (20235809, 3), (20235809,4),(20235809,5),(20235809,6),
(20235058, 1), (20235058, 2), (20235058, 3), (20235058,4),(20235058,5),(20235058,6),
(20235947, 1), (20235947, 2), (20235947, 3), (20235947,4),(20235947,5),(20235947,6),
(20235762, 1), (20235762, 2), (20235762, 3), (20235762,4),(20235762,5),(20235762,6),
(20235753, 1), (20235753, 2), (20235753, 3), (20235753,4),(20235753,5),(20235753,6),
(20235886, 1), (20235886, 2), (20235886, 3), (20235886,4),(20235886,5),(20235886,6),
(20235915, 1), (20235915, 2), (20235915, 3), (20235915,4),(20235915,5),(20235915,6),
(20235760, 1), (20235760, 2), (20235760, 3), (20235760,4),(20235760,5),(20235760,6),
(20235676, 1), (20235676, 2), (20235676, 3), (20235676,4),(20235676,5),(20235676,6),
(20235057, 1), (20235057, 2), (20235057, 3), (20235057,4),(20235057,5),(20235057,6),
(20235111, 1), (20235111, 2), (20235111, 3), (20235111,4),(20235111,5),(20235111,6),
(20235918, 1), (20235918, 2), (20235918, 3), (20235918,4),(20235918,5),(20235918,6),
(20235981, 1), (20235981, 2), (20235981, 3), (20235981,4),(20235981,5),(20235981,6),
(20235838, 1), (20235838, 2), (20235838, 3), (20235838,4),(20235838,5),(20235838,6),
(20235917, 1), (20235917, 2), (20235917, 3), (20235917,4),(20235917,5),(20235917,6),
(20235929, 1), (20235929, 2), (20235929, 3), (20235929,4),(20235929,5),(20235929,6),
(20235806, 1), (20235806, 2), (20235806, 3), (20235806,4),(20235806,5),(20235806,6),
(20235691, 1), (20235691, 2), (20235691, 3), (20235691,4),(20235691,5),(20235691,6),
(20235962, 1), (20235962, 2), (20235962, 3), (20235962,4),(20235962,5),(20235962,6),
(20235780, 1), (20235780, 2), (20235780, 3), (20235780,4),(20235780,5),(20235780,6),
(20235766, 1), (20235766, 2), (20235766, 3), (20235766,4),(20235766,5),(20235766,6),
(20235764, 1), (20235764, 2), (20235764, 3), (20235764,4),(20235764,5),(20235764,6),
(20235861, 1), (20235861, 2), (20235861, 3), (20235861,4),(20235861,5),(20235861,6),
(20235662, 1), (20235662, 2), (20235662, 3), (20235662,4),(20235662,5),(20235662,6),
(20235782, 1), (20235782, 2), (20235782, 3), (20235782,4),(20235782,5),(20235782,6),
(20225526, 1), (20225526, 2), (20225526, 3), (20225526,4),(20225526,5),(20225526,6),
(20235067, 1), (20235067, 2), (20235067, 3), (20235067,4),(20235067,5),(20235067,6),
(20235053, 1), (20235053, 2), (20235053, 3), (20235053,4),(20235053,5),(20235053,6),
(20235795, 1), (20235795, 2), (20235795, 3), (20235795,4),(20235795,5),(20235795,6),
(20235787, 1), (20235787, 2), (20235787, 3), (20235787,4),(20235787,5),(20235787,6),
(20235794, 1), (20235794, 2), (20235794, 3), (20235794,4),(20235794,5),(20235794,6),
(20235905, 1), (20235905, 2), (20235905, 3), (20235905,4),(20235905,5),(20235905,6),
(20215249, 1), (20215249, 2), (20215249, 3), (20215249,4),(20215249,5),(20215249,6),
(20235722, 1), (20235722, 2), (20235722, 3), (20235722,4),(20235722,5),(20235722,6),
(20235128, 1), (20235128, 2), (20235128, 3), (20235128,4),(20235128,5),(20235128,6),
(20235772, 1), (20235772, 2), (20235772, 3), (20235772,4),(20235772,5),(20235772,6),
(20225407, 1), (20225407, 2), (20225407, 3), (20225407,4),(20225407,5),(20225407,6),
(20235007, 1), (20235007, 2), (20235007, 3), (20235007,4),(20235007,5),(20235007,6);

INSERT INTO evaluacion (idEvaluacion, nombreEvaluacion, descripcion, idCurso, idTipoEvaluacion) VALUES
(1, 'Parcial Final', 'Parcial Final de la materia', 1, 3),
(2, 'Parcial Final', 'Parcial Final de la materia', 4, 3),
(3, 'Parcial de mitad de Ciclo', 'Parcial: Semana 6', 1, 3),
(4, 'Parcial de mitad de Ciclo', 'Parcial 1', 2, 3),
(5, 'Parcial 1', 'Parcial de mitad de Ciclo', 3, 3),
(6, 'Examen Parcial', 'Parcial 1', 4, 3),
(7,'Control 1', 'Control 1: HTML', 6, 2),
(8,'Control 2', 'Pilar relacional', 5, 2),
(9,'Control 1', 'Pilar Financiero', 5, 2),
(10,'Control 1', 'Tipos de Esquemas', 2, 2),
(11,'Tarea 1', 'Tarea Arbol Binario', 4, 1),
(12,'Tarea 2', 'Tarea IF-ELSE', 4, 1),
(13,'Tarea 2', 'Ciclo de Pruebas de Software', 1, 1),
(14,'Tarea 3', 'Entrevista', 2, 1),
(15,'Control 1', 'Diagrama Entidad-Relacion', 3, 2),
(16,'Tarea 2', 'Diagrama Relacional Normalizado', 3, 1),
(17,'Foro Wonder', 'Pilar emocional', 5, 1),
(18, 'Guia 1', 'Introduccion a HTML y CSS', 6, 1),
(19, 'Guia 5', 'Introduccion a JavaScript', 6, 1);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235809,9.5),(2,20235809,9.0),(3,20235809,7.5),(4,20235809,6.0),(5,20235809,10.0),(6,20235809, 5.5),(7,20235809,7.65),(8,20235809,9.65),
(9,20235809,7.85),(10,20235809,5.65),(11,20235809,4.5),(12,20235809,8.23),(13,20235809,7.84),(14,20235809,4.6),(15,20235809,9.5),
(16,20235809,7.45),(17,20235809,7.85),(18,20235809,6.52),(19,20235809,7.45);


INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235058,8.5),(2,20235058,7.5),(3,20235058,4.2),(4,20235058,5.66),(5,20235058,7.8),(6,20235058,6.2),(7,20235058,7.11),(8,20235058,8.21),
(9,20235058,5.41),(10,20235058,9.5),(11,20235058,8.5),(12,20235058,4.2),(13,20235058,1.87),(14,20235058,4.42),(15,20235058,7.8),
(16,20235058,5.5),(17,20235058,9.8),(18,20235058,10.0),(19,20235058,10.0);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235947,8.45),(2,20235947,7.42),(3,20235947,6.5),(4,20235947,4.0),(5,20235947,5.2),(6,20235947, 7.74),(7,20235947,6.25),(8,20235947,9.0),
(9,20235947,7.0),(10,20235947,5.0),(11,20235947,4.0),(12,20235947,7.52),(13,20235947,5.4),(14,20235947,7.6),(15,20235947,4.5),
(16,20235947,5.5),(17,20235947,8.5),(18,20235947,5.2),(19,20235947,7.5),

(1,20235762,4.44),(2,20235762,7.5),(3,20235762,7.5),(4,20235762,9.58),(5,20235762,4.4),(6,20235762, 7.41),(7,20235762,8.54),(8,20235762,7.41),
(9,20235762,8.5),(10,20235762,4.21),(11,20235762,8.54),(12,20235762,7.01),(13,20235762,5.23),(14,20235762,4.5),(15,20235762,9.2),
(16,20235762,7.4),(17,20235762,1.2),(18,20235762,7.5),(19,20235762,7.5);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235753,10.0),(2,20235753,8.9),(3,20235753,7.2),(4,20235753,6.5),(5,20235753,9.9),(6,20235753, 6.0),(7,20235753,8.0),(8,20235753,9.0),
(9,20235753,7.0),(10,20235753,8.65),(11,20235753,4.0),(12,20235753,2.3),(13,20235753,4.2),(14,20235753,8.5),(15,20235753,6.5),
(16,20235753,7.14),(17,20235753,8.5),(18,20235753,7.5),(19,20235753,8.75);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235886,9.55),(2,20235886,7.85),(3,20235886,5.5),(4,20235886,8.5),(5,20235886,10.0),(6,20235886, 7.2),(7,20235886,7.7),(8,20235886,9.5),
(9,20235886,8.8),(10,20235886,8.6),(11,20235886,9.2),(12,20235886,7.5),(13,20235886,8.8),(14,20235886,9.8),(15,20235886,9.0),
(16,20235886,5.5),(17,20235886,7.8),(18,20235886,8.5),(19,20235886,9.5),

(1,20235915,7.5),(2,20235915,8.2),(3,20235915,7.5),(4,20235915,5.5),(5,20235915,6.5),(6,20235915,4.2),(7,20235915,8.2),(8,20235915,7.5),
(9,20235915,8.5),(10,20235915,7.4),(11,20235915,7.98),(12,20235915,5.2),(13,20235915,7.5),(14,20235915,8.5),(15,20235915,7.5),
(16,20235915,8.5),(17,20235915,9.5),(18,20235915,7.6),(19,20235915,8.2),

(1,20235760,9.5),(2,20235760,9.0),(3,20235760,7.5),(4,20235760,6.0),(5,20235760,10.0),(6,20235760, 5.5),(7,20235760,7.65),(8,20235760,9.65),
(9,20235760,7.85),(10,20235760,5.65),(11,20235760,4.5),(12,20235760,8.23),(13,20235760,7.84),(14,20235760,4.6),(15,20235760,9.5),
(16,20235760,7.45),(17,20235760,7.85),(18,20235760,6.52),(19,20235760,7.45),

(1,20235676,10.0),(2,20235676,8.9),(3,20235676,9.5),(4,20235676,9.4),(5,20235676,9.5),(6,20235676, 8.7),(7,20235676,7.5),(8,20235676,9.65),
(9,20235676,8.75),(10,20235676,9.65),(11,20235676,7.98),(12,20235676,8.9),(13,20235676,7.7),(14,20235676,8.5),(15,20235676,8.95),
(16,20235676,8.14),(17,20235676,7.5),(18,20235676,9.5),(19,20235676,10),

(1,20235057,4.44),(2,20235057,7.5),(3,20235057,7.5),(4,20235057,9.58),(5,20235057,4.4),(6,20235057, 7.41),(7,20235057,8.54),(8,20235057,7.41),
(9,20235057,8.5),(10,20235057,4.21),(11,20235057,8.54),(12,20235057,7.01),(13,20235057,5.23),(14,20235057,4.5),(15,20235057,9.2),
(16,20235057,7.4),(17,20235057,1.2),(18,20235057,7.5),(19,20235057,7.5);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235111,9.55),(2,20235111,7.85),(3,20235111,5.5),(4,20235111,8.5),(5,20235111,10.0),(6,20235111, 7.2),(7,20235111,7.7),(8,20235111,9.5),
(9,20235111,8.8),(10,20235111,8.6),(11,20235111,9.2),(12,20235111,7.5),(13,20235111,8.8),(14,20235111,9.8),(15,20235111,9.0),
(16,20235111,5.5),(17,20235111,7.8),(18,20235111,8.5),(19,20235111,9.5),

(1,20235918,8.5),(2,20235918,7.5),(3,20235918,4.2),(4,20235918,5.66),(5,20235918,7.8),(6,20235918,6.2),(7,20235918,7.11),(8,20235918,8.21),
(9,20235918,5.41),(10,20235918,9.5),(11,20235918,8.5),(12,20235918,4.2),(13,20235918,1.87),(14,20235918,4.42),(15,20235918,7.8),
(16,20235918,5.5),(17,20235918,9.8),(18,20235918,10.0),(19,20235918,10.0),

(1,20235894,7.5),(2,20235894,8.2),(3,20235894,7.5),(4,20235894,5.5),(5,20235894,6.5),(6,20235894,4.2),(7,20235894,8.2),(8,20235894,7.5),
(9,20235894,8.5),(10,20235894,7.4),(11,20235894,7.98),(12,20235894,5.2),(13,20235894,7.5),(14,20235894,8.5),(15,20235894,7.5),
(16,20235894,8.5),(17,20235894,9.5),(18,20235894,7.6),(19,20235894,8.2),

(1,20235866,9.5),(2,20235866,9.0),(3,20235866,7.5),(4,20235866,6.0),(5,20235866,10.0),(6,20235866, 5.5),(7,20235866,7.65),(8,20235866,9.65),
(9,20235866,7.85),(10,20235866,5.65),(11,20235866,4.5),(12,20235866,8.23),(13,20235866,7.84),(14,20235866,4.6),(15,20235866,9.5),
(16,20235866,7.45),(17,20235866,7.85),(18,20235866,6.52),(19,20235866,7.45),

(1,20235854,10.0),(2,20235854,8.9),(3,20235854,7.2),(4,20235854,6.5),(5,20235854,9.9),(6,20235854, 6.0),(7,20235854,8.0),(8,20235854,9.0),
(9,20235854,7.0),(10,20235854,8.65),(11,20235854,4.0),(12,20235854,2.3),(13,20235854,4.2),(14,20235854,8.5),(15,20235854,6.5),
(16,20235854,7.14),(17,20235854,8.5),(18,20235854,7.5),(19,20235854,8.75),

(1,20235810,9.75),(2,20235810,7.1),(3,20235810,4.5),(4,20235810,4.5),(5,20235810,8.8),(6,20235810, 7.15),(7,20235810,8.8),(8,20235810,9.1),
(9,20235810,7.2),(10,20235810,8.3),(11,20235810,5.5),(12,20235810,4.3),(13,20235810,3.2),(14,20235810,6.5),(15,20235810,9.5),
(16,20235810,7.55),(17,20235810,9.65),(18,20235810,7.2),(19,20235810,6.1);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235981,4.44),(2,20235981,7.5),(3,20235981,7.5),(4,20235981,9.58),(5,20235981,4.4),(6,20235981, 7.41),(7,20235981,8.54),(8,20235981,7.41),
(9,20235981,8.5),(10,20235981,4.21),(11,20235981,8.54),(12,20235981,7.01),(13,20235981,5.23),(14,20235981,4.5),(15,20235981,9.2),
(16,20235981,7.4),(17,20235981,1.2),(18,20235981,7.5),(19,20235981,7.5),

(1,20235838,9.5),(2,20235838,9.0),(3,20235838,7.5),(4,20235838,6.0),(5,20235838,10.0),(6,20235838, 5.5),(7,20235838,7.65),(8,20235838,9.65),
(9,20235838,7.85),(10,20235838,5.65),(11,20235838,4.5),(12,20235838,8.23),(13,20235838,7.84),(14,20235838,4.6),(15,20235838,9.5),
(16,20235838,7.45),(17,20235838,7.85),(18,20235838,6.52),(19,20235838,7.45),

(1,20235917,8.45),(2,20235917,7.42),(3,20235917,6.5),(4,20235917,4.0),(5,20235917,5.2),(6,20235917, 7.74),(7,20235917,6.25),(8,20235917,9.0),
(9,20235917,7.0),(10,20235917,5.0),(11,20235917,4.0),(12,20235917,7.52),(13,20235917,5.4),(14,20235917,7.6),(15,20235917,4.5),
(16,20235917,5.5),(17,20235917,8.5),(18,20235917,5.2),(19,20235917,7.5),

(1,20235929,6.5),(2,20235929,3.2),(3,20235929,4.5),(4,20235929,5.5),(5,20235929,6.5),(6,20235929,4.2),(7,20235929,8.9),(8,20235929,7.5),
(9,20235929,7.5),(10,20235929,2.3),(11,20235929,5.1),(12,20235929,5.2),(13,20235929,9.5),(14,20235929,8.5),(15,20235929,7.5),
(16,20235929,8.1),(17,20235929,9.5),(18,20235929,7.6),(19,20235929,7.3),

(1,20235806,10.0),(2,20235806,8.9),(3,20235806,9.5),(4,20235806,9.4),(5,20235806,9.5),(6,20235806, 8.7),(7,20235806,7.5),(8,20235806,9.65),
(9,20235806,8.75),(10,20235806,9.65),(11,20235806,7.98),(12,20235806,8.9),(13,20235806,7.7),(14,20235806,8.5),(15,20235806,8.95),
(16,20235806,8.14),(17,20235806,7.5),(18,20235806,9.5),(19,20235806,10);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235691,10.0),(2,20235691,8.5),(3,20235691,8.5),(4,20235691,8.5),(5,20235691,10.0),(6,20235691, 9.2),(7,20235691,8.7),(8,20235691,9.5),
(9,20235691,8.8),(10,20235691,8.6),(11,20235691,9.2),(12,20235691,8.9),(13,20235691,8.8),(14,20235691,9.8),(15,20235691,9.9),
(16,20235691,9.5),(17,20235691,8.8),(18,20235691,8.5),(19,20235691,9.5),

(1,20235962,6.5),(2,20235962,3.2),(3,20235962,4.5),(4,20235962,5.5),(5,20235962,6.5),(6,20235962,4.2),(7,20235962,8.9),(8,20235962,7.5),
(9,20235962,7.5),(10,20235962,2.3),(11,20235962,5.1),(12,20235962,5.2),(13,20235962,9.5),(14,20235962,8.5),(15,20235962,7.5),
(16,20235962,8.1),(17,20235962,9.5),(18,20235962,7.6),(19,20235962,7.3),

(1,20235780,8.8),(2,20235780,7.2),(3,20235780,8.5),(4,20235780,4.0),(5,20235780,8.2),(6,20235780, 8.74),(7,20235780,8.25),(8,20235780,9.2),
(9,20235780,7.2),(10,20235780,6.3),(11,20235780,4.9),(12,20235780,7.52),(13,20235780,7.4),(14,20235780,9.6),(15,20235780,7.5),
(16,20235780,9.5),(17,20235780,6.5),(18,20235780,8.2),(19,20235780,9.5),

(1,20235766,7.5),(2,20235766,8.2),(3,20235766,7.5),(4,20235766,5.5),(5,20235766,6.5),(6,20235766,4.2),(7,20235766,8.2),(8,20235766,7.5),
(9,20235766,8.5),(10,20235766,7.4),(11,20235766,7.98),(12,20235766,5.2),(13,20235766,7.5),(14,20235766,8.5),(15,20235766,7.5),
(16,20235766,8.5),(17,20235766,9.5),(18,20235766,7.6),(19,20235766,8.2),

(1,20235764,8.5),(2,20235764,7.6),(3,20235764,8.5),(4,20235764,4.9),(5,20235764,5.5),(6,20235764, 7.8),(7,20235764,8.25),(8,20235764,9.7),
(9,20235764,7.3),(10,20235764,5.6),(11,20235764,4.8),(12,20235764,7.9),(13,20235764,6.2),(14,20235764,9.6),(15,20235764,6.5),
(16,20235764,5.7),(17,20235764,8.9),(18,20235764,9.2),(19,20235764,8.6);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235861,4.6),(2,20235861,6.9),(3,20235861,9.5),(4,20235861,7.4),(5,20235861,9.5),(6,20235861, 6.7),(7,20235861,5.5),(8,20235861,9.7),
(9,20235861,8.2),(10,20235861,4.6),(11,20235861,5.2),(12,20235861,8.9),(13,20235861,5.7),(14,20235861,8.2),(15,20235861,8.5),
(16,20235861,6.6),(17,20235861,4.5),(18,20235861,9.5),(19,20235861,9.5),

(1,20235662,9.5),(2,20235662,7.2),(3,20235662,8.6),(4,20235662,9.7),(5,20235662,9.5),(6,20235662,8.2),(7,20235662,8.9),(8,20235662,10.0),
(9,20235662,8.5),(10,20235662,8.3),(11,20235662,9.9),(12,20235662,8.2),(13,20235662,9.5),(14,20235662,8.5),(15,20235662,9.5),
(16,20235662,9.1),(17,20235662,9.5),(18,20235662,7.6),(19,20235662,8.3),

(1,20235782,10.0),(2,20235782,8.9),(3,20235782,9.5),(4,20235782,9.4),(5,20235782,9.5),(6,20235782, 8.7),(7,20235782,7.5),(8,20235782,9.65),
(9,20235782,8.75),(10,20235782,9.65),(11,20235782,7.98),(12,20235782,8.9),(13,20235782,7.7),(14,20235782,8.5),(15,20235782,8.95),
(16,20235782,8.14),(17,20235782,7.5),(18,20235782,9.5),(19,20235782,10.0),

(1,20225526,8.5),(2,20225526,9.5),(3,20225526,8.8),(4,20225526,9.7),(5,20225526,4.9),(6,20225526, 7.5),(7,20225526,8.5),(8,20225526,7.8),
(9,20225526,7.7),(10,20225526,8.6),(11,20225526,8.7),(12,20225526,7.3),(13,20225526,5.0),(14,20225526,7.8),(15,20225526,9.9),
(16,20225526,7.1),(17,20225526,5.2),(18,20225526,5.5),(19,20225526,7.8),

(1,20235067,9.0),(2,20235067,9.3),(3,20235067,8.6),(4,20235067,6.2),(5,20235067,8.9),(6,20235067, 8.5),(7,20235067,8.65),(8,20235067,1.65),
(9,20235067,7.1),(10,20235067,8.9),(11,20235067,5.5),(12,20235067,8.7),(13,20235067,7.3),(14,20235067,7.6),(15,20235067,7.5),
(16,20235067,6.9),(17,20235067,7.9),(18,20235067,6.7),(19,20235067,7.9),

(1,20235053,9.75),(2,20235053,6.9),(3,20235053,8.5),(4,20235053,10.0),(5,20235053,7.5),(6,20235053, 7.6),(7,20235053,9.3),(8,20235053,9.6),
(9,20235053,7.75),(10,20235053,7.65),(11,20235053,4.98),(12,20235053,5.9),(13,20235053,7.9),(14,20235053,9.5),(15,20235053,8.5),
(16,20235053,5.14),(17,20235053,6.5),(18,20235053,2.5),(19,20235053,7.0),

(1,20235795,7.5),(2,20235795,8.2),(3,20235795,7.5),(4,20235795,5.5),(5,20235795,6.5),(6,20235795,4.2),(7,20235795,8.2),(8,20235795,7.5),
(9,20235795,8.5),(10,20235795,7.4),(11,20235795,7.98),(12,20235795,5.2),(13,20235795,7.5),(14,20235795,8.5),(15,20235795,7.5),
(16,20235795,8.5),(17,20235795,9.5),(18,20235795,7.6),(19,20235795,8.2);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235787,8.2),(2,20235787,8.2),(3,20235787,9.5),(4,20235787,7.5),(5,20235787,5.5),(6,20235787,9.4),(7,20235787,7.75),(8,20235787,7.9),
(9,20235787,8.5),(10,20235787,5.7),(11,20235787,7.8),(12,20235787,6.5),(13,20235787,8.4),(14,20235787,6.5),(15,20235787,7.8),
(16,20235787,8.3),(17,20235787,6.5),(18,20235787,7.6),(19,20235787,8.6),

(1,20235794,9.5),(2,20235794,8.3),(3,20235794,9.7),(4,20235794,7.7),(5,20235794,7.5),(6,20235794, 8.9),(7,20235794,7.9),(8,20235794,10.0),
(9,20235794,8.7),(10,20235794,9.2),(11,20235794,10.0),(12,20235794,8.5),(13,20235794,6.5),(14,20235794,8.2),(15,20235794,8.9),
(16,20235794,8.4),(17,20235794,8.2),(18,20235794,6.2),(19,20235794,9.9),

(1,20235905,8.5),(2,20235905,7.2),(3,20235905,8.9),(4,20235905,6.5),(5,20235905,7.5),(6,20235905,5.5),(7,20235905,8.7),(8,20235905,7.5),
(9,20235905,7.4),(10,20235905,6.3),(11,20235905,7.8),(12,20235905,5.3),(13,20235905,10.0),(14,20235905,6.7),(15,20235905,5.5),
(16,20235905,8.05),(17,20235905,10.0),(18,20235905,8.8),(19,20235905,7.8),

(1,20215249,5.5),(2,20215249,9.5),(3,20215249,9.5),(4,20215249,9.5),(5,20215249,5.2),(6,20215249, 8.98),(7,20215249,8.7),(8,20215249,7.1),
(9,20215249,7.5),(10,20215249,5.5),(11,20215249,8.4),(12,20215249,7.3),(13,20215249,5.7),(14,20215249,6.2),(15,20215249,9.3),
(16,20215249,6.4),(17,20215249,4.5),(18,20215249,6.6),(19,20215249,7.1),

(1,20235722,9.5),(2,20235722,9.2),(3,20235722,8.3),(4,20235722,9.7),(5,20235722,9.1),(6,20235722, 8.4),(7,20235722,9.2),(8,20235722,9.1),
(9,20235722,8.9),(10,20235722,9.7),(11,20235722,7.8),(12,20235722,9.1),(13,20235722,8.5),(14,20235722,8.7),(15,20235722,8.7),
(16,20235722,8.5),(17,20235722,8.4),(18,20235722,9.4),(19,20235722,10.0),

(1,20235128,8.5),(2,20235128,7.5),(3,20235128,4.2),(4,20235128,5.66),(5,20235128,7.8),(6,20235128,6.2),(7,20235128,7.11),(8,20235128,8.21),
(9,20235128,5.41),(10,20235128,9.5),(11,20235128,8.5),(12,20235128,4.2),(13,20235128,1.87),(14,20235128,4.42),(15,20235128,7.8),
(16,20235128,5.5),(17,20235128,9.8),(18,20235128,10.0),(19,20235128,10.0);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235772,9.2),(2,20235772,6.5),(3,20235772,5.2),(4,20235772,5.1),(5,20235772,8.8),(6,20235772,6.2),(7,20235772,5.7),(8,20235772,8.2),
(9,20235772,6.5),(10,20235772,9.5),(11,20235772,8.9),(12,20235772,5.2),(13,20235772,3.5),(14,20235772,5.1),(15,20235772,6.1),
(16,20235772,5.5),(17,20235772,10.0),(18,20235772,5.55),(19,20235772,6.78),

(1,20225407,7.56),(2,20225407,8.7),(3,20225407,9.2),(4,20225407,9.66),(5,20225407,8.4),(6,20225407,7.5),(7,20225407,7.8),(8,20225407,8.2),
(9,20225407,8.5),(10,20225407,9.7),(11,20225407,8.3),(12,20225407,6.5),(13,20225407,7.4),(14,20225407,5.5),(15,20225407,8.8),
(16,20225407,7.5),(17,20225407,9.8),(18,20225407,10.0),(19,20225407,10.0);

INSERT INTO evalxEst (idEvaluacion, idEstudiante, calificacion) VALUES
(1,20235007,4.6),(2,20235007,6.9),(3,20235007,9.5),(4,20235007,7.4),(5,20235007,9.5),(6,20235007, 6.7),(7,20235007,5.5),(8,20235007,9.7),
(9,20235007,8.2),(10,20235007,4.6),(11,20235007,5.2),(12,20235007,8.9),(13,20235007,5.7),(14,20235007,8.2),(15,20235007,8.5),
(16,20235007,6.6),(17,20235007,4.5),(18,20235007,9.5),(19,20235007,9.5),

(1,20235973,10.0),(2,20235973,8.9),(3,20235973,9.5),(4,20235973,9.4),(5,20235973,9.5),(6,20235973, 8.7),(7,20235973,7.5),(8,20235973,9.65),
(9,20235973,8.75),(10,20235973,9.65),(11,20235973,7.98),(12,20235973,8.9),(13,20235973,7.7),(14,20235973,8.5),(15,20235973,8.95),
(16,20235973,8.14),(17,20235973,7.5),(18,20235973,9.5),(19,20235973,10.0);