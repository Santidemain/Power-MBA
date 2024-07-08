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

/* 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades". */

ALTER TABLE Usuarios
ADD COLUMN Ciudad_id INT

ALTER TABLE Usuarios
ADD CONSTRAINT ciudad_fk
FOREIGN KEY (Ciudad_id)
REFERENCES Ciudades(id);

/* Probamos añadiendo la ciudad al usuario que queda */
UPDATE usuarios
SET ciudad_id = 1
WHERE usuarios.id = 2

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN). */

SELECT usuarios.nombre, ciudades.nombre, ciudades.pais FROM usuarios
LEFT JOIN ciudades ON usuarios.ciudad_id = ciudades.id

/* 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN). */

SELECT usuarios.nombre, ciudades.nombre, ciudades.pais FROM usuarios
INNER JOIN ciudades ON usuarios.ciudad_id = ciudades.id

