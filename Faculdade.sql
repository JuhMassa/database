CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE alunos (
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (200) NOT NULL,
email VARCHAR (200) NOT NULL,
telefone VARCHAR(200) NOT NULL,
data_nascimento DATE NOT NULL
);
INSERT INTO alunos (nome, email, telefone, data_nascimento) VALUES
('João Silva', 'joao.silva@exemplo.com', '1111-1111', '2000-05-12'),
('Maria Souza', 'maria.souza@exemplo.com', '2222-2222', '1998-10-30');

CREATE TABLE professores (
id_professor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(200) NOT NULL,
email VARCHAR(200),
telefone VARCHAR(200),
especialidade VARCHAR(200)
);
INSERT INTO professores (nome, email, telefone, especialidade) VALUES
('Carlos Pereira', 'carlos.pereira@exemplo.com', '3333-3333', 'Matemática'),
('Ana Lima', 'ana.lima@exemplo.com', '4444-4444', 'História');

CREATE TABLE cursos (
id_curso INT PRIMARY KEY AUTO_INCREMENT ,
nome VARCHAR(200) NOT NULL,
descricao TEXT,
carga_horaria int
);
INSERT INTO cursos (nome, descricao, carga_horaria) VALUES
('Matemática Básica', 'Curso introdutório de matemática.', 40),
('História Mundial', 'Curso de história das civilizações.', 60);

CREATE TABLE turmas (
id_turma INT PRIMARY KEY AUTO_INCREMENT,
id_curso INT,
id_professor INT,
data_inicio DATE,
data_fim DATE,
FOREIGN KEY (id_curso) REFERENCES cursos (id_curso),
FOREIGN KEY (id_professor) REFERENCES professores (id_professor)
);
INSERT INTO turmas (id_curso, id_professor, data_inicio, data_fim) VALUES
(1, 1, '2024-01-10', '2024-06-30'),  
(2, 2, '2024-02-15', '2024-07-15'); 

CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    data_matricula DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);
INSERT INTO matriculas (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2024-01-12'), 
(2, 2, '2024-02-20'); 

CREATE TABLE aulas (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    id_turma INT,
    data_aula DATE,
    conteudo TEXT,
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);
INSERT INTO aulas (id_turma, data_aula, conteudo) VALUES
(1, '2024-01-15', 'Introdução à matemática'),
(2, '2024-02-18', 'História das primeiras civilizações');

UPDATE alunos
SET telefone = '5555-5555'
WHERE id_aluno = 1;  

UPDATE cursos
SET descricao = 'Curso completo de matemática básica.'
WHERE id_curso = 1; 

DELETE FROM matriculas
WHERE id_matricula = 1;  

DELETE FROM professores
WHERE id_professor = 1; 

SELECT * FROM alunos;

SELECT DISTINCT nome, descricao FROM cursos;

SELECT * FROM cursos
ORDER BY carga_horaria DESC
LIMIT 5;


CREATE TABLE alunos_matematica AS
SELECT alunos.nome, alunos.email, matriculas.data_matricula
FROM alunos
JOIN matriculas ON alunos.id_aluno = matriculas.id_aluno
JOIN turmas ON matriculas.id_turma = turmas.id_turma
WHERE turmas.id_curso = 1; 
