-- criação do banco
CREATE DATABASE exercicio_2

-- criação da tabela Alunos (MAT, nome, endereço, cidade)


CREATE TABLE Alunos (
    MAT int NOT NULL UNIQUE, 
    nome varchar(255), 
    endereco varchar(255), 
    cidade varchar(255),
    
    PRIMARY KEY (MAT)
);


-- criação da tabela  Disciplinas (COD_DISC, nome_disc, carga_hor)

CREATE TABLE Disciplinas (
    COD_DISC  varchar(255) NOT NULL UNIQUE, 
    nome_disc varchar(255), 
    carga_hor int NOT NULL, 
    
    PRIMARY KEY (COD_DISC)
);

-- criação da tabela Professores (COD_PROF, nome, endereço, cidade)

CREATE TABLE Professores (
    COD_PROF int NOT NULL UNIQUE, 
    nome varchar(255), 
    endereco varchar(255), 
    cidade varchar(255),
    
    PRIMARY KEY (COD_PROF)
);

-- -- criação da tabela Turma (COD_DISC, COD_TURMA, COD_PROF, ANO, horário)
--  COD_DISC referencia Disciplinas
--  COD_PROF referencia Professores
TURMA:
(BD, 1, 212131, 2015, 11H-12H)
(BD, 2, 212131, 2015, 13H-14H)
(POO, 1, 192011, 2015, 08H-09H)
(WEB, 1, 192011, 2015, 07H-08H)
(ENG, 1, 122135, 2015, 10H-11H)


CREATE TABLE turmas(
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    cod_turma int NOT NULL, 
    cod_disp varchar(11) NOT NULL, 
    cod_prof int NOT NULL, 
    ano int NOT NULL,
    horario varchar(255) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(cod_disp) REFERENCES disciplinas(cod_disp),
    FOREIGN KEY(cod_prof) REFERENCES professores(cod_prof)
);


ALTER TABLE Alunos CHANGE endereço endereco integer(5) unsigned;

ALTER TABLE professores CHANGE endereço endereco integer(5) unsigned;



-- Histórico (MAT, COD_DISC, COD_TURMA, COD_PROF, ANO, frequência, nota)
--  MAT referencia Alunos
--  COD_DISC, COD_TURMA, COD_PROF, ANO referencia Turma

CREATE TABLE historico (
    id int NOT NULL UNIQUE AUTO_INCREMENT,
    MAT int NOT NULL, 
    COD_DISC  varchar(255) NOT NULL , 
    COD_TURMA  int NOT NULL,
    COD_PROF int NOT NULL, 
    ANO int NOT NULL, 
    frequencia int NOT NULL, 
    nota int NOT NULL, 
    
    PRIMARY KEY(id),
    FOREIGN KEY(MAT) REFERENCES alunos(MAT),
    FOREIGN KEY(COD_TURMA) REFERENCES turma(COD_TURMA)
);


-- INSIRA OS SEGUINTES REGISTROS: Alunos
(2015010101, JOSE DE ALENCAR, RUA DAS ALMAS, NATAL)
(2015010102, JOÃO JOSÉ, AVENIDA RUY CARNEIRO, JOÃO PESSOA)
(2015010103, MARIA JOAQUINA, RUA CARROSSEL, RECIFE)
(2015010104, MARIA DAS DORES, RUA DAS LADEIRAS, FORTALEZA)
(2015010105, JOSUÉ CLAUDINO DOS SANTOS, CENTRO, NATAL)
(2015010106, JOSUÉLISSON CLAUDINO DOS SANTOS, CENTRO, NATAL)


INSERT INTO alunos(MAT, nome, endereco, cidade) VALUES (2015010101, "JOSE DE ALENCAR", "RUA DAS ALMAS", "NATAL");
INSERT INTO alunos(MAT, nome, endereco, cidade) VALUES (2015010102, "JOÃO JOSÉ", "AVENIDA RUY CARNEIRO", "JOÃO PESSOA");
INSERT INTO alunos(MAT, nome, endereco, cidade) VALUES (2015010103, "MARIA JOAQUINA", "RUA CARROSSEL", "RECIFE");
INSERT INTO alunos(MAT, nome, endereco, cidade) VALUES (2015010104, "MARIA DAS DORES", "RUA DAS LADEIRAS", "FORTALEZA");
INSERT INTO alunos(MAT, nome, endereco, cidade) VALUES (2015010105, "JOSUÉ CLAUDINO DOS SANTOS", "CENTRO", "NATAL");
INSERT INTO alunos(MAT, nome, endereco, cidade) VALUES (2015010106, "JOSUÉLISSON CLAUDINO DOS SANTOS", "CENTRO", "NATAL");


