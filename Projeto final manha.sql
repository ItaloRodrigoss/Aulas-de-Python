CREATE DATABASE projetodiario;
USE projetodiario;

CREATE TABLE aluno(
	id int primary key auto_increment,
	ra char(8) NOT NULL UNIQUE
);
-- DML
INSERt INTO aluno(ra)VALUES('12345678');
-- DQL
SELECT * FROM aluno;

INSERT INTO aluno(ra) VALUES('12345611');
INSERT INTO aluno(ra) VALUES('12345612');
INSERT INTO aluno(ra) VALUES('12345613');
INSERT INTO aluno(ra) VALUES('12345614');
INSERT INTO aluno(ra) VALUES('12345615');
INSERT INTO aluno(ra) VALUES('12345616');
INSERT INTO aluno(ra) VALUES('12345617');
INSERT INTO aluno(ra) VALUES('12345618');
INSERT INTO aluno(ra) VALUES('12345619');
INSERT INTO aluno(ra) VALUES('12345620');
INSERT INTO aluno(ra) VALUES('12345621');
INSERT INTO aluno(ra) VALUES('12345622');
INSERT INTO aluno(ra) VALUES('12345623');
INSERT INTO aluno(ra) VALUES('12345624');
INSERT INTO aluno(ra) VALUES('12345625');
INSERT INTO aluno(ra) VALUES('12345626');
INSERT INTO aluno(ra) VALUES('12345627');
INSERT INTO aluno(ra) VALUES('12345628');
INSERT INTO aluno(ra) VALUES('12345629');
INSERT INTO aluno(ra) VALUES('12345630');
INSERT INTO aluno(ra) VALUES('12345631');
INSERT INTO aluno(ra) VALUES('12345632');
INSERT INTO aluno(ra) VALUES('12345633');
INSERT INTO aluno(ra) VALUES('12345634');

truncate table aluno;
-- DQL
SELECT * FROM aluno;
show tables;

CREATE TABLE diariobordo (
	id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);
show tables;

ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
	FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
SELECT * FROM diariobordo;

-- 01/08/2024
-- 50%
-- 06 set.

