CREATE DATABASE IF NOT EXISTS joinsequelize;
USE joinsequelize;
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
CREATE TABLE IF NOT EXISTS invoices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    amount INT,
    userId INT,
    FOREIGN KEY (userId) REFERENCES user(id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

USE joinsequelize;

INSERT INTO users (firstName, createdAt, updatedAt) VALUES ('Nathan', NOW(), NOW());
INSERT INTO users (firstName, createdAt, updatedAt) VALUES ('John', NOW(), NOW());

INSERT INTO invoices (amount, userId, createdAt, updatedAt) VALUES ('300', 1, NOW(), NOW());
INSERT INTO invoices (amount, userId, createdAt, updatedAt) VALUES ('100', 2, NOW(), NOW());

SELECT DISTINCT A.numero FROM titulos A INNER JOIN usuario_titulo B ON (A.id = B.tituloId) INNER JOIN usuarios C ON (C.id = B.usuarioId) WHERE C.id = '1';
SELECT DISTINCT A.numero FROM titulos A INNER JOIN usuario_titulo B ON (A.id = B.tituloId) INNER JOIN usuarios C ON (C.id = B.usuarioId) WHERE C.id = '2';
SELECT DISTINCT A.numero FROM titulos A INNER JOIN usuario_titulo B ON (A.id = B.tituloId) INNER JOIN usuarios C ON (C.id = B.usuarioId) WHERE C.id = '3';

SELECT DISTINCT C.nome FROM usuarios C INNER JOIN usuario_titulo B ON (C.id = B.usuarioId) INNER JOIN titulos A ON (A.id = B.tituloId) WHERE A.id = '1';
SELECT DISTINCT C.nome FROM usuarios C INNER JOIN usuario_titulo B ON (C.id = B.usuarioId) INNER JOIN titulos A ON (A.id = B.tituloId) WHERE A.id = '2';
SELECT DISTINCT C.nome FROM usuarios C INNER JOIN usuario_titulo B ON (C.id = B.usuarioId) INNER JOIN titulos A ON (A.id = B.tituloId) WHERE A.id = '3';