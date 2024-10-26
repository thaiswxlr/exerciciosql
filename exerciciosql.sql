CREATE DATABASE Exercicio;
USE Exercicio;

CREATE TABLE Vendas(
Id_Vendas INT AUTO_INCREMENT PRIMARY KEY,
Data_Vendas DATE NOT NULL,
Produto VARCHAR (50) NOT NULL,
Quantidade INT,
Preco_Unitario DECIMAL(10, 2) NOT NULL
);

INSERT INTO Vendas (Id_Vendas, Data_Vendas, Produto, Quantidade, Preco_Unitario)
VALUES 
(1, '2024-10-20', 'Camisa', 4, 25.90),
(2, '2024-10-21', 'Tênis', 2, 149.90),
(3, '2024-10-22', 'Cinto', 5, 49.90),
(4, '2024-10-23', 'Meias', 10, 10.50),
(5, '2024-10-24', 'Luvas', 6, 15.90);

SELECT SUM(Quantidade) as Total_Quantidades_Vendidas
FROM Vendas;

SELECT SUM(Quantidade * Preco_Unitario) as Total_Arecadado
FROM Vendas;

SELECT AVG(Preco_Unitario) as Media_Preco_Produtos
FROM Vendas;






