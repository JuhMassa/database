DROP DATABASE IF EXISTS supermercado;
CREATE DATABASE supermercado;
USE supermercado;

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(200) NOT NULL,
    descricao TEXT,
    data_criacao DATE NOT NULL
);

INSERT INTO categorias (nome_categoria, descricao, data_criacao) VALUES 
    ('Alimentos', 'Categoria para todos os tipos de alimentos', CURDATE()),
    ('Bebidas', 'Categoria para todos os tipos de bebidas', CURDATE()),
    ('Limpeza', 'Categoria para produtos de limpeza', CURDATE());

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    descricao VARCHAR(255),
    data_validade DATE,
    fornecedor VARCHAR(255)
);

INSERT INTO produtos (nome, preco, descricao, data_validade, fornecedor) VALUES
('Arroz 5kg', 18.99, 'Pacote de arroz branco tipo 1', '2025-08-15', 'Fornecedora ABC'),
('Feijão Carioca 1kg', 7.50, 'Feijão carioca de alta qualidade', '2025-05-10', 'Fornecedor Alimentos Brasil'),
('Óleo de Soja 900ml', 6.20, 'Óleo de soja refinado', '2024-12-30', 'Fornecedor Sementes Puras'),
('Refrigerante Cola 2L', 5.99, 'Bebida gaseificada sabor cola', '2024-10-01', 'Bebidas Gás e Sabores'),
('Leite Integral 1L', 4.59, 'Leite integral pasteurizado', '2024-11-05', 'Laticínios União'),
('Macarrão Espaguete 500g', 4.10, 'Macarrão espaguete grano duro', '2025-02-20', 'Pastas Italia'),
('Farinha de Trigo 1kg', 3.50, 'Farinha de trigo tipo 1', '2024-08-25', 'Fornecedora ABC'),
('Detergente Líquido 500ml', 2.99, 'Detergente líquido para louça', '2026-03-12', 'Limpeza Total'),
('Sabonete 90g', 1.25, 'Sabonete perfumado com extrato de aveia', '2025-07-08', 'Higiene Pessoal & Co'),
('Cerveja Pilsen 355ml', 3.99, 'Cerveja pilsen leve e refrescante', '2024-12-31', 'Bebidas Gás e Sabores'),
('Suco de Laranja 1L', 6.75, 'Suco 100% natural de laranja', '2025-01-15', 'Bebidas Naturais Ltda'),
('Iogurte Natural 170g', 2.89, 'Iogurte natural sem adição de açúcar', '2024-10-15', 'Laticínios União'),
('Café Torrado e Moído 500g', 12.50, 'Café torrado e moído de alta qualidade', '2025-09-20', 'Fornecedora ABC'),
('Chocolate ao Leite 90g', 5.50, 'Barra de chocolate ao leite', '2025-06-01', 'Doces e Sabores'),
('Água Mineral 1.5L', 1.99, 'Água mineral sem gás', '2025-03-10', 'Fornecedor Alimentos Brasil');

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(255),
    endereco VARCHAR(255),
    data_nascimento DATE
);

