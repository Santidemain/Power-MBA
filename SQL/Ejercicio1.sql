/* 1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria), nombre (texto) y email (texto). */

CREATE TABLE Clientes (
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	email VARCHAR(255)
)

/*2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y email="juan@example.com". */

INSERT INTO public.clientes (id, nombre, email)
VALUES (1, 'Juan', 'juan@example.com')

/*3. Actualizar el email del cliente con id=1 a "juan@gmail.com". */

UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id = 1

/*4. Eliminar el cliente con id=1 de la tabla "Clientes". */

DELETE FROM public.clientes
WHERE id = 1;

/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto (texto) y cantidad (entero). */

CREATE TABLE Pedidos (
	id INT PRIMARY KEY,
	cliente_id INT,
	producto VARCHAR(255),
	cantidad INT,
	FOREIGN KEY (cliente_id) REFERENCES clientes (id)
);

/* 6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1, producto="Camiseta" y cantidad=2. */

/* Primero insertamos de nuevo el cliente con ID 1 */
INSERT INTO public.clientes (id, nombre, email)
VALUES (1, 'Juan', 'juan@example.com')

/* Posteriormente y con el cliente creado, ya podemos insertar un pedido */
INSERT INTO public.pedidos (id, cliente_id, producto, cantidad)
VALUES (1, 1, 'camiseta', 2)

/* 7. Actualizar la cantidad del pedido con id=1 a 3. */

UPDATE public.pedidos
SET cantidad =3
WHERE id = 1

/* 8. Eliminar el pedido con id=1 de la tabla "Pedidos". */

DELETE FROM public.pedidos
WHERE id = 1

/* 9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave primaria), nombre (texto) y precio (decimal). */

CREATE TABLE Productos(
	id INT PRIMARY KEY,
	nombre VARCHAR(255) NOT NULL,
	precio DECIMAL NOT NULL
);

/* 10. Insertar varios productos en la tabla "Productos" con diferentes valores.*/

INSERT INTO public.Productos (id, nombre, precio)
VALUES 
	(1, 'pantalones vaqueros', 25.45),
	(2, 'Polo hombre', 59),
	(3, 'Polo mujer', 59),
	(4, 'Sudadera ThePower', 45.95);

/* 11. Consultar todos los clientes de la tabla "Clientes". */

SELECT * FROM clientes

/* 12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los clientes correspondientes. */

/* Primero inserto tres pedidos para disponer de datos a visualizar */
INSERT INTO pedidos (id, cliente_id, producto, cantidad)
VALUES
	(2, 1, 'pantalones vaqueros', 5),
	(3, 1, 'Polo hombre', 3),
	(4, 1, 'Sudadera ThePower', 10);

/* A continuación hago la búsqueda de los pedidos y los nombres de cliente */
SELECT pedidos.id, pedidos.producto, pedidos.cantidad, clientes.nombre
FROM pedidos
LEFT JOIN clientes ON pedidos.cliente_id = clientes.id; 

/* 13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50. */

SELECT * FROM productos
WHERE precio >50

/* 14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o igual a 5. */

SELECT * FROM pedidos
WHERE cantidad >= 5;

/* 15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A". */

SELECT * from clientes
WHERE nombre LIKE 'A%';

/*16. Realizar una consulta que muestre el nombre del cliente y el total de pedidos realizados por cada cliente. */

SELECT Clientes.nombre, COUNT(Pedidos.id) AS total_pedidos
FROM Clientes
LEFT JOIN Pedidos ON Clientes.id = Pedidos.cliente_id
GROUP BY Clientes.nombre;

/* 17. Realizar una consulta que muestre el nombre del producto y la cantidad total de pedidos de ese producto. */

SELECT pedidos.producto, SUM(pedidos.cantidad) AS cantidad_total
FROM pedidos
GROUP BY pedidos.producto

/* 18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha. */

ALTER TABLE pedidos
ADD COLUMN fecha DATE

/* 19. Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla "Productos" en la columna "producto". */

/* Primero modificaos la tabla pedidos con la nueva columna */
ALTER TABLE pedidos
ADD COLUMN fk_producto INT

/* Luego añadimos la clave externa*/
ALTER TABLE pedidos
ADD CONSTRAINT fk_producto_foreign
FOREIGN KEY (fk_producto) REFERENCES productos(id);

/* 20. Realizar una consulta que muestre los nombres de los clientes, los nombres de los productos y las cantidades de los pedidos donde coincida la clave externa. */

SELECT clientes.nombre AS nombre_cliente, productos.nombre AS nombre_producto, pedidos.cantidad
FROM pedidos
JOIN clientes ON pedidos.cliente_id = clientes.id
JOIN productos ON pedidos.fk_producto = productos.id;

