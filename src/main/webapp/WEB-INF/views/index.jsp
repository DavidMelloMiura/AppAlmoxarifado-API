<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="css/estilo.css/">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

<title>Almoxarifado - JaVou</title>
</head>
<body>

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
        <a class="nav-link" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="/produtos/lista">Consultar</a>
        <a class="nav-link" href="/produtos/novo">Cadastrar</a>
        <a class="nav-link" href="/entrada/lista">Entrada</a>
        <a class="nav-link" href="/saida/lista">Saída</a>
        
      </div>
    </div>
  </div>
</nav>
   
   
   
   
   
   
   
   



<div class="main">
		<div class="barra-menu">
			<h4 class="p-3">ALMOXARIFADO</h4>
			
			<div class="menu">
				<ul>
					<a href="/produtos/lista"><li>Consultar</li></a>
					<a href="/produtos/novo"><li>Cadastrar</li></a>
					<a href="/entrada/lista"><li>Entrada</li></a>
					<a href="/saida/lista"><li>Saída</li></a>
				</ul>
			</div>
			<img  id="logo-javou" alt="JaVou" src="/imagens/Logo_JaVou.png">
		</div>
		
		

		<div class="conteudo">
			<div id="cabecalho_titulo">
				<h3 class="text-center mt-3">CONTROLE DE ESTOQUE</h3>
			</div>
			
			<div class="conteudo_centro">
				<div class="container_botoes">
					<a class="bt_centro" id="bt_consultar" href="/produtos/lista">CONSULTAR</a></br>
					<a class="bt_centro" id="bt_cadastrar" href="/produtos/novo">CADASTRAR</a></br>
					<a class="bt_centro" id="bt_entrada" href="/entrada/lista">ENTRADA</a></br>
					<a class="bt_centro" id="bt_saida" href="/saida/lista">SAÍDA</a></br>
				</div>
			</div>
		</div>



	</div>
</body>
</html>