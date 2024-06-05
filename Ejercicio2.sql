/* Paso 1, realizado desde PG admin */

/* 2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero). */

CREATE TABLE Usuarios (
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	edad INT
	)

/* 3. Inserta dos registros en la tabla "Usuarios". */

INSERT INTO public.usuarios (id, nombre, edad)
VALUES
(1, 'Maria', 35),
(2, 'Santi', 36);

/* 4. Actualiza la edad de un usuario en la tabla "Usuarios". */

UPDATE usuarios
SET edad =40
WHERE id=1

/* 5. Elimina un usuario de la tabla "Usuarios". */

DELETE FROM usuarios
WHERE id= 1

/* ------------------------------------------------------------- */
/* -------------------- DIFICULTAD MODERADA -------------------- */
/* ------------------------------------------------------------- */

/* 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto). */

CREATE TABLE Ciudades (
	id INT PRIMARY KEY,
	nombre VARCHAR (255),
	pais VARCHAR (255)
)

/* 2. Inserta al menos tres registros en la tabla "Ciudades". */

INSERT INTO Ciudades (id, nombre, pais)
VALUES
(1, 'Bilbao', 'España'),
(2, 'Paris', 'Francia'),
(3, 'Roma', 'Italia');


