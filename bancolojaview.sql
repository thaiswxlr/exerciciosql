CREATE DATABASE db;
USE db;

CREATE TABLE Clientes (
Id_cliente INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR (250) NOT NULL, 
 Email VARCHAR (250) NOT NULL, 
 Endereco VARCHAR(250) NOT NULL
 );
 
 CREATE TABLE Produtos (
Id_produto INT AUTO_INCREMENT PRIMARY KEY,
Nome_produto VARCHAR (50) NOT NULL,
Categoria VARCHAR (50) NOT NULL,
Preco DECIMAL (10,2),
Quantidade_estoque INT
);

CREATE TABLE Pedidos (
Id_pedido INT AUTO_INCREMENT PRIMARY KEY, 
Id_cliente INT,
Data_pedido DATE,
Status_pedido VARCHAR (250) NOT NULL,
FOREIGN KEY (Id_cliente) REFERENCES Clientes (Id_Cliente)
);

CREATE TABLE Itens_pedido (
Id_Item_pedido INT AUTO_INCREMENT PRIMARY KEY, 
Id_pedido INT,
Id_produto INT, 
Quantidade INT,
Preco_unitario DECIMAL (10, 2),
FOREIGN KEY (Id_produto) REFERENCES Produtos (Id_produto),
FOREIGN KEY (Id_pedido) REFERENCES Pedidos (Id_pedido)
);

INSERT INTO Clientes (Id_cliente, Nome, Email, Endereco)
VALUES
(1, 'Valentina', 'Valensanntss12@gmail.com', 'Rua das Flores, 9'),
(2, 'Gabriel', 'Lebielgab452gmail.com', 'Rua Santos Dummond, 85'),
(3, 'Alice', 'Maliceriamilk34@gmail.com', 'Rua Casa de Verão, 210');

INSERT INTO Produtos (Id_produto, Nome_produto, Categoria, Preco, Quantidade_estoque)
VALUES
(1, 'Cama', 'Cama mesa e banho', 999.90, 550),
(2, 'Celular', 'Eletrônicos', 1550.90, 2000),
(3, 'Caderno', 'Material escolar', 30.50, 850);

INSERT INTO Pedidos ( Id_pedido, Id_cliente, Data_pedido, Status_pedido)
VALUES
(1, 1, '2024-11-18', 'Concluído'),
(2, 2, '2024-11-19', 'Pedente'),
(3, 3, '2024-11-20', 'Pendente');

INSERT INTO Itens_pedido ( Id_Item_pedido, Id_pedido, Id_produto, Quantidade, Preco_unitario)
VALUES
(1, 1, 1, 50, 999.90),
(2, 2, 2, 20, 1550.90), 
(3, 3, 3, 100, 30.50);

CREATE VIEW ClientePedido AS
SELECT Nome, Status_pedido
FROM Clientes, Pedidos
WHERE Status_pedido = 'Pendente';

CREATE VIEW ProdutoEstoque2 AS
SELECT Nome_produto, Quantidade_estoque
FROM Produtos;

CREATE VIEW PedidosProduto6 AS
SELECT Id_pedido, Nome_Produto, Quantidade
FROM Produtos, Itens_pedido;


SELECT * FROM ClientePedido; 

SELECT * FROM ProdutoEstoque2;

SELECT * FROM PedidosProduto6;

INSERT INTO Clientes (Id_cliente, Nome, Email, Endereco)
VALUES
(4, 'Marcia', 'Mmarimarcinha345@gmail.com', 'Rua Violetas AZzuis, 51');

UPDATE Produtos
SET Quantidade_estoque = Quantidade_estoque = + 100
WHERE Nome_produto = 'Cama';

INSERT INTO Pedidos (Id_cliente, Status_pedido)
VALUES
(2, 'Pendente');





















































































