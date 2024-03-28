CREATE DATABASE Alke_Wallet;
USE Alke_Wallet;

CREATE TABLE usuario (
	user_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    correo_electronico VARCHAR(50),
    contrasena VARCHAR(50),
    saldo INT
   
);
/*
ALTER TABLE usuario
DROP COLUMN fecha_creacion;
*/
DESCRIBE usuario;

INSERT INTO usuario (nombre, correo_electronico, contrasena, saldo)
VALUES	("Andres A.", "ing.andres.avenda@gmail.com", "1234", 20000),
		("Pedro Ramires", "p.ramires@hotmail.com", "1478", 50000),
        ("Paola Cartilla", "p_castilla@gmail.com", "4667", 80000),
        ("Pepe D", "dog.p@hotmail.com", "ghjk", 252000),
        ("Felpe", "felipe@gmail.com", "4565", 95000),
		("Edgardo R.", "r.edgardo@hotmail.com", "7890", 55800),
        ("Paula Zapata", "p.zapata@gmail.com", "3467", 88000),
        ("Toretto Dog", "dog.tt@hotmail.com", "plo", 395000);

-- TRUNCATE usuario;

UPDATE usuario SET correo_electronico = "ing.andres@gmail.com" WHERE user_id = 1;

SELECT * FROM usuario;

CREATE TABLE transaccion (
	transaction_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    sender_user_id_foranea INT,
    FOREIGN KEY (sender_user_id_foranea) REFERENCES usuario(user_id),
    receiver_user_foranea int,
    FOREIGN KEY (receiver_user_foranea) REFERENCES usuario(user_id),
    valor INT,
    transaction_date DATE
);

INSERT INTO transaccion (sender_user_id_foranea, receiver_user_foranea, valor, transaction_date)
VALUES	(1, 8, 25000, "2024-03-20"),
		(3, 6, 25000, "2024-03-20"),
        (5, 4, 25000, "2024-03-20"),
        (7, 2, 25000, "2024-03-20"),
        (4, 3, 25000, "2024-03-20");
        
        
DELETE FROM transaccion WHERE transaction_id = 1;
		

SELECT * FROM transaccion;

CREATE TABLE moneda(
	currency_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    currency_name VARCHAR(50),
    currency_symbol VARCHAR(50)
    
);

INSERT INTO moneda ( currency_name, currency_symbol)
VALUES	('Peso Chileno', 'CLP'),
		('Peso Colombiano', 'COL'),
        ('Dolar', 'USD'),
        ('Euro', 'EUR');
        
DESCRIBE moneda;
SELECT currency_name, currency_symbol FROM moneda WHERE currency_id = 4;
SELECT * FROM moneda;