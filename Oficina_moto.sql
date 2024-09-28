CREATE DATABASE moto_oficina;
USE moto_oficina;

CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200),
endereco VARCHAR(255) NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL,
cpf VARCHAR(255) NOT NULL
);
INSERT INTO clientes (nome, endereco, email, cpf) VALUES
('Ana Silva', 'Rua das Flores, 100', 'ana.silva@gmail.com', '123.456.789-00'),
('Bruno Souza', 'Av. Brasil, 200', 'bruno.souza@gmail.com', '234.567.890-01'),
('Carla Santos', 'Rua do Sol, 50', 'carla.santos@gmail.com', '345.678.901-02'),
('Daniel Oliveira', 'Rua Esperança, 300', 'daniel.oliveira@gmail.com', '456.789.012-03'),
('Eduarda Lima', 'Rua Bela Vista, 120', 'eduarda.lima@gmail.com', '567.890.123-04'),
('Felipe Gomes', 'Av. Central, 180', 'felipe.gomes@gmail.com', '678.901.234-05'),
('Gabriela Mendes', 'Rua dos Pinheiros, 25', 'gabriela.mendes@gmail.com', '789.012.345-06'),
('Henrique Alves', 'Av. Paulista, 400', 'henrique.alves@gmail.com', '890.123.456-07'),
('Isabela Ferreira', 'Rua do Comércio, 10', 'isabela.ferreira@gmail.com', '901.234.567-08'),
('João Costa', 'Av. São João, 500', 'joao.costa@gmail.com', '012.345.678-09'),
('Karla Silva', 'Rua das Acácias, 75', 'karla.silva@gmail.com', '098.765.432-10'),
('Lucas Martins', 'Av. Independência, 150', 'lucas.martins@gmail.com', '123.654.789-11'),
('Maria Clara', 'Rua das Hortências, 90', 'maria.clara@gmail.com', '234.567.891-12'),
('Nicolas Ribeiro', 'Rua do Lago, 200', 'nicolas.ribeiro@gmail.com', '345.678.912-13'),
('Olivia Costa', 'Av. Rio Branco, 360', 'olivia.costa@gmail.com', '456.789.023-14'),
('Paulo Sousa', 'Rua das Palmeiras, 85', 'paulo.sousa@gmail.com', '567.890.234-15'),
('Quésia Lima', 'Av. Tiradentes, 70', 'quesia.lima@gmail.com', '678.901.345-16'),
('Renato Nunes', 'Rua Visconde, 130', 'renato.nunes@gmail.com', '789.012.456-17'),
('Sabrina Farias', 'Av. Boa Viagem, 230', 'sabrina.farias@gmail.com', '890.123.567-18'),
('Thiago Mendes', 'Rua do Paraíso, 140', 'thiago.mendes@gmail.com', '901.234.678-19'),
('Ulisses Rocha', 'Av. do Contorno, 320', 'ulisses.rocha@gmail.com', '012.345.789-20'),
('Valéria Alves', 'Rua do Carmo, 60', 'valeria.alves@gmail.com', '123.456.890-21'),
('Wagner Barbosa', 'Rua dos Jacarandás, 180', 'wagner.barbosa@gmail.com', '234.567.901-22'),
('Ximena Lopes', 'Av. Pedro II, 115', 'ximena.lopes@gmail.com', '345.678.012-23'),
('Yasmin Silva', 'Rua do Bosque, 190', 'yasmin.silva@gmail.com', '456.789.123-24'),
('Zeca Nascimento', 'Av. Sete de Setembro, 250', 'zeca.nascimento@gmail.com', '567.890.234-25'),
('André Gomes', 'Rua das Margaridas, 110', 'andre.gomes@gmail.com', '678.901.345-26'),
('Bárbara Souza', 'Av. Presidente Vargas, 90', 'barbara.souza@gmail.com', '789.012.456-27'),
('Carlos Alberto', 'Rua da Estrela, 45', 'carlos.alberto@gmail.com', '890.123.567-28'),
('Denise Pires', 'Av. Afonso Pena, 70', 'denise.pires@gmail.com', '901.234.678-29'),
('Eduardo Ramos', 'Rua do Príncipe, 140', 'eduardo.ramos@gmail.com', '012.345.789-30'),
('Fernanda Lima', 'Av. Amazonas, 210', 'fernanda.lima@gmail.com', '123.456.890-31'),
('Gustavo Borges', 'Rua São José, 85', 'gustavo.borges@gmail.com', '234.567.901-32'),
('Helena Dias', 'Av. Dom Pedro I, 195', 'helena.dias@gmail.com', '345.678.012-33'),
('Igor Cardoso', 'Rua do Amor, 250', 'igor.cardoso@gmail.com', '456.789.123-34'),
('Julia Andrade', 'Av. Atlântica, 60', 'julia.andrade@gmail.com', '567.890.234-35'),
('Kevin Lima', 'Rua do Porto, 150', 'kevin.lima@gmail.com', '678.901.345-36'),
('Lúcia Machado', 'Av. das Nações, 180', 'lucia.machado@gmail.com', '789.012.456-37'),
('Marcelo Figueiredo', 'Rua do Estudante, 100', 'marcelo.figueiredo@gmail.com', '890.123.567-38'),
('Nathália Araújo', 'Av. Getúlio Vargas, 220', 'nathalia.araujo@gmail.com', '901.234.678-39'),
('Otávio Cunha', 'Rua dos Pioneiros, 300', 'otavio.cunha@gmail.com', '012.345.789-40'),
('Patrícia Alves', 'Av. Santos Dumont, 190', 'patricia.alves@gmail.com', '123.456.890-41'),
('Rafael Teixeira', 'Rua dos Bandeirantes, 320', 'rafael.teixeira@gmail.com', '234.567.901-42'),
('Simone Vieira', 'Av. Beira Mar, 60', 'simone.vieira@gmail.com', '345.678.012-43'),
('Tadeu Costa', 'Rua do Império, 80', 'tadeu.costa@gmail.com', '456.789.123-44'),
('Ursula Moreira', 'Av. Celso Garcia, 110', 'ursula.moreira@gmail.com', '567.890.234-45'),
('Vinícius Rocha', 'Rua da Glória, 190', 'vinicius.rocha@gmail.com', '678.901.345-46'),
('William Ferreira', 'Av. Cruzeiro do Sul, 210', 'william.ferreira@gmail.com', '789.012.456-47'),
('Xavier Lima', 'Rua da Saudade, 260', 'xavier.lima@gmail.com', '890.123.567-48'),
('Yuri Silva', 'Av. João XXIII, 150', 'yuri.silva@gmail.com', '901.234.678-49'),
('Zilda Camargo', 'Rua do Sossego, 100', 'zilda.camargo@gmail.com', '012.345.789-50');


