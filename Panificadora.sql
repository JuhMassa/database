CREATE DATABASE panificadora;
USE panificadora;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);
INSERT INTO categorias (nome) VALUES 
('Pães'), 
('Doces'), 
('Bolos'), 
('Biscoitos'), 
('Salgados');


CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);
INSERT INTO produtos (nome, descricao, preco, categoria_id) VALUES 
('Pão Francês', 'Pão crocante', 0.50, 1),
('Bolo de Chocolate', 'Bolo com cobertura de chocolate', 15.00, 3),
('Biscoito Amanteigado', 'Biscoito suave e amanteigado', 2.00, 4),
('Coxinha', 'Coxinha de frango', 3.00, 5),
('Pão de Queijo', 'Pão de queijo mineiro', 1.50, 1);


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15)
);
INSERT INTO clientes (nome, email, telefone) VALUES 
('João Silva', 'joao@exemplo.com', '123456789'),
('Maria Oliveira', 'maria@exemplo.com', '987654321'),
('Carlos Santos', 'carlos@exemplo.com', '456789123'),
('Ana Lima', 'ana@exemplo.com', '321654987'),
('Pedro Almeida', 'pedro@exemplo.com', '654321789');

CREATE TABLE fornecedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100),
    telefone VARCHAR(15)
);
INSERT INTO fornecedores (nome, contato, telefone) VALUES 
('Fornecedor A', 'Contato A', '111222333'),
('Fornecedor B', 'Contato B', '444555666'),
('Fornecedor C', 'Contato C', '777888999'),
('Fornecedor D', 'Contato D', '000111222'),
('Fornecedor E', 'Contato E', '333444555');

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
INSERT INTO pedidos (cliente_id) VALUES 
(1), (2), (3), (4), (5);

CREATE TABLE itens_pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
INSERT INTO itens_pedidos (pedido_id, produto_id, quantidade, preco) VALUES 
(1, 1, 2, 1.00), 
(1, 2, 1, 15.00), 
(2, 3, 5, 10.00), 
(3, 4, 3, 9.00), 
(4, 5, 4, 6.00);

CREATE TABLE estoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);
INSERT INTO estoque (produto_id, quantidade) VALUES 
(1, 100), 
(2, 100), 
(3, 100), 
(4, 100), 
(5, 100);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    data_venda DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);
INSERT INTO vendas (pedido_id, total) VALUES 
(1, 16.00), 
(2, 10.00), 
(3, 9.00), 
(4, 6.00), 
(5, 12.00);

CREATE INDEX idx_produto_nome ON produtos(nome);
CREATE INDEX idx_pedido_cliente ON pedidos(cliente_id);

