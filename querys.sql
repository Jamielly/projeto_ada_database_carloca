-- Select para identificar onde,quando e como determinado cliente efetuou o alugeu do carro
SELECT
    c.Modelo AS carro_modelo,
    c.Cor AS carro_cor,
    l.DataLocacao AS data_locacao,
    l.DataDevolucao AS data_devolucao,
    loc_filial.Nome AS locacao_filial,
    dev_filial.Nome AS devolucao_filial
FROM Locacoes l
JOIN Carros c ON l.CarroID = c.CarroID
JOIN Clientes cli ON l.ClienteID = cli.ClienteID
JOIN Unidades loc_filial ON l.UnidadeLocacao = loc_filial.Nome
JOIN Unidades dev_filial ON l.UnidadeDevolucao = dev_filial.Nome
WHERE cli.NomeCliente = 'Alameda Diaz';

-- Tempo de uso do veículo alugado
SELECT
    cl.NomeCliente AS nome_cliente,
    l.DataLocacao AS data_locacao,
    l.DataDevolucao AS data_devolucao,
    AGE(l.DataDevolucao, l.DataLocacao) AS tempo_locacao
FROM Locacoes l
INNER JOIN Clientes cl ON l.ClienteID = cl.ClienteID
WHERE cl.NomeCliente = 'Daniel Alameda';

-- Quilometragem do veículo gasto/rodado pelo cliente
SELECT
    cl.NomeCliente AS nome_cliente,
    SUM(l.QuilometragemFinal - l.QuilometragemInicial) AS quilometros_rodados
FROM Locacoes l
INNER JOIN Clientes cl ON l.ClienteID = cl.ClienteID
WHERE cl.NomeCliente = 'Jamie Jamies'
GROUP BY cl.NomeCliente;
