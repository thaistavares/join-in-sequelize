CREATE DATABASE IF NOT EXISTS joinsequelize;
USE joinsequelize;
CREATE TABLE IF NOT EXISTS invoice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    createdAt DATETIME,
    updatedAt DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
CREATE TABLE IF NOT EXISTS titulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(255),
    createdAt DATETIME,
    updatedAt DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
CREATE TABLE IF NOT EXISTS usuario_titulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuarioId INT,
    tituloId INT,
    createdAt DATETIME,
    updatedAt DATETIME,
    FOREIGN KEY (usuarioId) REFERENCES usuarios(id),
    FOREIGN KEY (tituloId) REFERENCES titulos(id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

USE siscamtest;

INSERT INTO usuarios (nome, createdAt, updatedAt) VALUES ('Fulano', NOW(), NOW());
INSERT INTO usuarios (nome, createdAt, updatedAt) VALUES ('Ciclano', NOW(), NOW());
INSERT INTO usuarios (nome, createdAt, updatedAt) VALUES ('Beltrano', NOW(), NOW());

INSERT INTO titulos (numero, createdAt, updatedAt) VALUES ('111', NOW(), NOW());
INSERT INTO titulos (numero, createdAt, updatedAt) VALUES ('222', NOW(), NOW());
INSERT INTO titulos (numero, createdAt, updatedAt) VALUES ('333', NOW(), NOW());

INSERT INTO usuario_titulo (usuarioId, tituloId, createdAt, updatedAt) VALUES ('1', '1', NOW(), NOW());
INSERT INTO usuario_titulo (usuarioId, tituloId, createdAt, updatedAt) VALUES ('1', '2', NOW(), NOW());
INSERT INTO usuario_titulo (usuarioId, tituloId, createdAt, updatedAt) VALUES ('1', '3', NOW(), NOW());
INSERT INTO usuario_titulo (usuarioId, tituloId, createdAt, updatedAt) VALUES ('2', '1', NOW(), NOW());
INSERT INTO usuario_titulo (usuarioId, tituloId, createdAt, updatedAt) VALUES ('2', '3', NOW(), NOW());
INSERT INTO usuario_titulo (usuarioId, tituloId, createdAt, updatedAt) VALUES ('3', '2', NOW(), NOW());

SELECT DISTINCT A.numero FROM titulos A INNER JOIN usuario_titulo B ON (A.id = B.tituloId) INNER JOIN usuarios C ON (C.id = B.usuarioId) WHERE C.id = '1';
SELECT DISTINCT A.numero FROM titulos A INNER JOIN usuario_titulo B ON (A.id = B.tituloId) INNER JOIN usuarios C ON (C.id = B.usuarioId) WHERE C.id = '2';
SELECT DISTINCT A.numero FROM titulos A INNER JOIN usuario_titulo B ON (A.id = B.tituloId) INNER JOIN usuarios C ON (C.id = B.usuarioId) WHERE C.id = '3';

SELECT DISTINCT C.nome FROM usuarios C INNER JOIN usuario_titulo B ON (C.id = B.usuarioId) INNER JOIN titulos A ON (A.id = B.tituloId) WHERE A.id = '1';
SELECT DISTINCT C.nome FROM usuarios C INNER JOIN usuario_titulo B ON (C.id = B.usuarioId) INNER JOIN titulos A ON (A.id = B.tituloId) WHERE A.id = '2';
SELECT DISTINCT C.nome FROM usuarios C INNER JOIN usuario_titulo B ON (C.id = B.usuarioId) INNER JOIN titulos A ON (A.id = B.tituloId) WHERE A.id = '3';