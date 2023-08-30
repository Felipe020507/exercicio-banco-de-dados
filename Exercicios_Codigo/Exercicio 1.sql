 CREATE TABLE Funcionario (
NomeFunc VARCHAR(25),
CodigoFunc INT,
IdCargo INT,
SiglaDepto VARCHAR(25),
PRIMARY KEY(CodigoFunc),
FOREIGN KEY (SiglaDepto) REFERENCES Departamento(SiglaDepto),
FOREIGN KEY (IdCargo) REFERENCES CargoFuncionario(IdCargo)
 );
 
 CREATE TABLE CargoFuncionario (
 IdCargo INT PRIMARY KEY,
 Descricao VARCHAR(25) NOT NULL,
 NomeCargo VARCHAR(25)
 );
 
 CREATE TABLE Departamento (
 SiglaDepto VARCHAR(25),
 NomeDepto VARCHAR(25),
 QtdFuncionario INT,
 PRIMARY KEY(SiglaDepto, NomeDepto)
 );
 
 CREATE TABLE Projeto (
 SiglaProj VARCHAR(25),
 NomeProj VARCHAR(25),
 CodigoFunc INT,
 SiglaDepto VARCHAR(25) NOT NULL,
 PRIMARY KEY(SiglaProj, NomeProj),
 FOREIGN KEY (CodigoFunc) REFERENCES Funcionario(CodigoFunc),
 FOREIGN KEY (SiglaDepto) REFERENCES Departamento(SiglaDepto)
 
 );
 
 
 

 
 
