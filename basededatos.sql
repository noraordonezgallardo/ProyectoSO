DROP DATABASE IF EXISTS Play;
CREATE DATABASE Play;
USE Play;

CREATE TABLE Player (
    Id INTEGER PRIMARY KEY NOT NULL,
    Username TEXT NOT NULL,
    Name TEXT NOT NULL,
    Address TEXT NOT NULL,
    Password TEXT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE `Match` (
    Id_partida INTEGER PRIMARY KEY NOT NULL,
    Id INTEGER NOT NULL,
    Points INTEGER NOT NULL,
    Duration INTEGER NOT NULL,
    Finish_time INTEGER NOT NULL,
    FOREIGN KEY (Id) REFERENCES Player(Id)
) ENGINE = InnoDB;

INSERT INTO Player VALUES (1, 'polfernandez', 'Pol', 'pol.fernandez@gmail.com', 'contraseña');
INSERT INTO Player VALUES (2, 'hanabentaeb', 'Hana', 'hana.bentaeb@gmail.com', 'contraseña');
INSERT INTO Player VALUES (3, 'noraordonez', 'Nora', 'nora.ordonez@gmail.com', 'contraseña');

INSERT INTO `Match` VALUES (1, 1, 12, 32420, 0);
INSERT INTO `Match` VALUES (2, 2, 24, 15, 120);
