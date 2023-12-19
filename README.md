#### Projeto final - Módulo 3 da ADA | Sistema de Locadora de Carros "CARLOCA"

<div align="center"> 
<h2>
Visão Geral
</h2>
</div>
<div align="justify">
<p> Este repositório contém um script SQL que cria um banco de dados para atender aos requisitos funcionais de uma locadora de carros chamada "CARLOCA". O script segue os princípios de normalização para garantir a integridade e eficiência do banco de dados. Descrição:

Requisitos funcionais:

Um carro possui modelo montadora, cor e versão.
As cores de carro disponiveis são apenas branco, preto e prata.
Existem várias categorias de veiculos (hatch, sedam compacto, sedam médio, SUV, etc...)
Um cliente pode alugar um carro somente na modalidade "diária".
Um cliente não pode alugar mais de um carro.
Enquanto um carro estiver locado por um cliente não pode ser ofetado para outro.
O sistema deve manter o histórico dos clientes que locaram determinado carro.
O sistema deve manter o histórico de quantos quilometros o cliente rodou com o carro bem como a quilometragem atual de cada um dos carros.
Existem várias unidades da fraquia CARLOCA o sistema deve saber onde o carro foi locado e onde foi devolvido cada veículo.

Requisitos não funcionais:

Devem ser gerados inserts e selects que possibilitem validar cada um dos requisitos acima.
O exercicio deve ser desenvolvido considerando todos os principios de normalização de dados.
Por hora não falaremos de nada relacionado a pagamento, por tanto o foco do projeto é um atender estritamente os requisitos acima!</p>
    
<div align="center"> 
<h2>
Relacionamento entre Tabelas:
</h2> 
    
![image](https://github.com/Jamielly/projeto_ada_database_carloca/assets/100716307/1662e8c5-2ff9-41da-8abd-2b9795432e99)
    
</div>


<div align="center"> 
<h2>
Diagrama de Entidade Relacionamento (DER):
</h2>
    
![image](https://github.com/Jamielly/projeto_ada_database_carloca/assets/100716307/9726bb6c-d946-48c3-b403-c07acda950a3)

</div>
    

<div align="center"> 
<h2>
Estrutura do Banco de Dados
</h2>
</div>
<div align="justify">
<p> O banco de dados é composto por várias tabelas para armazenar informações sobre montadoras, cores, categorias de veículos, carros, clientes, locações e histórico de locações.</p>
</div>

<div align="center">
  <h3>
    Tabelas
  </h3>
</div>

<table align="center">
  <tr>
    <td align="center">
      <p>Entidades</p>
    </td>
    <td align="center">
      <p>Atributos</p>
    </td>
  </tr>
   <tr>
    <td align="center">
      <p>Montadoras</p>
    </td>
    <td>
      <p>
       MontadoraID (Chave Primária)
      </p>
      <p>
        NomeMontadora
      </p>
    </td>
  </tr>
    
  <tr>
    <td align="center">
      <p>Cores</p>
    </td>
    <td>
      <p>
        CorID (Chave Primária)
      </p>
      <p>
        NomeCor (Branco, Preto, Prata)
      </p>
    </td>
  </tr>
   <tr>
    <td align="center">
      <p>Carros</p>
    </td>
    <td>
      <p>
        CarroID (Chave Primária)
      </p>
      <p>
        MontadoraID (Chave Primária)
      </p>
      <p>
        CorID (Chave Estrangeira)
      </p>
      <p>CategoriaID (Chave Estrangeira)
      </p>
      <p>
        Modelo
      </p>
      <p>
        Versão
      </p>
      <p> (Chaves EStrangeiras para Montadoras, Cores e Categorias)</p>
    </td>
  </tr>
   <td align="center">
      <p>Clientes</p>
    </td>
    <td>
      <p>
        ClienteID (Chave Primária)
      </p>
      <p>
        NomeCliente
      </p>
      <p>
        CarroAlugadoID (Chave Estrangeura - referenciando Carros)
      </p>
    </td>
</tr>
  <td align="center">
      <p>Locações</p>
    </td>
    <td>
      <p>
        LocacaoID (Chave Primária)
      </p>
      <p>
        ClienteID(Chave Estrangeria)
      </p>
       <p>
        CarroID(Chave Estrangeria)
      </p>
      <p>
        UnidadeLocacao
      </p>
      <p>
        DataDevolucao
      </p>
      <p>
        QuilometragemInicial
      </p>
      <p>
        QuilometragemFinal
      </p>
      <p>
        (Chave Estrangeiras para Clientes e Carros)
      </p>
    </td>
  </tr>
  <td align="center">
      <p>Histórico de Locações</p>
    </td>
    <td>
      <p>
        HistoricoID (Chave Primária)
      </p>
      <p>
        CarroID (Chave Estrangeira)
      </p>
      <p>
        ClienteID (Chave Estrangeira)
      </p>
      <p>
        UnidadeLocacao
      </p>
      <p>
        UnidadeDevolucao
      </p>
      <p>
        DataLocacao
      </p>
      <p>
        DataDevolucao
      </p>
      <p>
        QuilomentragemInicial
      </p>
      <p>
        QuilometragemFinal
      </p>
      <p>
        (Chaves Estrangeiras para Carros e Clientes)
      </p>
</table>

<h2>Exemplos de Uso 🔻</h2>
<p>A seguir, são apresentados alguns exemplos de inserts, selects e create table para validar os requisitos do sistema, para que você possa criar o seu BD também:</p>
<h4>Exemplo de INSERTS:</h4>
<div align="left">
<p>

    -- Insert para Montadoras
    INSERT INTO Montadoras (MontadoraID, NomeMontadora) VALUES
    (1, 'Toyota'),
    (2, 'Ford'),
    (3, 'Honda'); 

</p>
</div>

<h4>Exemplo de SELECTS:</h4>
<div align="left">
<p>
    
    -- Exemplo de Select para Montadoras 
    SELECT * FROM Montadoras; 
    
</p>
</div>

<h4>Exemplo de CREATE TABLE:</h4>
<div align="left">
<p>
    
    CREATE TABLE Montadoras (
    MontadoraID INT PRIMARY KEY,
    NomeMontadora VARCHAR(255) NOT NULL
    );
    
</p>
</div>


##

<footer>
    <p>
        <a href="https://github.com/Jamielly">
            <span style="font-weight: bold;">Feito por:</span><br/>
           👾 Jamielly Reis 👾
        </a>
    </p>
</footer>
