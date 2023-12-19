-- Tabela de Montadoras
CREATE TABLE Montadoras (
    MontadoraID INT PRIMARY KEY,
    NomeMontadora VARCHAR(255) NOT NULL
);

-- Tabela de Cores
CREATE TABLE Cores (
    CorID INT PRIMARY KEY,
    NomeCor VARCHAR(50) CHECK (NomeCor IN ('Branco', 'Preto', 'Prata')) NOT NULL
);

-- Tabela de Categorias de Veículos
CREATE TABLE Categorias (
    CategoriaID INT PRIMARY KEY,
    NomeCategoria VARCHAR(50) NOT NULL
);

-- Tabela de Carros
CREATE TABLE Carros (
    CarroID INT PRIMARY KEY,
    MontadoraID INT,
    CorID INT,
    CategoriaID INT,
    Modelo VARCHAR(255) NOT NULL,
    Versao VARCHAR(100),
    FOREIGN KEY (MontadoraID) REFERENCES Montadoras(MontadoraID),
    FOREIGN KEY (CorID) REFERENCES Cores(CorID),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

-- Tabela de Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    NomeCliente VARCHAR(255) NOT NULL,
    CarroAlugadoID INT UNIQUE,
    FOREIGN KEY (CarroAlugadoID) REFERENCES Carros(CarroID)
);

-- Tabela de Locações
CREATE TABLE Locacoes (
    LocacaoID INT PRIMARY KEY,
    ClienteID INT,
    CarroID INT,
    UnidadeLocacao VARCHAR(255) NOT NULL,
    UnidadeDevolucao VARCHAR(255) NOT NULL,
    DataLocacao DATE NOT NULL,
    DataDevolucao DATE NOT NULL,
    QuilometragemInicial INT,
    QuilometragemFinal INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (CarroID) REFERENCES Carros(CarroID)
);

-- Tabela de Histórico de Locações
CREATE TABLE HistoricoLocacoes (
    HistoricoID INT PRIMARY KEY,
    CarroID INT,
    ClienteID INT,
    UnidadeLocacao VARCHAR(255) NOT NULL,
    UnidadeDevolucao VARCHAR(255) NOT NULL,
    DataLocacao DATE NOT NULL,
    DataDevolucao DATE NOT NULL,
    QuilometragemInicial INT,
    QuilometragemFinal INT,
    FOREIGN KEY (CarroID) REFERENCES Carros(CarroID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
