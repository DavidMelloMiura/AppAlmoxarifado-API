### Sistema de Almoxarifado
>O objetivo do sistema é controlar o estoque do almoxarifado, suas entradas e saídas, afim de gerenciar seus itens <br>
Foi desenvolvido como projeto de um curso de Spring Boot


### Funcionalidades do projeto
> - Conexão com MySQL
> - CRUD de Produto
> - Consultar
> - CRUD Entrada
> - CRUD Saída
> - API Rest
>
> CRUD: Create, Read, Update, Delete
>
> Nas páginas que existe listagens possui um botão API em azul, <br>
para visualizar o retorno em JSON das (APIs) para fazer conexão <br>
com o FRONT-END



### Endpoints
<table>
<thead>
  <tr>
    <th style="color: red;">Ações</th>
    <th style="color: red;">EndPoint</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Lista de Produtos</td>
    <td>http://localhost:8080/produtos/lista</td>
  </tr>
  
  <tr>
    <td>Novo Produto</td>
    <td>http://localhost:8080/produtos/novo</td>
  </tr>
  
  <tr>
    <td>Alterar Produto</td>
    <td>http://localhost:8080/produtos/alterar/[idExistente]</td>
  </tr>
  
  <tr>
    <td>Remover Produto</td>
    <td>http://localhost:8080/produtos/remover/[idExistente]</td>
  </tr>
  
  <tr>
    <td>Lista de Entradas</td>
    <td>http://localhost:8080/entrada/lista</td>
  </tr>
  
  <tr>
    <td>Nova Entrada</td>
    <td>http://localhost:8080/entrada/novo</td>
  </tr>
  
  <tr>
    <td>Alterar Entrada</td>
    <td>http://localhost:8080/entrada/alterar/[idExistente]</td>
  </tr>
  
  <tr>
    <td>Remover Entrada</td>
    <td>http://localhost:8080/entrada/remover/[idExistente]</td>
  </tr>
</tbody>
</table>


### API - Endpoints
<table>
<thead>
  <tr>
    <th style="color: red;">Ações</th>
    <th style="color: red;">EndPoint</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Produtos</td>
    <td>http://localhost:8080/api/produtos/</td>
  </tr>
  
  <tr>
    <td>Entradas</td>
    <td>http://localhost:8080/api/entradas/</td>
  </tr>
</tbody>
</table>


### Tecnologias utilizadas

<div style="background-color: #f6f8fa; border-radius: 5px; padding: 20px 0px 10px 10px ;">
<ul>
<li>Java</li>
<li>Spring Boot</li>
<li>JPA / Hibernate</li>
<li>Maven</li>
<li>JSP (Java Server Pages)</li>
<li>MySQL</li>
<li>Eclipse</li>
</ul>
</div>

### Inicialização
```
Pode criar o banco de dados MySQL utilizando a Query DDL (Encontrada na pasta principal do projeto)

Após o git clone
Basta clicar em Run AlmoxarifadoApplication ou CTRL + F11
Abrir o navegador e digitar o endereço http://localhost:8080


```

### Colaboradores
```
David Mello Miura
Leo Hendryc Viana de Sousa
```