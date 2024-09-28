CREATE DATABASE distribuidora;
USE distribuidora;

CREATE TABLE fornecedores (
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255)NOT NULL,
email VARCHAR(255) NOT NULL,
telefone VARCHAR(50)
);

INSERT INTO fornecedores (id_fornecedor, nome, email, telefone) VALUES
('Fornecedor A', 'fornecedorA@exemplo.com', '111111111'),
('Fornecedor B', 'fornecedorB@exemplo.com', '222222222'),
('Fornecedor C', 'fornecedorC@exemplo.com', '333333333'),
('Fornecedor D', 'fornecedorD@exemplo.com', '444444444'),
('Fornecedor E', 'fornecedorE@exemplo.com', '555555555'),
('Fornecedor F', 'fornecedorF@exemplo.com', '666666666'),
('Fornecedor G', 'fornecedorG@exemplo.com', '777777777'),
('Fornecedor H', 'fornecedorH@exemplo.com', '888888888'),
('Fornecedor I', 'fornecedorI@exemplo.com', '999999999'),
('Fornecedor J', 'fornecedorJ@exemplo.com', '101010101'),
('Fornecedor K', 'fornecedorK@exemplo.com', '121212121'),
('Fornecedor L', 'fornecedorL@exemplo.com', '131313131'),
('Fornecedor M', 'fornecedorM@exemplo.com', '141414141'),
('Fornecedor N', 'fornecedorN@exemplo.com', '151515151'),
('Fornecedor O', 'fornecedorO@exemplo.com', '161616161'),
('Fornecedor P', 'fornecedorP@exemplo.com', '171717171'),
('Fornecedor Q', 'fornecedorQ@exemplo.com', '181818181'),
('Fornecedor R', 'fornecedorR@exemplo.com', '191919191'),
('Fornecedor S', 'fornecedorS@exemplo.com', '202020202'),
('Fornecedor T', 'fornecedorT@exemplo.com', '212121212'),
('Fornecedor U', 'fornecedorU@exemplo.com', '222222222'),
('Fornecedor V', 'fornecedorV@exemplo.com', '232323232'),
('Fornecedor W', 'fornecedorW@exemplo.com', '242424242'),
('Fornecedor X', 'fornecedorX@exemplo.com', '252525252'),
('Fornecedor Y', 'fornecedorY@exemplo.com', '262626262'),
('Fornecedor Z', 'fornecedorZ@exemplo.com', '272727272'),
('Fornecedor AA', 'fornecedorAA@exemplo.com', '282828282'),
('Fornecedor BB', 'fornecedorBB@exemplo.com', '292929292'),
('Fornecedor CC', 'fornecedorCC@exemplo.com', '303030303'),
('Fornecedor DD', 'fornecedorDD@exemplo.com', '313131313'),
('Fornecedor EE', 'fornecedorEE@exemplo.com', '323232323'),
('Fornecedor FF', 'fornecedorFF@exemplo.com', '333333333'),
('Fornecedor GG', 'fornecedorGG@exemplo.com', '343434343'),
('Fornecedor HH', 'fornecedorHH@exemplo.com', '353535353'),
('Fornecedor II', 'fornecedorII@exemplo.com', '363636363'),
('Fornecedor JJ', 'fornecedorJJ@exemplo.com', '373737373'),
('Fornecedor KK', 'fornecedorKK@exemplo.com', '383838383'),
('Fornecedor LL', 'fornecedorLL@exemplo.com', '393939393'),
('Fornecedor MM', 'fornecedorMM@exemplo.com', '404040404'),
('Fornecedor NN', 'fornecedorNN@exemplo.com', '414141414'),
('Fornecedor OO', 'fornecedorOO@exemplo.com', '424242424'),
('Fornecedor PP', 'fornecedorPP@exemplo.com', '434343434'),
('Fornecedor QQ', 'fornecedorQQ@exemplo.com', '444444444'),
('Fornecedor RR', 'fornecedorRR@exemplo.com', '454545454'),
('Fornecedor SS', 'fornecedorSS@exemplo.com', '464646464'),
('Fornecedor TT', 'fornecedorTT@exemplo.com', '474747474'),
('Fornecedor UU', 'fornecedorUU@exemplo.com', '484848484'),
('Fornecedor VV', 'fornecedorVV@exemplo.com', '494949494'),
('Fornecedor WW', 'fornecedorWW@exemplo.com', '505050505');


CREATE TABLE bebidas ( 
id_bebida INT AUTO_INCREMENT PRIMARY KEY ,
nome VARCHAR(200) NOT NULL,
data_validade DATE NOT NULL, 
categoria VARCHAR(100)
);

INSERT INTO bebidas (nome, data_validade, categoria) VALUES
('Coca-Cola', '2024-12-31', 'Refrigerante'),
('Pepsi', '2024-11-15', 'Refrigerante'),
('Guaraná Antártica', '2024-10-20', 'Refrigerante'),
('Suco de Laranja Natural', '2024-09-30', 'Suco'),
('Água Mineral', '2025-01-01', 'Água'),
('Red Bull', '2025-06-15', 'Energético'),
('Suco de Uva', '2024-12-01', 'Suco'),
('Chá Gelado', '2024-09-25', 'Chá'),
('Fanta Laranja', '2024-10-05', 'Refrigerante'),
('Água de Coco', '2024-09-15', 'Água de Coco');

CREATE TABLE pedidos (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
preco_total DECIMAL(10,2),
descricao VARCHAR(255)
);

INSERT INTO pedidos (nome, preco, descricao) VALUES
('Pedido 1', 150.50, 'Pedido de 3 bolos e 5 pães'),
('Pedido 2', 80.00, 'Pedido de 2 bolos e 10 biscoitos'),
('Pedido 3', 30.75, 'Pedido de 5 sucos naturais'),
('Pedido 4', 120.99, 'Pedido de 10 refrigerantes e 15 coxinhas'),
('Pedido 5', 60.50, 'Pedido de 20 pães de queijo e 5 doces');


CREATE TABLE itens_pedido (
id_itens_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_produto INT,
quantidade INT NOT NULL,
preco_unitario DECIMAL(10,2)
);

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 3, 5.50),  
(1, 2, 2, 8.00),  
(2, 1, 1, 5.50),  
(2, 3, 4, 3.75),  
(3, 4, 10, 1.50); 

UPDATE estoque
SET quantidade = quantidade - 5  
WHERE id_produto = 1;  

DELETE FROM fornecedores WHERE id_fornecedor = 1;
DESC fornecedores;

DELETE FROM bebidas WHERE id = 'Coca-Cola' ;

SELECT * FROM bebidas ;

SELECT DISTINCT nome FROM bebidas;

SELECT * FROM bebidas
ORDER BY preco DESC
LIMIT 5;

CREATE TABLE bebidas_caras AS
SELECT * FROM bebidas
WHERE preco > 10;

