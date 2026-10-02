USE relaciones;

CREATE TABLE estudiante (
    estudiante_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE curso (
    curso_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE estudiante_curso (
    estudiante_id INT NOT NULL,
    curso_id INT NOT NULL,

    PRIMARY KEY (estudiante_id, curso_id),

    FOREIGN KEY (estudiante_id) REFERENCES estudiante(estudiante_id),
    FOREIGN KEY (curso_id) REFERENCES curso(curso_id)
);

INSERT INTO estudiante (nombre)
VALUES
('Carlos'),
('Laura');

INSERT INTO curso (nombre)
VALUES
('SQL'),
('HTML'),
('JavaScript'),
('Python');


INSERT INTO estudiante_curso (estudiante_id, curso_id)
VALUES
(1, 1),
(1, 2),
(1, 3);

INSERT INTO estudiante_curso (estudiante_id, curso_id)
VALUES
(2, 1),
(2, 4);

SELECT * FROM curso;