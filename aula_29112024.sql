-- criando meu primeiro banco de dados
CREATE DATABASE straykids_show;

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
matricula INTEGER PRIMARY KEY,
nome_aluno TEXT NOT NULL,
genero TEXT NOT NULL
);

-- injeção de dados-teste
INSERT INTO alunos VALUES (001, 'Marina', 'F');
INSERT INTO alunos VALUES (002, 'Joana', 'F');
INSERT INTO alunos VALUES (003, 'Marcos', 'M');
INSERT INTO alunos VALUES (004, 'Victor', 'M');

-- consultando as injeções realizadas
SELECT * FROM alunos WHERE matricula=101

-- ATIVIDADE: Crie uma nova tabela chamada 'professores', com a mesma quantidade de características de 'alunos',
-- fazendo ao menos duas injeções de dados e uma consulta.

-- criando minha tabela de professores
CREATE TABLE professores (
numero INTEGER PRIMARY KEY,
nome_professor TEXT NOT NULL,
genero TEXT NOT NULL
);

-- injeção de dados-teste professores
INSERT INTO professores VALUES (201, 'Fernando', 'M');
INSERT INTO professores VALUES (202, 'Alice', 'F');
INSERT INTO professores VALUES (203, 'Saryh', 'F');
INSERT INTO professores VALUES (204, 'Junior', 'M');
INSERT INTO professores VALUES (205, 'Bianca', 'F');
INSERT INTO professores VALUES (206, 'Felix', 'M');
INSERT INTO professores VALUES (207, 'Bruno', 'M');

-- consultando as injeções realizadas de professores
SELECT * FROM professores WHERE numero=205

-- criando tabela alunos com professores
CREATE TABLE aulas (
    id_aula INTEGER PRIMARY KEY,
    id_aluno INTEGER NOT NULL,
    id_professor INTEGER NOT NULL,
    materia TEXT NOT NULL,
    carga_horaria INTEGER NOT NULL,
    horario TEXT NOT NULL,
    sala TEXT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(matricula),
    FOREIGN KEY (id_professor) REFERENCES professores(numero)
);

-- inserindo 7 registros
INSERT INTO aulas VALUES (1, 001, 201, 'Matemática', 40, '08:00-10:00', 'Sala 101');
INSERT INTO aulas VALUES (2, 002, 202, 'Português', 30, '10:00-12:00', 'Sala 102');
INSERT INTO aulas VALUES (3, 001, 203, 'História', 20, '13:00-14:00', 'Sala 103');
INSERT INTO aulas VALUES (4, 004, 204, 'Inglês', 40, '08:00-10:00', 'Sala 101');
INSERT INTO aulas VALUES (5, 004, 205, 'Geografia', 30, '10:00-12:00', 'Sala 102');
INSERT INTO aulas VALUES (6, 002, 206, 'Biologia', 20, '13:00-14:00', 'Sala 103');
INSERT INTO aulas VALUES (7, 003, 207, 'Física', 35, '14:00-16:00', 'Sala 104');

-- consulta
SELECT 
    alunos.nome_aluno, 
    professores.nome_professor, 
    aulas.materia, 
    aulas.horario 
FROM 
    aulas
JOIN 
    alunos ON aulas.id_aluno = alunos.matricula
JOIN 
    professores ON aulas.id_professor = professores.numero;
