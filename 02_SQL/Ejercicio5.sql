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

/* 5. Lee todos los clientes de la tabla "Clientes". */
SELECT * FROM Clientes;

/* 6. Crear la tabla pedidos */
CREATE TABLE Pedidos (
    id serial PRIMARY KEY,
    cliente_id integer REFERENCES Clientes(id)
);

/* 7. Insertar pedido en la tabla pedidos */
INSERT INTO Pedidos (id, cliente_id) VALUES (1, 1);

/* 8. Actualizar el cliente_id del pedido con id=1 en la tabla "Pedidos" */
UPDATE Pedidos SET cliente_id = 2 WHERE id = 1;

/* 9. Eliminar el pedido con id=1 de la tabla "Pedidos" */
DELETE FROM Pedidos WHERE id = 1;

/* 10. Leer todos los pedidos de la tabla "Pedidos" */
SELECT * FROM Pedidos;

/* 11. Crear la tabla "Productos" */
CREATE TABLE Productos (
    id serial PRIMARY KEY,
    nombre varchar(100)
);

/* 12. Insertar un producto en la tabla "Productos" */
INSERT INTO Productos (id, nombre) VALUES (1, 'Camisa');

/* 13. Actualizar el nombre del producto con id=1 en la tabla "Productos" */
UPDATE Productos SET nombre = 'Pantalón' WHERE id = 1;

/* 14. Eliminar el producto con id=1 de la tabla "Productos" */
DELETE FROM Productos WHERE id = 1;

/* 15. Leer todos los productos de la tabla "Productos" */
SELECT * FROM Productos;

/* 16. Crear la tabla "DetallesPedido" */
CREATE TABLE DetallesPedido (
    pedido_id integer,
    producto_id integer,
    PRIMARY KEY (pedido_id, producto_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

/* 17. Insertar un detalle de pedido en la tabla "DetallesPedido" */
INSERT INTO DetallesPedido (pedido_id, producto_id) VALUES (1, 1);

/* 18. Actualizar el producto_id del detalle de pedido con pedido_id=1 en la tabla "DetallesPedido" */
UPDATE DetallesPedido SET producto_id = 2 WHERE pedido_id = 1;

/* 19. Eliminar el detalle de pedido con pedido_id=1 de la tabla "DetallesPedido" */
DELETE FROM DetallesPedido WHERE pedido_id = 1;

/* 20. Leer todos los detalles de pedido de la tabla "DetallesPedido" */
SELECT * FROM DetallesPedido;

/* 21. Consulta con INNER JOIN para obtener todos los clientes y sus pedidos correspondientes */
SELECT c.nombre AS nombre_cliente, p.id AS id_pedido
FROM Clientes c
INNER JOIN Pedidos p ON c.id = p.cliente_id;

/* 22. Consulta con LEFT JOIN para obtener todos los clientes y sus pedidos correspondientes */
SELECT c.nombre AS nombre_cliente, COALESCE(p.id, 'Sin pedido') AS id_pedido
FROM Clientes c
LEFT JOIN Pedidos p ON c.id = p.cliente_id;

/* 23. Consulta con INNER JOIN para obtener todos los productos y los detalles de pedido correspondientes */
SELECT p.nombre AS nombre_producto, d.pedido_id
FROM Productos p
INNER JOIN DetallesPedido d ON p.id = d.producto_id;

/* 24. Consulta con LEFT JOIN para obtener todos los productos y los detalles de pedido correspondientes */
SELECT p.nombre AS nombre_producto, COALESCE(d.pedido_id, 'Sin pedido') AS pedido_id
FROM Productos p
LEFT JOIN DetallesPedido d ON p.id = d.producto_id;

/* 25. Agregar una nueva columna "telefono" a la tabla "Clientes" */
ALTER TABLE Clientes ADD COLUMN telefono varchar(20);

/* 26. Modificar la columna "telefono" en la tabla "Clientes" para cambiar su tipo de datos a entero */
ALTER TABLE Clientes ALTER COLUMN telefono TYPE integer USING telefono::integer;

/* 27. Eliminar la columna "telefono" de la tabla "Clientes" */
ALTER TABLE Clientes DROP COLUMN telefono;

/* 28. Cambiar el nombre de la tabla "Clientes" a "Usuarios" */
ALTER TABLE Clientes RENAME TO Usuarios;

/* 29. Cambiar el nombre de la columna "nombre" en la tabla "Usuarios" a "nombre_completo" */
ALTER TABLE Usuarios RENAME COLUMN nombre TO nombre_completo;

/* 30. Agregar una restricción de clave primaria a la columna "id" en la tabla "Usuarios" */
ALTER TABLE Usuarios ADD CONSTRAINT pk_usuarios PRIMARY KEY (id);