CREATE TABLE motos (
id_moto INT PRIMARY KEY AUTO_INCREMENT,
marca VARCHAR(255) NOT NULL,
modelo VARCHAR(255) NOT NULL,
ano INT NOT NULL,
preco DECIMAL(10,2)
);
INSERT INTO motos (marca, modelo, ano, preco) VALUES
('Honda', 'CB 500X', 2020, 30000.00),
('Yamaha', 'MT-03', 2019, 25000.00),
('Kawasaki', 'Ninja 400', 2021, 35000.00),
('Suzuki', 'GSX-S750', 2018, 42000.00),
('BMW', 'G 310 R', 2022, 38000.00);


CREATE TABLE servicos (
id_servico INT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
duracao INT,
tipo VARCHAR(255),
data_disponibilidade DATE 
);
INSERT INTO servicos (descricao, preco, duracao, tipo, data_disponibilidade) VALUES
('Troca de óleo', 150.00, 60, 'Manutenção', '2024-09-30'),
('Balanceamento de rodas', 120.00, 45, 'Manutenção', '2024-10-01'),
('Alinhamento', 130.00, 40, 'Manutenção', '2024-09-28'),
('Polimento de pintura', 300.00, 180, 'Estética', '2024-10-05'),
('Revisão completa', 800.00, 240, 'Manutenção', '2024-09-27'),
('Troca de filtros', 90.00, 30, 'Manutenção', '2024-10-10'),
('Lavagem completa', 70.00, 90, 'Estética', '2024-09-25'),
('Troca de pastilhas de freio', 200.00, 120, 'Manutenção', '2024-10-15'),
('Inspeção de segurança', 180.00, 150, 'Inspeção', '2024-09-22'),
('Reparo de vidros', 250.00, 60, 'Reparo', '2024-09-29');

