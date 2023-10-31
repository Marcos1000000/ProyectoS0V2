DROP DATABASE IF EXISTS JUEGO;
CREATE DATABASE JUEGO;
USE JUEGO;

CREATE TABLE Jugadores(
DNI INT NOT NULL,
Nombre VARCHAR(60),
Edad INT,
Password VARCHAR(20),
PRIMARY KEY(DNI)
)ENGINE = InnoDB;

CREATE TABLE Partida(
iDPartida INT,
NJugador1 VARCHAR(60),
NJugador2 VARCHAR(60),
Duracion INT,
Fecha INT,
PRIMARY KEY(iDPartida)
)ENGINE = InnoDB;


CREATE TABLE Resultado(
iDPartida INT,
NJugador1 VARCHAR(60),
NJugador2 VARCHAR(60),
Ganador VARCHAR(60),
FOREIGN KEY(NJugador1) REFERENCES Partida(NJugador1),
FOREIGN KEY(NJugador2) REFERENCES Partida(NJugador2),
PRIMARY KEY(iDPartida)
)ENGINE = InnoDB;


 INSERT INTO Jugadores VALUES ('987','Juan', 34, CONTRASEÑA);
 INSERT INTO Jugadores VALUES ('984','Pedro', 11, CONTRASEÑA);
 INSERT INTO Jugadores VALUES ('985','Luis', 23, CONTRASEÑA);
 INSERT INTO Jugadores VALUES ('986','Maria', 14, CONTRASEÑA);




 INSERT INTO Partida VALUES ('9987','Pedro','Maria', 11, 21-12-2023);
 INSERT INTO Partida VALUES ('9981','Juan','Maria', 20, 4-3-2023);
 INSERT INTO Partida VALUES ('9982','Pedro','Luis', 40, 5-6-2023);
 INSERT INTO Partida VALUES ('9983','Juan','Maria', 21, 7-1-2023);
 INSERT INTO Partida VALUES ('9984','Pedro','Maria', 11, 3-4-2023);
 INSERT INTO Partida VALUES ('9985','Luis','Juan', 17, 8-9-2023);
 INSERT INTO Partida VALUES ('9986','Pedro','Juan', 15, 12-4-2023);


 INSERT INTO Resultado VALUES ('9986','Pedro','Juan','Pedro');
 INSERT INTO Resultado VALUES ('9985','Luis','Juan', 'Luis');
 INSERT INTO Resultado VALUES ('9984','Pedro','Maria','Maria');
 INSERT INTO Resultado VALUES ('9983','Juan','Maria', 'Maria');
 INSERT INTO Resultado VALUES ('9982','Pedro','Luis', 'Pedro');
 INSERT INTO Resultado VALUES ('9987','Pedro','Maria','Maria');
 INSERT INTO Resultado VALUES ('9981','Juan','Maria','Juan');


