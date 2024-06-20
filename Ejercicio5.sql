/* 1. Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre
(cadena de texto). */

CREATE TABLE Clientes (
	id INT PRIMARY KEY, /* No se menciona pero añado clave primaria a la columna id*/
	nombre VARCHAR (255)
)

/* 2. Inserta un cliente con id=1 y nombre='John' en la tabla "Clientes". */

INSERT INTO Clientes (id, nombre)
VALUES
(1, 'John')

/* 3. Actualiza el nombre del cliente con id=1 a 'John Doe' en la tabla "Clientes". */

UPDATE Clientes
SET nombre = 'John Doe'
WHERE id = 1

/* 4. Elimina el cliente con id=1 de la tabla "Clientes". */

DELETE FROM Clientes
WHERE id = 1