INSERT INTO clientes (nome, email, telefone, endereco, data_nascimento) VALUES
('Carlos Silva', 'carlos.silva@email.com', '123456789', 'Rua das Flores, 123', '1990-05-12'),
('Maria Oliveira', 'maria.oliveira@email.com', '987654321', 'Avenida Brasil, 456', '1985-02-20'),
('João Pereira', 'joao.pereira@email.com', '456123789', 'Rua Santos Dumont, 789', '1992-09-15'),
('Ana Souza', 'ana.souza@email.com', '789321654', 'Travessa do Sol, 11', '1995-07-01'),
('Lucas Lima', 'lucas.lima@email.com', '321789456', 'Rua Tiradentes, 252', '1987-10-18'),
('Fernanda Costa', 'fernanda.costa@email.com', '951753852', 'Avenida Paulista, 102', '1991-03-03'),
('Paulo Melo', 'paulo.melo@email.com', '852963741', 'Rua Amazonas, 45', '1983-12-25'),
('Juliana Dias', 'juliana.dias@email.com', '963852741', 'Rua Bahia, 98', '1990-08-11'),
('Ricardo Azevedo', 'ricardo.azevedo@email.com', '741852963', 'Avenida dos Bandeirantes, 564', '1989-06-19'),
('Bianca Ferreira', 'bianca.ferreira@email.com', '852147963', 'Rua XV de Novembro, 333', '1994-04-21'),
('Diego Rocha', 'diego.rocha@email.com', '963741852', 'Rua Marechal Deodoro, 89', '1992-11-30'),
('Aline Cardoso', 'aline.cardoso@email.com', '753951852', 'Rua Pedro Álvares Cabral, 178', '1986-09-08'),
('Roberto Gomes', 'roberto.gomes@email.com', '159753486', 'Avenida 9 de Julho, 14', '1993-02-14'),
('Patrícia Ribeiro', 'patricia.ribeiro@email.com', '357951456', 'Rua Dom Pedro II, 212', '1995-05-10'),
('Gustavo Nogueira', 'gustavo.nogueira@email.com', '159357284', 'Avenida Rebouças, 54', '1990-12-28'),
('Camila Martins', 'camila.martins@email.com', '654987321', 'Rua José Bonifácio, 332', '1994-01-21'),
('Pedro Carvalho', 'pedro.carvalho@email.com', '789654123', 'Avenida Ipiranga, 245', '1988-07-13'),
('Isabela Torres', 'isabela.torres@email.com', '321654987', 'Rua da Independência, 98', '1993-10-04'),
('Rafael Lima', 'rafael.lima@email.com', '789321456', 'Rua Vergueiro, 75', '1991-11-23'),
('Mariana Silva', 'mariana.silva@email.com', '987123654', 'Travessa Monteiro, 83', '1987-05-09'),
('Henrique Fonseca', 'henrique.fonseca@email.com', '951357852', 'Rua Inconfidentes, 62', '1996-03-12'),
('Tatiane Pires', 'tatiane.pires@email.com', '963258147', 'Avenida República, 413', '1991-04-08'),
('Eduardo Sousa', 'eduardo.sousa@email.com', '753654852', 'Rua da Consolação, 204', '1985-12-15'),
('Larissa Moreira', 'larissa.moreira@email.com', '357951852', 'Rua General Osório, 99', '1993-06-06'),
('Rodrigo Barros', 'rodrigo.barros@email.com', '951753654', 'Rua Duque de Caxias, 501', '1989-08-17'),
('Adriana Correia', 'adriana.correia@email.com', '357159486', 'Avenida Tiradentes, 142', '1990-09-24'),
('Fábio Moura', 'fabio.moura@email.com', '741852369', 'Rua Conselheiro Crispiniano, 76', '1994-07-05'),
('Sandra Mendes', 'sandra.mendes@email.com', '963852147', 'Avenida São João, 375', '1987-02-19');

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_venda DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO vendas (id_cliente, data_venda, valor_total) VALUES 
    (1, '2024-09-20', 50.50),
    (2, '2024-09-21', 30.75),
    (1, '2024-09-22', 40.00),
    (3, '2024-09-23', 20.90),
    (4, '2024-09-24', 75.00),
    (5, '2024-09-25', 65.30),
    (1, '2024-09-26', 12.60),
    (2, '2024-09-27', 85.90),
    (6, '2024-09-28', 90.00),
    (7, '2024-09-29', 45.00);

CREATE TABLE itens_da_venda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    id_produto INT,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2),
    FOREIGN KEY (id_venda) REFERENCES vendas(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO itens_da_venda (id_venda, id_produto, quantidade, valor_unitario) VALUES 
    (1, 1, 2, 18.99),
    (1, 3, 1, 6.20),
    (2, 2, 3, 7.50),
    (3, 4, 2, 5.99),
    (4, 5, 1, 4.59),
    (5, 6, 1, 4.10),
    (6, 1, 3, 18.99),
    (7, 8, 2, 2.99),
    (8, 9, 1, 6.75),
    (9, 10, 1, 5.50);

SELECT * FROM vendas;

SELECT 
    v.id_venda,
    c.nome AS nome_cliente, 
    v.data_venda, 
    v.valor_total, 
    iv.id_item,
    p.nome AS nome_produto,
    iv.quantidade, 
    iv.valor_unitario,
    (iv.quantidade * iv.valor_unitario) AS total_item
FROM 
    vendas v
JOIN 
    clientes c ON v.id_cliente = c.id_cliente
JOIN 
    itens_da_venda iv ON v.id_venda = iv.id_venda
JOIN 
    produtos p ON iv.id_produto = p.id_produto
ORDER BY 
    v.id_venda, iv.id_item;

SELECT 
    iv.id_item,          
    p.nome AS nome_produto,   
    iv.quantidade,  
    iv.valor_unitario, 
    (iv.quantidade * iv.valor_unitario) AS total_item 
FROM 
    itens_da_venda iv
JOIN 
    vendas v ON iv.id_venda = v.id_venda
JOIN 
    produtos p ON iv.id_produto = p.id_produto   
WHERE 
    v.id_venda = 10;   
