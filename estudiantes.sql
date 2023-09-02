create database db_empresa;
use db_empresa;
-- Crear la tabla tipos_sangre
CREATE TABLE tipos_sangre (
    id_tipo_sangre SERIAL PRIMARY KEY,
    sangre VARCHAR(10) NOT NULL
);

-- Insertar algunos registros de ejemplo en tipos_sangre
INSERT INTO tipos_sangre (sangre) VALUES
    ('A+'),
    ('A-'),
    ('B+'),
    ('B-'),
    ('AB+'),
    ('AB-'),
    ('O+'),
    ('O-');

-- Crear la tabla estudiantes
CREATE TABLE estudiantes (
    id_estudiante SERIAL PRIMARY KEY,
    carne VARCHAR(15) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(100),
    id_tipo_sangre INT REFERENCES tipos_sangre(id_tipo_sangre),
    fecha_nacimiento DATE
);

-- Ejemplo de inserción de un estudiante
INSERT INTO estudiantes (carne, nombres, apellidos, direccion, telefono, correo_electronico, id_tipo_sangre, fecha_nacimiento)
VALUES ('2023001', 'Juan', 'Pérez', 'Calle 123, Ciudad', '123456789', 'juan@example.com', 1, '2000-01-15');

-- Puedes realizar más inserciones de estudiantes con diferentes tipos de sangre y detalles