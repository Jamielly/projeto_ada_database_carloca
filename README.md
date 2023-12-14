#### Projeto final - Módulo 3 da ADA | Sistema de Locadora de Carros "CARLOCA"

<div align="center"> 
<h2>
Visão Geral
</h2>
</div>
<div align="justify">
<p> Este repositório contém um script SQL que cria um banco de dados para atender aos requisitos funcionais de uma locadora de carros chamada "CARLOCA". O script segue os princípios de normalização para garantir a integridade e eficiência do banco de dados. </p>

<div align="center"> 
<h2>
Diagrama de Caso de Uso
</h2>
    

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
