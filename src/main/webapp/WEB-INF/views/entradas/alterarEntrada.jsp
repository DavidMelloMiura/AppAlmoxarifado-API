<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Alterar Entrada</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/css/estilo.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
	
	
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
	
	
	<h2 class="text-primary text-center mt-3">Alterar Entrada</h2>

<div class="container">
	<div class="conteudo-form">
		<form action="/entrada/alterar" method="post">
			
			<label class="form-label">Data</label>
			<input type="Date" name="dataEntrada" class="form-control" maxlength="30" value="${entrada.dataEntrada}"/>
			
			
			<div>
			<label class="form-label mt-3">Nome do Produto</label>
			<select  class="form-select" name="produto">
    				<option value="${produto.id}">${entrada.produto.nome}</option>
    			<c:forEach items="${lista_produtos}" var="produto">
        			<option value="${produto.id}">${produto.nome}</option>
    			</c:forEach>
			</select>
			</div>
			
			<label class="form-label mt-3">Quantidade</label>
			<input type="text" name="quantidade" class="form-control" maxlength="30" value="${entrada.quantidade}"/>
			

			<div class="text-center mt-3">
				<button type="submit" class="btn btn-primary">Incluir</button>
				<a href="/entrada/lista" class="btn btn-secondary">Voltar para a lista</a>
			</div>

		</form>
	</div>
</div>
	
	
	
	
	
	
	

	
	
	
	
	
	
</body>
</html>