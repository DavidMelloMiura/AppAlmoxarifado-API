<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Entradas</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
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
	
	
	

	<div class="container">
		<h2 class="text-primary text-center mt-3">LISTA DE ENTRADAS</h2>
		<a href="novo" class="btn btn-primary">Nova Entrada</a>
		
	
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>DATA</th>
					<th>PRODUTO</th>
					<th class="text-center">QUANTIDADE</th>
					<th></th>
				</tr>
			</thead>
			<tbody>


				<c:forEach var="entrada" items="${listagem_entradas}">
					<tr>
						<td>${entrada.id}</td>
						<td>${entrada.dataEntrada}</td>
						<td>${entrada.produto.nome}</td>
						<td class="text-center">${entrada.quantidade}</td>
						<td> 
						<a class="btn btn-warning" href="/entrada/alterar/${entrada.id}"><i class="bi bi-pencil-square"></i></a>
						<a class="btn btn-danger" id="excluir" href="/entrada/remover/${entrada.id}"><i class="bi bi-trash"></i></a>
						</td>
					</tr>

				</c:forEach>

			</tbody>

		</table>
		
	
		
		<div class="text-center">
			<a href="/" class="btn btn-warning">Voltar</a>
			<a href="/api/entradas/" target="_blank" class="btn btn-info">API Entrada</a>
		</div>
		
	</div>
	
	
	
	

	
	
	
	
	
	
</body>
</html>