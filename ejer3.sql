create database rum;

use rum;

CREATE TABLE ciudad (
    ciudad_id INT PRIMARY KEY,
    ciudad_nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cliente (
    cliente_id INT PRIMARY KEY,
    cliente_nombre VARCHAR(100) NOT NULL,
    ciudad_id INT NOT NULL,
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);

CREATE TABLE pedido (
    pedido_id INT PRIMARY KEY,
    fecha DATE NOT NULL,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id)
);

INSERT INTO ciudad (ciudad_id, ciudad_nombre)
VALUES
(10, 'Manizales');

INSERT INTO cliente (cliente_id, cliente_nombre, ciudad_id)
VALUES
(5, 'Jane Doe', 10);

INSERT INTO pedido (pedido_id, fecha, cliente_id)
VALUES
(1, '2026-10-01', 5),
(2, '2026-10-02', 5);

SELECT * FROM cliente;