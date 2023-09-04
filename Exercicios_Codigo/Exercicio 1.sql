 CREATE TABLE CargoFuncionario (
 IdCargo INT PRIMARY KEY,
 Descricao VARCHAR(25) NOT NULL,
 NomeCargo VARCHAR(25)
 );
 
 CREATE TABLE Departamento (
 SiglaDepto VARCHAR(25) NOT NULL,
 NomeDepto VARCHAR(25),
 QtdFuncionario INT,
 PRIMARY KEY(SiglaDepto, NomeDepto)
 );

 CREATE TABLE Funcionario (
NomeFunc VARCHAR(25) NOT NULL,
CodigoFunc INT,
IdCargo INT,
SiglaDepto VARCHAR(25),
PRIMARY KEY(CodigoFunc),
FOREIGN KEY (SiglaDepto) REFERENCES Departamento(SiglaDepto),
FOREIGN KEY (IdCargo) REFERENCES CargoFuncionario(IdCargo)
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
 
 INSERT INTO CargoFuncionario(IdCargo, Descricao, NomeCargo) Values
(23, 'Computador','Computador Parado'),
(34, 'Mula','Mula Parada'),
(56,'Taturana','Taturana Amarela'),
(67,'Palhaço','Filme Palhaço'),
(78,'Sacola','Sacola Parada');


INSERT INTO Funcionario(NomeFunc, CodigoFunc, IdCargo, SiglaDepto) Values
('Flavinho', 231, 23, 'QIP'),
('Shaolin' , 334, 34, 'PDG'),
('Hugo', 432, 56, 'RPG'),
('Vinicin', 573, 67, 'VPG'),
('Adan', 675, 78, 'CPG');


 INSERT INTO Projeto(SiglaProj, NomeProj, CodigoFunc, SiglaDepto) Values
('CP', 'Computador Parado', 231,'QIP'),
('MP', 'Mula Parada' , 334,'PDG'),
('TA','Taturana Amarela', 432, 'RPG'),
('FP','Filme Palhaço', 573, 'VPG'),
('SP','Sacola Parada', 675,'CPG');


 INSERT INTO Departamento(SiglaDepto, NomeDepto, QtdFuncionario) Values
('QIP', 'Que_Isso_Parceiro', 23),
('PDG', 'Padeiro_da_Galera', 2),
('RPG', 'Rodzio_pra_Geral', 23),
('VPG', 'Video_game_Geral', 67),
('CPG', 'computaria_pra-Geral', 12);


delete from Departamento 
where SiglaDepto="CPG";

 SET foreign_key_checks = 0;

update Departamento set SiglaDepto = 'TR' 
where SiglaDepto = 'VPG' ;

select * from Departamento;

 SELECT SiglaDepto,NomeDepto,QtdFuncionario
 FROM Departamento WHERE SiglaDepto = "CPG";


 
