CREATE DATABASE atp;
USE atp;

CREATE TABLE Vendas (
Produto VARCHAR(50) NOT NULL,
Quantidade_Vendida INT
);

CREATE TABLE Funcionarios (
Nome VARCHAR(50) NOT NULL,
Salario DECIMAL (10, 2) NOT NULL
);

CREATE TABLE Pedidos (
Id_Pedido INT AUTO_INCREMENT PRIMARY KEY,
Cliente VARCHAR(50) NOT NULL,
Produto VARCHAR (50) NOT NULL, 
Valor DECIMAL (10, 2 ) NOT NULL
);

INSERT INTO Funcionarios (Nome, Salario)
VALUES
('Joao', 1400.00),
('Victor', 650.00),
('Carol', 2210.00),
('Bruno', 1850.00),
('Barbara', 5260.00);

INSERT INTO Vendas (Produto, Quantidade_Vendida)
VALUES
('Notebook', 220),
('Livros', 598),
('Notebook', 38),
('Fone', 689),
('Interruptores', 150);

INSERT INTO Pedidos ( Cliente, Produto, Valor)
VALUES
( 'Joao', 'Notebook', 220),
( 'Victor', 'Livros', 598),
( 'Joao', 'Fone', 689),
('Bruno', 'Notebook', 220),
( 'Victor', 'Notebook', 220);

SELECT Produto, SUM(Quantidade_Vendida) as Total_Quantidade_Vendida
FROM Vendas
GROUP BY Produto;

SELECT *
FROM Funcionarios
ORDER BY Salario DESC;

SELECT Cliente, COUNT(*) as Total_Pedidos
FROM Pedidos
GROUP BY Cliente
ORDER BY Cliente DESC;

