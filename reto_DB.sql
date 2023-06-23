SHOW DATABASES;

/* creo una database */
CREATE DATABASE reto_2;

/* le digo al SQL que utilice la database creada */
USE reto_2;

/* comando para verificar el estado de la tabla (en este caso vacia)*/
SHOW TABLES;

/* comando para crear una tabla */
CREATE TABLE Cat_Café(
id_gatitos INT NOT NULL AUTO_INCREMENT,
nombre_gatito VARCHAR(30) NOT NULL,
apodo VARCHAR(50),
edad INT NOT NULL,
peso FLOAT NOT NULL,
personalidad VARCHAR (100) NOT NULL,
color VARCHAR(70) NOT NULL,
ojos VARCHAR (70) NOT NULL,
acompañante VARCHAR (70),
PRIMARY KEY (id_gatitos)
);

/* insertar datos en la tabla */
INSERT INTO  Cat_Café(nombre_gatito, edad, peso, personalidad, color, ojos, acompañante) VALUES ("Rocket", 3, 3, "le gusta dormir mucho", "blanco", "celestes" , "Sunny");
INSERT INTO  Cat_Café(nombre_gatito, apodo, edad, peso, personalidad, color, ojos) VALUES ("pinto", "pin", 5, 3.5, "le gustan los mimos", "naranja con blanco", "amarillos con verde");
INSERT INTO  Cat_Café(nombre_gatito, edad, peso, personalidad, color, ojos) VALUES ("Sunny", 2, 5, "le encanta jugar con pelotitas", "negro", "amarillentos");
INSERT INTO  Cat_Café(nombre_gatito, apodo, edad, peso, personalidad, color, ojos, acompañante) VALUES ("Emelia", "Ameli", 5, 4.4, "le encanta reposar donde hay sol", "gris con negro", "amarillentos", "Seiko");
INSERT INTO  Cat_Café(nombre_gatito, edad, peso, personalidad, color, ojos) VALUES ("Nikki", 4, 4.3, "no se despega de Ricochet", "gris", "verdes claros");
INSERT INTO  Cat_Café(nombre_gatito, edad, peso, personalidad, color, ojos) VALUES ("Ricochet", 4, 4.7, "le gustan los lugares altos", "blanco con gris", "celestes");
INSERT INTO  Cat_Café(nombre_gatito, edad, peso, personalidad, color, ojos) VALUES ("Onyx", 7, 3.3, " va donde hay comida", "marron", "amarillentos");
INSERT INTO  Cat_Café(nombre_gatito, edad, peso, personalidad, color, ojos) VALUES ("Seiko", 2, 3.7, "le gusta dormir junto a otros gatos", "blanco con gris", "verdosos");
INSERT INTO  Cat_Café(nombre_gatito, apodo, edad, peso, personalidad, color, ojos) VALUES ("Nathan", "Ninja Nate", 7, 4.5, "le encanta esconderse", "negro", "amarillentos");


/* agregue por defecto para los gatitos que no tienen apodo */
UPDATE Cat_Café
SET apodo = 'No tienen'
WHERE apodo is NULL;

/* valor por defecto para los gatitos que llegaron solitos*/
UPDATE Cat_Café
SET acompañante = 'solitos'
WHERE acompañante is NULL;


/* agregar nueva columna al lado de la columna peso */
ALTER TABLE Cat_Café
ADD COLUMN con_dieta BOOLEAN AFTER peso;

/* decirle a la columna que indique si es true o false segun el peso */
UPDATE Cat_Café
SET con_dieta = CASE WHEN peso > 4 THEN TRUE ELSE FALSE END;


/* agregar nueva columna al lado de la columna edad */
ALTER TABLE Cat_Café
ADD COLUMN anos_para_jubilacion INT AFTER edad;

/* indica cuantos le faltan para jubilarse */
UPDATE Cat_Café
SET anos_para_jubilacion = 11 - edad;



/* agregar los 2 ultimos gatitos */
INSERT INTO Cat_Café (nombre_gatito, apodo, edad, peso, personalidad, color, ojos) VALUES ('Toffee', 'Tofisito', 4, 3.4, 'Le gusta jugar y estar solo a veces', 'blanco con gris', 'verdosos');

INSERT INTO Cat_Café (nombre_gatito, edad, peso, personalidad, color, ojos) VALUES ('Chucky', 10, 4.3, 'Le gusta dormir y caminar', 'naranja con blanco', 'amarillentos');


/* repeti para que me tome los datos de los 2 nuevos gatitos */
UPDATE Cat_Café
SET apodo = 'No tienen'
WHERE apodo is NULL;

/* repeti el cod para que me tome los datos de los 2 nuevos gatitos */
UPDATE Cat_Café
SET con_dieta = CASE WHEN peso > 4 THEN TRUE ELSE FALSE END;

/* repeti el cod para que me tome los datos de los 2 nuevos gatitos */
UPDATE Cat_Café
SET anos_para_jubilacion = 11 - edad;

/* repeti el cod para que me tome los datos de los 2 nuevos gatitos */
UPDATE Cat_Café
SET acompañante = 'solitos'
WHERE acompañante is NULL;









