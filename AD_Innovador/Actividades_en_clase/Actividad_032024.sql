CREATE TABLE `inventario` (`id_libro` INTEGER PRIMARY KEY AUTO_INCREMENT,
						   `nombre` VARCHAR(100),
						   `autor` VARCHAR(100),
						   `genero` VARCHAR(50),
						   `precio` INTEGER,
						   `stock` INTEGER
);

CREATE TABLE `ventas` (`id_venta` INTEGER PRIMARY KEY AUTO_INCREMENT,
					   `fecha` DATE,
					   `total` INTEGER,
					   `id_libro1` INTEGER,
					   FOREIGN KEY (`id_libro1`) REFERENCES `inventario`(`id_libro`)
);

CREATE TABLE `proveedor` (`id_proveedor` INTEGER PRIMARY KEY AUTO_INCREMENT,
						  `numero_pedido` INTEGER,
                          `cantidad` INTEGER,
						  `id_libro2` INTEGER, 
						  FOREIGN KEY (`id_libro2`) REFERENCES `inventario`(`id_libro`)
)

SELECT * FROM inventario;

SELECT * FROM ventas;

SELECT * FROM proveedor;

INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('Cien años de soledad', 'Gabriel García Márquez', 'literatura', '60000', '10');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('El coronel no tiene quien le escriba', 'Gabriel García Márquez', 'literatura', '35000', '8');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('Ojos de perro azul', 'Gabriel García Márquez', 'literatura', '30000', '2');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('Del amor y otros demonios', 'Gabriel García Márquez', 'literatura', '38000', '5');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('El amor en los tiempos del cólera', 'Gabriel García Márquez', 'literatura', '40000', '8');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('La casa de los espíritus', 'Isabel Allende', 'literatura', '50000', '8');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('El amante japonés', 'Isabel Allende', 'literatura', '35000', '0');
INSERT INTO inventario (nombre, autor, genero, precio, stock) VALUES ('Lo que no tiene nombre', 'Piedad Bonnett', 'literatura', '40000', '2');

SELECT * FROM inventario;

INSERT INTO ventas (fecha, total, id_libro1) VALUES ('2024-03-14', "30000", 3);
INSERT INTO ventas (fecha, total, id_libro1) VALUES ('2024-03-15', "50000", 6);
INSERT INTO ventas (fecha, total, id_libro1) VALUES ('2024-03-15', "40000", 8);
INSERT INTO ventas (fecha, total, id_libro1) VALUES ('2024-03-16', "60000", 1);
INSERT INTO ventas (fecha, total, id_libro1) VALUES ('2024-03-16', "38000", 4);
INSERT INTO ventas (fecha, total, id_libro1) VALUES ('2024-03-16', "40000", 5);

SELECT * FROM ventas;

INSERT INTO proveedor (numero_pedido, cantidad, id_libro2) VALUES (100, 3, 2);
INSERT INTO proveedor (numero_pedido, cantidad, id_libro2) VALUES (101, 4, 7);

SELECT * FROM proveedor;