CREATE TABLE mecanicos (
id_mecanico INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
especializacao VARCHAR(255),
telefone VARCHAR(255),
email VARCHAR(255) UNIQUE ,
data_admissao DATE NOT NULL
);
INSERT INTO mecanicos (nome, especializacao, telefone, email, data_admissao) VALUES
('Carlos Silva', 'Motor e Transmissão', '11987654321', 'carlos.silva@mecanica.com', '2020-05-10'),
('Ana Oliveira', 'Suspensão e Freios', '11912345678', 'ana.oliveira@mecanica.com', '2019-03-22'),
('João Pereira', 'Elétrica Automotiva', '11923456789', 'joao.pereira@mecanica.com', '2021-07-15'),
('Maria Santos', 'Pintura e Funilaria', '11934567890', 'maria.santos@mecanica.com', '2022-01-10'),
('Pedro Costa', 'Diagnóstico de Motores', '11945678901', 'pedro.costa@mecanica.com', '2018-11-05'),
('Lucas Souza', 'Climatização Automotiva', '11956789012', 'lucas.souza@mecanica.com', '2023-02-01'),
('Juliana Alves', 'Inspeção de Segurança', '11967890123', 'juliana.alves@mecanica.com', '2017-09-18'),
('Rafael Lima', 'Troca de Óleo e Filtros', '11978901234', 'rafael.lima@mecanica.com', '2022-05-20'),
('Fernanda Rocha', 'Ajuste de Suspensão', '11989012345', 'fernanda.rocha@mecanica.com', '2019-10-25'),
('Gustavo Mendes', 'Balanceamento e Alinhamento', '11990123456', 'gustavo.mendes@mecanica.com', '2020-12-13');

CREATE TABLE agendamentos (
id_agendamento INT AUTO_INCREMENT PRIMARY KEY,
data_hora DATETIME NOT NULL,
servico_id VARCHAR(255) NOT NULL,
telefone VARCHAR(225) NOT NULL
);
INSERT INTO agendamentos (data_hora, servico_id, telefone) VALUES
('2024-10-01 14:00:00', '1', '11987654321'),
('2024-10-02 10:30:00', '2', '11912345678'),
('2024-10-03 16:00:00', '3', '11923456789'),
('2024-10-04 11:15:00', '1', '11934567890'),
('2024-10-05 09:00:00', '4', '11945678901'),
('2024-10-06 13:30:00', '2', '11956789012'),
('2024-10-07 15:45:00', '5', '11967890123'),
('2024-10-08 12:00:00', '3', '11978901234'),
('2024-10-09 08:30:00', '1', '11989012345'),
('2024-10-10 14:30:00', '4', '11990123456');

SELECT * FROM clientes;
SELECT * FROM motos;
SELECT * FROM servicos;
SELECT * FROM mecanicos; 

SELECT 
    id_agendamento, 
    data_hora, 
    descricao AS servico,
    preco AS preco_servico,
    duracao AS duracao_servico,
    telefone
FROM 
    agendamentos 
JOIN 
    servicos  ON servico_id = id_servico
ORDER BY 
    data_hora;


