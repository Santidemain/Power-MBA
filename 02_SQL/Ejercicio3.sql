/* 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico). */

CREATE TABLE productos (
	id INT PRIMARY KEY,
	nombre VARCHAR(255),
	precio INT
)

/* 2. Inserta al menos cinco registros en la tabla "Productos". */

INSERT INTO productos (id, nombre, precio)
VALUES
(1, 'aguacate', 4),
(2, 'fresa', 2),
(3, 'pera', 1),
(4, 'mango', 5),
(5, 'manzana', 3),
(6, 'pitaya', 1),
(7, 'naranja', 3);

/* 3. Actualiza el precio de un producto en la tabla "Productos". */

UPDATE productos
SET precio = 8
WHERE id = 4

/* 4. Elimina un producto de la tabla "Productos". */

DELETE FROM productos
WHERE id = 2

/*  Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos"). */

SELECT u.nombre AS nombre_usuario, p.nombre AS nombre_producto
FROM Usuarios u
INNER JOIN Compras c ON u.id_usuario = c.id_usuario
INNER JOIN Productos p ON c.id_producto = p.id_producto;
