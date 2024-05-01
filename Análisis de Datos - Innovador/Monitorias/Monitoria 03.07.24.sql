# Tablas universidad 

CREATE TABLE carrera (idcarrera INTEGER AUTO_INCREMENT PRIMARY KEY,
					  nombre varchar(50),
					  duracion INTEGER
);

CREATE TABLE alumno (idalumno INTEGER AUTO_INCREMENT PRIMARY KEY,
					 id_carrera INTEGER,
					 nombre varchar(30),
					 appaterno varchar(30),
					 apmaterno varchar(30),
					 email varchar(30),
					 FOREIGN KEY (id_carrera) REFERENCES carrera(idcarrera)
);

INSERT INTO carrera (nombre, duracion) VALUES ("Ciencia politica", 10);

SELECT *FROM carrera;

DELETE FROM carrera WHERE idcarrera = 4 ;
SELECT *FROM carrera;

INSERT INTO carrera (nombre, duracion) VALUES ("Ingenieria de sistemas", 10);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Derecho", 10);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Ingeniería civil", 10);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Psicología", 9);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Medicina", 12);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Administración de empresas", 8);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Arquitectura", 10);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Biología", 10);
INSERT INTO carrera (nombre, duracion) 	VALUES ("Agrícola", 5);

SELECT *FROM carrera;

DELETE FROM carrera WHERE idcarrera = 2 ;
UPDATE carrera SET nombre = "Tec agrícola", duracion = 5 WHERE idcarrera = 13;

SELECT *FROM carrera;

INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (1, "María", "García", "López", "m.garcia@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (8, "Juan", "Martínez", "Rodríguez", "j.martinez@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (9, "Ana", "Fernández", "Pérez", "a.fernandez@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (10, "Diego", "González", "Hernández", "d.gonzalez@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (11, "Carla", "Díaz", "Sánchez", "c.diaz@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (12, "Pablo", "Ramírez", "Gómez", "p.ramirez@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (13, "Laura", "Ruiz", "Vargas", "l.ruiz@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (1, "Andrés", "López", "García", "a.lopez@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (5, "Sofia", "Castro", "Morales", "s.castro@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (6, "Javier", "Ortiz", "Jiménez", "j.ortiz@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (7, "Daniela", "Torres", "Pérez", "d.torres@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (8, "Manuel", "Ríos", "Silva", "m.rios@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (9, "Carolina", "Herrera", "Reyes", "c.herrera@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (10, "Sebastián", "Medina", "Gutiérrez", "s.medina@u.edu.co");
INSERT INTO alumno (id_carrera, nombre, appaterno, apmaterno, email) VALUES (11, "Valentina", "Pérez", "Moreno", "v.perez@u.edu.co");

SELECT *FROM alumno;
