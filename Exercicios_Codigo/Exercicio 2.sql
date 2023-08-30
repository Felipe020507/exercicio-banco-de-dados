Create Table Cliente(
CpfCliente INT PRIMARY KEY NOT NULL,
NomeCliente VARCHAR(25),
Cep INT,
Telefone INT NOT NULL,
FOREIGN KEY (Telefone) REFERENCES TiposTelefone(Telefone),
FOREIGN KEY (Cep) REFERENCES TiposEndereco(Cep)
);

CREATE TABLE TiposTelefone(
TelefoneCelular INT NOT NULL,
TelefoneFixo INT NOT NULL,
Telefone INT PRIMARY KEY NOT NULL
);

CREATE TABLE TiposEndereco (
NumeroCasa INT ,
Rua VARCHAR(50),
Cep INT PRIMARY KEY NOT NULL,
NomeBairro VARCHAR(25)
);

CREATE TABLE Medicamento (
NomeMedic VARCHAR(25),
CodMedic INT PRIMARY KEY NOT NULL,
Fabricante VARCHAR(50),
DataValidade DATE
);

CREATE TABLE Venda (
CodigoMedic INT NOT NULL,
CodVenda INT PRIMARY KEY NOT NULL,
DataVenda DATE NOT NULL,
CpfCliente INT,
FOREIGN KEY (CpfCliente) REFERENCES Cliente(CpfCliente),
foreign key (CodigoMedic) REFERENCES Medicamento(CodMedic)
);

Create Table ItensVenda (
CodMedic INT NOT NULL,
CodVenda INT NOT NULL,
Quantidade INT,
PRIMARY KEY (CodVenda, CodMedic),
FOREIGN KEY (CodMedic) REFERENCES Medicamento(CodMedic),
FOREIGN KEY (CodVenda) REFERENCES Venda(CodVenda),
DataVenda DATE
);




