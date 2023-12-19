-- Montadoras
INSERT INTO Montadoras (MontadoraID, NomeMontadora) VALUES
(1, 'Toyota'),
(2, 'Ford'),
(3, 'Honda');

-- Cores
INSERT INTO Cores (CorID, NomeCor) VALUES
(1, 'Branco'),
(2, 'Preto'),
(3, 'Prata');

-- Categorias
INSERT INTO Categorias (CategoriaID, NomeCategoria) VALUES
(1, 'Hatch'),
(2, 'Sedan Compacto'),
(3, 'Sedan Médio'),
(4, 'SUV');

-- Carros
INSERT INTO Carros (CarroID, MontadoraID, CorID, CategoriaID, Modelo, Versao, QuilometragemAtual, UnidadeAtual, Disponivel) VALUES
(1, 1, 1, 1, 'Corolla', 'XLE', 5000, 'Unidade1', true),
(2, 2, 2, 2, 'Focus', 'Titanium', 7000, 'Unidade2', true),
(3, 3, 3, 4, 'CR-V', 'Touring', 6000, 'Unidade3', true);

-- Clientes
INSERT INTO Clientes (ClienteID, NomeCliente) VALUES
(1, 'João Silva'),
(2, 'Maria Oliveira');

-- Locações
INSERT INTO Locacoes (LocacaoID, ClienteID, CarroID, DataLocacao, DataDevolucao, QuilometragemInicial, QuilometragemFinal, UnidadeLocacao, UnidadeDevolucao) VALUES
(1, 1, 1, '2023-01-01', '2023-01-05', 5000, 5200, 'Unidade1', 'Unidade1'),
(2, 2, 2, '2023-02-01', '2023-02-07', 7000, 7200, 'Unidade2', 'Unidade2');

-- Histórico de Locações
INSERT INTO HistoricoLocacoes (HistoricoID, CarroID, ClienteID, DataLocacao, DataDevolucao, QuilometragemInicial, QuilometragemFinal, UnidadeLocacao, UnidadeDevolucao) VALUES
(1, 1, 1, '2022-12-01', '2022-12-05', 4800, 5000, 'Unidade1', 'Unidade1'),
(2, 2, 2, '2022-11-01', '2022-11-07', 6900, 7000, 'Unidade2', 'Unidade2');