-- INSIRA OS SEGUINTES REGISTROS: disciplinas

DISCIPLINAS:
(BD, BANCO DE DADOS, 100)
(POO, PROGRAMAÇÃO COM ACESSO A BANCO DE DADOS, 100)
(WEB, AUTORIA WEB, 50)
(ENG, ENGENHARIA DE SOFTWARE, 80)


INSERT INTO `turmas`(`COD_DISC`,`COD_TURMA`, `COD_PROF`, `ano`, `horario`) VALUES ("BD", 1, 212131, 2015, "11H-12H");
INSERT INTO `turmas`(`COD_DISC`,`COD_TURMA`, `COD_PROF`, `ano`, `horario`) VALUES ("BD", 2, 212131, 2015, "13H-14H");
INSERT INTO `turmas`(`COD_DISC`,`COD_TURMA`, `COD_PROF`, `ano`, `horario`) VALUES ("POO", 1, 192011, 2015, "08H-09H");
INSERT INTO `turmas`(`COD_DISC`,`COD_TURMA`, `COD_PROF`, `ano`, `horario`) VALUES ("WEB", 1, 192011, 2015, "07H-08H");
INSERT INTO `turmas`(`COD_DISC`,`COD_TURMA`, `COD_PROF`, `ano`, `horario`) VALUES ("ENG", 1, 122135, 2015, "10H-11H");


--  insert historicos 
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010101, 4, 7, 9);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010101, 6, 8, 8);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010101, 7, 6, 6);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010101, 8, 9, 5);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010102, 4, 4, 9);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010102, 6, 3, 8);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010102, 7, 4, 6);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010102, 8, 5, 5);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010103, 4, 7, 4);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010103, 6, 8, 3);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010103, 7, 6, 2);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010103, 8, 9, 5);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010104, 4, 9, 9);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010104, 5, 9, 9);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010104, 7, 9, 9);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010104, 8, 9, 9);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010105, 4, 6, 6);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010105, 5, 6, 6);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010105, 7, 6, 6);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010105, 8, 6, 6);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010106, 4, 4, 1);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010106, 5, 5, 5);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010106, 7, 6, 6);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2015010106, 8, 3, 9);



--  insert historicos 

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (1, 2015010101, 7, 7);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (3, 2015010101, 6, 8);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (4, 2015010101, 8, 9);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (5, 2015010101, 9, 9);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2, 2015010102, 7, 7);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (1, 2015010103, 7, 7);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (3, 2015010103, 3, 0);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (4, 2015010103, 5, 8);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (5, 2015010103, 4, 2);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2, 2015010104, 2, 0);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (2, 2015010105, 10, 10);

INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (1, 2015010106, 7, 7);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (3, 2015010106, 4, 4);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (4, 2015010106, 3, 2);
INSERT INTO `historicos`(`id_turma`, `mat`, `frequencia`, `nota`) VALUES (5, 2015010106, 1, 2);


a) Encontre a MAT dos alunos com nota em BD em 2015 menor que 5 (obs: BD =
código da disciplinas).


SELECT 
	historicos.mat
FROM 
	historicos
INNER JOIN
    turmas ON
    (historicos.id_turma = turmas.id)
WHERE
	turmas.COD_DISC = "BD" AND historicos.nota < 5 AND turmas.ano = 2015


b) Encontre a MAT e calcule a média das notas dos alunos na disciplina de POO
em 2015.


SELECT 
	historicos.mat, AVG(historicos.nota)
FROM 
	historicos

INNER JOIN
    turmas ON
    (historicos.id_turma = turmas.id)

WHERE
	turmas.ano = 2015
GROUP BY 
    historicos.mat


c) Encontre a MAT e calcule a média das notas dos alunos na disciplina de POO
em 2015 e que esta média seja superior a 6.

SELECT 
	h1.mat, AVG(h1.nota) AS media_nota
FROM 
	historicos h1
INNER JOIN
    turmas t1 ON
    (h1.id_turma = t1.id)
WHERE
	t1.ano = 2015  AND 
    (SELECT 
     AVG(h2.nota)
     FROM historicos h2
     INNER JOIN
     turmas t2 ON
    (h2.id_turma = t2.id)
    WHERE h1.id = h2.id)> 6
GROUP BY h1.mat

d) Encontre quantos alunos não são de Natal.