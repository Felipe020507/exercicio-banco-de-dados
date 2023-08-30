CREATE TABLE Aluno(
NomeAluno VARCHAR(50),
NumChamada INT,
NumMatricula INt PRIMARY KEY,
DataNasc DATE,
CodTurma INT,
Periodo VARCHAR(25)
);

CREATE TABLE Professor(
NomeAluno VARCHAR(25),
NumRegistroProf INT PRIMARY KEY,
CodTurma INT,
Periodo VARCHAR(25),
CodDisciplina INT,
NomeDisciplina VARCHAR(25),
FOREIGN KEY (CodDisciplina) REFERENCES Turma(CodTurma)
);

CREATE TABLE Curso (
NomeCurso VARCHAR(25),
SiglaCurso VARCHAR(25) PRIMARY KEY,
CargaHoraria INT,
Descricao VARCHAR(25)
);

CREATE TABLE Turma (
CodTurma INT PRIMARY KEY,
NumAlunos INT,
SiglaCurso VARCHAR(25),
NumRegistroProf INT,
FOREIGN KEY (SiglaCurso) REFERENCES Curso(SiglaCurso)
);

CREATE TABLE Representante (
NomeAluno VARCHAR(25),
NumChamada INT,
CodTurma INT, 
PRIMARY KEY(NomeAluno, NumChamada, CodTurma)
);

CREATE TABLE Matricula(
NomeAluno VARCHAR(25),
NumMatricula INT PRIMARY KEY,
SiglaCurso VARCHAR(25),
Ano INT,
Semestre VARCHAR(25),
FOREIGN KEY (NumMatricula) REFERENCES Aluno(NumMatricula)
);
