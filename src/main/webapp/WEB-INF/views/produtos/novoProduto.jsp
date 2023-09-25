<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastrar Produto</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/estilo.css">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	
	
	<%-- MENU BOOSTRAP RESPONSIVO --%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <div class="logo-menu">
    	<img id="logo-javou-menu" alt="JaVou" src="/imagens/Logo_JaVou.png">
    	<a id="almoxarifado">ALMOXARIFADO</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    </div>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav text-center">
        <a class="nav-link" aria-current="page" href="/">Home</a>
        <a class="nav-link" href="/produtos/lista">Consultar</a>
        <a class="nav-link" href="/produtos/novo">Cadastrar</a>
        <a class="nav-link" href="/entrada/lista">Entrada</a>
        <a class="nav-link" href="/saida/lista">Saída</a>
        
      </div>
    </div>
  </div>
</nav>
	
	
	
	<h2 class="text-primary text-center mt-3">Cadastro de Produto</h2>
	
	<div class="container">
	<form action="/produtos/novo" method="post"> 
			<div class="conteudo-form">

				<label class="form-label">Nome Produto:</label>
				<input type="text" name="nome" class="form-control" maxlength="30" value="${produto.nome}"/>
				
				
				<label class="form-label mt-3">Sigla Unidade</label><br>
				<select class="form-select-sm text-left" name="unidade">
					<option selected="selected">Selecione a unidade</option>
					<option value="3">Unidade</option>
      				<option value="1">Gramas</option>
      				<option value="2">Mililitros</option>		
				</select>
			</div>
			
			<div class="text-center mt-3">
				<button type="submit" class="btn btn-primary">Incluir</button>
				<a href="/produtos/lista" class="btn btn-secondary">Voltar para a lista</a>	
			</div>

		</form>
		</div>
		
	 

</body>
</html>