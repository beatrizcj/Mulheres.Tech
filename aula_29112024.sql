-- criando meu primeiro banco de dados
CREATE DATABASE straykids_show;

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
matricula INTEGER PRIMARY KEY,
nome_aluno TEXT NOT NULL,
genero TEXT NOT NULL
);

-- injeção de dados-teste
INSERT INTO alunos VALUES (1, 'Marina', 'F');
INSERT INTO alunos VALUES (2, 'Joana', 'F');

-- consultando as injeções realizadas
SELECT * FROM alunos WHERE matricula=1

-- ATIVIDADE: Crie uma nova tabela chamada 'professores', com a mesma quantidade de características de 'alunos',
-- fazendo ao menos duas injeções de dados e uma consulta.

-- criando minha tabela de professores
CREATE TABLE professores (
numero INTEGER PRIMARY KEY,
nome_professor TEXT NOT NULL,
genero TEXT NOT NULL
);

-- injeção de dados-teste professores
INSERT INTO professores VALUES (1, 'Fernando', 'M');
INSERT INTO professores VALUES (2, 'Alice', 'F');
INSERT INTO professores VALUES (3, 'Saryh', 'F');

-- consultando as injeções realizadas de professores
SELECT * FROM professores WHERE numero=2

