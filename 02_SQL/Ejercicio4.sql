/* Crear la tabla Pedidos */
CREATE TABLE Pedidos (
    id serial PRIMARY KEY,
    id_usuario integer REFERENCES Usuarios(id),
    id_producto integer REFERENCES Productos(id)
);

/* Insertar registros en la tabla Pedidos */
INSERT INTO Pedidos (id_usuario, id_producto) VALUES
(1, 1), -- Usuario 1 compró Producto 1
(2, 2), -- Usuario 2 compró Producto 2
(1, 3); -- Usuario 1 compró Producto 3

/* Consulta para mostrar nombres de usuarios y productos comprados */
SELECT u.nombre AS nombre_usuario, COALESCE(p.nombre, 'Ningún pedido realizado') AS nombre_producto
FROM Usuarios u
LEFT JOIN Pedidos pe ON u.id = pe.id_usuario
LEFT JOIN Productos p ON pe.id_producto = p.id;

/* Consulta para mostrar nombres de usuarios que han realizado un pedido o no */
SELECT u.nombre AS nombre_usuario, p.nombre AS nombre_producto
FROM Usuarios u
LEFT JOIN Pedidos pe ON u.id = pe.id_usuario
LEFT JOIN Productos p ON pe.id_producto = p.id;

/* Agregar la columna "cantidad" a la tabla Pedidos y actualizar los registros */
ALTER TABLE Pedidos
ADD COLUMN cantidad integer;
UPDATE Pedidos
SET cantidad = 1;


