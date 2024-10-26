CREATE DATABASE atividade;
USE atividade;

CREATE TABLE Clientes(
Id_Clientes INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR (50) NOT NULL,
Email VARCHAR (50) NOT NULL, 
Cidade VARCHAR (50) NOT NULL
);

CREATE TABLE Produto( 
Id_Produto INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR (50) NOT NULL,
Preco_Produto DECIMAL(10, 2) NOT NULL,
Quantidade INT
);

CREATE TABLE Pedidos(
 Id_Pedido INT AUTO_INCREMENT PRIMARY KEY,
 Id_Clientes INT,
 Id_Produto INT, 
 Quantidade_Produto_Pedido INT,
 Data_Pedido DATE NOT NULL
 );
 
 INSERT INTO Clientes (Id_Clientes, Nome, Email, Cidade)
 VALUES 
 (1, 'Joao Santos', 'J.migue.sts@gmail.com', 'Rio_de_Janeiro'),
 (2, 'Luiza Silva', 'Luisilvsant@gmail.com', 'Sao_Paulo'),
 (3, 'Carol Oliveira', 'Caaoliver25@gmail.com', 'Salvador'),
 (4, 'Luiz Reis', 'Lukingeis@hotmail.com', 'Salvador'),
 (5, 'Marcos Brito', 'Britquinhosmar@gmail.com', 'Feira_de_Santana');
 
 INSERT INTO Produto (Id_Produto, Nome, Preco_Produto, Quantidade)
 VALUES
 (1, 'Relogio', 325.00, 1),
 (2, 'Travesseiro', 99.90, 4 ),
 (3, 'Notebook', 2750.00, 2),
 (4, 'Mouse', 225.60, 3),
 (5, 'Televisao', 4569.99, 5);
 
 INSERT INTO Pedidos (Id_Pedido, Id_Clientes, Id_Produto, Quantidade_Produto_Pedido, Data_Pedido)
 VALUES
 (1, 1, 1, 1, '2024-10-25'),
 (2, 2, 2, 4, '2024-10-26'),
 (3, 3, 3, 2, '2024-10-27'),
(4, 4, 4, 3, '2024-10-28'),
(5, 5, 5, 5, '2024-10-29');

SELECT SUM(Preco_Produto) as SomaPreco
FROM Produto;

SELECT AVG(Preco_Produto) as MediaPreco
FROM Produto;

SELECT MAX(Preco_Produto) as PrecoMaximo
FROM Produto;

SELECT * FROM Produto WHERE Preco_Produto > 50;

SELECT * FROM Clientes WHERE Cidade = 'Salvador';

ALTER TABLE Clientes
ADD Telefone VARCHAR(20);

ALTER TABLE Clientes
MODIFY COLUMN Telefone VARCHAR(20);

ALTER TABLE Clientes
DROP COLUMN Telefone;

DELETE FROM Pedidos WHERE Quantidade < 2;

DROP TABLE Produtos;