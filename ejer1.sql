CREATE DATABASE otros;

USE otros;

CREATE TABLE cliente (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);

CREATE TABLE producto (
    producto_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0)
);

CREATE TABLE venta (
    venta_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

CREATE TABLE detalle_venta (
    venta_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0),

    PRIMARY KEY (venta_id, producto_id),

    FOREIGN KEY (venta_id) REFERENCES venta(venta_id),
    FOREIGN KEY (producto_id) REFERENCES producto(producto_id)
);

USE otros;

-- DATOS DE CLIENTES
INSERT INTO cliente (nombre, telefono)
VALUES
('Ana', '3001111'),
('Luis', '3102222'),
('Carlos', '3153333'),
('Laura', '3204444'),
('Jane Doe', '3015555');


-- DATOS DE PRODUCTOS
INSERT INTO producto (nombre, precio)
VALUES
('Teclado', 80000),
('Mouse', 40000),
('Monitor', 700000),
('Audifonos', 120000),
('Webcam', 150000);


-- DATOS DE VENTAS
INSERT INTO venta (cliente_id, fecha)
VALUES
(1, '2026-10-01'),
(2, '2026-10-01'),
(3, '2026-10-02'),
(4, '2026-10-03'),
(5, '2026-10-04');


-- DETALLE DE LAS VENTAS
INSERT INTO detalle_venta (venta_id, producto_id, cantidad, precio, cliente_id)
VALUES
(1, 1, 1, 80000),
(1, 2, 2, 40000),
(2, 3, 1, 700000),
(3, 4, 1, 120000),
(4, 5, 2, 150000),
(5, 2, 1, 40000);

SELECT * FROM cliente;
SELECT * FROM producto;
SELECT * FROM venta;
SELECT * FROM detalle_venta;